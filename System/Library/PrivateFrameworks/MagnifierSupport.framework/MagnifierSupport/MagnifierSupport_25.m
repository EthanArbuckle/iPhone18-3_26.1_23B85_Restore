void sub_257E0EF78(char a1)
{
  v2 = v1;
  v4 = sub_257DFF3FC();
  sub_257C7C61C();

  if (*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription))
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v5 = sub_257DFF054();
  v6 = *&v5[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_containedCard];

  sub_257DD1100();
  v7 = *(*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
  LOBYTE(v6) = v7[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition];
  v8 = v7;
  sub_257E79DDC(v6);
  v9 = *&v8[OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint];
  if (v9)
  {
    v10 = v9;
    sub_257DD1E80(0);
    [v10 setConstant_];

    v8 = v10;
  }

  v12 = sub_257DFEF64();
  sub_257C7F9D0(a1 & 1);

  v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController);
  sub_257D839A4();

  if (qword_281544FE0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v14 = qword_281548348;
  v15 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  swift_beginAccess();
  v16 = v15[1];
  v17 = v15[2];
  v76[2] = *v15;
  v76[3] = v16;
  v76[4] = v17;
  v18 = qword_2815447E0;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x28223BE20](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  v20 = &v74;
  sub_257ECFD50();

  v21 = v74;
  v22 = (v14 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  v23 = swift_beginAccess();
  v24 = *v22;
  v25 = v22[1];
  v26 = v22[2];
  *&v74 = v24;
  *(&v74 + 1) = v25;
  v75 = v26;
  MEMORY[0x28223BE20](v23);

  sub_257ECFD50();

  *&v74 = v21;
  sub_257EB0FD8(v76[0]);
  v27 = v74;
  v70 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer;
  v72 = v2;
  v28 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer);
  v29 = sub_257C7EFF8();

  v2 = v29 & 0xFFFFFFFFFFFFFF8;
  if (v29 >> 62)
  {
    v30 = sub_257ED0210();
    if (v30)
    {
LABEL_10:
      v31 = 0;
      v20 = (v29 & 0xC000000000000001);
      v32 = MEMORY[0x277D84F90];
      do
      {
        v33 = v31;
        while (1)
        {
          if (v20)
          {
            v34 = MEMORY[0x259C72E20](v33, v29);
          }

          else
          {
            if (v33 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v34 = *(v29 + 8 * v33 + 32);
          }

          v35 = v34;
          v31 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          swift_getObjectType();
          v36 = swift_conformsToProtocol2();
          if (v36)
          {
            if (v35)
            {
              break;
            }
          }

          ++v33;
          if (v31 == v30)
          {
            goto LABEL_32;
          }
        }

        v69 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v32 = sub_257BFD91C(0, *(v32 + 16) + 1, 1, v32);
        }

        v39 = *(v32 + 16);
        v38 = *(v32 + 24);
        v40 = v39 + 1;
        v41 = v69;
        if (v39 >= v38 >> 1)
        {
          v43 = sub_257BFD91C((v38 > 1), v39 + 1, 1, v32);
          v40 = v39 + 1;
          v41 = v69;
          v32 = v43;
        }

        *(v32 + 16) = v40;
        v42 = (v32 + 16 * v39);
        v42[4] = v35;
        v42[5] = v41;
      }

      while (v31 != v30);
      goto LABEL_32;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_10;
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_32:

  v44 = *(v32 + 16);
  if (v44)
  {
    v45 = 0;
    v46 = v72;
    do
    {
      if (v45 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v47 = v45 + 1;
      v74 = *(v32 + 32 + 16 * v45);
      v48 = v74;
      sub_257E0F72C(&v74, v27, v72);

      v45 = v47;
    }

    while (v44 != v47);
  }

  else
  {
    v46 = v72;
  }

  v49 = *(v46 + v70);
  v32 = sub_257C7EFF8();

  v20 = (v32 & 0xFFFFFFFFFFFFFF8);
  if (v32 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {
    v51 = MEMORY[0x277D84F90];
    if (i)
    {
      v52 = 0;
      v53 = MEMORY[0x277D84F90];
LABEL_42:
      v54 = v52;
      while (1)
      {
        if ((v32 & 0xC000000000000001) != 0)
        {
          v55 = MEMORY[0x259C72E20](v54, v32);
        }

        else
        {
          if (v54 >= *(v20 + 2))
          {
            goto LABEL_73;
          }

          v55 = *(v32 + 8 * v54 + 32);
        }

        v56 = v55;
        v52 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        swift_getObjectType();
        v57 = swift_conformsToProtocol2();
        if (v57 && v56)
        {
          v71 = v57;
          v58 = swift_isUniquelyReferenced_nonNull_native();
          if ((v58 & 1) == 0)
          {
            v53 = sub_257BFD91C(0, v53[2] + 1, 1, v53);
          }

          v60 = v53[2];
          v59 = v53[3];
          v61 = v60 + 1;
          v62 = v71;
          if (v60 >= v59 >> 1)
          {
            v64 = sub_257BFD91C((v59 > 1), v60 + 1, 1, v53);
            v61 = v60 + 1;
            v62 = v71;
            v53 = v64;
          }

          v53[2] = v61;
          v63 = &v53[2 * v60];
          v63[4] = v56;
          v63[5] = v62;
          if (v52 != i)
          {
            goto LABEL_42;
          }

          goto LABEL_59;
        }

        ++v54;
        if (v52 == i)
        {
          goto LABEL_59;
        }
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v53 = MEMORY[0x277D84F90];
LABEL_59:

    v76[0] = v51;
    v65 = v53[2];
    if (!v65)
    {
      break;
    }

    v66 = 0;
    v51 = MEMORY[0x277D84F90];
    v20 = v72;
    while (v66 < v53[2])
    {
      v74 = *&v53[2 * v66 + 4];
      v32 = v74;
      sub_257E0FC80(&v74, &v73);

      if (v73)
      {
        v32 = v76;
        MEMORY[0x259C72300]();
        if (*(v76[0] + 16) >= *(v76[0] + 24) >> 1)
        {
          sub_257ECF830();
        }

        sub_257ECF860();
        v51 = v76[0];
      }

      if (v65 == ++v66)
      {
        goto LABEL_68;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v20 = v72;
LABEL_68:

  *(v20 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers) = v51;

  sub_257E006B0();
  sub_257E071A8();
  v67 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
  if (v67)
  {
    v68 = v67;
    sub_257BDB830();
  }
}

uint64_t sub_257E0F72C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  ObjectType = swift_getObjectType();
  v8 = *(v5 + 56);
  v8(v55, ObjectType, v5);
  if (!sub_257C3EF48(v55[0], a2))
  {
    goto LABEL_15;
  }

  v8(v55, ObjectType, v5);
  v9 = LOBYTE(v55[0]);
  v10 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  swift_beginAccess();
  v11 = *(a3 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_257C040E4(v9);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);

      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_9;
    }
  }

  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v14 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    if ((v14 & 0xC000000000000001) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v14 = MEMORY[0x277D84FA0];
LABEL_9:
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v15 = sub_257ED0210();
    goto LABEL_14;
  }

LABEL_13:
  v15 = *(v14 + 16);
LABEL_14:

  if (v15)
  {
    return result;
  }

LABEL_15:
  v8(&v56, ObjectType, v5);
  v17 = v56;
  v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  swift_beginAccess();
  v51 = v18;
  v52 = v8;
  v19 = *(a3 + v18);
  if (*(v19 + 16))
  {

    v20 = sub_257C040E4(v17);
    if ((v21 & 1) == 0)
    {
LABEL_36:

      goto LABEL_37;
    }

    v22 = *(*(v19 + 56) + 8 * v20);

    if (v22)
    {
      v48 = v5;
      if ((v22 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_257ED01D0();
        sub_257ECDCD0();
        sub_257E2C2E0(&unk_27F8F9E20, MEMORY[0x277CBCDA8]);
        result = sub_257ECFAA0();
        v23 = v55[0];
        v24 = v55[1];
        v25 = v55[2];
        v26 = v55[3];
        v27 = v55[4];
      }

      else
      {
        v28 = -1 << *(v22 + 32);
        v24 = v22 + 56;
        v25 = ~v28;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v27 = v30 & *(v22 + 56);

        v26 = 0;
        v23 = v22;
      }

      v49 = v6;
      v50 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v31 = sub_257ED0230();
        if (!v31)
        {
          break;
        }

        v53[0] = v31;
        sub_257ECDCD0();
        swift_dynamicCast();
        v32 = v26;
        v33 = v27;
        if (!*v54)
        {
          break;
        }

        while (1)
        {
          sub_257ECDCC0();

          v26 = v32;
          v27 = v33;
          v23 = v50;
          if (v50 < 0)
          {
            break;
          }

LABEL_28:
          v34 = v26;
          v35 = v27;
          v32 = v26;
          if (!v27)
          {
            while (1)
            {
              v32 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                break;
              }

              if (v32 >= ((v25 + 64) >> 6))
              {
                goto LABEL_35;
              }

              v35 = *(v24 + 8 * v32);
              ++v34;
              if (v35)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
            return result;
          }

LABEL_32:
          v33 = (v35 - 1) & v35;
          v36 = *(*(v23 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v35)))));
          sub_257ECC3F0();
          if (!v36)
          {
            goto LABEL_35;
          }
        }
      }

LABEL_35:
      sub_257C02520();
      v5 = v48;
      v6 = v49;
      v8 = v52;
      goto LABEL_36;
    }
  }

LABEL_37:
  v37 = ObjectType;
  v38 = v8;
  v39 = v5;
  v38(&v56, ObjectType, v5);
  v40 = v56;
  v41 = sub_257E01214();
  v43 = sub_257DFE504(v53, v40);
  if (*v42 >= 2uLL)
  {
    v44 = v42;

    *v44 = MEMORY[0x277D84FA0];
  }

  (v43)(v53, 0);
  (v41)(v54, 0);
  v52(v54, v37, v39);
  v45 = sub_257E353D8(v54, v6);
  v52(&v56, v37, v39);
  v46 = v56;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = *(a3 + v51);
  *(a3 + v51) = 0x8000000000000000;
  sub_257EC7D14(v45, v46, isUniquelyReferenced_nonNull_native);
  *(a3 + v51) = v53[0];
  return swift_endAccess();
}

void *sub_257E0FC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = sub_257ECDA30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E10);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v29 = &v27[-v8];
  v9 = *a1;
  v10 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 56);
  v12(&v34, ObjectType, v10);
  v13 = sub_257E42730(&v34, v9);
  if (v13)
  {
    v14 = v13;
    v12(&v34, ObjectType, v10);
    if (v34 == 4 || (v12(&v34, ObjectType, v10), v34 == 13) || (v12(&v34, ObjectType, v10), v34 == 10) || (result = (v12)(&v34, ObjectType, v10), v34 == 9))
    {
      v34 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF8);
      sub_257BD2D4C(&unk_2815441D8, &qword_27F8F9DF8);
      v16 = v29;
      sub_257ECDE10();
      sub_257BD2D4C(&qword_27F8F9E18, &qword_27F8F9E10);
      v17 = v31;
      v18 = sub_257ECDD90();

      result = (*(v30 + 8))(v16, v17);
      v14 = v18;
    }
  }

  else
  {
    v30 = v4;
    v31 = v3;
    sub_257ECD420();
    v19 = v9;
    v20 = sub_257ECDA20();
    v21 = sub_257ECFBD0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v22 = 136315138;
      v28 = v21;
      v12(&v33, ObjectType, v10);
      v23 = sub_257D14A40();
      v25 = sub_257BF1FC8(v23, v24, &v34);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_257BAC000, v20, v28, "Could not create description publisher for control: %s", v22, 0xCu);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x259C74820](v26, -1, -1);
      MEMORY[0x259C74820](v22, -1, -1);
    }

    result = (*(v30 + 8))(v6, v31);
    v14 = 0;
  }

  *v32 = v14;
  return result;
}

void sub_257E1009C()
{
  v1 = v0;
  v2 = sub_257DFF054();
  [v1 addChildViewController_];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
  v6 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] view];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  [v4 addSubview_];

  v8 = [*&v1[v5] view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];

  v10 = [*&v1[v5] view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [v1 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  sub_257EB6FD8(v12, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  [*&v1[v5] didMoveToParentViewController_];
  v14 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView;
  v15 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = *&v1[v5];
  v17 = v15;
  if (![v16 view])
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v18 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
  v19 = swift_beginAccess();
  MEMORY[0x259C72300](v19);
  if (*((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();

  v20 = *&v1[v14];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = *(*&v1[v5] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer);
  v22 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
  swift_beginAccess();
  v23 = v20;
  v24 = v21;
  MEMORY[0x259C72300]();
  if (*((*(v20 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v20 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_257ECF830();
  }

  sub_257ECF860();
  swift_endAccess();
}

void sub_257E10374(char a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator;
  v8 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator);
  if (v8)
  {
    [v8 stopAnimation_];
  }

  v9 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView;
  v10 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView);
  if (v10)
  {
    [v10 removeFromSuperview];
    v11 = *(v3 + v9);
  }

  else
  {
    v11 = 0;
  }

  *(v3 + v9) = 0;

  v12 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
  v13 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView;
  v14 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v14 bounds];
  [v12 setFrame_];
  [v12 setAutoresizingMask_];
  [v12 setClipsToBounds_];
  [v12 setAlpha_];
  v15 = *(v3 + v13);
  if (!v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v15 addSubview_];
  v16 = *(v3 + v9);
  *(v3 + v9) = v12;
  v17 = v12;

  v18 = [objc_opt_self() effectWithBlurRadius_];
  if (a1)
  {
    v19 = 0.1;
  }

  else
  {
    v19 = 0.35;
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:v19];
  v21 = *(v3 + v7);
  *(v3 + v7) = v20;
  v22 = v20;

  if (v22)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = a3;
    v36 = sub_257E2C248;
    v37 = v23;
    v32 = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_257E106F4;
    v35 = &block_descriptor_822;
    v24 = _Block_copy(&v32);
    sub_257BBD7E4(a2);

    [v22 addCompletion_];
    _Block_release(v24);
  }

  v25 = *(v3 + v7);
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = swift_allocObject();
  *(v26 + 16) = v17;
  *(v26 + 24) = v18;
  v36 = sub_257E2C27C;
  v37 = v26;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_257D231C0;
  v35 = &block_descriptor_828;
  v27 = _Block_copy(&v32);
  v28 = v17;
  v29 = v25;
  v30 = v18;

  [v29 addAnimations_];
  _Block_release(v27);

  v31 = *(v3 + v7);
  if (v31)
  {
    [v31 startAnimation];

    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_257E106F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  sub_257ECC3F0();
  v3(a2);
}

void sub_257E10748(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (!*(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView))
  {
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_257E2C1EC;
    v37 = v28;
    v32 = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_257D231C0;
    v35 = &block_descriptor_796;
    v29 = _Block_copy(&v32);

    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    *(v30 + 24) = a3;
    v36 = sub_257E2D174;
    v37 = v30;
    v32 = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_257E106F4;
    v35 = &block_descriptor_802;
    v31 = _Block_copy(&v32);
    sub_257BBD7E4(a2);

    v20 = [v27 runningPropertyAnimatorWithDuration:0 delay:v29 options:v31 animations:0.05 completion:a4];
    _Block_release(v31);
    _Block_release(v29);
    goto LABEL_12;
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator;
  v11 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator);
  if (v11)
  {
    [v11 stopAnimation_];
  }

  v12 = [objc_opt_self() effectWithBlurRadius_];
  if (a1)
  {
    v13 = 0.25;
  }

  else
  {
    v13 = 0.3;
  }

  v14 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:0 curve:0 animations:v13];
  v15 = *(v5 + v10);
  *(v5 + v10) = v14;
  v16 = v14;

  if (!v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v12;
  v36 = sub_257E2C1F4;
  v37 = v18;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_257D231C0;
  v35 = &block_descriptor_809;
  v19 = _Block_copy(&v32);
  v20 = v12;

  [v16 addAnimations_];
  _Block_release(v19);

  v21 = *(v5 + v10);
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = a2;
  v23[4] = a3;
  v36 = sub_257E2C1FC;
  v37 = v23;
  v32 = MEMORY[0x277D85DD0];
  v33 = 1107296256;
  v34 = sub_257E106F4;
  v35 = &block_descriptor_816;
  v24 = _Block_copy(&v32);
  v25 = v21;
  sub_257BBD7E4(a2);

  [v25 addCompletion_];
  _Block_release(v24);

  v26 = *(v5 + v10);
  if (v26)
  {
    [v26 startAnimationAfterDelay_];
LABEL_12:

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_257E10B98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_257E10E2C();
  }
}

void sub_257E10BEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView);
    v5 = Strong;
    v6 = v4;

    if (v4)
    {
      [v6 setEffect_];
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_257E10E2C();
  }
}

void sub_257E10CAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 removeFromSuperview];
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = *&v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView];
    *&v8[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView] = 0;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v13)
    {
      sub_257D34520();
    }
  }

  if (a3)
  {
    a3();
  }
}

void sub_257E10E38(char a1, float a2)
{
  v5 = v2;
  v6 = sub_257DFF59C();
  v7 = [v6 layer];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    sub_257ED0410();
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setAutomaticallyDimsOverCaptureRegion_];

  *&v10 = a2;
  [v9 setOpacity_];

  v11 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView);
  v12 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView;
  v13 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v11)
  {
    if (v13)
    {
      v19 = *(v5 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
      sub_257BD2C2C(0, &unk_281543E00);
      v14 = v11;
      v15 = v19;
      v16 = sub_257ECFF50();

      if (v16)
      {
        v17 = *(v5 + v12);
        if (v17)
        {

          [v17 setHidden_];
        }
      }

      return;
    }
  }

  else if (v13)
  {
    return;
  }

  v18 = v13;
}

uint64_t sub_257E11128()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D98);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA0);
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = &v42 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DA8);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v44 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DB0);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v42 - v9;
  v10 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v11 = v0;
  v12 = [v10 initWithTarget:v11 action:sel_didPanPreviewView_];
  [v12 setDelegate_];
  v13 = sub_257DFF59C();
  [v13 addGestureRecognizer_];

  v14 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture];
  *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture] = v12;
  v54 = v12;

  v15 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v11 action:sel_didLongPressToFocus_];
  [v15 setNumberOfTouchesRequired_];
  [v15 setMinimumPressDuration_];
  [v15 setDelegate_];
  v16 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView;
  [*&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView] addGestureRecognizer_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v11 action:sel_didTapToChangeFocus_];
  [v17 setNumberOfTouchesRequired_];
  [v17 setNumberOfTapsRequired_];
  [v17 setDelegate_];
  v53 = v15;
  [v17 requireGestureRecognizerToFail_];
  [*&v11[v16] addGestureRecognizer_];
  v18 = *&v11[v16];
  v19 = sub_257DFF620();
  [v18 addGestureRecognizer_];

  v20 = [objc_allocWithZone(MEMORY[0x277D75848]) initWithTarget:v11 action:sel_didPinchToZoom_];
  [*&v11[v16] addGestureRecognizer_];
  v21 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture];
  *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture] = v20;
  v43 = v20;

  v22 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture];
  v52 = v17;
  [v17 requireGestureRecognizerToFail_];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A08);
  sub_257ECDD30();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DC0);
  sub_257BD2D4C(&qword_281544128, &qword_27F8F9D98);
  v23 = v45;
  v24 = v47;
  sub_257ECDDA0();
  (*(v46 + 8))(v5, v24);
  v25 = sub_257BD2D4C(&qword_281544470, &qword_27F8F9DA0);
  v26 = sub_257BD2D4C(&qword_281543DA8, &qword_27F8F9DC0);
  v27 = v44;
  v28 = v51;
  MEMORY[0x259C70960](v51, v25, v26);
  (*(v49 + 8))(v23, v28);
  sub_257BD2D4C(&qword_2815443F0, &qword_27F8F9DA8);
  v29 = v50;
  v30 = sub_257ECDD90();
  (*(v48 + 8))(v27, v29);
  v60 = v30;
  v31 = [objc_opt_self() mainRunLoop];
  v59 = v31;
  v32 = sub_257ED0080();
  v33 = v58;
  (*(*(v32 - 8) + 56))(v58, 1, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9DC8);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&qword_2815441D0, &unk_27F8F9DC8);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v34 = v55;
  sub_257ECDDF0();
  sub_257BE4084(v33, &unk_27F8F4DB0);

  v35 = swift_allocObject();
  v36 = v54;
  swift_unknownObjectWeakInit();

  v37 = swift_allocObject();
  v38 = v52;
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v35;
  *(v39 + 24) = v37;
  sub_257BD2D4C(&unk_281544268, &unk_27F8F9DB0);
  v40 = v57;
  sub_257ECDE50();

  (*(v56 + 8))(v34, v40);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();
}

void sub_257E11A90(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setEnabled_];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 setEnabled_];
  }
}

uint64_t sub_257E11B34()
{
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD0);
  v203 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v201 = v174 - v0;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CD8);
  v204 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v202 = v174 - v1;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CE0);
  v208 = *(v209 - 8);
  MEMORY[0x28223BE20](v209);
  v207 = v174 - v2;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v198 = v174 - v3;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CF0);
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v195 = v174 - v4;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9598);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v192 = v174 - v5;
  v213 = sub_257ECF130();
  v216 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v211 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_257ECFD10();
  v217 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v212 = v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = v174 - v8;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9CF8);
  v179 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v177 = v174 - v9;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D00);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v178 = v174 - v10;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D08);
  v183 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v182 = v174 - v11;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D10);
  v176 = *(v186 - 1);
  MEMORY[0x28223BE20](v186);
  v175 = v174 - v12;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D18);
  v187 = *(v188 - 1);
  MEMORY[0x28223BE20](v188);
  v184 = v174 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v236 = *(v14 - 8);
  v237 = v14;
  MEMORY[0x28223BE20](v14);
  v231 = v174 - v15;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D28);
  v238 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v222 = v174 - v16;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D30);
  v243 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v227 = v174 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v174 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v174 - v23;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8FD0);
  v230 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v26 = v174 - v25;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v221 = qword_281548340;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  sub_257ECDD30();
  swift_endAccess();
  v241 = objc_opt_self();
  v27 = [v241 mainRunLoop];
  v245 = v27;
  v233 = sub_257ED0080();
  v28 = *(v233 - 8);
  v234 = *(v28 + 56);
  v244 = v28 + 56;
  v234(v20, 1, 1, v233);
  v235 = sub_257BD2C2C(0, &unk_281543D40);
  v220 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  v242 = sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  sub_257ECDDF0();
  v29 = v20;
  sub_257BE4084(v20, &unk_27F8F4DB0);

  (*(v22 + 8))(v24, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v210 = MEMORY[0x277CBCD60];
  sub_257BD2D4C(&qword_281544250, &qword_27F8F8FD0);
  v30 = v240;
  sub_257ECDE50();

  (*(v230 + 8))(v26, v30);
  v240 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cancellables;
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v31 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v224 = sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  v32 = v222;
  v33 = v237;
  sub_257ECDE30();
  v219 = *(v236 + 8);
  v236 += 8;
  v219(v31, v33);
  v34 = [v241 mainRunLoop];
  v245 = v34;
  v35 = v29;
  v36 = v234;
  v234(v29, 1, 1, v233);
  v174[1] = MEMORY[0x277CBCBE0];
  v218 = sub_257BD2D4C(&unk_2815443D8, &qword_27F8F9D28);
  v37 = v227;
  v38 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v35, &unk_27F8F4DB0);

  v39 = *(v238 + 8);
  v238 += 8;
  v225 = v39;
  v39(v32, v38);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v230 = sub_257BD2D4C(&unk_281544200, &unk_27F8F9D30);
  v40 = v239;
  sub_257ECDE50();

  v41 = *(v243 + 8);
  v243 += 8;
  v223 = v41;
  v41(v37, v40);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F89F0);
  v42 = v175;
  sub_257ECDD30();
  swift_endAccess();
  v43 = [v241 mainRunLoop];
  v245 = v43;
  v44 = v35;
  v228 = v35;
  v36(v35, 1, 1, v233);
  sub_257BD2D4C(&qword_27F8F9D50, &qword_27F8F9D10);
  v45 = v184;
  v46 = v186;
  sub_257ECDDF0();
  sub_257BE4084(v44, &unk_27F8F4DB0);

  (*(v176 + 8))(v42, v46);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_27F8F9D58, &unk_27F8F9D18);
  v47 = v188;
  sub_257ECDE50();

  (*(v187 + 8))(v45, v47);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v48 = v189;
  sub_257ECDD30();
  swift_endAccess();

  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  sub_257E2BD50();
  v49 = v177;
  v50 = v191;
  sub_257ECDE30();
  v190[1](v48, v50);
  v51 = v212;
  sub_257ECFD00();
  v52 = sub_257BD2C2C(0, &qword_281543F10);
  LODWORD(v191) = *MEMORY[0x277D851C0];
  v53 = v216;
  v54 = *(v216 + 104);
  v189 = (v216 + 104);
  v190 = v54;
  v55 = v211;
  v56 = v213;
  (v54)(v211);
  v184 = v52;
  v57 = sub_257ECFD90();
  v58 = *(v53 + 8);
  v216 = v53 + 8;
  v188 = v58;
  (v58)(v55, v56);
  v245 = v57;
  sub_257BD2D4C(&qword_2815443E8, &qword_27F8F9CF8);
  v187 = sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v59 = v178;
  v60 = v185;
  sub_257ECDE00();

  v61 = *(v217 + 8);
  v217 += 8;
  v186 = v61;
  (v61)(v51, v214);
  (*(v179 + 8))(v49, v60);
  v185 = MEMORY[0x277CBCD20];
  sub_257BD2D4C(&unk_281544298, &qword_27F8F9D00);
  v62 = v182;
  v63 = v181;
  sub_257ECDDE0();
  (*(v180 + 8))(v59, v63);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_281544300, &qword_27F8F9D08);
  v64 = v215;
  sub_257ECDE50();

  (*(v183 + 8))(v62, v64);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v65 = qword_281548348;
  swift_beginAccess();
  v66 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v67 = v222;
  v68 = v237;
  sub_257ECDE30();
  v219(v66, v68);
  v69 = [v241 mainRunLoop];
  v245 = v69;
  v70 = v228;
  v234(v228, 1, 1, v233);
  v71 = v227;
  v72 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v70, &unk_27F8F4DB0);

  v73 = v67;
  v225(v67, v72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = v239;
  sub_257ECDE50();

  v223(v71, v74);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v215 = xmmword_281548330;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A10);
  v75 = v192;
  sub_257ECDD30();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_27F8F9D60, &qword_27F8F9598);
  v76 = v194;
  sub_257ECDE50();

  (*(v193 + 8))(v75, v76);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v221 = v65;
  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v77 = v237;
  sub_257ECDE30();
  v219(v66, v77);
  v78 = [v241 mainRunLoop];
  v245 = v78;
  v79 = v228;
  v80 = v234;
  v234(v228, 1, 1, v233);
  v81 = v227;
  v82 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v79, &unk_27F8F4DB0);

  v225(v73, v82);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = v239;
  sub_257ECDE50();

  v84 = v81;
  v223(v81, v83);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v85 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v86 = v222;
  v87 = v237;
  sub_257ECDE30();
  v88 = v219;
  v219(v85, v87);
  v89 = [v241 mainRunLoop];
  v245 = v89;
  v90 = v228;
  v80(v228, 1, 1, v233);
  v91 = v84;
  v92 = v90;
  v93 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v92, &unk_27F8F4DB0);

  v94 = v86;
  v95 = v86;
  v96 = v93;
  v225(v94, v93);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v97 = v239;
  sub_257ECDE50();

  v223(v91, v97);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v98 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v99 = v237;
  sub_257ECDE30();
  v88(v98, v99);
  v100 = [v241 mainRunLoop];
  v245 = v100;
  v101 = v228;
  v102 = v233;
  v234(v228, 1, 1, v233);
  v103 = v227;
  sub_257ECDDF0();
  sub_257BE4084(v101, &unk_27F8F4DB0);

  v104 = v225;
  v225(v95, v96);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = v239;
  sub_257ECDE50();

  v106 = v103;
  v107 = v223;
  v223(v106, v105);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v108 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v109 = v222;
  v110 = v237;
  sub_257ECDE30();
  v88(v108, v110);
  v111 = [v241 mainRunLoop];
  v245 = v111;
  v112 = v228;
  v234(v228, 1, 1, v102);
  v113 = v227;
  v114 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v112, &unk_27F8F4DB0);

  v115 = v109;
  v104(v109, v114);
  v116 = v195;
  v117 = v239;
  sub_257ECDE10();
  v118 = v113;
  v107(v113, v117);
  swift_allocObject();
  v119 = v226;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544338, &qword_27F8F9CF0);
  v120 = v197;
  sub_257ECDE50();

  (*(v196 + 8))(v116, v120);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v121 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v122 = v115;
  v123 = v237;
  sub_257ECDE30();
  v219(v121, v123);
  v124 = v241;
  v125 = [v241 mainRunLoop];
  v245 = v125;
  v126 = v228;
  v127 = v233;
  v234(v228, 1, 1, v233);
  v128 = v118;
  v129 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v126, &unk_27F8F4DB0);

  v225(v122, v129);
  swift_allocObject();
  v130 = v119;
  swift_unknownObjectWeakInit();
  v131 = v239;
  sub_257ECDE50();

  v223(v128, v131);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  v132 = v231;
  sub_257ECDD30();
  swift_endAccess();
  v133 = [v124 mainRunLoop];
  v245 = v133;
  v234(v126, 1, 1, v127);
  v134 = v198;
  v135 = v237;
  sub_257ECDDF0();
  sub_257BE4084(v126, &unk_27F8F4DB0);

  v136 = v219;
  v219(v132, v135);
  swift_allocObject();
  v137 = v130;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v138 = v200;
  sub_257ECDE50();

  (*(v199 + 8))(v134, v138);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  sub_257ECDD30();
  swift_endAccess();
  v139 = v222;
  sub_257ECDE30();
  v136(v132, v135);
  v140 = [v241 mainRunLoop];
  v245 = v140;
  v141 = v228;
  v234(v228, 1, 1, v233);
  v142 = v227;
  v143 = v232;
  sub_257ECDDF0();
  sub_257BE4084(v141, &unk_27F8F4DB0);

  v225(v139, v143);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = v239;
  sub_257ECDE50();

  v223(v142, v144);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F8A00);
  v145 = v201;
  sub_257ECDD30();
  swift_endAccess();
  v146 = v212;
  sub_257ECFD00();
  v147 = v211;
  v148 = v213;
  (v190)(v211, v191, v213);
  v149 = sub_257ECFD90();
  (v188)(v147, v148);
  v245 = v149;
  sub_257BD2D4C(&qword_27F8F9D70, &qword_27F8F9CD0);
  v150 = v202;
  v151 = v146;
  v152 = v205;
  sub_257ECDE00();

  (v186)(v151, v214);
  (*(v203 + 8))(v145, v152);
  sub_257BD2D4C(&qword_27F8F9D78, &qword_27F8F9CD8);
  v153 = v207;
  v154 = v206;
  sub_257ECDDD0();
  (*(v204 + 8))(v150, v154);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_27F8F9D80, &unk_27F8F9CE0);
  v155 = v209;
  sub_257ECDE50();

  (*(v208 + 8))(v153, v155);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  v156 = sub_257DFF054();
  v157 = sub_257EB1B80();

  v158 = sub_257CA9F5C();
  [v157 setFont_];

  v159 = sub_257E001D8();
  v160 = sub_257CA9DF0();
  [v159 setFont_];

  v161 = *(v137 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v162 = sub_257EB1BE0();

  if (v162)
  {
    v163 = sub_257CA9F5C();
    [v162 setFont_];
  }

  v164 = sub_257E002B8();
  if (v164)
  {
    v165 = v164;
    v166 = sub_257CA9DF0();
    [v165 setFont_];
  }

  v167 = sub_257E003E8();
  v168 = sub_257CA9F5C();
  [v167 setFont_];

  v169 = sub_257E00504();
  if (v169)
  {
    v170 = v169;
    v171 = sub_257CA9F5C();
    [v170 setFont_];
  }

  v245 = *(v221 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_contentSizeCategoryPublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9090);
  sub_257BD2D4C(&qword_2815441C0, &qword_27F8F9090);
  v172 = sub_257ECDE50();

  *(v137 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_contentSizeCategorySubscription) = v172;
}

void sub_257E147C0(unsigned __int8 *a1)
{
  v28 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v28);
  v3 = (&v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  if (v9)
  {
    v12 = sub_257ED0640();

    if ((v12 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v13 = sub_257DFF3FC();
  v14 = &v13[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v14 = 0;
  v14[8] = 0;

  [*&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] setAlpha_];
  v15 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
  if (v15)
  {
    [v15 setAlpha_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  sub_257ECC3F0();
  sub_257ECDD70();
  if (!v9)
  {
LABEL_12:
    v16 = sub_257ED0640();

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

LABEL_4:
  if (v9 != 1)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  sub_257ECC3F0();
  sub_257ECDD70();
LABEL_16:
  if (v9 > 1)
  {

    goto LABEL_20;
  }

  v17 = sub_257ED0640();

  if (v17)
  {
LABEL_20:
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v30) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257C77614();
    v18 = sub_257ECF930();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    sub_257ECF900();
    v19 = v11;
    v20 = sub_257ECF8F0();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v19;
    sub_257E81524(0, 0, v8, &unk_257EEBAD8, v21);
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v23 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    v24 = v31;
    v25 = v30;

    sub_257D98414(v25, v23, v24, *(&v24 + 1));
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v30) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    [*&v11[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer] removeFromSuperlayer];
    *v3 = 0;
    v3[1] = 0xE000000000000000;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    v26 = v29;
    sub_257C15EC0(v3, &v5[*(v29 + 20)]);
    v5[v26[6]] = 0;
    v5[v26[7]] = 0;
    v27 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v3, type metadata accessor for MAGOutputEvent.EventType);
    *&v5[v26[8]] = v27;
    sub_257CBBC80(v5);
    sub_257C15F24(v5, type metadata accessor for MAGOutputEvent);
  }
}

uint64_t sub_257E14EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  v4[11] = swift_task_alloc();
  v5 = sub_257ED03D0();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = sub_257ECF900();
  v4[16] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x2822009F8](sub_257E14FD8, v7, v6);
}

uint64_t sub_257E14FD8()
{
  v1 = sub_257ED0860();
  v3 = v2;
  sub_257ED06F0();
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_257E150B4;

  return sub_257C5CFB8(v1, v3, 0, 0, 1);
}

uint64_t sub_257E150B4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 160) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 144);
  v7 = *(v2 + 136);
  if (v0)
  {
    v8 = sub_257E15460;
  }

  else
  {
    v8 = sub_257E1524C;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_257E1524C()
{
  if (qword_27F8F46F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_257E15324;

  return sub_257C59A40(v0 + 16, 5, 0, 1);
}

uint64_t sub_257E15324()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_257E1570C;
  }

  else
  {
    v5 = sub_257E154D8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_257E15460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E154D8()
{

  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v2;
    *(v0 + 56) = v1;
    *(v0 + 64) = v3;
    *(v0 + 72) = v4;
    sub_257E2BF60(v2, v1, v3, v4);
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 184) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257D98414(v2, v1, v3, v4);
  }

  else
  {
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);
    v7 = sub_257ECF930();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = v6;
    v9 = sub_257ECF8F0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    sub_257C3FBD4(0, 0, v5, &unk_257EEBAE8, v10);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_257E1570C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257E15784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MAGOutputEvent.EventType(0);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for MAGOutputEvent(0);
  v4[6] = swift_task_alloc();
  sub_257ECF900();
  v4[7] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257E1587C, v6, v5);
}

uint64_t sub_257E1587C()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer) removeFromSuperlayer];
  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer) removeFromSuperlayer];
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v2, v1 + v3[5]);
  *(v1 + v3[6]) = 0;
  *(v1 + v3[7]) = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v7, type metadata accessor for MAGOutputEvent.EventType);
  *(v5 + *(v6 + 32)) = v8;
  sub_257CBBC80(v5);
  sub_257C15F24(v5, type metadata accessor for MAGOutputEvent);

  v9 = v0[1];

  return v9();
}

void sub_257E15A0C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v16[0])
    {

      if (v1)
      {
        sub_257E15D90();
      }

      else
      {
        sub_257E15EB0();
      }
    }

    v5 = sub_257DFF59C();
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {

      sub_257ED0410();
      __break(1u);
      return;
    }

    v8 = v7;
    [v7 setAutomaticallyDimsOverCaptureRegion_];

    v9 = [v8 connection];
    if (v9)
    {
      [v9 setEnabled_];
    }

    v10 = *&v3[v4];
    if (v1)
    {
      if (![*&v10[OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession] isRunning])
      {
        goto LABEL_14;
      }

      v11 = *&v3[v4];
      sub_257DB1748();
    }

    else
    {
      v11 = v10;
      sub_257DB16AC();
    }

LABEL_14:
    v16[3] = type metadata accessor for AppViewController();
    v16[0] = v3;
    v12 = v3;
    sub_257E2B2C0(v1);
    sub_257BE4084(v16, &unk_27F8F62F0);
    v13 = *&v12[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
    if (v13)
    {
      v14 = v13;
      sub_257BDB830();
    }

    if (v1)
    {
      goto LABEL_24;
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(v16[0]))
    {
      v15 = sub_257ED0640();

      if ((v15 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    sub_257C77614();
LABEL_24:
    [*&v12[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer] removeFromSuperlayer];
  }
}

void sub_257E15D90()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D6B520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v0)
  {
    sub_257ECC3F0();
    sub_257D33238();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD70();
  }
}

void sub_257E15EB0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  sub_257D6B520();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3)
  {
    swift_beginAccess();
    v0 = qword_2815447E0;

    if (v0 != -1)
    {
      v1 = swift_once();
    }

    MEMORY[0x28223BE20](v1);
    sub_257ECFD50();

    sub_257D337D8(0, v2);
  }
}

void sub_257E16060(uint64_t a1)
{
  v2 = sub_257ECDA30();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - v7;
  v9 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v14 = Strong;
  [*(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer) removeFromSuperlayer];
  if (!v10)
  {
LABEL_10:

    return;
  }

  if ((v12 & 1) == 0)
  {
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      v24 = v23;
      v25 = v9;
      v26 = *&v14[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer];
      sub_257E2BF60(v25, v10, v12, v11);
      v27 = v26;
      [v24 insertSublayer:v27 atIndex:1];

      sub_257D98414(v25, v10, v12, v11);
      return;
    }

    goto LABEL_10;
  }

  v34 = v2;
  v15 = v11;
  v35 = v9;
  v16 = v10;
  v17 = sub_257DFF59C();
  [v17 setIsAccessibilityElement_];

  v36 = v9;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v18 = qword_281548340;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v38[0]) = 0;
  sub_257ECC3F0();
  v29[1] = v18;
  sub_257ECDD70();
  v38[3] = type metadata accessor for AppViewController();
  v38[0] = v14;
  v19 = v14;
  sub_257E2B2C0(1);
  sub_257BE4084(v38, &unk_27F8F62F0);
  if (v36)
  {
    v31 = v10;
    v32 = v12;
    v33 = v11;
    v30 = v19;
    v20 = *&v19[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 32];
    __swift_project_boxed_opaque_existential_1(&v19[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore], *&v19[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore + 24]);
    v21 = *(v20 + 16);
    v22 = v35;
    v21();
    v28 = sub_257ECCB70();
    (*(*(v28 - 8) + 56))(v8, 0, 1, v28);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257C1C614(v8, v6);
    sub_257ECC3F0();
    sub_257ECDD70();

    sub_257D98414(v36, v31, v32, v33);
    sub_257BE4084(v8, &qword_27F8F5F30);
  }

  else
  {

    sub_257D98414(0, v10, v12, v11);
  }
}

uint64_t sub_257E165F0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  if (*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return v1;
}

void sub_257E166C0(double *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v5)
    {
      sub_257D337D8(0, v1);
    }
  }
}

uint64_t sub_257E16798()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v48 == 1)
  {
    swift_beginAccess();
    v1 = qword_2815447E0;

    if (v1 != -1)
    {
      v2 = swift_once();
    }

    MEMORY[0x28223BE20](v2);
    sub_257ECFD50();

    if (v47 && v47 != 1)
    {
    }

    else
    {
      v3 = sub_257ED0640();

      if ((v3 & 1) == 0)
      {
        MEMORY[0x28223BE20](v4);

        sub_257ECFD50();

        if (v47 && v47 == 1)
        {
        }

        else
        {
          v21 = sub_257ED0640();

          if ((v21 & 1) == 0)
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v26 = Strong;
              sub_257E1F078(2);
            }

            swift_beginAccess();
            v24 = swift_unknownObjectWeakLoadStrong();
            if (!v24)
            {
              goto LABEL_27;
            }

LABEL_25:
            v27 = v24;
            v28 = sub_257DFF054();

            v29 = *&v28[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
            v46 = *&v29[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];

            type metadata accessor for MAGUtilities();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v31 = objc_opt_self();
            v32 = [v31 bundleForClass_];
            v33 = sub_257ECF4C0();
            v34 = sub_257ECF4C0();
            v35 = [v32 localizedStringForKey:v33 value:0 table:v34];

            sub_257ECF500();

            MEMORY[0x259C72150](8236, 0xE200000000000000);

            v17 = [v31 bundleForClass_];
            v18 = sub_257ECF4C0();
            v19 = sub_257ECF4C0();
            v20 = [v17 localizedStringForKey:v18 value:0 table:v19];
LABEL_26:
            v36 = v20;

            v37 = sub_257ECF500();
            v39 = v38;

            MEMORY[0x259C72150](v37, v39);

            v40 = sub_257ECF4C0();

            [v46 setAccessibilityLabel_];

LABEL_27:
            swift_beginAccess();
            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              v42 = v41;
              v43 = sub_257DFF054();

              v44 = *&v43[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
              v45 = *&v44[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];

              sub_257C8105C();
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECC3F0();
            return sub_257ECDD70();
          }
        }

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        if (v22)
        {
          v23 = v22;
          sub_257E1F078(0);
        }

        swift_beginAccess();
        v24 = swift_unknownObjectWeakLoadStrong();
        if (!v24)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_257E1F078(1);
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_27;
    }

    v8 = v7;
    v9 = sub_257DFF054();

    v10 = *&v9[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
    v46 = *&v10[OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView];

    type metadata accessor for MAGUtilities();
    v11 = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = [v12 bundleForClass_];
    v14 = sub_257ECF4C0();
    v15 = sub_257ECF4C0();
    v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

    sub_257ECF500();

    MEMORY[0x259C72150](8236, 0xE200000000000000);

    v17 = [v12 bundleForClass_];
    v18 = sub_257ECF4C0();
    v19 = sub_257ECF4C0();
    v20 = [v17 localizedStringForKey:v18 value:0 table:v19];
    goto LABEL_26;
  }

  return result;
}

void sub_257E171DC(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);
    if (v1 == 1)
    {
      v5 = v4;
      [v5 removeFromSuperview];
    }

    else
    {
      v6 = [v4 superview];
      if (v6)
      {
        v7 = v6;

        v3 = v7;
      }

      else
      {
        sub_257E1F554();
      }
    }
  }
}

void sub_257E17294()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_257DFF3FC();
    sub_257C7C61C();
  }
}

void sub_257E172F8(unsigned __int8 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (v5)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if ((v13[7] & 1) == 0)
      {
        v8 = sub_257ECF930();
        (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
        sub_257ECF900();
        v9 = v7;
        v10 = sub_257ECF8F0();
        v11 = swift_allocObject();
        v12 = MEMORY[0x277D85700];
        v11[2] = v10;
        v11[3] = v12;
        v11[4] = v9;
        sub_257C3FBD4(0, 0, v4, &unk_257EEB9A0, v11);
      }
    }
  }
}

uint64_t sub_257E174E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[34] = a4;
  v5 = sub_257ECDA30();
  v4[35] = v5;
  v4[36] = *(v5 - 8);
  v4[37] = swift_task_alloc();
  v4[38] = type metadata accessor for MAGOutputEvent.EventType(0);
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for MAGOutputEvent(0);
  v4[41] = swift_task_alloc();
  v6 = sub_257ECF120();
  v4[42] = v6;
  v4[43] = *(v6 - 8);
  v4[44] = swift_task_alloc();
  v7 = sub_257ECF190();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_257ECF1B0();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  sub_257ECF900();
  v4[52] = sub_257ECF8F0();
  v10 = sub_257ECF8B0();
  v4[53] = v10;
  v4[54] = v9;

  return MEMORY[0x2822009F8](sub_257E17754, v10, v9);
}

uint64_t sub_257E17754()
{
  v1 = *(v0[34] + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
  v2 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && (v4 = [v3 currentFrame]) != 0 && (v5 = v4, v6 = objc_msgSend(v4, sel_capturedImage), v0[55] = v6, v5, v6))
  {
    type metadata accessor for MAGCVPixelBufferWrapper();
    v7 = swift_allocObject();
    v0[56] = v7;
    *(v7 + 16) = v6;
    v8 = v6;
    v9 = swift_task_alloc();
    v0[57] = v9;
    *v9 = v0;
    v9[1] = sub_257E17B54;

    return MAGImageCaptionService.generateImageCaption(for:)(v7);
  }

  else
  {
    v18 = v0[51];
    v11 = v0[49];
    v12 = v0[50];
    v14 = v0[47];
    v13 = v0[48];
    v23 = v0[46];
    v24 = v0[45];
    v15 = v0[44];
    v22 = v0[43];
    v20 = v0[42];

    sub_257BD2C2C(0, &qword_281543F10);
    v19 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v21 = *(v11 + 8);
    v21(v12, v13);
    v0[6] = sub_257E18628;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_257D231C0;
    v0[5] = &block_descriptor_722;
    v16 = _Block_copy(v0 + 2);
    sub_257ECF150();
    v0[29] = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C727E0](v18, v14, v15, v16);
    _Block_release(v16);

    (*(v22 + 8))(v15, v20);
    (*(v23 + 8))(v14, v24);
    v21(v18, v13);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_257E17B54(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  if (v2)
  {
    v5 = v4[53];
    v6 = v4[54];
    v7 = sub_257E18494;
  }

  else
  {

    v5 = v4[53];
    v6 = v4[54];
    v7 = sub_257E17C74;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_257E17C74()
{

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 488) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v53 = ObjCClassFromMetadata;
  v5 = [v51 bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = sub_257ECF500();
  v11 = v10;

  *v3 = v9;
  v3[1] = v11;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v3, v1 + v2[5]);
  *(v1 + v2[6]) = 1;
  *(v1 + v2[7]) = 0;
  v12 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v3, type metadata accessor for MAGOutputEvent.EventType);
  *(v1 + v2[8]) = v12;
  sub_257CBBC80(v1);
  sub_257C15F24(v1, type metadata accessor for MAGOutputEvent);
  v13 = (v12 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedImageCaptionFeedbacks);
  swift_beginAccess();
  v14 = v13[1];
  v15 = v13[2];
  *(v0 + 160) = *v13;
  *(v0 + 168) = v14;
  *(v0 + 176) = v15;
  v16 = qword_2815447E0;

  if (v16 != -1)
  {
    swift_once();
  }

  *(swift_task_alloc() + 16) = v0 + 160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8470);
  sub_257ECFD50();

  v17 = sub_257C592E8(1, *(v0 + 240));

  if (!v17)
  {
    v18 = *(v0 + 400);
    v45 = *(v0 + 408);
    v19 = *(v0 + 384);
    v20 = *(v0 + 392);
    v21 = *(v0 + 376);
    v50 = *(v0 + 368);
    v55 = *(v0 + 360);
    v47 = *(v0 + 352);
    v22 = *(v0 + 336);
    v48 = v19;
    v49 = *(v0 + 344);
    sub_257BD2C2C(0, &qword_281543F10);
    v46 = sub_257ECFD30();
    sub_257ECF1A0();
    sub_257ECF220();
    v23 = *(v20 + 8);
    v23(v18, v19);
    *(v0 + 96) = sub_257E18718;
    *(v0 + 104) = 0;
    *(v0 + 64) = MEMORY[0x277D85DD0];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_257D231C0;
    *(v0 + 88) = &block_descriptor_732;
    v24 = _Block_copy((v0 + 64));
    sub_257ECF150();
    *(v0 + 248) = MEMORY[0x277D84F90];
    sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C727E0](v45, v21, v47, v24);
    _Block_release(v24);

    (*(v49 + 8))(v47, v22);
    (*(v50 + 8))(v21, v55);
    v23(v45, v48);
  }

  if (_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0())
  {
    v25 = qword_281548358;
    v26 = [v51 bundleForClass_];
    v27 = sub_257ECF4C0();

    v28 = sub_257ECF4C0();
    v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

    v30 = sub_257ECF500();
    v52 = v31;
    v54 = v30;

    v32 = v25 + 48;
    swift_beginAccess();
    v33 = *(v25 + 56);
    *(v0 + 208) = *(v25 + 48);
    *(v0 + 216) = v33;
    *(swift_task_alloc() + 16) = v0 + 208;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9D90);
    sub_257ECFD50();

    v34 = *(v0 + 256);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_257BFCB3C(0, *(v34 + 2) + 1, 1, v34);
    }

    v36 = *(v34 + 2);
    v35 = *(v34 + 3);
    if (v36 >= v35 >> 1)
    {
      v34 = sub_257BFCB3C((v35 > 1), v36 + 1, 1, v34);
    }

    v37 = *(v0 + 440);
    v39 = *(v0 + 344);
    v38 = *(v0 + 352);
    v40 = *(v0 + 336);
    *(v34 + 2) = v36 + 1;
    v41 = &v34[16 * v36];
    *(v41 + 4) = v54;
    *(v41 + 5) = v52;
    *(v0 + 264) = v34;
    sub_257ECF110();
    v42 = swift_task_alloc();
    *(v42 + 16) = v0 + 264;
    *(v42 + 24) = v32;
    sub_257ECFD40();

    (*(v39 + 8))(v38, v40);

    swift_endAccess();
  }

  else
  {
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_257E18494()
{

  sub_257ECD440();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBD0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[60];
  v5 = v0[55];
  v7 = v0[36];
  v6 = v0[37];
  v8 = v0[35];
  if (v3)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Could not generate image caption", v9, 2u);
    MEMORY[0x259C74820](v9, -1, -1);

    v1 = v5;
  }

  else
  {
  }

  (*(v7 + 8))(v6, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_257E18628()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E18718()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257E187C0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction);
    if (!v4)
    {
LABEL_9:

      return;
    }

    v5 = v4;
    v6 = [v3 view];
    v7 = v6;
    if (v1)
    {
      if (v6)
      {
        v8 = &selRef_removeInteraction_;
LABEL_8:
        [v6 *v8];

        goto LABEL_9;
      }

      __break(1u);
    }

    else if (v6)
    {
      v8 = &selRef_addInteraction_;
      goto LABEL_8;
    }

    __break(1u);
  }
}

void sub_257E18890(unsigned __int8 *a1)
{
  v41 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v41);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF120();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v38 = v13;
    v36 = v3;
    v37 = v4;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (aBlock[0])
    {
      v35 = v16;
      sub_257BD2C2C(0, &qword_281543F10);
      v33 = sub_257ECFD30();
      v17 = swift_allocObject();
      *(v17 + 16) = v38;
      *(v17 + 24) = v15;
      aBlock[4] = sub_257E2BE68;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_709;
      v18 = _Block_copy(aBlock);
      v34 = v15;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
      sub_257ED0180();
      v19 = v33;
      MEMORY[0x259C72880](0, v12, v9, v18);
      _Block_release(v18);

      (*(v40 + 8))(v9, v7);
      (*(v39 + 8))(v12, v10);
      if (v38)
      {
        v20 = v34;
        v21 = *&v34[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor];
        v22 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
        swift_beginAccess();
        [*(v21 + v22) stopPulse];
        v23 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_doorToneGenerator;
        swift_beginAccess();
        [*(v21 + v23) stopPulse];
        v24 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_objectUnderstandingToneGenerator;
        swift_beginAccess();
        [*(v21 + v24) stopPulse];
        v25 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_pointSpeakDistanceToneGenerator;
        swift_beginAccess();
        [*(v21 + v25) stopPulse];
        sub_257ECC3F0();
        sub_257CC0214();

        v26 = v36;
        swift_storeEnumTagMultiPayload();
        sub_257ECCCE0();
        v27 = v37;
        sub_257C15EC0(v26, &v6[v37[5]]);
        v6[v27[6]] = 1;
        v6[v27[7]] = 0;
        v28 = v35;
        sub_257ECC3F0();
        sub_257C15F24(v26, type metadata accessor for MAGOutputEvent.EventType);
        *&v6[v27[8]] = v28;
        sub_257CBBC80(v6);
        sub_257C15F24(v6, type metadata accessor for MAGOutputEvent);
        swift_getKeyPath();
        swift_getKeyPath();
        v42 = 1;
        sub_257ECC3F0();
        sub_257ECDD70();

        return;
      }

      v15 = v34;
      v29 = v36;
      swift_storeEnumTagMultiPayload();
      sub_257ECCCE0();
      v30 = v37;
      sub_257C15EC0(v29, &v6[v37[5]]);
      v6[v30[6]] = 1;
      v6[v30[7]] = 0;
      v31 = v35;
      sub_257ECC3F0();
      sub_257C15F24(v29, type metadata accessor for MAGOutputEvent.EventType);
      *&v6[v30[8]] = v31;
      sub_257CBBC80(v6);
      sub_257C15F24(v6, type metadata accessor for MAGOutputEvent);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock[0]) = 0;
      sub_257ECC3F0();
      sub_257ECDD70();
    }
  }
}

void sub_257E18FF4()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  sub_257ECF500();
  sub_257BDAB08();
  v5 = sub_257ED0100();
  v7 = v6;

  v8 = sub_257E003E8();
  v9 = sub_257E00504();
  sub_257DFD370(v5, v7, v8, v9);
}

void sub_257E19170(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v4 != 1)
      {
        sub_257ECC3F0();
        if (!v1)
        {
          sub_257CC1C64();

          return;
        }

        sub_257CC1870();
      }
    }
  }
}

void sub_257E192E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v2 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__longPressHintShouldDisplay;
    swift_beginAccess();
    v3 = *(v2 + 8);
    v4 = *(v2 + 16);
    aBlock = *v2;
    v37 = v3;
    LOBYTE(v38) = v4;
    v5 = qword_2815447E0;

    if (v5 != -1)
    {
      v6 = swift_once();
    }

    MEMORY[0x28223BE20](v6);
    sub_257ECFD50();

    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_257ECF4C0();
    v10 = sub_257ECF4C0();
    v11 = [v8 localizedStringForKey:v9 value:0 table:v10];

    v12 = sub_257ECF500();
    v14 = v13;

    aBlock = v12;
    v37 = v14;
    sub_257BDAB08();
    v15 = sub_257ED0100();
    v17 = v16;

    if ((v42 & 1) != 0 || (v18 = sub_257DFF054(), v19 = sub_257EB1B80(), v18, v20 = [v19 text], v19, !v20))
    {
    }

    else
    {
      v21 = sub_257ECF500();
      v23 = v22;

      if (v21 == v15 && v23 == v17)
      {

LABEL_13:
        v25 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
        v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController];
        v27 = sub_257EB1B80();

        v28 = *&v1[v25];
        v29 = sub_257EB1BE0();

        v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
        v30 = objc_opt_self();
        v31 = swift_allocObject();
        *(v31 + 16) = v27;
        *(v31 + 24) = v29;
        v40 = sub_257E2D050;
        v41 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_257D231C0;
        v39 = &block_descriptor_697;
        v32 = _Block_copy(&aBlock);
        v33 = v27;
        v34 = v29;

        v35 = [v30 runningPropertyAnimatorWithDuration:0x20000 delay:v32 options:0 animations:0.2 completion:0.0];
        _Block_release(v32);

        v1 = v35;
        goto LABEL_14;
      }

      v24 = sub_257ED0640();

      if (v24)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
  }
}

void sub_257E19730()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v17 = v5;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (LOBYTE(aBlock[0]) == 1)
    {
      sub_257BD2C2C(0, &qword_281543F10);
      v16 = sub_257ECFD30();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      aBlock[4] = sub_257E2BE04;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_690;
      v11 = _Block_copy(aBlock);
      v12 = v9;

      sub_257ECF150();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
      v15 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
      sub_257ED0180();
      v13 = v16;
      MEMORY[0x259C72880](0, v7, v3, v11);
      _Block_release(v11);

      (*(v1 + 8))(v3, v0);
      (*(v17 + 8))(v7, v15);
    }

    v14 = sub_257DFF3FC();
    sub_257D8FB78();
  }
}

uint64_t sub_257E19AF0(uint64_t a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_257ECF500();
  v15 = v14;

  v25[0] = v13;
  v25[1] = v15;
  sub_257BDAB08();
  v16 = sub_257ED0100();
  v18 = v17;

  v19 = sub_257DFF054();
  v20 = sub_257EB1B80();

  v21 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v22 = sub_257EB1BE0();

  sub_257DFD370(v16, v18, v20, v22);

  *v4 = 15;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v4, &v7[v5[5]]);
  v7[v5[6]] = 0;
  v7[v5[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v23 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
  *&v7[v5[8]] = v23;
  sub_257CBBC80(v7);
  return sub_257C15F24(v7, type metadata accessor for MAGOutputEvent);
}

float sub_257E19DF4@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_257E19E00(float *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 == 0.0)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v4 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if ((v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v4 == 1) && v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn] == 1)
        {
          v3[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff] = 1;
        }
      }
    }
  }
}

void sub_257E19FC8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_257DFF054();
    v3 = sub_257EB1B80();

    v4 = sub_257CA9F5C();
    [v3 setFont_];

    v5 = sub_257E001D8();
    v6 = sub_257CA9DF0();
    [v5 setFont_];

    v7 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController];
    v8 = sub_257EB1BE0();

    if (v8)
    {
      v9 = sub_257CA9F5C();
      [v8 setFont_];
    }

    v10 = sub_257E002B8();
    if (v10)
    {
      v11 = v10;
      v12 = sub_257CA9DF0();
      [v11 setFont_];
    }

    v13 = sub_257E003E8();
    v14 = sub_257CA9F5C();
    [v13 setFont_];

    v15 = sub_257E00504();
    if (v15)
    {
      v16 = v15;
      v17 = sub_257CA9F5C();
      [v16 setFont_];
    }
  }
}

void sub_257E1A15C()
{
  v0 = sub_257E001D8();
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v1 = 1.0;
  }

  else
  {
    v1 = 0.5;
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v1];
  [v0 setBackgroundColor_];

  v3 = sub_257E002B8();
  if (v3)
  {
    v4 = v3;
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.5;
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:v5];
    [v4 setBackgroundColor_];
  }
}

void sub_257E1A3A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3)
  {
    sub_257D34520();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = qword_2815447E0;

    if (v0 != -1)
    {
      v1 = swift_once();
    }

    MEMORY[0x28223BE20](v1);
    sub_257ECFD50();

    sub_257D337D8(0, v2);
  }
}

void sub_257E1A59C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction;
  if (!*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction] && AXDeviceHasStaccato())
  {
    v2 = [objc_opt_self() behaviorOptions];
    v3 = [objc_opt_self() _configurationWithPhysicalButton_behavior_behaviorOptions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BF0;
    *(inited + 32) = v3;
    v5 = v3;
    sub_257BF379C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v6 = objc_allocWithZone(MEMORY[0x277D76170]);
    sub_257BD2C2C(0, &qword_27F8F9CC0);
    sub_257CA64A0(&qword_27F8F9CC8, &qword_27F8F9CC0);
    v7 = sub_257ECFA60();

    v8 = [v6 initWithConfigurations:v7 delegate:v0];

    v9 = [v0 view];
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 addInteraction_];

      v12 = *&v0[v1];
      *&v0[v1] = v11;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257E1A7A4()
{
  v0 = sub_257ECDA30();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7[15] & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v7[14]) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v7[13]) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , (v7[12]) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v7[11] == 1))
  {
    sub_257ECD440();
    v4 = sub_257ECDA20();
    v5 = sub_257ECFBD0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 67109120;
      *(v6 + 4) = 1;
      _os_log_impl(&dword_257BAC000, v4, v5, "Setting detectionModeOn to %{BOOL}d", v6, 8u);
      MEMORY[0x259C74820](v6, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    swift_getKeyPath();
    swift_getKeyPath();
    v7[10] = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    sub_257D36B68();
  }
}

void sub_257E1AAFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = sub_257DFF054();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v5 bringSubviewToFront_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v10 = sub_257E001D8();
  [v9 bringSubviewToFront_];

  v11 = sub_257E002B8();
  if (v11)
  {
    v12 = v11;
    v13 = [v0 view];
    if (!v13)
    {
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v14 = v13;
    [v13 bringSubviewToFront_];
  }

  v15 = [v0 view];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  [v15 bringSubviewToFront_];

  v17 = [v0 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bringSubviewToFront_];

  if ((_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0() & 1) != 0 || os_variant_has_internal_ui() && (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v3), v22 = sub_257ECCB70(), v23 = (*(*(v22 - 8) + 48))(v3, 1, v22), sub_257BE4084(v3, &qword_27F8F5F30), v23 != 1))
  {
    v19 = [v0 view];
    if (v19)
    {
      v20 = v19;
      v21 = sub_257E01668();
      [v20 bringSubviewToFront_];

      return;
    }

    goto LABEL_21;
  }
}

id sub_257E1AD94(uint64_t a1, double a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
  if (v3)
  {
    result = [v3 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v6 = result;
    [result setAlpha_];
  }

  result = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

id sub_257E1AE48(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray;
  v4 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(a2 + v3);
  }

  else
  {
    v5 = 0;
  }

  *(a2 + v3) = 0;

  return sub_257E1B914();
}

void sub_257E1AE9C()
{
  v1 = v0;
  v2 = sub_257ECCB70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v70 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  has_internal_ui = os_variant_has_internal_ui();
  v19 = &qword_281544000;
  if (has_internal_ui)
  {
    static MAGAutomationSupport.freezeFrameAutomationURL.getter(v17);
    v20 = *(v3 + 48);
    v21 = v20(v17, 1, v2);
    v71 = v3;
    v22 = v21;
    sub_257BE4084(v17, &qword_27F8F5F30);
    v19 = &qword_281544000;
    v23 = v71;
    if (v22 != 1)
    {
      static MAGAutomationSupport.freezeFrameAutomationURL.getter(v15);
      if (v20(v15, 1, v2) == 1)
      {
        sub_257BE4084(v15, &qword_27F8F5F30);
      }

      else
      {
        (*(v23 + 32))(v5, v15, v2);
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (*(&v72 + 1))
        {
          sub_257D98414(v72, *(&v72 + 1), v73, *(&v73 + 1));
          (*(v71 + 8))(v5, v2);
        }

        else
        {
          v24 = v71;
          (*(v71 + 16))(v12, v5, v2);
          (*(v24 + 56))(v12, 0, 1, v2);
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257C1C614(v12, v9);
          sub_257ECC3F0();
          sub_257ECDD70();
          sub_257BE4084(v12, &qword_27F8F5F30);
          (*(v24 + 8))(v5, v2);
        }
      }

      v19 = &qword_281544000;
    }
  }

  if (v19[508] != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v72)
  {
    v25 = sub_257ED0640();

    if ((v25 & 1) == 0)
    {
      v26 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
      v27 = [objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController()) init];
      sub_257BDBD68(v26);
      goto LABEL_28;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v28 = *(&v72 + 1);
  if (!*(&v72 + 1))
  {
LABEL_21:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v38 = v72;
    if (v72)
    {
      v39 = sub_257D45484(v72);
      if (v39)
      {
        v40 = v39;
        v41 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
        v42 = [objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController()) init];
        sub_257BDC14C(v40, v41);

        v37 = v42;
        goto LABEL_27;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v43 = v72;
    if (!v72)
    {
      return;
    }

    v44 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
    v45 = objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController());
    v46 = v43;
    v47 = [v45 init];
    sub_257BDC14C(v43, v44);

    v37 = v47;
    goto LABEL_27;
  }

  v29 = v72;
  v30 = v73;
  if (!v72)
  {
    sub_257D98414(0, *(&v72 + 1), v73, *(&v73 + 1));
    goto LABEL_21;
  }

  v31 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v32 = v29;
  v33 = [v31 initWithCVPixelBuffer_];
  v34 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];

  v35 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionService];
  v36 = [objc_allocWithZone(type metadata accessor for FreezeFramePageFlippingController()) init];
  sub_257BDC378(v34, v35, 1);

  sub_257D98414(v29, v28, v30, *(&v30 + 1));
  v37 = v36;
LABEL_27:
  v27 = v37;
LABEL_28:
  v48 = v27;
  v49 = [v48 view];
  if (!v49)
  {
    __break(1u);
    goto LABEL_45;
  }

  v50 = v49;
  [v49 setAlpha_];

  [v1 addChildViewController_];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v52 = v51;
  v53 = [v48 view];
  if (!v53)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v54 = v53;
  [v52 addSubview_];

  [v48 didMoveToParentViewController_];
  v55 = [v48 view];
  if (!v55)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = v55;
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];

  v57 = [v48 view];
  if (!v57)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = [v1 view];
  if (!v58)
  {
LABEL_49:
    __break(1u);
    return;
  }

  v59 = v58;
  sub_257EB6FD8(v58, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v60 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController;
  v61 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController] = v48;
  v62 = v48;

  *&v62[OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_textOverlayDelegate + 8] = &off_286912068;
  swift_unknownObjectWeakAssign();

  v63 = *&v1[v60];
  if (v63)
  {
    *(v63 + OBJC_IVAR____TtC16MagnifierSupport33FreezeFramePageFlippingController_pageControlPositionDelegate + 8) = &off_286911FF0;
    swift_unknownObjectWeakAssign();
  }

  v64 = qword_281548348;
  v65 = OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension;
  if (*(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedWithShareActionFromExtension) == 1)
  {
    v66 = *&v1[v60];
    if (v66)
    {
      v67 = v66;
      v68 = sub_257DFF3FC();
      v69 = sub_257D84EE0();

      *(&v73 + 1) = type metadata accessor for CameraTrayUIButton();
      *&v72 = v69;
      sub_257BDF9F4(&v72);

      sub_257BE4084(&v72, &unk_27F8F62F0);
    }

    *(v64 + v65) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (*(&v72 + 1))
  {
    sub_257D98414(v72, *(&v72 + 1), v73, *(&v73 + 1));
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = 0u;
    v73 = 0u;
    sub_257ECC3F0();
    sub_257ECDD70();
  }
}

id sub_257E1B914()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController;
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
  if (v3)
  {
    v4 = v3;
    sub_257BDDC34(0);

    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_6;
    }

    result = [v5 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    [result removeFromSuperview];

    v8 = *(v1 + v2);
    if (v8)
    {
      [v8 removeFromParentViewController];
      v3 = *(v1 + v2);
    }

    else
    {
LABEL_6:
      v3 = 0;
    }
  }

  *(v1 + v2) = 0;

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E1BA40()
{
  v1 = sub_257ECF120();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v7 = sub_257ECFD30();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_257E2BD14;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_651;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_257E1BD34(uint64_t a1)
{
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = sub_257ECF4C0();
  v11 = sub_257ECF4C0();
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = sub_257ECF500();
  v15 = v14;

  v25[0] = v13;
  v25[1] = v15;
  sub_257BDAB08();
  v16 = sub_257ED0100();
  v18 = v17;

  v19 = sub_257DFF054();
  v20 = sub_257EB1B80();

  v21 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController);
  v22 = sub_257EB1BE0();

  sub_257DFD370(v16, v18, v20, v22);

  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  sub_257ECCCE0();
  sub_257C15EC0(v4, &v7[v5[5]]);
  v7[v5[6]] = 0;
  v7[v5[7]] = 0;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v23 = qword_281548348;
  sub_257ECC3F0();
  sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
  *&v7[v5[8]] = v23;
  sub_257CBBC80(v7);
  return sub_257C15F24(v7, type metadata accessor for MAGOutputEvent);
}

uint64_t sub_257E1C034(_BYTE *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECF120();
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_257ECF190();
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v12) = *a1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness] = a2;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast] = a3;
  v4[OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter] = v12;
  sub_257BD2C2C(0, &qword_281543F10);
  v14 = sub_257ECFD30();
  v15 = swift_allocObject();
  *(v15 + 16) = v4;
  v48 = sub_257E2BBB8;
  v49 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_257D231C0;
  v47 = &block_descriptor_552;
  v16 = _Block_copy(&aBlock);
  v17 = v4;

  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257E2C2E0(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v13, v10, v16);
  _Block_release(v16);

  (*(v39 + 8))(v10, v8);
  (*(v11 + 8))(v13, v38);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v18 = qword_281548348;
  swift_beginAccess();
  v19 = *(v18 + 128);
  v20 = *(v18 + 136);
  v21 = *(v18 + 144);
  aBlock = *(v18 + 120);
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v22 = qword_2815447E0;

  if (v22 != -1)
  {
    v23 = swift_once();
  }

  MEMORY[0x28223BE20](v23);
  *(&v38 - 2) = &aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v25 = v41;
  if (v41)
  {
    v26 = *&v40;
    v27 = swift_beginAccess();
    v28 = *(v18 + 96);
    v29 = *(v18 + 104);
    v40 = *(v18 + 88);
    v41 = v28;
    v42 = v29;
    MEMORY[0x28223BE20](v27);
    *(&v38 - 2) = &v40;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v30 = v43;
    if (*(v43 + 16))
    {
      v31 = sub_257C03F6C(v26, v25);
      v33 = v32;

      if (v33)
      {
        v34 = *(v30 + 56) + 296 * v31;
        v35 = *(v34 + 16);
        v36 = *(v34 + 24);
        v37 = *(v34 + 32);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECC3F0();
        sub_257ECDD60();

        if (v36 != v40 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECC3F0(), sub_257ECDD60(), , , , v35 != v40) || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , result = , v37 != LOBYTE(v40)))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v40) = 1;
          sub_257ECC3F0();
          return sub_257ECDD70();
        }

        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_257E1C6FC(uint64_t a1)
{
  v2 = sub_257D27C8C();
  v3 = sub_257DFF59C();
  v4 = [v3 layer];
  v5 = sub_257D18590(v2);

  sub_257EB7394(v5);

  v6 = sub_257ECF7F0();

  [v4 setFilters_];

  v7 = sub_257D27C8C();
  v8 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView);
  if (v8)
  {
    v9 = v7;
    v13 = v8;
    v10 = [v13 layer];
    v11 = sub_257D18590(v9);

    sub_257EB7394(v11);

    v12 = sub_257ECF7F0();

    [v10 setFilters_];
  }

  else
  {
  }
}

void sub_257E1C89C(double a1, double a2)
{
  v3 = v2;
  v6 = sub_257E00134();
  [v6 setCenter_];

  v7 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator;
  v8 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator);
  v9 = sub_257E7CFB8();
  v10 = [v9 isAnimating];

  v11 = *&v8[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle];
  v12 = v11;
  v13 = &selRef_stopAnimating;
  if (!v10)
  {
    v13 = &selRef_startAnimating;
  }

  [v11 *v13];

  v14 = *(v3 + v7);
  sub_257E7D294();

  v15 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime;
  [*(v3 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime) invalidate];
  v16 = objc_opt_self();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[4] = sub_257E2BD04;
  v21[5] = v17;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 1107296256;
  v21[2] = sub_257E2D168;
  v21[3] = &block_descriptor_639;
  v18 = _Block_copy(v21);

  v19 = [v16 scheduledTimerWithTimeInterval:0 repeats:v18 block:1.0];
  _Block_release(v18);
  v20 = *(v3 + v15);
  *(v3 + v15) = v19;
}

void sub_257E1CA78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_257E00134();
    v3 = sub_257E7CFB8();
    v4 = [v3 isAnimating];

    v5 = *&v2[OBJC_IVAR____TtC16MagnifierSupport18FocusIndicatorView____lazy_storage___reticle];
    v6 = v5;
    v7 = &selRef_stopAnimating;
    if (!v4)
    {
      v7 = &selRef_startAnimating;
    }

    [v5 *v7];

    v8 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator];
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_257E2BD0C;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_645;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    [v9 animateWithDuration:v11 animations:0.2];
    _Block_release(v11);
  }
}

void sub_257E1CC7C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  v11 = [a1 view];
  v12 = sub_257DFF054();
  v13 = [v12 view];

  if (v11)
  {
    if (v13)
    {
      sub_257BD2C2C(0, &unk_281543E00);
      v14 = sub_257ECFF50();

      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_6;
    }

    v13 = v11;
LABEL_12:

    goto LABEL_13;
  }

  if (v13)
  {
    goto LABEL_12;
  }

LABEL_6:
  v15 = [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController] view];
  if (!v15)
  {
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 alpha];
  v18 = v17;

  if (v18 != 0.0)
  {
    [a1 setState_];

    [a1 reset];
    return;
  }

LABEL_13:
  v19 = [a1 state];
  if ((v19 - 3) < 2)
  {
    v25 = &v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
    *v25 = 0;
    v25[8] = 1;
    return;
  }

  if (v19 != 2)
  {
    if (v19 != 1)
    {
      return;
    }

    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 == 1)
    {
      v20 = [v2 view];
      [a1 velocityInView_];
      x = v21;
      y = v23;

      goto LABEL_44;
    }

    v31 = sub_257DFF59C();
    [a1 velocityInView_];
    v33 = v32;
    v35 = v34;

    v36 = [objc_opt_self() currentDevice];
    v37 = [v36 orientation];

    if (v37 == 2)
    {
      v38 = 3.14159265;
    }

    else if (v37 == 4)
    {
      v38 = -1.57079633;
    }

    else
    {
      if (v37 != 3)
      {
        v51 = xmmword_257EEAFE0;
        v50 = xmmword_257EEAFF0;
        v52 = 0uLL;
        goto LABEL_43;
      }

      v38 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v74, v38);
    v50 = *&v74.a;
    v51 = *&v74.c;
    v52 = *&v74.tx;
LABEL_43:
    *&v74.a = v50;
    *&v74.c = v51;
    *&v74.tx = v52;
    CGAffineTransformInvert(&v73, &v74);
    v74 = v73;
    v76.x = v33;
    v76.y = v35;
    v53 = CGPointApplyAffineTransform(v76, &v74);
    x = v53.x;
    y = v53.y;
LABEL_44:
    if (fabs(x) < fabs(y))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      a = v74.a;
      if (*&v74.a)
      {
        [*&v74.a videoZoomFactor];
        v55 = &v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
        *v55 = v56;
        v55[8] = 0;
        [*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator] prepare];

        v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic] = 1;
      }

      else
      {
        sub_257ECD430();
        v57 = sub_257ECDA20();
        v58 = sub_257ECFBD0();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_257BAC000, v57, v58, "No capture device", v59, 2u);
          MEMORY[0x259C74820](v59, -1, -1);
        }

        (*(v5 + 8))(v10, v4);
      }
    }

    return;
  }

  if (v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor + 8])
  {
    return;
  }

  v26 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v27 = v74.a;
  if (*&v74.a)
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D88 == 1)
    {
      v28 = [v2 view];
      [a1 translationInView_];
      v30 = v29;

LABEL_55:
      v63 = [objc_opt_self() mainScreen];
      [v63 _referenceBounds];
      v65 = v64;

      LOBYTE(v74.a) = 0;
      v66 = v30 / v65;
      sub_257D15BB4();
      v68 = v67;
      v69 = [*&v27 activeFormat];
      [v69 videoMaxZoomFactor];
      v71 = v70;

      if (v71 < v68)
      {
        v68 = v71;
      }

      LOBYTE(v74.a) = 0;
      sub_257D15BB4();
      sub_257D334B0(0, v26 - v66 * (v68 - v72));
      sub_257E1E524(a1);

      return;
    }

    v42 = sub_257DFF59C();
    [a1 translationInView_];
    v44 = v43;
    v46 = v45;

    v47 = [objc_opt_self() currentDevice];
    v48 = [v47 orientation];

    if (v48 == 2)
    {
      v49 = 3.14159265;
    }

    else if (v48 == 4)
    {
      v49 = -1.57079633;
    }

    else
    {
      if (v48 != 3)
      {
        v61 = xmmword_257EEAFE0;
        v60 = xmmword_257EEAFF0;
        v62 = 0uLL;
        goto LABEL_54;
      }

      v49 = 1.57079633;
    }

    CGAffineTransformMakeRotation(&v74, v49);
    v60 = *&v74.a;
    v61 = *&v74.c;
    v62 = *&v74.tx;
LABEL_54:
    *&v74.a = v60;
    *&v74.c = v61;
    *&v74.tx = v62;
    CGAffineTransformInvert(&v73, &v74);
    v74 = v73;
    v77.x = v44;
    v77.y = v46;
    v30 = CGPointApplyAffineTransform(v77, &v74).y;
    goto LABEL_55;
  }

  sub_257ECD430();
  v39 = sub_257ECDA20();
  v40 = sub_257ECFBD0();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_257BAC000, v39, v40, "No capture device", v41, 2u);
    MEMORY[0x259C74820](v41, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

void sub_257E1D534(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v66 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v64 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - v11;
  v13 = [a1 view];
  if (v13)
  {
    v65 = v4;
    v14 = v13;
    v15 = sub_257DFF054();
    v16 = [v15 view];

    if (v16)
    {
      sub_257BD2C2C(0, &unk_281543E00);
      v17 = sub_257ECFF50();

      if (v17)
      {
        [v14 alpha];
        if (v18 > 0.0)
        {
          v19 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
          [a1 locationInView_];
          v21 = v20;
          v23 = v22;
          [*(*(*&v2[v19] + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) bounds];
          v68.x = v21;
          v68.y = v23;
          if (CGRectContainsPoint(v69, v68))
          {
            sub_257ECD350();
            v24 = sub_257ECDA20();
            v25 = sub_257ECFBD0();
            if (os_log_type_enabled(v24, v25))
            {
              v26 = swift_slowAlloc();
              *v26 = 0;
              _os_log_impl(&dword_257BAC000, v24, v25, "Ignoring tap on card because alpha > 0.", v26, 2u);
              MEMORY[0x259C74820](v26, -1, -1);
            }

            (*(v66 + 8))(v12, v65);
            [a1 setState_];
            [a1 reset];

            return;
          }
        }
      }
    }

    else
    {
    }

    v4 = v65;
  }

  v27 = sub_257DFF59C();
  [a1 locationInView_];
  v29 = v28;
  v31 = v30;

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v32 = v29;
  v33 = v31;
  if (byte_27F8F8D88 == 1)
  {
    v34 = [v2 view];
    [a1 locationInView_];
    v32 = v35;
    v33 = v36;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v67 == 1)
  {
    sub_257ECD350();
    v37 = sub_257ECDA20();
    v38 = sub_257ECFBD0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_257BAC000, v37, v38, "Tapped, Removing Focus Lock", v39, 2u);
      MEMORY[0x259C74820](v39, -1, -1);
    }

    (*(v66 + 8))(v10, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v40 = v67;
    if (v67)
    {
      sub_257D34520();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v67) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v67) = 0;
    sub_257ECC3F0();
    sub_257ECDD70();
  }

  else
  {
    sub_257E1C89C(v32, v33);
    v41 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView];
    v42 = [v41 layer];
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (v43)
    {
      v44 = v43;
      [v43 setAutomaticallyDimsOverCaptureRegion_];

      [v44 captureDevicePointOfInterestForPoint_];
      v46 = v45;
      v48 = v47;

      sub_257ECD350();
      v49 = sub_257ECDA20();
      v50 = sub_257ECFBD0();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v67 = v52;
        *v51 = 136315650;
        v53 = sub_257ECFEC0();
        v55 = v4;
        v56 = sub_257BF1FC8(v53, v54, &v67);

        *(v51 + 4) = v56;
        *(v51 + 12) = 2080;
        v57 = sub_257ECFEC0();
        v59 = sub_257BF1FC8(v57, v58, &v67);

        *(v51 + 14) = v59;
        *(v51 + 22) = 2080;
        v60 = sub_257ECFEC0();
        v62 = sub_257BF1FC8(v60, v61, &v67);

        *(v51 + 24) = v62;
        _os_log_impl(&dword_257BAC000, v49, v50, "Tapped: %s, layer point: %s, will foucs at captureDevicePoint: %s", v51, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x259C74820](v52, -1, -1);
        MEMORY[0x259C74820](v51, -1, -1);

        (*(v66 + 8))(v7, v55);
      }

      else
      {

        (*(v66 + 8))(v7, v4);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v63 = v67;
      if (v67)
      {
        sub_257D33EF0(v46, v48);
      }
    }

    else
    {

      sub_257ED0410();
      __break(1u);
    }
  }
}

void sub_257E1DE0C(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v29[-v9];
  if ([a1 state] != 1)
  {
    return;
  }

  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = sub_257DFF054();
    v14 = [v13 view];

    if (v14)
    {
      sub_257BD2C2C(0, &unk_281543E00);
      v15 = sub_257ECFF50();

      if (v15)
      {
        [v12 alpha];
        if (v16 > 0.0)
        {
          v17 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
          [a1 locationInView_];
          v19 = v18;
          v21 = v20;
          [*(*(*(v2 + v17) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card) bounds];
          v31.x = v19;
          v31.y = v21;
          if (CGRectContainsPoint(v32, v31))
          {
            sub_257ECD350();
            v22 = sub_257ECDA20();
            v23 = sub_257ECFBD0();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              *v24 = 0;
              _os_log_impl(&dword_257BAC000, v22, v23, "Ignoring tap on card because alpha > 0.", v24, 2u);
              MEMORY[0x259C74820](v24, -1, -1);
            }

            (*(v5 + 8))(v10, v4);
            [a1 setState_];
            [a1 reset];

            return;
          }
        }
      }
    }

    else
    {
    }
  }

  sub_257ECD350();
  v25 = sub_257ECDA20();
  v26 = sub_257ECFBD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_257BAC000, v25, v26, "Long Pressed, will lock focus", v27, 2u);
    MEMORY[0x259C74820](v27, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v28 = v30;
  if (v30)
  {
    sub_257D34228();
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v29[7] = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  v29[6] = 1;
  sub_257ECC3F0();
  sub_257ECDD70();
}

void sub_257E1E2F8(void *a1)
{
  v3 = [a1 state];
  if (v3 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v8)
    {
      v6 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor);
      [a1 scale];
      sub_257D334B0(0, v6 * v7);
      sub_257E1E524(a1);
    }
  }

  else if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v8)
    {
      [v8 videoZoomFactor];
      v5 = v4;

      *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor) = v5;
    }

    else
    {
      [a1 setState_];
      [a1 reset];
    }

    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator) prepare];
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) = 1;
  }
}

void sub_257E1E524(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!v39)
  {
    return;
  }

  [v39 videoZoomFactor];
  v5 = v4;
  if (v4 == *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor) && *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) != 1)
  {
    goto LABEL_28;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor) = v4;
  sub_257D15BB4();
  v7 = v6;
  sub_257D15BB4();
  v9 = v8;
  v10 = [v39 activeFormat];
  [v10 videoMaxZoomFactor];
  v12 = v11;

  if (v12 < v9)
  {
    v9 = v12;
  }

  if (v5 > v7 && v9 > v5)
  {
    [*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator) prepare];
LABEL_28:

    return;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture);
  if (!v14)
  {
    goto LABEL_14;
  }

  v15 = v13;
  sub_257BD2C2C(0, &unk_27F8FB2C0);
  v16 = a1;
  v17 = v14;
  v18 = sub_257ECFF50();

  if ((v18 & 1) == 0)
  {

LABEL_14:
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    if (!v29)
    {
      goto LABEL_28;
    }

    v30 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture);
    if (!v30)
    {
      goto LABEL_28;
    }

    v31 = v29;
    sub_257BD2C2C(0, &unk_27F8F9CB0);
    v32 = a1;
    v33 = v30;
    v34 = sub_257ECFF50();

    if ((v34 & 1) == 0 || (([v31 velocity], v5 > v7) || v35 >= 0.0) && ((objc_msgSend(v31, sel_velocity), v38 <= 0.0) || v9 > v5))
    {

      goto LABEL_28;
    }

    [v31 velocity];
    v37 = v36;

    v28 = fabs(v37) * 0.125;
    goto LABEL_20;
  }

  v19 = [v15 view];
  [v15 velocityInView_];
  v21 = v20;
  v23 = v22;

  v24 = sqrt(v21 * v21 + v23 * v23);
  v25 = [objc_opt_self() mainScreen];
  [v25 _referenceBounds];
  v27 = v26;

  v28 = v24 / v27;
LABEL_20:
  if (v28 > 1.0)
  {
    v28 = 1.0;
  }

  if (v28 <= 0.7)
  {
    v28 = 0.7;
  }

  [*(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator) impactOccurredWithIntensity_];

  *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) = 0;
}

void sub_257E1E8C0()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v6, v7, "didActivateCardVisibilityGesture", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = sub_257DFF054();
  v10 = [v9 view];
  if (v10)
  {
    v11 = v10;
    [v10 alpha];
    v13 = v12;

    v14 = sub_257E08680() & (v13 == 0.0);
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = v13 != 0.0;
    *(v16 + 25) = v14;
    aBlock[4] = sub_257E2BCF4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_617;
    v17 = _Block_copy(aBlock);
    v18 = v1;

    [v15 animateWithDuration:v17 animations:0 completion:0.2];
    _Block_release(v17);
  }

  else
  {
    __break(1u);
  }
}

id sub_257E1EB34(uint64_t a1, char a2, char a3)
{
  v6 = sub_257DFF054();
  result = [v6 view];
  if (result)
  {
    v8 = result;
    v9 = 1.0;
    if (a2)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }

    [result setAlpha_];

    v11 = [v6 view];
    if (v11)
    {
      type metadata accessor for MFPassthroughView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = (a2 & 1) == 0;
      }
    }

    v13 = *(*(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    sub_257DFD6C4();
    if ((a3 & 1) == 0)
    {
      v9 = 0.0;
    }

    [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
    result = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
    if (result)
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

uint64_t sub_257E1ECDC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_257ED0160();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_257BE4084(v9, &unk_27F8F62F0);
}

void sub_257E1ED68()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v6, v7, "didActivateCardHidingGesture", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  aBlock[4] = sub_257E2BCEC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_611;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v9 animateWithDuration:v11 animations:0 completion:0.2];
  _Block_release(v11);
}

void sub_257E1EF70(uint64_t a1)
{
  v2 = sub_257DFF054();
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAlpha_];

    v5 = [v2 view];
    if (v5)
    {
      type metadata accessor for MFPassthroughView();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        *(v6 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 0;
      }
    }

    v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController);
    if (v7)
    {
      v8 = v7;
      sub_257BDB830();
    }

    v9 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v9, 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_257E1F078(char a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD350();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_257BAC000, v8, v9, "didUpdateCardVisibilityLevel", v10, 2u);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_257E2BC74;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_587;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  [v11 animateWithDuration:v13 animations:0 completion:0.2];
  _Block_release(v13);
}

id sub_257E1F288(uint64_t a1, char a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_257DFF054();
  result = [v8 view];
  if (result)
  {
    v10 = result;
    [result setAlpha_];

    v11 = [v8 view];
    if (v11)
    {
      type metadata accessor for MFPassthroughView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        *(v12 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
      }
    }

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cardPosition;
    swift_beginAccess();
    v19 = a2;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v14 = sub_257ECF110();
    MEMORY[0x28223BE20](v14);
    *&v18[-16] = &v19;
    *&v18[-8] = v13;
    sub_257ECFD40();
    (*(v5 + 8))(v7, v4);
    swift_endAccess();
    v15 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController;
    v16 = *(*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
    sub_257E79340();

    v17 = *(*(*(a1 + v15) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_grabberView);
    sub_257C8105C();

    return sub_257DFD6C4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257E1F554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v31 - v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask;
  if (!*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask])
  {
    v6 = sub_257ECF930();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_257ECF900();
    v7 = v0;
    v8 = sub_257ECF8F0();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    *&v1[v5] = sub_257C3FBD4(0, 0, v4, &unk_257EEB6D8, v9);
  }

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  v11 = byte_27F8F8D89;
  v12 = objc_opt_self();
  if (v11 == 1)
  {
    v13 = v12;
    v14 = [v12 preferredFontForTextStyle_];
    v15 = [v14 fontDescriptor];
    v16 = [v15 fontDescriptorWithSymbolicTraits_];

    if (v16)
    {
      v17 = [v13 fontWithDescriptor:v16 size:0.0];

      v14 = v17;
    }
  }

  else
  {
    v14 = [v12 boldSystemFontOfSize_];
  }

  v18 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel] setTextAlignment_];
  [*&v1[v18] setFont_];
  v19 = *&v1[v18];
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 whiteColor];
  [v21 setTextColor_];

  [*&v1[v18] setAlpha_];
  v23 = [*&v1[v18] textContainer];
  [v23 setMaximumNumberOfLines_];

  [*&v1[v18] setAdjustsFontForContentSizeCategory_];
  v24 = [*&v1[v18] textContainer];
  [v24 setLineBreakMode_];

  v25 = *&v1[v18];
  v26 = sub_257ECF4C0();
  [v25 setText_];

  v27 = *&v1[v18];
  v28 = [v20 clearColor];
  [v27 setBackgroundColor_];

  [*&v1[v18] setEditable_];
  [*&v1[v18] setTranslatesAutoresizingMaskIntoConstraints_];
  v29 = *&v1[v18];
  v30 = sub_257ECF4C0();
  [v29 setAccessibilityIdentifier_];
}

uint64_t sub_257E1F998()
{
  v0[2] = sub_257ECF900();
  v0[3] = sub_257ECF8F0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_257CBFF28;

  return sub_257BD5F90();
}

id sub_257E1FA44()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);
    v4 = v1;
    [v4 addSubview_];
    [v4 bringSubviewToFront_];
    v5 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_257EDBE40;
    v7 = [*(v0 + v2) leadingAnchor];
    v8 = [v4 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

    *(v6 + 32) = v9;
    v10 = [*(v0 + v2) trailingAnchor];
    v11 = [v4 trailingAnchor];

    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
    *(v6 + 40) = v12;
    v13 = [*(v0 + v2) topAnchor];
    v14 = [v4 topAnchor];

    v15 = [v13 constraintEqualToAnchor:v14 constant:60.0];
    *(v6 + 48) = v15;
    v16 = [*(v0 + v2) heightAnchor];
    if (qword_27F8F45F0 != -1)
    {
      swift_once();
    }

    v17 = [v16 constraintLessThanOrEqualToConstant_];

    *(v6 + 56) = v17;
    sub_257BD2C2C(0, &qword_281543EF0);
    v18 = sub_257ECF7F0();

    [v5 activateConstraints_];
  }

  v19 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel);

  return [v19 setHidden_];
}

void sub_257E1FD28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - v2;
  v4 = sub_257E01668();
  [v4 removeFromSuperview];

  if ((_s16MagnifierSupport013MAGAutomationB0V17automationEnabledSbvgZ_0() & 1) != 0 || os_variant_has_internal_ui() && (static MAGAutomationSupport.freezeFrameAutomationURL.getter(v3), v28 = sub_257ECCB70(), v29 = (*(*(v28 - 8) + 48))(v3, 1, v28), sub_257BE4084(v3, &qword_27F8F5F30), v29 != 1))
  {
    v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView;
    [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView] setHidden_];
    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 addSubview_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257EDBE40;
      v9 = [*&v0[v5] topAnchor];
      v10 = [v0 view];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 safeAreaLayoutGuide];

        v13 = [v12 topAnchor];
        v14 = [v9 constraintEqualToAnchor:v13 constant:10.0];

        *(v8 + 32) = v14;
        v15 = [*&v0[v5] trailingAnchor];
        v16 = [v0 view];
        if (v16)
        {
          v17 = v16;
          v18 = objc_opt_self();
          v19 = [v17 trailingAnchor];

          v20 = [v15 constraintEqualToAnchor:v19 constant:-10.0];
          *(v8 + 40) = v20;
          v21 = [*&v0[v5] widthAnchor];
          v22 = [v21 constraintGreaterThanOrEqualToConstant_];

          *(v8 + 48) = v22;
          v23 = [*&v0[v5] heightAnchor];
          v24 = [v23 constraintEqualToConstant_];

          *(v8 + 56) = v24;
          sub_257BD2C2C(0, &qword_281543EF0);
          v25 = sub_257ECF7F0();

          [v18 activateConstraints_];

          v26 = [v0 view];
          if (v26)
          {
            v27 = v26;
            [v26 bringSubviewToFront_];

            return;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

void sub_257E2010C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView] setHidden_];
  v2 = [*&v0[v1] layer];
  [v2 setCornerRadius_];

  v3 = sub_257ECF030();
  v4 = *&v0[v1];
  if (v3)
  {
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 clearColor];
    [v6 setBackgroundColor_];

    [*&v0[v1] ax:1 setWantsGlassAppearance:?];
  }

  else
  {
    v8 = [*&v0[v1] layer];
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.95;
    }

    v10 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.15 alpha:v9];
    v11 = [v10 CGColor];

    [v8 setBackgroundColor_];
  }

  v12 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel;
  v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 whiteColor];
  [v15 setTextColor_];

  [*&v0[v12] setNumberOfLines_];
  v17 = *&v0[v12];
  v18 = objc_opt_self();
  v19 = *MEMORY[0x277D76918];
  v20 = v17;
  v21 = [v18 preferredFontForTextStyle_];
  [v20 setFont_];

  v22 = *&v0[v12];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = objc_opt_self();
  v25 = v22;
  v26 = [v24 bundleForClass_];
  v27 = sub_257ECF4C0();
  v28 = sub_257ECF4C0();
  v29 = [v26 localizedStringForKey:v27 value:0 table:v28];

  if (!v29)
  {
    sub_257ECF500();
    v29 = sub_257ECF4C0();
  }

  [v25 setAccessibilityValue_];

  [*&v0[v1] addSubview_];
  [*&v0[v12] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v0[v1] setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v0 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_18;
  }

  v31 = v30;
  [v30 addSubview_];

  v32 = [v0 view];
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v33 = v32;
  [v32 bringSubviewToFront_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_257EE8EA0;
  v35 = [*&v0[v12] leadingAnchor];
  v36 = [*&v0[v1] leadingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

  *(v34 + 32) = v37;
  v38 = [*&v0[v12] trailingAnchor];
  v39 = [*&v0[v1] trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-20.0];

  *(v34 + 40) = v40;
  v41 = [*&v0[v12] topAnchor];
  v42 = [*&v0[v1] topAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:20.0];

  *(v34 + 48) = v43;
  v44 = [*&v0[v12] bottomAnchor];
  v45 = [*&v0[v1] bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:-20.0];

  *(v34 + 56) = v46;
  v47 = [*&v0[v1] leadingAnchor];
  v48 = [v0 view];
  if (!v48)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v49 = v48;
  v50 = [v48 leadingAnchor];

  v51 = [v47 constraintEqualToAnchor:v50 constant:10.0];
  *(v34 + 64) = v51;
  v52 = [*&v0[v1] trailingAnchor];
  v53 = [v0 view];
  if (!v53)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v54 = v53;
  v55 = [v53 trailingAnchor];

  v56 = [v52 constraintEqualToAnchor:v55 constant:-10.0];
  *(v34 + 72) = v56;
  v57 = [*&v0[v1] topAnchor];
  v58 = [v0 view];
  if (!v58)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v59 = v58;
  v60 = objc_opt_self();
  v61 = [v59 topAnchor];

  v62 = [v57 constraintEqualToAnchor:v61 constant:60.0];
  *(v34 + 80) = v62;
  sub_257BD2C2C(0, &qword_281543EF0);
  v63 = sub_257ECF7F0();

  [v60 activateConstraints_];
}

void sub_257E208FC()
{

  v1 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedPhoto;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedImage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_257CC8CC0(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel));
  sub_257CC8CC0(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel));

  sub_257BE4084(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastSpeechDate, &qword_27F8F7838);
  v5 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_tooFastLastDate;
  v6 = sub_257ECCC80();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);

  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastImageDescriptionTextTime, v6);

  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastTextDetectionTextDisplayTime, v6);
  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastHandPoseTime, v6);

  v7(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionTimerStartTime, v6);

  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_stillImageStore);

  v8 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
}

id sub_257E21300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AppViewController()
{
  result = qword_281544838;
  if (!qword_281544838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E21D94()
{
  sub_257D7085C(319, &qword_2815440B8, &unk_27F8F9BA0);
  if (v0 <= 0x3F)
  {
    sub_257D7085C(319, &qword_281544098, &unk_27F8F9BB0);
    if (v1 <= 0x3F)
    {
      sub_257E221B0();
      if (v2 <= 0x3F)
      {
        sub_257ECCC80();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_257E221B0()
{
  if (!qword_281545C38)
  {
    sub_257ECCC80();
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_281545C38);
    }
  }
}

BOOL sub_257E22208(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture];
  if (!v2)
  {
    return 1;
  }

  v3 = v1;
  sub_257BD2C2C(0, &qword_27F8F9C98);
  v5 = a1;
  v6 = v2;
  v7 = sub_257ECFF50();

  if ((v7 & 1) == 0)
  {
    return 1;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = qword_27F8F4668;
  v11 = v5;
  if (v10 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v12 = [v3 view];
    [v9 velocityInView_];
    x = v13;
    y = v15;

    return fabs(x) < fabs(y);
  }

  v17 = sub_257DFF59C();
  [v9 velocityInView_];
  v19 = v18;
  v21 = v20;

  v22 = [objc_opt_self() currentDevice];
  v23 = [v22 orientation];

  if (v23 == 2)
  {
    v24 = 3.14159265;
  }

  else if (v23 == 4)
  {
    v24 = -1.57079633;
  }

  else
  {
    if (v23 != 3)
    {
      v26 = xmmword_257EEAFE0;
      v25 = xmmword_257EEAFF0;
      v27 = 0uLL;
      goto LABEL_16;
    }

    v24 = 1.57079633;
  }

  CGAffineTransformMakeRotation(&v31, v24);
  v25 = *&v31.a;
  v26 = *&v31.c;
  v27 = *&v31.tx;
LABEL_16:
  *&v31.a = v25;
  *&v31.c = v26;
  *&v31.tx = v27;
  CGAffineTransformInvert(&v30, &v31);
  v31 = v30;
  v32.x = v19;
  v32.y = v21;
  v28 = CGPointApplyAffineTransform(v32, &v31);
  x = v28.x;
  y = v28.y;

  return fabs(x) < fabs(y);
}

BOOL sub_257E224B8(void *a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture);
  result = 1;
  if (v3)
  {
    sub_257BD2C2C(0, &qword_27F8F9C98);
    v6 = a1;
    v7 = v3;
    v8 = sub_257ECFF50();

    if (v8)
    {
      v9 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture);
      if (v9)
      {
        v10 = a2;
        v11 = v9;
        v12 = sub_257ECFF50();

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void sub_257E225F4(void *a1)
{
  if ([a1 phase] == 1)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v1 = qword_281548348;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if ((v81 & 1) == 0)
    {
      v2 = v1 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__mode;
      swift_beginAccess();
      v3 = *(v2 + 8);
      v4 = *(v2 + 16);
      *&v81 = *v2;
      *(&v81 + 1) = v3;
      LOBYTE(v82) = v4;
      v5 = qword_2815447E0;

      if (v5 != -1)
      {
        v6 = swift_once();
      }

      MEMORY[0x28223BE20](v6);
      sub_257ECFD50();

      if (v85 && v85 != 1)
      {
      }

      else
      {
        v7 = sub_257ED0640();

        if ((v7 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECDD60();

          if (v81 == 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v81) = 0;
            sub_257ECC3F0();
            sub_257ECDD70();
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v9 = Strong;
              v10 = sub_257DFF3FC();

              v11 = *&v10[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
              v12 = v11;

              if (v11)
              {
                swift_beginAccess();
                v13 = swift_unknownObjectWeakLoadStrong();
                if (v13)
                {
                  v14 = v13;
                  v15 = sub_257DFF3FC();

                  v16 = sub_257D832B0();
                  [v16 addInteraction_];
                }
              }
            }

            swift_beginAccess();
            v17 = swift_unknownObjectWeakLoadStrong();
            if (v17)
            {
              v18 = v17;
              v19 = sub_257DFF3FC();

              v20 = sub_257D832B0();
              swift_beginAccess();
              v21 = swift_unknownObjectWeakLoadStrong();
              if (!v21)
              {
                goto LABEL_53;
              }

              v22 = v21;
              v23 = sub_257DFF3FC();

              swift_beginAccess();
              v24 = swift_unknownObjectWeakLoadStrong();
              if (v24)
              {
                v25 = v24;
                v26 = sub_257DFF3FC();

                v27 = sub_257D832B0();
              }

              else
              {
                v27 = 0;
              }

              v79 = sub_257D84490();

              if (v79)
              {
                sub_257BD2C2C(0, &qword_281543E70);
                v80 = sub_257ECF7F0();
              }

              else
              {
LABEL_53:
                v80 = 0;
              }

              [v20 setAccessibilityCustomActions_];
            }
          }

          else
          {
            swift_beginAccess();
            v28 = swift_unknownObjectWeakLoadStrong();
            if (v28)
            {
              v29 = v28;
              v81 = 0u;
              v82 = 0u;
              sub_257D465A4();

              sub_257BE4084(&v81, &unk_27F8F62F0);
            }

            swift_beginAccess();
            v30 = swift_unknownObjectWeakLoadStrong();
            if (v30)
            {
              v31 = v30;
              v32 = sub_257DFF3FC();

              v33 = sub_257D83270();
              v34 = [v33 contextMenuInteraction];

              [v34 dismissMenu];
            }

            swift_beginAccess();
            v35 = swift_unknownObjectWeakLoadStrong();
            if (v35)
            {
              v36 = v35;
              v37 = sub_257DFF3FC();

              v38 = sub_257D83290();
              v39 = [v38 contextMenuInteraction];

              [v39 dismissMenu];
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_257ECDD60();

            if (v81 && v81 == 1)
            {
            }

            else
            {
              v40 = sub_257ED0640();

              if ((v40 & 1) == 0)
              {
                swift_beginAccess();
                v41 = swift_unknownObjectWeakLoadStrong();
                if (v41)
                {
                  v42 = v41;
                  v43 = sub_257DFF3FC();

                  v44 = *&v43[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_snapshotButtonContextMenuInteraction];
                  v45 = v44;

                  if (v44)
                  {
                    swift_beginAccess();
                    v46 = swift_unknownObjectWeakLoadStrong();
                    if (v46)
                    {
                      v47 = v46;
                      v48 = sub_257DFF3FC();

                      v49 = sub_257D832B0();
                      [v49 removeInteraction_];
                    }

                    swift_beginAccess();
                    v50 = swift_unknownObjectWeakLoadStrong();
                    if (v50)
                    {
                      v51 = v50;
                      v52 = sub_257DFF3FC();

                      v53 = sub_257D832B0();
                      [v53 setAccessibilityCustomActions_];
                    }
                  }
                }
              }
            }

            swift_beginAccess();
            v54 = swift_unknownObjectWeakLoadStrong();
            if (v54)
            {
              v55 = v54;
              v56 = objc_opt_self();
              v57 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v83 = sub_257D9FEEC;
              v84 = v57;
              *&v81 = MEMORY[0x277D85DD0];
              *(&v81 + 1) = 1107296256;
              *&v82 = sub_257D231C0;
              *(&v82 + 1) = &block_descriptor_1058;
              v58 = _Block_copy(&v81);

              [v56 animateWithDuration:v58 animations:0 completion:0.25];
              _Block_release(v58);
            }

            swift_beginAccess();
            v59 = swift_unknownObjectWeakLoadStrong();
            if (v59)
            {
              v60 = v59;
              v61 = sub_257DFF3FC();

              v62 = *&v61[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];
              [v62 removeFromSuperview];
            }

            swift_beginAccess();
            v63 = swift_unknownObjectWeakLoadStrong();
            if (v63)
            {
              v64 = v63;
              v65 = sub_257DFF3FC();

              v66 = *&v65[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];
              [v66 setHidden_];
            }

            swift_beginAccess();
            v67 = swift_unknownObjectWeakLoadStrong();
            if (v67)
            {
              v68 = v67;
              v69 = sub_257DFF3FC();

              v70 = *&v69[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryView];
              [v70 resignFirstResponder];
            }

            swift_beginAccess();
            v71 = swift_unknownObjectWeakLoadStrong();
            if (v71)
            {
              v72 = v71;
              v73 = sub_257DFF3FC();

              v74 = *&v73[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton];
              [v74 removeFromSuperview];
            }

            swift_beginAccess();
            v75 = swift_unknownObjectWeakLoadStrong();
            if (v75)
            {
              v76 = v75;
              v77 = sub_257DFF3FC();

              v78 = *&v77[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController_promptEntryBackButton];
              [v78 setHidden_];
            }
          }
        }
      }
    }
  }
}

void sub_257E23034()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_257DFF054();
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      [v3 setAlpha_];

      v5 = [v2 view];
      if (v5)
      {
        type metadata accessor for MFPassthroughView();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          *(v6 + OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled) = 1;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_257E23118(void *a1)
{
  v2 = v1;
  v75 = *MEMORY[0x277D85DE8];
  v4 = sub_257ECDA30();
  v67 = *(v4 - 8);
  v68 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v62 - v9;
  MEMORY[0x28223BE20](v8);
  v66 = v62 - v11;
  v12 = sub_257ECF120();
  v69 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (AXDeviceSupportsBackTap())
  {
    v15 = [objc_opt_self() defaultCenter];

    v16 = sub_257ECF4C0();

    [v15 postNotificationName:v16 object:0];

    v17 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor];
    if (v17)
    {
      v18 = v17;
      v19 = sub_257ECF4C0();
      [v18 endHandlingHIDEventsForReason_];
    }
  }

  v20 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
  v21 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  if (*(v20 + v21))
  {
    v65 = 1;
  }

  else
  {
    v65 = [*(*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  }

  if ([*(*&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService] + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isInterrupted])
  {
    v22 = 1;
  }

  else if (*(v20 + v21))
  {
    v22 = *(v20 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted);
  }

  else
  {
    v22 = 0;
  }

  v23 = [a1 userInfo];
  if (!v23)
  {
    goto LABEL_29;
  }

  v64 = v22;
  v24 = v23;
  v25 = sub_257ECF3D0();

  v70 = sub_257ECF500();
  v71 = v26;
  sub_257ED0280();
  if (!*(v25 + 16) || (v27 = sub_257C03F28(v72), (v28 & 1) == 0))
  {

    sub_257C09D10(v72);
LABEL_29:
    v73 = 0u;
    v74 = 0u;
    goto LABEL_30;
  }

  sub_257BE41F4(*(v25 + 56) + 32 * v27, &v73);
  sub_257C09D10(v72);

  if (!*(&v74 + 1))
  {
LABEL_30:
    sub_257BE4084(&v73, &unk_27F8F62F0);
    goto LABEL_31;
  }

  if (swift_dynamicCast())
  {
    v29 = LODWORD(v72[0]);
    swift_beginAccess();
    sub_257C4D488(&v73, v29);
    swift_endAccess();
    if ((v29 - 1) >= 3)
    {
      if (v29 == 11)
      {
        sub_257ECD460();
        v56 = sub_257ECDA20();
        v57 = sub_257ECFBD0();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 67109376;
          *(v58 + 4) = v65;
          *(v58 + 8) = 1024;
          *(v58 + 10) = v64;
          _os_log_impl(&dword_257BAC000, v56, v57, "[reason: suspension] session running: %{BOOL}d, inter: %{BOOL}d", v58, 0xEu);
          MEMORY[0x259C74820](v58, -1, -1);
        }

        (*(v67 + 8))(v10, v68);
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v72[0] = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        swift_getKeyPath();
        swift_getKeyPath();
        v72[0] = 0;
        sub_257ECC3F0();
        sub_257ECDD70();
        if (*(v20 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
        {
          sub_257CC00C4();
          sub_257CC1318();
        }

        sub_257E10E20();
      }

      else
      {
        sub_257ECD460();
        v59 = sub_257ECDA20();
        v60 = sub_257ECFBD0();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 67109632;
          *(v61 + 4) = v29;
          *(v61 + 8) = 1024;
          *(v61 + 10) = v65;
          *(v61 + 14) = 1024;
          *(v61 + 16) = v64;
          _os_log_impl(&dword_257BAC000, v59, v60, "[reason: other (%d)] session running: %{BOOL}d, inter: %{BOOL}d", v61, 0x14u);
          MEMORY[0x259C74820](v61, -1, -1);
        }

        (*(v67 + 8))(v7, v68);
      }
    }

    else
    {
      sub_257E10374(0, 0, 0);
      if (*(v20 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
      {
        sub_257CC00C4();
        sub_257DFE168();
        sub_257CC1318();
        [*(v20 + v21) pause];
      }

      v30 = sub_257DFF59C();
      v31 = [v30 layer];
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (!v32)
      {

        sub_257ED0410();
        __break(1u);
        return;
      }

      v33 = v32;
      [v32 setAutomaticallyDimsOverCaptureRegion_];

      v34 = [v33 connection];
      [v34 setEnabled_];

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      v35 = qword_281548348;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v36 = v72[0];
      swift_beginAccess();
      LOBYTE(v73) = v36;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v37 = sub_257ECF110();
      MEMORY[0x28223BE20](v37);
      sub_257ECFD40();
      v63 = *(v69 + 8);
      v69 += 8;
      v63(v14, v12);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      v38 = v72[0];
      swift_beginAccess();
      LOBYTE(v73) = v38;
      v39 = sub_257ECF110();
      MEMORY[0x28223BE20](v39);
      sub_257ECFD40();
      v40 = v35;
      v41 = v63;
      v63(v14, v12);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v62[1] = v40;
      sub_257ECDD60();

      v42 = v72[0];
      swift_beginAccess();
      LOBYTE(v73) = v42;
      v43 = sub_257ECF110();
      MEMORY[0x28223BE20](v43);
      sub_257ECFD40();
      v41(v14, v12);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      LOBYTE(v40) = v72[0];
      swift_beginAccess();
      LOBYTE(v73) = v40;
      v44 = sub_257ECF110();
      MEMORY[0x28223BE20](v44);
      sub_257ECFD40();
      v41(v14, v12);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      LOBYTE(v40) = v72[0];
      swift_beginAccess();
      LOBYTE(v73) = v40;
      v45 = sub_257ECF110();
      MEMORY[0x28223BE20](v45);
      sub_257ECFD40();
      v63(v14, v12);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      LOBYTE(v40) = v72[0];
      swift_beginAccess();
      LOBYTE(v73) = v40;
      v46 = sub_257ECF110();
      MEMORY[0x28223BE20](v46);
      sub_257ECFD40();
      v63(v14, v12);
      swift_endAccess();
      v47 = v66;
      sub_257ECD460();
      v48 = sub_257ECDA20();
      v49 = sub_257ECFBD0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 67109376;
        *(v50 + 4) = v65;
        *(v50 + 8) = 1024;
        *(v50 + 10) = v64;
        _os_log_impl(&dword_257BAC000, v48, v49, "[reason: switcher/CC/NC] session running: %{BOOL}d, inter: %{BOOL}d", v50, 0xEu);
        MEMORY[0x259C74820](v50, -1, -1);
      }

      (*(v67 + 8))(v47, v68);
    }
  }

LABEL_31:
  v51 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v51)
  {
    v52 = v51;
    v72[0] = 0;
    if ([v51 lockForConfiguration_])
    {
      v53 = v72[0];
      if ([v52 torchMode] == 1)
      {
        [v2 toggleAVTorchForApplicationDeactivation_];
      }
    }

    else
    {
      v54 = v72[0];
      v55 = sub_257ECC9F0();

      swift_willThrow();
    }
  }
}

void sub_257E24164(void *a1)
{
  v3 = sub_257ECCB70();
  v112 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v99 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v111 = &v98 - v6;
  v110 = sub_257ECCDC0();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_257ECCDD0();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7838);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v98 - v10;
  v109 = sub_257ECCC80();
  v101 = *(v109 - 8);
  v12 = MEMORY[0x28223BE20](v109);
  v100 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v98 - v14;
  v15 = sub_257ECDA30();
  v114 = *(v15 - 8);
  v115 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v98 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v98 - v22;
  v24 = v1;
  v25 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService);
  v26 = OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession;
  v27 = [*(v25 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_captureSession) isRunning];
  v113 = v3;
  v107 = v11;
  if (v27)
  {
    goto LABEL_2;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v118[0] == 1)
  {
    v29 = *(v24 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
    v30 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    if (!*(v29 + v30))
    {
LABEL_2:
      v28 = 1;
      goto LABEL_9;
    }

    v28 = *(v29 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted) ^ 1;
  }

  else
  {
    v28 = 0;
  }

LABEL_9:
  if ([*(v25 + v26) isInterrupted])
  {
    v31 = 1;
  }

  else
  {
    v32 = *(v24 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
    v33 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
    swift_beginAccess();
    if (*(v32 + v33))
    {
      v31 = *(v32 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionIsInterrupted);
    }

    else
    {
      v31 = 0;
    }
  }

  byte_27F912FE8 = 0;
  v34 = [a1 userInfo];
  if (!v34)
  {
    goto LABEL_36;
  }

  v35 = v34;
  v98 = v25;
  v36 = sub_257ECF3D0();

  v116 = sub_257ECF500();
  v117 = v37;
  sub_257ED0280();
  if (!*(v36 + 16) || (v38 = sub_257C03F28(v118), (v39 & 1) == 0))
  {

    sub_257C09D10(v118);
LABEL_36:
    v119 = 0u;
    v120 = 0u;
    goto LABEL_37;
  }

  sub_257BE41F4(*(v36 + 56) + 32 * v38, &v119);
  sub_257C09D10(v118);

  if (!*(&v120 + 1))
  {
LABEL_37:
    sub_257BE4084(&v119, &unk_27F8F62F0);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v40 = *v118;
  v41 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_deactivationReasons;
  swift_beginAccess();
  sub_257D6E2DC(v40);
  swift_endAccess();
  if (v40 - 1 >= 3)
  {
    if (v40 == 11)
    {
      sub_257ECD460();
      v60 = sub_257ECDA20();
      v61 = sub_257ECFBD0();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 67109376;
        *(v62 + 4) = v28 & 1;
        *(v62 + 8) = 1024;
        *(v62 + 10) = v31;
        _os_log_impl(&dword_257BAC000, v60, v61, "[reason: susp] session running: %{BOOL}d, inter: %{BOOL}d", v62, 0xEu);
        MEMORY[0x259C74820](v62, -1, -1);
      }

      (*(v114 + 8))(v21, v115);
      v63 = v24;
      v64 = sub_257DFF59C();
      v48 = [v64 layer];
      objc_opt_self();
      v65 = swift_dynamicCastObjCClass();
      if (!v65)
      {
        goto LABEL_70;
      }

      v66 = v65;
      [v65 setAutomaticallyDimsOverCaptureRegion_];

      v67 = [v66 connection];
      if (v67)
      {
        [v67 setEnabled_];
      }

      sub_257E10748(1, 0, 0, 0.0);
      if (AXDeviceSupportsBackTap())
      {
        v68 = [objc_opt_self() defaultCenter];

        v69 = sub_257ECF4C0();

        [v68 postNotificationName:v69 object:0];

        sub_257D231EC();
      }

      v115 = v63;
      v70 = v102;
      sub_257ECCDB0();
      v71 = v108;
      v72 = v105;
      v73 = v110;
      (*(v108 + 104))(v105, *MEMORY[0x277CC99A0], v110);
      v74 = v100;
      sub_257ECCC70();
      v75 = v107;
      sub_257ECCDA0();
      v76 = v101;
      v77 = v74;
      v78 = v109;
      v114 = *(v101 + 8);
      (v114)(v77, v109);
      (*(v71 + 8))(v72, v73);
      (*(v104 + 8))(v70, v106);
      v79 = *(v76 + 48);
      if (v79(v75, 1, v78) == 1)
      {
        v80 = v103;
        sub_257ECCC70();
        v81 = v79(v75, 1, v78);
        v82 = v113;
        if (v81 != 1)
        {
          sub_257BE4084(v75, &qword_27F8F7838);
        }
      }

      else
      {
        v80 = v103;
        (*(v76 + 32))(v103, v75, v78);
        v82 = v113;
      }

      sub_257C77984();
      (v114)(v80, v78);
      v86 = v111;
      if (qword_27F8F46D8 != -1)
      {
        swift_once();
      }

      v87 = sub_257C73204()[2];

      v88 = sub_257C73204();
      v89 = v88[2];
      v90 = v115;
      v91 = v112;
      if (v89)
      {
        v92 = v99;
        (*(v112 + 16))(v99, v88 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * (v89 - 1), v82);

        (*(v91 + 32))(v86, v92, v82);
        if (qword_27F8F46E0 != -1)
        {
          swift_once();
        }

        v93 = sub_257C76CCC(v86);
        if (v93)
        {

          sub_257E25150(v87);
        }

        (*(v91 + 8))(v86, v82);
      }

      else
      {
      }

      v94 = sub_257DFF3FC();
      v95 = &v94[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
      *v95 = v87;
      v95[8] = 0;

      v96 = *(v90 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray);
      if (v96)
      {
        v97 = v96;
        sub_257EB7990();
      }

      if ((v28 & 1) == 0)
      {
        goto LABEL_69;
      }

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (v118[0] == 1)
      {
LABEL_69:
        sub_257DB16AC();
      }
    }

    else
    {
      sub_257ECD460();
      v83 = sub_257ECDA20();
      v84 = sub_257ECFBD0();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 67109632;
        *(v85 + 4) = v40;
        *(v85 + 8) = 1024;
        *(v85 + 10) = v28 & 1;
        *(v85 + 14) = 1024;
        *(v85 + 16) = v31;
        _os_log_impl(&dword_257BAC000, v83, v84, "[reason: other (%d)] session running: %{BOOL}d, inter: %{BOOL}d", v85, 0x14u);
        MEMORY[0x259C74820](v85, -1, -1);
      }

      (*(v114 + 8))(v18, v115);
    }
  }

  else
  {
    v42 = *(v24 + v41);

    v43 = *(sub_257E29300(&unk_286906188, v42) + 16);

    sub_257ECD460();
    v44 = sub_257ECDA20();
    v45 = sub_257ECFBD0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67109632;
      *(v46 + 4) = v28 & 1;
      *(v46 + 8) = 1024;
      *(v46 + 10) = v31;
      *(v46 + 14) = 1024;
      *(v46 + 16) = v43 == 0;
      _os_log_impl(&dword_257BAC000, v44, v45, "[reason: switcher/CC/NC] session running: %{BOOL}d, inter: %{BOOL}d, out of switcher+CC+NC: %{BOOL}d", v46, 0x14u);
      MEMORY[0x259C74820](v46, -1, -1);
    }

    (*(v114 + 8))(v23, v115);
    if (!v43)
    {
      v47 = sub_257DFF59C();
      v48 = [v47 layer];
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (v49)
      {
        v50 = v49;
        [v49 setAutomaticallyDimsOverCaptureRegion_];

        v51 = [v50 connection];
        if (v51)
        {
          [v51 setEnabled_];
        }

        v52 = *(v24 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
        if (*(v52 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
        {
          v53 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
          swift_beginAccess();
          v54 = *(v52 + v53);
          if (v54)
          {
            v55 = v54;
            v56 = [v55 configuration];
            if (v56)
            {
              v57 = v56;
              [v55 runWithConfiguration:v56 options:1];

              v55 = v57;
            }
          }
        }

        if ((v31 & 1) == 0)
        {
          sub_257E10748(1, 0, 0, 0.0);
        }

        if (AXDeviceSupportsBackTap())
        {
          v58 = [objc_opt_self() defaultCenter];

          v59 = sub_257ECF4C0();

          [v58 postNotificationName:v59 object:0];

          sub_257D231EC();
        }

        return;
      }

LABEL_70:

      sub_257ED0410();
      __break(1u);
    }
  }
}

void sub_257E25150(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_257ECCB70();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  v11 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton);
  if (sub_257E08680())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  [v11 setAlpha_];

  v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
  if (v13)
  {
    v14 = v13;
    if (sub_257E08680())
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    [v14 setAlpha_];
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_257BE4084(v5, &qword_27F8F5F30);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    if (qword_27F8F46E0 != -1)
    {
      swift_once();
    }

    v16 = sub_257C76CCC(v9);
    if (v16)
    {
      v17 = v16;
      v18 = *(v1 + v10);
      sub_257E572C8(v17, a1);

      (*(v7 + 8))(v9, v6);
      return;
    }

    (*(v7 + 8))(v9, v6);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v19 = v24;
  if (v24)
  {
    v20 = sub_257D45484(v24);
    if (v20)
    {
      v21 = v20;
      v22 = *(v1 + v10);
      sub_257E572C8(v21, a1);
    }

    else
    {
    }
  }
}

uint64_t sub_257E2554C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7A48);
  v48 = *(v3 - 8);
  v49 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v46 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v44 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F84F0);
  v42 = *(v6 - 8);
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  v41 = &v34 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EC0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v34 - v8;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9330);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9ED0);
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  if (MEMORY[0x277D84F90] >> 62 && sub_257ED0210())
  {
    v19 = sub_257BF2CF8(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  v52 = v19;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v20 = qword_281548340;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v45 = v20;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  sub_257ECDE50();
  (*(v16 + 8))(v18, v15);
  sub_257ECDCB0();

  v50 = v1;
  if (a1)
  {
    swift_getKeyPath();
    sub_257ECCA50();

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_257BD2D4C(&unk_281543DB0, &unk_27F8F9EC0);
    v21 = v36;
    sub_257ECDDD0();

    (*(v34 + 8))(v9, v21);
    sub_257BD2D4C(&qword_281544390, &unk_27F8F9330);
    v22 = v37;
    v23 = sub_257ECDD90();
    (*(v35 + 8))(v11, v22);
    v51 = v23;
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9360);
    sub_257BD2D4C(&qword_2815441E8, &qword_27F8F9360);
    sub_257ECDDD0();

    sub_257BD2D4C(&qword_2815443B0, &unk_27F8F9ED0);
    v24 = v39;
    v25 = sub_257ECDD90();
    (*(v38 + 8))(v14, v24);
    v51 = v25;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257ECDE50();

    sub_257ECDCB0();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54F0);
  v26 = v41;
  sub_257ECDD30();
  swift_endAccess();
  v39 = MEMORY[0x277CBCEC8];
  sub_257BD2D4C(&unk_281544170, &qword_27F8F84F0);
  v27 = v43;
  sub_257ECDE50();
  (*(v42 + 8))(v26, v27);
  sub_257ECDCB0();

  v43 = xmmword_281548330;
  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  v28 = v44;
  sub_257ECDD30();
  swift_endAccess();

  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  v29 = v40;
  sub_257ECDE50();
  v30 = *(v46 + 8);
  v30(v28, v29);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECDE50();
  v30(v28, v29);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECDE50();
  v30(v28, v29);
  sub_257ECDCB0();

  swift_beginAccess();
  sub_257ECC3F0();
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECDE50();
  v30(v28, v29);
  sub_257ECDCB0();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9EA0);
  v31 = v47;
  sub_257ECDD30();
  swift_endAccess();
  sub_257BD2D4C(&unk_281544180, &qword_27F8F7A48);
  v32 = v49;
  sub_257ECDE50();
  (*(v48 + 8))(v31, v32);
  sub_257ECDCB0();

  *(v50 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlRestorationSubscriptions) = v52;
}

void sub_257E261BC(uint64_t *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_281544FE0 != -1)
    {
      v11 = Strong;
      swift_once();
      Strong = v11;
    }

    if ((*(xmmword_281548330 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment8LiveLens_isInCapture) & 1) == 0)
    {
      v8 = Strong;
      v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage;
      swift_beginAccess();
      v13 = v6;
      if (qword_2815447E0 != -1)
      {
        swift_once();
      }

      v10 = sub_257ECF110();
      MEMORY[0x28223BE20](v10);
      *(&v12 - 2) = &v13;
      *(&v12 - 1) = v9;
      sub_257ECFD40();
      (*(v3 + 8))(v5, v2);
      swift_endAccess();
      Strong = v8;
    }
  }
}

uint64_t sub_257E263F0(char *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v7 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
  swift_beginAccess();
  v11 = v6;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v8 = sub_257ECF110();
  MEMORY[0x28223BE20](v8);
  *&v10[-16] = &v11;
  *&v10[-8] = v7;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  return swift_endAccess();
}

uint64_t sub_257E265FC(uint64_t *a1, void *a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348 + *a2;
  swift_beginAccess();
  v13 = v8;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v10 = sub_257ECF110();
  MEMORY[0x28223BE20](v10);
  *&v12[-16] = &v13;
  *&v12[-8] = v9;
  sub_257ECFD40();
  (*(v5 + 8))(v7, v4);
  return swift_endAccess();
}

uint64_t sub_257E267EC(char *a1, void *a2)
{
  v4 = sub_257ECF120();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v9 = qword_281548348 + *a2;
  swift_beginAccess();
  v13 = v8;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v10 = sub_257ECF110();
  MEMORY[0x28223BE20](v10);
  *&v12[-16] = &v13;
  *&v12[-8] = v9;
  sub_257ECFD40();
  (*(v5 + 8))(v7, v4);
  return swift_endAccess();
}

void sub_257E269B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v21 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
      sub_257ECDD70();
      v2 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
      v3 = swift_allocObject();
      *(v3 + 16) = v1;
      v4 = v2;
      v5 = v1;
      sub_257DB0FF4(sub_257E2CE54, v3);
    }

    v6 = qword_281548348;
    swift_beginAccess();
    v7 = qword_2815447E0;

    if (v7 != -1)
    {
      v8 = swift_once();
    }

    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
    sub_257ECFD50();

    if (!v20)
    {
      goto LABEL_16;
    }

    v9 = swift_beginAccess();
    MEMORY[0x28223BE20](v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    if (*(v16 + 16))
    {
      v10 = sub_257C03F6C(v19, v20);
      v12 = v11;

      if (v12)
      {
        v13 = *(*(v16 + 56) + 296 * v10 + 53);

        v14 = (v6 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__cameraType);
        v15 = swift_beginAccess();
        v17 = *v14;
        MEMORY[0x28223BE20](v15);

        sub_257ECFD50();

        if (v13 != v18 || (swift_getKeyPath(), swift_getKeyPath(), sub_257ECDD60(), , , v13 != v17))
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_257ECC3F0();
          sub_257ECDD70();
        }

        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_16:
  }
}

uint64_t sub_257E26EA4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  a2;
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  return sub_257DB05D0(0, 0);
}

void sub_257E26F8C(double *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__zoomPercentage);
    swift_beginAccess();
    v20 = v6;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = sub_257ECF110();
    MEMORY[0x28223BE20](v10);
    *(&v19 - 2) = &v20;
    *(&v19 - 1) = v9;
    sub_257ECFD40();
    (*(v3 + 8))(v5, v2);
    v11 = swift_endAccess();
    v12 = v9[1];
    v13 = v9[2];
    v21 = *v9;
    v22 = v12;
    v23 = v13;
    MEMORY[0x28223BE20](v11);
    *(&v19 - 2) = &v21;
    sub_257ECC3F0();

    sub_257ECFD50();

    v14 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v14;
    sub_257ECDD70();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v16 = v21;
    if (v21 != 0.0)
    {
      v17 = v9[1];
      v18 = v9[2];
      v21 = *v9;
      v22 = v17;
      v23 = v18;
      MEMORY[0x28223BE20](v15);
      *(&v19 - 2) = &v21;

      sub_257ECFD50();

      sub_257D337D8(0, v20);
    }
  }
}

void sub_257E27340()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v8[4] = sub_257E2D054;
    v8[5] = v3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_257D231C0;
    v8[3] = &block_descriptor_1081;
    v5 = _Block_copy(v8);

    v6 = [v2 runningPropertyAnimatorWithDuration:0x20000 delay:v5 options:0 animations:0.4 completion:5.0];
    _Block_release(v5);
    v7 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator];
    *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator] = v6;
  }
}

void sub_257E274AC(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_257E001D8();

    [v4 setAlpha_];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = sub_257E002B8();

    if (v7)
    {
      [v7 setAlpha_];
    }
  }
}

uint64_t sub_257E27578(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 1;
  v12 = a5;
  sub_257ECC3F0();
  v13 = a4;
  v14 = sub_257ECF4C0();
  [v13 setText_];

  [v13 sizeToFit];
  [v13 setNeedsLayout];
  v15 = objc_opt_self();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = a5;
  v16[4] = a2;
  v16[5] = a3;
  v26 = sub_257BDAD2C;
  v27 = v16;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_257D231C0;
  v25 = &block_descriptor_458;
  v17 = _Block_copy(&v22);
  v18 = v13;
  v19 = v12;

  v26 = sub_257E28794;
  v27 = v11;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_257E106F4;
  v25 = &block_descriptor_461;
  v20 = _Block_copy(&v22);
  sub_257ECC3F0();

  _Block_release(v20);
  _Block_release(v17);
}

void sub_257E277F8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible] = 0;
    if (!a1)
    {
      v8 = Strong;
      v9 = objc_opt_self();
      v10 = swift_allocObject();
      *(v10 + 16) = a3;
      *(v10 + 24) = a4;
      aBlock[4] = sub_257E28C60;
      aBlock[5] = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_257D231C0;
      aBlock[3] = &block_descriptor_467;
      v11 = _Block_copy(aBlock);
      v12 = a4;
      v13 = a3;

      v14 = [v9 runningPropertyAnimatorWithDuration:0x20000 delay:v11 options:0 animations:0.2 completion:1.5];

      _Block_release(v11);
      Strong = v14;
    }
  }
}

void sub_257E2795C(void *a1, void *a2)
{
  [a1 setAlpha_];
  if (a2)
  {
    [a2 setAlpha_];
    v3 = sub_257ECF4C0();
    [a2 setText_];
  }
}

id sub_257E27A04(void *a1, void *a2)
{
  result = [a1 setAlpha_];
  if (a2)
  {

    return [a2 setAlpha_];
  }

  return result;
}

void sub_257E27A60()
{
  sub_257E0EF78(1);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v1 == 1)
  {
    sub_257D3AC80();
  }

  else
  {
    sub_257DB16AC();
  }

  v0 = sub_257DFF3FC();
  sub_257D839A4();

  sub_257E1FD28();
}

uint64_t sub_257E27B58()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v1 == 1)
  {
    return sub_257D3AA58();
  }

  else
  {
    return sub_257DB1748();
  }
}

BOOL sub_257E27C5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = qword_2815447E0;

    if (v1 != -1)
    {
      v2 = swift_once();
    }

    MEMORY[0x28223BE20](v2);
    sub_257ECFD50();

    sub_257E1F078(v4);
  }

  return Strong != 0;
}

BOOL sub_257E27DD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3[3] = type metadata accessor for AppViewController();
    v3[0] = Strong;
    v1 = Strong;
    sub_257E1ED68();

    sub_257BE4084(v3, &unk_27F8F62F0);
  }

  return Strong != 0;
}

BOOL sub_257E27E64(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_257E1F078(a3);
  }

  return Strong != 0;
}

uint64_t sub_257E27EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_257ECF900();
  v5[4] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_257E27F60, v7, v6);
}

void sub_257E27F60()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_257E28000;

    sub_257DE4958(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257E28000()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_257E2D194, v3, v2);
}

uint64_t sub_257E28120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
  v11 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (v12 && (v13 = [v12 currentFrame]) != 0 && (v14 = v13, v15 = objc_msgSend(v13, sel_capturedImage), v14, v15))
  {
    v16 = sub_257ECF930();
    v17 = 1;
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    sub_257ECF900();
    v18 = v9;
    v9 = v15;
    v19 = sub_257ECF8F0();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    v20[5] = v15;
    sub_257C3FBD4(0, 0, v7, a4, v20);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t sub_257E28310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_257ECF900();
  v5[4] = sub_257ECF8F0();
  v7 = sub_257ECF8B0();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_257E283A8, v7, v6);
}

void sub_257E283A8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 56) = v2;
    *v2 = v0;
    v2[1] = sub_257E28448;

    sub_257DE4958(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257E28448()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_257E28568, v3, v2);
}

uint64_t sub_257E28568()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_257E285C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_257C77614();
    v1 = sub_257DFF3FC();
    v2 = &v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
    *v2 = 0;
    v2[8] = 0;

    [*&Strong[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton] setAlpha_];
    v3 = *&Strong[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton];
    if (v3)
    {
      v4 = v3;
      [v4 setAlpha_];
    }
  }

  return Strong != 0;
}

unint64_t sub_257E28718()
{
  result = qword_27F8F9C80;
  if (!qword_27F8F9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F9C80);
  }

  return result;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257E287A0()
{
  v1 = sub_257DFF054();
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 alpha];
    v5 = v4;

    if (v5 != 0.0)
    {
      v6 = *(*(*(*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController) + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerView) + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_card);
      v7 = qword_281544FE0;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v9 = qword_2815447E0;

      if (v9 != -1)
      {
        v10 = swift_once();
      }

      MEMORY[0x28223BE20](v10);
      sub_257ECFD50();

      sub_257DD1E80(v11);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257E289E0(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_257ECC3F0();
  return sub_257ECDD70();
}

double sub_257E28A54@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_257E28AD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257E28BF0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_257ECDD70();
}

uint64_t (*sub_257E28C64(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_257E292A4(v5);
  v5[9] = sub_257E28E10(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_257E2D16C;
}

uint64_t (*sub_257E28D08(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_257E292CC(v5);
  v5[9] = sub_257E29100((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_257E28DAC;
}

void sub_257E28DB0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_257E28E10(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xC8uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 168) = a2;
  *(v8 + 176) = v3;
  v10 = *v3;
  v11 = sub_257C040A0(a2);
  *(v9 + 192) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_257C07FD4();
      v11 = v19;
      goto LABEL_11;
    }

    sub_257EC3228(v16, a3 & 1);
    v11 = sub_257C040A0(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 184) = v11;
  if (v17)
  {
    v21 = *(*v4 + 56) + 56 * v11;
    v22 = *v21;
    v23 = *(v21 + 16);
    v24 = *(v21 + 32);
    v25 = *(v21 + 40);
  }

  else
  {
    v24 = 0;
    v22 = 0uLL;
    v23 = 0uLL;
    v25 = 0uLL;
  }

  *(v9 + 112) = v22;
  *(v9 + 128) = v23;
  *(v9 + 144) = v24;
  *(v9 + 152) = v25;
  return sub_257E28F7C;
}

void sub_257E28F7C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v6 = *(*a1 + 136);
  v7 = *(*a1 + 144);
  v8 = *(*a1 + 152);
  v9 = *(*a1 + 160);
  v10 = *(*a1 + 192);
  if (a2)
  {
    if (v7)
    {
      v11 = *(v2 + 184);
      v12 = **(v2 + 176);
      if ((v10 & 1) == 0)
      {
        v13 = *(v2 + 168);
        *v2 = v3;
        *(v2 + 8) = v5;
        *(v2 + 16) = v4;
        *(v2 + 24) = v6;
        *(v2 + 32) = v7;
        *(v2 + 40) = v8;
        *(v2 + 48) = v9;
        v14 = v4;
        v15 = v2;
LABEL_11:
        v17 = v3;
        v18 = v5;
        v19 = v6;
        sub_257EC7EA4(v11, v13, v15, v12);
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v11 = *(v2 + 184);
    v12 = **(v2 + 176);
    if ((v10 & 1) == 0)
    {
      v13 = *(v2 + 168);
      *(v2 + 56) = v3;
      *(v2 + 64) = v5;
      *(v2 + 72) = v4;
      *(v2 + 80) = v6;
      *(v2 + 88) = v7;
      *(v2 + 96) = v8;
      *(v2 + 104) = v9;
      v14 = v4;
      v15 = v2 + 56;
      goto LABEL_11;
    }

LABEL_7:
    v16 = (v12[7] + 56 * v11);
    *v16 = v3;
    v16[1] = v5;
    v16[2] = v4;
    v16[3] = v6;
    v16[4] = v7;
    v16[5] = v8;
    v16[6] = v9;
    goto LABEL_13;
  }

  if ((*(*a1 + 192) & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(*a1 + 112);
  v18 = *(*a1 + 120);
  v14 = *(*a1 + 128);
  v19 = *(*a1 + 136);
  sub_257C06A58(*(v2 + 184), **(v2 + 176));
LABEL_12:
  v6 = v19;
  v4 = v14;
  v5 = v18;
  v3 = v17;
LABEL_13:
  v20 = *(v2 + 112);
  v21 = *(v2 + 120);
  v22 = *(v2 + 128);
  v23 = *(v2 + 136);
  v24 = *(v2 + 144);
  sub_257E2CE6C(v3, v5, v4, v6, v7);
  sub_257E2CEC8(v20, v21, v22, v23, v24);

  free(v2);
}

uint64_t (*sub_257E29100(uint64_t a1, uint64_t a2, char a3))(uint64_t a1)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_257C040E4(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_257C0956C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_257EC5DDC(v14, a3 & 1);
    v9 = sub_257C040E4(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 1;
  }

  *a1 = v19;
  return sub_257E2921C;
}

uint64_t sub_257E2921C(uint64_t a1)
{
  v1 = *a1;
  if (*a1 == 1)
  {
    if (*(a1 + 25))
    {
      sub_257C0761C(*(a1 + 16), **(a1 + 8));
    }
  }

  else
  {
    v2 = **(a1 + 8);
    if (*(a1 + 25))
    {
      *(v2[7] + 8 * *(a1 + 16)) = v1;
    }

    else
    {
      sub_257EC8154(*(a1 + 16), *(a1 + 24), v1, v2);
    }
  }

  sub_257E2C328(v1);

  return sub_257E2C338(v1);
}

uint64_t (*sub_257E292A4(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257E2D048;
}

uint64_t (*sub_257E292CC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257E292F4;
}

uint64_t sub_257E29300(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_257E294A0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_257E2BB84(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x259C74820](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_257E294A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v5 = 0;
  if (v4)
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = a3 + 32;
    v9 = *(a4 + 40);
    v10 = ~(-1 << *(a4 + 32));
    while (1)
    {
      v12 = *(v8 + 4 * v6);
      v13 = MEMORY[0x259C732B0](v9, v12, 4);
      v14 = v13 & v10;
      v15 = (v13 & v10) >> 6;
      v16 = 1 << (v13 & v10);
      if ((v16 & *(v7 + 8 * v15)) != 0)
      {
        while (*(*(a4 + 48) + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v10;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v7 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        v11 = a1[v15];
        a1[v15] = v11 | v16;
        if ((v11 & v16) == 0 && __OFADD__(v5++, 1))
        {
          break;
        }
      }

LABEL_4:
      if (++v6 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_12:
  sub_257ECC3F0();
  return sub_257CA6E44(a1, a2, v5, a4);
}

uint64_t sub_257E295D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257D136FC(*a1, a1[1], a1[2]);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

__CVBuffer *sub_257E2960C(opaqueCMSampleBuffer *a1)
{
  result = CMSampleBufferGetImageBuffer(a1);
  if (!result)
  {
    return result;
  }

  v2 = result;
  CVPixelBufferLockBaseAddress(result, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v2);
  Width = CVPixelBufferGetWidth(v2);
  Height = CVPixelBufferGetHeight(v2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v8 = __CGBitmapContextCreate_0(BaseAddress, Width, Height, BytesPerRow, DeviceRGB);
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  Image = CGBitmapContextCreateImage(v8);
  if (!Image)
  {

    return 0;
  }

  v11 = Image;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v11 scale:4 * (v13 == 4) orientation:1.0];
  CVPixelBufferUnlockBaseAddress(v2, 1uLL);

  return v12;
}

void sub_257E297BC()
{
  v1 = v0;
  v2 = sub_257ECDE70();
  v105 = *(v2 - 8);
  v106 = v2;
  MEMORY[0x28223BE20](v2);
  v107 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9D40);
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v92 = &v91 - v4;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE0);
  v97 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = &v91 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9EE8);
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v93 = &v91 - v6;
  v113 = sub_257ECFD20();
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v8);
  v111 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECF190();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F20);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v91 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9CA0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v91 - v19;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didSetupCardUI) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isControlContainerViewLoaded) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___controlContainer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___mainCardViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraTrayViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentLiveView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___cameraVideoPreviewView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensInterruptionBlurView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___doubleTapGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_deactivationReasons) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning) = 0;
  v21 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedPhoto;
  *&v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BA0);
  sub_257ECDD20();
  (*(v18 + 32))(v1 + v21, v20, v17);
  v22 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController__capturedImage;
  *&v116 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9BB0);
  sub_257ECDD20();
  (*(v14 + 32))(v1 + v22, v16, v13);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureAttemptDidSucceed) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_actionButtonInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_eventInteraction) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPanGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomPinchGesture) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousGestureZoomFactor) = 0xBFF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_didRestartZoomGestureAfterLastHaptic) = 0;
  v23 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_zoomGestureFeedbackGenerator;
  *(v1 + v23) = sub_257DFFEAC();
  v24 = v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_panStartZoomFactor;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pinchStartZoomFactor) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_setupResult) = 0;
  v104 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlsQueue;
  v114 = sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  *&v116 = MEMORY[0x277D84F90];
  v109 = sub_257E2C2E0(&qword_281543F30, MEMORY[0x277D85230]);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  v25 = sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  v110 = v8;
  sub_257ED0180();
  v26 = *MEMORY[0x277D85260];
  v27 = v115 + 104;
  v28 = *(v115 + 104);
  v29 = v112;
  v30 = v113;
  v28(v112, v26, v113);
  *(v1 + v104) = sub_257ECFD80();
  v91 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_audioQueue;
  sub_257ECF150();
  *&v116 = MEMORY[0x277D84F90];
  v103 = v25;
  sub_257ED0180();
  v102 = v26;
  v115 = v27;
  v101 = v28;
  v28(v29, v26, v30);
  v104 = v12;
  *(v1 + v91) = sub_257ECFD80();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___focusIndicator) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusIndicatorFadeTime) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isInformationLabelVisible) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___coachingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeCoachingLabel) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___detectionInformationLabel) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___landscapeDetectionInformationLabel) = 1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kDetectionInformationLabelPadding) = 0x4034000000000000;
  v31 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncement);
  *v31 = 0;
  v31[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingHideAnimator) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sceneEventAnimator) = 0;
  v32 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameModeDescriptionPublisher;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F7A60);
  v33 = v92;
  sub_257ECDD30();
  swift_endAccess();
  swift_getKeyPath();
  sub_257BD2D4C(&unk_281544160, &unk_27F8F9D40);
  v34 = v94;
  v35 = v98;
  sub_257ECDDC0();

  (*(v95 + 8))(v33, v35);
  sub_257BD2D4C(&qword_281544428, &qword_27F8F9EE0);
  v36 = v93;
  v37 = v100;
  sub_257ECDE10();
  (*(v97 + 8))(v34, v37);
  sub_257BD2D4C(&qword_281544360, &qword_27F8F9EE8);
  v38 = v99;
  v39 = sub_257ECDD90();
  (*(v96 + 8))(v36, v38);
  *(v1 + v32) = v39;
  v40 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activeControlDescriptionPublishers) = MEMORY[0x277D84F90];
  v41 = MEMORY[0x277D84FA0];
  v42 = v40 >> 62;
  v43 = MEMORY[0x277D84FA0];
  if (v40 >> 62)
  {
    if (sub_257ED0210())
    {
      v43 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v43 = MEMORY[0x277D84FA0];
    }
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cancellables) = v43;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_informationSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_coachingSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_dRotationSubscription) = 0;
  v44 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptionProvider;
  type metadata accessor for ControlSubscriptionProvider();
  swift_allocObject();
  *(v1 + v44) = sub_257E3E3A4();
  v45 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptionProvider;
  swift_allocObject();
  *(v1 + v45) = sub_257E3E3A4();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlRestorationSubscriptions) = 0;
  v46 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_controlSubscriptions;
  *(v1 + v46) = sub_257E01274();
  v47 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_landscapeControlSubscriptions;
  *(v1 + v47) = sub_257E01274();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_liveLensDisplayAppearanceSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cameraTypeSubscription) = 0;
  if (v42)
  {
    if (sub_257ED0210())
    {
      v48 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }

    else
    {
      v48 = MEMORY[0x277D84FA0];
    }

    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions) = v48;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription) = 0;
    if (sub_257ED0210())
    {
      v41 = sub_257BF2CF8(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_focusLockSubscriptions) = v41;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_capturedPhotoSubscription) = 0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionSubscriptions) = v41;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_contentSizeCategorySubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleDetectionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_objectUnderstandingSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_imageCaptionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activityZoomPercentageSubscripton) = 0;
  v49 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_springBoardServer;
  *(v1 + v49) = [objc_allocWithZone(MEMORY[0x277CE7E40]) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakFeedbacksSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionFeedbacksSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_keyboardVQASubscription) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_microphoneToggleSubscription) = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = objc_opt_self();
  v52 = [v51 bundleForClass_];
  v53 = sub_257ECF4C0();
  v54 = sub_257ECF4C0();
  v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

  if (!v55)
  {
    sub_257ECF500();
    v55 = sub_257ECF4C0();
  }

  v56 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_activitiesNameController;
  type metadata accessor for ActivityNameOnBoardingController();
  v57 = [v51 bundleForClass_];
  v58 = sub_257ECF4C0();
  v59 = sub_257ECF4C0();
  v60 = [v57 localizedStringForKey:v58 value:0 table:v59];

  sub_257ECF500();
  v61 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v62 = sub_257ECF4C0();

  v63 = [v61 initWithTitle:v55 detailText:v62 icon:0];

  *(v1 + v56) = v63;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_commitActivityButton) = 0;
  v64 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentQuickActivityName);
  *v64 = 0;
  v64[1] = 0;
  v65 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_backTapEventProcessor;
  v66 = objc_allocWithZone(MEMORY[0x277CE7D68]);
  v67 = sub_257ECF4C0();
  v68 = [v66 initWithHIDTapIdentifier:v67 HIDEventTapPriority:100 systemEventTapIdentifier:0 systemEventTapPriority:0];

  *(v1 + v65) = v68;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v69 = MEMORY[0x277D84F90];
  if (byte_27F8F8D88 == 1)
  {
    v70 = [objc_opt_self() shared];
  }

  else
  {
    v70 = 0;
  }

  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_modelsManager) = v70;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arOverlayView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTipScene) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerTip) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_rotationRateManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_luminanceManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastARFrame) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useSpeechFeedback) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechMaxFrameCount) = 5;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_speechDepthArray) = v69;
  v71 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastSpeechDate;
  v72 = sub_257ECCC80();
  (*(*(v72 - 8) + 56))(v1 + v71, 1, 1, v72);
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooDarkToDetect) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wasTooFastToDetect) = 0;
  sub_257ECCC70();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useDoorSpeechFeedback) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEventsTask) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___anstPersonDetectionManager) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_personsLabelPool) = v69;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView) = 0;
  v73 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionLabel;
  type metadata accessor for DetectionLabel();
  *(v1 + v73) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView) = 0;
  v74 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_peopleSessionDispatchQueue;
  sub_257ECD2C0();
  *(v1 + v74) = sub_257ECD2B0();
  v75 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction);
  *v75 = 0;
  v75[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDetectionDoorBoxLayers) = v69;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorAttributesCache) = v69;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_doorDecorationsCache) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedObjectView) = 0;
  v76 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_engine;
  *(v1 + v76) = [objc_allocWithZone(MEMORY[0x277CE6AF8]) &off_279854B78];
  v77 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_languageTranslator;
  *(v1 + v77) = [objc_allocWithZone(MEMORY[0x277CE6AC8]) &off_279854B78];
  sub_257ECCC70();
  v78 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastImageDescriptionString);
  *v78 = 0;
  v78[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastDetectedTextCheckTime) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextDocument) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedDetectedTextGroups) = v69;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useTextDetectionSpeechFeedback) = 0;
  v79 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentTextAnnouncement);
  *v79 = 0;
  v79[1] = 0xE000000000000000;
  sub_257ECCC70();
  sub_257ECCC70();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_lastAnnouncementWasUpsideDownNotification) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_toggledDetectionModeFlashlightOff) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakToggledDetectionModeFlashlightOn) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textDetectionToggledDetectionModeFlashlightOn) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_usePointSpeakSpeechFeedback) = 0;
  v80 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_currentPointSpeakAnnouncement);
  *v80 = 0;
  v80[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_flashlightBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_globalTorchMode) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeTooDarkToDetect) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeFlashlightDispatchItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_textBoxLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_fingerDebugLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pointSpeakInstructionsAlertController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_handPoseModelNotAvailable) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_providedTextTooCloseFeedback) = 0;
  v81 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierLaunchedNotification);
  *v81 = 0xD00000000000002ALL;
  v81[1] = 0x8000000257F07DF0;
  v82 = (v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_kAXSMagnifierClosedNotification);
  *v82 = 0xD000000000000028;
  v82[1] = 0x8000000257F07E20;
  v83 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiMonitor;
  (*(v105 + 104))(v107, *MEMORY[0x277CD8CA8], v106);
  sub_257ECDEB0();
  swift_allocObject();
  *(v1 + v83) = sub_257ECDE90();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_wifiConnected) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_cachedReaderTextDocument) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeLoadingProgressViewController) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerModeViewController) = 0;
  v84 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_readerTextQueue;
  sub_257ECF170();
  *&v116 = v69;
  sub_257ED0180();
  v101(v112, v102, v113);
  *(v1 + v84) = sub_257ECFD80();
  v85 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDetectionModePerspectiveFramingLayer;
  v116 = xmmword_281548330;
  v117 = qword_281548340;
  v118 = qword_281548348;
  v119 = qword_281548350;
  v120 = qword_281548358;
  objc_allocWithZone(type metadata accessor for LiveCameraLayer());
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  sub_257ECC3F0();
  *(v1 + v85) = sub_257DBE70C(&v116);
  v86 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentModeOutlineLayer;
  *(v1 + v86) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v87 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_settingsButton;
  type metadata accessor for SettingsButton();
  *(v1 + v87) = [swift_getObjCClassFromMetadata() buttonWithType_];
  v88 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton;
  type metadata accessor for ImageWell();
  *(v1 + v88) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton) = 0;
  v89 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogView;
  *(v1 + v89) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v90 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentResponseLabel;
  *(v1 + v90) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_documentDialogWorkItem) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_sessionTimer) = 0;
  sub_257ECCC70();
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_passthroughView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___freezeFrameDebugView) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButtonConstraints) = v69;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameScrubberTray) = 0;
  sub_257ED0410();
  __break(1u);
}

void sub_257E2AE58()
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v1 = [v0 view];
    if (!v1)
    {
      goto LABEL_46;
    }

    v2 = v1;
    v3 = [v1 window];
    if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
    {
      v6 = [v5 interfaceOrientation];

      if (v6 == 2)
      {
        v7 = 3.14159265;
        goto LABEL_15;
      }

      if (v6 == 3)
      {
        v7 = -1.57079633;
        goto LABEL_15;
      }

      if (v6 == 4)
      {
        v7 = 1.57079633;
LABEL_15:
        CGAffineTransformMakeRotation(&v30, v7);
        v28 = *&v30.a;
        v29 = *&v30.c;
        v8 = *&v30.tx;
        goto LABEL_16;
      }
    }

    else
    {
    }

    v29 = xmmword_257EEAFE0;
    v28 = xmmword_257EEAFF0;
    v8 = 0uLL;
LABEL_16:
    v27 = v8;
    v9 = sub_257DFF59C();
    *&v30.a = v28;
    *&v30.c = v29;
    *&v30.tx = v27;
    [v9 setTransform_];
  }

  v10 = *&v0[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_captureService];
  v11 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraPhotoOutput);
  if (v11)
  {
    v12 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_cameraVideoDataOutput);
    if (v12)
    {
      v13 = qword_27F8F4670;
      v14 = v11;
      v15 = v12;
      if (v13 != -1)
      {
        swift_once();
      }

      if (byte_27F8F8D89 != 1)
      {
        goto LABEL_40;
      }

      v16 = *(v10 + OBJC_IVAR____TtC16MagnifierSupport17MAGCaptureService_videoDeviceRotationCoordinator);
      if (!v16)
      {
        v26 = v14;
        v14 = v15;
LABEL_41:

        return;
      }

      [v16 videoRotationAngleForHorizonLevelPreview];
      v18 = v17;
      v19 = [v14 connections];
      v20 = sub_257BD2C2C(0, &qword_281543ED8);
      v21 = sub_257ECF810();

      if (v21 >> 62)
      {
        if (sub_257ED0210())
        {
LABEL_25:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x259C72E20](0, v21);
          }

          else
          {
            if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_44;
            }

            v22 = *(v21 + 32);
          }

          v19 = v22;

          v23 = [v15 connections];
          v20 = sub_257ECF810();

          if (v20 >> 62)
          {
            if (sub_257ED0210())
            {
LABEL_30:
              if ((v20 & 0xC000000000000001) == 0)
              {
                if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v24 = *(v20 + 32);
LABEL_33:
                  v25 = v24;

                  [v19 setVideoRotationAngle_];
                  [v25 setVideoRotationAngle_];

LABEL_40:
                  v26 = v15;
                  goto LABEL_41;
                }

                __break(1u);
LABEL_46:
                __break(1u);
                return;
              }

LABEL_44:
              v24 = MEMORY[0x259C72E20](0, v20);
              goto LABEL_33;
            }
          }

          else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          goto LABEL_40;
        }
      }

      else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      goto LABEL_40;
    }
  }
}

id sub_257E2B234()
{
  sub_257C77614();
  v1 = sub_257DFF3FC();
  v2 = &v1[OBJC_IVAR____TtC16MagnifierSupport24CameraTrayViewController____lazy_storage___successfulMultiShotCaptureCount];
  *v2 = 0;
  v2[8] = 0;

  [*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pipWindowButton) setAlpha_];
  result = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_closeImageWellButton);
  if (result)
  {

    return [result setAlpha_];
  }

  return result;
}

void sub_257E2B2C0(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_freezeFrameViewController];
  if (a1)
  {
    if (v3)
    {
      v4 = v3;
      v5 = [v2 childViewControllers];
      sub_257BD2C2C(0, &unk_281543F40);
      v6 = sub_257ECF810();

      aBlock = v4;
      MEMORY[0x28223BE20](v7);
      p_aBlock = &aBlock;
      LOBYTE(v5) = sub_257DFC4AC(sub_257E2D178, v34, v6);

      if (v5)
      {
        v8 = [v4 view];
        if (!v8)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v9 = v8;
        [v8 alpha];
        v11 = v10;

        if (v11 == 1.0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    v26 = sub_257C73204()[2];

    if (!v26)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (aBlock)
      {
        v31 = sub_257ED0640();

        if ((v31 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
      }
    }

    sub_257E1AE9C();
    sub_257E1AAFC();
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    v40 = sub_257E2BFF4;
    v41 = v28;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_257D231C0;
    v39 = &block_descriptor_758;
    v29 = _Block_copy(&aBlock);
    v30 = v2;

    [v27 animateWithDuration:v29 animations:0 completion:0.2];
    _Block_release(v29);
LABEL_22:
    v32 = [v2 view];
    if (v32)
    {
      v33 = v32;
      [v32 bringSubviewToFront_];

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (!v3)
  {
    goto LABEL_22;
  }

  v12 = v3;
  v13 = [v2 childViewControllers];
  sub_257BD2C2C(0, &unk_281543F40);
  v14 = sub_257ECF810();

  aBlock = v12;
  MEMORY[0x28223BE20](v15);
  p_aBlock = &aBlock;
  LOBYTE(v13) = sub_257DFC4AC(sub_257E2BFB0, v34, v14);

  if ((v13 & 1) == 0)
  {

    goto LABEL_22;
  }

  v16 = [v12 view];
  if (v16)
  {
    v17 = v16;
    [v16 alpha];
    v19 = v18;

    if (v19 == 1.0)
    {
      v20 = objc_opt_self();
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      v40 = sub_257E2BFCC;
      v41 = v21;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_257D231C0;
      v39 = &block_descriptor_746;
      v22 = _Block_copy(&aBlock);
      v23 = v2;

      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v40 = sub_257E2BFEC;
      v41 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v37 = 1107296256;
      v38 = sub_257DFE438;
      v39 = &block_descriptor_752;
      v25 = _Block_copy(&aBlock);
      v23;

      [v20 animateWithDuration:v22 animations:v25 completion:0.2];
      _Block_release(v25);
      _Block_release(v22);
      sub_257E1A3A0();
    }

    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}
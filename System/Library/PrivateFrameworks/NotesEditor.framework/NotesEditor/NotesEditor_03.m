uint64_t sub_215314F6C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21549E30C();
  v7 = (*(*(v6 - 8) + 16))(a3, a1, v6);
  a2(v7, *MEMORY[0x277D74420]);
  sub_215324F74();
  sub_21549E31C();
  [objc_opt_self() ic_noteEditorLabelColor];
  sub_215324FC8();
  return sub_21549E31C();
}

uint64_t sub_21531505C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21549E30C();
  v7 = (*(*(v6 - 8) + 16))(a3, a1, v6);
  a2(v7, *MEMORY[0x277D74410]);
  sub_215324F74();
  return sub_21549E31C();
}

void sub_21531510C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();

    if (v2)
    {
      v3 = *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView];
      if (v3)
      {
        v4 = v3[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails];
        v3[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails] = v4 ^ 1;
        v5 = v3;
        sub_21530C86C(v4);
      }

      v6 = *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView];
      if (v6)
      {
        v7 = v6;
        sub_2152F2B60();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_215315310()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, sel_layoutMarginsDidChange);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong ic_enclosingScrollView];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v3;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;
        [v5 safeAreaInsets];
        v16 = v15;
        v18 = v17;

        v19 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v16, v18);
        v21 = v20;
        v23 = v22;
        v25 = v24;
        [v0 bounds];
        [v0 convertRect:v5 toCoordinateSpace:?];
        CGRectGetMaxX(v29);
        v30.origin.x = v19;
        v30.origin.y = v21;
        v30.size.width = v23;
        v30.size.height = v25;
        CGRectGetMaxX(v30);
        v26 = *&v0[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_stackView];
        if (v26)
        {
          v27 = v26;
          [v27 directionalLayoutMargins];
          [v27 setDirectionalLayoutMargins_];
        }
      }
    }
  }
}

uint64_t sub_21531554C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  *(v7 + 104) = a5;
  *(v7 + 112) = a7;
  *(v7 + 200) = a6;
  *(v7 + 96) = a4;
  v8 = sub_21549E56C();
  *(v7 + 120) = v8;
  v9 = *(v8 - 8);
  *(v7 + 128) = v9;
  *(v7 + 136) = *(v9 + 64);
  *(v7 + 144) = swift_task_alloc();
  sub_2154A1FFC();
  *(v7 + 152) = sub_2154A1FEC();
  v11 = sub_2154A1FCC();
  *(v7 + 160) = v11;
  *(v7 + 168) = v10;

  return MEMORY[0x2822009F8](sub_215315650, v11, v10);
}

uint64_t sub_215315650()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[12];
  v0[22] = [objc_opt_self() ic_fileCoordinationOperationQueue];
  (*(v3 + 16))(v1, v4, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[23] = v6;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_2153157B8;
  v8 = MEMORY[0x277D84A28];

  return MEMORY[0x2821952B8](v0 + 11, sub_215323CEC, v6, v8);
}

void sub_2153157B8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[22];

    v4 = v2[20];
    v5 = v2[21];

    MEMORY[0x2822009F8](sub_2153158F4, v4, v5);
  }
}

void sub_2153158F4()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [objc_opt_self() stringFromByteCount:v1 countStyle:0];
    v5 = sub_2154A1D6C();
    v7 = v6;

    v8 = objc_opt_self();
    v9 = sub_2154A1D2C();
    v10 = [v8 localizedFrameworkStringForKey:v9 value:0 table:0 allowSiri:1];

    v11 = sub_2154A1D6C();
    v13 = v12;

    v25 = v11;
    v26 = v13;
    v14 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v14 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      MEMORY[0x2160689F0](v5, v7);
      MEMORY[0x2160689F0](548913696, 0xA400000000000000);
    }

    v15 = *(v0[14] + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton);
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v0[6] = sub_215323D58;
    v0[7] = v18;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2152FF928;
    v0[5] = &block_descriptor_176;
    v19 = _Block_copy(v0 + 2);

    v20 = [v17 elementWithUncachedProvider_];
    _Block_release(v19);
    sub_2151A6C9C(0, &qword_2811994E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2154BDB20;
    *(v21 + 32) = v20;
    v24 = v21;
    v22 = sub_2154A28AC();
    [v16 setMenu_];
  }

  else
  {
  }

  v23 = v0[1];

  v23();
}

uint64_t sub_215315C7C@<X0>(void *a1@<X8>)
{
  v31 = a1;
  v33 = sub_21549E2EC();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A350);
  v11 = swift_allocObject();
  v36 = xmmword_2154BDB50;
  *(v11 + 16) = xmmword_2154BDB50;
  v12 = *MEMORY[0x277CBE910];
  *(v11 + 32) = *MEMORY[0x277CBE910];
  v35 = v12;
  v13 = sub_2154A21EC();

  v14 = 0;
  v41 = (v8 + 56);
  v39 = (v8 + 48);
  v34 = (v8 + 32);
  v38 = (v8 + 8);
  v32 = (v1 + 8);
  do
  {
    if (!v13)
    {
      v14 = 0;
      v44 = 0u;
      v45 = 0u;
      goto LABEL_16;
    }

    if ([v13 nextObject])
    {
      sub_2154A2BCC();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    v22 = v40;
    v44 = v42;
    v45 = v43;
    if (!*(&v43 + 1))
    {

LABEL_16:
      sub_2151ADCD8(&v44, &qword_27CA5ABC0);
      (*v41)(v6, 1, 1, v7);
LABEL_18:
      result = sub_2151ADCD8(v6, &unk_27CA5B090);
      *v31 = v14;
      return result;
    }

    v23 = swift_dynamicCast();
    (*v41)(v6, v23 ^ 1u, 1, v7);
    if ((*v39)(v6, 1, v7) == 1)
    {

      goto LABEL_18;
    }

    v24 = v13;
    (*v34)(v22, v6, v7);
    inited = swift_initStackObject();
    *(inited + 16) = v36;
    v26 = v3;
    v27 = v35;
    *(inited + 32) = v35;
    v28 = v27;
    sub_21532A560(inited);
    swift_setDeallocating();
    sub_215323E70(inited + 32);
    v29 = v46;
    sub_21549E46C();
    if (v29)
    {

      result = (*v38)(v22, v7);
      v20 = 0;
      v46 = 0;
    }

    else
    {
      v46 = 0;

      v15 = sub_21549E2DC();
      v17 = v16;
      (*v32)(v26, v33);
      result = (*v38)(v22, v7);
      v19 = (v17 & 1) == 0;
      v3 = v26;
      if (v19)
      {
        v20 = v15;
      }

      else
      {
        v20 = 0;
      }
    }

    v21 = __OFADD__(v14, v20);
    v14 += v20;
    v13 = v24;
  }

  while (!v21);
  __break(1u);
  return result;
}

id _s11NotesEditor06ICNoteB20ContextualMenuButtonC13ConfigurationCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_215316240(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_maxShadowOpacity;
  v10 = objc_opt_self();
  v11 = [v10 rootSettings];
  [v11 maxShadowOpacity];
  v13 = v12;

  *&v4[v9] = v13;
  *&v4[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowOpacity] = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowLength;
  v15 = [v10 rootSettings];
  [v15 shadowLength];
  v17 = v16;

  *&v4[v14] = v17;
  *&v4[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_gradientLayer] = 0;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for HeaderBottomEdgeDecoration();
  v18 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2154BDB50;
  v20 = sub_21549F19C();
  v21 = MEMORY[0x277D74BF0];
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v22 = v18;
  MEMORY[0x216069460](v19, sel_updateLayers);

  swift_unknownObjectRelease();

  return v22;
}

id sub_215316408(void *a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_maxShadowOpacity;
  v4 = objc_opt_self();
  v5 = [v4 rootSettings];
  [v5 maxShadowOpacity];
  v7 = v6;

  *&v1[v3] = v7;
  *&v1[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowOpacity] = 0x3FF0000000000000;
  v8 = OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowLength;
  v9 = [v4 rootSettings];
  [v9 shadowLength];
  v11 = v10;

  *&v1[v8] = v11;
  *&v1[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_gradientLayer] = 0;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for HeaderBottomEdgeDecoration();
  v12 = objc_msgSendSuper2(&v18, sel_initWithCoder_, a1);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2154BDB50;
    v14 = sub_21549F19C();
    v15 = MEMORY[0x277D74BF0];
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    v16 = v12;
    MEMORY[0x216069460](v13, sel_updateLayers);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return v12;
}

void sub_2153165BC()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for HeaderBottomEdgeDecoration();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_gradientLayer];
  if (v2)
  {
    goto LABEL_6;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v4 = *&v0[v1];
  *&v0[v1] = v3;
  v5 = v3;

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v5 setStartPoint_];

  v6 = *&v0[v1];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v6 setEndPoint_];
  v7 = [v0 layer];
  if (!*&v0[v1])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 addSublayer_];

  [v0 setClipsToBounds_];
  sub_215316848();
  v2 = *&v0[v1];
  if (v2)
  {
LABEL_6:
    v9 = v2;
    [v0 bounds];
    MinX = CGRectGetMinX(v13);
    [v0 bounds];
    MaxY = CGRectGetMaxY(v14);
    [v0 bounds];
    [v9 setFrame_];

    return;
  }

LABEL_10:
  __break(1u);
}

void sub_215316848()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 separatorColor];
  v4 = [v3 ic_resolvedColorForNoteEditor];

  color = [v4 CGColor];
  v5 = [v1 layer];
  Alpha = CGColorGetAlpha(color);
  v7 = OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowOpacity;
  CopyWithAlpha = CGColorCreateCopyWithAlpha(color, Alpha * *&v1[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowOpacity]);
  [v5 setBackgroundColor_];

  v9 = *&v1[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_gradientLayer];
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB10;
    v11 = *&v1[v7] * *&v1[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_maxShadowOpacity];
    v12 = objc_allocWithZone(MEMORY[0x277D75348]);
    v13 = v9;
    *(inited + 32) = [v12 initWithWhite:0.0 alpha:v11];
    *(inited + 40) = [v2 clearColor];
    v31 = MEMORY[0x277D84F90];
    sub_21531B50C(0, 2, 0);
    v14 = v31;
    if ((inited & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x216069960](0, inited);
    }

    else
    {
      v15 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        __break(1u);
        goto LABEL_18;
      }

      v16 = *(inited + 32);
    }

    v17 = v16;
    v18 = [v16 CGColor];
    type metadata accessor for CGColor(0);
    v20 = v19;
    v30 = v19;

    *&v29 = v18;
    v22 = *(v31 + 16);
    v21 = *(v31 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_21531B50C((v21 > 1), v22 + 1, 1);
      v14 = v31;
    }

    *(v14 + 16) = v22 + 1;
    sub_21531E8D0(&v29, (v14 + 32 * v22 + 32));
    if ((inited & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x216069960](1, inited);
      goto LABEL_14;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v23 = *(inited + 40);
LABEL_14:
      v24 = v23;

      v25 = [v24 CGColor];
      v30 = v20;

      *&v29 = v25;
      v12 = *(v14 + 16);
      v15 = *(v14 + 24);
      inited = v12 + 1;
      if (v12 < v15 >> 1)
      {
LABEL_15:
        v26 = v31;
        *(v31 + 16) = inited;
        sub_21531E8D0(&v29, (v26 + 32 * v12 + 32));
        v27 = sub_2154A1F3C();

        [v13 setColors_];

        return;
      }

LABEL_18:
      sub_21531B50C((v15 > 1), inited, 1);
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_215316C7C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_2151A6C9C(0, &unk_27CA5A330);
  sub_21532210C(&qword_27CA5DB60, &unk_27CA5A330);
  v8 = sub_2154A20CC();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

uint64_t sub_215316D58(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2151A6C9C(0, &unk_27CA5A330);
  sub_21532210C(&qword_27CA5DB60, &unk_27CA5A330);
  v6 = sub_2154A20CC();
  v7 = a4;
  v8 = a1;
  sub_215322C08(v6);
}

id sub_215316E98(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch] = 0;
  v5 = &v2[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_startPoint];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_215324EEC(a1, v16, &qword_27CA5ABC0);
  v6 = v17;
  if (v17)
  {
    v7 = __swift_project_boxed_opaque_existential_0Tm(v16, v17);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_2154A2F8C();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for PanEaterGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  sub_2151ADCD8(a1, &qword_27CA5ABC0);
  return v13;
}

uint64_t PaperDocumentTextAttachmentView.accessibilityLabel.getter()
{
  v1 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 attachment];
      if (v3)
      {
        v4 = v3;
        [v3 attachmentType];
      }
    }
  }

  v5 = objc_opt_self();
  v6 = sub_2154A1D2C();
  v7 = [v5 localizedFrameworkStringForKey:v6 value:0 table:0 allowSiri:1];

  v8 = sub_2154A1D6C();
  return v8;
}

Swift::Bool __swiftcall PaperDocumentTextAttachmentView.navigationItemShouldBeginRenaming(_:)(UINavigationItem a1)
{
  v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v3 = [v3 attachment];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 isReadOnly];

        LOBYTE(v3) = v5 ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

Swift::Void __swiftcall PaperDocumentTextAttachmentView.navigationItem(_:didEndRenamingWith:)(UINavigationItem _, Swift::String didEndRenamingWith)
{
  v3 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (*(v2 + v3))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 attachment];
      if (v5)
      {
        v6 = v5;
        sub_215322CA0();
        if (v7)
        {
          sub_215304BD8(v6);
        }

        else
        {
        }
      }
    }
  }
}

Swift::Bool __swiftcall PaperDocumentTextAttachmentView.navigationItem(_:shouldEndRenamingWith:)(UINavigationItem _, Swift::String shouldEndRenamingWith)
{
  sub_215322CA0();
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

void sub_2153174A4()
{
  v1 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (*(v0 + v1))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 attachment];
      if (v3)
      {
        v4 = v3;
        sub_215322CA0();
        if (v5)
        {
          sub_215304BD8(v4);
        }

        else
        {
        }
      }
    }
  }
}

id sub_215317570()
{
  v1 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return 0;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result attachment];
    if (result)
    {
      v3 = result;
      v4 = [result isReadOnly];

      return (v4 ^ 1);
    }
  }

  return result;
}

BOOL sub_215317614()
{
  sub_215322CA0();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

id sub_215317784(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2153177D0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_2154A2C8C();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216069960](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

id sub_2153178E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

uint64_t sub_215317934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_2153179B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215317AE8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_215317BE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215317D18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_215317E44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_215317F98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2153181A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A310);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_2153182AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2153183CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2153184EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A550);
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
    v10 = MEMORY[0x277D84F90];
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
    type metadata accessor for TextList(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215318614(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_215318718(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215318860(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2153189BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2D8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A2E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_215318AF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_215318BFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_215318D6C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_215318F48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
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

char *sub_215319048(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_215319170(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
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

void *sub_2153191F4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_21531927C(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_2154A2C8C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_2811994D0);
    sub_21532210C(&unk_27CA5A450, &qword_2811994D0);
    sub_2154A20FC();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_2151A66EC();
      return;
    }

    while (1)
    {
      v16 = sub_2153EB3CC(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_2154A2CDC())
      {
        sub_2151A6C9C(0, &qword_2811994D0);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_2153194C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_21549E70C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_2151C2B24(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_2151ADCD8(v5, &unk_27CA5EA00);
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

uint64_t sub_2153196E4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v83 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_2811994D0);
    sub_21532210C(&unk_27CA5A450, &qword_2811994D0);
    sub_2154A20FC();
    v4 = v78;
    v6 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a1 + 56);

    v8 = 0;
  }

  v73 = v4;
  v74 = v6;
  v75 = v7;
  v76 = v8;
  v64 = v7;
  v13 = (v7 + 64) >> 6;
  v70 = (v3 + 56);
  v77 = v9;
  v67 = v6;
  v68 = v4;
  for (i = v13; ; v13 = i)
  {
    if (v4 < 0)
    {
      v21 = sub_2154A2CDC();
      if (!v21)
      {
        goto LABEL_62;
      }

      v71 = v21;
      sub_2151A6C9C(0, &qword_2811994D0);
      swift_dynamicCast();
      v19 = v72;
      v17 = v8;
      v2 = v9;
      if (!v72)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v14 = v9;
      v15 = v8;
      if (v9)
      {
LABEL_20:
        v2 = (v14 - 1) & v14;
        v19 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
        v20 = v19;
        v17 = v15;
      }

      else
      {
        v16 = v13 <= (v8 + 1) ? v8 + 1 : v13;
        v17 = v16 - 1;
        v18 = v8;
        while (1)
        {
          v15 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_66;
          }

          if (v15 >= v13)
          {
            break;
          }

          v14 = *(v6 + 8 * v15);
          ++v18;
          if (v14)
          {
            goto LABEL_20;
          }
        }

        v19 = 0;
        v2 = 0;
      }

      v73 = v4;
      v74 = v6;
      v75 = v64;
      v76 = v17;
      v77 = v2;
      if (!v19)
      {
        goto LABEL_62;
      }
    }

    v22 = v19;
    v23 = sub_2154A290C();
    v24 = -1 << *(v3 + 32);
    v8 = v23 & ~v24;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v17;
    v9 = v2;
    v6 = v67;
    v4 = v68;
  }

  v25 = ~v24;
  v26 = sub_2151A6C9C(0, &qword_2811994D0);
  v27 = *(*(v3 + 48) + 8 * v8);
  v69 = v26;
  while (1)
  {
    v28 = sub_2154A291C();

    if (v28)
    {
      break;
    }

    v8 = (v8 + 1) & v25;
    v4 = v8 >> 6;
    v15 = 1 << v8;
    if (((1 << v8) & v70[v8 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(*(v3 + 48) + 8 * v8);
  }

  v30 = *(v3 + 32);
  v61 = ((1 << v30) + 63) >> 6;
  v5 = 8 * v61;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_67;
  }

  while (2)
  {
    v62 = &v60;
    MEMORY[0x28223BE20](v29);
    v32 = &v60 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v70, v31);
    v33 = *&v32[8 * v4] & ~v15;
    v34 = *(v3 + 16);
    v63 = v32;
    *&v32[8 * v4] = v33;
    v4 = v34 - 1;
    v36 = v67;
    v35 = v68;
    v37 = i;
LABEL_33:
    v65 = v4;
    while (v35 < 0)
    {
      v38 = sub_2154A2CDC();
      if (!v38)
      {
        goto LABEL_61;
      }

      v71 = v38;
      swift_dynamicCast();
      v39 = v72;
      if (!v72)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = sub_2154A290C();
      v45 = v3;
      v46 = -1 << *(v3 + 32);
      v47 = v44 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v70[v47 >> 6]) != 0)
      {
        v50 = ~v46;
        while (1)
        {
          v8 = *(*(v45 + 48) + 8 * v47);
          v51 = sub_2154A291C();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v50;
          v48 = v47 >> 6;
          v49 = 1 << v47;
          if (((1 << v47) & v70[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v63[v48];
        v63[v48] = v52 & ~v49;
        v53 = (v52 & v49) == 0;
        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
        if (!v53)
        {
          v4 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v3 = v45;
        v36 = v67;
        v35 = v68;
        v4 = v65;
        v37 = i;
      }
    }

    if (v2)
    {
      v15 = v17;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v35 + 48) + ((v15 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v15;
LABEL_49:
      v73 = v35;
      v74 = v36;
      v75 = v64;
      v76 = v41;
      v17 = v41;
      v77 = v2;
      if (!v39)
      {
LABEL_61:
        v3 = sub_21531B2DC(v63, v61, v4, v3, &unk_27CA5C720);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v37 <= v17 + 1)
    {
      v40 = v17 + 1;
    }

    else
    {
      v40 = v37;
    }

    v41 = v40 - 1;
    while (1)
    {
      v15 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v15 >= v37)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v36 + 8 * v15);
      ++v17;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    v55 = v5;

    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v70, v56);
  sub_21531A804(v57, v61, v3, v8, &v73);
  v59 = v58;

  MEMORY[0x21606B520](v57, -1, -1);
  v3 = v59;
LABEL_62:
  sub_2151A66EC();
  return v3;
}

uint64_t sub_215319DA0(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v65 - v9);
  v11 = sub_21549E70C();
  MEMORY[0x28223BE20](v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v16);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_2151ADCD8(v30, &unk_27CA5EA00);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_215322150(&qword_281199D00, MEMORY[0x277CC95F0]);
    v32 = sub_2154A1C9C();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_215322150(&qword_27CA5DB90, MEMORY[0x277CC95F0]);
    v36 = sub_2154A1D1C();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x28223BE20](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_2151ADCD8(v24, &unk_27CA5EA00);
        a2 = sub_21531AFA0(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_2154A1C9C();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_2154A1D1C();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_2154A1D1C();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_21531AAB8(v63, v65, v80, v24, &v89);
  a2 = v64;

  MEMORY[0x21606B520](v63, -1, -1);
LABEL_52:
  sub_2151A66EC();
  return a2;
}

void sub_21531A804(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!sub_2154A2CDC())
          {
            goto LABEL_29;
          }

          sub_2151A6C9C(0, &qword_2811994D0);
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v5[3] = v15;
                v5[4] = 0;
                goto LABEL_29;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v5[3] = v11;
          v5[4] = v16;
          if (!v12)
          {
LABEL_29:

            sub_21531B2DC(a1, a2, v30, a3, &unk_27CA5C720);
            return;
          }
        }

        v18 = sub_2154A290C();
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_2151A6C9C(0, &qword_2811994D0);
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = sub_2154A291C();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = sub_2154A291C();

          if (v27)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_23:

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
      v5 = a5;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_21531AAB8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_21549E70C();
  MEMORY[0x28223BE20](v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_2151ADCD8(v11, &unk_27CA5EA00);
          v45 = v61;

          sub_21531AFA0(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_215322150(&qword_281199D00, MEMORY[0x277CC95F0]);
        v35 = sub_2154A1C9C();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_215322150(&qword_27CA5DB90, MEMORY[0x277CC95F0]);
        v43 = sub_2154A1D1C();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_21531AFA0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_21549E70C();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A570);
  result = sub_2154A2D7C();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_215322150(&qword_281199D00, MEMORY[0x277CC95F0]);
    result = sub_2154A1C9C();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_21531B2DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  if (!a3)
  {
    v10 = MEMORY[0x277D84FA0];
LABEL_6:

    return v10;
  }

  v6 = a3;
  if (*(a4 + 16) == a3)
  {
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  result = sub_2154A2D7C();
  v10 = result;
  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *a1;
  }

  v12 = 0;
  v13 = result + 56;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v17 = *(*(v5 + 48) + 8 * (v14 | (v12 << 6)));
    result = sub_2154A290C();
    v18 = -1 << *(v10 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v10 + 48) + 8 * v21) = v17;
    ++*(v10 + 16);
    if (__OFSUB__(v6--, 1))
    {
      goto LABEL_32;
    }

    if (!v6)
    {
      goto LABEL_6;
    }
  }

  v15 = v12;
  while (1)
  {
    v12 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v12 >= a2)
    {
      goto LABEL_6;
    }

    v16 = a1[v12];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_21531B4C8(size_t a1, int64_t a2, char a3)
{
  result = sub_21531C2E4(a1, a2, a3, *v3, &qword_27CA5A298, &unk_2154BE080, MEMORY[0x277D36420]);
  *v3 = result;
  return result;
}

char *sub_21531B50C(char *a1, int64_t a2, char a3)
{
  result = sub_21531B7F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21531B52C(void *a1, int64_t a2, char a3)
{
  result = sub_21531B904(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B54C(char *a1, int64_t a2, char a3)
{
  result = sub_21531BA60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B56C(char *a1, int64_t a2, char a3)
{
  result = sub_21531BB64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21531B58C(void *a1, int64_t a2, char a3)
{
  result = sub_21531BC68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B5AC(char *a1, int64_t a2, char a3)
{
  result = sub_21531BD9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21531B5CC(void *a1, int64_t a2, char a3)
{
  result = sub_21531C8C0(a1, a2, a3, *v3, &qword_27CA5A288, &unk_2154BE070, &qword_27CA5A290);
  *v3 = result;
  return result;
}

char *sub_21531B60C(char *a1, int64_t a2, char a3)
{
  result = sub_21531BEA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21531B62C(void *a1, int64_t a2, char a3)
{
  result = sub_21531BFAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B64C(char *a1, int64_t a2, char a3)
{
  result = sub_21531C0E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B66C(char *a1, int64_t a2, char a3)
{
  result = sub_21531C1E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21531B68C(size_t a1, int64_t a2, char a3)
{
  result = sub_21531C2E4(a1, a2, a3, *v3, &qword_27CA5A540, &unk_2154BE2E8, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

size_t sub_21531B6D0(size_t a1, int64_t a2, char a3)
{
  result = sub_21531C2E4(a1, a2, a3, *v3, &unk_27CA5A560, &unk_2154BE308, MEMORY[0x277D74EC8]);
  *v3 = result;
  return result;
}

char *sub_21531B714(char *a1, int64_t a2, char a3)
{
  result = sub_21531C4C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B734(char *a1, int64_t a2, char a3)
{
  result = sub_21531C5C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B754(char *a1, int64_t a2, char a3)
{
  result = sub_21531C6C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B774(char *a1, int64_t a2, char a3)
{
  result = sub_21531C7CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21531B794(void *a1, int64_t a2, char a3)
{
  result = sub_21531C8C0(a1, a2, a3, *v3, &qword_27CA5A2B8, &unk_2154BE0A0, &qword_27CA5A2C0);
  *v3 = result;
  return result;
}

char *sub_21531B7D4(char *a1, int64_t a2, char a3)
{
  result = sub_21531CA08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21531B7F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21531B904(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A628);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A630);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21531BA60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A310);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_21531BB64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21531BC68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A5C8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A5D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21531BD9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21531BEA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A588);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_21531BFAC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A318);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A320);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21531C0E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
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

char *sub_21531C1E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_21531C2E4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21531C4C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A558);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_21531C5C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21531C6C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21531C7CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_21531C8C0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_21531CA08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_21531CB30(void **a1)
{
  v2 = *(sub_2154A12DC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_215433950(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21531CBD8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_21531CBD8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2154A2F6C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2154A12DC();
        v6 = sub_2154A1F9C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2154A12DC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21531CFC8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21531CD04(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21531CD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2154A12DC();
  v9 = MEMORY[0x28223BE20](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x28223BE20](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_215322150(&qword_27CA5A640, MEMORY[0x277CD94A0]);
      v26 = sub_2154A1CCC();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21531CFC8(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_2154A12DC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x28223BE20](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_21543284C(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_21531DA10(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21543284C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_2154327C0(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x277D84F90];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_215322150(&qword_27CA5A640, MEMORY[0x277CD94A0]);
      LODWORD(v133) = sub_2154A1CCC();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_2154A1CCC() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_215317AE8(0, *(v20 + 2) + 1, 1, v20, &qword_27CA5A2C8);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_215317AE8((v53 > 1), v54 + 1, 1, v20, &qword_27CA5A2C8);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_21531DA10(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_21543284C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_2154327C0(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_215322150(&qword_27CA5A640, MEMORY[0x277CD94A0]);
    v109 = sub_2154A1CCC();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21531DA10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_2154A12DC();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x28223BE20](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_215322150(&qword_27CA5A640, MEMORY[0x277CD94A0]);
          LOBYTE(v35) = sub_2154A1CCC();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_215322150(&qword_27CA5A640, MEMORY[0x277CD94A0]);
        LOBYTE(v22) = sub_2154A1CCC();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_21531E004(&v55, &v54, &v53);
  return 1;
}

uint64_t sub_21531E004(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2154A12DC();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21531E0E8(uint64_t (*a1)(id *), uint64_t a2)
{
  v6 = *v2;
  sub_2153177D0(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_2154A2C8C();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_2154A2C8C())
      {
        return v4;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v4;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x216069960](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v13 = v12;
    v25 = v12;
    v14 = a1(&v25);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v4 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v4++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x216069960](v4, v6);
    v15 = MEMORY[0x216069960](v10, v6);
  }

  else
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v10);
    v24 = *(v6 + 32 + 8 * v4);
    v15 = v17;
  }

  v18 = v15;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_215433F30(v6);
    v19 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v19) = 0;
  }

  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  v21 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v19)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_215433F30(v6);
  v20 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v20 + 16))
    {
      goto LABEL_44;
    }

    v22 = v20 + 8 * v10;
    v23 = *(v22 + 32);
    *(v22 + 32) = v24;

    *v2 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  __break(1u);
  return sub_2154A2C8C();
}

uint64_t sub_21531E350(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews;
  swift_beginAccess();
  v13 = v4;
  v5 = *(a2 + v4);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_2154A2C8C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v6 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x216069960](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_2151A6C9C(0, &qword_281199490);
    v10 = sub_2154A291C();

    if (v10)
    {
    }
  }

  swift_beginAccess();
  v11 = a1;
  MEMORY[0x216068AC0]();
  if (*((*(a2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v13) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2154A1F8C();
  }

  sub_2154A1FAC();
  return swift_endAccess();
}

uint64_t sub_21531E510(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21531E604;

  return v5(v2 + 32);
}

uint64_t sub_21531E604()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21531E718()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v2)
  {
    v3 = v2;
    v4 = sub_2154A12FC();

    if (v4)
    {
      v5 = sub_2154A126C();

      if (v5)
      {
        v6 = [v5 document];

        if (v6)
        {
          v7 = *(v1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
          if (v7)
          {
            v8 = v7;
            v9 = [v6 pageCount];

            v10 = *&v8[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startPageCount];
            if (v10 == -1)
            {
              *&v8[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startPageCount] = v9;
            }

            else if (v9 != v10)
            {
              v8[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity] = 1;
            }

            *&v8[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endPageCount] = v9;
          }

          else
          {
            v8 = v6;
          }
        }
      }
    }
  }

  return *(v1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_21531E8D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for PaperDocumentTextAttachmentView()
{
  result = qword_281199828;
  if (!qword_281199828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21531E92C(uint64_t a1)
{
  v4 = *(sub_2154A219C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2151BD36C;

  return sub_2152F434C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21531EA3C(unsigned __int16 a1)
{
  if (a1 < 3u)
  {
    return 0x10002u >> (8 * a1);
  }

  if (qword_281199778 != -1)
  {
    swift_once();
  }

  v3 = sub_21549F11C();
  __swift_project_value_buffer(v3, qword_281199780);
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 33554688;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_2151A1000, v4, v5, "Unexpected attachment view size: %hd, falling back to .large", v6, 6u);
    MEMORY[0x21606B520](v6, -1, -1);
  }

  return 2;
}

id sub_21531EB48(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 documentRange];
  v7 = [v6 location];

  v8 = [a3 locationFromLocation:v7 withOffset:a1];
  swift_unknownObjectRelease();
  if (v8)
  {
    v9 = [a3 locationFromLocation:v8 withOffset:a2];
    if (v9)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D742D0]) initWithLocation:v8 endLocation:v9];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v10;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_21531EC54(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_textContainer];
      v9 = v5;
      v10 = sub_21531EA3C([v7 effectiveAttachmentViewSizeForTextContainer_]);
      sub_2152F0BC8(v10);
    }
  }

  v11 = *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo];
  if (v11)
  {
    v12 = v11;
    [v12 bounds];

    return;
  }

  v13 = *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer);
    if (!v14)
    {
      __break(1u);
      return;
    }

    [v14 systemLayoutSizeFittingSize_];
    v16 = v15;
  }

  else
  {
    *&v16 = 38.0;
  }

  v17 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode;
  if (!v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode])
  {
    v56 = sub_2152F0504();
    [v56 computedSize];
    v58 = v57;
    v60 = v59;

    [a1 size];
    [a1 lineFragmentPadding];
    v72.origin.x = 0.0;
    v72.origin.y = 0.0;
    v72.size.width = v58;
    v72.size.height = v60;
    CGRectGetWidth(v72);
    return;
  }

  v18 = [v2 ic_enclosingScrollView];
  if (!v18)
  {
LABEL_14:
    v20 = sub_2152EE8FC();
    if (!v20)
    {
      return;
    }

    goto LABEL_15;
  }

  v19 = v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {

    goto LABEL_14;
  }

LABEL_15:
  v67 = *&v16;
  v21 = v20;
  [v21 safeAreaInsets];
  v23 = v22;
  v25 = v24;
  v26 = [v21 traitCollection];
  v27 = [v26 horizontalSizeClass];

  [v21 bounds];
  v32 = UIEdgeInsetsInsetRect(v28, v29, v30, v31, v23, v25);
  v66 = v33;
  v35 = v34;
  v37 = v36;
  [v21 bounds];
  Width = CGRectGetWidth(v68);
  sub_2152EF824();
  x = v69.origin.x;
  y = v69.origin.y;
  v41 = v69.size.width;
  height = v69.size.height;
  v65 = CGRectGetWidth(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = v41;
  v70.size.height = height;
  v43 = CGRectGetHeight(v70);
  [v21 textContainerInset];
  v45 = v44;
  [v21 textContainerInset];
  v47 = v46;
  v71.origin.x = v32;
  v71.origin.y = v66;
  v71.size.width = v35;
  v71.size.height = v37;
  v48 = CGRectGetHeight(v71) * 0.35;
  if (v48 <= 300.0)
  {
    v48 = 300.0;
  }

  v49 = floor(v48);
  v50 = v49;
  if (v2[v17] == 2)
  {
    v50 = (Width - v45 - v47) / (v65 / v43);
  }

  v51 = OBJC_IVAR___ICPaperDocumentTextAttachmentView__userScale;
  v52 = v50 * *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView__userScale];
  if (v49 > v52)
  {
    v53 = v49;
  }

  else
  {
    v53 = v52;
  }

  if (v27 == 2)
  {
    [v21 safeAreaInsets];
    v55 = v54;
  }

  else
  {

    v55 = 10.0;
  }

  v61 = v67 + v53 + v55;
  if (*&v2[v51] == 1.0)
  {
    v62 = [objc_opt_self() rootSettings];
    [v62 attachmentViewSnapToContentHeightThreshold];
    v64 = v63;

    v73.origin.x = v32;
    v73.origin.y = v66;
    v73.size.width = v35;
    v73.size.height = v37;
    if (1.0 - v64 <= v61 / CGRectGetHeight(v73))
    {
      v74.origin.x = v32;
      v74.origin.y = v66;
      v74.size.width = v35;
      v74.size.height = v37;
      CGRectGetHeight(v74);
    }
  }

  v75.origin.x = v32;
  v75.origin.y = v66;
  v75.size.width = v35;
  v75.size.height = v37;
  CGRectGetHeight(v75);
}

void sub_21531F114()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A5A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v101 - v3;
  v110 = sub_2154A2AAC();
  v5 = *(v110 - 8);
  v6 = MEMORY[0x28223BE20](v110);
  v109 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v101 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v101 - v10;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_stackView] = 0;
  *&v0[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton] = 0;
  *&v0[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_toggleThumbnailsButton] = 0;
  v0[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_isCompact] = 1;
  swift_unknownObjectWeakAssign();
  v111.receiver = v0;
  v111.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v111, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *MEMORY[0x277D76838];
  v14 = v12;
  [v14 setMinimumContentSizeCategory_];
  [v14 setMaximumContentSizeCategory_];
  [v14 setPreservesSuperviewLayoutMargins_];
  v15 = *MEMORY[0x277D768C8];
  v16 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v18 = *(MEMORY[0x277D768C8] + 24);
  v19 = v14;
  [v19 setLayoutMargins_];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2154A298C();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_215324F54;
  *(v21 + 24) = v20;

  sub_21549F2AC();
  v22 = sub_21549F29C();
  v23 = *(v22 - 8);
  v104 = *(v23 + 56);
  v105 = v22;
  v103 = v23 + 56;
  v104(v4, 0, 1);
  sub_2154A2A3C();
  sub_2154A29CC();
  sub_2154A29FC();
  v24 = sub_2154A1D2C();
  v25 = [objc_opt_self() systemImageNamed_];

  sub_2154A2A6C();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2154BDB10;
  v27 = objc_opt_self();
  *(v26 + 32) = [v27 ic_noteEditorSecondaryLabelColor];
  v28 = [v27 systemFillColor];
  v29 = [v28 ic_resolvedColorForNoteEditor];

  *(v26 + 40) = v29;
  sub_2151A6C9C(0, &qword_2811994C0);
  v30 = sub_2154A1F3C();

  v31 = objc_opt_self();
  v32 = [v31 configurationWithPaletteColors_];

  v33 = sub_215314CB4(*MEMORY[0x277D74420]);
  v106 = v20;

  v34 = [v31 configurationWithFont_];

  v35 = [v32 configurationByApplyingConfiguration_];
  sub_2154A296C();
  sub_2154A2A0C();
  sub_2151A6C9C(0, &qword_281199470);
  v102 = v5;
  v36 = *(v5 + 16);
  v36(v108, v11, v110);
  v37 = sub_2154A2ABC();
  v38 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton;
  v39 = *&v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton];
  *&v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton] = v37;
  v40 = v37;

  [v40 setShowsMenuAsPrimaryAction_];
  v42 = *&v19[v38];
  if (!v42)
  {
    __break(1u);
    goto LABEL_20;
  }

  LODWORD(v41) = 1144750080;
  [v42 setContentHuggingPriority:0 forAxis:v41];
  v44 = *&v19[v38];
  if (!v44)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v43) = 1132068864;
  [v44 setContentCompressionResistancePriority:0 forAxis:v43];
  v45 = *&v19[v38];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v45 setPointerInteractionEnabled_];
  v46 = *&v19[v38];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v46;
  v48 = sub_2154A1D2C();
  [v47 setAccessibilityIdentifier_];

  v49 = v109;
  sub_2154A298C();
  v50 = sub_2154A1D2C();
  v51 = [v27 colorNamed_];

  sub_2154A2A2C();
  sub_2154A2A0C();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_215324F54;
  *(v52 + 24) = v106;

  sub_21549F2AC();
  (v104)(v4, 0, 1, v105);
  sub_2154A2A3C();
  v36(v108, v49, v110);
  sub_2151A6C9C(0, &qword_281199480);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_2154A295C();
  v53 = sub_2154A2ABC();
  v54 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_toggleThumbnailsButton;
  v55 = *&v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_toggleThumbnailsButton];
  *&v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_toggleThumbnailsButton] = v53;
  v56 = v53;

  [v56 setPointerInteractionEnabled_];
  v57 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_2154BDB70;
  v59 = *&v19[v38];
  if (!v59)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v58 + 32) = v59;
  *(v58 + 40) = v57;
  v60 = *&v19[v54];
  if (!v60)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v58 + 48) = v60;
  v61 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2151A6C9C(0, &qword_2811994D0);
  v62 = v57;
  v63 = v59;
  v64 = v60;
  v65 = sub_2154A1F3C();

  v66 = [v61 initWithArrangedSubviews_];

  v67 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_stackView;
  v68 = *&v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_stackView];
  *&v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_stackView] = v66;
  v69 = v66;

  if (!v69)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v69 setSpacing_];

  v70 = *&v19[v67];
  if (!v70)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v70 setTranslatesAutoresizingMaskIntoConstraints_];
  v71 = *&v19[v67];
  if (!v71)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v71 setLayoutMarginsRelativeArrangement_];
  v72 = *&v19[v67];
  if (!v72)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v72 setInsetsLayoutMarginsFromSafeArea_];
  v73 = *&v19[v67];
  if (!v73)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v73 setDirectionalLayoutMargins_];
  v74 = *&v19[v67];
  if (!v74)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v74 setAxis_];
  if (!*&v19[v67])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v19 addSubview_];
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2154BDB30;
  v76 = *&v19[v67];
  if (!v76)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v77 = [v76 leadingAnchor];
  v78 = [v19 layoutMarginsGuide];
  v79 = [v78 leadingAnchor];

  sub_2154A29EC();
  v81 = [v77 constraintEqualToAnchor:v79 constant:-v80];

  *(v75 + 32) = v81;
  v82 = *&v19[v67];
  if (!v82)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v83 = [v82 trailingAnchor];
  v84 = [v19 trailingAnchor];
  sub_2154A29EC();
  v86 = [v83 constraintEqualToAnchor:v84 constant:v85];

  *(v75 + 40) = v86;
  v87 = *&v19[v67];
  if (!v87)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v88 = [v87 topAnchor];
  v89 = [v19 topAnchor];
  v90 = [v88 constraintEqualToAnchor_];

  *(v75 + 48) = v90;
  v91 = *&v19[v67];
  if (v91)
  {
    v92 = objc_opt_self();
    v93 = [v91 bottomAnchor];
    v94 = [v19 bottomAnchor];
    v95 = [v93 constraintEqualToAnchor_];

    *(v75 + 56) = v95;
    sub_2151A6C9C(0, &qword_2811995A0);
    v96 = sub_2154A1F3C();

    [v92 activateConstraints_];

    v97 = [v19 traitCollection];
    v98 = [v97 horizontalSizeClass];

    v19[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_isCompact] = v98 == 1;
    sub_2152F2B60();

    v99 = *(v102 + 8);
    v100 = v110;
    v99(v109, v110);
    v99(v11, v100);
    return;
  }

LABEL_35:
  __break(1u);
}

void sub_21531FE04(uint64_t a1, char *a2, void *a3, uint64_t a4, int a5, _BYTE *a6)
{
  v133 = a5;
  v134 = a4;
  v135 = a3;
  v137 = a1;
  v138 = a2;
  v130 = sub_21549E56C();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2154A172C();
  v8 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v10 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v126 - v13;
  a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_state] = 0;
  v15 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController] = 0;
  v16 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_syncManager;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_syncManager] = 0;
  v131 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_syncCancellable;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_syncCancellable] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_markupButton] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_findButton] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton] = 0;
  v132 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_canFillForm;
  a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_canFillForm] = 0;
  v17 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_wantsToJumpIntoAutoFill;
  a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_wantsToJumpIntoAutoFill] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_formFillingButton] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_doneButton] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_undoButton] = 0;
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_redoButton] = 0;
  v18 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController__undoManager;
  *&a6[v18] = [objc_allocWithZone(MEMORY[0x277CCAD90]) init];
  v19 = &a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dataSource];
  *&a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  v20 = &a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction];
  *v20 = 0;
  v20[1] = 0;
  a6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview] = 0;
  v126 = v12;
  v21 = *(v12 + 16);
  v127 = v11;
  v21(v14, v137, v11);
  v22 = v135;
  sub_2154A171C();
  v23 = objc_allocWithZone(sub_2154A155C());
  v24 = sub_2154A152C();
  v25 = *&a6[v15];
  *&a6[v15] = v24;
  v26 = v24;

  (*(v8 + 104))(v10, *MEMORY[0x277CD9570], v136);
  sub_2154A14EC();

  v27 = *&a6[v15];
  if (!v27)
  {
    __break(1u);
    goto LABEL_23;
  }

  v28 = v19;
  v29 = v27;
  v30 = v133;
  sub_2154A151C();

  a6[v132] = v30 & 1;
  a6[v17] = v30 & 1;
  *&a6[v16] = v134;
  swift_retain_n();

  v31 = *&a6[v15];
  if (!v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v32 = v31;
  v33 = sub_2154A154C();

  aBlock = v33;
  v34 = swift_allocObject();
  swift_weakInit();

  v35 = swift_allocObject();
  *(v35 + 24) = &off_28274E3C8;
  v36 = v138;
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v35;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A428);
  sub_2151ACC5C(&qword_27CA5A430, &qword_27CA5A428);
  v38 = sub_21549F3EC();

  *&a6[v131] = v38;

  *(v28 + 1) = &off_28274E3C8;
  swift_unknownObjectWeakAssign();

  v39 = *&a6[v15];
  if (!v39)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = type metadata accessor for QuickLookalikePaperViewController();
  v151.receiver = a6;
  v151.super_class = v40;
  v136 = v40;
  v41 = objc_msgSendSuper2(&v151, sel_initWithRootViewController_, v39);
  v42 = objc_opt_self();
  v43 = v41;
  v44 = [v42 defaultCenter];
  v45 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController__undoManager;
  [v44 addObserver:v43 selector:sel_updateBarButtonItems name:*MEMORY[0x277CCA7F8] object:*&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController__undoManager]];

  v46 = [v42 defaultCenter];
  [v46 addObserver:v43 selector:sel_updateBarButtonItems name:*MEMORY[0x277CCA810] object:*&v43[v45]];

  v47 = [v42 defaultCenter];
  [v47 addObserver:v43 selector:sel_updateBarButtonItems name:*MEMORY[0x277CCA808] object:*&v43[v45]];

  v48 = [v42 defaultCenter];
  [v48 addObserver:v43 selector:sel_findSessionDidBegin_ name:*MEMORY[0x277D768D8] object:0];

  v49 = [v42 defaultCenter];
  [v49 addObserver:v43 selector:sel_findSessionDidEnd_ name:*MEMORY[0x277D768E0] object:0];

  v50 = sub_2154A1D2C();
  v51 = objc_opt_self();
  v52 = [v51 systemImageNamed_];

  v53 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v52 style:0 target:v43 action:sel_undo_];
  v54 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_undoButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_undoButton] = v53;

  v55 = sub_2154A1D2C();
  v56 = [v51 systemImageNamed_];

  v57 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v56 style:0 target:v43 action:sel_redo_];
  v58 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_redoButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_redoButton] = v57;

  v59 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v43 action:sel_done_];
  v60 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_doneButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_doneButton] = v59;

  v61 = sub_2154A1D2C();
  v62 = [v51 systemImageNamed_];

  v63 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v62 style:0 target:v43 action:sel_fillForm_];
  v64 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_formFillingButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_formFillingButton] = v63;

  v65 = sub_2154A1D2C();
  v66 = [v51 systemImageNamed_];

  v67 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v66 style:0 target:v43 action:sel_markup_];
  v68 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_markupButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_markupButton] = v67;

  v69 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:12 target:v43 action:sel_find_];
  v70 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_findButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_findButton] = v69;

  v71 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:v43 action:sel_share_];
  v72 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton];
  *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_shareButton] = v71;

  v73 = v128;
  sub_215302998(v128);
  v74 = objc_allocWithZone(MEMORY[0x277D75460]);
  v75 = sub_21549E49C();
  v76 = [v74 initWithURL_];

  (*(v129 + 8))(v73, v130);
  v77 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v149 = sub_21532493C;
  v150 = v77;
  aBlock = MEMORY[0x277D85DD0];
  v146 = 1107296256;
  v147 = sub_2153178E4;
  v148 = &block_descriptor_325;
  v78 = _Block_copy(&aBlock);

  [v76 setActivityViewControllerProvider_];
  _Block_release(v78);
  v79 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v80 = *&v43[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController];
  if (!v80)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v81 = [v80 navigationItem];
  [v81 setDocumentProperties_];

  v82 = *&v43[v79];
  if (!v82)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v83 = [v82 navigationItem];
  v84 = *&v43[v79];
  if (!v84)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v85 = [v84 navigationItem];
  sub_2154A234C();

  sub_2154A235C();
  v86 = *&v43[v79];
  if (!v86)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v87 = [v86 navigationItem];
  v88 = swift_allocObject();
  *(v88 + 16) = v43;
  v149 = sub_215324944;
  v150 = v88;
  aBlock = MEMORY[0x277D85DD0];
  v146 = 1107296256;
  v147 = sub_2153BF69C;
  v148 = &block_descriptor_331;
  v89 = _Block_copy(&aBlock);
  v90 = v43;

  [v87 setTitleMenuProvider_];
  _Block_release(v89);

  v91 = *&v43[v79];
  if (!v91)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v92 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  v93 = v138;
  swift_beginAccess();
  if (*&v93[v92])
  {
    objc_opt_self();
    v94 = swift_dynamicCastObjCClass();
    v95 = v91;
    if (v94)
    {
      v96 = [v94 attachment];
      if (v96)
      {
        v97 = v96;
        v98 = [v96 title];

        if (v98)
        {
          v99 = sub_2154A1D6C();
          v101 = v100;

          v143 = v99;
          v144 = v101;
          v141 = 1717858350;
          v142 = 0xE400000000000000;
          v139 = 0;
          v140 = 0xE000000000000000;
          sub_215324954();
          sub_2154A2B9C();
        }
      }
    }
  }

  else
  {
    v102 = v91;
  }

  v103 = sub_2154A1D2C();

  [v91 setTitle_];

  v104 = *&v43[v79];
  if (!v104)
  {
    goto LABEL_30;
  }

  v105 = [v104 navigationItem];
  [v105 setStyle_];

  v106 = *&v43[v79];
  if (!v106)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_215322150(&qword_27CA5A438, type metadata accessor for QuickLookalikePaperViewController);
  v107 = v90;
  v108 = v106;
  sub_2154A153C();

  v109 = *&v43[v79];
  if (!v109)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v110 = v109;
  v111 = sub_2154A14DC();

  [v111 setOverrideUserInterfaceStyle_];
  v112 = *&v43[v79];
  if (!v112)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v113 = v112;
  v114 = sub_2154A14DC();

  v115 = sub_2154A1D2C();
  [v114 setStateAutosaveName_];

  v116 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  [v116 configureWithDefaultBackground];
  v117 = v107;
  v118 = [v117 navigationBar];
  [v118 setScrollEdgeAppearance_];

  [v117 setModalPresentationStyle_];
  v119 = *&v43[v79];
  if (v119)
  {
    v120 = v119;
    v121 = sub_2154A14DC();

    v122 = v117;
    [v121 addObserver_];

    sub_2153D0FFC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A348);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_2154BDB50;
    v124 = sub_21549F1AC();
    v125 = MEMORY[0x277D74C50];
    *(v123 + 32) = v124;
    *(v123 + 40) = v125;
    *(swift_allocObject() + 16) = v122;
    sub_2154A237C();

    swift_unknownObjectRelease();

    (*(v126 + 8))(v137, v127);
    return;
  }

LABEL_34:
  __break(1u);
}

void sub_215320E80()
{
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_viewControllerForPresentingUI) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView____lazy_storage___paperDidSaveSelectorDelayer) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_kMinMediaHeight) = 0x4072C00000000000;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_kMinMediaHeightFraction) = 0x3FD6666666666666;
  v1 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_attachmentChangeNotifications;
  v2 = sub_2154A219C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_task) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView____lazy_storage___smallBrickView) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode) = 2;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_placeholderContainerView) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_internalErrorLabel) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_idleTimeInterval) = 0x3FE0000000000000;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_isRevertingChanges) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_isUpgradingLegacyAttachment) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_hasFillableForm) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_openAttachmentWhenVisible) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_quickLookTapGestureRecognizer) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_pinchToResizeGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo);
  *v3 = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_titleObserver) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_userScaleAtStartOfZoomGesture) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView__userScale) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_performedAnimatedTransition) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_shouldUpgradeAttachmentAfterQuickLookIsDismissed) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_liveStreamMessenger + 8) = 0;
  swift_unknownObjectWeakInit();
  v4 = (v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_participantDetailsDataSource);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors) = 0;
  *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_textualContextProvider + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_2154A2EDC();
  __break(1u);
}

uint64_t sub_2153210F4(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 64) = a2;
  *(v6 + 72) = v5;
  *(v6 + 162) = a5;
  *(v6 + 161) = a4;
  *(v6 + 160) = a3;
  *(v6 + 56) = a1;
  v7 = sub_2154A12DC();
  *(v6 + 80) = v7;
  *(v6 + 88) = *(v7 - 8);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  sub_2154A1FFC();
  *(v6 + 112) = sub_2154A1FEC();
  v9 = sub_2154A1FCC();
  *(v6 + 120) = v9;
  *(v6 + 128) = v8;

  return MEMORY[0x2822009F8](sub_215321204, v9, v8);
}

uint64_t sub_215321204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 72);
  if (*(v5 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode))
  {
    v6 = MEMORY[0x277D84F90];
    *(v4 + 48) = MEMORY[0x277D84F90];
    v7 = *(v5 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView);
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282127FF0](a1, a2, a3, a4);
    }

    v8 = *(v4 + 162);
    v9 = *(v4 + 161);
    v10 = *(v4 + 160);
    v12 = *(v4 + 56);
    v11 = *(v4 + 64);
    v13 = v7;
    v14 = sub_215305FC4(v12, v11, v10, v9, v8);

    v15 = *(v14 + 2);
    if (v15)
    {
      v29 = v6;
      sub_2154A2E2C();
      v16 = type metadata accessor for ICPDFTextFindingResult(0);
      v17 = 32;
      do
      {
        v28 = *&v14[v17];
        v18 = objc_allocWithZone(v16);
        *&v18[OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result] = v28;
        type metadata accessor for ICPDFTextFindingResult.ResultType(0);
        swift_storeEnumTagMultiPayload();
        *(v4 + 16) = v18;
        *(v4 + 24) = v16;
        [objc_msgSendSuper2((v4 + 16) init)];
        sub_2154A2E0C();
        sub_2154A2E4C();
        sub_2154A2E5C();
        sub_2154A2E1C();
        v17 += 16;
        --v15;
      }

      while (v15);

      v19 = v29;
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v21 = *(v4 + 72);
    sub_21547E154(v19);
    v22 = *(v21 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
    if (v22)
    {
      v23 = v22;
      v24 = sub_2154A12FC();
      *(v4 + 136) = v24;

      if (v24)
      {
        v25 = swift_task_alloc();
        *(v4 + 144) = v25;
        *v25 = v4;
        v25[1] = sub_2153214D0;
        a4 = *(v4 + 161);
        a3 = *(v4 + 160);
        a2 = *(v4 + 64);
        a1 = *(v4 + 56);

        return MEMORY[0x282127FF0](a1, a2, a3, a4);
      }
    }

    v20 = *(v4 + 48);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v26 = *(v4 + 8);

  return v26(v20);
}

uint64_t sub_2153214D0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 152) = a1;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);

  return MEMORY[0x2822009F8](sub_2153215F8, v4, v3);
}

uint64_t sub_2153215F8()
{
  v22 = v0;
  super_class = v0[9].super_class;

  v21 = super_class;

  sub_21531CB30(&v21);

  v2 = v21;
  v3 = v21[2];
  if (v3)
  {
    v4 = v0[5].super_class;
    v21 = MEMORY[0x277D84F90];
    sub_2154A2E2C();
    v5 = *(v4 + 2);
    v4 = (v4 + 16);
    v6 = v2 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v19 = *(v4 + 7);
    v20 = v5;
    v18 = (v4 - 8);
    do
    {
      receiver = v0[6].receiver;
      v7 = v0[6].super_class;
      v9 = v0[5].receiver;
      v20(v7, v6, v9);
      v20(receiver, v7, v9);
      v10 = type metadata accessor for ICPDFTextFindingResult(0);
      v11 = objc_allocWithZone(v10);
      v20(&v11[OBJC_IVAR____TtC11NotesEditor22ICPDFTextFindingResult_result], receiver, v9);
      type metadata accessor for ICPDFTextFindingResult.ResultType(0);
      swift_storeEnumTagMultiPayload();
      v0[2].receiver = v11;
      v0[2].super_class = v10;
      [objc_msgSendSuper2(v0 + 2 init)];
      v12 = *v18;
      (*v18)(receiver, v9);
      v12(v7, v9);
      sub_2154A2E0C();
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
      v6 += v19;
      --v3;
    }

    while (v3);

    v13 = v21;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v14 = v0[8].super_class;
  sub_21547E154(v13);

  v15 = v0[3].receiver;

  v16 = v0->super_class;

  return v16(v15);
}

void sub_2153218A4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    type metadata accessor for ICPDFTextFindingResult(0);
    if (swift_dynamicCastClass())
    {
      v6 = *(a2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
      if (v6)
      {
        v7 = a1;
        v8 = v6;
        v10 = sub_2154A12FC();

        if (v10)
        {
          (*(a3 + 16))(a3, 0);

          return;
        }
      }
    }
  }

  v9 = *(a3 + 16);

  v9(a3, 0);
}

uint64_t sub_215321990(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - v8;
  v10 = sub_21549E56C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E54C();
  if (!v14)
  {
    return 0;
  }

  v31 = v13;
  v32 = v11;
  v33 = v2;
  v15 = sub_2154A1D2C();
  v16 = sub_2154A1D2C();
  v17 = [v15 isEqual_];

  if (v17)
  {

    v18 = a1;
  }

  else
  {
    v19 = sub_2154A1D2C();

    v20 = sub_2154A1D2C();
    v21 = [v19 isEqual_];

    v18 = a1;
    if (!v21)
    {
      sub_215307408(a1);
      return 0;
    }
  }

  v22 = objc_allocWithZone(MEMORY[0x277D6EED0]);
  v23 = sub_21549E49C();
  v24 = [v22 initWithURL_];

  if (!v24)
  {
    (*(v32 + 56))(v9, 1, 1, v10);
LABEL_12:
    sub_2151ADCD8(v9, &unk_27CA5B090);
    sub_215307408(v18);

    return 1;
  }

  v25 = [v24 URL];
  v26 = v32;
  if (v25)
  {
    v27 = v25;
    sub_21549E51C();

    (*(v26 + 56))(v7, 0, 1, v10);
  }

  else
  {
    (*(v32 + 56))(v7, 1, 1, v10);
  }

  sub_215323B30(v7, v9);
  if ((*(v26 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_12;
  }

  v29 = v31;
  (*(v26 + 32))(v31, v9, v10);
  sub_215307408(v29);

  (*(v26 + 8))(v29, v10);
  return 0;
}

id sub_215321D18(char a1, char a2)
{
  v33 = &type metadata for NotesFeature;
  v34 = sub_215325200();
  aBlock = "InlineFormFilling";
  v31 = 17;
  LOBYTE(v32) = 2;
  v5 = sub_21549EE3C();
  result = __swift_destroy_boxed_opaque_existential_0Tm(&aBlock);
  if (v5)
  {
    v7 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
    result = swift_beginAccess();
    if (*(v2 + v7))
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        result = [result attachment];
        if (result)
        {
          v8 = result;
          v9 = *(v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_hasFillableForm);
          v10 = a1 & a2 & 1;
          *(v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_hasFillableForm) = v10;
          v11 = [result managedObjectContext];
          if (v11)
          {
            v12 = v11;
            v13 = swift_allocObject();
            *(v13 + 16) = v8;
            *(v13 + 24) = v10;
            *(v13 + 32) = v12;
            v14 = swift_allocObject();
            v15 = sub_215325254;
            *(v14 + 16) = sub_215325254;
            *(v14 + 24) = v13;
            v34 = sub_2153252BC;
            v35 = v14;
            aBlock = MEMORY[0x277D85DD0];
            v31 = 1107296256;
            v32 = sub_2152F1C04;
            v33 = &block_descriptor_512;
            v16 = _Block_copy(&aBlock);
            v17 = v8;
            v18 = v12;

            [v18 performBlockAndWait_];

            _Block_release(v16);
            LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

            if ((v18 & 1) == 0)
            {
              goto LABEL_9;
            }

            __break(1u);
          }

          v15 = 0;
LABEL_9:
          if ([v8 shouldShowInlineFormFillingBanner])
          {
            if (v9)
            {
              goto LABEL_19;
            }

            if ((v10 & 1) == 0)
            {
              goto LABEL_19;
            }

            v19 = *(v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView);
            if (!v19)
            {
              goto LABEL_19;
            }

            v20 = v19;
            sub_215301A64(1, 1);
          }

          else
          {
            if (qword_281199778 != -1)
            {
              swift_once();
            }

            v21 = sub_21549F11C();
            __swift_project_value_buffer(v21, qword_281199780);
            v8 = v8;
            v20 = sub_21549F0FC();
            v22 = sub_2154A224C();

            if (!os_log_type_enabled(v20, v22))
            {

              return sub_2151AF750(v15);
            }

            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            aBlock = v24;
            *v23 = 136315138;
            v25 = [v8 ic_loggingIdentifier];
            v26 = sub_2154A1D6C();
            v28 = v27;

            v29 = sub_215348D98(v26, v28, &aBlock);

            *(v23 + 4) = v29;
            _os_log_impl(&dword_2151A1000, v20, v22, "Not showing inline form filling banner for attachment because it was dismissed too many times: %s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v24);
            MEMORY[0x21606B520](v24, -1, -1);
            MEMORY[0x21606B520](v23, -1, -1);
          }

LABEL_19:
          return sub_2151AF750(v15);
        }
      }
    }
  }

  return result;
}

uint64_t sub_21532210C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2151A6C9C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215322150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id _s11NotesEditor31PaperDocumentTextAttachmentViewC22contextMenuInteraction_016configurationForI10AtLocationSo09UIContextI13ConfigurationCSgSo0oiJ0C_So7CGPointVtF_0()
{
  if (v0[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode])
  {
    return 0;
  }

  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = objc_opt_self();
  v13 = sub_215325144;
  v14 = v2;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2153178E4;
  v12 = &block_descriptor_482;
  v5 = _Block_copy(&v9);
  v6 = v0;

  v13 = sub_215325170;
  v14 = v3;
  v9 = MEMORY[0x277D85DD0];
  v10 = 1107296256;
  v11 = sub_2153BF69C;
  v12 = &block_descriptor_485;
  v7 = _Block_copy(&v9);

  v8 = [v4 configurationWithIdentifier:0 previewProvider:v5 actionProvider:v7];

  _Block_release(v7);
  _Block_release(v5);
  return v8;
}

id _s11NotesEditor31PaperDocumentTextAttachmentViewC22contextMenuInteraction_022previewForHighlightingI17WithConfigurationSo17UITargetedPreviewCSgSo09UIContextiJ0C_So0riO0CtF_0()
{
  if (v0[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode])
  {
    return 0;
  }

  v2 = sub_2152F0504();
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = OBJC_IVAR___ICPaperDocumentTextAttachmentView____lazy_storage___smallBrickView;
  [v0 convertRect:*&v0[OBJC_IVAR___ICPaperDocumentTextAttachmentView____lazy_storage___smallBrickView] fromCoordinateSpace:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  [*&v0[v11] effectiveLayoutCornerRadius];
  v22 = [objc_opt_self() bezierPathWithRoundedRect:v13 cornerRadius:{v15, v17, v19, v21}];
  [v20 setVisiblePath_];

  v23 = [objc_allocWithZone(MEMORY[0x277D75B90]) initWithView:v0 parameters:v20];
  return v23;
}

void sub_215322540(void *a1)
{
  v3 = [v1 window];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v19 = [v3 rootViewController];

  if (!v19)
  {
    return;
  }

  v5 = [a1 previewViewController];
  if (!v5)
  {
    v16 = v19;
LABEL_12:

    return;
  }

  v17 = v5;
  type metadata accessor for QuickLookalikePaperViewController();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    v16 = v17;
    goto LABEL_12;
  }

  v7 = v6;
  v8 = v6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview];
  v6[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_forContextualPreview] = 0;
  if (v8)
  {
    [v6 setNavigationBarHidden:0 animated:0];
    sub_2153D0FFC();
    v9 = *&v7[OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = [v7 traitCollection];
    [v11 horizontalSizeClass];

    sub_2154A14BC();
  }

  [a1 setPreferredCommitStyle_];
  v12 = swift_allocObject();
  *(v12 + 16) = v19;
  *(v12 + 24) = v7;
  aBlock[4] = sub_21532512C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_473;
  v13 = _Block_copy(aBlock);
  v14 = v19;
  v15 = v18;

  [a1 addCompletion_];
  _Block_release(v13);
}

uint64_t sub_2153227A8(void *a1)
{
  v3 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
LABEL_4:
    v6 = v4;

    v7 = [v6 panGestureRecognizer];
    sub_2151A6C9C(0, &qword_27CA59E48);
    v8 = a1;
    v9 = sub_2154A291C();

    return v9 & 1;
  }

  else
  {
    while (1)
    {

      v5 = [v3 superview];
      if (!v5)
      {
        return 0;
      }

      v3 = v5;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }
}

void sub_2153228B4()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_autoFillBannerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD95D8]) init];
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContentView) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_scrollViewDelegateMultiplexer) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseThumbnailsConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseFormFillingBannerConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_pushStickyHeaderAwayConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerShadowOpacity) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_didStartObservingTextView) = 0;
  v2 = (v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastLayoutBounds);
  v3 = *(MEMORY[0x277CBF398] + 16);
  *v2 = *MEMORY[0x277CBF398];
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_nestedScrollViewInteraction) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inLayoutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastPDFScaleFactorForInterpageSpacingUpdate) = 0;
  sub_2154A2EDC();
  __break(1u);
}

void sub_215322A44(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch;
  if (*&v1[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch])
  {
    v3 = 5;
  }

  else
  {
    v4 = sub_2153B1B28(a1);
    v5 = *&v1[v2];
    *&v1[v2] = v4;
    v6 = v4;

    if (!v4)
    {
      __break(1u);
      return;
    }

    [v6 locationInView_];
    v8 = v7;
    v10 = v9;

    v3 = 0;
    v11 = &v1[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_startPoint];
    *v11 = v8;
    *(v11 + 1) = v10;
  }

  [v1 setState_];
}

void sub_215322AFC(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch];
  if (v2)
  {
    v12 = v2;
    if ((sub_21542E864(v12, a1) & 1) != 0 && ![v1 state])
    {
      [v12 locationInView_];
      v5 = v4;
      v7 = v6 - *&v1[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_startPoint];
      v8 = v5 - *&v1[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_startPoint + 8];
      if (sqrt(v7 * v7 + v8 * v8) > 3.0)
      {
        v9 = fabs(atan2(v8, v7));
        if (v9 > 2.7925268 || v9 < 0.34906585)
        {
          v11 = 5;
        }

        else
        {
          v11 = 3;
        }

        [v1 setState_];
      }
    }
  }
}

void sub_215322C08(uint64_t a1)
{
  if (![v1 state])
  {
    v3 = *&v1[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch];
    if (v3)
    {
      v4 = v3;
      if (sub_21542E864(v4, a1))
      {
        [v1 setState_];
      }
    }
  }
}

uint64_t sub_215322CA0()
{
  v0 = sub_2154A1D2C();
  v1 = [v0 trimmedString];

  if (v1)
  {
    v2 = sub_2154A1D6C();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  return v2;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_16Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_set_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

void sub_215322E88()
{
  sub_2153237D0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PaperDocumentTextAttachmentView.performTextSearch(queryString:ignoreCase:wholeWords:startsWith:usePattern:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x608);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_215305EC8;

  return v17(a1, a2, a3, a4, a5, a6);
}

void sub_2153237D0()
{
  if (!qword_281199698)
  {
    sub_2154A219C();
    v0 = sub_2154A2B5C();
    if (!v1)
    {
      atomic_store(v0, &qword_281199698);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2153238CC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_215323914(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PaperDocumentTextAttachmentView.DisplayMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaperDocumentTextAttachmentView.DisplayMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_215323ADC()
{
  result = qword_27CA5A280;
  if (!qword_27CA5A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5A280);
  }

  return result;
}

uint64_t sub_215323B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_215323BA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21549E56C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 9) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2151BD278;

  return sub_21531554C(a1, v9, v10, v1 + v6, v11, v13, v12);
}

uint64_t sub_215323E70(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215323F3C(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_215323F70(uint64_t a1)
{
  v4 = *(sub_21549E56C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2151BD36C;

  return sub_21530400C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_170Tm()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2153240F0(void (*a1)(char *, uint64_t, void), uint64_t a2)
{
  v5 = *(sub_21549E56C() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2153046C0(a1, a2, v6);
}

uint64_t sub_215324170(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_215324200(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_189Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_215324320(uint64_t a1)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = *(v3 + 80);
  v15 = (v4 + 32) & ~v4;
  v5 = *(v3 + 64) + 7;
  v6 = (v15 + v5) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v4 + v6 + 40) & ~v4;
  v8 = (v7 + v5) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v8 + 8) & ~v4;
  v14 = *(v1 + 16);
  v12 = *(v1 + v8);
  v13 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2151BD36C;

  return sub_21530A78C(a1, v14, v13, v1 + v15, v1 + v6, v1 + v7, v12, v1 + v9);
}

void sub_21532452C(_BYTE *a1@<X8>)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64) + 7;
  v6 = (v4 + ((v5 + ((v4 + 16) & ~v4)) & 0xFFFFFFFFFFFFFFF8) + 40) & ~v4;
  sub_21530B234(v1 + v6, *(v1 + ((v5 + v6) & 0xFFFFFFFFFFFFFFF8)), v1 + ((v4 + ((v5 + v6) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v4), a1);
}

uint64_t sub_2153245F0(uint64_t a1)
{
  v4 = *(sub_21549E56C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21530B7F0(a1, v6, v7, v1 + v5);
}

uint64_t sub_2153246E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD278;

  return sub_21530BDE8(a1, v4);
}

uint64_t objectdestroy_298Tm()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_215324844(uint64_t a1)
{
  v4 = *(sub_21549E56C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21530C04C(a1, v6, v7, v1 + v5);
}

unint64_t sub_215324954()
{
  result = qword_27CA5A440;
  if (!qword_27CA5A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5A440);
  }

  return result;
}

void sub_215324A10(BOOL *a1@<X8>)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2152F78D8(v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), a1);
}

void sub_215324AC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21549E56C() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_2152F9FD4(*(v0 + 16), v0 + v2, v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *__swift_project_boxed_opaque_existential_0Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
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

uint64_t sub_215324C84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_215324D68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD36C;

  return sub_21531E510(a1, v4);
}

uint64_t sub_215324E20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD36C;

  return sub_21531E510(a1, v4);
}

uint64_t sub_215324EEC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_215324F74()
{
  result = qword_281199D28;
  if (!qword_281199D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199D28);
  }

  return result;
}

unint64_t sub_215324FC8()
{
  result = qword_281199D30;
  if (!qword_281199D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281199D30);
  }

  return result;
}

uint64_t sub_215325044(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD36C;

  return sub_21534ACB0(a1, v4);
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

unint64_t sub_215325200()
{
  result = qword_27CA5A638;
  if (!qword_27CA5A638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5A638);
  }

  return result;
}

id sub_215325254()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  [v1 setHasPaperForm_];
  [v1 setDidRunPaperFormDetection_];

  return [v3 ic_save];
}

uint64_t objectdestroy_368Tm()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_215325360(uint64_t a1)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21530788C(a1, v1 + v4, v5);
}

uint64_t sub_215325414(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD36C;

  return sub_2151B55E0(a1, v4);
}

uint64_t sub_2153254CC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2151BD36C;

  return sub_2152F46BC(a1, a2, v7, v6);
}

uint64_t sub_215325580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2151BD36C;

  return sub_2152F4A0C();
}

uint64_t objectdestroy_2Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_215325708(uint64_t a1)
{
  v4 = *(sub_2154A219C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2151BD36C;

  return sub_2152F4CB4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_215325800(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2151BD36C;

  return sub_2151B55E0(a1, v4);
}

uint64_t ICAuthorHighlightsController.Value.value.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void *ICAuthorHighlightsController.Value.color.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t _sSo28ICAuthorHighlightsControllerC11NotesEditorE5ValueV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  if (v2)
  {
    if (!v5)
    {
      return 0;
    }

    sub_215325C60();
    v7 = v5;
    v8 = v2;
    v9 = sub_2154A291C();

    if ((v9 & 1) == 0)
    {
      return 0;
    }

    return v3 ^ v6 ^ 1u;
  }

  if (!v5)
  {
    return v3 ^ v6 ^ 1u;
  }

  return 0;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_215325B9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_215325BF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_215325C60()
{
  result = qword_2811994C0;
  if (!qword_2811994C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811994C0);
  }

  return result;
}

double static ICNoteEditorContextualInputAccessoryView.height.getter()
{
  if (qword_281199BD0 != -1)
  {
    swift_once();
  }

  return *&qword_281199BE0;
}

id ICNoteEditorContextualInputAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall ICNoteEditorContextualInputAccessoryView.updateLayout(with:)(__C::CGRect with)
{
  v2 = *(v1 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_scrollView);
  [v2 setFrame_];
  sub_21542A3E8(0);
  if (_UISolariumEnabled())
  {
    v7 = [v2 layer];
    [v2 bounds];
    v4 = v3;
    [v2 bounds];
    if (v5 >= v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    [v7 setCornerRadius_];
  }
}

uint64_t ICNoteEditorContextualInputAccessoryView.currentItems()()
{
  v1 = *(v0 + OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController);
  swift_beginAccess();
  v16[0] = v1[3];
  swift_beginAccess();
  v16[1] = v1[4];
  swift_beginAccess();
  v16[2] = v1[5];
  v15 = MEMORY[0x277D84F90];

  sub_21531B52C(0, 3, 0);
  v2 = 0;
  while (1)
  {
    v3 = v16[v2];
    if (v3 >> 62)
    {
      break;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_12:
    v11 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = *(v15 + 16);
    v12 = *(v15 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_21531B52C((v12 > 1), v13 + 1, 1);
    }

    ++v2;
    *(v15 + 16) = v13 + 1;
    *(v15 + 8 * v13 + 32) = v11;
    if (v2 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
      swift_arrayDestroy();
      return v15;
    }
  }

  v4 = sub_2154A2C8C();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_4:
  v14 = MEMORY[0x277D84F90];

  result = sub_2154A2E2C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x216069960](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_barButtonItem;
      swift_beginAccess();
      v10 = *&v8[v9];

      sub_2154A2E0C();
      sub_2154A2E4C();
      sub_2154A2E5C();
      sub_2154A2E1C();
    }

    while (v4 != v6);

    v11 = v14;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ICNoteEditorContextualInputAccessoryView.updateItemsWithScope(standardItems:characterItems:paragraphItems:)(Swift::OpaquePointer standardItems, Swift::OpaquePointer characterItems, Swift::OpaquePointer paragraphItems)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_toolbarController];
  v9 = sub_21542B050();
  v10 = OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope;
  v4[OBJC_IVAR___ICNoteEditorContextualInputAccessoryView_calculatedScope] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2154BE4F0;
  *(inited + 32) = 0;
  *(inited + 40) = standardItems;
  *(inited + 48) = 1;
  *(inited + 56) = characterItems;
  *(inited + 64) = 2;
  *(inited + 72) = paragraphItems;
  v12 = sub_2153283A0(inited, &qword_27CA5A7A0, &unk_2154BE670, sub_2153B1B24);
  swift_setDeallocating();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A698);
  swift_arrayDestroy();
  v13 = sub_21542B3C8(v12);

  if (!_UISolariumEnabled())
  {
LABEL_15:
    sub_21542A3E8(1);
    v35 = v4[v10];
    if (v35 == 3)
    {
      if ((v13 & 1) == 0)
      {
LABEL_23:
        [v4 invalidateIntrinsicContentSize];
        return;
      }

      v36 = 0;
    }

    else
    {
      v37 = sub_21542B050();
      v38 = (v37 != v35) | v13;
      if (v37 == v35)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }

      if ((v38 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    sub_21542B840(v36, 0);
    goto LABEL_23;
  }

  v39 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A610);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2154BE4F0;
  swift_beginAccess();
  *(v14 + 32) = v8[3];
  swift_beginAccess();
  *(v14 + 40) = v8[4];
  swift_beginAccess();
  *(v14 + 48) = v8[5];

  v15 = sub_2153265A4(v14);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A618);
  swift_arrayDestroy();
  v42 = v4;
  v40 = v10;
  if (!(v15 >> 62))
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_14:

    v4 = v42;
    v10 = v40;
    v13 = v39;
    goto LABEL_15;
  }

  v16 = sub_2154A2C8C();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v15 & 0xC000000000000001;
    v19 = &qword_2811994D0;
    v20 = 0x277D75D18uLL;
    p_class_meths = &OBJC_PROTOCOL___UIPointerInteractionDelegate.class_meths;
    v41 = v15 & 0xC000000000000001;
    do
    {
      if (v18)
      {
        v22 = MEMORY[0x216069960](v17, v15);
      }

      else
      {
        v22 = *(v15 + 8 * v17 + 32);
      }

      v23 = v22;
      v24 = *(p_class_meths[435] + v22);
      sub_2151A6C9C(0, v19);
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6A0);
      if (swift_dynamicCast())
      {
        v26 = v16;
        v27 = v15;
        v28 = p_class_meths;
        v29 = v20;
        v30 = v19;
        v31 = *(&v44 + 1);
        v32 = v45;
        __swift_project_boxed_opaque_existential_0Tm(&v43, *(&v44 + 1));
        v33 = *(v32 + 8);
        v34 = v32;
        v19 = v30;
        v20 = v29;
        p_class_meths = v28;
        v15 = v27;
        v16 = v26;
        v18 = v41;
        v33(v42, v31, v34);

        __swift_destroy_boxed_opaque_existential_0Tm(&v43);
      }

      else
      {

        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        sub_215327CF4(&v43);
      }

      ++v17;
    }

    while (v16 != v17);
    goto LABEL_14;
  }

  __break(1u);
}
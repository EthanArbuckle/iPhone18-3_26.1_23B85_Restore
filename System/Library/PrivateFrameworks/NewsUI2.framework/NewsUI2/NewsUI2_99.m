void sub_2191DCA4C(uint64_t a1, char *a2, uint64_t a3)
{
  v66 = sub_219BE5C64();
  v6 = *(v66 - 8);
  v7 = MEMORY[0x28223BE20](v66);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 + 104);
  v67 = a2;
  v61 = v10;
  if (v11 == 255 || (v11 & 1) == 0)
  {
    [a2 setAccessibilityIdentifier_];
  }

  else
  {
    v13 = *(v10 + 80);
    v12 = *(v10 + 88);
    v14 = *(v10 + 96);
    MEMORY[0x28223BE20](v7);
    sub_218FA396C(v13, v12, v14, 1);
    sub_218D98F7C();
    sub_2191D9030(&qword_280E907E0, sub_218D98F7C);
    sub_219BF6C74();
    sub_218DD1338(v13, v12, v14, v11);
    a2 = v67;
  }

  v62 = *(*(a3 + 472) + 16);
  v15 = *(v62 + 16);
  if (v15)
  {
    v68 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v69 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v16 = (v62 + 32);
    v65 = *MEMORY[0x277D6D340];
    v63 = (v6 + 8);
    v64 = (v6 + 104);
    do
    {
      v22 = *v16++;
      v21 = v22;
      if (v22 == 2)
      {
        v17 = *&a2[v69];
        if (!v17)
        {
          type metadata accessor for AccessoryButton();
          v30 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v31 = qword_280EDB508;
          v32 = v30[qword_280EDB508];
          v30[qword_280EDB508] = 1;
          v26 = v30;
          sub_219BE61D4();
          if (v32 != v30[v31] || !*&v26[qword_280F620E8] || !*&v26[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v33 = v66;
          (*v64)(v9, v65, v66);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v63)(v9, v33);
          v34 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v67;
          v29 = v69;
          goto LABEL_24;
        }
      }

      else
      {
        if (v21)
        {
          goto LABEL_10;
        }

        v17 = *&a2[v68];
        if (!v17)
        {
          type metadata accessor for AccessoryButton();
          v23 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v24 = qword_280EDB508;
          v25 = v23[qword_280EDB508];
          v23[qword_280EDB508] = 0;
          v26 = v23;
          sub_219BE61D4();
          if (v25 != v23[v24] || !*&v26[qword_280F620E8] || !*&v26[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v27 = v66;
          (*v64)(v9, v65, v66);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v63)(v9, v27);
          v28 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v67;
          v29 = v68;
LABEL_24:
          v35 = *&a2[v29];
          *&a2[v29] = v26;
          v18 = v26;

          v17 = 0;
          goto LABEL_9;
        }
      }

      v18 = v17;
LABEL_9:
      v19 = *(a3 + 488);
      v20 = v17;
      sub_218EC2D64(v19);

LABEL_10:
      --v15;
    }

    while (v15);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v36 = 0;
    v37 = 0;
    v38 = v61;
  }

  else
  {
    v38 = v61;
    v36 = v61[6];
    v37 = v61[7];
  }

  v39 = v62;
  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09EC0;
  v41 = v38[5];
  *(v40 + 32) = v38[4];
  *(v40 + 40) = v41;
  *(v40 + 48) = v36;
  *(v40 + 56) = v37;

  sub_219BE5F34();
  v43 = v42;

  if (v43)
  {
    v44 = sub_219BF53D4();
  }

  else
  {
    v44 = 0;
  }

  v45 = v67;
  [v67 setAccessibilityLabel_];

  v47 = v38[4];
  v46 = v38[5];
  v48 = &v45[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v48 = v47;
  *(v48 + 1) = v46;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v50 = [objc_opt_self() bundleForClass_];
  v51 = sub_219BDB5E4();
  v53 = v52;

  if (sub_219093144(0, v39) && sub_219093144(1u, v39))
  {
    if (!*(v38[9] + 16))
    {

      v51 = 0;
      v53 = 0;
    }

    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_219C0B8C0;
    *(v54 + 32) = v51;
    *(v54 + 40) = v53;
    *(v54 + 48) = 0u;
    *(v54 + 64) = 0u;
    sub_219BE5F34();
    v56 = v55;

    if (v56)
    {
      v57 = sub_219BF53D4();
    }

    else
    {
      v57 = 0;
    }

    v59 = v67;
    v60 = type metadata accessor for TagView();
    v70.receiver = v59;
    v70.super_class = v60;
    objc_msgSendSuper2(&v70, sel_setAccessibilityValue_, v57);
  }

  else
  {
    if (!*(v38[9] + 16))
    {

      return;
    }

    v57 = sub_219BF53D4();

    v58 = type metadata accessor for TagView();
    v71.receiver = v67;
    v71.super_class = v58;
    objc_msgSendSuper2(&v71, sel_setAccessibilityValue_, v57);
  }
}

void sub_2191DD2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v21);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v21, v22);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
    if (v5)
    {
      v7 = 1;
      v8 = &selRef_whiteColor;
      goto LABEL_6;
    }
  }

  else
  {
    sub_218D9828C(v21);
    v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  }

  v7 = 0;
  v8 = &selRef_labelColor;
LABEL_6:
  v9 = [objc_opt_self() *v8];
  [v6 setTextColor_];

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v11 = [v6 isEnabled];
  if (sub_219BED0C4())
  {
    v12 = [objc_opt_self() labelColor];
    if (!v11)
    {
LABEL_8:
      v13 = [v10 image];
      if (v13)
      {
        v14 = v13;
        if ([v13 renderingMode] == 2)
        {
          v15 = [objc_opt_self() placeholderTextColor];
          [v10 setTintColor_];

          [v10 setAlpha_];
LABEL_16:

          goto LABEL_20;
        }
      }

      [v10 setAlpha_];
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v12 = qword_280F617F8;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  [v10 setAlpha_];
  if (v7)
  {
    v14 = [objc_opt_self() whiteColor];
    [v10 setTintColor_];
    goto LABEL_16;
  }

  [v10 setTintColor_];
LABEL_20:

  if (*(*(*(a1 + 16) + 72) + 16))
  {
    v16 = v7;
  }

  else
  {
    v16 = 1;
  }

  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v17 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  v18 = [objc_opt_self() secondaryLabelColor];
  if (((v7 ^ 1) & 1) == 0)
  {
    v19 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v20 = [v18 resolvedColorWithTraitCollection_];

    v18 = [v20 colorWithAlphaComponent_];
  }

  [v17 setTextColor_];
}

void sub_2191DD6F4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v66 = a2;
  v67 = a1;
  v73 = sub_219BE5C64();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  v11 = objc_opt_self();
  v12 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v13 = sub_219BF6BB4();
  v14 = [objc_opt_self() configurationWithFont_];

  v15 = [v11 ts:v12 internalSystemImageNamed:v14 withConfiguration:?];
  if (v15)
  {

    [a4 setAccessibilityIdentifier_];
    v68 = *(*(a5 + 472) + 16);
    v16 = *(v68 + 16);
    v74 = a4;
    if (v16)
    {
      v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v17 = (v68 + 32);
      v71 = *MEMORY[0x277D6D340];
      v69 = (v8 + 8);
      v70 = (v8 + 104);
      v72 = a3;
      do
      {
        v23 = *v17++;
        v22 = v23;
        if (v23 == 2)
        {
          v18 = *&a4[v76];
          if (!v18)
          {
            type metadata accessor for AccessoryButton();
            v31 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v32 = qword_280EDB508;
            v33 = v31[qword_280EDB508];
            v31[qword_280EDB508] = 1;
            v27 = v31;
            sub_219BE61D4();
            if (v33 != v31[v32] || !*&v27[qword_280F620E8] || !*&v27[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v34 = v73;
            (*v70)(v10, v71, v73);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v69)(v10, v34);
            v35 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a4 = v74;
            v30 = v76;
            goto LABEL_21;
          }
        }

        else
        {
          if (v22)
          {
            goto LABEL_7;
          }

          v18 = *&a4[v75];
          if (!v18)
          {
            type metadata accessor for AccessoryButton();
            v24 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v25 = qword_280EDB508;
            v26 = v24[qword_280EDB508];
            v24[qword_280EDB508] = 0;
            v27 = v24;
            sub_219BE61D4();
            if (v26 != v24[v25] || !*&v27[qword_280F620E8] || !*&v27[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v28 = v73;
            (*v70)(v10, v71, v73);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v69)(v10, v28);
            v29 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a4 = v74;
            v30 = v75;
LABEL_21:
            v36 = *&a4[v30];
            *&a4[v30] = v27;
            v19 = v27;

            v18 = 0;
            a3 = v72;
            goto LABEL_6;
          }
        }

        v19 = v18;
LABEL_6:
        v20 = *(a5 + 488);
        v21 = v18;
        sub_218EC2D64(v20);

LABEL_7:
        --v16;
      }

      while (v16);
    }

    if (CGRectIsEmpty(*(a5 + 120)))
    {
      v37 = 0;
      a3 = 0;
    }

    else
    {

      v37 = v66;
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v76 = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09EC0;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();
    v42 = [v41 bundleForClass_];
    v43 = sub_219BDB5E4();
    v45 = v44;

    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    *(v39 + 48) = v37;
    *(v39 + 56) = a3;
    sub_219BE5F34();
    v47 = v46;

    if (v47)
    {
      v48 = sub_219BF53D4();
    }

    else
    {
      v48 = 0;
    }

    v49 = v74;
    [v74 setAccessibilityLabel_];

    v50 = [v41 bundleForClass_];
    v51 = sub_219BDB5E4();
    v53 = v52;

    v54 = &v49[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v54 = v51;
    v54[1] = v53;

    v55 = [v41 bundleForClass_];
    v56 = sub_219BDB5E4();
    v58 = v57;

    v59 = v68;
    if (sub_219093144(0, v68) && sub_219093144(1u, v59))
    {
      if (!v67)
      {

        v56 = 0;
        v58 = 0;
      }

      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_219C0B8C0;
      *(v60 + 32) = v56;
      *(v60 + 40) = v58;
      *(v60 + 48) = 0u;
      *(v60 + 64) = 0u;
      sub_219BE5F34();
      v62 = v61;

      if (v62)
      {
        v63 = sub_219BF53D4();
      }

      else
      {
        v63 = 0;
      }

      v65 = type metadata accessor for TagView();
      v77.receiver = v49;
      v77.super_class = v65;
      objc_msgSendSuper2(&v77, sel_setAccessibilityValue_, v63);
    }

    else
    {
      if (!v67)
      {

        return;
      }

      v63 = sub_219BF53D4();

      v64 = type metadata accessor for TagView();
      v78.receiver = v49;
      v78.super_class = v64;
      objc_msgSendSuper2(&v78, sel_setAccessibilityValue_, v63);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191DE034(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a3;
  v19[4] = a4;
  v7 = swift_allocObject();
  v19[0] = v7;
  v21 = *(a1 + 1);
  v20 = a1[3];
  v8 = *a1;
  v9 = *(a1 + 1);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v9;
  *(v7 + 48) = *(a1 + 32);
  v10 = __swift_project_boxed_opaque_existential_1(v19, a3);
  if (v8)
  {
    v11 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v12 = *v10;
    v13 = *v10 == 0;
    v14 = *v10 != 0;
    sub_2191E0948(&v21, v18, sub_2186E3374);
    sub_2191E0948(&v20, v18, sub_2186E352C);
    sub_2190D8F20(v12, 0, v14 | (v13 << 8));
    v15 = sub_219BF53D4();

    [v11 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v11 setHidden_];
  }

  else
  {
    v16 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
    sub_2191E0948(&v21, v18, sub_2186E3374);
    sub_2191E0948(&v20, v18, sub_2186E352C);
    [v16 setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void sub_2191DE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v26);
  v5 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_218D9828C(v26);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 32);
  sub_219534DC0(v6, *(a1 + 32), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  v16 = objc_opt_self();
  v17 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00);
  v18 = sub_219BF6BB4();
  v19 = [objc_opt_self() configurationWithFont_];

  v20 = [v16 ts:v17 internalSystemImageNamed:v19 withConfiguration:?];
  if (v20)
  {

    sub_2191DE034(a1, a2, &type metadata for FollowingMagazineModel, &off_282A81B18);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v21 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v22 = objc_opt_self();
    if (v7)
    {
      v23 = [v22 secondaryLabelColor];
      if (v5)
      {
        v24 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v25 = [v23 resolvedColorWithTraitCollection_];

        v23 = [v25 colorWithAlphaComponent_];
      }
    }

    else
    {
      v23 = [v22 placeholderTextColor];
    }

    [v21 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DE700(uint64_t a1, char *a2, uint64_t a3)
{
  v86 = sub_219BE5C64();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FollowingAudioModel();
  MEMORY[0x28223BE20](v80);
  v82 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v82, type metadata accessor for FollowingAudioModel);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v10 = sub_219BF6BB4();
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = sub_219BF53D4();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  if (!v13)
  {
    __break(1u);
    return;
  }

  [a2 setAccessibilityIdentifier_];
  v81 = *(*(a3 + 472) + 16);
  v14 = *(v81 + 16);
  v87 = a2;
  if (v14)
  {
    v88 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v89 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v15 = (v81 + 32);
    v85 = *MEMORY[0x277D6D340];
    v83 = (v6 + 8);
    v84 = (v6 + 104);
    do
    {
      v21 = *v15++;
      v20 = v21;
      if (v21 == 2)
      {
        v16 = *&a2[v89];
        if (!v16)
        {
          type metadata accessor for AccessoryButton();
          v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v30 = qword_280EDB508;
          v31 = v29[qword_280EDB508];
          v29[qword_280EDB508] = 1;
          v25 = v29;
          sub_219BE61D4();
          if (v31 != v29[v30] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v32 = v86;
          (*v84)(v8, v85, v86);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v83)(v8, v32);
          v33 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v87;
          v28 = v89;
          goto LABEL_21;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_7;
        }

        v16 = *&a2[v88];
        if (!v16)
        {
          type metadata accessor for AccessoryButton();
          v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v23 = qword_280EDB508;
          v24 = v22[qword_280EDB508];
          v22[qword_280EDB508] = 0;
          v25 = v22;
          sub_219BE61D4();
          if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v26 = v86;
          (*v84)(v8, v85, v86);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v83)(v8, v26);
          v27 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v87;
          v28 = v88;
LABEL_21:
          v34 = *&a2[v28];
          *&a2[v28] = v25;
          v17 = v25;

          v16 = 0;
          goto LABEL_6;
        }
      }

      v17 = v16;
LABEL_6:
      v18 = *(a3 + 488);
      v19 = v16;
      sub_218EC2D64(v18);

LABEL_7:
      --v14;
    }

    while (v14);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v35 = 0;
    v36 = 0;
    v37 = v82;
  }

  else
  {
    v37 = v82;
    v35 = v82[2];
    v36 = v82[3];
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09EC0;
  v39 = *v37;
  v40 = v37[1];
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  *(v38 + 48) = v35;
  *(v38 + 56) = v36;
  swift_bridgeObjectRetain_n();
  sub_219BE5F34();
  v42 = v41;

  if (v42)
  {
    v43 = sub_219BF53D4();
  }

  else
  {
    v43 = 0;
  }

  v44 = v81;
  [a2 setAccessibilityLabel_];

  v45 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v45 = v39;
  *(v45 + 1) = v40;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = [v47 bundleForClass_];
  v49 = sub_219BDB5E4();
  v51 = v50;

  if (!sub_219093144(0, v44) || !sub_219093144(1u, v44))
  {
    v54 = v82 + *(v80 + 40);
    v55 = *v54;
    v56 = *(v54 + 1);
    v57 = v54[16];
    v58 = v54[17];
    sub_2191E1978(v82, type metadata accessor for FollowingAudioModel);
    if (v58 == 1 && !(v56 | v55) && !v57)
    {

      return;
    }

    v59 = sub_219BF53D4();

    v60 = type metadata accessor for TagView();
    v91.receiver = a2;
    v91.super_class = v60;
    objc_msgSendSuper2(&v91, sel_setAccessibilityValue_, v59);
    goto LABEL_53;
  }

  v52 = *(v82 + *(v80 + 36)) | (*(v82 + *(v80 + 36) + 2) << 16);
  if ((v52 & 0x600000) != 0)
  {
    LODWORD(v89) = 0;
    v53 = 0;
  }

  else if ((v52 & 0x800000) != 0)
  {
    v53 = 0;
    LODWORD(v89) = HIWORD(v52) & 1;
  }

  else
  {
    LODWORD(v89) = 0;
    v53 = 1;
  }

  v61 = v82 + *(v80 + 40);
  v62 = *v61;
  v63 = *(v61 + 1);
  v64 = v61[16];
  v65 = v61[17];
  sub_2191E1978(v82, type metadata accessor for FollowingAudioModel);
  if (v65 == 1 && !(v63 | v62) && !v64)
  {

    v49 = 0;
    v51 = 0;
  }

  if (!v53)
  {
    v67 = 0;
    v69 = 0;
    if (!v89)
    {
      goto LABEL_46;
    }

LABEL_48:
    v72 = [v47 bundleForClass_];
    v70 = sub_219BDB5E4();
    v71 = v73;

    goto LABEL_49;
  }

  v66 = [v47 bundleForClass_];
  v67 = sub_219BDB5E4();
  v69 = v68;

  if (v89)
  {
    goto LABEL_48;
  }

LABEL_46:
  v70 = 0;
  v71 = 0;
LABEL_49:
  v74 = v87;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_219C0B8C0;
  *(v75 + 32) = v49;
  *(v75 + 40) = v51;
  *(v75 + 48) = v67;
  *(v75 + 56) = v69;
  *(v75 + 64) = v70;
  *(v75 + 72) = v71;
  sub_219BE5F34();
  v77 = v76;

  if (v77)
  {
    v59 = sub_219BF53D4();
  }

  else
  {
    v59 = 0;
  }

  v78 = type metadata accessor for TagView();
  v90.receiver = v74;
  v90.super_class = v78;
  objc_msgSendSuper2(&v90, sel_setAccessibilityValue_, v59);
LABEL_53:
}

void sub_2191DF1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingAudioModel();
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_2191E0948(a1, v8, type metadata accessor for FollowingAudioModel);
  sub_218D98194(a3, v31);
  v9 = v32;
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_beginAccess();
    swift_beginAccess();
    v9 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_218D9828C(v31);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v11 = *(v6 + 32);
  v12 = v8[v11];
  sub_219534DC0(v10, v8[v11], v9 & 1);
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v14 = [v10 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617F8;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = 0.7;
    if (v12)
    {
      v19 = 1.0;
    }

    [v13 setAlpha_];
    if (v9)
    {
      v20 = [objc_opt_self() whiteColor];
      [v13 setTintColor_];
    }

    else
    {
      [v13 setTintColor_];
    }

    goto LABEL_19;
  }

  v15 = [objc_opt_self() labelColor];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    if ([v16 renderingMode] == 2)
    {
      v18 = [objc_opt_self() placeholderTextColor];
      [v13 setTintColor_];

      [v13 setAlpha_];
      goto LABEL_19;
    }
  }

  [v13 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v21 = sub_219BF6BB4();
  v22 = [objc_opt_self() configurationWithFont_];

  v23 = sub_219BF53D4();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (v24)
  {

    sub_2191E0210(v8, a2, v9 & 1, type metadata accessor for FollowingAudioModel, &off_282A41AE0, type metadata accessor for FollowingAudioModel);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v25 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v26 = objc_opt_self();
    if (v12)
    {
      v27 = [v26 secondaryLabelColor];
      if (v9)
      {
        v28 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v29 = [v27 resolvedColorWithTraitCollection_];

        v27 = [v29 colorWithAlphaComponent_];
      }
    }

    else
    {
      v27 = [v26 placeholderTextColor];
    }

    [v25 setTextColor_];

    sub_2191E1978(v8, type metadata accessor for FollowingAudioModel);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DF748(uint64_t a1, char *a2, uint64_t a3)
{
  v88 = sub_219BE5C64();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FollowingMySportsModel();
  MEMORY[0x28223BE20](v81);
  v83 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v83, type metadata accessor for FollowingMySportsModel);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v9 = sub_219BF6BB4();
  v10 = [objc_opt_self() configurationWithFont_];

  v11 = sub_219BF53D4();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  if (!v12)
  {
    __break(1u);
    return;
  }

  [a2 setAccessibilityIdentifier_];
  v82 = *(*(a3 + 472) + 16);
  v13 = *(v82 + 16);
  v89 = a2;
  if (v13)
  {
    v90 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v14 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v15 = (v82 + 32);
    v86 = *MEMORY[0x277D6D340];
    v84 = (v6 + 8);
    v85 = (v6 + 104);
    do
    {
      v21 = *v15++;
      v20 = v21;
      if (v21 == 2)
      {
        v16 = *&a2[v90];
        if (!v16)
        {
          type metadata accessor for AccessoryButton();
          v30 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v31 = qword_280EDB508;
          v32 = v30[qword_280EDB508];
          v30[qword_280EDB508] = 1;
          v25 = v30;
          sub_219BE61D4();
          if (v32 != v30[v31] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v34 = v87;
          v33 = v88;
          (*v85)(v87, v86, v88);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v84)(v34, v33);
          v35 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v89;
          v29 = *&v89[v90];
          *&v89[v90] = v25;
          goto LABEL_21;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_7;
        }

        v16 = *&a2[v14];
        if (!v16)
        {
          type metadata accessor for AccessoryButton();
          v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v23 = qword_280EDB508;
          v24 = v22[qword_280EDB508];
          v22[qword_280EDB508] = 0;
          v25 = v22;
          sub_219BE61D4();
          if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v27 = v87;
          v26 = v88;
          (*v85)(v87, v86, v88);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v84)(v27, v26);
          v28 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v89;
          v29 = *&v89[v14];
          *&v89[v14] = v25;
LABEL_21:
          v17 = v25;

          v16 = 0;
          goto LABEL_6;
        }
      }

      v17 = v16;
LABEL_6:
      v18 = *(a3 + 488);
      v19 = v16;
      sub_218EC2D64(v18);

LABEL_7:
      --v13;
    }

    while (v13);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v36 = 0;
    v37 = 0;
    v38 = v83;
  }

  else
  {
    v38 = v83;
    v36 = v83[2];
    v37 = v83[3];
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  v40 = *v38;
  v41 = v38[1];
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  *(v39 + 48) = v36;
  *(v39 + 56) = v37;
  swift_bridgeObjectRetain_n();
  sub_219BE5F34();
  v43 = v42;

  if (v43)
  {
    v44 = sub_219BF53D4();
  }

  else
  {
    v44 = 0;
  }

  [a2 setAccessibilityLabel_];

  v45 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v45 = v40;
  *(v45 + 1) = v41;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = [v47 bundleForClass_];
  v49 = sub_219BDB5E4();
  v51 = v50;

  v52 = v82;
  if (!sub_219093144(0, v82) || !sub_219093144(1u, v52))
  {
    v55 = v83 + *(v81 + 40);
    v56 = *v55;
    v57 = *(v55 + 1);
    v58 = v55[16];
    v59 = v55[17];
    sub_2191E1978(v83, type metadata accessor for FollowingMySportsModel);
    if (v59 == 1 && !(v57 | v56) && !v58)
    {

      return;
    }

    v60 = sub_219BF53D4();

    v61 = type metadata accessor for TagView();
    v92.receiver = a2;
    v92.super_class = v61;
    objc_msgSendSuper2(&v92, sel_setAccessibilityValue_, v60);
    goto LABEL_53;
  }

  v53 = *(v83 + *(v81 + 36)) | (*(v83 + *(v81 + 36) + 2) << 16);
  if ((v53 & 0x600000) != 0)
  {
    LODWORD(v90) = 0;
    v54 = 0;
  }

  else if ((v53 & 0x800000) != 0)
  {
    v54 = 0;
    LODWORD(v90) = HIWORD(v53) & 1;
  }

  else
  {
    LODWORD(v90) = 0;
    v54 = 1;
  }

  v62 = v83 + *(v81 + 40);
  v63 = *v62;
  v64 = *(v62 + 1);
  v65 = v62[16];
  v66 = v62[17];
  sub_2191E1978(v83, type metadata accessor for FollowingMySportsModel);
  if (v66 == 1 && !(v64 | v63) && !v65)
  {

    v49 = 0;
    v51 = 0;
  }

  if (!v54)
  {
    v68 = 0;
    v70 = 0;
    if (!v90)
    {
      goto LABEL_46;
    }

LABEL_48:
    v73 = [v47 bundleForClass_];
    v71 = sub_219BDB5E4();
    v72 = v74;

    goto LABEL_49;
  }

  v67 = [v47 bundleForClass_];
  v68 = sub_219BDB5E4();
  v70 = v69;

  if (v90)
  {
    goto LABEL_48;
  }

LABEL_46:
  v71 = 0;
  v72 = 0;
LABEL_49:
  v75 = v89;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_219C0B8C0;
  *(v76 + 32) = v49;
  *(v76 + 40) = v51;
  *(v76 + 48) = v68;
  *(v76 + 56) = v70;
  *(v76 + 64) = v71;
  *(v76 + 72) = v72;
  sub_219BE5F34();
  v78 = v77;

  if (v78)
  {
    v60 = sub_219BF53D4();
  }

  else
  {
    v60 = 0;
  }

  v79 = type metadata accessor for TagView();
  v91.receiver = v75;
  v91.super_class = v79;
  objc_msgSendSuper2(&v91, sel_setAccessibilityValue_, v60);
LABEL_53:
}

uint64_t sub_2191E0210(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a4(0);
  v23 = v11;
  v24 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_2191E0948(a1, boxed_opaque_existential_1, a6);
  v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = *(v11 + 40);
  v15 = boxed_opaque_existential_1 + v14;
  if (*(boxed_opaque_existential_1 + v14 + 17) == 1)
  {
    v16 = v15[16];
    v17 = *(v15 + 1) | *v15;
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 == 0;
    }

    if (v18)
    {
      [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    }

    else
    {
      [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    }

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  else
  {
    v19 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    sub_2190D8F20(*(v13 + v14), *(v13 + v14 + 8), *(v13 + v14 + 16) | (*(v13 + v14 + 17) << 8));
    v20 = sub_219BF53D4();

    [v19 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v19 setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_2191E03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingMySportsModel();
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_2191E0948(a1, v8, type metadata accessor for FollowingMySportsModel);
  sub_218D98194(a3, v31);
  v9 = v32;
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_beginAccess();
    swift_beginAccess();
    v9 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_218D9828C(v31);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v11 = *(v6 + 32);
  v12 = v8[v11];
  sub_219534DC0(v10, v8[v11], v9 & 1);
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v14 = [v10 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617F8;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = 0.7;
    if (v12)
    {
      v19 = 1.0;
    }

    [v13 setAlpha_];
    if (v9)
    {
      v20 = [objc_opt_self() whiteColor];
      [v13 setTintColor_];
    }

    else
    {
      [v13 setTintColor_];
    }

    goto LABEL_19;
  }

  v15 = [objc_opt_self() labelColor];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    if ([v16 renderingMode] == 2)
    {
      v18 = [objc_opt_self() placeholderTextColor];
      [v13 setTintColor_];

      [v13 setAlpha_];
      goto LABEL_19;
    }
  }

  [v13 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v21 = sub_219BF6BB4();
  v22 = [objc_opt_self() configurationWithFont_];

  v23 = sub_219BF53D4();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (v24)
  {

    sub_2191E0210(v8, a2, v9 & 1, type metadata accessor for FollowingMySportsModel, &off_282A53EA8, type metadata accessor for FollowingMySportsModel);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v25 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v26 = objc_opt_self();
    if (v12)
    {
      v27 = [v26 secondaryLabelColor];
      if (v9)
      {
        v28 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v29 = [v27 resolvedColorWithTraitCollection_];

        v27 = [v29 colorWithAlphaComponent_];
      }
    }

    else
    {
      v27 = [v26 placeholderTextColor];
    }

    [v25 setTextColor_];

    sub_2191E1978(v8, type metadata accessor for FollowingMySportsModel);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191E0948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2191E09B0(uint64_t a1, char *a2, uint64_t a3)
{
  v68 = sub_219BE5C64();
  v6 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v62);
  v61 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v61, type metadata accessor for FollowingPuzzleHubModel);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v9 = sub_219BF6BB4();
  v10 = [objc_opt_self() configurationWithFont_];

  v11 = sub_219BF53D4();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  if (v12)
  {

    [a2 setAccessibilityIdentifier_];
    v63 = *(*(a3 + 472) + 16);
    v13 = *(v63 + 16);
    if (v13)
    {
      v69 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v70 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v14 = (v63 + 32);
      v66 = *MEMORY[0x277D6D340];
      v64 = (v6 + 8);
      v65 = (v6 + 104);
      do
      {
        v20 = *v14++;
        v19 = v20;
        if (v20 == 2)
        {
          v15 = *&a2[v70];
          if (!v15)
          {
            type metadata accessor for AccessoryButton();
            v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v30 = qword_280EDB508;
            v31 = v29[qword_280EDB508];
            v29[qword_280EDB508] = 1;
            v24 = v29;
            sub_219BE61D4();
            if (v31 != v29[v30] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v33 = v67;
            v32 = v68;
            (*v65)(v67, v66, v68);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v64)(v33, v32);
            v34 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            v28 = v70;
            goto LABEL_21;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_7;
          }

          v15 = *&a2[v69];
          if (!v15)
          {
            type metadata accessor for AccessoryButton();
            v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v22 = qword_280EDB508;
            v23 = v21[qword_280EDB508];
            v21[qword_280EDB508] = 0;
            v24 = v21;
            sub_219BE61D4();
            if (v23 != v21[v22] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v26 = v67;
            v25 = v68;
            (*v65)(v67, v66, v68);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
            sub_219BEB694();
            (*v64)(v26, v25);
            v27 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            v28 = v69;
LABEL_21:
            v35 = *&a2[v28];
            *&a2[v28] = v24;
            v16 = v24;

            v15 = 0;
            goto LABEL_6;
          }
        }

        v16 = v15;
LABEL_6:
        v17 = *(a3 + 488);
        v18 = v15;
        sub_218EC2D64(v17);

LABEL_7:
        --v13;
      }

      while (v13);
    }

    if (CGRectIsEmpty(*(a3 + 120)))
    {
      v36 = 0;
      v37 = 0;
      v38 = v61;
    }

    else
    {
      v38 = v61;
      v36 = v61[2];
      v37 = v61[3];
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09EC0;
    v41 = *v38;
    v40 = v38[1];
    *(v39 + 32) = *v38;
    *(v39 + 40) = v40;
    *(v39 + 48) = v36;
    *(v39 + 56) = v37;
    swift_bridgeObjectRetain_n();
    sub_219BE5F34();
    v43 = v42;

    if (v43)
    {
      v44 = sub_219BF53D4();
    }

    else
    {
      v44 = 0;
    }

    [a2 setAccessibilityLabel_];

    v45 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v45 = v41;
    *(v45 + 1) = v40;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v48 = sub_219BDB5E4();
    v50 = v49;

    v51 = v63;
    if (sub_219093144(0, v63) && sub_219093144(1u, v51))
    {
      v52 = *(v38 + *(v62 + 40));
      sub_2191E1978(v38, type metadata accessor for FollowingPuzzleHubModel);
      if (!v52)
      {

        v48 = 0;
        v50 = 0;
      }

      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_219C0B8C0;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      *(v53 + 48) = 0u;
      *(v53 + 64) = 0u;
      sub_219BE5F34();
      v55 = v54;

      if (v55)
      {
        v56 = sub_219BF53D4();
      }

      else
      {
        v56 = 0;
      }

      v59 = type metadata accessor for TagView();
      v71.receiver = a2;
      v71.super_class = v59;
      objc_msgSendSuper2(&v71, sel_setAccessibilityValue_, v56);
    }

    else
    {
      v57 = *(v38 + *(v62 + 40));
      sub_2191E1978(v38, type metadata accessor for FollowingPuzzleHubModel);
      if (!v57)
      {

        return;
      }

      v56 = sub_219BF53D4();

      v58 = type metadata accessor for TagView();
      v72.receiver = a2;
      v72.super_class = v58;
      objc_msgSendSuper2(&v72, sel_setAccessibilityValue_, v56);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191E12C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingPuzzleHubModel();
  v14 = v4;
  v15 = &off_282A6F6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_2191E0948(a1, boxed_opaque_existential_1, type metadata accessor for FollowingPuzzleHubModel);
  v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(v4 + 40);
  if (*(boxed_opaque_existential_1 + v7))
  {
    v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v9 = *(v6 + v7);
    if (v9)
    {
      v10 = *(v6 + *(v4 + 36));
    }

    else
    {
      v10 = 0;
    }

    sub_2190D8F20(v9, v10, (v9 == 0) << 8);
    v11 = sub_219BF53D4();

    [v8 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v8 setHidden_];
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_2191E1424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingPuzzleHubModel();
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_2191E0948(a1, v8, type metadata accessor for FollowingPuzzleHubModel);
  sub_218D98194(a3, v31);
  v9 = v32;
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_beginAccess();
    swift_beginAccess();
    v9 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_218D9828C(v31);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v11 = *(v6 + 32);
  v12 = v8[v11];
  sub_219534DC0(v10, v8[v11], v9 & 1);
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v14 = [v10 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617F8;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = 0.7;
    if (v12)
    {
      v19 = 1.0;
    }

    [v13 setAlpha_];
    if (v9)
    {
      v20 = [objc_opt_self() whiteColor];
      [v13 setTintColor_];
    }

    else
    {
      [v13 setTintColor_];
    }

    goto LABEL_19;
  }

  v15 = [objc_opt_self() labelColor];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    if ([v16 renderingMode] == 2)
    {
      v18 = [objc_opt_self() placeholderTextColor];
      [v13 setTintColor_];

      [v13 setAlpha_];
      goto LABEL_19;
    }
  }

  [v13 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v21 = sub_219BF6BB4();
  v22 = [objc_opt_self() configurationWithFont_];

  v23 = sub_219BF53D4();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (v24)
  {

    sub_2191E12C0(v8, a2);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v25 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v26 = objc_opt_self();
    if (v12)
    {
      v27 = [v26 secondaryLabelColor];
      if (v9)
      {
        v28 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v29 = [v27 resolvedColorWithTraitCollection_];

        v27 = [v29 colorWithAlphaComponent_];
      }
    }

    else
    {
      v27 = [v26 placeholderTextColor];
    }

    [v25 setTextColor_];

    sub_2191E1978(v8, type metadata accessor for FollowingPuzzleHubModel);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191E1978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191E19D8(uint64_t *a1, char *a2, uint64_t a3)
{
  v68 = a1;
  v73 = sub_219BE5C64();
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_219BF5114();
  v8 = sub_219BF5104();
  sub_2186C6148(0, &qword_280E8DB00);
  v9 = sub_219BF6BB4();
  v10 = [objc_opt_self() configurationWithFont_];

  v11 = [v8 imageWithConfiguration_];
  [a2 setAccessibilityIdentifier_];
  v69 = *(*(a3 + 472) + 16);
  v12 = *(v69 + 16);
  v74 = a2;
  if (v12)
  {
    v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v13 = (v69 + 32);
    v72 = *MEMORY[0x277D6D340];
    v70 = (v5 + 8);
    v71 = (v5 + 104);
    do
    {
      v19 = *v13++;
      v18 = v19;
      if (v19 == 2)
      {
        v14 = *&a2[v76];
        if (!v14)
        {
          type metadata accessor for AccessoryButton();
          v27 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v28 = qword_280EDB508;
          v29 = v27[qword_280EDB508];
          v27[qword_280EDB508] = 1;
          v23 = v27;
          sub_219BE61D4();
          if (v29 != v27[v28] || !*&v23[qword_280F620E8] || !*&v23[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v30 = v73;
          (*v71)(v7, v72, v73);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v70)(v7, v30);
          v31 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v74;
          v26 = v76;
          goto LABEL_20;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_6;
        }

        v14 = *&a2[v75];
        if (!v14)
        {
          type metadata accessor for AccessoryButton();
          v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v21 = qword_280EDB508;
          v22 = v20[qword_280EDB508];
          v20[qword_280EDB508] = 0;
          v23 = v20;
          sub_219BE61D4();
          if (v22 != v20[v21] || !*&v23[qword_280F620E8] || !*&v23[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v24 = v73;
          (*v71)(v7, v72, v73);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v70)(v7, v24);
          v25 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v74;
          v26 = v75;
LABEL_20:
          v32 = *&a2[v26];
          *&a2[v26] = v23;
          v15 = v23;

          v14 = 0;
          goto LABEL_5;
        }
      }

      v15 = v14;
LABEL_5:
      v16 = *(a3 + 488);
      v17 = v14;
      sub_218EC2D64(v16);

LABEL_6:
      --v12;
    }

    while (v12);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v33 = 0;
    v34 = 0;
    v35 = v68;
  }

  else
  {
    v35 = v68;
    v33 = v68[2];
    v34 = v68[3];
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09EC0;
  v37 = *v35;
  v38 = v35[1];
  *(v36 + 32) = *v35;
  *(v36 + 40) = v38;
  *(v36 + 48) = v33;
  *(v36 + 56) = v34;
  swift_bridgeObjectRetain_n();
  sub_219BE5F34();
  v40 = v39;

  if (v40)
  {
    v41 = sub_219BF53D4();
  }

  else
  {
    v41 = 0;
  }

  [a2 setAccessibilityLabel_];

  v42 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v42 = v37;
  *(v42 + 1) = v38;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = objc_opt_self();
  v45 = [v44 bundleForClass_];
  v46 = sub_219BDB5E4();
  v48 = v47;

  v49 = v69;
  if (sub_219093144(0, v69) && sub_219093144(1u, v49))
  {
    v50 = *(v35 + 61);
    if ((v50 & 0x60) != 0)
    {
      v51 = 0;
      v52 = 0;
      if ((*(v35 + 57) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v52 = v50 >= 0;
      v51 = (v50 < 0) & v50;
      if ((*(v35 + 57) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (*(v35 + 5) == 0 && !*(v35 + 56))
    {

      v46 = 0;
      v48 = 0;
    }

LABEL_41:
    if (v52)
    {
      v55 = [v44 bundleForClass_];
      v56 = sub_219BDB5E4();
      v76 = v57;

      if (!v51)
      {
LABEL_43:
        v58 = 0;
        v59 = 0;
LABEL_46:
        v62 = v74;
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_219C0B8C0;
        *(v63 + 32) = v46;
        *(v63 + 40) = v48;
        v64 = v76;
        *(v63 + 48) = v56;
        *(v63 + 56) = v64;
        *(v63 + 64) = v58;
        *(v63 + 72) = v59;
        sub_219BE5F34();
        v66 = v65;

        if (v66)
        {
          v53 = sub_219BF53D4();
        }

        else
        {
          v53 = 0;
        }

        v67 = type metadata accessor for TagView();
        v77.receiver = v62;
        v77.super_class = v67;
        objc_msgSendSuper2(&v77, sel_setAccessibilityValue_, v53);
        goto LABEL_50;
      }
    }

    else
    {
      v56 = 0;
      v76 = 0;
      if (!v51)
      {
        goto LABEL_43;
      }
    }

    v75 = v56;
    v60 = [v44 bundleForClass_];
    v56 = v75;
    v58 = sub_219BDB5E4();
    v59 = v61;

    goto LABEL_46;
  }

  if ((*(v35 + 57) & 1) != 0 && *(v35 + 5) == 0 && !*(v35 + 56))
  {

    return;
  }

  v53 = sub_219BF53D4();

  v54 = type metadata accessor for TagView();
  v78.receiver = v74;
  v78.super_class = v54;
  objc_msgSendSuper2(&v78, sel_setAccessibilityValue_, v53);
LABEL_50:
}

uint64_t sub_2191E2394(uint64_t a1, uint64_t a2, char a3)
{
  v23[3] = &type metadata for FollowingFoodModel;
  v23[4] = &off_282A42E50;
  v6 = swift_allocObject();
  v23[0] = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v11;
  v6[3] = *(a1 + 32);
  *(v6 + 62) = *(a1 + 46);
  v12 = __swift_project_boxed_opaque_existential_1(v23, &type metadata for FollowingFoodModel);
  if (v10)
  {
    if (v8 | v7 || v9)
    {
      v20 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
      sub_2189CEE20(a1, v22);
      [v20 setHidden_];
    }

    else
    {
      v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
      sub_2189CEE20(a1, v22);
      [v13 setHidden_];
    }

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  else
  {
    v14 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v15 = v12[5];
    v16 = v12[6];
    v17 = *(v12 + 56);
    v18 = *(v12 + 57);
    sub_2189CEE20(a1, v22);
    sub_2190D8F20(v15, v16, v17 | (v18 << 8));
    v19 = sub_219BF53D4();

    [v14 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v14 setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_2191E2560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v25);
  v5 = v26;
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_218D9828C(v25);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 58);
  sub_219534DC0(v6, *(a1 + 58), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_219BF5114();
  v16 = sub_219BF5104();
  sub_2186C6148(0, &qword_280E8DB00);
  v17 = sub_219BF6BB4();
  v18 = [objc_opt_self() configurationWithFont_];

  v19 = [v16 imageWithConfiguration_];
  sub_2191E2394(a1, a2, v5 & 1);
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v20 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  v21 = objc_opt_self();
  if (v7)
  {
    v22 = [v21 secondaryLabelColor];
    if (v5)
    {
      v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v24 = [v22 resolvedColorWithTraitCollection_];

      v22 = [v24 colorWithAlphaComponent_];
    }
  }

  else
  {
    v22 = [v21 placeholderTextColor];
  }

  [v20 setTextColor_];
}

void sub_2191E2A08(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v59 = a1;
  v65 = sub_219BE5C64();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_219BF5114();
  v10 = sub_219BF5094();
  sub_2186C6148(0, &qword_280E8DB00);
  v11 = sub_219BF6BB4();
  v12 = [objc_opt_self() configurationWithFont_];

  v13 = [v10 imageWithConfiguration_];
  [a3 setAccessibilityIdentifier_];
  v60 = *(*(a4 + 472) + 16);
  v14 = *(v60 + 16);
  v66 = a3;
  if (v14)
  {
    v67 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v68 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v15 = (v60 + 32);
    v63 = *MEMORY[0x277D6D340];
    v61 = (v7 + 8);
    v62 = (v7 + 104);
    v64 = a2;
    do
    {
      v21 = *v15++;
      v20 = v21;
      if (v21 == 2)
      {
        v16 = *&a3[v68];
        if (!v16)
        {
          type metadata accessor for AccessoryButton();
          v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v30 = qword_280EDB508;
          v31 = v29[qword_280EDB508];
          v29[qword_280EDB508] = 1;
          v25 = v29;
          sub_219BE61D4();
          if (v31 != v29[v30] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v32 = v65;
          (*v62)(v9, v63, v65);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v61)(v9, v32);
          v33 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a3 = v66;
          v28 = v68;
          goto LABEL_20;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_6;
        }

        v16 = *&a3[v67];
        if (!v16)
        {
          type metadata accessor for AccessoryButton();
          v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v23 = qword_280EDB508;
          v24 = v22[qword_280EDB508];
          v22[qword_280EDB508] = 0;
          v25 = v22;
          sub_219BE61D4();
          if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v26 = v65;
          (*v62)(v9, v63, v65);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton);
          sub_219BEB694();
          (*v61)(v9, v26);
          v27 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a3 = v66;
          v28 = v67;
LABEL_20:
          v34 = *&a3[v28];
          *&a3[v28] = v25;
          v17 = v25;

          v16 = 0;
          a2 = v64;
          goto LABEL_5;
        }
      }

      v17 = v16;
LABEL_5:
      v18 = *(a4 + 488);
      v19 = v16;
      sub_218EC2D64(v18);

LABEL_6:
      --v14;
    }

    while (v14);
  }

  if (CGRectIsEmpty(*(a4 + 120)))
  {
    v35 = 0;
    a2 = 0;
  }

  else
  {

    v35 = v59;
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09EC0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v39 = [v38 bundleForClass_];
  v40 = sub_219BDB5E4();
  v42 = v41;

  *(v36 + 32) = v40;
  *(v36 + 40) = v42;
  *(v36 + 48) = v35;
  *(v36 + 56) = a2;
  sub_219BE5F34();
  v44 = v43;

  if (v44)
  {
    v45 = sub_219BF53D4();
  }

  else
  {
    v45 = 0;
  }

  v46 = v66;
  [v66 setAccessibilityLabel_];

  v47 = [v38 bundleForClass_];
  v48 = sub_219BDB5E4();
  v50 = v49;

  v51 = &v46[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v51 = v48;
  v51[1] = v50;

  v52 = [v38 bundleForClass_];
  sub_219BDB5E4();

  v53 = v60;
  if (sub_219093144(0, v60) && sub_219093144(1u, v53))
  {
    sub_219BE5F34();
    if (v54)
    {
      v55 = sub_219BF53D4();
    }

    else
    {
      v55 = 0;
    }

    v56 = v66;
    v57 = type metadata accessor for TagView();
    v69.receiver = v56;
    v69.super_class = v57;
    objc_msgSendSuper2(&v69, sel_setAccessibilityValue_, v55);
  }
}

void sub_2191E32A4(char a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v24);
  v5 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_218D9828C(v24);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  sub_219534DC0(v6, a1 & 1, v5 & 1);
  v7 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v8 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v9 = qword_280F617F8;
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    [v7 setAlpha_];
    if (v5)
    {
      v14 = [objc_opt_self() whiteColor];
      [v7 setTintColor_];
    }

    else
    {
      [v7 setTintColor_];
    }

    goto LABEL_19;
  }

  v9 = [objc_opt_self() labelColor];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = [v7 image];
  if (v10)
  {
    v11 = v10;
    if ([v10 renderingMode] == 2)
    {
      v12 = [objc_opt_self() placeholderTextColor];
      [v7 setTintColor_];

      [v7 setAlpha_];
      goto LABEL_19;
    }
  }

  [v7 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_219BF5114();
  v15 = sub_219BF5094();
  sub_2186C6148(0, &qword_280E8DB00);
  v16 = sub_219BF6BB4();
  v17 = [objc_opt_self() configurationWithFont_];

  v18 = [v15 imageWithConfiguration_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v19 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  v20 = objc_opt_self();
  if (a1)
  {
    v21 = [v20 secondaryLabelColor];
    if (v5)
    {
      v22 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v23 = [v21 resolvedColorWithTraitCollection_];

      v21 = [v23 colorWithAlphaComponent_];
    }
  }

  else
  {
    v21 = [v20 placeholderTextColor];
  }

  [v19 setTextColor_];
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2191E379C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 89))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 88);
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

uint64_t sub_2191E37E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_2191E3858()
{
  v1 = *(v0 + 88);
  if (v1 <= 2)
  {
    v5 = 0x6C656E6E616863;
    if (v1 != 1)
    {
      v5 = 0x6E656D6D6F636572;
    }

    if (*(v0 + 88))
    {
      return v5;
    }

    else
    {
      return 0x486567617373656DLL;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x7365727574616566;
    if (v1 != 3)
    {
      v3 = 0x6C69616D65;
    }

    if (*(v0 + 88) <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2191E3954(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2191E3A50(v7, v9) & 1;
}

uint64_t sub_2191E3A50(uint64_t a1, uint64_t a2)
{
  v2 = 0xED00007265646165;
  v3 = 0x486567617373656DLL;
  v4 = *(a1 + 88);
  if (v4 <= 2)
  {
    v11 = 0xE700000000000000;
    v12 = 0x6C656E6E616863;
    if (v4 != 1)
    {
      v12 = 0x6E656D6D6F636572;
      v11 = 0xEB00000000646564;
    }

    if (*(a1 + 88))
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x486567617373656DLL;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xED00007265646165;
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = 0x8000000219D10830;
    if (v4 != 5)
    {
      v5 = 0xD000000000000015;
      v6 = 0x8000000219D10810;
    }

    v7 = 0xE800000000000000;
    v8 = 0x7365727574616566;
    if (v4 != 3)
    {
      v8 = 0x6C69616D65;
      v7 = 0xE500000000000000;
    }

    if (*(a1 + 88) <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  v13 = *(a2 + 88);
  if (v13 <= 2)
  {
    if (*(a2 + 88))
    {
      if (v13 == 1)
      {
        v2 = 0xE700000000000000;
        if (v9 != 0x6C656E6E616863)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6E656D6D6F636572;
      v2 = 0xEB00000000646564;
    }

    if (v9 != v3)
    {
LABEL_42:
      v15 = sub_219BF78F4();
      goto LABEL_43;
    }
  }

  else if (*(a2 + 88) > 4u)
  {
    if (v13 == 5)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v14 = 0xD000000000000015;
    }

    if (v13 == 5)
    {
      v2 = 0x8000000219D10830;
    }

    else
    {
      v2 = 0x8000000219D10810;
    }

    if (v9 != v14)
    {
      goto LABEL_42;
    }
  }

  else if (v13 == 3)
  {
    v2 = 0xE800000000000000;
    if (v9 != 0x7365727574616566)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0xE500000000000000;
    if (v9 != 0x6C69616D65)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v10 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_2191E3C88()
{
  sub_2191E3EB0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void *sub_2191E3CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE6234();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OfflineDownloadMonitor();
  v8 = swift_allocObject();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D560], v4);
  sub_2191E3E58();
  swift_allocObject();
  v8[4] = sub_219BE2174();
  v10[1] = 0;
  sub_2191E3EB0(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
  swift_allocObject();
  v8[5] = sub_219BE2174();
  v8[2] = a1;
  v8[3] = a2;

  return v8;
}

void sub_2191E3E58()
{
  if (!qword_280EE7AF8)
  {
    sub_219BE6234();
    v0 = sub_219BE21C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7AF8);
    }
  }
}

void sub_2191E3EB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2191E3F58(void **a1, void (*a2)(__int128 *__return_ptr, void *), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a4;
  sub_21896FA3C();
  v68 = *(v10 - 8);
  v11 = *(v68 + 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v66 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v66 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  v21 = *a1;
  if ([v21 areMagazinesEnabled] && (a2(&v79, v21), v22 = v79, (~v79 & 0xF000000000000007) != 0))
  {
    v40 = sub_218DB24B0();
    v41 = *(a5 + 56);
    if (v40)
    {
      v42 = sub_219BDFA44();
      (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
      v75 = v41;
      sub_2187B171C(&v76, &v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v71 + 1))
      {
        sub_21875F93C(&v70, &v72);
        *&v70 = v22;
        v43 = sub_2194DA78C(&v72);
        v45 = v44;
        v47 = v46;
        __swift_destroy_boxed_opaque_existential_1(&v72);
      }

      else
      {
        sub_2187B1CC0(&v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v43 = qword_280ED32D8;
        v45 = qword_280ED32E0;
        v47 = qword_280ED32E8;

        sub_2188202A8(v45);
      }

      v69 = v22;
      v71 = 0u;
      v70 = 0u;
      v55 = v66;
      sub_2189B4E2C(v20, v66);
      sub_2187B171C(&v79, &v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v56 = v68[80];
      v68 = v20;
      v57 = (v56 + 24) & ~v56;
      v58 = (v11 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v58 + 47) & 0xFFFFFFFFFFFFFFF8;
      v67 = v22;
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      sub_2189B4EAC(v55, v60 + v57);
      v61 = v60 + v58;
      v62 = v73;
      *v61 = v72;
      *(v61 + 16) = v62;
      *(v61 + 32) = v74;
      v63 = (v60 + v59);
      v64 = (v60 + ((v59 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v63 = 0;
      v63[1] = 0;
      *v64 = v43;
      v64[1] = v45;
      v64[2] = v47;

      sub_2188202A8(v45);
      sub_2186CF94C();
      sub_2189B4DD4();
      v65 = v82;
      sub_219BEB464();
      if (v65)
      {

        sub_218806FD0(&v70);
        sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_218970170(v67);

        v39 = v45;
        goto LABEL_12;
      }

      sub_2187FABEC(v45);
      sub_2187B1CC0(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v79, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218A42D80(v68);
      sub_218806FD0(&v70);
      sub_218970170(v67);
    }

    else
    {
      *&v79 = *(a5 + 56);
      *&v76 = v22;
      sub_2186CF94C();
      sub_2189B4DD4();
      v48 = v82;
      sub_219BEB484();
      if (v48)
      {
        LODWORD(v82) = sub_219BF61F4();
        sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_219C09EC0;
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        *&v76 = v22;
        sub_219BF7484();
        v50 = v79;
        v51 = MEMORY[0x277D837D0];
        *(v49 + 56) = MEMORY[0x277D837D0];
        v52 = sub_2186FC3BC();
        *(v49 + 64) = v52;
        *(v49 + 32) = v50;
        *&v79 = 0;
        *(&v79 + 1) = 0xE000000000000000;
        *&v76 = v48;
        sub_2186CFDE4(0, &qword_280E8B580);
        sub_219BF7484();
        v53 = v79;
        *(v49 + 96) = v51;
        *(v49 + 104) = v52;
        *(v49 + 72) = v53;
        sub_2186C66AC();
        v54 = sub_219BF6F44();
        sub_219BE5314();
        sub_218970170(v22);
      }

      else
      {
        sub_218970170(v22);
      }
    }
  }

  else
  {
    v23 = *(a5 + 56);
    v24 = swift_allocObject();
    sub_218718690(a6, v24 + 16);
    *(v24 + 56) = 1;
    v25 = sub_219BDFA44();
    v26 = v16;
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v75 = v23;
    sub_2187B171C(&v76, &v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v71 + 1))
    {
      sub_21875F93C(&v70, &v72);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v27 = qword_280ED32D8;
      v28 = qword_280ED32E0;
      v29 = qword_280ED32E8;

      sub_2188202A8(v28);
      __swift_destroy_boxed_opaque_existential_1(&v72);
    }

    else
    {
      sub_2187B1CC0(&v70, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v27 = qword_280ED32D8;
      v28 = qword_280ED32E0;
      v29 = qword_280ED32E8;

      sub_2188202A8(v28);
    }

    v69 = v24;
    v71 = 0u;
    v70 = 0u;
    sub_2189B4E2C(v26, v13);
    sub_2187B171C(&v79, &v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v30 = (v68[80] + 24) & ~v68[80];
    v68 = v26;
    v31 = (v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 47) & 0xFFFFFFFFFFFFFFF8;
    v67 = v24;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    sub_2189B4EAC(v13, v33 + v30);
    v34 = v33 + v31;
    v35 = v73;
    *v34 = v72;
    *(v34 + 16) = v35;
    *(v34 + 32) = v74;
    v36 = (v33 + v32);
    v37 = (v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v36 = 0;
    v36[1] = 0;
    *v37 = v27;
    v37[1] = v28;
    v37[2] = v29;

    sub_2188202A8(v28);
    sub_2186CF94C();
    sub_2189B4DD4();
    v38 = v82;
    sub_219BEB464();
    if (v38)
    {

      sub_218806FD0(&v70);
      sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      v39 = v28;
LABEL_12:
      sub_2187FABEC(v39);
      sub_2187B1CC0(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v79, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218A42D80(v68);
      return;
    }

    sub_2187FABEC(v28);
    sub_2187B1CC0(&v76, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v79, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218A42D80(v68);
    sub_218806FD0(&v70);
  }
}

void sub_2191E4A34()
{
  sub_219BF61F4();
  sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_2186C66AC();
  v1 = sub_219BF6F44();
  sub_219BE5314();
}

uint64_t sub_2191E4B88()
{
  sub_2188134F8(0, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_219BE8CD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8CE4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_218819B4C(v2, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_219BE8CB4();
    result = (*(v4 + 8))(v6, v3);
    if (v7)
    {
      return result;
    }
  }

  result = sub_219BE8D14();
  if (result)
  {
    return sub_219BE8D64();
  }

  return result;
}

double sub_2191E4D50@<D0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MastheadViewBackground();
  MEMORY[0x28223BE20](v7);
  v9 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v201 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v201 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v201 - v17;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v225 = v3;
    if (sub_219BED0C4())
    {
      if (sub_219BE8D14())
      {
        v226 = 72.0;
        goto LABEL_11;
      }

      sub_219BE8D34();
      v21 = v22 + 72.0;
    }

    else
    {
      sub_2191E4B88();
      v21 = 180.0 - v20;
    }

    v226 = v21;
LABEL_11:
    v211 = v12;
    v23 = sub_219BE8D54();
    sub_218F95F74(a1, v23);
    v228 = v24;
    v26 = v25;

    v229 = a1[1];
    v27 = [v229 sportsTheme];
    if (v27)
    {
      v28 = [v27 sportsLogoMastheadLeadingOffset];
      swift_unknownObjectRelease();
      v29 = v28;
    }

    else
    {
      v29 = 0.0;
    }

    v30 = v26;
    v31 = sub_219BE8D14();
    v32 = 16.0;
    if ((v31 & 1) == 0)
    {
      sub_219BE8D24();
    }

    v33 = v29 + v32;
    v34 = sub_219BE8D54();
    sub_218F9605C(a1, v34);
    v36 = v35;

    sub_2191E71F4(a1);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = sub_2191E65D0(a1);
    sub_219BE8DA4();
    Width = CGRectGetWidth(v236);
    v227 = v36;
    y = v33;
    v47 = Width - v228 - v36 - v33;
    sub_219BE8D24();
    v49 = v47 - v48;
    v213 = v38;
    v237.origin.x = v38;
    v217 = v40;
    *&v237.origin.y = v40;
    v218 = v42;
    v237.size.width = v42;
    v219 = v44;
    v237.size.height = v44;
    v50 = CGRectGetWidth(v237);
    v51 = sub_2191E7568(a1, v49 - v50 - v45);
    v53 = v52;
    v55 = v54;
    v224 = v51;
    v56 = sub_219BE8D54();
    v57 = sub_218F95C74(a1, v56);

    if (v57)
    {
      v58 = v57;
      v59 = sub_219BF6794();
      [v59 lineHeight];

      sub_219BF6784();
      v61 = v60;
      v63 = v62;
    }

    else
    {
      v61 = 0.0;
      v63 = 0.0;
    }

    v214 = v53;
    if (v53 > v61)
    {
      v64 = v53;
    }

    else
    {
      v64 = v61;
    }

    v65 = v228 + v227 + v64;
    sub_2191E7898(v65);
    v67 = v226 + v66;
    v68 = v30;
    v69 = v67 - v30;
    v70 = v55;
    v226 = v63;
    v71 = (v67 - (v55 + v63)) * 0.5;
    if ([v229 sportsType] == 3 && (objc_msgSend(v229, sel_sportsLeagueType) & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v72 = v226 + v71;
    }

    else
    {
      v72 = v71;
      v71 = v70 + v71;
    }

    v73 = v69 * 0.5;
    v74 = *a2;
    v216 = a2[1];
    v220 = sub_2191E7700(a1);
    v221 = v75;
    v222 = v76;
    v223 = v77;
    v78 = sub_219BE8D54();
    v79 = [v78 horizontalSizeClass];

    v212 = v74;
    if (v79 == 2)
    {
      v238.origin.x = sub_2191E7BBC(a1, y, *&v74, v65);
      v238.origin.y = v73;
      v238.size.width = v228;
      v238.size.height = v68;
      v239 = CGRectIntegral(v238);
      x = v239.origin.x;
      y = v239.origin.y;
      v228 = v239.size.width;
      height = v239.size.height;
      v240.origin.x = v227 + CGRectGetMaxX(v239);
      v240.origin.y = v72;
      v240.size.width = v214;
      v240.size.height = v70;
      v241 = CGRectIntegral(v240);
      v227 = v241.origin.x;
      v214 = v241.origin.y;
      v211 = *&v241.size.width;
      v210 = v241.size.height;
      v242.origin.x = CGRectGetMinX(v241);
      v242.origin.y = v71;
      v242.size.width = v61;
      v242.size.height = v226;
      v243 = CGRectIntegral(v242);
      v226 = v243.origin.x;
      v209 = v243.origin.y;
      v208 = v243.size.width;
      v207 = v243.size.height;
      sub_219BE8DA4();
      v82 = CGRectGetWidth(v244);
      sub_219BE8D24();
      v84 = v82 - v83;
      v85 = v213;
      v245.origin.x = v213;
      v86 = *&v217;
      *&v245.origin.y = v217;
      v87 = v218;
      v245.size.width = v218;
      v88 = v219;
      v245.size.height = v219;
      v89 = v84 - CGRectGetWidth(v245);
      v205 = x;
      v246.origin.x = x;
      v246.origin.y = y;
      v246.size.width = v228;
      v206 = height;
      v246.size.height = height;
      MidY = CGRectGetMidY(v246);
      v247.origin.x = v85;
      v247.origin.y = v86;
      v247.size.width = v87;
      v247.size.height = v88;
      v91 = MidY + CGRectGetHeight(v247) * -0.5;
      v248.origin.x = v85;
      v248.origin.y = v86;
      v248.size.width = v87;
      v248.size.height = v88;
      v92 = CGRectGetWidth(v248);
      v249.origin.x = v85;
      v249.origin.y = v86;
      v249.size.width = v87;
      v249.size.height = v88;
      v250.size.height = CGRectGetHeight(v249);
      v250.origin.x = v89;
      v250.origin.y = v91;
      v250.size.width = v92;
      v93 = v212;
      v251 = CGRectIntegral(v250);
      v94 = v251.origin.x;
      v95 = v251.origin.y;
      v219 = v251.size.width;
      v218 = v251.size.height;
      v96 = *a1;
      swift_unknownObjectRetain();
      v97 = sub_219BE8D54();
      v98 = __swift_project_boxed_opaque_existential_1(v225 + 3, v225[6]);
      sub_218718690(*v98 + 16, &v233);
      *v15 = 0;
      *(v15 + 1) = 0;
      v99 = v216;
      *(v15 + 2) = v93;
      *(v15 + 3) = v99;
      sub_218718690(&v233, &v15[v7[12]]);
      sub_219BF6394();
      swift_getObjectType();
      v100 = FCTagProviding.forceBasicTagMasthead.getter();
      swift_unknownObjectRelease();
      if ((v100 & 1) == 0 && [v96 theme])
      {
        v225 = v96;
        *&v101 = COERCE_DOUBLE(swift_getObjectType());
        [v97 horizontalSizeClass];
        [v97 userInterfaceIdiom];
        v102 = sub_219BF6144();
        if (v102)
        {
          v103 = v102;
          [v97 horizontalSizeClass];
          v217 = v97;
          [v97 userInterfaceIdiom];
          v204 = *&v101;
          v104 = sub_219BF6174();
          v213 = v95;
          if (!v104)
          {
            v104 = v103;
          }

          v105 = v104;
          MaxY = COERCE_DOUBLE(sub_21897A4D4());
          v231 = MaxY;
          v106 = sub_2191E7E84(&qword_280E8E780, sub_21897A4D4);
          v232 = v106;
          v230 = v103;
          v203 = COERCE_DOUBLE(v103);
          v97 = v217;
          [v217 displayScale];
          sub_219BE8814();
          swift_allocObject();
          *&v15[v7[8]] = sub_219BE8804();
          v231 = MaxY;
          v232 = v106;
          v230 = v105;
          v107 = v105;
          [v97 displayScale];
          swift_allocObject();
          *&v15[v7[9]] = sub_219BE8804();
          [v97 horizontalSizeClass];
          [v97 userInterfaceIdiom];
          v108 = sub_219BF6184();
          swift_unknownObjectRelease();

          v95 = v213;
          v96 = v225;
          goto LABEL_41;
        }

        swift_unknownObjectRelease();
        v96 = v225;
      }

      *&v15[v7[8]] = 0;
      *&v15[v7[9]] = 0;
      v108 = 4;
LABEL_41:
      *&v15[v7[10]] = v108;
      v144 = [v229 theme];
      if (v144 && (v145 = [v144 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v145))
      {
        v225 = v96;
        v217 = v97;
        v146 = v7[6];
        v147 = v145;
        sub_219BE73D4();
        v148 = sub_219BE7434();
        v149 = *(*(v148 - 8) + 56);
        v149(&v15[v146], 0, 1, v148);
        v150 = [v229 theme];
        if (!v150 || (v151 = [v150 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), !v151))
        {
          v152 = v147;
        }

        v153 = v7[7];
        sub_219BE73D4();

        v149(&v15[v153], 0, 1, v148);
        v97 = v217;
        v96 = v225;
      }

      else
      {
        v154 = v7[6];
        v155 = sub_219BE7434();
        v156 = *(*(v155 - 8) + 56);
        v156(&v15[v154], 1, 1, v155);
        v156(&v15[v7[7]], 1, 1, v155);
      }

      v157 = __swift_project_boxed_opaque_existential_1(&v233, v234);
      v158 = sub_2191E6D9C(v96, *v157);
      v160 = v159;
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v233);
      *(v15 + 4) = v158;
      v15[v7[11]] = v160 & 1;
      sub_2191E7B58(v15, v18);
      *a3 = v93;
      *(a3 + 8) = v99;
      v161 = y;
      *(a3 + 16) = v205;
      *(a3 + 24) = v161;
      v162 = v206;
      *(a3 + 32) = v228;
      *(a3 + 40) = v162;
      v163 = v214;
      *(a3 + 48) = v227;
      *(a3 + 56) = v163;
      v164 = v210;
      *(a3 + 64) = v211;
      *(a3 + 72) = v164;
      *(a3 + 80) = v224 & 1;
      v165 = v209;
      *(a3 + 88) = v226;
      *(a3 + 96) = v165;
      v166 = v207;
      *(a3 + 104) = v208;
      *(a3 + 112) = v166;
      v167 = v221;
      *(a3 + 120) = v220;
      *(a3 + 128) = v167;
      v168 = v223;
      *(a3 + 136) = v222;
      *(a3 + 144) = v168;
      *(a3 + 152) = v94;
      *(a3 + 160) = v95;
      v169 = v218;
      *(a3 + 168) = v219;
      *(a3 + 176) = v169;
      v170 = type metadata accessor for NameLogoMastheadViewLayoutAttributes();
      v171 = a3 + v170[11];
      v172 = v18;
LABEL_59:
      sub_2191E7B58(v172, v171);
      v199 = (a3 + v170[12]);
      result = 0.0;
      *v199 = 0u;
      v199[1] = 0u;
      v200 = (a3 + v170[13]);
      *v200 = 0u;
      v200[1] = 0u;
      return result;
    }

    v252.origin.x = y;
    v252.origin.y = v73;
    v252.size.width = v228;
    v252.size.height = v68;
    v253 = CGRectIntegral(v252);
    v109 = v253.origin.x;
    y = v253.origin.y;
    v228 = v253.size.width;
    v110 = v253.size.height;
    v254.origin.x = v227 + CGRectGetMaxX(v253);
    v254.origin.y = v72;
    v254.size.width = v214;
    v254.size.height = v70;
    v255 = CGRectIntegral(v254);
    v214 = v255.origin.x;
    v210 = v255.origin.y;
    v209 = v255.size.width;
    v208 = v255.size.height;
    v256.origin.x = CGRectGetMinX(v255);
    v256.origin.y = v71;
    v256.size.width = v61;
    v256.size.height = v226;
    v257 = CGRectIntegral(v256);
    v207 = v257.origin.x;
    v206 = v257.origin.y;
    v205 = v257.size.width;
    v204 = v257.size.height;
    sub_219BE8DA4();
    v111 = CGRectGetWidth(v258);
    sub_219BE8D24();
    v113 = v111 - v112;
    v114 = v213;
    v259.origin.x = v213;
    v115 = *&v217;
    *&v259.origin.y = v217;
    v116 = v218;
    v259.size.width = v218;
    v117 = v219;
    v259.size.height = v219;
    v203 = v113 - CGRectGetWidth(v259);
    v260.origin.x = v109;
    v118 = y;
    v260.origin.y = y;
    v119 = v228;
    v260.size.width = v228;
    v260.size.height = v110;
    MaxY = CGRectGetMaxY(v260);
    v226 = v109;
    v261.origin.x = v109;
    v261.origin.y = v118;
    v261.size.width = v119;
    v227 = v110;
    v261.size.height = v110;
    v120 = CGRectGetHeight(v261) * 0.5;
    v262.origin.x = v114;
    v262.origin.y = v115;
    v262.size.width = v116;
    v262.size.height = v117;
    v121 = MaxY - (v120 + CGRectGetHeight(v262) * 0.5);
    v263.origin.x = v114;
    v122 = v114;
    v263.origin.y = v115;
    v263.size.width = v116;
    v263.size.height = v117;
    v123 = CGRectGetWidth(v263);
    v264.origin.x = v122;
    v264.origin.y = v115;
    v264.size.width = v116;
    v264.size.height = v117;
    v265.size.height = CGRectGetHeight(v264);
    v265.origin.x = v203;
    v265.origin.y = v121;
    v265.size.width = v123;
    v124 = v212;
    v266 = CGRectIntegral(v265);
    v125 = v266.origin.x;
    v126 = v266.origin.y;
    v127 = v266.size.width;
    v128 = v266.size.height;
    v129 = *a1;
    swift_unknownObjectRetain();
    v130 = sub_219BE8D54();
    v131 = __swift_project_boxed_opaque_existential_1(v225 + 3, v225[6]);
    sub_218718690(*v131 + 16, &v233);
    *v9 = 0;
    *(v9 + 1) = 0;
    v132 = v216;
    *(v9 + 2) = v124;
    *(v9 + 3) = v132;
    sub_218718690(&v233, &v9[v7[12]]);
    sub_219BF6394();
    swift_getObjectType();
    v133 = FCTagProviding.forceBasicTagMasthead.getter();
    swift_unknownObjectRelease();
    v134 = &selRef_moveShortcutWithIdentifier_toIndex_;
    if ((v133 & 1) == 0 && [v129 theme])
    {
      v225 = v129;
      *&v135 = COERCE_DOUBLE(swift_getObjectType());
      [v130 horizontalSizeClass];
      [v130 userInterfaceIdiom];
      v136 = sub_219BF6144();
      if (v136)
      {
        v137 = v136;
        [v130 horizontalSizeClass];
        [v130 userInterfaceIdiom];
        v218 = *&v135;
        v138 = sub_219BF6174();
        v219 = v128;
        if (!v138)
        {
          v138 = v137;
        }

        v139 = v138;
        *&v140 = COERCE_DOUBLE(sub_21897A4D4());
        v231 = *&v140;
        v141 = sub_2191E7E84(&qword_280E8E780, sub_21897A4D4);
        v232 = v141;
        v230 = v137;
        v217 = v137;
        [v130 displayScale];
        sub_219BE8814();
        swift_allocObject();
        *&v9[v7[8]] = sub_219BE8804();
        v231 = *&v140;
        v232 = v141;
        v230 = v139;
        v142 = v139;
        [v130 displayScale];
        swift_allocObject();
        *&v9[v7[9]] = sub_219BE8804();
        [v130 horizontalSizeClass];
        [v130 userInterfaceIdiom];
        v143 = sub_219BF6184();
        swift_unknownObjectRelease();

        v128 = v219;
        v129 = v225;
        v134 = &selRef_moveShortcutWithIdentifier_toIndex_;
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
      v129 = v225;
    }

    *&v9[v7[8]] = 0;
    *&v9[v7[9]] = 0;
    v143 = 4;
LABEL_51:
    *&v9[v7[10]] = v143;
    v173 = [v229 v134[179]];
    if (v173 && (v174 = [v173 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v174))
    {
      v225 = v129;
      v175 = v7[6];
      v176 = v174;
      sub_219BE73D4();
      v177 = sub_219BE7434();
      v178 = *(*(v177 - 8) + 56);
      v178(&v9[v175], 0, 1, v177);
      v179 = [v229 v134[179]];
      if (!v179 || (v180 = [v179 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), !v180))
      {
        v181 = v176;
      }

      v182 = v7[7];
      sub_219BE73D4();

      v178(&v9[v182], 0, 1, v177);
      v129 = v225;
    }

    else
    {
      v183 = v7[6];
      v184 = sub_219BE7434();
      v185 = *(*(v184 - 8) + 56);
      v185(&v9[v183], 1, 1, v184);
      v185(&v9[v7[7]], 1, 1, v184);
    }

    v186 = __swift_project_boxed_opaque_existential_1(&v233, v234);
    v187 = sub_2191E6D9C(v129, *v186);
    v189 = v188;
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v233);
    *(v9 + 4) = v187;
    v9[v7[11]] = v189 & 1;
    v190 = v211;
    sub_2191E7B58(v9, v211);
    *a3 = v124;
    *(a3 + 8) = v132;
    v191 = y;
    *(a3 + 16) = v226;
    *(a3 + 24) = v191;
    v192 = v227;
    *(a3 + 32) = v228;
    *(a3 + 40) = v192;
    v193 = v210;
    *(a3 + 48) = v214;
    *(a3 + 56) = v193;
    v194 = v208;
    *(a3 + 64) = v209;
    *(a3 + 72) = v194;
    *(a3 + 80) = v224 & 1;
    v195 = v206;
    *(a3 + 88) = v207;
    *(a3 + 96) = v195;
    v196 = v204;
    *(a3 + 104) = v205;
    *(a3 + 112) = v196;
    v197 = v221;
    *(a3 + 120) = v220;
    *(a3 + 128) = v197;
    v198 = v223;
    *(a3 + 136) = v222;
    *(a3 + 144) = v198;
    *(a3 + 152) = v125;
    *(a3 + 160) = v126;
    *(a3 + 168) = v127;
    *(a3 + 176) = v128;
    v170 = type metadata accessor for NameLogoMastheadViewLayoutAttributes();
    v171 = a3 + v170[11];
    v172 = v190;
    goto LABEL_59;
  }

  return sub_2191E60C4(a1, a2, a3);
}

double sub_2191E60C4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v99 = a2[1];
  v104 = *a2;
  v106.origin.x = sub_2191E7134();
  x = v106.origin.x;
  y = v106.origin.y;
  width = v106.size.width;
  height = v106.size.height;
  v10 = CGRectGetWidth(v106);
  sub_219BE8CF4();
  sub_219BF6034();
  v12 = fmin(v10 - v11, 600.0);
  v96 = y;
  v97 = x;
  v107.origin.x = x;
  v107.origin.y = y;
  v94 = height;
  v95 = width;
  v107.size.width = width;
  v107.size.height = height;
  v13 = CGRectGetHeight(v107);
  sub_219BE8CF4();
  v108.origin.x = v14;
  v108.origin.y = 0.0;
  v108.size.width = v12;
  v108.size.height = v13;
  v109 = CGRectIntegral(v108);
  v15 = v109.origin.x;
  v16 = v109.origin.y;
  v17 = v109.size.width;
  v18 = v109.size.height;
  v19 = sub_219BE8D54();
  sub_218F95F74(a1, v19);
  v105 = v20;
  v22 = v21;

  v102 = v16;
  v103 = v15;
  v110.origin.x = v15;
  v110.origin.y = v16;
  v100 = v18;
  v101 = v17;
  v110.size.width = v17;
  v110.size.height = v18;
  v23 = CGRectGetHeight(v110) * 0.5 - v22 * 0.5;
  v24 = sub_219BE8D54();
  sub_218F9605C(a1, v24);
  v26 = v25;

  sub_2191E71F4(a1);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v89 = sub_2191E65D0(a1);
  sub_219BE8DA4();
  v35 = CGRectGetWidth(v111);
  v112.origin.x = 0.0;
  v98 = v23;
  v112.origin.y = v23;
  v112.size.width = v105;
  v93 = v22;
  v112.size.height = v22;
  v36 = v35 - CGRectGetWidth(v112) - v26;
  sub_219BE8D24();
  v38 = v36 - v37;
  v39 = v28;
  v113.origin.x = v28;
  v40 = v30;
  v113.origin.y = v30;
  v91 = v34;
  v92 = v32;
  v113.size.width = v32;
  v113.size.height = v34;
  v41 = CGRectGetWidth(v113);
  v42 = sub_2191E7568(a1, v38 - v41 - v89);
  v44 = v43;
  v46 = v45;
  v47 = v42;
  v48 = sub_219BE8D54();
  v49 = sub_218F95C74(a1, v48);

  if (v49)
  {
    v50 = v49;
    v51 = sub_219BF6794();
    [v51 lineHeight];

    sub_219BF6784();
    v53 = v52;
    v55 = v54;
  }

  else
  {
    v55 = 0.0;
    v53 = 0.0;
  }

  v114.origin.y = v102;
  v114.origin.x = v103;
  v114.size.height = v100;
  v114.size.width = v101;
  v56 = CGRectGetHeight(v114) * 0.5 - (v46 + v55) * 0.5;
  v57 = *(a1 + 8);
  if ([v57 sportsType] == 3 && (objc_msgSend(v57, sel_sportsLeagueType) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v117.origin.y = v55 + v56;
    v117.origin.x = v105 + 4.0;
    v117.size.width = v44;
    v117.size.height = v46;
    v118 = CGRectIntegral(v117);
    v88 = v118.origin.y;
    v90 = v118.origin.x;
    v86 = v118.size.height;
    v87 = v118.size.width;
  }

  else
  {
    v115.origin.x = v105 + 4.0;
    v115.origin.y = v56;
    v115.size.width = v44;
    v115.size.height = v46;
    v116 = CGRectIntegral(v115);
    v88 = v116.origin.y;
    v90 = v116.origin.x;
    v86 = v116.size.height;
    v87 = v116.size.width;
    v56 = v46 + v56;
  }

  v119.origin.x = v105 + 4.0;
  v119.origin.y = v56;
  v119.size.width = v53;
  v119.size.height = v55;
  v120 = CGRectIntegral(v119);
  v84 = v120.origin.y;
  v85 = v120.origin.x;
  v82 = v120.size.height;
  v83 = v120.size.width;
  v58 = sub_2191E7700(a1);
  rect_24 = v59;
  v81 = v58;
  rect_8 = v61;
  rect_16 = v60;
  sub_219BE8DA4();
  v62 = CGRectGetWidth(v121);
  sub_219BE8D24();
  sub_219BF6034();
  v64 = v62 - v63;
  v122.origin.x = v39;
  v122.origin.y = v40;
  v122.size.width = v32;
  v122.size.height = v91;
  recta = v64 - CGRectGetWidth(v122);
  v123.origin.x = 0.0;
  v123.origin.y = v98;
  v123.size.width = v105;
  v123.size.height = v93;
  MaxY = CGRectGetMaxY(v123);
  v124.origin.x = 0.0;
  v124.origin.y = v98;
  v124.size.width = v105;
  v124.size.height = v93;
  v66 = CGRectGetHeight(v124) * 0.5;
  v125.origin.x = v39;
  v125.origin.y = v40;
  v125.size.width = v92;
  v125.size.height = v91;
  v67 = MaxY - (v66 + CGRectGetHeight(v125) * 0.5);
  v126.origin.x = v39;
  v126.origin.y = v40;
  v126.size.width = v92;
  v126.size.height = v91;
  v68 = CGRectGetWidth(v126);
  v127.origin.x = v39;
  v127.origin.y = v40;
  v127.size.width = v92;
  v127.size.height = v91;
  v128.size.height = CGRectGetHeight(v127);
  v128.origin.x = recta;
  v128.origin.y = v67;
  v128.size.width = v68;
  v129 = CGRectIntegral(v128);
  v69 = v129.origin.x;
  v70 = v129.origin.y;
  v71 = v129.size.width;
  v72 = v129.size.height;
  v73 = type metadata accessor for NameLogoMastheadViewLayoutAttributes();
  sub_2191E686C(a1, a2, (a3 + v73[11]));
  *a3 = v104;
  *(a3 + 8) = v99;
  *(a3 + 16) = 0;
  *(a3 + 24) = v98;
  *(a3 + 32) = v105;
  *(a3 + 40) = v93;
  *(a3 + 48) = v90;
  *(a3 + 56) = v88;
  *(a3 + 64) = v87;
  *(a3 + 72) = v86;
  *(a3 + 80) = v47 & 1;
  *(a3 + 88) = v85;
  *(a3 + 96) = v84;
  *(a3 + 104) = v83;
  *(a3 + 112) = v82;
  *(a3 + 120) = v81;
  *(a3 + 128) = rect_24;
  *(a3 + 136) = rect_16;
  *(a3 + 144) = rect_8;
  *(a3 + 152) = v69;
  *(a3 + 160) = v70;
  *(a3 + 168) = v71;
  *(a3 + 176) = v72;
  v74 = (a3 + v73[12]);
  *v74 = v103;
  v74[1] = v102;
  v74[2] = v101;
  v74[3] = v100;
  v75 = (a3 + v73[13]);
  *v75 = v97;
  v75[1] = v96;
  result = v94;
  v75[2] = v95;
  v75[3] = v94;
  return result;
}

double sub_2191E65D0(uint64_t a1)
{
  sub_2188134F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for NameLogoMastheadModel() + 24);
  sub_21881AC1C(a1 + v15, v7);
  v16 = v9[6];
  if (v16(v7, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  v23 = a1;
  v22 = v9[4];
  v22(v14, v7, v8);
  v17 = sub_219BEBFF4();
  v18 = v14;
  v19 = v9[1];
  v19(v18, v8);
  if (!v17)
  {
    return 0.0;
  }

  sub_21881AC1C(v23 + v15, v4);
  if (v16(v4, 1, v8) == 1)
  {
    v7 = v4;
LABEL_5:
    sub_218819B4C(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return 0.0;
  }

  v22(v11, v4, v8);
  v21 = sub_219BEBFE4();
  v19(v11, v8);
  result = 10.0;
  if ((v21 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2191E686C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = *a1;
  v7 = *(a1 + 8);
  swift_unknownObjectRetain();
  v9 = sub_219BE8D54();
  v10 = __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  sub_218718690(*v10 + 16, v44);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = v5;
  *(a3 + 3) = v6;
  v11 = type metadata accessor for MastheadViewBackground();
  sub_218718690(v44, &a3[v11[12]]);
  sub_219BF6394();
  swift_getObjectType();
  v12 = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  v13 = &selRef_moveShortcutWithIdentifier_toIndex_;
  if ((v12 & 1) != 0 || ![v8 theme])
  {
    goto LABEL_8;
  }

  v42 = v8;
  swift_getObjectType();
  [v9 horizontalSizeClass];
  [v9 userInterfaceIdiom];
  v14 = sub_219BF6144();
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *&a3[v11[8]] = 0;
    *&a3[v11[9]] = 0;
    v19 = 4;
    goto LABEL_9;
  }

  v15 = v14;
  [v9 horizontalSizeClass];
  [v9 userInterfaceIdiom];
  v16 = sub_219BF6174();
  if (!v16)
  {
    v16 = v15;
  }

  v17 = v16;
  sub_21897A4D4();
  sub_2191E7E84(&qword_280E8E780, sub_21897A4D4);
  v41 = v15;
  [v9 displayScale];
  sub_219BE8814();
  swift_allocObject();
  *&a3[v11[8]] = sub_219BE8804();
  v18 = v17;
  [v9 displayScale];
  swift_allocObject();
  *&a3[v11[9]] = sub_219BE8804();
  [v9 horizontalSizeClass];
  [v9 userInterfaceIdiom];
  v19 = sub_219BF6184();
  swift_unknownObjectRelease();

  v8 = v42;
  v13 = &selRef_moveShortcutWithIdentifier_toIndex_;
LABEL_9:
  *&a3[v11[10]] = v19;
  v20 = [v7 v13[179]];
  if (v20 && (v21 = [v20 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v21))
  {
    v22 = v11[6];
    v23 = v21;
    sub_219BE73D4();
    v24 = sub_219BE7434();
    v25 = (*(v24 - 8) + 56);
    v43 = *v25;
    (*v25)(&a3[v22], 0, 1, v24);
    v26 = [v7 v13[179]];
    if (!v26 || (v27 = v9, v28 = v8, v29 = [v26 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), v30 = v29, v8 = v28, v9 = v27, !v30))
    {
      v31 = v23;
    }

    v32 = v11[7];
    sub_219BE73D4();

    v43(&a3[v32], 0, 1, v24);
  }

  else
  {
    v33 = v11[6];
    v34 = sub_219BE7434();
    v35 = *(*(v34 - 8) + 56);
    v35(&a3[v33], 1, 1, v34);
    v35(&a3[v11[7]], 1, 1, v34);
  }

  v36 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v37 = sub_2191E6D9C(v8, *v36);
  v39 = v38;
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_1(v44);
  *(a3 + 4) = v37;
  a3[v11[11]] = v39 & 1;
  return result;
}

uint64_t sub_2191E6D40()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_2191E6D9C(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v19 = *a2;
  v20 = sub_2191E7E84(&qword_280EDFED0, type metadata accessor for BaseStyler);
  v18[0] = v2;

  sub_219BF6394();
  swift_getObjectType();
  LOBYTE(v2) = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
    v8 = [a1 backingChannel];
    if (v8 && (v9 = [v8 theme], swift_unknownObjectRelease(), v9) || (v9 = objc_msgSend(objc_msgSend(a1, sel_backingTag), sel_theme), swift_unknownObjectRelease(), v9))
    {
      swift_unknownObjectRetain();
      swift_getObjectType();
      v10 = *(*__swift_project_boxed_opaque_existential_1(v18, v4) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      v7 = sub_219BF6164();

      swift_unknownObjectRelease();
      if (v7)
      {
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = sub_219BF6154();
      swift_unknownObjectRelease();
      if (v11)
      {
        swift_unknownObjectRelease();
        v5 = *__swift_project_boxed_opaque_existential_1(v18, v19);
        v6 = OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
        goto LABEL_3;
      }
    }

    v12 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v12)
    {
      swift_getObjectType();
      v7 = sub_219BF6614();
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    if (v9)
    {
      v14 = [v9 darkStyleBackgroundColor];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 ne_color];
      }

      else
      {
        v16 = 0;
      }

      swift_getObjectType();
      v17 = *(*__swift_project_boxed_opaque_existential_1(v18, v19) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      swift_unknownObjectRetain();
      v7 = sub_219BF60F4();

      swift_unknownObjectRelease_n();
      if (v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v7 = *(*__swift_project_boxed_opaque_existential_1(v18, v19) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
LABEL_21:

    goto LABEL_13;
  }

  v5 = *__swift_project_boxed_opaque_existential_1(v18, v4);
  v6 = OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
LABEL_3:
  v7 = *(v5 + v6 + 24);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v7;
}

double sub_2191E7134()
{
  if (sub_219BED0C4())
  {
    if ((sub_219BE8D14() & 1) == 0)
    {
      sub_219BE8D34();
    }
  }

  else
  {
    sub_2191E4B88();
  }

  if ((sub_219BE8D14() & 1) == 0)
  {
    sub_219BE8D34();
  }

  sub_219BE8D34();
  v1 = v0;
  sub_219BE8D34();
  sub_219BE8D34();
  return v1;
}

void sub_2191E71F4(uint64_t a1)
{
  sub_2188134F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for NameLogoMastheadModel() + 24);
  sub_21881AC1C(a1 + v15, v7);
  v16 = v9[6];
  if (v16(v7, 1, v8) == 1)
  {
    sub_218819B4C(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  }

  else
  {
    v23 = a1;
    v22 = v9[4];
    v22(v14, v7, v8);
    v17 = sub_219BEBFF4();
    v18 = v14;
    v19 = v9[1];
    v19(v18, v8);
    if (v17)
    {

      sub_21881AC1C(v23 + v15, v4);
      if (v16(v4, 1, v8) == 1)
      {
        sub_218819B4C(v4, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      }

      else
      {
        v22(v11, v4, v8);
        v20 = sub_219BEBFF4();
        if (v20)
        {
          v21 = v20;
          if (sub_219BEBFE4())
          {
            [v21 frame];

            v19(v11, v8);
          }

          else
          {
            v19(v11, v8);
          }
        }

        else
        {
          v19(v11, v8);
        }
      }
    }
  }
}

uint64_t sub_2191E7568(uint64_t a1, CGFloat a2)
{
  v4 = sub_219BE8D54();
  v5 = sub_218F959F4(a1, v4, 0);

  v6 = v5;
  v7 = sub_219BF6794();
  [v7 lineHeight];

  sub_219BF6784();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  if (CGRectGetWidth(v26) < a2 && (v27.origin.x = v9, v27.origin.y = v11, v27.size.width = v13, v27.size.height = v15, Height = CGRectGetHeight(v27), v17 = sub_219BF6794(), [v17 lineHeight], v19 = v18, v17, v19 >= Height))
  {

    return 0;
  }

  else
  {
    v20 = sub_219BE8D54();
    v21 = 1;
    v22 = sub_218F959F4(a1, v20, 1);

    v23 = v22;
    v24 = sub_219BF6794();
    [v24 lineHeight];

    sub_219BF6784();
  }

  return v21;
}

double sub_2191E7700(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [v1 theme];
  if (v2)
  {
    v3 = [v2 navigationChromeSeparatorColor];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v1 theme];
      if (v4 && (v5 = [v4 darkStyleNavigationChromeSeparatorColor], swift_unknownObjectRelease(), v5))
      {
        v6 = objc_opt_self();
        v7 = [v3 ne_color];
        v8 = [v5 ne_color];
        v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

        if (v9)
        {

          v10 = sub_219BE8D54();
          [v10 displayScale];
        }
      }

      else
      {
      }
    }
  }

  return 0.0;
}

void sub_2191E7898(double a1)
{
  sub_2188134F8(0, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_219BE8CD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219BED0C4())
  {
    if (sub_219BE8D14())
    {
      return;
    }

    goto LABEL_9;
  }

  sub_219BE8D84();
  MinX = CGRectGetMinX(v17);
  sub_219BE8DA4();
  Width = CGRectGetWidth(v18);
  sub_219BE8D84();
  v11 = Width - CGRectGetMaxX(v19);
  if (MinX > v11)
  {
    v12 = MinX;
  }

  else
  {
    v12 = v11;
  }

  sub_219BE8DA4();
  v13 = CGRectGetWidth(v20);
  if ((sub_219BE8D14() & 1) == 0)
  {
    v14 = sub_219BE8D54();
    v15 = [v14 horizontalSizeClass];

    if (v15 == 1)
    {
LABEL_9:
      sub_219BE8D64();
      return;
    }

    sub_219BE8CE4();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_218819B4C(v4, &qword_280EE4770, MEMORY[0x277D6E2A0]);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      if (sub_219BE8CB4())
      {
        sub_219BE8CC4();
        sub_219BE8D44();
        CGRectGetHeight(v21);
        (*(v6 + 8))(v8, v5);
        return;
      }

      (*(v6 + 8))(v8, v5);
    }

    if (v13 - (v12 + v12) + 20.0 >= a1)
    {
      sub_219BE8D44();
      CGRectGetHeight(v22);
    }

    else
    {
      sub_219BE8D94();
    }
  }
}

uint64_t sub_2191E7B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadViewBackground();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2191E7BBC(uint64_t a1, double a2, double a3, double a4)
{
  sub_2188134F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_219BEC004();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v21 = *(type metadata accessor for NameLogoMastheadModel() + 24);
    sub_21881AC1C(a1 + v21, v13);
    v22 = v15[6];
    if (v22(v13, 1, v14) != 1)
    {
      v29 = a1;
      v28 = v15[4];
      v28(v20, v13, v14);
      v23 = sub_219BEBFF4();
      v24 = v20;
      v25 = v15[1];
      v25(v24, v14);
      if (!v23)
      {
        return (a3 - a4) * 0.5;
      }

      sub_21881AC1C(v29 + v21, v10);
      if (v22(v10, 1, v14) != 1)
      {
        v28(v17, v10, v14);
        v27 = sub_219BEBFE4();
        v25(v17, v14);
        if (v27)
        {
          return a2;
        }

        return (a3 - a4) * 0.5;
      }

      v13 = v10;
    }

    sub_218819B4C(v13, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return (a3 - a4) * 0.5;
  }

  return a2;
}

uint64_t sub_2191E7E84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2191E7ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v3 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer(0);
  v40 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - v6;
  v7 = sub_219BF00D4();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Header(0);
  v43 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = sub_219BE9834();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3EC5C();
  sub_219BE8184();
  v19 = v58;
  if (!v58)
  {
    goto LABEL_17;
  }

  v20 = v59;
  v45 = v60;
  sub_219BE95F4();
  v21 = (*(v16 + 88))(v18, v15);
  if (v21 == *MEMORY[0x277D6E758])
  {
    v22 = sub_219BE9604();
    if ((v22 & 0x8000000000000000) == 0)
    {
      if (v22 < *(v19 + 16))
      {
        sub_2191E86CC(v19 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v22, v14, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
        sub_2191E86CC(v14, v12, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
        v43 = v20;
        v24 = v48;
        v23 = v49;
        v25 = v44;
        (*(v48 + 32))(v44, v12, v49);
        __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
        v26 = sub_219BF0234();

        (*(v24 + 8))(v25, v23);
        v27 = v14;
        v28 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Header;
LABEL_11:
        sub_2191E8734(v27, v28);
        return v26;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v21 == *MEMORY[0x277D6E750])
  {
    v29 = sub_219BE9604();
    v30 = *(v19 + 16);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (!v31)
    {
      if ((v32 & 0x8000000000000000) == 0)
      {
        if (v32 < *(v20 + 16))
        {
          v33 = v42;
          sub_2191E86CC(v20 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32, v42, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
          v34 = v41;
          sub_2191E86CC(v33, v41, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
          v36 = v48;
          v35 = v49;
          v37 = v44;
          (*(v48 + 32))(v44, v34, v49);
          __swift_project_boxed_opaque_existential_1((v46 + 16), *(v46 + 40));
          v26 = sub_219BF0234();

          (*(v36 + 8))(v37, v35);
          v27 = v33;
          v28 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer;
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_219BF7314();
      v56 = v53;
      v57 = v54;
      sub_219BE8184();
      v39 = v53;
      v50 = v53;
      v51 = v54;
      v52 = v55;
      sub_219BF7484();
      sub_2191E8680(v39);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2191E8610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2191E8680(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2191E86CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191E8734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191E8794(void *a1)
{
  v3 = v1;
  sub_2191E90FC(0, &qword_27CC171B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191E8F54();
  sub_219BF7B44();
  v12[0] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    memcpy(v13, (v3 + 16), 0x201uLL);
    memcpy(v12, (v3 + 16), sizeof(v12));
    v13[543] = 1;
    sub_2191E9160(v13, v11);
    sub_219088A20();
    sub_219BF77E4();
    memcpy(v11, v12, 0x201uLL);
    sub_2191E8FFC(v11);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2191E8968@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_2191E89C8@<X0>(char *a1@<X8>)
{
  v2 = sub_219BF7614();

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

uint64_t sub_2191E8A2C(uint64_t a1)
{
  v2 = sub_2191E8F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191E8A68(uint64_t a1)
{
  v2 = sub_2191E8F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2191E8AA4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2191E8B08(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x211uLL);
  }

  return result;
}

void *sub_2191E8B08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v29 = a2;
  v3 = sub_219BF5474();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E90FC(0, &qword_27CC17198, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191E8F54();
  v11 = v30;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v12 = v5;
  v26 = v3;
  v13 = v29;
  sub_2191E8FA8(v34);
  v32[0] = 1;
  v30 = v7;
  v27 = v10;
  sub_219BF76F4();
  sub_219BF5464();
  v14 = sub_219BF5424();
  v16 = v15;

  (*(v28 + 8))(v12, v26);
  v17 = v13;
  v18 = v8;
  if (v16 >> 60 == 15)
  {
    memcpy(v33, v34, sizeof(v33));
    v19 = v30;
    v20 = v27;
  }

  else
  {
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    sub_2191E90A8();
    v25 = v14;
    sub_219BE1974();
    v19 = v30;
    v20 = v27;

    sub_218822A58(v25, v16);
    memcpy(v31, v32, 0x201uLL);
    nullsub_1(v31);
    memcpy(v33, v31, sizeof(v33));
  }

  v31[0] = 0;
  v21 = sub_219BF76F4();
  v23 = v22;
  (*(v18 + 8))(v20, v19);
  memcpy(v32, v33, sizeof(v32));
  __swift_destroy_boxed_opaque_existential_1(v35);
  *v17 = v21;
  v17[1] = v23;
  return memcpy(v17 + 2, v32, 0x201uLL);
}

unint64_t sub_2191E8F54()
{
  result = qword_27CC171A0;
  if (!qword_27CC171A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171A0);
  }

  return result;
}

double sub_2191E8FA8(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_219C14A10;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  return result;
}

uint64_t sub_2191E8FFC(uint64_t a1)
{
  sub_2191E9058();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191E9058()
{
  if (!qword_27CC171A8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC171A8);
    }
  }
}

unint64_t sub_2191E90A8()
{
  result = qword_27CC171B0;
  if (!qword_27CC171B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171B0);
  }

  return result;
}

void sub_2191E90FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191E8F54();
    v7 = a3(a1, &type metadata for ArticleSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2191E9160(uint64_t a1, uint64_t a2)
{
  sub_2191E9058();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI221SearchArticleMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2191E9200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 529))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2191E9248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 528) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 529) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 529) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2191E9328()
{
  result = qword_27CC171C0;
  if (!qword_27CC171C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171C0);
  }

  return result;
}

unint64_t sub_2191E9380()
{
  result = qword_27CC171C8;
  if (!qword_27CC171C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171C8);
  }

  return result;
}

unint64_t sub_2191E93D8()
{
  result = qword_27CC171D0;
  if (!qword_27CC171D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171D0);
  }

  return result;
}

uint64_t sub_2191E942C()
{
  sub_2191E95B4(v0 + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);

  return swift_deallocClassInstance();
}

uint64_t sub_2191E94CC()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 labelColor];

  return MEMORY[0x282191F10](v1, v2);
}

uint64_t sub_2191E95B4(uint64_t a1)
{
  v2 = type metadata accessor for BaseTheme();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191E9624()
{
  if (!qword_280E921C0)
  {
    type metadata accessor for SportsMastheadTagFeedGroupConfigData();
    sub_2191E96F0(&qword_280E9A5C8, type metadata accessor for SportsMastheadTagFeedGroupConfigData);
    sub_2191E96F0(&qword_280E9A5D0, type metadata accessor for SportsMastheadTagFeedGroupConfigData);
    v0 = sub_219BEDD94();
    if (!v1)
    {
      atomic_store(v0, &qword_280E921C0);
    }
  }
}

uint64_t sub_2191E96F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SportsMastheadTagFeedGroupEmitter()
{
  result = qword_280EA1BD0;
  if (!qword_280EA1BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2191E9798()
{
  sub_2191E9624();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SportsMastheadTagFeedGroupKnobs();
    if (v1 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510);
      if (v2 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EA48C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2191E987C()
{
  sub_2191EBD38(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2191E98FC(uint64_t a1)
{
  v3 = type metadata accessor for SportsMastheadTagFeedGroupEmitter();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[4] = a1;
  v19 = v1;
  v18[0] = v1;
  sub_219BF4264();
  sub_219BE3204();
  sub_2191EBE6C(v1, v6, type metadata accessor for SportsMastheadTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2191EA9C4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_2191EBE6C(v18[0], v6, type metadata accessor for SportsMastheadTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_2191EA9C4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84();
  sub_219BE2F64();

  sub_2191EBE6C(v11, v6, type metadata accessor for SportsMastheadTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_2191EA9C4(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_2191E9BB0@<X0>(unint64_t *a1@<X8>)
{
  sub_2191E9624();
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000000;
  return result;
}

uint64_t sub_2191E9C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  a2[4] = sub_2191E96F0(&qword_280EA80C0, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  a2[5] = sub_2191E96F0(&qword_27CC171F8, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2191EBE6C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
}

uint64_t sub_2191E9CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2191EBE6C(v2 + *(a2 + 20), v6, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  v11[15] = 33;
  sub_2189AD5C8();
  v8 = v7;
  v9 = sub_219BEE964();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v9;
}

uint64_t sub_2191E9DE8()
{
  sub_2191E9624();

  return sub_219BEDCA4();
}

uint64_t sub_2191E9E14@<X0>(uint64_t *a1@<X8>)
{
  sub_2191EBD38(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2191E9624();

  v3 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2191EBED4(inited + 32, sub_2188317B0);
  sub_2191EBF34(0);
  a1[3] = v5;
  a1[4] = sub_2191E96F0(&qword_27CC17208, sub_2191EBF34);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2191E9F98()
{
  sub_2191E96F0(&qword_27CC171E8, type metadata accessor for SportsMastheadTagFeedGroupEmitter);

  return sub_219BE2324();
}

uint64_t sub_2191EA16C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_219BF4264();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBE38(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v15 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

  if (v15)
  {
    v37 = v3;
    v38 = v2;
    v36 = sub_219BF4404();

    sub_219BEF0B4();
    v16 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v17 = sub_219BF43B4();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_219BF4F64();
    (*(*(v18 - 8) + 56))(v8, 6, 6, v18);
    v19 = sub_219BF6394();
    v20 = [v16 alternativeFeedDescriptor];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 feedConfiguration];
    }

    else
    {
      v22 = [v16 feedConfiguration];
    }

    sub_2191EBE6C(v11, v14, sub_2191EBE38);
    sub_2191EBE6C(v8, &v14[v12[5]], type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
    v25 = &v14[v12[6]];
    *v25 = v19;
    v25[1] = v22;
    sub_2191EBED4(v8, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
    sub_2191EBED4(v11, sub_2191EBE38);
    v26 = &v14[v12[7]];
    strcpy(v26, "sportsMasthead");
    v26[15] = -18;
    sub_2191EBD38(0, &qword_280E8B7C8, MEMORY[0x277D33E20], MEMORY[0x277D84560]);
    v27 = sub_219BF3484();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09BA0;
    v31 = swift_allocObject();
    *(v30 + v29) = v31;
    *(v31 + 16) = v36;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x277D33DF0], v27);

    sub_219BF4204();
    v32 = *(v39 + *(type metadata accessor for SportsMastheadTagFeedGroupEmitter() + 28) + 8);
    ObjectType = swift_getObjectType();
    v23 = (*(v32 + 16))(v14, v5, ObjectType, v32);

    (*(v40 + 8))(v5, v37);
    sub_2191EBED4(v14, type metadata accessor for SportsConfiguringDataVisualizationRequest);
  }

  else
  {
    v23 = sub_219BEEDD4();
    sub_2191E96F0(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D32428], v23);
    swift_willThrow();
  }

  return v23;
}

uint64_t sub_2191EA768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF3484();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF4214();
  if (!*(v8 + 16))
  {

LABEL_6:
    v10 = sub_219BEEDD4();
    sub_2191E96F0(&qword_280E917E0, MEMORY[0x277D32430]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D32428], v10);
    swift_willThrow();
    return v10;
  }

  (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D33DF0])
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_6;
  }

  (*(v5 + 96))(v7, v4);
  v9 = *(*v7 + 16);
  swift_retain_n();

  v10 = sub_2191EAAC0(a3, v9);

  return v10;
}

uint64_t sub_2191EA9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsMastheadTagFeedGroupEmitter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191EAA28(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsMastheadTagFeedGroupEmitter() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2191EA768(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2191EAAC0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2191EBD38(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v56 - v5;
  sub_2191EBD38(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v56 - v7;
  v8 = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBD38(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v56 - v11;
  v12 = sub_219BF2AB4();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsMastheadTagFeedGroupConfigData();
  MEMORY[0x28223BE20](v60);
  v72 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBD38(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_219BF3484();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_219BF2034();
  v66 = *(v22 - 8);
  v67 = v22;
  MEMORY[0x28223BE20](v22);
  v65 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBD38(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  sub_219BF3E84();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  v25 = MEMORY[0x277D84F90];
  if (a2)
  {
    v56 = xmmword_219C09BA0;
    sub_2191EBD38(0, &unk_280E8B7A0, MEMORY[0x277D34138], MEMORY[0x277D84560]);
    v26 = sub_219BF3C84();
    v57 = v18;
    v27 = v26;
    v28 = *(v26 - 8);
    v59 = v17;
    v29 = v28;
    v30 = *(v28 + 80);
    v58 = v24;
    v31 = (v30 + 32) & ~v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v56;
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *v21 = v33;
    (*(v19 + 104))(v21, *MEMORY[0x277D33DF0], v57);

    sub_219BF1AC4();
    (*(v29 + 104))(v32 + v31, *MEMORY[0x277D34130], v27);
    v17 = v59;
  }

  sub_218F0B984(v25);
  sub_218F0BA7C(v25);
  sub_218F0BB90(v25);
  sub_219BF3E74();
  v34 = sub_219BEC004();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  sub_219A95188(v25);
  sub_219A95188(v25);
  sub_219A951A0(v25);
  sub_219A951B8(v25);
  sub_219A952CC(v25);
  sub_219A952E4(v25);
  sub_219A953F8(v25);
  v35 = v65;
  sub_219BF2024();
  v36 = type metadata accessor for SportsMastheadTagFeedGroupEmitter();
  v37 = v62;
  v38 = (v62 + *(v36 + 24));
  v39 = v38[3];
  v59 = v38[4];
  v58 = __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_2191E9624();
  v40 = v72;
  sub_219BEDD14();
  v41 = v61;
  v42 = *(v60 + 20);
  sub_2191EBE6C(v37 + *(v36 + 20), v61, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_2189AD5C8();
  v44 = v43;
  v45 = *(v43 - 8);
  v46 = v63;
  (*(v45 + 32))(v63, v41, v43);
  (*(v45 + 56))(v46, 0, 1, v44);
  sub_219BEF0B4();
  v47 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v48 = sub_219BF35D4();
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
  LOBYTE(v74) = 33;
  sub_2191EBD9C(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v49 = *(v74 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v50 = sub_219BF2774();
  (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
  v51 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v51 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v52 = v69;
  sub_219BF2A84();
  v53 = sub_219BF2184();
  (*(v70 + 8))(v52, v71);
  (*(v66 + 8))(v35, v67);
  v54 = sub_219BF1934();
  (*(*(v54 - 8) + 8))(&v40[v42], v54);
  return v53;
}

uint64_t sub_2191EB590(uint64_t *a1)
{
  sub_218A59C84();
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EB7BC(*a1, v7);
  sub_2191EBE6C(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2191EBD38(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v8 = sub_219BE3014();
  sub_2191EBED4(v7, type metadata accessor for TagFeedGroup);
  return v8;
}

uint64_t sub_2191EB7BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[4] = a1;
  v28 = a2;
  sub_2191EBD38(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = v23 - v4;
  v5 = type metadata accessor for SportsMastheadTagFeedGroupKnobs();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF554();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v23[0] = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v23[1] = v23 - v11;
  v12 = sub_219BED8D4();
  v25 = *(v12 - 8);
  v26 = v12;
  MEMORY[0x28223BE20](v12);
  v24 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624();

  v14 = sub_219BEDCB4();
  v23[2] = v15;
  v23[3] = v14;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v16 = *(type metadata accessor for SportsMastheadTagFeedGroupEmitter() + 20);
  sub_2191EBE6C(v2 + v16, v7, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_2189AD5C8();
  v18 = v17;
  sub_219BEE9B4();
  v19 = *(*(v18 - 8) + 8);
  v19(v7, v18);
  sub_2191EBE6C(v2 + v16, v7, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219BEE984();
  v19(v7, v18);
  sub_2191EBE6C(v2 + v16, v7, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219BEE9D4();
  v19(v7, v18);
  v20 = sub_219BEE5D4();
  (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
  v21 = v24;
  sub_219BED834();
  (*(v25 + 32))(v28, v21, v26);
  type metadata accessor for TagFeedGroup();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2191EBBC8()
{
  type metadata accessor for SportsMastheadTagFeedGroupEmitter();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup();
  sub_2191E96F0(&qword_280EDE9C0, type metadata accessor for TagFeedGroup);
  return sub_219BEF194();
}

void sub_2191EBD38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2191EBD9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig();
    v7 = sub_2191E96F0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2191EBE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191EBED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191EBF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v29 = a2;
  v5 = sub_219BE41A4();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE0B44();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE0B34();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1444();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE1424();
  sub_2191EC440(&unk_280EE8030, MEMORY[0x277D2F260]);
  v29 = a1;
  sub_219BDCCC4();
  v18 = v17;
  v19 = v24;
  (*(v15 + 8))(v18, v14);
  (*(v19 + 16))(v7, v26, v5);
  v20 = (*(v19 + 88))(v7, v5);
  if (v20 == *MEMORY[0x277D34FD0])
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D2EB38], v25);
  }

  else if (v20 == *MEMORY[0x277D34FC8])
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D2EB48], v25);
  }

  else
  {
    v21 = *(v8 + 104);
    if (v20 == *MEMORY[0x277D34FD8])
    {
      v21(v10, *MEMORY[0x277D2EB40], v25);
    }

    else
    {
      v21(v10, *MEMORY[0x277D2EB50], v25);
      (*(v19 + 8))(v7, v5);
    }
  }

  sub_219BE0B24();
  sub_2191EC440(&qword_27CC19010, MEMORY[0x277D2EB30]);
  v22 = v28;
  sub_219BDCCC4();
  sub_219BE0534();
  sub_2191EC440(&unk_27CC17210, MEMORY[0x277D2E5D0]);
  memset(v30, 0, sizeof(v30));
  sub_219BDCCE4();
  sub_218806FD0(v30);
  return (*(v27 + 8))(v13, v22);
}

uint64_t sub_2191EC440(unint64_t *a1, void (*a2)(uint64_t))
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

char *OfflineFeedManifest.rootArticleIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v22[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    v21 = sub_219BF56E4();

    return v21;
  }

  v7 = *(v1 + 32);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *&v4[v7];

    result = sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_218840D24(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *OfflineFeedManifest.rootIssueIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v22[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    v21 = sub_219BF56E4();

    return v21;
  }

  v7 = *(v1 + 36);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *&v4[v7];

    result = sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_218840D24(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *OfflineFeedManifest.rootPuzzleIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v22[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    v21 = sub_219BF56E4();

    return v21;
  }

  v7 = *(v1 + 40);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *&v4[v7];

    result = sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_218840D24(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *OfflineFeedManifest.rootAudioArticleIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v22[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    v21 = sub_219BF56E4();

    return v21;
  }

  v7 = *(v1 + 44);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *&v4[v7];

    result = sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_218840D24(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

char *OfflineFeedManifest.rootRecipeIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v22[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    v21 = sub_219BF56E4();

    return v21;
  }

  v7 = *(v1 + 48);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *&v4[v7];

    result = sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v13 = *(v12 + 16);
    v14 = *(v10 + 2);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v15 <= *(v10 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_218840D24(result, v16, 1, v10);
      v10 = result;
      if (*(v12 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v13)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t OfflineFeedManifest.Group.init(createdAt:publishDate:groupIdentifier:kindIdentifier:articleIDs:issueIDs:puzzleIDs:audioArticleIDs:recipeIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_219BDBD34();
  v19 = *(*(v18 - 8) + 32);
  v19(a9, a1, v18);
  v20 = type metadata accessor for OfflineFeedManifest.Group(0);
  result = (v19)(a9 + v20[5], a2, v18);
  v22 = (a9 + v20[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + v20[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + v20[8]) = a7;
  *(a9 + v20[9]) = a8;
  *(a9 + v20[10]) = a10;
  *(a9 + v20[11]) = a11;
  *(a9 + v20[12]) = a12;
  return result;
}

uint64_t OfflineFeedManifest.init(createdAt:updatedAt:groups:assetURLs:assetWrappingKeyIDs:recordIDs:avAssetIDs:avAssetKeyIDs:avAssetKeyURIs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = sub_219BDBD34();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v18 = type metadata accessor for OfflineFeedManifest(0);
  result = (v17)(a9 + v18[5], a2, v16);
  *(a9 + v18[6]) = a3;
  *(a9 + v18[7]) = a4;
  *(a9 + v18[8]) = a5;
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  *(a9 + v18[11]) = a8;
  *(a9 + v18[12]) = a10;
  return result;
}

uint64_t sub_2191ED3E8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_218840D24(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191ED74C(uint64_t a1)
{
  v6 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v7 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    result = v7 + v6;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = sub_219BF7214();
  v8 = __OFADD__(v17, v6);
  result = v17 + v6;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_218861260();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  result = sub_2194ABED4(&v32, (v3 + 8 * v10 + 32), v11, a1);
  if (result < v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = result;
  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v8 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v8)
    {
      __break(1u);
LABEL_16:
      v20 = (v13 + 64) >> 6;
      while (1)
      {
        v21 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_38;
        }

        if (v21 >= v20)
        {
          goto LABEL_8;
        }

        v22 = *(v12 + 8 * v21);
        ++v4;
        if (v22)
        {
          v18 = (v22 - 1) & v22;
          v19 = __clz(__rbit64(v22)) | (v21 << 6);
          v4 = v21;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v16;
  }

  result = v32;
  if (v14 != v11)
  {
LABEL_8:
    result = sub_21892DE98();
    *v1 = v2;
    return result;
  }

LABEL_13:
  v11 = *(v3 + 16);
  v12 = v33;
  v13 = v34;
  v4 = v35;
  v31 = v33;
  if (!v36)
  {
    goto LABEL_16;
  }

  v18 = (v36 - 1) & v36;
  v19 = __clz(__rbit64(v36)) | (v35 << 6);
  v20 = (v34 + 64) >> 6;
LABEL_21:
  v30 = result;
  v23 = *(*(result + 56) + 8 * v19);

  v24 = v31;
  while (1)
  {
LABEL_23:
    if (v11 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
      v24 = v31;
    }

    v2 = *v1;
    v25 = *v1 & 0xFFFFFFFFFFFFFF8;
    v26 = *(v25 + 0x18) >> 1;
    if (v11 < v26)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
  }

  while (1)
  {
    *(v25 + 32 + 8 * v11++) = v23;
    if (!v18)
    {
      break;
    }

    result = v30;
LABEL_33:
    v29 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(result + 56) + ((v4 << 9) | (8 * v29)));

    v24 = v31;
    if (v11 == v26)
    {
      v11 = v26;
      *(v25 + 16) = v26;
      goto LABEL_23;
    }
  }

  v27 = v4;
  result = v30;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v20)
    {
      *(v25 + 16) = v11;
      goto LABEL_8;
    }

    v18 = *(v24 + 8 * v28);
    ++v27;
    if (v18)
    {
      v4 = v28;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_2191EDADC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_219BF7364();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2191FD158(0, &unk_280E8E5C0, &qword_280E8E5D0, 0x277D751E0, MEMORY[0x277D83D88]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2191EDD88(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F7BD4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_218B6A62C();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EDECC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_2191F72E0(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = v8 - v10;
  result = sub_2194AC028(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_15;
  }

  v13 = result;
  if (result)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 64) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 64) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  result = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 64) >> 6;
LABEL_27:
  v24 = *(*(result + 48) + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = result;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_2191F72E0((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  result = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(*(result + 48) + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  result = sub_21892DE98();
  *v1 = v3;
  return result;
}

uint64_t sub_2191EE330(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_219BF7214();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2191EE4C0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F7FC8(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EE614(uint64_t result, unint64_t *a2, uint64_t a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v14 = v6 + v4;
  }

  else
  {
    v14 = v6;
  }

  result = sub_2191F8B4C(result, v14, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EE720(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F8C94(result, v10, 1, v3, &qword_27CC17608, &type metadata for NewspaperTodayFeedGroupConfigData.Channel);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EE824(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F8DEC(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EE9D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    if (!(*v5 >> 62))
    {
      v12 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = __OFADD__(v12, v11);
      result = v12 + v11;
      if (!v13)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  v19 = sub_219BF7214();
  v13 = __OFADD__(v19, v11);
  result = v19 + v11;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_218861260(result, 1);
  v9 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v15 = *(v10 + 0x10);
  v16 = (*(v10 + 0x18) >> 1) - v15;
  result = sub_218B682AC(&v32, v10 + 8 * v15 + 32, v16, v8, v7, v6, v4);
  if (result < v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v17 = *(v10 + 16);
    v13 = __OFADD__(v17, result);
    v18 = v17 + result;
    if (v13)
    {
      __break(1u);
LABEL_32:
      *(v31 + 16) = v11;
      goto LABEL_9;
    }

    *(v10 + 16) = v18;
  }

  if (result != v16)
  {
LABEL_9:
    result = swift_unknownObjectRelease();
    *v5 = v9;
    return result;
  }

LABEL_15:
  v20 = v34;
  if (v36 == v34)
  {
    goto LABEL_9;
  }

  v21 = v36 - 1;
  if (__OFSUB__(v36, 1))
  {
LABEL_35:
    __break(1u);
  }

  else if (v21 >= v34)
  {
    v22 = v35 >> 1;
    if (v21 < (v35 >> 1))
    {
      v23 = *(v10 + 16);
      v24 = v33;
      v25 = *(v33 + 8 * v21);
      v26 = v25;
      result = v25;
      while (1)
      {
LABEL_21:
        if (v23 + 1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = result;
          sub_219BF5A14();
          result = v30;
        }

        v9 = *v5;
        v27 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        v28 = v27 - v23;
        if (v27 > v23)
        {
          break;
        }

        *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v23;
      }

      v31 = *v5 & 0xFFFFFFFFFFFFFF8;
      v29 = (v31 + 8 * v23 + 32);
      v11 = v23 + 1;
      while (1)
      {
        *v29 = result;
        if (v20 == v21)
        {
          goto LABEL_32;
        }

        v13 = __OFSUB__(v21--, 1);
        if (v13)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v21 < v20 || v21 >= v22)
        {
          goto LABEL_34;
        }

        result = *(v24 + 8 * v21);
        ++v29;
        ++v11;
        if (!--v28)
        {
          v23 = v27;
          *(v31 + 16) = v27;
          goto LABEL_21;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2191EEC2C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F8C94(result, v10, 1, v3, &unk_280E8BD00, &type metadata for TagFeedCurationRequestTag);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EEDC0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F9394(result, v10, 1, v3, &unk_280E8BAC0, &type metadata for SportsSectionHeadline);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EEF10(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191F95C4(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2191EF004(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v52 = a2;
  v9 = type metadata accessor for OfflineContentRequest(0);
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD9FC(0, qword_280ECA530, type metadata accessor for OfflineContentRequest, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v15);
  v17 = v44;
  v19 = v44 - v18;
  v20 = (a4 >> 1);
  v21 = __OFSUB__(a4 >> 1, a3);
  v22 = (a4 >> 1) - a3;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v54 = a1;
  v5 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = (v5[3] >> 1), v17 < v24))
  {
    if (v23 <= v24)
    {
      v26 = v23 + v22;
    }

    else
    {
      v26 = v23;
    }

    v5 = sub_218737B64(isUniquelyReferenced_nonNull_native, v26, 1, v5, &unk_27CC0F298, type metadata accessor for OfflineContentRequest, type metadata accessor for OfflineContentRequest);
    v17 = (v5[3] >> 1);
  }

  v27 = v17 - v5[2];
  if (v20 == a3)
  {
    if (v22 <= 0)
    {
      v22 = 0;
      v17 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 < v22)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_16:
    v17 = v20;
LABEL_17:
    if (v22 != v27)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v49 = v17;
    v22 = v5[2];
    v31 = v53;
    v44[0] = *(v53 + 56);
    v44[1] = v53 + 56;
    (v44[0])(v19, 1, 1, v9);
    v32 = v50;
    sub_2191F6618(v19, v50, qword_280ECA530, type metadata accessor for OfflineContentRequest);
    v47 = *(v31 + 48);
    v48 = v31 + 48;
    if (v47(v32, 1, v9) == 1)
    {
      v33 = v50;
LABEL_25:
      sub_2191F6698(v19, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      swift_unknownObjectRelease();
      result = sub_2191F6698(v33, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      goto LABEL_19;
    }

LABEL_27:
    v33 = v50;
    do
    {
      sub_2191F6698(v33, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      v35 = v5[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v22 + 1)
      {
        v5 = sub_218737B64(v35 > 1, v22 + 1, 1, v5, &unk_27CC0F298, type metadata accessor for OfflineContentRequest, type metadata accessor for OfflineContentRequest);
        v36 = v5[3] >> 1;
      }

      v37 = *(v53 + 80);
      sub_2191F6618(v19, v14, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      if (v47(v14, 1, v9) == 1)
      {
LABEL_33:
        sub_2191F6698(v14, qword_280ECA530, type metadata accessor for OfflineContentRequest);
        v34 = v22;
      }

      else
      {
        v45 = v5 + ((v37 + 32) & ~v37);
        if (v22 <= v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = v22;
        }

        v46 = v38;
        while (1)
        {
          v40 = v51;
          sub_2187544D0(v14, v51, type metadata accessor for OfflineContentRequest);
          if (v46 == v22)
          {
            break;
          }

          sub_2191F6698(v19, qword_280ECA530, type metadata accessor for OfflineContentRequest);
          v41 = *(v53 + 72);
          result = sub_2187544D0(v40, &v45[v41 * v22], type metadata accessor for OfflineContentRequest);
          if (v49 == v20)
          {
            v39 = 1;
            v49 = v20;
          }

          else
          {
            if (v49 < a3 || v49 >= v20)
            {
              goto LABEL_46;
            }

            v42 = v52 + v41 * v49;
            v43 = v49;
            sub_218753520(v42, v19, type metadata accessor for OfflineContentRequest);
            v39 = 0;
            v49 = v43 + 1;
          }

          (v44[0])(v19, v39, 1, v9);
          sub_2191F6618(v19, v14, qword_280ECA530, type metadata accessor for OfflineContentRequest);
          ++v22;
          if (v47(v14, 1, v9) == 1)
          {
            goto LABEL_33;
          }
        }

        sub_218753588(v40, type metadata accessor for OfflineContentRequest);
        v34 = v46;
        v22 = v46;
      }

      v5[2] = v34;
      v33 = v50;
      sub_2191F6618(v19, v50, qword_280ECA530, type metadata accessor for OfflineContentRequest);
    }

    while (v47(v33, 1, v9) != 1);
    goto LABEL_25;
  }

  v29 = v5[2];
  v21 = __OFADD__(v29, v22);
  v30 = v29 + v22;
  if (!v21)
  {
    v5[2] = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_2191EF708(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_219BF7364();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_21880962C();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2191EFA98(uint64_t a1)
{
  sub_218953F20();
  v75 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD9FC(0, &qword_27CC173C8, sub_218953F20, MEMORY[0x277D83D88]);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v61 - v10;
  MEMORY[0x28223BE20](v9);
  v76 = &v61 - v11;
  sub_218B7E0BC(0);
  v13 = v12;
  v14 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191FD9B8(0, &qword_27CC173D0, sub_218B7E0BC, sub_2191FD310, MEMORY[0x277D84310]);
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v79 = &v61 - v18;
  sub_2186EC7E8(&unk_27CC173E0, sub_218B7E0BC);
  v19 = sub_219BF5724();
  v77 = v1;
  v20 = *v1;
  v21 = *(*v1 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v19;
  v78 = v13;
  v13 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v25 = v20[3] >> 1, v25 < v22))
  {
    if (v21 <= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v21;
    }

    v20 = sub_218737B64(isUniquelyReferenced_nonNull_native, v26, 1, v20, &qword_27CC0FB08, sub_218953F20, sub_218953F20);
    v25 = v20[3] >> 1;
  }

  v27 = *(v4 + 9);
  v28 = v25 - v20[2];
  v70 = (v4[80] + 32) & ~v4[80];
  v73 = v27;
  v29 = v78;
  (*(v14 + 16))(v16, a1, v78);
  v30 = sub_219BF5714();
  (*(v14 + 8))(a1, v29);
  if (v30 < v23)
  {
    goto LABEL_16;
  }

  if (v30 >= 1)
  {
    v31 = v20[2];
    v32 = __OFADD__(v31, v30);
    v33 = v31 + v30;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    v20[2] = v33;
  }

  if (v30 != v28)
  {
    result = sub_2191FD344(v79);
    goto LABEL_14;
  }

LABEL_17:
  v16 = v20[2];
  v35 = v69[9];
  sub_2191FD310();
  v36 = v79;
  sub_219BF5E84();
  v37 = *(v36 + v35);
  v65 = v35;
  if (v37 != v80[0])
  {
LABEL_20:
    v41 = sub_219BF5EC4();
    v40 = v75;
    v39 = v76;
    v13[2](v76);
    v41(v80, 0);
    sub_219BF5E94();
    v38 = 0;
    goto LABEL_21;
  }

  v38 = 1;
  v40 = v75;
  v39 = v76;
LABEL_21:
  v42 = v72;
  v64 = v13[7];
  (v64)(v39, v38, 1, v40);
  v43 = v71;
  sub_2191F6618(v39, v71, &qword_27CC173C8, sub_218953F20);
  v45 = v13[6];
  v44 = (v13 + 6);
  v69 = v45;
  if ((v45)(v43, 1, v40) != 1)
  {
    v63 = (v68 + 32);
    v62 = (v68 + 16);
    v61 = (v68 + 8);
    v46 = v74;
    v67 = v44;
    do
    {
      sub_2191F6698(v43, &qword_27CC173C8, sub_218953F20);
      v48 = v20[3];
      v49 = v48 >> 1;
      if ((v48 >> 1) < v16 + 1)
      {
        v20 = sub_218737B64(v48 > 1, v16 + 1, 1, v20, &qword_27CC0FB08, sub_218953F20, sub_218953F20);
        v49 = v20[3] >> 1;
      }

      v50 = v63;
      sub_2191F6618(v76, v46, &qword_27CC173C8, sub_218953F20);
      if ((v69)(v46, 1, v75) == 1)
      {
        v46 = v74;
        v51 = v75;
LABEL_30:
        sub_2191F6698(v46, &qword_27CC173C8, sub_218953F20);
        v47 = v16;
      }

      else
      {
        v52 = *v50;
        if (v16 <= v49)
        {
          v53 = v49;
        }

        else
        {
          v53 = v16;
        }

        v68 = v53;
        v46 = v74;
        v54 = v20 + v70 + v73 * v16;
        v51 = v75;
        v66 = v52;
        while (1)
        {
          v52(v42, v46, v51);
          if (v68 == v16)
          {
            break;
          }

          v59 = v76;
          sub_2191F6698(v76, &qword_27CC173C8, sub_218953F20);
          v52(v54, v42, v51);
          v60 = v79;
          sub_219BF5E84();
          if (*(v60 + v65) == v80[0])
          {
            v56 = 1;
          }

          else
          {
            v55 = sub_219BF5EC4();
            (*v62)(v59);
            v55(v80, 0);
            v51 = v75;
            sub_219BF5E94();
            v56 = 0;
          }

          (v64)(v59, v56, 1, v51);
          v57 = v59;
          v46 = v74;
          sub_2191F6618(v57, v74, &qword_27CC173C8, sub_218953F20);
          v58 = (v69)(v46, 1, v51);
          v42 = v72;
          v54 += v73;
          ++v16;
          v52 = v66;
          if (v58 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v61)(v42, v51);
        v47 = v68;
        v16 = v68;
        v46 = v74;
      }

      v20[2] = v47;
      v43 = v71;
      sub_2191F6618(v76, v71, &qword_27CC173C8, sub_218953F20);
    }

    while ((v69)(v43, 1, v51) != 1);
  }

  sub_2191F6698(v76, &qword_27CC173C8, sub_218953F20);
  sub_2191FD344(v79);
  result = sub_2191F6698(v43, &qword_27CC173C8, sub_218953F20);
LABEL_14:
  *v77 = v20;
  return result;
}

uint64_t sub_2191F03C8(uint64_t result)
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

  result = sub_2191FB36C(result, v11, 1, v3);
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

  memcpy((v3 + 80 * v7 + 32), (v6 + 32), 80 * v2);

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

uint64_t sub_2191F0504(uint64_t result)
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

  result = sub_2187C57F4(result, v11, 1, v3, &qword_280E8BCB8, &type metadata for NewsActivity2.Article.Trait);
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

uint64_t sub_2191F06A0(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_218840D24(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_2194ABD64(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_218840D24((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_21892DE98();
  *v1 = v4;
  return result;
}

uint64_t sub_2191F09D0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2191FC570(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t OfflineFeedManifest.with(createdAt:updatedAt:groups:assetURLs:assetWrappingKeyIDs:recordIDs:avAssetIDs:avAssetKeyIDs:avAssetKeyURIs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a8;
  v47 = a3;
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v44 = a2;
  v13 = MEMORY[0x277CC9578];
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = sub_219BDBD34();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v45 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  sub_2191F6618(a1, v19, &qword_280EE9C40, v13);
  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    (*(v21 + 16))(v25, v10, v20);
    v27 = v10;
    if (v26(v19, 1, v20) != 1)
    {
      sub_2191F6698(v19, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
    v27 = v10;
  }

  sub_2191F6618(v44, v17, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v26(v17, 1, v20) == 1)
  {
    v28 = type metadata accessor for OfflineFeedManifest(0);
    (*(v21 + 16))(v45, v27 + *(v28 + 20), v20);
    v29 = v26(v17, 1, v20);
    v31 = v50;
    v30 = v51;
    v33 = v48;
    v32 = v49;
    if (v29 != 1)
    {
      sub_2191F6698(v17, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    v34 = v47;
    if (v47)
    {
LABEL_9:
      v44 = v34;
      v35 = v46;
      if (v33)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else
  {
    (*(v21 + 32))(v45, v17, v20);
    v31 = v50;
    v30 = v51;
    v33 = v48;
    v32 = v49;
    v34 = v47;
    if (v47)
    {
      goto LABEL_9;
    }
  }

  v44 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 24));

  v35 = v46;
  if (v33)
  {
LABEL_10:
    v43 = v33;
    if (v32)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v43 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 28));

  if (v32)
  {
LABEL_11:
    v42 = v32;
    if (v31)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v42 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 32));

  if (!v31)
  {
LABEL_12:
    v31 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 36));
  }

LABEL_13:
  if (v30)
  {
    v36 = a10;
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_23:
    v35 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 44));

    if (v36)
    {
      goto LABEL_16;
    }

LABEL_24:
    v37 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 48));

    goto LABEL_25;
  }

  v30 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 40));

  v36 = a10;
  if (!v35)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (!v36)
  {
    goto LABEL_24;
  }

LABEL_16:
  v37 = v36;
LABEL_25:
  v38 = *(v21 + 32);
  v38(a9, v25, v20);
  v39 = type metadata accessor for OfflineFeedManifest(0);
  v38(a9 + v39[5], v45, v20);
  v40 = v43;
  *(a9 + v39[6]) = v44;
  *(a9 + v39[7]) = v40;
  *(a9 + v39[8]) = v42;
  *(a9 + v39[9]) = v31;
  *(a9 + v39[10]) = v30;
  *(a9 + v39[11]) = v35;
  *(a9 + v39[12]) = v37;
}

uint64_t OfflineFeedManifest.init(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BDBD24();
  v4 = type metadata accessor for OfflineFeedManifest(0);
  sub_219BDBD24();
  *(a2 + *(v4 + 24)) = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_170;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v96 = v4;
  v97 = a2;
  v99 = a1;
  v100 = v5;
  if (v5)
  {
    v4 = 0;
    v6 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if (v6)
      {
        v9 = MEMORY[0x21CECE0F0](v4, a1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v7 + 16))
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          v5 = sub_219BF7214();
          goto LABEL_3;
        }

        v9 = *(a1 + 8 * v4 + 32);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_25;
        }
      }

      v11 = v9;
      v12 = [v11 assetURLs];
      sub_219BDB954();
      a1 = sub_219BF5924();

      v13 = *(a1 + 16);
      a2 = v8[2];
      v14 = a2 + v13;
      if (__OFADD__(a2, v13))
      {
        goto LABEL_141;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v14 <= v8[3] >> 1)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (a2 <= v14)
        {
          v16 = a2 + v13;
        }

        else
        {
          v16 = a2;
        }

        v8 = sub_218737B64(isUniquelyReferenced_nonNull_native, v16, 1, v8, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
        if (!*(a1 + 16))
        {
LABEL_5:

          a1 = v99;
          if (v13)
          {
            goto LABEL_142;
          }

          goto LABEL_6;
        }
      }

      if ((v8[3] >> 1) - v8[2] < v13)
      {
        goto LABEL_158;
      }

      swift_arrayInitWithCopy();

      a1 = v99;
      if (v13)
      {
        v17 = v8[2];
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_164;
        }

        v8[2] = v19;
      }

LABEL_6:
      ++v4;
      v5 = v100;
    }

    while (v10 != v100);
  }

  sub_2186EBBE0(0);
  v20 = sub_219BDB954();
  sub_2186EC7E8(&qword_280E8F6C0, sub_2186EBBE0);
  v98 = v20;
  sub_2186EC7E8(&unk_280EE9D30, MEMORY[0x277CC9260]);
  a2 = sub_219BF56E4();

  *(v97 + v96[7]) = a2;
  if (!v5)
  {
    goto LABEL_49;
  }

  v4 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = MEMORY[0x277D84F90];
  a1 = MEMORY[0x277CC9318];
  while (v21)
  {
    v24 = MEMORY[0x21CECE0F0](v4, v99);
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_48;
    }

LABEL_33:
    v26 = v24;
    v27 = [v26 assetWrappingKeyIDs];
    a2 = sub_219BF5924();

    v28 = *(a2 + 16);
    v29 = *(v23 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_144;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    if (v31 && v30 <= *(v23 + 3) >> 1)
    {
      if (!*(a2 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v23 = sub_2191F95C4(v31, v32, 1, v23);
      if (!*(a2 + 16))
      {
LABEL_28:

        if (v28)
        {
          goto LABEL_145;
        }

        goto LABEL_29;
      }
    }

    if ((*(v23 + 3) >> 1) - *(v23 + 2) < v28)
    {
      goto LABEL_159;
    }

    swift_arrayInitWithCopy();

    if (v28)
    {
      v33 = *(v23 + 2);
      v18 = __OFADD__(v33, v28);
      v34 = v33 + v28;
      if (v18)
      {
        goto LABEL_165;
      }

      *(v23 + 2) = v34;
    }

LABEL_29:
    ++v4;
    if (v25 == v100)
    {
      goto LABEL_49;
    }
  }

  if (v4 >= *(v22 + 16))
  {
    goto LABEL_143;
  }

  v24 = *(v99 + 8 * v4 + 32);
  v25 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_33;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v35 = MEMORY[0x277CC9318];
  sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  sub_2191FC7DC(&qword_280E8F690, &qword_280E8F6A8, v35);
  sub_2191FC840();
  v36 = v100;
  a2 = sub_219BF56E4();

  *(v97 + v96[8]) = a2;
  a1 = MEMORY[0x277D84F90];
  if (v100)
  {
    v4 = 0;
    v37 = v99;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v99 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x21CECE0F0](v4, v37);
        v40 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v4 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v39 = *(v37 + 8 * v4 + 32);
        v40 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_70:
          __break(1u);
          break;
        }
      }

      v41 = v39;
      v42 = [v41 recordIDs];
      a2 = sub_219BF5924();

      v43 = *(a2 + 16);
      v44 = *(v38 + 2);
      v45 = v44 + v43;
      if (__OFADD__(v44, v43))
      {
        goto LABEL_147;
      }

      v46 = swift_isUniquelyReferenced_nonNull_native();
      if (!v46 || v45 > *(v38 + 3) >> 1)
      {
        if (v44 <= v45)
        {
          v47 = v44 + v43;
        }

        else
        {
          v47 = v44;
        }

        v38 = sub_218840D24(v46, v47, 1, v38);
      }

      v37 = v99;
      if (*(a2 + 16))
      {
        if ((*(v38 + 3) >> 1) - *(v38 + 2) < v43)
        {
          goto LABEL_160;
        }

        swift_arrayInitWithCopy();

        if (v43)
        {
          v48 = *(v38 + 2);
          v18 = __OFADD__(v48, v43);
          v49 = v48 + v43;
          if (v18)
          {
            goto LABEL_166;
          }

          *(v38 + 2) = v49;
        }
      }

      else
      {

        if (v43)
        {
          goto LABEL_148;
        }
      }

      ++v4;
      v36 = v100;
      if (v40 == v100)
      {
        goto LABEL_72;
      }
    }
  }

  v37 = v99;
LABEL_72:
  v50 = MEMORY[0x277D837D0];
  sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v50);
  v51 = 0;
  a2 = sub_219BF56E4();

  v53 = v96;
  v52 = v97;
  *(v97 + v96[9]) = a2;
  if (!v36)
  {
    v79 = sub_219BF56E4();

    *(v97 + v96[10]) = v79;
    goto LABEL_117;
  }

  v4 = 0;
  v54 = v37 & 0xC000000000000001;
  v55 = v37 & 0xFFFFFFFFFFFFFF8;
  a1 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v54)
    {
      v56 = MEMORY[0x21CECE0F0](v4, v37);
      v57 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      goto LABEL_79;
    }

    if (v4 >= *(v55 + 16))
    {
      goto LABEL_149;
    }

    v56 = *(v37 + 8 * v4 + 32);
    v57 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_79:
      v58 = v51;
      v59 = v56;
      v60 = [v59 avAssetIDs];
      a2 = sub_219BF5924();

      v61 = *(a2 + 16);
      v62 = *(a1 + 16);
      v63 = v62 + v61;
      if (__OFADD__(v62, v61))
      {
        goto LABEL_150;
      }

      v64 = swift_isUniquelyReferenced_nonNull_native();
      if (!v64 || v63 > *(a1 + 24) >> 1)
      {
        if (v62 <= v63)
        {
          v65 = v62 + v61;
        }

        else
        {
          v65 = v62;
        }

        a1 = sub_218840D24(v64, v65, 1, a1);
      }

      v37 = v99;
      v51 = v58;
      if (*(a2 + 16))
      {
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v61)
        {
          goto LABEL_161;
        }

        swift_arrayInitWithCopy();

        if (v61)
        {
          v66 = *(a1 + 16);
          v18 = __OFADD__(v66, v61);
          v67 = v66 + v61;
          if (v18)
          {
            goto LABEL_167;
          }

          *(a1 + 16) = v67;
        }
      }

      else
      {

        if (v61)
        {
          goto LABEL_151;
        }
      }

      ++v4;
      if (v57 == v100)
      {
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_94:
  a2 = sub_219BF56E4();

  v4 = 0;
  *(v97 + v96[10]) = a2;
  a1 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v54)
    {
      v68 = MEMORY[0x21CECE0F0](v4, v37);
      v69 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      goto LABEL_100;
    }

    if (v4 >= *(v55 + 16))
    {
      goto LABEL_152;
    }

    v68 = *(v37 + 8 * v4 + 32);
    v69 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_100:
      v70 = v68;
      v71 = [v70 avAssetKeyIDs];
      a2 = sub_219BF5924();

      v72 = *(a2 + 16);
      v73 = *(a1 + 16);
      v74 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_153;
      }

      v75 = swift_isUniquelyReferenced_nonNull_native();
      if (!v75 || v74 > *(a1 + 24) >> 1)
      {
        if (v73 <= v74)
        {
          v76 = v73 + v72;
        }

        else
        {
          v76 = v73;
        }

        a1 = sub_218840D24(v75, v76, 1, a1);
      }

      v37 = v99;
      if (*(a2 + 16))
      {
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v72)
        {
          goto LABEL_162;
        }

        swift_arrayInitWithCopy();

        if (v72)
        {
          v77 = *(a1 + 16);
          v18 = __OFADD__(v77, v72);
          v78 = v77 + v72;
          if (v18)
          {
            goto LABEL_168;
          }

          *(a1 + 16) = v78;
        }
      }

      else
      {

        if (v72)
        {
          goto LABEL_154;
        }
      }

      ++v4;
      if (v69 == v100)
      {
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_115:
  v53 = v96;
  v52 = v97;
  v36 = v100;
LABEL_117:
  a2 = sub_219BF56E4();

  *(v52 + v53[11]) = a2;
  if (v36)
  {
    v4 = 0;
    v80 = v37 & 0xC000000000000001;
    v81 = v37 & 0xFFFFFFFFFFFFFF8;
    a1 = v98 - 8;
    v82 = MEMORY[0x277D84F90];
    do
    {
      if (v80)
      {
        v83 = MEMORY[0x21CECE0F0](v4, v37);
        v84 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (v4 >= *(v81 + 16))
        {
          goto LABEL_155;
        }

        v83 = *(v37 + 8 * v4 + 32);
        v84 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_138:
          __break(1u);
          break;
        }
      }

      v85 = v83;
      v86 = [v85 avAssetKeyURIs];
      v87 = sub_219BF5924();

      a2 = *(v87 + 16);
      v88 = v82[2];
      v89 = v88 + a2;
      if (__OFADD__(v88, a2))
      {
        goto LABEL_156;
      }

      v90 = swift_isUniquelyReferenced_nonNull_native();
      if (!v90 || v89 > v82[3] >> 1)
      {
        if (v88 <= v89)
        {
          v91 = v88 + a2;
        }

        else
        {
          v91 = v88;
        }

        v82 = sub_218737B64(v90, v91, 1, v82, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
      }

      v37 = v99;
      if (*(v87 + 16))
      {
        if ((v82[3] >> 1) - v82[2] < a2)
        {
          goto LABEL_163;
        }

        swift_arrayInitWithCopy();

        if (a2)
        {
          v92 = v82[2];
          v18 = __OFADD__(v92, a2);
          v93 = v92 + a2;
          if (v18)
          {
            goto LABEL_169;
          }

          v82[2] = v93;
        }
      }

      else
      {

        if (a2)
        {
          goto LABEL_157;
        }
      }

      ++v4;
    }

    while (v84 != v100);
  }

  v94 = sub_219BF56E4();

  *(v97 + v96[12]) = v94;
  return result;
}
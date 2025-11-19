uint64_t sub_1D7A47CC0(uint64_t a1)
{
  v3 = sub_1D7D2F4FC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2EF2C();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A4AB7C(0, &unk_1EE0BF690, MEMORY[0x1E69B60C0], MEMORY[0x1E69B62D0]);
  v11 = v10;
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - v13;
  sub_1D7A4A844(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
  v16 = v15;
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v45 - v18;
  sub_1D79D7DA4(a1, v99);
  v96 = v99[4];
  v97 = v99[5];
  v98 = v100;
  v92 = v99[0];
  v93 = v99[1];
  v94 = v99[2];
  v95 = v99[3];
  v55 = v1;
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  v20 = sub_1D7D29FCC();
  v21 = __OFSUB__(v20, 1);
  result = v20 - 1;
  if (!v21)
  {
    v46 = v4;
    v56 = v19;
    sub_1D7D29FEC();
    sub_1D79D7DA4(&v85, &v71);
    sub_1D79D7DA4(a1, &v78);
    v68 = v75;
    v69 = v76;
    v70 = v77;
    v64 = v71;
    v65 = v72;
    v66 = v73;
    v67 = v74;
    v61 = v82;
    v62 = v83;
    v63 = v84;
    v57 = v78;
    v58 = v79;
    v59 = v80;
    v60 = v81;
    v47 = v3;
    v54 = v16;
    v45 = v11;
    if (v71 == v78)
    {
      sub_1D7A2BB90(&v85);
      sub_1D7A4A624(&v57);
      sub_1D7A4A624(&v64);
      v23 = v14;
    }

    else
    {
      v24 = sub_1D7D3197C();
      sub_1D7A2BB90(&v85);
      sub_1D7A4A624(&v57);
      sub_1D7A4A624(&v64);
      v23 = v14;
      if ((v24 & 1) == 0)
      {
        sub_1D7D2C55C();
        LOBYTE(v64) = 2;
        sub_1D79D7DA4(a1, &v71);
        v89 = v75;
        v90 = v76;
        v91 = v77;
        v85 = v71;
        v86 = v72;
        v87 = v73;
        v88 = v74;
        v26 = *(&v74 + 1);

        sub_1D7A4A624(&v85);
        *(&v72 + 1) = sub_1D7D28A3C();
        *&v73 = sub_1D7A4A7FC(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
        *&v71 = v26;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D7D2A4BC();

LABEL_7:

        sub_1D7A4AAB4(&v71, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
        v28 = v48;
        v27 = v49;
        sub_1D7D29F7C();
        sub_1D7D29FEC();
        sub_1D79D7DA4(&v85, &v71);
        sub_1D79D7DA4(a1, &v78);
        v68 = v75;
        v69 = v76;
        v70 = v77;
        v64 = v71;
        v65 = v72;
        v66 = v73;
        v67 = v74;
        v61 = v82;
        v62 = v83;
        v63 = v84;
        v57 = v78;
        v58 = v79;
        v59 = v80;
        v60 = v81;
        if (v71 == v78)
        {
          sub_1D7A2BB90(&v85);
          sub_1D7A4A624(&v57);
          sub_1D7A4A624(&v64);
          v29 = v50;
        }

        else
        {
          v30 = sub_1D7D3197C();
          sub_1D7A2BB90(&v85);
          sub_1D7A4A624(&v57);
          sub_1D7A4A624(&v64);
          v29 = v50;
          if ((v30 & 1) == 0)
          {
            sub_1D7D2C56C();
            LOBYTE(v64) = 2;
            sub_1D79D7DA4(a1, &v71);
            v89 = v75;
            v90 = v76;
            v91 = v77;
            v85 = v71;
            v86 = v72;
            v87 = v73;
            v88 = v74;
            v33 = *(&v74 + 1);

            sub_1D7A4A624(&v85);
            v32 = sub_1D7D28A3C();
            *(&v72 + 1) = v32;
            *&v73 = sub_1D7A4A7FC(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
            *&v71 = v33;
            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_1D7D2A4BC();

            goto LABEL_12;
          }
        }

        sub_1D7D2C56C();
        LOBYTE(v64) = 2;
        sub_1D79D7DA4(a1, &v71);
        v89 = v75;
        v90 = v76;
        v91 = v77;
        v85 = v71;
        v86 = v72;
        v87 = v73;
        v88 = v74;
        v31 = *(&v74 + 1);

        sub_1D7A4A624(&v85);
        v32 = sub_1D7D28A3C();
        *(&v72 + 1) = v32;
        *&v73 = sub_1D7A4A7FC(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
        *&v71 = v31;
        sub_1D7D2A4BC();
LABEL_12:

        sub_1D7A4AAB4(&v71, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
        sub_1D7D2C48C();
        v34 = v93;
        *v28 = v93;
        (*(v27 + 104))(v28, *MEMORY[0x1E69B60B0], v29);
        v35 = v34;
        sub_1D7D2F48C();
        v36 = *(&v95 + 1);
        sub_1D7D28A3C();
        *(&v72 + 1) = v32;
        v37 = sub_1D7A4A7FC(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
        *&v73 = v37;
        *&v71 = v36;
        swift_retain_n();
        sub_1D7D2A4BC();

        (*(v51 + 8))(v23, v45);
        sub_1D7A4AAB4(&v71, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
        sub_1D7D2C4BC();
        sub_1D7A4AC40();
        v39 = *(v38 + 48);
        v40 = v53;
        *v53 = v35;
        v41 = *MEMORY[0x1E69B6368];
        v42 = sub_1D7D2F51C();
        (*(*(v42 - 8) + 104))(&v40[v39], v41, v42);
        v44 = v46;
        v43 = v47;
        (*(v46 + 104))(v40, *MEMORY[0x1E69B6320], v47);
        *(&v72 + 1) = v32;
        *&v73 = v37;
        *&v71 = v36;
        sub_1D7D2A4BC();

        (*(v44 + 8))(v40, v43);
        (*(v52 + 8))(v56, v54);
        sub_1D7A4A624(&v92);
        return sub_1D7A4AAB4(&v71, &qword_1EE0C0090, &qword_1EE0C00A0, MEMORY[0x1E69D7778]);
      }
    }

    sub_1D7D2C55C();
    LOBYTE(v64) = 2;
    sub_1D79D7DA4(a1, &v71);
    v89 = v75;
    v90 = v76;
    v91 = v77;
    v85 = v71;
    v86 = v72;
    v87 = v73;
    v88 = v74;
    v25 = *(&v74 + 1);

    sub_1D7A4A624(&v85);
    *(&v72 + 1) = sub_1D7D28A3C();
    *&v73 = sub_1D7A4A7FC(&qword_1EE0CB3B0, 255, MEMORY[0x1E698AAC8]);
    *&v71 = v25;
    sub_1D7D2A4BC();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall RecipeViewerViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewWillDisappear_, a1);
  sub_1D7D2A4EC();
}

void *sub_1D7A488D0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_contentViewController;
  v2 = Strong;
  swift_beginAccess();
  v3 = *&v2[v1];
  v4 = v3;

  return v3;
}

void sub_1D7A48944(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  MEMORY[0x1EEE9AC00](Context, v5);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RecipeViewModel(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34[-v14];
  sub_1D79D7DA4(a1, &v37);
  v35[4] = v41;
  v35[5] = v42;
  v36 = v43;
  v35[1] = v38;
  v35[0] = v37;
  v35[3] = v40;
  v35[2] = v39;
  v16 = v38;
  sub_1D7A4A624(v35);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = OBJC_IVAR____TtC12NewsArticles20RecipeViewController_loadContext;
    swift_beginAccess();
    sub_1D7A4A98C(v18 + v19, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {

        goto LABEL_23;
      }

      sub_1D7A4A9F0(v7, v11);
      sub_1D7A4A9F0(v11, v15);
      if ((sub_1D7D29A4C() & 1) == 0 && (_s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0() & 1) == 0)
      {
        *&v35[0] = MEMORY[0x1E69E7CC0];
        v21 = &v2[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_barButtonItemFactory];
        __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_barButtonItemFactory], *&v2[OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_barButtonItemFactory + 24]);
        sub_1D7AE3024(v16);
        v23 = v22;
        MEMORY[0x1DA70E080]();
        if (*((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D7D306DC();
        }

        sub_1D7D3072C();
        if (NFInternalBuild())
        {
          if (qword_1EC9DFEC0 != -1)
          {
            swift_once();
          }

          sub_1D7A4A7FC(&qword_1EC9E2C88, v24, type metadata accessor for RecipeViewerViewController);
          sub_1D7D285AC();
          if ((v34[15] & 1) == 0)
          {
            __swift_project_boxed_opaque_existential_1(v21, *(v21 + 3));
            v25 = sub_1D7AE3AB8(v15 + *(v8 + 24));
            if (v25)
            {
              v26 = v25;
              MEMORY[0x1DA70E080]();
              if (*((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D7D306DC();
              }

              sub_1D7D3072C();
            }
          }
        }

        v27 = sub_1D7D30D8C();
        sub_1D7992EFC(0, &qword_1EE0BF050);
        v28 = sub_1D7D3062C();

        [v27 setRightBarButtonItems:v28 animated:0];

        v29 = sub_1D7D30D8C();
        v30 = [v15[2] title];
        if (!v30)
        {
          sub_1D7D3034C();
          v30 = sub_1D7D3031C();
        }

        [v29 setBackButtonTitle_];

        v31 = sub_1D7D30D8C();
        [v31 setBackButtonDisplayMode_];

        [v2 setNeedsStatusBarAppearanceUpdate];
      }

      v32 = type metadata accessor for RecipeViewModel;
      v33 = v15;
    }

    else
    {

      v32 = type metadata accessor for RecipeViewController.RecipeLoadContext;
      v33 = v7;
    }

    sub_1D7A4AA54(v33, v32);
  }

LABEL_23:
  sub_1D7A49D38(v2, v16);
}

void sub_1D7A48E34(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      [Strong setContentScrollView:v1 forEdge:15];
    }
  }
}

uint64_t RecipeViewerViewController.pageBlueprint(_:primaryVisiblePageDidChange:)(uint64_t a1, uint64_t a2)
{
  sub_1D7D2AA3C();
  if (v4[1])
  {
    sub_1D79D7CBC(v4, v5);
    sub_1D7A48944(v5);
    sub_1D7A2BB90(v5);
  }

  else
  {
    sub_1D79D7C44(v4);
  }

  sub_1D7D2A4EC();
  return sub_1D7A47CC0(a2);
}

uint64_t sub_1D7A48F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE47A78](a1, a2, a3, a4, ObjectType, a6);
}

void sub_1D7A48FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D7A4902C(a2);
  }
}

uint64_t sub_1D7A4902C(uint64_t a1)
{
  sub_1D79D7B34();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  sub_1D7A4A844(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22[-v9 - 8];
  v11 = *(v1 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm);
  if (v11)
  {

    v11(v12);
    sub_1D79AD740(v11);
  }

  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7D29F9C();
  v13 = *(v7 + 8);
  v13(v10, v6);
  if (!v23)
  {
    return sub_1D79D7C44(v22);
  }

  sub_1D79D7CBC(v22, v24);
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  MEMORY[0x1EEE9AC00](v14, v15);
  *(&v21 - 4) = a1;
  *(&v21 - 3) = v16;
  *(&v21 - 2) = v24;
  v17 = sub_1D7A27218(sub_1D7A4ACC4);
  v13(v10, v6);
  v18 = sub_1D79D7B9C();
  v19 = sub_1D79D7BF0();
  MEMORY[0x1DA706A80](v17, &type metadata for RecipeViewerPage, v18, v19);
  sub_1D79D7D18();
  sub_1D7D29FBC();
  sub_1D7D2ADEC();
  sub_1D7D28EAC();

  sub_1D7D2AABC();
  sub_1D7A48944(v24);
  v13(v10, v6);
  return sub_1D7A2BB90(v24);
}

uint64_t sub_1D7A4938C()
{
  swift_getObjectType();

  return sub_1D7D285AC();
}

uint64_t sub_1D7A493E4()
{
  swift_getObjectType();

  return sub_1D7D285BC();
}

uint64_t sub_1D7A49454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE454D8](a1, a2, a3, a4, ObjectType, a8);
}

uint64_t sub_1D7A494EC(char *a1, void *a2)
{
  v4 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    if (v7 == a1)
    {
      v9 = *&a1[*a2];
      if (v9)
      {

        v9(v4);
        sub_1D79AD740(v9);
      }

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;

        if (v11 == a1)
        {
          v12 = *&a1[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock];

          if (v12)
          {
            sub_1D79C9398(v12);
            v13 = v12(v4);
            sub_1D79AD740(v12);
          }

          else
          {
            v13 = 0;
          }

          v15[0] = v13;
          sub_1D7A4A720();
          sub_1D7D28F1C();
        }
      }
    }
  }

  sub_1D7D2AA3C();
  if (!v14[1])
  {
    return sub_1D79D7C44(v14);
  }

  sub_1D79D7CBC(v14, v15);
  sub_1D7A48944(v15);
  return sub_1D7A2BB90(v15);
}

void sub_1D7A49684(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (v4 == a1)
    {
      v5 = *&a1[OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock];

      if (v5)
      {
        sub_1D79C9398(v5);
        v6 = v5(v1);
        sub_1D79AD740(v5);
      }

      else
      {
        v6 = 0;
      }

      sub_1D7A4A720();
      sub_1D7D28F1C();
    }
  }
}

Swift::Void __swiftcall RecipeViewerViewController.set(previewing:)(Swift::Bool previewing)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = [v5 windowScene];

    if (!v6)
    {
      goto LABEL_10;
    }

    if (previewing)
    {
      sub_1D7D2AA3C();
      if (v23)
      {
        sub_1D79D7DA4(v22, v21);
        sub_1D79D7C44(v22);
        sub_1D79D7DA4(v21, &v10);
        v7 = [v11 title];
        sub_1D7D3034C();

        sub_1D7A2BB90(v21);
        sub_1D7A4A624(&v9);
        v8 = sub_1D7D3031C();

LABEL_9:
        [v6 setTitle_];

LABEL_10:
        sub_1D7D2A02C();
        return;
      }

      sub_1D79D7C44(v22);
    }

    v8 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

double sub_1D7A4993C@<D0>(uint64_t a1@<X8>)
{
  sub_1D7D2B64C();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void sub_1D7A49980(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_pageViewController);

    a3();
  }
}

uint64_t RecipeViewerViewController.identifier.getter()
{
  sub_1D7A4A844(0, &qword_1EC9E2B50, sub_1D79D7D18, &type metadata for RecipeViewerPage, MEMORY[0x1E69D7708]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = v10 - v4;
  sub_1D7D2ADEC();
  sub_1D7D28EDC();

  sub_1D7D2AA7C();
  sub_1D7D29F9C();

  (*(v2 + 8))(v5, v1);
  if (*(&v12 + 1))
  {
    sub_1D79D7CBC(&v12, v19);
    sub_1D79D7DA4(v19, &v12);
    v10[4] = v16;
    v10[5] = v17;
    v11 = v18;
    v10[0] = v12;
    v10[1] = v13;
    v10[2] = v14;
    v10[3] = v15;
    v6 = v13;
    sub_1D7A4A624(v10);
    v7 = [v6 identifier];

    v8 = sub_1D7D3034C();
    sub_1D7A2BB90(v19);
    return v8;
  }

  else
  {
    sub_1D79D7C44(&v12);
    return sub_1D7D2AA7C();
  }
}

uint64_t sub_1D7A49C40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1D79D7DA4(a1, v15);
  v13[4] = v15[4];
  v13[5] = v15[5];
  v14 = v16;
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  v13[3] = v15[3];
  v10 = v15[0];

  sub_1D7A4A624(v13);
  if (v10 == __PAIR128__(a3, a2))
  {
  }

  else
  {
    v11 = sub_1D7D3197C();

    if ((v11 & 1) == 0)
    {
      a4 = a1;
    }
  }

  return sub_1D79D7DA4(a4, a5);
}

uint64_t sub_1D7A49D38(uint64_t a1, void *a2)
{
  v4 = sub_1D7D2ACCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_externalRecipeTheme), *(a1 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_externalRecipeTheme + 24));
  v9 = [a2 identifier];
  sub_1D7D3034C();

  LOBYTE(v9) = sub_1D7D27D7C();

  if (v9)
  {
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_styler), *(a1 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_styler + 24));
    sub_1D7A42E68();
    sub_1D7A4A7FC(&unk_1EE0BFF30, 255, MEMORY[0x1E69D7C68]);
    sub_1D7D28F1C();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void sub_1D7A49EF8(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D7A49F8C()
{
  v1 = OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_eventManager;
  sub_1D7A4A844(0, &unk_1EC9E2B90, sub_1D7A46980, &type metadata for RecipeViewerViewController.Event, MEMORY[0x1E69D6460]);
  swift_allocObject();
  *(v0 + v1) = sub_1D7D28C9C();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2 = (v0 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_prewarm);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController__isPagingEnabled) = 1;
  v3 = OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_observableScrollView;
  sub_1D7A4A8AC();
  swift_allocObject();
  *(v0 + v3) = sub_1D7D28ECC();
  sub_1D7D3160C();
  __break(1u);
}

uint64_t _s12NewsArticles26RecipeViewerViewControllerC13pageBlueprint_7didShow03neweF008previouseF015scrollDirectiony5TeaUI04PageH0VyAA0cdQ0OG_AMSo06UIViewF0CAPSgSo06TUPageefN0VtF_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_1EC9DFDB8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D7D29AFC();
  __swift_project_value_buffer(v7, qword_1ECA0BB90);
  sub_1D79D7DA4(a2, v29);
  v8 = sub_1D7D29ADC();
  v9 = sub_1D7D30C6C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28[0] = v11;
    *v10 = 136315138;
    sub_1D79D7DA4(v29, v26);
    v12 = sub_1D7D303AC();
    v14 = v13;
    sub_1D7A2BB90(v29);
    v15 = sub_1D7B06D4C(v12, v14, v28);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D7987000, v8, v9, "Did show recipe page=%s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1DA7102E0](v11, -1, -1);
    MEMORY[0x1DA7102E0](v10, -1, -1);
  }

  else
  {

    sub_1D7A2BB90(v29);
  }

  type metadata accessor for RecipeViewController(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    v19 = a3;
    sub_1D7A46B9C(Strong);

    *(v17 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_delegate + 8) = &off_1F529F6D8;
    swift_unknownObjectWeakAssign();
  }

  sub_1D7A48944(a2);
  v20 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
  sub_1D7A4B0CC(a2, v20 & 1);
  v28[0] = a3;
  sub_1D7992EFC(0, &qword_1EE0BF010);
  sub_1D798F168(0, &unk_1EE0BFEF0);
  v21 = a3;
  if (swift_dynamicCast())
  {
    sub_1D799D69C(v26, v29);
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v22 = sub_1D7D2AE0C();
    v23 = OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController_observableScrollView;
    swift_beginAccess();
    *&v4[v23] = v22;

    sub_1D7D28EDC();

    v24 = *&v26[0];
    if (*&v26[0])
    {
      [v4 setContentScrollView:*&v26[0] forEdge:15];
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(v29, v30);
      sub_1D7D2AE0C();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D7D28EEC();

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    return sub_1D7A4AAB4(v26, &qword_1EC9E6DC0, &unk_1EE0BFEF0, MEMORY[0x1E69D7CF8]);
  }
}

void _s12NewsArticles26RecipeViewerViewControllerC13pageBlueprint_0G023changedVisibilityFactor15scrollDirectiony5TeaUI04PageH0VyAA0cdP0OG_AL12CoreGraphics7CGFloatVSo06TUPageefM0VtF_0()
{
  v1 = v0;
  v2 = sub_1D7D2AA4C();
  if (v2)
  {
    v9 = v2;
    type metadata accessor for RecipeViewController(0);
    v3 = swift_dynamicCastClass();
    if (!v3 || (v4 = v3, (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v6 = Strong, Strong, v4 == v6))
    {
    }

    else
    {
      swift_unknownObjectWeakAssign();
      v7 = *(v4 + OBJC_IVAR____TtC12NewsArticles20RecipeViewController_navigationTitleViewBlock);

      if (v7)
      {
        sub_1D79C9398(v7);
        v8 = v7(v1);
        sub_1D79AD740(v7);
      }

      else
      {
        v8 = 0;
      }

      sub_1D7A4A720();
      sub_1D7D28F1C();
    }
  }
}

unint64_t sub_1D7A4A6CC()
{
  result = qword_1EC9E2C58;
  if (!qword_1EC9E2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2C58);
  }

  return result;
}

unint64_t sub_1D7A4A720()
{
  result = qword_1EC9E2C60;
  if (!qword_1EC9E2C60)
  {
    sub_1D7A4AB7C(255, &qword_1EC9E2BA8, MEMORY[0x1E69D8588], MEMORY[0x1E69E6720]);
    sub_1D7A4A7FC(&unk_1EC9E2C70, 255, MEMORY[0x1E69D8588]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2C60);
  }

  return result;
}

uint64_t sub_1D7A4A7FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D7A4A844(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D7A4A8AC()
{
  if (!qword_1EE0C0420)
  {
    sub_1D7A4A930(255, &unk_1EE0BF100, &qword_1EE0BF110, 0x1E69DCEF8, sub_1D7992EFC);
    v0 = sub_1D7D28F2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0420);
    }
  }
}

void sub_1D7A4A930(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D7D3130C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7A4A98C(uint64_t a1, uint64_t a2)
{
  Context = type metadata accessor for RecipeViewController.RecipeLoadContext(0);
  (*(*(Context - 8) + 16))(a2, a1, Context);
  return a2;
}

uint64_t sub_1D7A4A9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A4AA54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7A4AAB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1D7A4A930(0, a2, a3, a4, sub_1D798F168);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7A4AB2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7A4AB7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7A4AC40()
{
  if (!qword_1EC9E2CA0)
  {
    sub_1D7992EFC(255, &qword_1EE0BECC0);
    sub_1D7D2F51C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2CA0);
    }
  }
}

uint64_t sub_1D7A4AD18()
{
  v1 = v0;
  if (qword_1EC9DFDB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB90);
  v3 = sub_1D7D29ADC();
  v4 = sub_1D7D30C6C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D7987000, v3, v4, "Prewarming blueprint...", v5, 2u);
    MEMORY[0x1DA7102E0](v5, -1, -1);
  }

  v6 = v1[9];
  v7 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v6);
  (*(v7 + 8))(v6, v7);
  sub_1D7D28EDC();

  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  sub_1D7A4AE94(&v9);
  v19[2] = v11;
  v19[3] = v12;
  v20 = v13;
  v19[0] = v9;
  v19[1] = v10;
  return sub_1D7A4D754(v19);
}

void sub_1D7A4AE94(uint64_t a1)
{
  sub_1D7A4E1B0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = *(a1 + 64);
  v24 = v7;
  v8 = *(a1 + 16);
  *v23 = *a1;
  *&v23[16] = v8;
  v9 = *(a1 + 48);
  *&v23[32] = *(a1 + 32);
  *&v23[48] = v9;
  v10 = *v23;
  v11 = (v7 >> 60) & 3;
  if (v11)
  {
    if (v11 != 1)
    {
      return;
    }

    sub_1D7D3085C();
    v12 = sub_1D7D3087C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v1;
    *(v13 + 40) = v10;

    v14 = &unk_1D7D425F0;
  }

  else
  {
    v15 = *&v23[56];
    v16 = v7 & 0xCFFFFFFFFFFFFFFFLL;
    v20 = *&v23[8];
    v21 = *&v23[40];
    v19 = *&v23[24];
    sub_1D7D3085C();
    v17 = sub_1D7D3087C();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v1;
    *(v13 + 40) = v10;
    v18 = v19;
    *(v13 + 48) = v20;
    *(v13 + 64) = v18;
    *(v13 + 80) = v21;
    *(v13 + 96) = v15;
    *(v13 + 104) = v16;

    sub_1D7A4D9FC(v23, v22);
    v14 = &unk_1D7D42600;
  }

  sub_1D7AF94C0(0, 0, v6, v14, v13);
}

uint64_t sub_1D7A4B0CC(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_1EC9DFDB8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D7D29AFC();
  __swift_project_value_buffer(v6, qword_1ECA0BB90);
  sub_1D79D7DA4(a1, v20);
  v7 = sub_1D7D29ADC();
  v8 = sub_1D7D30C6C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    sub_1D79D7DA4(v20, v18);
    v11 = sub_1D7D303AC();
    v13 = v12;
    sub_1D7A2BB90(v20);
    v14 = sub_1D7B06D4C(v11, v13, &v19);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D7987000, v7, v8, "Selecting recipe viewer page=%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1DA7102E0](v10, -1, -1);
    MEMORY[0x1DA7102E0](v9, -1, -1);
  }

  else
  {

    sub_1D7A2BB90(v20);
  }

  result = swift_beginAccess();
  if (*(v3 + 160))
  {
    sub_1D799CC84(v3 + 136, v20);
    v16 = v21;
    v17 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v17 + 32))(a1, a2 & 1, v16, v17);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t sub_1D7A4B2D4()
{
  sub_1D79C92AC(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  sub_1D7A4E7B8(v0 + 136, &qword_1EC9E2B70, &qword_1EC9E2B68, &protocol descriptor for RecipeViewerCoordinatorType, sub_1D798F168);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7A4B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 256) = a4;
  sub_1D7A4E1B0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v5 + 264) = swift_task_alloc();
  v7 = *(a5 + 48);
  *(v5 + 48) = *(a5 + 32);
  *(v5 + 64) = v7;
  *(v5 + 80) = *(a5 + 64);
  v8 = *(a5 + 16);
  *(v5 + 16) = *a5;
  *(v5 + 32) = v8;
  v9 = swift_task_alloc();
  *(v5 + 272) = v9;
  *v9 = v5;
  v9[1] = sub_1D7A4B49C;

  return sub_1D7A4B918(v5 + 144, v5 + 16);
}

uint64_t sub_1D7A4B49C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1D7A4B750;
  }

  else
  {
    v2 = sub_1D7A4B5B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A4B5B0()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 160);
  *(v0 + 88) = *(v0 + 144);
  *(v0 + 104) = v2;
  *(v0 + 120) = *(v0 + 176);
  *(v0 + 136) = *(v0 + 192);
  v3 = sub_1D7D3087C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1D7D3084C();

  sub_1D79D7E00(v0 + 88, v0 + 200);
  v5 = sub_1D7D3083C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  *(v6 + 32) = v4;
  *(v6 + 40) = *(v0 + 88);
  *(v6 + 56) = *(v0 + 104);
  *(v6 + 72) = *(v0 + 120);
  *(v6 + 88) = *(v0 + 136);

  sub_1D7AF94C0(0, 0, v1, &unk_1D7D42618, v6);
  sub_1D7A4DD64(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D7A4B750()
{
  if (qword_1EC9DFDB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = sub_1D7D29AFC();
  __swift_project_value_buffer(v2, qword_1ECA0BB90);
  v3 = v1;
  v4 = sub_1D7D29ADC();
  v5 = sub_1D7D30C4C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 280);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D7987000, v4, v5, "Failed to load recipe from viewer blueprint, error=%@", v8, 0xCu);
    sub_1D7A4E7B8(v9, &unk_1EC9E30D0, &qword_1EE0BEC90, 0x1E69E58C0, sub_1D7992EFC);
    MEMORY[0x1DA7102E0](v9, -1, -1);
    MEMORY[0x1DA7102E0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D7A4B918(uint64_t a1, uint64_t a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  sub_1D7A4DE6C(v3 + 16, v3 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D7A4B9A0, 0, 0);
}

uint64_t sub_1D7A4B9A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v0 + 200) = v4;
  *(v0 + 184) = v1;
  *(v0 + 216) = v5;
  v6 = *(v0 + 80);
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v7 = off_1F529F4C8;
      v8 = type metadata accessor for RecipeViewerDataManager();
      v17 = (v7 + *v7);
      v9 = swift_task_alloc();
      *(v0 + 232) = v9;
      *v9 = v0;
      v9[1] = sub_1D7A4BC34;

      return (v17)(v2, v3, v8, &off_1F529F4C0);
    }

    else
    {
      v13 = swift_task_alloc();
      *(v0 + 256) = v13;
      v14 = sub_1D7992EFC(0, &qword_1EE0BECC0);
      v15 = sub_1D798F168(0, &qword_1EE0BE7E0);
      *v13 = v0;
      v13[1] = sub_1D7A4BE1C;
      v16 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v0 + 160, v6 & 0x3FFFFFFFFFFFFFFFLL, v14, v15, v16);
    }
  }

  else
  {
    **(v0 + 168) = v1;
    v11 = *(v0 + 168);
    *(v11 + 16) = v2;
    *(v11 + 24) = v3;
    *(v11 + 32) = v4;
    *(v11 + 48) = v5;
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D7A4BC34(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_1D7A4BFE8;
  }

  else
  {
    *(v4 + 248) = a1;
    v5 = sub_1D7A4BD5C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D7A4BD5C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  sub_1D7A4DEC8(v0 + 16);
  v3[2] = v1;
  *v3 = v2;
  v4 = *(v0 + 168);
  v5 = *(v0 + 216);
  v6 = *(v0 + 200);
  *(v4 + 8) = *(v0 + 192);
  *(v4 + 24) = v5;
  *(v4 + 40) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D7A4BE1C()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D7A4C04C;
  }

  else
  {
    v2 = sub_1D7A4BF30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A4BF30()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  sub_1D7A4DEC8(v0 + 16);
  v3[2] = v4;
  *v3 = v2;
  v5 = *(v0 + 168);
  v6 = *(v0 + 216);
  v7 = *(v0 + 200);
  *(v5 + 8) = v1;
  *(v5 + 24) = v6;
  *(v5 + 40) = v7;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D7A4BFE8()
{
  sub_1D7A4DEC8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A4C04C()
{
  sub_1D7A4DEC8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D7A4C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1D7A4DDB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_1D7D3084C();
  v5[10] = sub_1D7D3083C();
  v8 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7A4C1A4, v8, v7);
}

uint64_t sub_1D7A4C1A4()
{
  v12 = v0;

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[8];
    v2 = v0[9];
    v5 = v0[6];
    v4 = v0[7];
    __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
    v6 = *(v5 + 16);
    v10[0] = *v5;
    v10[1] = v6;
    v10[2] = *(v5 + 32);
    v11 = *(v5 + 48);
    v7 = off_1F529C450;
    type metadata accessor for RecipeViewerPageBlueprintFactory();
    v7(v10);
    sub_1D7A4C2E4();

    (*(v3 + 8))(v2, v4);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D7A4C2E4()
{
  sub_1D7D2ADEC();
  sub_1D7A4DE14();
  sub_1D7D28F1C();

  if (swift_unknownObjectWeakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D7D28C6C();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = swift_unknownObjectRelease();
    if (Strong)
    {
      *(Strong + OBJC_IVAR____TtC12NewsArticles26RecipeViewerViewController__isPagingEnabled) = 1;
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D7A4C3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1D7A4E1B0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A4C48C, 0, 0);
}

uint64_t sub_1D7A4C48C()
{
  v1 = v0[4];
  sub_1D7A4DF1C();
  v3 = v2;
  v4 = swift_allocObject();
  v0[6] = v4;
  swift_weakInit();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  sub_1D7A4E054(0, &qword_1EC9E2CE0, MEMORY[0x1E69E62F8]);
  v7 = v6;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1D7A4C5D4;

  return MEMORY[0x1EEE6DBF8](v0 + 2, v3, v7, 0, 0, &unk_1D7D42628, v5, v3);
}

uint64_t sub_1D7A4C5D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D7A4C708, 0, 0);
}

uint64_t sub_1D7A4C708()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_1D7D3087C();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  sub_1D7D3084C();

  v5 = sub_1D7D3083C();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;
  v6[5] = v2;

  sub_1D7AF94C0(0, 0, v1, &unk_1D7D42638, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D7A4C85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1D7A4DDB8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_1D7D3084C();
  v5[10] = sub_1D7D3083C();
  v8 = sub_1D7D307DC();

  return MEMORY[0x1EEE6DFA0](sub_1D7A4C950, v8, v7);
}

uint64_t sub_1D7A4C950()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[8];
    v2 = v0[9];
    v5 = v0[6];
    v4 = v0[7];
    __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
    sub_1D79D71B8(v5, v2);
    sub_1D7A4C2E4();

    (*(v3 + 8))(v2, v4);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D7A4CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[84] = a4;
  v4[83] = a3;
  v4[82] = a2;
  v4[81] = a1;
  sub_1D7A4E1B0(0, &qword_1EC9E2CE8, sub_1D7A4DF1C, MEMORY[0x1E69E8590]);
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  sub_1D7A4E1B0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7A4CBA4, 0, 0);
}

uint64_t sub_1D7A4CBA4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 720) = Strong;
  if (Strong)
  {
    v33 = (v0 + 512);
    v2 = *(v0 + 672);
    v39 = *(v2 + 16);
    if (v39)
    {
      v3 = Strong;
      v4 = v2 + 32;
      v5 = sub_1D7D3087C();
      v6 = 0;
      v7 = *(v5 - 8);
      v36 = *(v7 + 56);
      v35 = (v7 + 48);
      v34 = (v7 + 8);
      v37 = v5;
      v38 = v3;
      do
      {
        v10 = *(v0 + 712);
        v11 = *(v0 + 704);
        *(v0 + 88) = *v4;
        v13 = *(v4 + 32);
        v12 = *(v4 + 48);
        v14 = *(v4 + 64);
        *(v0 + 104) = *(v4 + 16);
        *(v0 + 152) = v14;
        *(v0 + 136) = v12;
        *(v0 + 120) = v13;
        v16 = *(v4 + 32);
        v15 = *(v4 + 48);
        v17 = *(v4 + 16);
        *(v0 + 80) = *(v4 + 64);
        *(v0 + 48) = v16;
        *(v0 + 64) = v15;
        *(v0 + 32) = v17;
        *(v0 + 16) = *v4;
        v36(v10, 1, 1, v5);
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 32) = v6;
        *(v18 + 40) = v3;
        v19 = *(v0 + 64);
        *(v18 + 80) = *(v0 + 48);
        *(v18 + 96) = v19;
        *(v18 + 112) = *(v0 + 80);
        v20 = *(v0 + 32);
        *(v18 + 48) = *(v0 + 16);
        *(v18 + 64) = v20;
        sub_1D7A4E3CC(v10, v11);
        v21 = (*v35)(v11, 1, v5);
        v22 = *(v0 + 704);
        if (v21 == 1)
        {
          sub_1D7A4E460(v0 + 88, v0 + 160);

          sub_1D7A4E460(v0 + 16, v0 + 232);
          sub_1D7A4E4BC(v22);
        }

        else
        {
          sub_1D7A4E460(v0 + 88, v0 + 304);

          sub_1D7A4E460(v0 + 16, v0 + 376);
          sub_1D7D3086C();
          (*v34)(v22, v5);
        }

        if (*(v18 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v23 = sub_1D7D307DC();
          v25 = v24;
          swift_unknownObjectRelease();
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v26 = **(v0 + 656);
        v27 = swift_allocObject();
        *(v27 + 16) = &unk_1D7D42648;
        *(v27 + 24) = v18;
        sub_1D7A4DF1C();

        if (v25 | v23)
        {
          v8 = v0 + 568;
          *(v0 + 568) = 0;
          *(v0 + 576) = 0;
          *(v0 + 584) = v23;
          *(v0 + 592) = v25;
        }

        else
        {
          v8 = 0;
        }

        ++v6;
        v9 = *(v0 + 712);
        *(v0 + 624) = 1;
        *(v0 + 632) = v8;
        *(v0 + 640) = v26;
        swift_task_create();

        sub_1D7A4E600(v0 + 16);
        sub_1D7A4E4BC(v9);
        v4 += 72;
        v3 = v38;
        v5 = v37;
      }

      while (v39 != v6);
    }

    *v33 = 0u;
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    *(v0 + 560) = 0;
    v28 = sub_1D7A4E654(v33, v39);
    sub_1D7A4DF1C();
    sub_1D7D3081C();
    *(v0 + 728) = v28;
    v29 = swift_task_alloc();
    *(v0 + 736) = v29;
    *v29 = v0;
    v29[1] = sub_1D7A4D044;
    v30 = *(v0 + 680);

    return MEMORY[0x1EEE6D8A8](v0 + 448, 0, 0, v30);
  }

  else
  {
    **(v0 + 648) = MEMORY[0x1E69E7CC0];

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D7A4D044()
{

  return MEMORY[0x1EEE6DFA0](sub_1D7A4D140, 0, 0);
}

uint64_t sub_1D7A4D140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 464);
  if (v5 != 1)
  {
    if (v5)
    {
      v6 = *(v4 + 448);
      v7 = *(v4 + 728);
      v8 = *(v7 + 16);
      if (v8 < v6)
      {
LABEL_26:
        __break(1u);
      }

      else if ((v6 & 0x8000000000000000) == 0)
      {
        v37 = *(v4 + 456);
        v35 = *(v4 + 472);
        v9 = *(v4 + 488);
        v10 = *(v4 + 496);
        v11 = *(v4 + 504);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = *(v4 + 728);
        if (!isUniquelyReferenced_nonNull_native || v8 >= v13[3] >> 1)
        {
          v13 = sub_1D79E42D8(isUniquelyReferenced_nonNull_native, v8 + 1, 1, *(v4 + 728));
        }

        v14 = &v13[7 * v6];
        sub_1D7A4E054(0, &qword_1EC9E19C8, MEMORY[0x1E69E6720]);
        swift_arrayDestroy();
        memmove(v14 + 11, v14 + 4, 56 * (v13[2] - v6));
        ++v13[2];
        *(v14 + 2) = v37;
        *(v14 + 3) = v35;
        v14[8] = v9;
        v14[9] = v10;
        v14[10] = v11;
        *(v4 + 728) = v13;
        goto LABEL_9;
      }

      __break(1u);
      return MEMORY[0x1EEE6D8A8](v7, a2, a3, a4);
    }

LABEL_9:
    v15 = swift_task_alloc();
    *(v4 + 736) = v15;
    *v15 = v4;
    v15[1] = sub_1D7A4D044;
    a4 = *(v4 + 680);
    v7 = v4 + 448;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x1EEE6D8A8](v7, a2, a3, a4);
  }

  v16 = *(v4 + 728);
  v7 = (*(*(v4 + 688) + 8))(*(v4 + 696), *(v4 + 680));
  v17 = 0;
  v18 = *(v16 + 16);
  v19 = v16 + 8;
  v20 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v21 = v19 + 56 * v17;
  while (v18 != v17)
  {
    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    ++v17;
    v22 = (v21 + 56);
    v23 = *(v21 + 32);
    v21 += 56;
    if (v23)
    {
      v38 = v19;
      v24 = *(v22 - 2);
      v36 = *(v22 - 1);
      v25 = *v22;
      v33 = *(v22 - 4);
      v34 = v22[1];
      v26 = v22[2];

      v32 = v24;

      v7 = swift_isUniquelyReferenced_nonNull_native();
      if ((v7 & 1) == 0)
      {
        v7 = sub_1D79E3BD4(0, *(v20 + 16) + 1, 1, v20);
        v20 = v7;
      }

      v28 = *(v20 + 16);
      v27 = *(v20 + 24);
      if (v28 >= v27 >> 1)
      {
        v7 = sub_1D79E3BD4((v27 > 1), v28 + 1, 1, v20);
        v20 = v7;
      }

      *(v20 + 16) = v28 + 1;
      v29 = (v20 + 56 * v28);
      v29[4] = v33;
      v29[5] = v23;
      v29[6] = v32;
      v29[7] = v36;
      v29[8] = v25;
      v29[9] = v34;
      v29[10] = v26;
      v19 = v38;
      goto LABEL_13;
    }
  }

  **(v4 + 648) = v20;

  v30 = *(v4 + 8);

  return v30();
}

uint64_t sub_1D7A4D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a1;
  v6[19] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D7A4D4C8, 0, 0);
}

uint64_t sub_1D7A4D4C8()
{
  v1 = *(v0 + 168);
  **(v0 + 144) = *(v0 + 152);
  *(v0 + 16) = *v1;
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  *(v0 + 80) = *(v1 + 64);
  *(v0 + 48) = v3;
  *(v0 + 64) = v4;
  *(v0 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1D7A4D590;

  return sub_1D7A4B918(v0 + 88, v0 + 16);
}

uint64_t sub_1D7A4D590()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D7A4D6D4;
  }

  else
  {
    v2 = sub_1D7A4D6A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D7A4D6A4()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 144);
  *(v4 + 8) = *(v0 + 88);
  *(v4 + 16) = v3;
  *(v4 + 32) = v2;
  *(v4 + 48) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1D7A4D6D4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  *v1 = v2;
  v3 = *(v0 + 144);
  *(v3 + 56) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 8) = 0u;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D7A4D7A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E814;

  return sub_1D7A4C3CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D7A4D868(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v9 = a9 >> 62;
  if ((a9 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return result;
    }
  }

  else if (v9)
  {
  }

  else
  {
  }
}

uint64_t sub_1D7A4D93C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E814;

  return sub_1D7A4B384(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1D7A4DA58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D7A4DB50;

  return v6(a1);
}

uint64_t sub_1D7A4DB50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1D7A4DC48(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1D7D3130C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D7A4DCA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D7A4E814;

  return sub_1D7A4C0B0(a1, v4, v5, v6, (v1 + 5));
}

void sub_1D7A4DDB8()
{
  if (!qword_1EC9E2B50)
  {
    sub_1D79D7D18();
    v0 = sub_1D7D29FDC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2B50);
    }
  }
}

unint64_t sub_1D7A4DE14()
{
  result = qword_1EC9E2CD0;
  if (!qword_1EC9E2CD0)
  {
    sub_1D7A4DDB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2CD0);
  }

  return result;
}

void sub_1D7A4DF1C()
{
  if (!qword_1EC9E2CD8)
  {
    sub_1D7A4E054(255, &qword_1EC9E19C8, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2CD8);
    }
  }
}

uint64_t sub_1D7A4DFA0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D7A4E814;

  return sub_1D7A4CA40(a1, a2, v7, v6);
}

void sub_1D7A4E054(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for RecipeViewerRecipe);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7A4E0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E814;

  return sub_1D7A4C85C(a1, v4, v5, v7, v6);
}

void sub_1D7A4E1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A4E214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E2D8;

  return sub_1D7A4D4A4(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_1D7A4E2D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D7A4E3CC(uint64_t a1, uint64_t a2)
{
  sub_1D7A4E1B0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A4E4BC(uint64_t a1)
{
  sub_1D7A4E1B0(0, &qword_1EE0BF1B0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7A4E548(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7A4E2D8;

  return sub_1D7A4DA58(a1, v4);
}

uint64_t sub_1D7A4E654(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1D7A4E054(0, &qword_1EC9E19C8, MEMORY[0x1E69E6720]);
    v4 = sub_1D7D3070C();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = v4 + 88;
      do
      {
        sub_1D7A4E738(v3, v14);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_1D7A4E738(v3, v14);
    return v5;
  }

  return result;
}

uint64_t sub_1D7A4E738(uint64_t a1, uint64_t a2)
{
  sub_1D7A4E054(0, &qword_1EC9E19C8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A4E7B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D7A4DC48(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t IssueViewerModule.createViewController(for:dedupeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v19 = *(a1 + 16);
  if (*(a1 + 24) && v6 == 1)
  {
  }

  else
  {
    v7 = [v4 identifier];
    sub_1D7D3034C();
  }

  v8 = sub_1D7D28A1C();

  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR___TSIssueViewerModule_contextBuilder), *(v3 + OBJC_IVAR___TSIssueViewerModule_contextBuilder + 24));
  if (v6 == 1)
  {
  }

  else
  {
    v9 = [v4 identifier];
    sub_1D7D3034C();
  }

  sub_1D7AD388C();

  v10 = (v3 + OBJC_IVAR___TSIssueViewerModule_resolver);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1D798F168(0, qword_1EE0CE218);
  result = sub_1D7D28D2C();
  if (v25)
  {
    sub_1D799D69C(&v24, v26);
    v12 = v27;
    v13 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    *&v21 = v4;
    *(&v21 + 1) = v5;
    v22 = v19;
    v23 = v6;
    (*(v13 + 8))(&v24, &v21, v12, v13);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    type metadata accessor for IssueViewerViewController();
    sub_1D799CC84(&v24, &v21);
    sub_1D799CC84(v29, v20);
    v14 = swift_allocObject();
    sub_1D799D69C(&v21, v14 + 16);
    *(v14 + 56) = v8;
    sub_1D799D69C(v20, v14 + 64);

    v15 = sub_1D7D28CFC();

    if (v15)
    {

      __swift_destroy_boxed_opaque_existential_1(&v24);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v16 = (v15 + OBJC_IVAR____TtC12NewsArticles25IssueViewerViewController_viewerIdentifier);
      *v16 = a2;
      v16[1] = a3;

      __swift_destroy_boxed_opaque_existential_1(v26);
      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7A4EB68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EC9E2A88);
  sub_1D7D28BFC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7D28A3C();
  sub_1D7D28BEC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D798F168(0, &qword_1EE0CBDD0);
  return sub_1D7D28BFC();
}

id IssueViewerModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IssueViewerModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7A4EE14(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a2 + 16);
  if (v5)
  {
    for (i = (a2 + 56); ; i += 4)
    {
      v7 = *i;
      v8 = *(i - 8);
      v9 = *(i - 2);
      v10[0] = *(i - 3);
      v10[1] = v9;
      v11 = v8;
      v12 = v7;

      sub_1D7A4EEE8(&v13, v10, a1);
      if (v2)
      {
        break;
      }

      if (!--v5)
      {
        return v13;
      }
    }
  }

  return result;
}

uint64_t sub_1D7A4EEE8(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v6 = *(v4 + 16);
  if (!v6)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = v4 + 40;
  do
  {
    v10 = (v9 + 16 * v8);
    v11 = v8;
    while (1)
    {
      if (v11 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (*(a3 + 16))
      {
        break;
      }

LABEL_4:
      ++v11;
      v10 += 2;
      if (v6 == v11)
      {
        goto LABEL_12;
      }
    }

    v12 = *(v10 - 1);
    v13 = *v10;

    v14 = sub_1D7A18FFC(v12, v13);
    if ((v15 & 1) == 0)
    {

      goto LABEL_4;
    }

    v16 = *(*(a3 + 56) + 8 * v14);

    MEMORY[0x1DA70E080](v17);
    if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D7D306DC();
    }

    v8 = v11 + 1;
    sub_1D7D3072C();
    v5 = v23;
    v9 = v4 + 40;
  }

  while (v6 - 1 != v11);
LABEL_12:
  if (v5 >> 62)
  {
LABEL_21:
    if (!sub_1D7D3167C())
    {
      goto LABEL_22;
    }

LABEL_14:
    if (*a1 >> 62)
    {
      if (sub_1D7D3167C())
      {
        goto LABEL_16;
      }
    }

    else if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:
      v18 = [objc_opt_self() fixedSpaceItem];

      MEMORY[0x1DA70DE90](0x7265636170732DLL, 0xE700000000000000);
      v19 = sub_1D7D3031C();

      [v18 setIdentifier_];

      v20 = v18;
      MEMORY[0x1DA70E080]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
      }

      sub_1D7D3072C();
    }

    return sub_1D79E2C7C(v5);
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_22:

  if (v22)
  {
    sub_1D7A4F1D0();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D7A4F1D0()
{
  result = qword_1EE0C2DF8[0];
  if (!qword_1EE0C2DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C2DF8);
  }

  return result;
}

uint64_t NowPlayingPresentationRequest.headline.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t NowPlayingPresentationRequest.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NowPlayingPresentationRequest(0) + 28);
  v4 = sub_1D7D2F68C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NowPlayingPresentationRequest.source.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlayingPresentationRequest(0) + 28);
  v4 = sub_1D7D2F68C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NowPlayingPresentationRequest.origin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NowPlayingPresentationRequest(0) + 32);
  v4 = sub_1D7D2EEEC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NowPlayingPresentationRequest.origin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlayingPresentationRequest(0) + 32);
  v4 = sub_1D7D2EEEC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NowPlayingPresentationRequest.method.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NowPlayingPresentationRequest(0) + 36);
  v4 = sub_1D7D2F1AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NowPlayingPresentationRequest.method.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlayingPresentationRequest(0) + 36);
  v4 = sub_1D7D2F1AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NowPlayingPresentationRequest.init(headline:playing:docked:source:origin:method:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 9) = a3;
  v11 = type metadata accessor for NowPlayingPresentationRequest(0);
  v12 = v11[7];
  v13 = sub_1D7D2F68C();
  (*(*(v13 - 8) + 32))(a7 + v12, a4, v13);
  v14 = v11[8];
  v15 = sub_1D7D2EEEC();
  (*(*(v15 - 8) + 32))(a7 + v14, a5, v15);
  v16 = v11[9];
  v17 = sub_1D7D2F1AC();
  v18 = *(*(v17 - 8) + 32);

  return v18(a7 + v16, a6, v17);
}

uint64_t NowPlayingURLHandler.patterns.getter()
{
  v0 = MEMORY[0x1E69E6F90];
  sub_1D7A4FD34(0, &unk_1EE0BE978, MEMORY[0x1E69D66F8], MEMORY[0x1E69E6F90]);
  v1 = sub_1D7D290DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7D3B4E0;
  v6 = (v5 + v4);
  *v6 = 0x676E6979616C70;
  v6[1] = 0xE700000000000000;
  v7 = *(v2 + 104);
  (v7)(v6, *MEMORY[0x1E69D66E8], v1);
  v8 = (v6 + v3);
  *v8 = 0x64656B636F64;
  v8[1] = 0xE600000000000000;
  v7();
  sub_1D7A4FC8C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4D0;
  *(inited + 32) = 0x49656C6369747261;
  *(inited + 40) = 0xE900000000000044;
  sub_1D7A4FD34(0, &unk_1EE0BE968, MEMORY[0x1E69D6710], v0);
  v10 = sub_1D7D2910C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7D3B4E0;
  v15 = (v14 + v13);
  *v15 = 65;
  v15[1] = 0xE100000000000000;
  v16 = *(v11 + 104);
  result = v16(v15, *MEMORY[0x1E69D6700], v10);
  if ((*MEMORY[0x1E69B5050] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v15 + v12) = *MEMORY[0x1E69B5050];
    v16((v15 + v12), *MEMORY[0x1E69D6708], v10);
    *(inited + 48) = v14;
    sub_1D7A50D84(inited, &unk_1EE0BEBB0, sub_1D7A4FD00);
    swift_setDeallocating();
    sub_1D7A50E7C(inited + 32);
    v18 = sub_1D7D290EC();

    return v18;
  }

  return result;
}

void sub_1D7A4FC8C()
{
  if (!qword_1EE0BE870)
  {
    sub_1D7A5161C(255, &unk_1EE0BF3F8, sub_1D7A4FD00);
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BE870);
    }
  }
}

void sub_1D7A4FD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t NowPlayingURLHandler.__allocating_init(headlineProviderFactory:nowPlayingPresenting:base:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1D799D69C(a1, v6 + 16);
  sub_1D799D69C(a2, v6 + 56);
  v7 = OBJC_IVAR____TtC12NewsArticles20NowPlayingURLHandler_base;
  v8 = sub_1D7D290FC();
  (*(*(v8 - 8) + 32))(v6 + v7, a3, v8);
  return v6;
}

uint64_t NowPlayingURLHandler.init(headlineProviderFactory:nowPlayingPresenting:base:)(__int128 *a1, __int128 *a2, uint64_t a3)
{
  sub_1D799D69C(a1, v3 + 16);
  sub_1D799D69C(a2, v3 + 56);
  v6 = OBJC_IVAR____TtC12NewsArticles20NowPlayingURLHandler_base;
  v7 = sub_1D7D290FC();
  (*(*(v7 - 8) + 32))(v3 + v6, a3, v7);
  return v3;
}

uint64_t NowPlayingURLHandler.handleURL(for:)(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  sub_1D7A4FD34(0, &qword_1EE0BB420, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  v39 = v3;
  v37 = *(v3 - 8);
  v35 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v36 = &v34 - v5;
  v6 = sub_1D7D28F9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7D28FCC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v1[10];
  v17 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v16);
  if (((*(v17 + 8))(v16, v17) & 1) != 0 && (sub_1D7D290CC(), sub_1D7D28FBC(), (*(v12 + 8))(v15, v11), v18 = sub_1D7D28FAC(), v20 = v19, (*(v7 + 8))(v10, v6), v20))
  {
    v21 = v2[5];
    v22 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v21);
    (*(v22 + 8))(v41, v18, v20, v21, v22);

    v23 = v42;
    v24 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v24 + 8))(v23, v24);
    v25 = sub_1D7D28C3C();
    v27 = v36;
    v26 = v37;
    v28 = v39;
    (*(v37 + 16))(v36, v38, v39);
    sub_1D799CC84((v2 + 7), v40);
    v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v30 = (v35 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v28);
    sub_1D799D69C(v40, v31 + v30);
    v32 = sub_1D7D293AC();

    __swift_destroy_boxed_opaque_existential_1(v41);
    return v32;
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    sub_1D7A50EF4();
    swift_allocObject();
    return sub_1D7D2940C();
  }
}

uint64_t sub_1D7A502D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v59 = sub_1D7D28F9C();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v7);
  v61 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v58 - v11;
  v13 = sub_1D7D28FCC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v58 - v20;
  v64 = type metadata accessor for NowPlayingPresentationRequest(0);
  MEMORY[0x1EEE9AC00](v64, v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  sub_1D7A4FD34(0, &qword_1EE0BB420, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  v27 = v26;
  v65 = v25;
  swift_unknownObjectRetain();
  v58 = v27;
  v62 = a2;
  sub_1D7D290CC();
  sub_1D7D28FBC();
  v28 = *(v14 + 8);
  v60 = v13;
  v29 = v13;
  v30 = v28;
  v28(v21, v29);
  v31 = sub_1D7D28FAC();
  v33 = v32;
  v34 = *(v6 + 8);
  v35 = v12;
  v36 = v59;
  v63 = v6 + 8;
  v34(v35, v59);
  if (v33)
  {
    if (v31 == 49 && v33 == 0xE100000000000000)
    {
      v38 = 1;
    }

    else
    {
      v38 = sub_1D7D3197C();
    }
  }

  else
  {
    v38 = 0;
  }

  sub_1D7D290CC();
  v39 = v61;
  sub_1D7D28FBC();
  v30(v17, v60);
  v40 = sub_1D7D28FAC();
  v42 = v41;
  v34(v39, v36);
  if (v42)
  {
    if (v40 == 49 && v42 == 0xE100000000000000)
    {
      v43 = 1;
    }

    else
    {
      v43 = sub_1D7D3197C();
    }
  }

  else
  {
    v43 = 0;
  }

  v44 = v64;
  v45 = *(v64 + 28);
  v46 = *MEMORY[0x1E69B63A0];
  v47 = sub_1D7D2F68C();
  (*(*(v47 - 8) + 104))(&v24[v45], v46, v47);
  v48 = *(v44 + 32);
  v49 = *MEMORY[0x1E69B6058];
  v50 = sub_1D7D2EEEC();
  (*(*(v50 - 8) + 104))(&v24[v48], v49, v50);
  v51 = *(v44 + 36);
  v52 = *MEMORY[0x1E69B6178];
  v53 = sub_1D7D2F1AC();
  (*(*(v53 - 8) + 104))(&v24[v51], v52, v53);
  v54 = v66;
  *v24 = v65;
  v24[8] = v38 & 1;
  v24[9] = v43 & 1;
  v55 = v54[3];
  v56 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v55);
  LOBYTE(v55) = (*(v56 + 16))(v24, v55, v56);
  result = sub_1D7A51D7C(v24);
  *v67 = v55 & 1;
  return result;
}

uint64_t NowPlayingURLHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = OBJC_IVAR____TtC12NewsArticles20NowPlayingURLHandler_base;
  v2 = sub_1D7D290FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NowPlayingURLHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  v1 = OBJC_IVAR____TtC12NewsArticles20NowPlayingURLHandler_base;
  v2 = sub_1D7D290FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D7A5092C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7A51B68();
    v3 = sub_1D7D316BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D7A51AF0(v4, &v11, sub_1D79D69BC);
      v5 = v11;
      result = sub_1D7A5B7B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D7A51B58(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1D7A50A3C(uint64_t a1)
{
  sub_1D7A5161C(0, &qword_1EE0BB0F8, MEMORY[0x1E69B6A88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1D7A51680(0, &qword_1EC9E2D40, MEMORY[0x1E69B6A88]);
    v9 = sub_1D7D316BC();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1D7A516E4(v11, v7);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1D7A18FFC(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = sub_1D7D295CC();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
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

unint64_t sub_1D7A50C38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7A51A98(0, &qword_1EE0BEB98);
    v3 = sub_1D7D316BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D7A51AF0(v4, &v13, sub_1D7A19AB4);
      v5 = v13;
      v6 = v14;
      result = sub_1D7A18FFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D7A51B58(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D7A50D84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1D7A51680(0, a2, a3);
    v5 = sub_1D7D316BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D7A18FFC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_1D7A50E7C(uint64_t a1)
{
  sub_1D7A5161C(0, &unk_1EE0BF3F8, sub_1D7A4FD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7A50EF4()
{
  if (!qword_1EC9E2D08)
  {
    v0 = sub_1D7D2947C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC9E2D08);
    }
  }
}

uint64_t sub_1D7A50F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D7A4FD34(0, &qword_1EE0BB420, MEMORY[0x1E69D7690], MEMORY[0x1E69D66D8]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_1D7A502D8(a1, v2 + v6, (v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_1D7A510AC()
{
  result = sub_1D799621C();
  if (v1 <= 0x3F)
  {
    result = sub_1D7D2F68C();
    if (v2 <= 0x3F)
    {
      result = sub_1D7D2EEEC();
      if (v3 <= 0x3F)
      {
        result = sub_1D7D2F1AC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D7A511F0()
{
  result = sub_1D7D290FC();
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

unint64_t sub_1D7A512B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7A51680(0, &qword_1EC9E2D38, sub_1D79A9404);
    v3 = sub_1D7D316BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D7A18FFC(v5, v6);
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

unint64_t sub_1D7A513CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7A514F0();
    v3 = sub_1D7D316BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D7A51AF0(v4, &v13, sub_1D7A5156C);
      v5 = v13;
      v6 = v14;
      result = sub_1D7A18FFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D799D69C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void sub_1D7A514F0()
{
  if (!qword_1EE0BEBD8)
  {
    sub_1D798C468(255, &qword_1EE0C4A40);
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEBD8);
    }
  }
}

void sub_1D7A5156C()
{
  if (!qword_1EC9E2D18)
  {
    sub_1D798C468(255, &qword_1EE0C4A40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E2D18);
    }
  }
}

void sub_1D7A5161C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D7A51680(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7D316CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D7A516E4(uint64_t a1, uint64_t a2)
{
  sub_1D7A5161C(0, &qword_1EE0BB0F8, MEMORY[0x1E69B6A88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1D7A51764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1D7A51C50();
  v3 = sub_1D7D316BC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1D7A5B954(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1D7A5B954(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D7A51868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7A51A98(0, &qword_1EC9E2D48);
    v3 = sub_1D7D316BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D7A18FFC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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

unint64_t sub_1D7A51980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D7A51A98(0, &qword_1EE0BAF20);
    v3 = sub_1D7D316BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D7A18FFC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
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

void sub_1D7A51A98(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D7D316CC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1D7A51AF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

_OWORD *sub_1D7A51B58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1D7A51B68()
{
  if (!qword_1EE0BEB88)
  {
    type metadata accessor for Key(255);
    sub_1D7A51C08(&qword_1EE0BEF20, type metadata accessor for Key);
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEB88);
    }
  }
}

uint64_t sub_1D7A51C08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D7A51C50()
{
  if (!qword_1EE0BAF30)
  {
    sub_1D7A51CBC();
    sub_1D7A51D28();
    v0 = sub_1D7D316CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BAF30);
    }
  }
}

void sub_1D7A51CBC()
{
  if (!qword_1EE0BB0D8)
  {
    sub_1D798C468(255, &unk_1EE0BBD80);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BB0D8);
    }
  }
}

unint64_t sub_1D7A51D28()
{
  result = qword_1EE0BDCE8[0];
  if (!qword_1EE0BDCE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0BDCE8);
  }

  return result;
}

uint64_t sub_1D7A51D7C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingPresentationRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SubscribeActionModel.init(postPurchaseBehavior:purchaseTraits:sourceChannelID:purchaseSessionID:paywallType:postPurchaseDestination:hidePostPurchaseOnboarding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  if (v13 == 255)
  {
    v12 = 1;
  }

  *a9 = v12;
  *(a9 + 8) = (v13 != 255) & v13;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a2;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  v14 = type metadata accessor for SubscribeActionModel();
  result = sub_1D7A51E80(a8, a9 + *(v14 + 36));
  *(a9 + *(v14 + 40)) = a10;
  return result;
}

uint64_t sub_1D7A51E80(uint64_t a1, uint64_t a2)
{
  sub_1D7992288(0, &unk_1EE0CBE90, MEMORY[0x1E69B6B80], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7A51FF4(void (*a1)(void))
{
  sub_1D7D2E1EC();
  a1();
}

uint64_t sub_1D7A52078(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1D7D2E1EC();
  a3();
}

id BarButtonItem.__allocating_init(barButtonItem:additionalPageContentInset:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___NABarButtonItem_barButtonItem] = a1;
  v12 = &v11[OBJC_IVAR___NABarButtonItem_additionalPageContentInset];
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BarButtonItem.init(barButtonItem:additionalPageContentInset:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___NABarButtonItem_barButtonItem] = a1;
  v12 = &v5[OBJC_IVAR___NABarButtonItem_additionalPageContentInset];
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *NowPlayingMenuFactory.__allocating_init(commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *NowPlayingMenuFactory.init(commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t NowPlayingMenuFactory.menu(with:sourceView:)(uint64_t a1, void *a2)
{
  v36 = a1;
  v37 = sub_1D7D2F51C();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2EF2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D7D2B49C();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  (*(v17 + 104))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D7F98], v15);
  v35 = v2;
  v18 = *(v2 + 32);
  v39 = sub_1D7D28A3C();
  v40 = sub_1D7A108E4();
  v38 = v18;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  sub_1D7D2B10C();
  swift_allocObject();

  v19 = a2;
  sub_1D7D2B0EC();
  sub_1D7A52888(0, &qword_1EE0BAE40, sub_1D7A52854, MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7D42910;
  v21 = sub_1D7D2A36C();
  *v12 = v36;
  (*(v9 + 104))(v12, *MEMORY[0x1E69B60B8], v8);
  swift_unknownObjectRetain();
  v22 = MEMORY[0x1DA707D50](v12, 1);
  (*(v9 + 8))(v12, v8);
  v23 = MEMORY[0x1E69D7890];
  *(v20 + 56) = v21;
  *(v20 + 64) = v23;
  *(v20 + 32) = v22;
  v24 = v37;
  (*(v4 + 104))(v7, *MEMORY[0x1E69B6350], v37);
  v25 = sub_1D7D2A30C();
  (*(v4 + 8))(v7, v24);
  if (v25)
  {
    v26 = MEMORY[0x1E69D7890];
    v27 = v21;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    *(v20 + 80) = 0;
    *(v20 + 88) = 0;
  }

  *(v20 + 72) = v25;
  *(v20 + 96) = v27;
  *(v20 + 104) = v26;
  v28 = sub_1D7C434A0();
  if (v28)
  {
    v29 = MEMORY[0x1E69D7890];
    v30 = v21;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    *(v20 + 120) = 0;
    *(v20 + 128) = 0;
  }

  *(v20 + 112) = v28;
  *(v20 + 136) = v30;
  *(v20 + 144) = v29;
  v31 = sub_1D7C436A0();
  if (v31)
  {
    v32 = MEMORY[0x1E69D7890];
  }

  else
  {
    v21 = 0;
    v32 = 0;
    *(v20 + 160) = 0;
    *(v20 + 168) = 0;
  }

  *(v20 + 152) = v31;
  *(v20 + 176) = v21;
  *(v20 + 184) = v32;
  sub_1D7D29C8C();
  result = sub_1D7D29C4C();
  if (result)
  {
    sub_1D7A529DC();
    sub_1D7D29C2C();
    v34 = sub_1D7D3106C();

    return v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7A52888(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7A528EC()
{
  result = qword_1EE0BB2B0;
  if (!qword_1EE0BB2B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BB2B0);
  }

  return result;
}

uint64_t NowPlayingMenuFactory.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NowPlayingMenuFactory.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7A529DC()
{
  result = qword_1EE0BED30;
  if (!qword_1EE0BED30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0BED30);
  }

  return result;
}

uint64_t sub_1D7A52A8C()
{

  return swift_deallocClassInstance();
}

void sub_1D7A52B0C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_ctaButton);
  sub_1D7D2A84C();
  v3 = objc_opt_self();
  v4 = [v3 systemPinkColor];
  [v2 setBackgroundColor_];

  v5 = [v2 titleLabel];
  if (v5)
  {
    v6 = v5;
    sub_1D79F7B94();
    v7 = sub_1D7D3105C();
    [v6 setFont_];
  }

  v8 = [v2 titleLabel];
  if (v8)
  {
    v9 = v8;
    [v8 setAdjustsFontSizeToFitWidth_];
  }

  v10 = [v2 titleLabel];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 whiteColor];
    [v11 setTextColor_];
  }

  [v2 setTitleEdgeInsets_];
  v13 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_titleLabel);
  v14 = [v3 labelColor];
  [v13 setTextColor_];

  sub_1D79F7B94();
  v15 = sub_1D7D3105C();
  [v13 setFont_];

  [v13 setAdjustsFontSizeToFitWidth_];
  [v13 setNumberOfLines_];
  v16 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_bodyLabel);
  v17 = sub_1D7D3105C();
  [v16 setFont_];

  v18 = [v3 secondaryLabelColor];
  [v16 setTextColor_];

  [v16 setNumberOfLines_];
  v19 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_backgroundView);
  v20 = [v3 systemGray6Color];
  [v19 setBackgroundColor_];

  v21 = *(a1 + OBJC_IVAR____TtC12NewsArticles8BrandBar_pinstripe);
  v22 = [v3 systemGray3Color];
  [v21 setBackgroundColor_];
}

unint64_t AudioAction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1D7A52EB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_1D7A52F4C()
{
  result = qword_1EC9E2D60;
  if (!qword_1EC9E2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2D60);
  }

  return result;
}

uint64_t sub_1D7A53098(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  sub_1D7A53A4C();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v54[1] = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A53C1C(0, &qword_1EE0BAF58, type metadata accessor for ArticleViewerPage, MEMORY[0x1E69E6BC0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v55 = v54 - v10;
  sub_1D7A53B18(0, &qword_1EE0BB258, MEMORY[0x1E69D8238]);
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v54 - v13);
  v56 = type metadata accessor for ArticleViewerPage(0);
  v15 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v16);
  v57 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v54 - v20;
  sub_1D7A2B8F8();
  v23 = v22;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  (*(v27 + 16))(v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v23, v25);
  sub_1D799C0A4(&qword_1EE0BB338, sub_1D7A2B8F8);
  v28 = sub_1D7D3053C();
  v29 = OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_articlePage;
  v30 = v28[2];

  if (v30)
  {
    v31 = 0;
    while (1)
    {
      if (v31 >= v28[2])
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_1D7A53BB4(v28 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v31, v21, type metadata accessor for ArticleViewerPage);
      v32 = _s12NewsArticles17ArticleViewerPageO2eeoiySbAC_ACtFZ_0(v21, v3 + v29);
      sub_1D7A53CD4(v21, type metadata accessor for ArticleViewerPage);
      if (v32)
      {
        break;
      }

      if (v30 == ++v31)
      {
        goto LABEL_6;
      }
    }

    v42 = v57;
    sub_1D7A53BB4(v3 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_advertisementModel, v57, type metadata accessor for InterstitialAdModel);
    v43 = *(v3 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_tracker);
    *(v42 + *(type metadata accessor for InterstitialAdvertisementPage(0) + 20)) = v43;
    v44 = v56;
    result = swift_storeEnumTagMultiPayload();
    v45 = v28[2];
    if (v45 - 1 == v31)
    {

      v46 = MEMORY[0x1E69D8230];
LABEL_16:
      v53 = v58;
      v52 = v59;
      (*(v58 + 104))(v14, *v46, v59);
      v61(v14);
      (*(v53 + 8))(v14, v52);
      return sub_1D7A53CD4(v42, type metadata accessor for ArticleViewerPage);
    }

    if (v45 <= v31)
    {
      __break(1u);
    }

    else
    {
      v47 = v55;
      result = sub_1D7A53BB4(v42, v55, type metadata accessor for ArticleViewerPage);
      v48 = v28[2];
      if (v48 > v31)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v28;
        if (!isUniquelyReferenced_nonNull_native || v48 >= v28[3] >> 1)
        {
          v28 = sub_1D79E4460(isUniquelyReferenced_nonNull_native, v48 + 1, 1, v28);
          v62 = v28;
        }

        sub_1D7BE2760(v31 + 1, v31 + 1, 1, v47);
        v50 = sub_1D799C0A4(&qword_1EE0C9920, type metadata accessor for ArticleViewerPage);
        v51 = sub_1D799C0A4(&unk_1EE0C9940, type metadata accessor for ArticleViewerPage);
        MEMORY[0x1DA706A80](v28, v44, v50, v51);
        sub_1D799C0A4(&qword_1EE0C9930, type metadata accessor for ArticleViewerPage);
        sub_1D7D29FBC();
        v46 = MEMORY[0x1E69D8228];
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (qword_1EE0C9558 != -1)
    {
LABEL_18:
      swift_once();
    }

    sub_1D7D30C4C();
    sub_1D7A53C1C(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1D7D3B4D0;
    v34 = ArticleViewerPage.identifier.getter();
    v36 = v35;
    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1D79D6AE0();
    *(v33 + 32) = v34;
    *(v33 + 40) = v36;
    sub_1D7D29AAC();

    sub_1D7A53C80();
    v37 = swift_allocError();
    *v38 = 0xD000000000000031;
    v38[1] = 0x80000001D7D6C6A0;
    *v14 = v37;
    v40 = v58;
    v39 = v59;
    (*(v58 + 104))(v14, *MEMORY[0x1E69D8220], v59);
    v61(v14);
    return (*(v40 + 8))(v14, v39);
  }

  return result;
}

uint64_t sub_1D7A53804()
{
  sub_1D7A53CD4(v0 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_advertisementModel, type metadata accessor for InterstitialAdModel);
  sub_1D7A53CD4(v0 + OBJC_IVAR____TtC12NewsArticles40InsertAdvertisementPageBlueprintModifier_articlePage, type metadata accessor for ArticleViewerPage);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InsertAdvertisementPageBlueprintModifier()
{
  result = qword_1EE0BBA60;
  if (!qword_1EE0BBA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A53904()
{
  result = type metadata accessor for InterstitialAdModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ArticleViewerPage(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D7A53A4C()
{
  if (!qword_1EE0C0390)
  {
    type metadata accessor for ArticleViewerPage(255);
    sub_1D799C0A4(&qword_1EE0C9920, type metadata accessor for ArticleViewerPage);
    sub_1D799C0A4(&unk_1EE0C9940, type metadata accessor for ArticleViewerPage);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C0390);
    }
  }
}

void sub_1D7A53B18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ArticleViewerPage(255);
    v7 = sub_1D799C0A4(&qword_1EE0C9930, type metadata accessor for ArticleViewerPage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D7A53BB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7A53C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D7A53C80()
{
  result = qword_1EC9E2D68;
  if (!qword_1EC9E2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E2D68);
  }

  return result;
}

uint64_t sub_1D7A53CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A53D44(char a1)
{
  v2 = v1;
  v4 = [v2 toolbar];
  if (v4)
  {
    v14 = v4;
    if ([v2 isToolbarHidden] == (a1 & 1))
    {
    }

    else
    {
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.25, 1.0}];
      v6 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v5 timingParameters:0.22];
      v7 = v14;
      [v7 frame];
      CGRectGetHeight(v17);
      v8 = [v2 view];
      if (v8)
      {
        v9 = v8;
        [v8 safeAreaInsets];

        if ((a1 & 1) != 0 || ([v2 isToolbarHidden] & 1) == 0)
        {
        }

        else
        {
          [v7 frame];
          [v7 setFrame_];

          [v2 setToolbarHidden_];
        }

        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v7;
        *(v11 + 24) = v10;
        *(v11 + 32) = a1 & 1;
        aBlock[4] = sub_1D7A54070;
        aBlock[5] = v11;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D7B0D7B0;
        aBlock[3] = &block_descriptor_7;
        v12 = _Block_copy(aBlock);
        v13 = v7;

        [v6 addCompletion_];
        _Block_release(v12);
        [v6 startAnimation];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1D7A53FFC(int a1, id a2, uint64_t a3, char a4)
{
  [a2 layoutIfNeeded];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = a4 & 1;
    v7 = Strong;
    [Strong setToolbarHidden_];
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void AlertRecipeUnavailable.init(error:offlineModel:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D79AC5C4();
  if (swift_dynamicCast() && v9)
  {

    v5 = sub_1D7D2EFAC();
    v6 = *(v5 - 8);
    (*(v6 + 8))(a2, v5);
    (*(v6 + 56))(a3, 1, 1, v5);
  }

  else
  {

    v7 = sub_1D7D2EFAC();
    v8 = *(v7 - 8);
    (*(v8 + 32))(a3, a2, v7);
    (*(v8 + 56))(a3, 0, 1, v7);
  }
}

uint64_t AlertRecipeUnavailable.title.getter()
{
  v1 = v0;
  v2 = sub_1D7D2EFAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlertRecipeUnavailable();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A54468(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_1D7D2811C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = sub_1D7D2EF8C();
    (*(v3 + 8))(v6, v2);
  }

  return v13;
}

uint64_t type metadata accessor for AlertRecipeUnavailable()
{
  result = qword_1EC9E2D70;
  if (!qword_1EC9E2D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7A54468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlertRecipeUnavailable();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AlertRecipeUnavailable.message.getter()
{
  v1 = v0;
  v2 = sub_1D7D2EFAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlertRecipeUnavailable();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A54468(v1, v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_1D7D2811C();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = sub_1D7D2EF7C();
    (*(v3 + 8))(v6, v2);
  }

  return v13;
}

uint64_t AlertRecipeUnavailable.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

uint64_t AlertRecipeUnavailable.neutralButton.getter()
{
  if (!NFInternalBuild())
  {
    return 0;
  }

  sub_1D7D2864C();
  sub_1D7D2863C();
  if (qword_1EC9DFEC0 != -1)
  {
    swift_once();
  }

  sub_1D7D2862C();

  if (v4)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1D7D2811C();

  return v3;
}

uint64_t sub_1D7A548FC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D7D2811C();

  return v2;
}

uint64_t sub_1D7A54A08()
{
  v0 = sub_1D7D2EFAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D7A54A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v169 = a3;
  v170 = a2;
  v164 = a1;
  v154 = type metadata accessor for RecommendedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v154, v3);
  v161 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for RelatedEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v158, v5);
  v162 = &v148 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v153, v7);
  v160 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  EndOfArticleFeedGroup = type metadata accessor for MoreToReadEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](EndOfArticleFeedGroup, v9);
  v159 = &v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for EndOfArticleModel();
  v163 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v11);
  v13 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v148 - v16;
  sub_1D7A2AFB8();
  v171 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v151 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v150 = &v148 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v149 = &v148 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v148 = &v148 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v148 - v33;
  sub_1D7A578A8();
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v157 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v148 - v40;
  MEMORY[0x1EEE9AC00](v42, v43);
  v156 = &v148 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v155 = &v148 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v148 - v50;
  v52 = sub_1D7D2F05C();
  v166 = *(v52 - 8);
  v167 = v52;
  MEMORY[0x1EEE9AC00](v52, v53);
  v165 = &v148 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MoreFromEndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v148 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for EndOfArticleFeedGroup();
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v148 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57DFC(v164, v62, type metadata accessor for EndOfArticleFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v159 = v34;
    v160 = v51;
    v164 = v58;
    v161 = v41;
    if (EnumCaseMultiPayload)
    {
      v120 = v162;
      sub_1D7A57D94(v62, v162, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v121 = swift_allocBox();
      sub_1D7A57DFC(v120, v122, type metadata accessor for RelatedEndOfArticleFeedGroup);
      v123 = v165;
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v174 = v121 | 0x2000000000000000;
      v124 = EndOfArticleSectionDescriptor.identifier.getter();
      v126 = sub_1D7A56B58(v123, v170, v124, v125);

      (*(v166 + 8))(v123, v167);
      v174 = v121 | 0x2000000000000000;
      v127 = v126;
      v128 = *(v126 + 16);
      if (v128)
      {
        v173 = MEMORY[0x1E69E7CC0];
        v168 = v121;

        sub_1D7A5C0CC(0, v128, 0);
        v129 = v173;
        v130 = *(v163 + 80);
        v167 = v127;
        v131 = v127 + ((v130 + 32) & ~v130);
        v170 = *(v163 + 72);
        v132 = v150;
        do
        {
          sub_1D7A57DFC(v131, v17, type metadata accessor for EndOfArticleModel);
          sub_1D7A57DFC(v17, v13, type metadata accessor for EndOfArticleModel);
          sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
          sub_1D7D29EDC();
          sub_1D7A57CD0(v17, type metadata accessor for EndOfArticleModel);
          v173 = v129;
          v134 = *(v129 + 16);
          v133 = *(v129 + 24);
          if (v134 >= v133 >> 1)
          {
            sub_1D7A5C0CC(v133 > 1, v134 + 1, 1);
            v129 = v173;
          }

          *(v129 + 16) = v134 + 1;
          (*(v19 + 32))(v129 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v134, v132, v171);
          v131 += v170;
          --v128;
        }

        while (v128);
      }

      else
      {

        v129 = MEMORY[0x1E69E7CC0];
      }

      v145 = sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
      v146 = sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
      MEMORY[0x1DA706A80](v129, v171, v145, v146);
      sub_1D7A2B104();
      sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
      sub_1D7D2A42C();

      v137 = type metadata accessor for RelatedEndOfArticleFeedGroup;
      v138 = v162;
    }

    else
    {
      v78 = v164;
      sub_1D7A57D94(v62, v164, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v79 = swift_allocBox();
      sub_1D7A57DFC(v78, v80, type metadata accessor for MoreFromEndOfArticleFeedGroup);
      v81 = v165;
      _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
      v174 = v79;
      v82 = EndOfArticleSectionDescriptor.identifier.getter();
      v84 = sub_1D7A56B58(v81, v170, v82, v83);

      (*(v166 + 8))(v81, v167);
      v174 = v79;
      v85 = *(v84 + 16);
      if (v85)
      {
        v173 = MEMORY[0x1E69E7CC0];
        v168 = v79;

        sub_1D7A5C0CC(0, v85, 0);
        v86 = v173;
        v87 = *(v163 + 80);
        v167 = v84;
        v88 = v84 + ((v87 + 32) & ~v87);
        v170 = *(v163 + 72);
        v89 = v159;
        do
        {
          sub_1D7A57DFC(v88, v17, type metadata accessor for EndOfArticleModel);
          sub_1D7A57DFC(v17, v13, type metadata accessor for EndOfArticleModel);
          sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
          sub_1D7D29EDC();
          sub_1D7A57CD0(v17, type metadata accessor for EndOfArticleModel);
          v173 = v86;
          v91 = *(v86 + 16);
          v90 = *(v86 + 24);
          if (v91 >= v90 >> 1)
          {
            sub_1D7A5C0CC(v90 > 1, v91 + 1, 1);
            v86 = v173;
          }

          *(v86 + 16) = v91 + 1;
          (*(v19 + 32))(v86 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v91, v89, v171);
          v88 += v170;
          --v85;
        }

        while (v85);

        v78 = v164;
      }

      else
      {

        v86 = MEMORY[0x1E69E7CC0];
      }

      v143 = sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
      v144 = sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
      MEMORY[0x1DA706A80](v86, v171, v143, v144);
      sub_1D7A2B104();
      sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
      sub_1D7D2A42C();

      v137 = type metadata accessor for MoreFromEndOfArticleFeedGroup;
      v138 = v78;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v92 = v161;
    sub_1D7A57D94(v62, v161, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    v93 = swift_allocBox();
    sub_1D7A57DFC(v92, v94, type metadata accessor for RecommendedEndOfArticleFeedGroup);
    v95 = v165;
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v174 = v93 | 0x4000000000000000;
    v96 = EndOfArticleSectionDescriptor.identifier.getter();
    v98 = sub_1D7A56B58(v95, v170, v96, v97);

    (*(v166 + 8))(v95, v167);
    v174 = v93 | 0x4000000000000000;
    v99 = *(v98 + 16);
    if (v99)
    {
      v173 = MEMORY[0x1E69E7CC0];
      v168 = v93;

      sub_1D7A5C0CC(0, v99, 0);
      v100 = v173;
      v101 = *(v163 + 80);
      v167 = v98;
      v102 = v98 + ((v101 + 32) & ~v101);
      v170 = *(v163 + 72);
      v103 = v151;
      do
      {
        sub_1D7A57DFC(v102, v17, type metadata accessor for EndOfArticleModel);
        sub_1D7A57DFC(v17, v13, type metadata accessor for EndOfArticleModel);
        sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
        sub_1D7D29EDC();
        sub_1D7A57CD0(v17, type metadata accessor for EndOfArticleModel);
        v173 = v100;
        v105 = *(v100 + 16);
        v104 = *(v100 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_1D7A5C0CC(v104 > 1, v105 + 1, 1);
          v100 = v173;
        }

        *(v100 + 16) = v105 + 1;
        (*(v19 + 32))(v100 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v105, v103, v171);
        v102 += v170;
        --v99;
      }

      while (v99);
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
    }

    v135 = sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
    v136 = sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
    MEMORY[0x1DA706A80](v100, v171, v135, v136);
    sub_1D7A2B104();
    sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    sub_1D7D2A42C();

    v137 = type metadata accessor for RecommendedEndOfArticleFeedGroup;
    v138 = v161;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v64 = v159;
    sub_1D7A57D94(v62, v159, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v65 = swift_allocBox();
    sub_1D7A57DFC(v64, v66, type metadata accessor for MoreToReadEndOfArticleFeedGroup);
    v67 = v165;
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v174 = v65 | 0x6000000000000000;
    v68 = EndOfArticleSectionDescriptor.identifier.getter();
    v70 = sub_1D7A56B58(v67, v170, v68, v69);

    (*(v166 + 8))(v67, v167);
    v174 = v65 | 0x6000000000000000;
    v71 = *(v70 + 16);
    if (v71)
    {
      v173 = MEMORY[0x1E69E7CC0];
      v168 = v65;

      sub_1D7A5C0CC(0, v71, 0);
      v72 = v173;
      v73 = *(v163 + 80);
      v167 = v70;
      v74 = v70 + ((v73 + 32) & ~v73);
      v170 = *(v163 + 72);
      v75 = v148;
      do
      {
        sub_1D7A57DFC(v74, v17, type metadata accessor for EndOfArticleModel);
        sub_1D7A57DFC(v17, v13, type metadata accessor for EndOfArticleModel);
        sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
        sub_1D7D29EDC();
        sub_1D7A57CD0(v17, type metadata accessor for EndOfArticleModel);
        v173 = v72;
        v77 = *(v72 + 16);
        v76 = *(v72 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_1D7A5C0CC(v76 > 1, v77 + 1, 1);
          v72 = v173;
        }

        *(v72 + 16) = v77 + 1;
        (*(v19 + 32))(v72 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v77, v75, v171);
        v74 += v170;
        --v71;
      }

      while (v71);
    }

    else
    {

      v72 = MEMORY[0x1E69E7CC0];
    }

    v139 = sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
    v140 = sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
    MEMORY[0x1DA706A80](v72, v171, v139, v140);
    sub_1D7A2B104();
    sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    sub_1D7D2A42C();

    v137 = type metadata accessor for MoreToReadEndOfArticleFeedGroup;
    v138 = v159;
  }

  else
  {
    v106 = v160;
    sub_1D7A57D94(v62, v160, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v107 = swift_allocBox();
    sub_1D7A57DFC(v106, v108, type metadata accessor for MoreFromIssueEndOfArticleFeedGroup);
    v109 = v165;
    _s12NewsArticles017RecipeTopicsEndOfC9FeedGroupV13formatContent0aG006FormatJ0V8ResolvedVvg_0();
    v174 = v107 | 0x8000000000000000;
    v110 = EndOfArticleSectionDescriptor.identifier.getter();
    v112 = sub_1D7A56B58(v109, v170, v110, v111);

    (*(v166 + 8))(v109, v167);
    v174 = v107 | 0x8000000000000000;
    v113 = *(v112 + 16);
    if (v113)
    {
      v173 = MEMORY[0x1E69E7CC0];
      v168 = v107;

      sub_1D7A5C0CC(0, v113, 0);
      v114 = v173;
      v115 = *(v163 + 80);
      v167 = v112;
      v116 = v112 + ((v115 + 32) & ~v115);
      v170 = *(v163 + 72);
      v117 = v149;
      do
      {
        sub_1D7A57DFC(v116, v17, type metadata accessor for EndOfArticleModel);
        sub_1D7A57DFC(v17, v13, type metadata accessor for EndOfArticleModel);
        sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
        sub_1D7D29EDC();
        sub_1D7A57CD0(v17, type metadata accessor for EndOfArticleModel);
        v173 = v114;
        v119 = *(v114 + 16);
        v118 = *(v114 + 24);
        if (v119 >= v118 >> 1)
        {
          sub_1D7A5C0CC(v118 > 1, v119 + 1, 1);
          v114 = v173;
        }

        *(v114 + 16) = v119 + 1;
        (*(v19 + 32))(v114 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v119, v117, v171);
        v116 += v170;
        --v113;
      }

      while (v113);
    }

    else
    {

      v114 = MEMORY[0x1E69E7CC0];
    }

    v141 = sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
    v142 = sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
    MEMORY[0x1DA706A80](v114, v171, v141, v142);
    sub_1D7A2B104();
    sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
    sub_1D7D2A42C();

    v137 = type metadata accessor for MoreFromIssueEndOfArticleFeedGroup;
    v138 = v160;
  }

  return sub_1D7A57CD0(v138, v137);
}

uint64_t sub_1D7A560BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v108 = a5;
  v96 = a3;
  v97 = a4;
  v105 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1D7A57D30(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v103 = &v85 - v9;
  v10 = sub_1D7D2EC6C();
  v100 = *(v10 - 8);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v107 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57D30(0, qword_1EE0C9788, type metadata accessor for EndOfArticleModel, v6);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v102 = &v85 - v15;
  v106 = sub_1D7D2ED3C();
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v16);
  v95 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v85 - v24;
  sub_1D7A57998();
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v29);
  v92 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v85 - v33;
  v35 = type metadata accessor for EndOfArticleModel();
  v98 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v36);
  v93 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v94 = &v85 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v85 - v43;
  sub_1D7A2AFB8();
  v46 = v45;
  sub_1D7D29EEC();
  v99 = v35;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7A57A74();
    v48 = *(v47 + 48);
    (*(*(v46 - 8) + 16))(v108, a1, v46);
    (*(v28 + 8))(&v44[v48], v27);
    sub_1D7A57AE8();
    return (*(*(v49 - 8) + 8))(v44, v49);
  }

  else
  {
    v90 = v46;
    v91 = a1;
    v51 = *(v28 + 32);
    v89 = v28 + 32;
    v88 = v51;
    v51(v34, v44, v27);
    sub_1D7D2EBCC();
    v52 = sub_1D7D2ED1C();
    v53 = v106;
    v104 = *(v104 + 8);
    (v104)(v25, v106);
    v54 = [v52 identifier];
    swift_unknownObjectRelease();
    v55 = sub_1D7D3034C();
    v57 = v56;

    LOBYTE(v55) = sub_1D7D053C8(v55, v57, v105);

    if (v55)
    {
      v87 = v28;
      v58 = *(v96 + 16);
      sub_1D7D2EBCC();
      v86 = sub_1D7D2ED1C();
      v59 = v21;
      v60 = v104;
      (v104)(v59, v53);
      sub_1D7D2EBDC();
      sub_1D7A2B04C();
      sub_1D7D2A43C();
      v111 = v112;
      v85 = EndOfArticleSectionDescriptor.identifier.getter();
      v96 = v61;

      v62 = v95;
      v105 = v27;
      v97 = v34;
      sub_1D7D2EBCC();
      v63 = v103;
      sub_1D7D2ECCC();
      v64 = v86;
      v60(v62, v53);
      v65 = sub_1D7CDF94C(v64);
      v66 = sub_1D7CDFD88(v64);
      v67 = v90;
      if (v66 & 1) == 0 || (v65)
      {
        v109 = *(v58 + 40);
        v110 = v65 & 1;
        sub_1D7A57C0C();
        v78 = v92;
        v79 = v107;
        sub_1D7D2E0AC();
        swift_unknownObjectRelease();

        sub_1D7A57C60(v63, &qword_1EE0BFC08, MEMORY[0x1E69B3E58]);
        (*(v100 + 8))(v79, v101);
        v68 = v102;
        v76 = v105;
        v88(v102, v78, v105);
        v77 = v99;
        swift_storeEnumTagMultiPayload();
        v74 = 0;
        v75 = v108;
      }

      else
      {

        v68 = v102;
        if (qword_1EE0CA130 != -1)
        {
          swift_once();
        }

        sub_1D7A57D30(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1D7D3B4D0;
        v70 = [v64 identifier];
        v71 = sub_1D7D3034C();
        v73 = v72;

        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = sub_1D79D6AE0();
        *(v69 + 32) = v71;
        *(v69 + 40) = v73;
        sub_1D7D30C6C();
        sub_1D7D29AAC();
        swift_unknownObjectRelease();

        sub_1D7A57C60(v103, &qword_1EE0BFC08, MEMORY[0x1E69B3E58]);
        (*(v100 + 8))(v107, v101);
        v74 = 1;
        v75 = v108;
        v76 = v105;
        v77 = v99;
      }

      v80 = v98;
      (*(v98 + 56))(v68, v74, 1, v77);
      v81 = (*(v80 + 48))(v68, 1, v77);
      v82 = v91;
      v83 = v87;
      if (v81 == 1)
      {
        (*(v87 + 8))(v97, v76);
        sub_1D7A57C60(v68, qword_1EE0C9788, type metadata accessor for EndOfArticleModel);
        return (*(*(v67 - 8) + 16))(v75, v82, v67);
      }

      else
      {
        v84 = v94;
        sub_1D7A57D94(v68, v94, type metadata accessor for EndOfArticleModel);
        sub_1D7A57DFC(v84, v93, type metadata accessor for EndOfArticleModel);
        sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
        sub_1D7D29EDC();
        sub_1D7A57CD0(v84, type metadata accessor for EndOfArticleModel);
        return (*(v83 + 8))(v97, v76);
      }
    }

    else
    {
      (*(v28 + 8))(v34, v27);
      return (*(*(v90 - 8) + 16))(v108, v91);
    }
  }
}

uint64_t sub_1D7A56B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v51 = a2;
  v60 = sub_1D7D2F33C();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v4);
  v56 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D7D2F80C();
  v6 = *(v59 - 1);
  MEMORY[0x1EEE9AC00](v59, v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7D2F04C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = *(v12 + 64);
    v50 = v10;
    v15 = v10 + ((v14 + 32) & ~v14);
    v57 = *(v12 + 56);
    v58 = v13;
    v16 = (v12 - 8);
    v17 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v19 = v59;
      v20 = v12;
      (v58)(v9, v15, v59);
      v21 = sub_1D7D2F7FC();
      result = (*v16)(v9, v19);
      v22 = *(v21 + 16);
      v23 = v17[2];
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
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
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v24 <= v17[3] >> 1)
      {
        if (*(v21 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v23 <= v24)
        {
          v25 = v23 + v22;
        }

        else
        {
          v25 = v23;
        }

        result = sub_1D79E44C8(result, v25, 1, v17);
        v17 = result;
        if (*(v21 + 16))
        {
LABEL_14:
          if ((v17[3] >> 1) - v17[2] < v22)
          {
            goto LABEL_43;
          }

          swift_arrayInitWithCopy();

          v12 = v20;
          if (v22)
          {
            v26 = v17[2];
            v27 = __OFADD__(v26, v22);
            v28 = v26 + v22;
            if (v27)
            {
              goto LABEL_45;
            }

            v17[2] = v28;
          }

          goto LABEL_4;
        }
      }

      v12 = v20;
      if (v22)
      {
        goto LABEL_40;
      }

LABEL_4:
      v15 += v57;
      if (!--v11)
      {

        v29 = v17[2];
        if (v29)
        {
          goto LABEL_19;
        }

        goto LABEL_37;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
  v29 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v29)
  {
LABEL_19:
    v30 = *(v55 + 16);
    v31 = v17 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v58 = *(v55 + 72);
    v59 = v30;
    v32 = (v55 + 8);
    v33 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v34 = v56;
      v35 = v60;
      (v59)(v56, v31, v60);
      v36 = sub_1D7D2F32C();
      result = (*v32)(v34, v35);
      v37 = *(v36 + 16);
      v38 = v33[2];
      v39 = v38 + v37;
      if (__OFADD__(v38, v37))
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v39 <= v33[3] >> 1)
      {
        if (*(v36 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v38 <= v39)
        {
          v41 = v38 + v37;
        }

        else
        {
          v41 = v38;
        }

        v33 = sub_1D79E42A4(isUniquelyReferenced_nonNull_native, v41, 1, v33);
        if (*(v36 + 16))
        {
LABEL_31:
          v42 = (v33[3] >> 1) - v33[2];
          result = sub_1D7D2FC7C();
          if (v42 < v37)
          {
            goto LABEL_44;
          }

          swift_arrayInitWithCopy();

          if (v37)
          {
            v43 = v33[2];
            v27 = __OFADD__(v43, v37);
            v44 = v43 + v37;
            if (v27)
            {
              goto LABEL_46;
            }

            v33[2] = v44;
          }

          goto LABEL_21;
        }
      }

      if (v37)
      {
        goto LABEL_42;
      }

LABEL_21:
      v31 = &v58[v31];
      if (!--v29)
      {

        goto LABEL_38;
      }
    }
  }

LABEL_37:

  v33 = MEMORY[0x1E69E7CC0];
LABEL_38:
  MEMORY[0x1EEE9AC00](v45, v46);
  v47 = v51;
  *(&v50 - 4) = v52;
  *(&v50 - 3) = v47;
  v48 = v54;
  *(&v50 - 2) = v53;
  *(&v50 - 1) = v48;
  v49 = sub_1D7A9CA34(sub_1D7A57E64, (&v50 - 6), v33);

  return v49;
}

uint64_t sub_1D7A5702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v49 = a5;
  sub_1D7A57998();
  v8 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7A57D30(0, &qword_1EE0BFC08, MEMORY[0x1E69B3E58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v46 - v14;
  v16 = sub_1D7D2FC7C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = (&v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v21, a1, v16, v19);
  v22 = (*(v17 + 88))(v21, v16);
  if (v22 != *MEMORY[0x1E69B6698])
  {
    if (v22 != *MEMORY[0x1E69B6678] && v22 != *MEMORY[0x1E69B6670] && v22 != *MEMORY[0x1E69B66A0] && v22 != *MEMORY[0x1E69B6688] && v22 != *MEMORY[0x1E69B6658] && v22 != *MEMORY[0x1E69B6680] && v22 != *MEMORY[0x1E69B6660])
    {
      sub_1D7A57D30(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1D7D3B4D0;
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1D7D315DC();
      v42 = v50;
      v43 = v51;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1D79D6AE0();
      *(v41 + 32) = v42;
      *(v41 + 40) = v43;
      MEMORY[0x1DA706840]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v41, v46, v47);

      v44 = type metadata accessor for EndOfArticleModel();
      (*(*(v44 - 8) + 56))(v49, 1, 1, v44);
      return (*(v17 + 8))(v21, v16);
    }

    (*(v17 + 8))(v21, v16);
    goto LABEL_28;
  }

  (*(v17 + 96))(v21, v16);
  v23 = *v21;
  v24 = *(a2 + 16);
  v25 = sub_1D7D2CB2C();
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = sub_1D7CDF94C(v23);
  if ((sub_1D7CDFD88(v23) & 1) != 0 && (v26 & 1) == 0)
  {
    if (qword_1EE0CA130 != -1)
    {
      swift_once();
    }

    sub_1D7A57D30(0, &qword_1EE0BE810, sub_1D79D6A7C, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7D3B4D0;
    v28 = [v23 identifier];
    v29 = sub_1D7D3034C();
    v31 = v30;

    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1D79D6AE0();
    *(v27 + 32) = v29;
    *(v27 + 40) = v31;
    sub_1D7D30C6C();
    sub_1D7D29AAC();
    swift_unknownObjectRelease();

    sub_1D7A57C60(v15, &qword_1EE0BFC08, MEMORY[0x1E69B3E58]);
LABEL_28:
    v38 = type metadata accessor for EndOfArticleModel();
    return (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
  }

  LOBYTE(v50) = *(v24 + 40);
  BYTE1(v50) = v26 & 1;
  sub_1D7A57C0C();

  sub_1D7D2E0AC();
  swift_unknownObjectRelease();

  sub_1D7A57C60(v15, &qword_1EE0BFC08, MEMORY[0x1E69B3E58]);
  v39 = v49;
  (*(v48 + 32))(v49, v11, v8);
  v40 = type metadata accessor for EndOfArticleModel();
  swift_storeEnumTagMultiPayload();
  return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
}

uint64_t sub_1D7A576E8(uint64_t a1, uint64_t a2)
{
  sub_1D7A578A8();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v7 = *v2;
  sub_1D7A2B04C();
  sub_1D7D2A43C();
  v18 = v19;
  v15 = a2;
  v16 = v7;
  v17 = a1;
  v8 = sub_1D7A27EC0(sub_1D7A57974, v14);
  sub_1D7A2AFB8();
  v10 = v9;
  v11 = sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
  v12 = sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
  MEMORY[0x1DA706A80](v8, v10, v11, v12);
  type metadata accessor for EndOfArticleModel();
  sub_1D7A2B104();
  sub_1D7A57BC4(&unk_1EE0C97F0, type metadata accessor for EndOfArticleModel);
  return sub_1D7D2A42C();
}

void sub_1D7A578A8()
{
  if (!qword_1EE0C03A0)
  {
    sub_1D7A2AFB8();
    sub_1D7A57BC4(&qword_1EE0C00F8, sub_1D7A2AFB8);
    sub_1D7A57BC4(&qword_1EE0C0100, sub_1D7A2AFB8);
    v0 = sub_1D7D2903C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C03A0);
    }
  }
}

void sub_1D7A57998()
{
  if (!qword_1EE0BF7C0)
  {
    sub_1D7D2ED3C();
    v0 = MEMORY[0x1E69B5FD0];
    sub_1D7A57BC4(&unk_1EE0BF770, MEMORY[0x1E69B5FD0]);
    sub_1D7A57BC4(&qword_1EE0BF780, v0);
    v1 = sub_1D7D2EC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF7C0);
    }
  }
}

void sub_1D7A57A74()
{
  if (!qword_1EE0BF7E0)
  {
    sub_1D7A57AE8();
    sub_1D7A57998();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF7E0);
    }
  }
}

void sub_1D7A57AE8()
{
  if (!qword_1EE0BF7F0)
  {
    sub_1D7D2D5CC();
    v0 = MEMORY[0x1E69B4400];
    sub_1D7A57BC4(&qword_1EE0BFA68, MEMORY[0x1E69B4400]);
    sub_1D7A57BC4(&unk_1EE0BFA70, v0);
    v1 = sub_1D7D2EC0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0BF7F0);
    }
  }
}

uint64_t sub_1D7A57BC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D7A57C0C()
{
  result = qword_1EE0C9840;
  if (!qword_1EE0C9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C9840);
  }

  return result;
}

uint64_t sub_1D7A57C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7A57D30(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7A57CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7A57D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7A57D94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A57DFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7A57E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v68 = a2 + 32;
  v69 = a1 + 32;
  v67 = *(a1 + 16);
  while (1)
  {
    v4 = (v69 + 160 * v3);
    v5 = v4[7];
    v6 = v4[5];
    v86 = v4[6];
    v87 = v5;
    v7 = v4[7];
    v88[0] = v4[8];
    *(v88 + 9) = *(v4 + 137);
    v8 = v4[3];
    v9 = v4[1];
    v82 = v4[2];
    v83 = v8;
    v10 = v4[3];
    v11 = v4[5];
    v84 = v4[4];
    v85 = v11;
    v12 = v4[1];
    v81[0] = *v4;
    v81[1] = v12;
    v13 = (v68 + 160 * v3);
    v14 = v13[7];
    v15 = v13[5];
    v95 = v13[6];
    v96 = v14;
    v16 = v13[7];
    v97[0] = v13[8];
    *(v97 + 9) = *(v13 + 137);
    v17 = v13[3];
    v18 = v13[1];
    v91 = v13[2];
    v92 = v17;
    v19 = v13[3];
    v20 = v13[5];
    v93 = v13[4];
    v94 = v20;
    v21 = v13[1];
    v89 = *v13;
    v90 = v21;
    v22 = v4[7];
    v98[6] = v4[6];
    v98[7] = v22;
    v99[0] = v4[8];
    *(v99 + 9) = *(v4 + 137);
    v23 = v4[3];
    v98[2] = v4[2];
    v98[3] = v23;
    v24 = v4[5];
    v98[4] = v4[4];
    v98[5] = v24;
    v25 = v4[1];
    v98[0] = *v4;
    v98[1] = v25;
    v99[8] = v95;
    v99[9] = v16;
    v100[0] = v13[8];
    *(v100 + 9) = *(v13 + 137);
    v99[4] = v91;
    v99[5] = v19;
    v99[6] = v93;
    v99[7] = v15;
    v99[2] = v89;
    v99[3] = v18;
    v101[6] = v86;
    v101[7] = v7;
    v102[0] = v4[8];
    *(v102 + 9) = *(v4 + 137);
    v101[2] = v82;
    v101[3] = v10;
    v101[4] = v84;
    v101[5] = v6;
    v101[0] = v81[0];
    v101[1] = v9;
    v70 = v3;
    if (sub_1D7A601B0(v101) == 1)
    {
      break;
    }

    v36 = nullsub_1(v101);
    v37 = *v36;
    v38 = v36[1];
    v39 = v36[4];
    v40 = v36[5];
    v41 = v36[6];
    v42 = v36[7];
    v72 = v89;
    v73 = v90;
    v78 = v95;
    v79 = v96;
    v80[0] = v97[0];
    *(v80 + 9) = *(v97 + 9);
    v76 = v93;
    v77 = v94;
    v74 = v91;
    v75 = v92;
    v43 = sub_1D7A601B0(&v72);
    if (v43 == 1)
    {
LABEL_72:
      nullsub_1(&v72);
LABEL_73:
      sub_1D7A601B8(v81, v71);
      sub_1D7A601B8(&v89, v71);
      sub_1D7A60044(v98, &qword_1EC9E2E48);
      return 0;
    }

    v44 = nullsub_1(&v72);
    v46 = v44[4];
    v45 = v44[5];
    v47 = v44[6];
    v48 = v44[7];
    if ((v37 != *v44 || v38 != v44[1]) && (sub_1D7D3197C() & 1) == 0)
    {
      goto LABEL_73;
    }

    if (v40)
    {
      if (!v45 || (v39 != v46 || v40 != v45) && (sub_1D7D3197C() & 1) == 0)
      {
        goto LABEL_73;
      }
    }

    else if (v45)
    {
      goto LABEL_73;
    }

    if (v41 == v47 && v42 == v48)
    {
      sub_1D7A601B8(v81, v71);
      sub_1D7A601B8(&v89, v71);
      sub_1D7A60044(v98, &qword_1EC9E2E48);
    }

    else
    {
      v65 = sub_1D7D3197C();
      sub_1D7A601B8(v81, v71);
      sub_1D7A601B8(&v89, v71);
      sub_1D7A60044(v98, &qword_1EC9E2E48);
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_70:
    v3 = v70 + 1;
    if (v70 + 1 == v67)
    {
      return 1;
    }
  }

  v26 = nullsub_1(v101);
  v78 = v95;
  v79 = v96;
  v80[0] = v97[0];
  *(v80 + 9) = *(v97 + 9);
  v74 = v91;
  v75 = v92;
  v76 = v93;
  v77 = v94;
  v72 = v89;
  v73 = v90;
  if (sub_1D7A601B0(&v72) != 1)
  {
    goto LABEL_72;
  }

  v27 = nullsub_1(&v72);
  v29 = *(v26 + 120);
  v28 = *(v26 + 128);
  v30 = *(v26 + 136);
  v31 = *(v26 + 144);
  v33 = *(v27 + 120);
  v32 = *(v27 + 128);
  v35 = *(v27 + 136);
  v34 = *(v27 + 144);
  if ((*(v26 + 88) != *(v27 + 88) || *(v26 + 96) != *(v27 + 96)) && (sub_1D7D3197C() & 1) == 0)
  {
    goto LABEL_73;
  }

  if (v28)
  {
    if (!v32 || (v29 != v33 || v28 != v32) && (sub_1D7D3197C() & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (v32)
  {
    goto LABEL_73;
  }

  if ((v30 != v35 || v31 != v34) && (sub_1D7D3197C() & 1) == 0 || (*v26 != *v27 || *(v26 + 8) != *(v27 + 8)) && (sub_1D7D3197C() & 1) == 0 || (*(v26 + 16) != *(v27 + 16) || *(v26 + 24) != *(v27 + 24)) && (sub_1D7D3197C() & 1) == 0 || *(v26 + 32) != *(v27 + 32) || *(v26 + 40) != *(v27 + 40) || (*(v26 + 48) != *(v27 + 48) || *(v26 + 56) != *(v27 + 56)) && (sub_1D7D3197C() & 1) == 0 || (*(v26 + 64) != *(v27 + 64) || *(v26 + 72) != *(v27 + 72)) && (sub_1D7D3197C() & 1) == 0)
  {
    goto LABEL_73;
  }

  v49 = *(v26 + 80);
  v50 = *(v27 + 80);
  v51 = *(v49 + 16);
  if (v51 == *(v50 + 16))
  {
    if (v51 && v49 != v50)
    {
      sub_1D7A601B8(v81, v71);
      sub_1D7A601B8(&v89, v71);
      sub_1D7A601B8(v81, v71);
      sub_1D7A601B8(&v89, v71);
      sub_1D79ECF40(v26, v71);
      sub_1D79ECF40(v27, v71);
      v52 = 0;
      while (1)
      {
        v53 = *(v49 + v52 + 32);
        v54 = *(v49 + v52 + 40);
        v56 = *(v49 + v52 + 64);
        v55 = *(v49 + v52 + 72);
        v58 = *(v49 + v52 + 48);
        v57 = *(v49 + v52 + 56);
        v59 = *(v50 + v52 + 32);
        v60 = *(v50 + v52 + 40);
        v61 = *(v50 + v52 + 48);
        v62 = *(v50 + v52 + 56);
        v64 = *(v50 + v52 + 64);
        v63 = *(v50 + v52 + 72);
        if (*(v49 + v52 + 80))
        {
          if ((*(v50 + v52 + 80) & 1) == 0 || (v53 != v59 || v54 != v60) && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_75;
          }

          v106.origin.x = v61;
          v106.origin.y = v62;
          v106.size.width = v64;
          v106.size.height = v63;
          v104.origin.x = v58;
          v104.origin.y = v57;
          v104.size.width = v56;
          v104.size.height = v55;
          if (!CGRectEqualToRect(v104, v106))
          {
            goto LABEL_75;
          }
        }

        else
        {
          if ((*(v50 + v52 + 80) & 1) != 0 || (v53 != v59 || v54 != v60) && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_75;
          }

          v105.origin.x = v61;
          v105.origin.y = v62;
          v105.size.width = v64;
          v105.size.height = v63;
          v103.origin.x = v58;
          v103.origin.y = v57;
          v103.size.width = v56;
          v103.size.height = v55;
          if (!CGRectEqualToRect(v103, v105))
          {
            goto LABEL_75;
          }
        }

        v52 += 56;
        if (!--v51)
        {
          goto LABEL_64;
        }
      }
    }

    sub_1D7A601B8(v81, v71);
    sub_1D7A601B8(&v89, v71);
    sub_1D7A601B8(v81, v71);
    sub_1D7A601B8(&v89, v71);
    sub_1D79ECF40(v26, v71);
    sub_1D79ECF40(v27, v71);
LABEL_64:
    sub_1D7A60044(v98, &qword_1EC9E2E48);
    sub_1D7A2BEAC(v27);
    sub_1D7A2BEAC(v26);
    sub_1D7A6026C(&v89);
    sub_1D7A6026C(v81);
    goto LABEL_70;
  }

  sub_1D7A601B8(v81, v71);
  sub_1D7A601B8(&v89, v71);
  sub_1D7A601B8(v81, v71);
  sub_1D7A601B8(&v89, v71);
  sub_1D79ECF40(v26, v71);
  sub_1D79ECF40(v27, v71);
LABEL_75:
  sub_1D7A60044(v98, &qword_1EC9E2E48);
  sub_1D7A2BEAC(v27);
  sub_1D7A2BEAC(v26);
  sub_1D7A6026C(&v89);
  sub_1D7A6026C(v81);
  return 0;
}

BOOL sub_1D7A58610(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v7 = *(a1 + v5 + 32);
      v8 = *(a1 + v5 + 40);
      v10 = *(a1 + v5 + 64);
      v9 = *(a1 + v5 + 72);
      v12 = *(a1 + v5 + 48);
      v11 = *(a1 + v5 + 56);
      v13 = *(a2 + v5 + 32);
      v14 = *(a2 + v5 + 40);
      v16 = *(a2 + v5 + 48);
      v15 = *(a2 + v5 + 56);
      v18 = *(a2 + v5 + 64);
      v17 = *(a2 + v5 + 72);
      if (*(a1 + v5 + 80))
      {
        if ((*(a2 + v5 + 80) & 1) == 0 || (v7 != v13 || v8 != v14) && (sub_1D7D3197C() & 1) == 0)
        {
          return 0;
        }

        v21.origin.x = v16;
        v21.origin.y = v15;
        v21.size.width = v18;
        v21.size.height = v17;
        v19.origin.x = v12;
        v19.origin.y = v11;
        v19.size.width = v10;
        v19.size.height = v9;
        result = CGRectEqualToRect(v19, v21);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if ((*(a2 + v5 + 80) & 1) != 0 || (v7 != v13 || v8 != v14) && (sub_1D7D3197C() & 1) == 0)
        {
          return 0;
        }

        v22.origin.x = v16;
        v22.origin.y = v15;
        v22.size.width = v18;
        v22.size.height = v17;
        v20.origin.x = v12;
        v20.origin.y = v11;
        v20.size.width = v10;
        v20.size.height = v9;
        if (!CGRectEqualToRect(v20, v22))
        {
          return 0;
        }
      }

      v5 += 56;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D7A58760(uint64_t a1, uint64_t a2)
{
  sub_1D7A6057C(0, &qword_1EC9E2E80, _s15ArticleProviderOMa);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v64 - v7;
  v9 = _s15ArticleProviderOMa();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v64 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v19 = a1 + 32;
  v20 = a2 + 32;
  v21 = *(a1 + 32);
  v22 = *(a2 + 32);
  v23 = *(v21 + 16);
  if (v23 != *(v22 + 16))
  {
    return 0;
  }

  v74 = 0x80000001D7D67580;
  v75 = 0x80000001D7D675A0;
  v72 = 0x80000001D7D67540;
  v73 = 0x80000001D7D67560;
  v70 = 0x80000001D7D674F0;
  v71 = 0x80000001D7D67520;
  v69 = 0x80000001D7D674D0;
  v68 = 0x80000001D7D674B0;
  v67 = 0x80000001D7D67490;
  v66 = 0x80000001D7D67460;
  v65 = 0x80000001D7D67440;
  v24 = 1;
  v82 = v9;
  v83 = v5;
  v80 = v12;
  v81 = v17;
  v88 = v15;
  v77 = a1 + 32;
  v78 = v18;
  v76 = v20;
  while (!v23 || v21 == v22)
  {
LABEL_105:
    result = v24 == v18;
    if (v24 != v18)
    {
      v21 = *(v19 + 8 * v24);
      v22 = *(v20 + 8 * v24++);
      v23 = *(v21 + 16);
      if (v23 == *(v22 + 16))
      {
        continue;
      }
    }

    return result;
  }

  v79 = v24;
  v25 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v86 = v22 + v25;
  v87 = v21 + v25;

  v27 = 0;
  v84 = v23;
  v85 = v21;
  while (v27 < *(v21 + 16))
  {
    v28 = *(v88 + 72) * v27;
    result = sub_1D7A605DC(v87 + v28, v17, _s15ArticleProviderOMa);
    if (v27 >= *(v22 + 16))
    {
      goto LABEL_118;
    }

    sub_1D7A605DC(v86 + v28, v12, _s15ArticleProviderOMa);
    v29 = &v8[*(v5 + 48)];
    sub_1D7A605DC(v17, v8, _s15ArticleProviderOMa);
    sub_1D7A605DC(v12, v29, _s15ArticleProviderOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v48 = *v8;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_111;
        }

        v49 = *v29;
        if (v8[8])
        {
          if ((v29[8] & 1) == 0)
          {
            goto LABEL_109;
          }

          v50 = *(v48 + 16);
          if (v50 != *(v49 + 16))
          {
            goto LABEL_109;
          }

          if (v50 && v48 != v49)
          {
            v51 = 0;
            while (1)
            {
              v52 = *(v48 + v51 + 48);
              v53 = *(v49 + v51 + 48);
              v54 = *(v48 + v51 + 32) == *(v49 + v51 + 32) && *(v48 + v51 + 40) == *(v49 + v51 + 40);
              if (!v54 && (sub_1D7D3197C() & 1) == 0 || v52 != v53)
              {
                goto LABEL_109;
              }

              v51 += 24;
              if (!--v50)
              {
                goto LABEL_9;
              }
            }
          }
        }

        else
        {
          if (v29[8])
          {
            goto LABEL_109;
          }

          v58 = *(v48 + 16);
          if (v58 != *(v49 + 16))
          {
            goto LABEL_109;
          }

          if (v58 && v48 != v49)
          {
            v59 = 0;
            while (1)
            {
              v60 = *(v48 + v59 + 32) == *(v49 + v59 + 32) && *(v48 + v59 + 40) == *(v49 + v59 + 40);
              if (!v60 && (sub_1D7D3197C() & 1) == 0)
              {
                break;
              }

              v59 += 16;
              if (!--v58)
              {
                goto LABEL_9;
              }
            }

LABEL_109:

LABEL_113:
            sub_1D7A5FA24(v12, _s15ArticleProviderOMa);
            sub_1D7A5FA24(v17, _s15ArticleProviderOMa);
LABEL_114:

            return 0;
          }
        }

        goto LABEL_9;
      }

      v38 = *v8;
      v39 = *(v8 + 1);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_111;
      }

      if (v38 == *v29 && v39 == *(v29 + 1))
      {
        goto LABEL_9;
      }

      goto LABEL_101;
    }

    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_112;
      }

      v40 = *v29;
      v41 = 0xEF6369706F547942;
      v42 = 0x6465636166727573;
      switch(*v8)
      {
        case 1:
          v42 = 0xD000000000000011;
          v41 = v66;
          break;
        case 2:
          break;
        case 3:
          v41 = 0xE900000000000072;
          v42 = 0x656873696C627570;
          break;
        case 4:
          v42 = 0xD000000000000011;
          v41 = v67;
          break;
        case 5:
          v42 = 0xD000000000000011;
          v41 = v68;
          break;
        case 6:
          v42 = 0xD000000000000011;
          v41 = v69;
          break;
        case 7:
          v42 = 0xD000000000000021;
          v41 = v70;
          break;
        case 8:
          v42 = 0xD000000000000010;
          v41 = v71;
          break;
        case 9:
          v41 = 0xE500000000000000;
          v42 = 0x6575737369;
          break;
        case 10:
          v42 = 0xD000000000000017;
          v41 = v72;
          break;
        case 11:
          v42 = 0xD000000000000013;
          v41 = v73;
          break;
        case 12:
          v41 = 0xE500000000000000;
          v42 = 0x6369706F74;
          break;
        case 13:
          v42 = 0xD000000000000012;
          v41 = v74;
          break;
        case 14:
          v42 = 0xD000000000000018;
          v41 = v75;
          break;
        default:
          v42 = 0xD000000000000011;
          v41 = v65;
          break;
      }

      v61 = 0x6465636166727573;
      v62 = 0xEF6369706F547942;
      switch(v40)
      {
        case 1:
          v61 = 0xD000000000000011;
          v62 = v66;
          break;
        case 2:
          break;
        case 3:
          v62 = 0xE900000000000072;
          v61 = 0x656873696C627570;
          break;
        case 4:
          v61 = 0xD000000000000011;
          v62 = v67;
          break;
        case 5:
          v61 = 0xD000000000000011;
          v62 = v68;
          break;
        case 6:
          v61 = 0xD000000000000011;
          v62 = v69;
          break;
        case 7:
          v61 = 0xD000000000000021;
          v62 = v70;
          break;
        case 8:
          v61 = 0xD000000000000010;
          v62 = v71;
          break;
        case 9:
          v62 = 0xE500000000000000;
          v61 = 0x6575737369;
          break;
        case 10:
          v61 = 0xD000000000000017;
          v62 = v72;
          break;
        case 11:
          v61 = 0xD000000000000013;
          v62 = v73;
          break;
        case 12:
          v62 = 0xE500000000000000;
          v61 = 0x6369706F74;
          break;
        case 13:
          v61 = 0xD000000000000012;
          v62 = v74;
          break;
        case 14:
          v61 = 0xD000000000000018;
          v62 = v75;
          break;
        default:
          v61 = 0xD000000000000011;
          v62 = v65;
          break;
      }

      if (v42 == v61 && v41 == v62)
      {
        goto LABEL_9;
      }

LABEL_101:
      v37 = sub_1D7D3197C();

      goto LABEL_102;
    }

    if (EnumCaseMultiPayload != 3)
    {
      v43 = *v8;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_111;
      }

      v44 = *v29;
      v45 = *(v43 + 16);
      if (v45 != *(v44 + 16))
      {
        goto LABEL_109;
      }

      if (v45 && v43 != v44)
      {
        v46 = 0;
        do
        {
          v47 = *(v43 + v46 + 32) == *(v44 + v46 + 32) && *(v43 + v46 + 40) == *(v44 + v46 + 40);
          if (!v47 && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_109;
          }

          v46 += 16;
        }

        while (--v45);
      }

LABEL_9:

      sub_1D7A5FA24(v12, _s15ArticleProviderOMa);
      result = sub_1D7A5FA24(v17, _s15ArticleProviderOMa);
      v21 = v85;
      goto LABEL_10;
    }

    v31 = v22;
    v33 = *v8;
    v32 = *(v8 + 1);
    sub_1D7A60644();
    v35 = v34;
    v36 = *(v34 + 48);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v63 = sub_1D7D2DFAC();
      (*(*(v63 - 8) + 8))(&v8[v36], v63);
      v17 = v81;
LABEL_111:

LABEL_112:
      sub_1D7A5FA24(v29, _s15ArticleProviderOMa);
      goto LABEL_113;
    }

    if (v33 == *v29 && v32 == *(v29 + 1))
    {
      v37 = 1;
    }

    else
    {
      v37 = sub_1D7D3197C();
    }

    v55 = *(v35 + 48);
    v56 = sub_1D7D2DFAC();
    v57 = *(*(v56 - 8) + 8);
    v57(&v29[v55], v56);
    v57(&v8[v36], v56);
    v22 = v31;
    v12 = v80;
    v17 = v81;
LABEL_102:
    sub_1D7A5FA24(v12, _s15ArticleProviderOMa);
    result = sub_1D7A5FA24(v17, _s15ArticleProviderOMa);
    v21 = v85;
    if ((v37 & 1) == 0)
    {
      goto LABEL_114;
    }

LABEL_10:
    ++v27;
    v5 = v83;
    if (v27 == v84)
    {

      v15 = v88;
      v19 = v77;
      v18 = v78;
      v20 = v76;
      v24 = v79;
      goto LABEL_105;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D7A59288(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0xD000000000000010;
      if (v6 == 4)
      {
        v8 = 0xD000000000000011;
        v9 = 0x80000001D7D67610;
      }

      else
      {
        v9 = 0x80000001D7D67630;
      }

      if (v6 == 3)
      {
        v8 = 0x65726F736E6F7073;
        v9 = 0xE900000000000064;
      }

      v10 = 1852138867;
      if (v6 != 1)
      {
        v10 = 1684104562;
      }

      if (!*v3)
      {
        v10 = 1701736302;
      }

      if (*v3 <= 2u)
      {
        v11 = v10;
      }

      else
      {
        v11 = v8;
      }

      if (*v3 <= 2u)
      {
        v12 = 0xE400000000000000;
      }

      else
      {
        v12 = v9;
      }

      if (*v4 > 2u)
      {
        if (v7 == 3)
        {
          v13 = 0xE900000000000064;
          if (v11 != 0x65726F736E6F7073)
          {
            goto LABEL_5;
          }
        }

        else if (v7 == 4)
        {
          v13 = 0x80000001D7D67610;
          if (v11 != 0xD000000000000011)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = 0x80000001D7D67630;
          if (v11 != 0xD000000000000010)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (*v4)
        {
          if (v7 == 1)
          {
            if (v11 != 1852138867)
            {
              goto LABEL_5;
            }
          }

          else if (v11 != 1684104562)
          {
            goto LABEL_5;
          }
        }

        else if (v11 != 1701736302)
        {
          goto LABEL_5;
        }
      }

      if (v12 != v13)
      {
LABEL_5:
        v5 = sub_1D7D3197C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D7A594A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    while (1)
    {
      v6 = (v4 + 88 * v3);
      v7 = v6[2];
      v8 = v6[4];
      v38 = v6[3];
      v39 = v8;
      v40 = *(v6 + 10);
      v9 = v6[1];
      v35 = *v6;
      v36 = v9;
      v37 = v7;
      v10 = (v5 + 88 * v3);
      v11 = v10[1];
      v41 = *v10;
      v42 = v11;
      v12 = v10[2];
      v13 = v10[3];
      v14 = v10[4];
      v46 = *(v10 + 10);
      v44 = v13;
      v45 = v14;
      v43 = v12;
      if (v35 != v41 && (sub_1D7D3197C() & 1) == 0)
      {
        break;
      }

      if (v36 != v42 && (sub_1D7D3197C() & 1) == 0 || v37 != v43 || *(&v37 + 1) != *(&v43 + 1) || (v38 != v44 || *(&v38 + 1) != *(&v44 + 1)) && (sub_1D7D3197C() & 1) == 0)
      {
        break;
      }

      if ((v39 != v45 || *(&v39 + 1) != *(&v45 + 1)) && (sub_1D7D3197C() & 1) == 0)
      {
        break;
      }

      v15 = v40;
      v16 = v46;
      v17 = *(v40 + 16);
      if (v17 != *(v46 + 16))
      {
        break;
      }

      if (v17 && v40 != v46)
      {
        v32 = v5;
        v33 = v4;
        sub_1D79ECF40(&v35, v34);
        sub_1D79ECF40(&v41, v34);
        v18 = 0;
        while (1)
        {
          v19 = *(v15 + v18 + 32);
          v20 = *(v15 + v18 + 40);
          v22 = *(v15 + v18 + 64);
          v21 = *(v15 + v18 + 72);
          v24 = *(v15 + v18 + 48);
          v23 = *(v15 + v18 + 56);
          v25 = *(v16 + v18 + 32);
          v26 = *(v16 + v18 + 40);
          v27 = *(v16 + v18 + 48);
          v28 = *(v16 + v18 + 56);
          v29 = *(v16 + v18 + 64);
          v30 = *(v16 + v18 + 72);
          if (*(v15 + v18 + 80))
          {
            if ((*(v16 + v18 + 80) & 1) == 0 || (v19 != v25 || v20 != v26) && (sub_1D7D3197C() & 1) == 0)
            {
              goto LABEL_38;
            }

            v50.origin.x = v27;
            v50.origin.y = v28;
            v50.size.width = v29;
            v50.size.height = v30;
            v48.origin.x = v24;
            v48.origin.y = v23;
            v48.size.width = v22;
            v48.size.height = v21;
            if (!CGRectEqualToRect(v48, v50))
            {
              goto LABEL_38;
            }
          }

          else if ((*(v16 + v18 + 80) & 1) != 0 || (v19 != v25 || v20 != v26) && (sub_1D7D3197C() & 1) == 0 || (v49.origin.x = v27, v49.origin.y = v28, v49.size.width = v29, v49.size.height = v30, v47.origin.x = v24, v47.origin.y = v23, v47.size.width = v22, v47.size.height = v21, !CGRectEqualToRect(v47, v49)))
          {
LABEL_38:
            sub_1D7A2BEAC(&v41);
            sub_1D7A2BEAC(&v35);
            return 0;
          }

          v18 += 56;
          if (!--v17)
          {
            sub_1D7A2BEAC(&v41);
            sub_1D7A2BEAC(&v35);
            v5 = v32;
            v4 = v33;
            break;
          }
        }
      }

      if (++v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D7A59788(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D7D3197C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D7A59818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1D7D3197C();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D7A598D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D7D2824C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v68 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D79A7924(0, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v62 - v10;
  sub_1D7A6031C();
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v70, v16);
  v79 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v78, v18);
  v76 = (&v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v72 = (&v62 - v22);
  sub_1D7A6057C(0, qword_1EE0BD388, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  v77 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v62 - v25;
  v75 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  MEMORY[0x1EEE9AC00](v75, v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v34 = &v62 - v33;
  v35 = *(a1 + 16);
  if (v35 != *(a2 + 16))
  {
    return 0;
  }

  if (!v35 || a1 == a2)
  {
    return 1;
  }

  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = a1 + v36;
  v38 = a2 + v36;
  v65 = (v5 + 48);
  v62 = (v5 + 32);
  v63 = (v5 + 8);
  v67 = *(v32 + 72);
  v73 = v26;
  v64 = v11;
  v74 = v29;
  v69 = &v62 - v33;
  while (1)
  {
    sub_1D7A605DC(v37, v34, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    sub_1D7A605DC(v38, v29, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v39 = &v26[*(v77 + 48)];
    sub_1D7A605DC(v34, v26, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    sub_1D7A605DC(v29, v39, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v51 = v72;
    sub_1D7A605DC(v26, v72, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    v52 = v51[1];
    v83[0] = *v51;
    v83[1] = v52;
    v53 = v51[3];
    v84 = v51[2];
    v85 = v53;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D7A0AD5C(v83);
      goto LABEL_41;
    }

    v54 = *(v39 + 1);
    v80[0] = *v39;
    v80[1] = v54;
    v55 = *(v39 + 3);
    v81 = *(v39 + 2);
    v82 = v55;
    v29 = v74;
    v34 = v69;
    if (v83[0] != v80[0] && (sub_1D7D3197C() & 1) == 0)
    {
LABEL_37:
      sub_1D7A0AD5C(v80);
      sub_1D7A0AD5C(v83);
LABEL_38:
      sub_1D7A5FA24(v26, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
      goto LABEL_45;
    }

    if (*(&v84 + 1))
    {
      if (!*(&v81 + 1) || v84 != v81 && (sub_1D7D3197C() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (*(&v81 + 1))
    {
      goto LABEL_37;
    }

    if (v85 == v82)
    {
      sub_1D7A0AD5C(v80);
      sub_1D7A0AD5C(v83);
    }

    else
    {
      v60 = sub_1D7D3197C();
      sub_1D7A0AD5C(v80);
      sub_1D7A0AD5C(v83);
      if ((v60 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_34:
    sub_1D7A5FA24(v26, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    if (*(*&v34[*(v75 + 20)] + 16) != *(*&v29[*(v75 + 20)] + 16))
    {
      goto LABEL_45;
    }

    sub_1D7A5FA24(v29, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v26 = v73;
    sub_1D7A5FA24(v34, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v38 += v67;
    v37 += v67;
    if (!--v35)
    {
      return 1;
    }
  }

  v40 = v76;
  sub_1D7A605DC(v26, v76, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D7A5FA24(v40, type metadata accessor for AsyncArticle);
LABEL_41:
    v29 = v74;
    v34 = v69;
    sub_1D7A602C0(v26, qword_1EE0BD388, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    goto LABEL_45;
  }

  v41 = v79;
  sub_1D79A8864(v39, v79, type metadata accessor for AsyncArticle);
  v29 = v74;
  if ((*v40 != *v41 || v40[1] != v41[1]) && (sub_1D7D3197C() & 1) == 0 || (v40[2] != v79[2] || v40[3] != v79[3]) && (sub_1D7D3197C() & 1) == 0 || (v40[4] != v79[4] || v40[5] != v79[5]) && (sub_1D7D3197C() & 1) == 0)
  {
    goto LABEL_44;
  }

  v66 = v37;
  v42 = v4;
  v43 = *(v70 + 28);
  v44 = v40;
  v45 = *(v71 + 48);
  v46 = MEMORY[0x1E6968FB0];
  v47 = MEMORY[0x1E69E6720];
  sub_1D7A603B0(v44 + v43, v15, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D79A7924);
  v48 = v79 + v43;
  v4 = v42;
  sub_1D7A603B0(v48, &v15[v45], &qword_1EE0CB770, v46, v47, sub_1D79A7924);
  v49 = *v65;
  if ((*v65)(v15, 1, v42) == 1)
  {
    v50 = v49(&v15[v45], 1, v42);
    v29 = v74;
    if (v50 != 1)
    {
      goto LABEL_43;
    }

    sub_1D79A8AB4(v15);
    v40 = v76;
    v37 = v66;
LABEL_29:
    sub_1D7A5FA24(v79, type metadata accessor for AsyncArticle);
    sub_1D7A5FA24(v40, type metadata accessor for AsyncArticle);
    v26 = v73;
    v34 = v69;
    goto LABEL_34;
  }

  v56 = v64;
  sub_1D7A603B0(v15, v64, &qword_1EE0CB770, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D79A7924);
  if (v49(&v15[v45], 1, v4) != 1)
  {
    v57 = v68;
    (*v62)(v68, &v15[v45], v4);
    sub_1D7996ECC(&qword_1EC9E2E50, MEMORY[0x1E6968FB0]);
    v58 = sub_1D7D3030C();
    v59 = *v63;
    (*v63)(v57, v4);
    v59(v56, v4);
    sub_1D79A8AB4(v15);
    v29 = v74;
    v40 = v76;
    v37 = v66;
    if ((v58 & 1) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_29;
  }

  (*v63)(v56, v4);
  v29 = v74;
LABEL_43:
  sub_1D7A5FA24(v15, sub_1D7A6031C);
  v40 = v76;
LABEL_44:
  sub_1D7A5FA24(v79, type metadata accessor for AsyncArticle);
  sub_1D7A5FA24(v40, type metadata accessor for AsyncArticle);
  sub_1D7A5FA24(v73, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  v34 = v69;
LABEL_45:
  sub_1D7A5FA24(v29, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  sub_1D7A5FA24(v34, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
  return 0;
}

uint64_t sub_1D7A5A3DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v83 = v2;
  v84 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v9 = v5[3];
    v68 = v5[2];
    v69 = v9;
    v10 = v5[1];
    v66 = *v5;
    v67 = v10;
    v11 = v6[1];
    v12 = v6[3];
    v73 = v6[2];
    v74 = v12;
    v13 = v6[1];
    v71 = *v6;
    v72 = v13;
    v14 = v5[3];
    v76[2] = v68;
    v76[3] = v14;
    v76[0] = v66;
    v76[1] = v8;
    v79 = v11;
    v80 = v73;
    v81 = v6[3];
    v70 = *(v5 + 8);
    v75 = *(v6 + 8);
    v77 = *(v5 + 8);
    v82 = *(v6 + 8);
    v78 = v71;
    v16 = *(&v67 + 1);
    v15 = v68;
    v17 = v69;
    v64 = *(&v68 + 1);
    if (v70 >> 62)
    {
      v18 = v67;
      v19 = *(&v69 + 1);
      v62 = v69;
      v63 = i;
      if (v70 >> 62 == 1)
      {
        if (v75 >> 62 != 1)
        {
          goto LABEL_72;
        }

        v20 = *(&v72 + 1);
        v21 = v72;
        v22 = *(&v73 + 1);
        v23 = v73;
        v25 = *(&v74 + 1);
        v24 = v74;
        if (v66 != v71)
        {
          v59 = *(&v73 + 1);
          v61 = v73;
          v26 = *(&v74 + 1);
          v27 = v74;
          v28 = *(&v69 + 1);
          v29 = v68;
          v30 = *(&v72 + 1);
          v31 = sub_1D7D3197C();
          v20 = v30;
          v15 = v29;
          v19 = v28;
          v25 = v26;
          v24 = v27;
          v22 = v59;
          v23 = v61;
          if ((v31 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        if (v18 != v21 || v16 != v20)
        {
          v32 = v15;
          v33 = sub_1D7D3197C();
          v15 = v32;
          if ((v33 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        if (v64)
        {
          if (!v22 || (v15 != v23 || v64 != v22) && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else if (v22)
        {
          goto LABEL_72;
        }

        if (v19)
        {
          if (!v25 || (v62 != v24 || v19 != v25) && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_72;
          }

          sub_1D7A4E460(&v71, v65);
          sub_1D7A4E460(&v66, v65);
          i = v63;
          goto LABEL_63;
        }

        sub_1D7A4E460(&v71, v65);
        sub_1D7A4E460(&v66, v65);
        sub_1D7A60044(v76, &qword_1EC9E2E40);
        i = v63;
        if (v25)
        {
          return 0;
        }
      }

      else
      {
        if (v75 >> 62 != 2)
        {
          goto LABEL_72;
        }

        v41 = *(&v72 + 1);
        v42 = v72;
        v43 = *(&v73 + 1);
        v60 = v73;
        v44 = *(&v74 + 1);
        v45 = v74;
        if (v66 != v71)
        {
          v57 = *(&v67 + 1);
          v46 = *(&v74 + 1);
          v58 = v74;
          v47 = *(&v73 + 1);
          v48 = *(&v69 + 1);
          v49 = v68;
          v50 = *(&v72 + 1);
          v51 = sub_1D7D3197C();
          v41 = v50;
          v15 = v49;
          v19 = v48;
          v43 = v47;
          v44 = v46;
          v16 = v57;
          v45 = v58;
          if ((v51 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        if (v18 != v42 || v16 != v41)
        {
          v52 = v15;
          v53 = sub_1D7D3197C();
          v15 = v52;
          if ((v53 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        if (v64)
        {
          if (!v43 || (v15 != v60 || v64 != v43) && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else if (v43)
        {
          goto LABEL_72;
        }

        if (v19)
        {
          if (!v44 || (v62 != v45 || v19 != v44) && (sub_1D7D3197C() & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else if (v44)
        {
          goto LABEL_72;
        }

        sub_1D7A4E460(&v71, v65);
        sub_1D7A4E460(&v66, v65);
        sub_1D7A4E460(&v71, v65);
        sub_1D7A4E460(&v66, v65);
        sub_1D7A4E460(&v71, v65);
        sub_1D7A4E460(&v66, v65);
        sub_1D7992EFC(0, &qword_1EE0BECC0);
        sub_1D798C468(0, &qword_1EE0BE7E0);
        v55 = sub_1D7D308CC();
        sub_1D7A60044(v76, &qword_1EC9E2E40);
        sub_1D7A4E600(&v71);
        sub_1D7A4E600(&v66);
        sub_1D7A4E600(&v71);
        sub_1D7A4E600(&v66);
        i = v63;
        if ((v55 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v75 >> 62)
      {
        goto LABEL_72;
      }

      v34 = *(&v72 + 1);
      v37 = *(&v73 + 1);
      v35 = v73;
      v36 = v74;
      if (v66 != v71)
      {
        v38 = *(&v73 + 1);
        v39 = v68;
        v40 = sub_1D7D3197C();
        v15 = v39;
        v37 = v38;
        if ((v40 & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      if (v15)
      {
        if (!v35 || (v16 != v34 || v15 != v35) && (sub_1D7D3197C() & 1) == 0)
        {
LABEL_72:
          sub_1D7A4E460(&v71, v65);
          sub_1D7A4E460(&v66, v65);
          sub_1D7A60044(v76, &qword_1EC9E2E40);
          return 0;
        }
      }

      else if (v35)
      {
        goto LABEL_72;
      }

      if (!v17)
      {
        if (v36)
        {
          goto LABEL_72;
        }

LABEL_62:
        sub_1D7A4E460(&v71, v65);
        sub_1D7A4E460(&v66, v65);
LABEL_63:
        sub_1D7A60044(v76, &qword_1EC9E2E40);
        goto LABEL_68;
      }

      if (!v36)
      {
        goto LABEL_72;
      }

      if (v64 == v37 && v17 == v36)
      {
        goto LABEL_62;
      }

      v54 = sub_1D7D3197C();
      sub_1D7A4E460(&v71, v65);
      sub_1D7A4E460(&v66, v65);
      sub_1D7A60044(v76, &qword_1EC9E2E40);
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_68:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 = (v5 + 72);
  }

  return 1;
}

uint64_t sub_1D7A5AA10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v7 = *v3;
      v13 = *(v3 - 1);
      v8 = i[1];
      v9 = i[2];
      v11 = i[3];
      v10 = i[4];
      if ((*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i) && (sub_1D7D3197C() & 1) == 0)
      {
        break;
      }

      if ((v5 != v8 || v6 != v9) && (sub_1D7D3197C() & 1) == 0)
      {
        break;
      }

      if (v7)
      {
        if (!v10 || (v13 != v11 || v7 != v10) && (sub_1D7D3197C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t ArticleViewerBlueprint.ArticleItem.init(model:traits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D79A8864(a1, a3, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  result = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static ArticleViewerBlueprint.ArticleItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12NewsArticles22ArticleViewerBlueprintO0C4ItemV5ModelO2eeoiySbAG_AGtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  return *(*(a1 + *(v4 + 20)) + 16) == *(*(a2 + *(v4 + 20)) + 16);
}

uint64_t ArticleViewerBlueprint.ArticleItem.traits.getter()
{
  type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
}

uint64_t ArticleViewerBlueprint.ArticleItem.identifier.getter()
{
  v1 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7A605DC(v0, v8, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D79A8864(v8, v4, type metadata accessor for AsyncArticle);
    v9 = *v4;

    sub_1D7A5FA24(v4, type metadata accessor for AsyncArticle);
  }

  else
  {
    v9 = *v8;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v9;
}

BOOL sub_1D7A5AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static ArticleViewerBlueprint.ArticleItem.Model.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1D7A5A3C8(v7, v8);
}

uint64_t ArticleViewerBlueprint.PreviewItem.model.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ArticleViewerBlueprint.PreviewItem.init(model:traits:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = a1[1].n128_u64[0];
  v5 = a1[1].n128_u64[1];
  *a3 = *a1;
  a3[1].n128_u64[0] = v4;
  a3[1].n128_u64[1] = v5;
  a3[2].n128_u64[0] = a2;
  return result;
}

uint64_t static ArticleViewerBlueprint.PreviewItem.Model.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D7D3197C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D7D3197C();
    }
  }

  return result;
}

uint64_t sub_1D7A5AFB8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D7D3197C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D7D3197C();
    }
  }

  return result;
}

BOOL sub_1D7A5B064(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = *(v4 + 72);
  v10 = v7 - 1;
  do
  {
    sub_1D7A605DC(v8, v6, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    v11 = *(*&v6[*(v2 + 20)] + 16);
    v12 = v11 != 0;
    sub_1D7A5FA24(v6, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10 == 0;
    }

    --v10;
    v8 += v9;
  }

  while (!v13);
  return v12;
}

char *sub_1D7A5B1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncArticle();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model(0);
  MEMORY[0x1EEE9AC00](v62, v8);
  v10 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ArticleViewerBlueprint.ArticleItem(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v60 = v7;
  v59 = v10;
  if (v15)
  {
    *&v63 = v12;
    *&v64 = a2;
    v70 = MEMORY[0x1E69E7CC0];
    sub_1D7A5C11C(0, v15, 0);
    v16 = v70;
    v17 = (a1 + 32);
    do
    {
      v18 = v17[1];
      v66 = *v17;
      *v67 = v18;
      v19 = v17[3];
      *&v67[16] = v17[2];
      *&v67[32] = v19;
      v20 = v66;
      v68 = v66;
      *v69 = v18;
      *&v69[16] = *&v67[16];
      *&v69[32] = v19;
      sub_1D79F5B54(&v66, v65);
      v70 = v16;
      v22 = *(v16 + 16);
      v21 = *(v16 + 24);

      if (v22 >= v21 >> 1)
      {
        sub_1D7A5C11C((v21 > 1), v22 + 1, 1);
        v16 = v70;
      }

      *(v16 + 16) = v22 + 1;
      v23 = (v16 + 80 * v22);
      v23[2] = v20;
      v24 = v68;
      v25 = *v69;
      v26 = *&v69[32];
      v23[5] = *&v69[16];
      v23[6] = v26;
      v23[3] = v24;
      v23[4] = v25;
      v17 += 4;
      --v15;
    }

    while (v15);
    v7 = v60;
    v10 = v59;
    a2 = v64;
    v12 = v63;
  }

  if (*(v16 + 16))
  {
    sub_1D7A5F9C4();
    v27 = sub_1D7D316BC();
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC8];
  }

  *&v68 = v27;

  sub_1D7A5EAC0(v28, 1, &v68);

  v29 = v68;
  v30 = *(a2 + 16);
  if (!v30)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v31 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v61 = *(v12 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v58;
  do
  {
    sub_1D7A605DC(v31, v33, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
    sub_1D7A605DC(v33, v10, type metadata accessor for ArticleViewerBlueprint.ArticleItem.Model);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D79A8864(v10, v7, type metadata accessor for AsyncArticle);
      if (!*(v29 + 16) || (v34 = sub_1D7A18FFC(*v7, v7[1]), (v35 & 1) == 0))
      {
        sub_1D7A5FA24(v7, type metadata accessor for AsyncArticle);
        sub_1D7A5FA24(v33, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        goto LABEL_13;
      }

      v36 = (*(v29 + 56) + (v34 << 6));
      v38 = v36[2];
      v37 = v36[3];
      v39 = v36[1];
      v68 = *v36;
      *v69 = v39;
      *&v69[16] = v38;
      *&v69[32] = v37;
      sub_1D79F5B54(&v68, &v66);
      sub_1D7A5FA24(v7, type metadata accessor for AsyncArticle);
      sub_1D7A5FA24(v33, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
      v64 = *&v69[24];
      v63 = *&v69[8];
      v40 = *&v69[40];
      v42 = *(&v68 + 1);
      v41 = *v69;
      v43 = v68;
    }

    else
    {
      v44 = v10[3];
      *&v69[16] = v10[2];
      *&v69[32] = v44;
      v45 = v10[1];
      v68 = *v10;
      *v69 = v45;
      v42 = *(&v68 + 1);
      v43 = v68;
      if (*(v29 + 16) && (v46 = sub_1D7A18FFC(v68, *(&v68 + 1)), (v47 & 1) != 0))
      {
        v48 = (*(v29 + 56) + (v46 << 6));
        v50 = v48[2];
        v49 = v48[3];
        v51 = v48[1];
        v66 = *v48;
        *v67 = v51;
        *&v67[16] = v50;
        *&v67[32] = v49;
        sub_1D79F5B54(&v66, v65);
        sub_1D7A5FA24(v33, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        sub_1D7A0AD5C(&v68);
        v40 = *&v67[40];
        v64 = *&v67[24];
        v63 = *&v67[8];
        v42 = *(&v66 + 1);
        v41 = *v67;
        v43 = v66;
      }

      else
      {
        sub_1D7A5FA24(v33, type metadata accessor for ArticleViewerBlueprint.ArticleItem);
        v64 = *&v69[24];
        v63 = *&v69[8];
        v40 = *&v69[40];
        v41 = *v69;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1D79E3A50(0, *(v32 + 2) + 1, 1, v32);
    }

    v53 = *(v32 + 2);
    v52 = *(v32 + 3);
    v54 = v32;
    if (v53 >= v52 >> 1)
    {
      v54 = sub_1D79E3A50((v52 > 1), v53 + 1, 1, v32);
    }

    *(v54 + 2) = v53 + 1;
    v32 = v54;
    v55 = &v54[64 * v53];
    *(v55 + 4) = v43;
    *(v55 + 5) = v42;
    *(v55 + 6) = v41;
    *(v55 + 72) = v64;
    *(v55 + 56) = v63;
    *(v55 + 11) = v40;
    v7 = v60;
    v10 = v59;
    v33 = v58;
LABEL_13:
    v31 += v61;
    --v30;
  }

  while (v30);

  return v32;
}

unint64_t sub_1D7A5B7B4(uint64_t a1)
{
  sub_1D7D3034C();
  sub_1D7D31A8C();
  sub_1D7D303FC();
  v2 = sub_1D7D31ABC();

  return sub_1D7A5BA54(a1, v2);
}

unint64_t sub_1D7A5B898(uint64_t a1)
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](a1);
  v2 = sub_1D7D31ABC();

  return sub_1D7A5BB58(a1, v2);
}

unint64_t sub_1D7A5B954(unsigned __int8 a1)
{
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](a1);
  v2 = sub_1D7D31ABC();

  return sub_1D7A5BC90(a1, v2);
}

unint64_t sub_1D7A5BA10(uint64_t a1)
{
  v2 = sub_1D7D313CC();

  return sub_1D7A5BD00(a1, v2);
}

unint64_t sub_1D7A5BA54(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D7D3034C();
      v8 = v7;
      if (v6 == sub_1D7D3034C() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D7D3197C();

      if ((v11 & 1) == 0)
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

unint64_t sub_1D7A5BB58(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D7A5BBC4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1D7992EFC(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_1D7D311DC();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D7A5BC90(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D7A5BD00(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D7A5FF18(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1DA70EE40](v9, a1);
      sub_1D7A5FF74(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1D7A5BDC8(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5C9E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D7A5BDE8(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E41C(a1, a2, a3, *v3, sub_1D7A5FFC8, &qword_1EC9E1A58, &type metadata for PDFReplicaPage);
  *v3 = result;
  return result;
}

char *sub_1D7A5BE2C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5CB04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5BE4C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5CC28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5BE6C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5CD4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5BE8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E58, sub_1D79ECB58, sub_1D79ECB58);
  *v3 = result;
  return result;
}

char *sub_1D7A5BEDC(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5CE8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5BEFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E68, sub_1D7A060E8, sub_1D7A060E8);
  *v3 = result;
  return result;
}

char *sub_1D7A5BF4C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5CFC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5BF6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BEA68, type metadata accessor for ArticleViewerPage, type metadata accessor for ArticleViewerPage);
  *v3 = result;
  return result;
}

void *sub_1D7A5BFBC(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D100(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5BFDC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BE8A8, MEMORY[0x1E69B66A8], MEMORY[0x1E69B66A8]);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C02C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2D90, sub_1D7A27074, sub_1D7A27074);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C07C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2D98, sub_1D7A2ACA8, sub_1D7A2ACA8);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C0CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &unk_1EE0BE950, sub_1D7A2AFB8, sub_1D7A2AFB8);
  *v3 = result;
  return result;
}

void *sub_1D7A5C11C(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5C13C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D388(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C15C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DA0, sub_1D7A2B1DC, sub_1D7A2B1DC);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C1AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DA8, sub_1D7A2B30C, sub_1D7A2B30C);
  *v3 = result;
  return result;
}

char *sub_1D7A5C1FC(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D4AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C21C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &unk_1EE0BE9B8, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Decoration);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C26C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BE9B0, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Footer);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C2BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BE9A8, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header, type metadata accessor for EndOfArticleLayoutSectionDescriptor.Header);
  *v3 = result;
  return result;
}

void *sub_1D7A5C30C(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D5E4(a1, a2, a3, *v3, &qword_1EE0BE910, &unk_1EE0BFC98);
  *v3 = result;
  return result;
}

void *sub_1D7A5C344(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D5E4(a1, a2, a3, *v3, &unk_1EE0BE918, &qword_1EE0BFCB8);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C37C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E70, sub_1D7A2B3A0, sub_1D7A2B3A0);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C3CC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BE948, sub_1D7A5FC40, sub_1D7A5FC40);
  *v3 = result;
  return result;
}

char *sub_1D7A5C41C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5D960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C43C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BE940, sub_1D7A600A4, sub_1D7A600A4);
  *v3 = result;
  return result;
}

char *sub_1D7A5C48C(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5DAA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C4AC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DB8, sub_1D7A5FB54, sub_1D7A5FB54);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C4FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DC8, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Decoration);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C54C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DD0, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Footer);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C59C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DD8, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header, type metadata accessor for EndOfRecipeLayoutSectionDescriptor.Header);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C5EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2DB0, sub_1D7A2B48C, sub_1D7A2B48C);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C63C(size_t a1, int64_t a2, char a3)
{
  result = sub_1D7A5DC08(a1, a2, a3, *v3, sub_1D7A60424, &qword_1EC9E5940, sub_1D7A26E88);
  *v3 = result;
  return result;
}

char *sub_1D7A5C694(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5DE04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D7A5C6B4(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5DF3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5C6D4(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E088(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5C6F4(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E1C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5C714(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E2E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D7A5C734(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E41C(a1, a2, a3, *v3, sub_1D7A5FE20, &unk_1EE0BF330, &type metadata for ArticleRecirculationConfigFactory.RealizedRule);
  *v3 = result;
  return result;
}

char *sub_1D7A5C778(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E59C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D7A5C798(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E6C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D7A5C7B8(char *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C7D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EE0BEA30, _s15ArticleProviderOMa, _s15ArticleProviderOMa);
  *v3 = result;
  return result;
}

void *sub_1D7A5C828(void *a1, int64_t a2, char a3)
{
  result = sub_1D7A5E964(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C848(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E60, sub_1D79ECCB8, sub_1D79ECCB8);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C898(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E08, sub_1D7A2B684, sub_1D7A2B684);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C8E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E10, type metadata accessor for TableOfContentsPDFCellViewLayout.Context, type metadata accessor for TableOfContentsPDFCellViewLayout.Context);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C938(size_t a1, int64_t a2, char a3)
{
  result = sub_1D79A8620(a1, a2, a3, *v3, &qword_1EC9E2E18, type metadata accessor for TableOfContentsHeaderViewLayout.Context, type metadata accessor for TableOfContentsHeaderViewLayout.Context);
  *v3 = result;
  return result;
}

size_t sub_1D7A5C988(size_t a1, int64_t a2, char a3)
{
  result = sub_1D7A5DC08(a1, a2, a3, *v3, sub_1D7A604A0, &qword_1EC9E32F0, sub_1D7A13440);
  *v3 = result;
  return result;
}

char *sub_1D7A5C9E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EE0BE890, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D7A5CB04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E2E30, &type metadata for PDFReplicaViewerPage, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D7A5CC28(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &unk_1EE0BE990, &type metadata for Article, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D7A5CD4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EE0BAEB0, &type metadata for RecipeViewerRecipe, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D7A5CE8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &unk_1EE0BAEA0, &type metadata for ANFIssuePage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D7A5CFC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E17D8, &type metadata for RecipeViewerPage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D7A5D100(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D7A5FE9C();
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
    sub_1D79A7880(0, &qword_1EE0CBB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D7A5D240(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D7A5FA84();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7A60214(0, &unk_1EE0BF428);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D7A5D388(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EE0BEA00, &type metadata for ArticleViewerBarButtonItem, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D7A5D4AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E2E28, &type metadata for RecipeArticleDrawerViewModel.Recipe, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D7A5D5E4(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_1D7A5FAF4(0, a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 40);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[5 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 40 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D798C468(0, a6);
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1D7A5D768(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, void (*a7)(uint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1D7A5FBE8(0, a5, a6, a7);
  sub_1D7A5FCD4(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_1D7A5FCD4(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_1D7A5D960(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E2DE0, &type metadata for RecipeViewerBlueprint.RecipeItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D7A5DAA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E1A60, &type metadata for PDFReplicaPage, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D7A5DC08(size_t result, int64_t a2, char a3, void *a4, void (*a5)(void), unint64_t *a6, void (*a7)(void))
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  a5(0);
  sub_1D7A6051C(0, a6, a7);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_1D7A6051C(0, a6, a7);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

char *sub_1D7A5DE04(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D79A7880(0, &qword_1EC9E1A18, &type metadata for SubConcernModel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1D7A5DF3C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D79A7924(0, &unk_1EE0BAE60, sub_1D7A5FDB8, MEMORY[0x1E69E6F90]);
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
    sub_1D7A5FDB8();
    swift_arrayInitWithCopy();
  }

  return v10;
}
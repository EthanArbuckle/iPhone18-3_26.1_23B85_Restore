uint64_t sub_1D7B03F18()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_1D7D30B7C();
    v3 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
    if (v2)
    {
      swift_beginAccess();
      v4 = *&v1[v3];
      if (v4 >> 62)
      {
        result = sub_1D7D3167C();
        if (!result)
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!result)
        {
          goto LABEL_11;
        }
      }

      if ((v4 & 0xC000000000000001) != 0)
      {

        v5 = MEMORY[0x1DA70EF00](0, v4);

        goto LABEL_8;
      }

      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 32);
LABEL_8:
        v11 = &unk_1F532DF90;
        v6 = swift_dynamicCastObjCProtocolConditional();
        if (v6)
        {
          [v6 startTraversingWithDirection_];
        }

LABEL_11:
        v7 = *&v1[v3];
        if (v7 >> 62)
        {
          if (!sub_1D7D3167C())
          {
            goto LABEL_22;
          }
        }

        else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_22:
          *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_scrollDebounce] = 0;
        }

        [v1 setNeedsFocusUpdate];
        [v1 updateFocusIfNeeded];
        goto LABEL_22;
      }

      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    swift_beginAccess();
    v8 = *&v1[v3];
    if (v8 >> 62)
    {
      result = sub_1D7D3167C();
      if (!result)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_22;
      }
    }

    if ((v8 & 0xC000000000000001) != 0)
    {

      v9 = MEMORY[0x1DA70EF00](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v9 = *(v8 + 32);
    }

    v10 = swift_dynamicCastObjCProtocolConditional();
    if (v10)
    {
      [v10 deselect];
    }

    goto LABEL_22;
  }

  return result;
}

Swift::Void __swiftcall ArticleViewController.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  if (sub_1D7AFEC98(v1))
  {
    sub_1D7A348AC(*(*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler) + 88));
  }
}

Swift::Void __swiftcall ArticleViewController.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  if (!willDecelerate && (sub_1D7AFEC98(v2) & 1) != 0)
  {
    sub_1D7A348AC(*(*(v2 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_eventHandler) + 88));
  }
}

id sub_1D7B04390(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController);
  if (!v2)
  {
    return 0;
  }

  v4 = v2;
  [a1 accessibilityFrame];
  v25 = v6;
  v26 = v5;
  v23 = v8;
  v24 = v7;
  result = [*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) scrollView];
  if (result)
  {
    v10 = result;
    [result accessibilityFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    rect = v15;
    v18 = v17;

    [v4 accessibilityFrame];
    MinY = CGRectGetMinY(v28);
    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    v20 = MinY - CGRectGetMinY(v29);
    v30.origin.x = v26;
    v30.origin.y = v25;
    v30.size.width = v24;
    v30.size.height = v23;
    MidX = CGRectGetMidX(v30);
    v31.origin.x = v26;
    v31.origin.y = v25;
    v31.size.width = v24;
    v31.size.height = v23;
    v27.y = CGRectGetMidY(v31);
    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = rect;
    v32.size.height = v20;
    v27.x = MidX;
    LODWORD(v10) = CGRectContainsPoint(v32, v27);

    return (v10 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7B045C0(uint64_t (*a1)(void))
{
  if (*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    return 0;
  }

  v4 = [*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) contentSizeCategory];
  v5 = a1();

  if (!v5)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D7B04650(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (*&a1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController])
  {
    return 0;
  }

  v5 = *&a1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController];
  v6 = a1;
  v7 = [v5 contentSizeCategory];
  v8 = a3();

  if (!v8)
  {
    return 0;
  }

  return 1;
}

void sub_1D7B04764(uint64_t (*a1)(void))
{
  if (!*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    v4 = [v3 contentSizeCategory];
    v5 = a1();

    if (v5)
    {

      v6 = [v3 contentSizeCategory];
      v7 = a1();

      if (v7)
      {
        [v3 setContentSizeCategory_];
      }
    }
  }
}

Swift::Void __swiftcall ArticleViewController.zoomIn()()
{
  if (!*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    if ([v1 contentScale] != 11)
    {
      v2 = NUContentScaleIncrease([v1 contentScale]);

      [v1 setContentScale_];
    }
  }
}

Swift::Void __swiftcall ArticleViewController.zoomOut()()
{
  if (!*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    if ([v1 contentScale] != 1)
    {
      v2 = NUContentScaleDecrease([v1 contentScale]);

      [v1 setContentScale_];
    }
  }
}

Swift::Bool __swiftcall ArticleViewController.canResetZoom()()
{
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    v1 = 0;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
    if ([v2 contentScale] == 4)
    {
      v3 = [v2 contentSizeCategory];
      v4 = [objc_opt_self() sharedApplication];
      v5 = [v4 preferredContentSizeCategory];

      v6 = sub_1D7D3034C();
      v8 = v7;
      if (v6 == sub_1D7D3034C() && v8 == v9)
      {

        v1 = 0;
      }

      else
      {
        v11 = sub_1D7D3197C();

        v1 = v11 ^ 1;
      }
    }

    else
    {
      v1 = 1;
    }
  }

  return v1 & 1;
}

Swift::Void __swiftcall ArticleViewController.resetZoom()()
{
  if (*(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController))
  {
    return;
  }

  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController);
  if ([v1 contentScale] != 4)
  {
    goto LABEL_9;
  }

  v2 = [v1 contentSizeCategory];
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 preferredContentSizeCategory];

  v5 = sub_1D7D3034C();
  v7 = v6;
  if (v5 != sub_1D7D3034C() || v7 != v8)
  {
    v10 = sub_1D7D3197C();

    if (v10)
    {
      return;
    }

LABEL_9:
    [v1 setContentScale_];
    v11 = [objc_opt_self() sharedApplication];
    v12 = [v11 preferredContentSizeCategory];

    [v1 setContentSizeCategory_];

    return;
  }
}

id ArticleViewController.layoutOptions(paywallType:)@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  sub_1D7B092B4(&unk_1EE0C8070, type metadata accessor for ArticleViewController);
  sub_1D7D2B9DC();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = result;
  [result safeAreaInsets];
  v14 = v13;

  MEMORY[0x1DA70E590](v14, v4, v6, v8, v10);
  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = result;
  [result safeAreaInsets];

  sub_1D7D30B3C();
  v16 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = result;
  [result layoutMargins];

  sub_1D7D2AF6C();
  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = result;
  [result bounds];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = result;
  v20 = [result window];

  if (!v20)
  {
    result = [v1 view];
    if (!result)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v20 = result;
  }

  [v20 bounds];

  v21 = [objc_opt_self() mainScreen];
  [v21 nativeBounds];

  v22 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = result;
  v24 = objc_opt_self();
  v25 = [v23 semanticContentAttribute];

  [v24 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v26 = [v1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];

  sub_1D7D2976C();
  v28 = sub_1D7D2977C();
  v29 = *(*(v28 - 8) + 56);

  return v29(a1, 0, 1, v28);
}

id ArticleViewController.search(with:)(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) searchWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1D7B0562C(uint64_t a1)
{
  result = [*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) searchWithContext_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ArticleViewController.addDidDisappear(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = v2;

  sub_1D7D294EC();
}

uint64_t sub_1D7B056F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_didDisappearCompletions;
  swift_beginAccess();
  v8 = *(a1 + v7);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D79E4CFC(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1D79E4CFC((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_1D7A7DE38;
  v12[5] = v6;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

Swift::Bool __swiftcall ArticleViewController.shouldUpdateFocus(in:)(UIFocusUpdateContext in)
{
  v3 = sub_1D7D2DB3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2DB7C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [(objc_class *)in.super.isa previouslyFocusedItem];
  v15 = [*(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController) scrollView];
  if (v14)
  {
    if (!v15)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    v16 = v15;

    swift_unknownObjectRelease();
    if (v14 != v16)
    {
      return 1;
    }
  }

  else if (v15)
  {

    return 1;
  }

  v17 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_footers;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18 >> 62)
  {
    if (!sub_1D7D3167C())
    {
      return 1;
    }
  }

  else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 1;
  }

  if ([(objc_class *)in.super.isa focusHeading]== 16)
  {
    v19 = sub_1D7AFE45C();
    if (v19)
    {
      v20 = v19;
      sub_1D7992EFC(0, &qword_1EE0BEFF0);
      v28 = sub_1D7D30E1C();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      aBlock[4] = sub_1D7B085EC;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D79FE25C;
      aBlock[3] = &block_descriptor_61;
      v26 = _Block_copy(aBlock);
      v27 = v20;

      sub_1D7D2DB5C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D7B092B4(&qword_1EE0BFA20, MEMORY[0x1E69E7F60]);
      v22 = MEMORY[0x1E69E7F60];
      sub_1D798EA94(0, &qword_1EE0BF280, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D7B08DA0(&qword_1EE0BF270, &qword_1EE0BF280, v22);
      sub_1D7D313AC();
      v23 = v26;
      v24 = v28;
      MEMORY[0x1DA70E890](0, v13, v7, v26);
      _Block_release(v23);

      (*(v4 + 8))(v7, v3);
      (*(v9 + 8))(v13, v8);
      return 0;
    }
  }

  return 1;
}

void ArticleViewController.parallax(changedVisibilityFactor:scrollDirection:isPrimary:)()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D7D2B17C();
    type metadata accessor for ArticleMastheadRootViewController();
    sub_1D7B092B4(&qword_1EE0C2EE8, type metadata accessor for ArticleMastheadRootViewController);
    v5 = sub_1D7D2B9EC();
    v6 = &v4[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX];
    *v6 = v5;
    v6[8] = v7 & 1;
    sub_1D7B061F0();
  }

  sub_1D7B092B4(&unk_1EE0C8070, type metadata accessor for ArticleViewController);
  v8 = sub_1D7D2B9EC();
  v9 = &v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_parallaxX];
  *v9 = v8;
  v9[8] = v10 & 1;
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v11;
  sub_1D7D3109C();

  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  [v13 setNeedsLayout];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 layoutIfNeeded];
}

uint64_t sub_1D7B05E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D7D3084C();
  v5[4] = sub_1D7D3083C();
  v7 = sub_1D7D307DC();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D7B05EF8, v7, v6);
}

uint64_t sub_1D7B05EF8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_presentationContext);
  if (v1 >= 2)
  {
    v2 = v1;
  }

  else
  {
    v1 = 0;
  }

  v0[7] = v1;
  v3 = v0[3];
  v4 = _s12NewsArticles21ArticleViewControllerC12isPreviewingSbyF_0();
  swift_unknownObjectRetain();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D7B05FF0;

  return sub_1D7C07CBC(v3, v1, v4 & 1);
}

uint64_t sub_1D7B05FF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 72) = a1;

  swift_unknownObjectRelease();

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D7B06154, v5, v4);
}

uint64_t sub_1D7B06154()
{
  v1 = v0[9];

  if (v1)
  {
    if (*(v0[2] + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_mastheadViewController))
    {

      sub_1D7D2B19C();
      sub_1D7D2B18C();
    }
  }

  v2 = v0[1];

  return v2();
}

id sub_1D7B061F0()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  sub_1D7D3109C();

  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  [result setNeedsLayout];

  result = [v1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = result;
  [result layoutIfNeeded];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&v1[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX];
    v7 = v1[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX + 8];
    v8 = sub_1D7C07BE4();
    v9 = v8;
    v10 = *&v8[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
    if (v10)
    {
      v11 = v10;

      v12 = &v11[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX];
      swift_beginAccess();
      *v12 = v6;
      v12[8] = v7;
      [v11 setNeedsLayout];
      [v11 layoutIfNeeded];

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D7B06470(void *a1)
{
  type metadata accessor for ArticleView();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = a1;
  v3 = [v2 init];
  [v4 setView_];
}

id sub_1D7B064F4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_rootViewController];
  [v0 addChildViewController_];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    result = [v1 view];
    if (result)
    {
      v4 = result;
      [v3 addSubview_];

      return [v1 didMoveToParentViewController_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7B06618()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, sel_viewWillLayoutSubviews);
  sub_1D7B092B4(&qword_1EE0C2EE8, type metadata accessor for ArticleMastheadRootViewController);
  sub_1D7D2B9DC();
  v3 = v2;
  if (v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX + 8])
  {
    v4 = v2;
  }

  else
  {
    v4 = *&v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX];
  }

  sub_1D7D2FAAC();
  v5 = [*&v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_rootViewController] view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v30.origin.x = v10;
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v16;
  Width = CGRectGetWidth(v30);
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    v20 = v4 - v3;
    [v18 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v31.origin.x = v22;
    v31.origin.y = v24;
    v31.size.width = v26;
    v31.size.height = v28;
    [v6 setFrame_];

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1D7B06848()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewSafeAreaInsetsDidChange);
  sub_1D7B092B4(&qword_1EE0C2EE8, type metadata accessor for ArticleMastheadRootViewController);
  result = sub_1D7D2B9DC();
  v6 = &v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_lastSafeAreaInsets];
  if ((v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_lastSafeAreaInsets + 32] & 1) == 0 && (v6[1] != v3 || v6[3] != v5))
  {
    v8 = &v0[OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX];
    *v8 = 0;
    v8[8] = 1;
    v9 = v2;
    v10 = v4;
    v11 = v3;
    v12 = v5;
    result = sub_1D7B061F0();
    v5 = v12;
    v3 = v11;
    v4 = v10;
    v2 = v9;
  }

  *v6 = v2;
  v6[1] = v3;
  *(v6 + 2) = v4;
  v6[3] = v5;
  *(v6 + 32) = 0;
  return result;
}

uint64_t sub_1D7B06B08@<X0>(void *a1@<X8>)
{
  *a1 = [objc_opt_self() clearColor];
  v2 = *MEMORY[0x1E69D81F8];
  v3 = sub_1D7D2B75C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D7B06BA0@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_scrollViewProxyManager);
  v3 = *MEMORY[0x1E69D7B80];
  v4 = sub_1D7D2A9FC();
  (*(*(v4 - 8) + 104))(a1, v3, v4);
}

uint64_t sub_1D7B06C34(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEE46180](ObjectType, a2);
}

id sub_1D7B06C70()
{
  swift_getObjectType();
  v1 = sub_1D7D2B9EC();
  v2 = v0 + OBJC_IVAR____TtC12NewsArticlesP33_F6C36BFF6F0AD6186D9B355F4002244233ArticleMastheadRootViewController_parallaxX;
  *v2 = v1;
  *(v2 + 8) = v3 & 1;

  return sub_1D7B061F0();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D7B06D4C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D7B06E18(v11, 0, 0, 1, a1, a2);
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
    sub_1D79FBED0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1D7B06E18(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D7B06F24(a5, a6);
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
    result = sub_1D7D314FC();
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

uint64_t sub_1D7B06F24(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D7B06F70(a1, a2);
  sub_1D7B070A0(&unk_1F529A218);
  return v3;
}

uint64_t sub_1D7B06F70(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D7B0718C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D7D314FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D7D3044C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D7B0718C(v10, 0);
        result = sub_1D7D3143C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D7B070A0(uint64_t result)
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

  result = sub_1D7B07218(result, v11, 1, v3);
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

void *sub_1D7B0718C(uint64_t a1, uint64_t a2)
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

  sub_1D7B08F68(0, &unk_1EE0BE820, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D7B07218(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D7B08F68(0, &unk_1EE0BE820, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
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

uint64_t sub_1D7B07324(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1D7B07418;

  return v5(v2 + 32);
}

uint64_t sub_1D7B07418()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_1D7B0752C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_1D79E5160(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_1D7BE2D78(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1D7B07600(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1D79E3FCC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1D7BE2E98(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1D7B076C0()
{
  v1 = v0;
  v2 = sub_1D7D2836C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_observableScrollView;
  v19[0] = 0;
  sub_1D798EA94(0, &qword_1EE0C0420, sub_1D7A469D4, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v7) = sub_1D7D28ECC();
  v8 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_isImpressionable;
  LOBYTE(v19[0]) = 0;
  v9 = MEMORY[0x1E69D6538];
  sub_1D7B08F68(0, &qword_1EE0C0430, MEMORY[0x1E69E6370], MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v8) = sub_1D7D28ECC();
  *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_pageDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_contentBackgroundColor;
  v19[0] = [objc_opt_self() whiteColor];
  v19[1] = 0;
  sub_1D7B08F68(0, &unk_1EE0C0440, &type metadata for ContentBackgroundColors, v9);
  swift_allocObject();
  *(v0 + v10) = sub_1D7D28ECC();
  *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline) = 0;
  *(v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_hardPaywallViewController) = 0;
  v11 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_paywallPreparationEventManager;
  sub_1D7B08B50();
  swift_allocObject();
  *(v0 + v11) = sub_1D7D28C9C();
  v12 = (v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_destinationViewSize);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_viewingSessionID);
  sub_1D7D2835C();
  v14 = sub_1D7D2834C();
  v16 = v15;
  (*(v3 + 8))(v6, v2);
  *v13 = v14;
  v13[1] = v16;
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_scrollDebounce) = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_didDisappearCompletions) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_completedReadingDebouncer) = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_multiDelegate) = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_spaceKeyCommandsRegistered) = 0;
  *(v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_endOfArticleSectionDidLayout) = 0;
  v17 = v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_parallaxX;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtC12NewsArticles21ArticleViewController_lastSafeAreaInsets;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 1;
  sub_1D7D3160C();
  __break(1u);
}

uint64_t _s12NewsArticles21ArticleViewControllerC011articleHostdE33DidScrollToBottomOfPrimaryContentyySo09NUArticlegdE0CF_0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_completedReadingDebouncer;
  if (*&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_completedReadingDebouncer] || (*(swift_allocObject() + 16) = v0, sub_1D7B08F68(0, &qword_1EE0BB210, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D87B0]), swift_allocObject(), v2 = v0, *&v0[v1] = sub_1D7D2C5DC(), result = , *&v0[v1]))
  {

    sub_1D7D2C5CC();
  }

  return result;
}

uint64_t sub_1D7B07B18(uint64_t a1, uint64_t a2)
{
  sub_1D798EA94(0, &qword_1EE0CFC20, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B07BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7B07C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for ArticleSession() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v10 = *(*v1 + 64);

  v4 = v1[7];
  v5 = sub_1D7D2833C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3 + v4, v5);
  v8 = v1[8];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v10, v2 | 7);
}

uint64_t sub_1D7B07E30(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ArticleSession() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

char *sub_1D7B07EA8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D7D3167C();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1D7D3167C();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1D7BE3D80(result, 1);

  return sub_1D7BE30B8(v6, v5, 1, v3);
}

id _s12NewsArticles21ArticleViewControllerC8willLoad_4withySo9FCArticleC_So9SXContextCtF_0(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_articleViewController];
  result = [v4 scrollView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  sub_1D7AFE0E0(result);

  v10 = [v4 scrollView];
  sub_1D7B08E88();
  sub_1D7D28F1C();

  v7 = [v4 scrollView];
  [v2 setContentScrollView:v7 forEdge:15];

  result = [a1 headline];
  if (!result)
  {
    return result;
  }

  v8 = result;
  result = [v4 scrollView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = result;
  sub_1D7D2B23C();

  sub_1D7AFB030(v8);
  return swift_unknownObjectRelease();
}

void sub_1D7B080F0()
{
  if (!qword_1EE0BF6F8)
  {
    sub_1D7D2F2FC();
    sub_1D7B092B4(&qword_1EE0BF6C0, MEMORY[0x1E69B6200]);
    v0 = sub_1D7D2F19C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF6F8);
    }
  }
}

void *sub_1D7B08184(void *result)
{
  if (result >= 2)
  {
    v2 = result;
  }

  return result;
}

void *sub_1D7B081C8(void *result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1D7B0820C()
{
  result = qword_1EE0BEDD0;
  if (!qword_1EE0BEDD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0BEDD0);
  }

  return result;
}

void _s12NewsArticles21ArticleViewControllerC17footerNeedsLayoutyyAA0C10FooterType_So06UIViewE0CXcF_0()
{
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles21ArticleViewController_documentSectionBlueprintProvider];
  v2 = [v1 observableFooterBlueprint];
  v3 = [v2 value];

  if (v3)
  {
    v4 = [v3 items];

    if (v4)
    {
      sub_1D7B0820C();
      sub_1D7D3063C();
    }
  }

  sub_1D7B0820C();
  v5 = sub_1D7D3062C();

  v7 = [objc_opt_self() blueprintWithItems_];

  v6 = [v1 observableFooterBlueprint];
  [v6 next_];

  [v0 setNeedsFocusUpdate];
  [v0 updateFocusIfNeeded];
  if (v7)
  {
    sub_1D7AFEFDC(v7);
  }
}

uint64_t sub_1D7B08414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E814;

  return sub_1D7B05E60(a1, v4, v5, v7, v6);
}

uint64_t NUContentScaleIncrease(uint64_t a1)
{
  v1 = 10;
  if (a1 < 10)
  {
    v1 = a1;
  }

  if (a1)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t NUContentScaleDecrease(uint64_t a1)
{
  v1 = 2;
  if (a1 > 2)
  {
    v1 = a1;
  }

  v2 = v1 - 1;
  if (a1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void _s12NewsArticles21ArticleViewControllerC30bundleSubscriptionDidSubscribeyySo08FCBundleG0CF_0()
{
  v1 = OBJC_IVAR____TtC12NewsArticles21ArticleViewController_headline;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    if (([v2 respondsToSelector_] & 1) != 0 && objc_msgSend(v2, sel_role) == 3)
    {
      v3 = [v0 parentViewController];
      if (v3)
      {
        v4 = v3;
        sub_1D7D2B3BC();
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

unint64_t sub_1D7B086E4()
{
  result = qword_1EE0C80C0;
  if (!qword_1EE0C80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C80C0);
  }

  return result;
}

uint64_t sub_1D7B08764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7A4E814;

  return sub_1D7B07324(a1, v4);
}

uint64_t sub_1D7B0881C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7A4E2D8;

  return sub_1D7B07324(a1, v4);
}

uint64_t sub_1D7B088D4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1D7D3167C();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1D7D3167C();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1D7BE3D80(result, 1);

  return sub_1D7BE353C(v4, v2, 0);
}

uint64_t sub_1D7B089D8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v18 = a5;
    v10 = *v6;
    v11 = *v6 >> 62;
    if (!v11)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = sub_1D7D3167C();
  if (result < v7)
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v5 >> 62))
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFSUB__(v14, v12);
    v16 = v14 - v12;
    if (!v15)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = sub_1D7D3167C();
  v14 = result;
  v15 = __OFSUB__(result, v12);
  v16 = result - v12;
  if (v15)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v11)
  {
    v17 = sub_1D7D3167C();
  }

  else
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v17, v16);
  result = v17 + v16;
  if (v15)
  {
    goto LABEL_21;
  }

  v8(result, 1);

  return v18(v9, v7, v14, v5);
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1D7B08B50()
{
  if (!qword_1EE0C04C0)
  {
    sub_1D7B08BAC();
    v0 = sub_1D7D28CAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0C04C0);
    }
  }
}

unint64_t sub_1D7B08BAC()
{
  result = qword_1EE0C80D0;
  if (!qword_1EE0C80D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C80D0);
  }

  return result;
}

uint64_t sub_1D7B08C00(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D7A4E814;

  return sub_1D7A4DA58(a1, v4);
}

void sub_1D7B08CF0(uint64_t a1, void *a2)
{
  v5 = *(sub_1D7D29A1C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_1D7AFFF64(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D7B08DA0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D798EA94(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7B08E0C()
{
  result = qword_1EE0C9C48;
  if (!qword_1EE0C9C48)
  {
    sub_1D7992EFC(255, &qword_1EE0BF010);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0C9C48);
  }

  return result;
}

unint64_t sub_1D7B08E88()
{
  result = qword_1EE0BF0F8;
  if (!qword_1EE0BF0F8)
  {
    sub_1D7A469D4(255);
    sub_1D7B08F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF0F8);
  }

  return result;
}

unint64_t sub_1D7B08F00()
{
  result = qword_1EE0BF0F0;
  if (!qword_1EE0BF0F0)
  {
    sub_1D7992EFC(255, &qword_1EE0BF110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BF0F0);
  }

  return result;
}

void sub_1D7B08F68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D7B08FC0()
{
  if (!qword_1EE0BF6C8)
  {
    sub_1D798EA94(255, &qword_1EE0BF6D0, MEMORY[0x1E69B61E8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BF6C8);
    }
  }
}

uint64_t sub_1D7B09054(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D798EA94(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7B090D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D798EA94(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D7B09144(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D7B091F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D7A4E2D8;

  return sub_1D7B05E60(a1, v4, v5, v7, v6);
}

uint64_t sub_1D7B092B4(unint64_t *a1, void (*a2)(uint64_t))
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

char *ArticleNavigationBarMessageContainer.init(defaultView:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_textForArticleMessage] = MEMORY[0x1E69E7CC8];
  v3 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_messageLabel;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v4 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state] = 0;
  *&v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ArticleNavigationBarMessageContainer();
  v5 = a1;
  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView;
  v8 = *&v6[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView];
  v9 = v6;
  [v8 setClipsToBounds_];
  [*&v6[v7] addSubview_];
  [*&v6[v7] addSubview_];
  [v9 addSubview_];

  return v9;
}

id sub_1D7B095D0()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for ArticleNavigationBarMessageContainer();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_messageLabel];
  [v0 bounds];
  [v1 sizeThatFits_];
  v5 = v4;
  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView];
  [v0 bounds];
  [v8 sizeThatFits_];
  [v8 setBounds_];
  v13 = *&v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView];
  [v8 bounds];
  if (v5 > v14)
  {
    v14 = v5;
  }

  [v13 setBounds_];
  [v0 bounds];
  sub_1D7D30FBC();
  [v13 setCenter_];
  [v0 bounds];
  [v0 convertRect:v13 toCoordinateSpace:?];
  sub_1D7D30FBC();
  v16 = v15;
  v18 = v17;
  [v8 setCenter_];
  [v1 setBounds_];
  [v1 setCenter_];
  if (v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state])
  {
    v1 = v8;
  }

  [v1 center];
  [v1 center];
  sub_1D7D3110C();
  return [v1 setCenter_];
}

void sub_1D7B09830()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state;
  if ((v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state] & 1) == 0)
  {
    v3 = objc_opt_self();
    [v3 begin];
    v1[v2] = 1;
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
    v4 = [v1 superview];
    v5 = v4;
    if (v4)
    {
    }

    v6 = v5 != 0;
    v7 = *&v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView];
    v8 = [v7 layer];
    v9 = sub_1D7B09A90(v6);
    [v8 addAnimation:v9 forKey:0];

    v10 = *&v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_messageLabel];
    v11 = [v10 layer];
    v12 = sub_1D7B09C00(v6);
    [v11 addAnimation:v12 forKey:0];

    [v1 bounds];
    [v1 convertRect:*&v1[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView] toCoordinateSpace:?];
    sub_1D7D30FBC();
    v13 = [v7 layer];
    v14 = sub_1D7B0B178(v6);
    [v13 addAnimation:v14 forKey:0];

    v15 = [v10 layer];
    v16 = sub_1D7B0B384(v6);
    [v15 addAnimation:v16 forKey:0];

    [v3 commit];
  }
}

id sub_1D7B09A90(char a1)
{
  v2 = sub_1D7D3031C();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = sub_1D7D28A4C();
  [v3 setFromValue_];

  v5 = sub_1D7D28A4C();
  [v3 setToValue_];

  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v7 = v3;
  LODWORD(v8) = 1050253722;
  LODWORD(v9) = 1062501089;
  LODWORD(v10) = 1062501089;
  v11 = [v6 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v7 setTimingFunction_];

  v12 = 0.3;
  if ((a1 & 1) == 0)
  {
    v12 = 0.0;
  }

  [v7 setDuration_];
  [v7 setFillMode_];

  return v7;
}

id sub_1D7B09C00(char a1)
{
  v2 = sub_1D7D3031C();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = sub_1D7D28A4C();
  [v3 setFromValue_];

  v5 = sub_1D7D28A4C();
  [v3 setToValue_];

  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v7 = v3;
  LODWORD(v8) = 1043207291;
  LODWORD(v9) = 1059816735;
  LODWORD(v10) = 1.0;
  v11 = [v6 initWithControlPoints__:v8 :{0.0, v9, v10}];
  [v7 setTimingFunction_];

  v12 = 0.3;
  if ((a1 & 1) == 0)
  {
    v12 = 0.0;
  }

  [v7 setDuration_];
  [v7 setFillMode_];

  return v7;
}

void sub_1D7B09D70()
{
  v1 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state;
  if (v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state] == 1)
  {
    v2 = objc_opt_self();
    [v2 begin];
    v0[v1] = 0;
    [v0 setNeedsLayout];
    [v0 layoutIfNeeded];
    v3 = *&v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_messageLabel];
    v4 = [v3 layer];
    v5 = sub_1D7B09F84();
    [v4 addAnimation:v5 forKey:0];

    v6 = *&v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView];
    v7 = [v6 layer];
    v8 = sub_1D7B0A0DC();
    [v7 addAnimation:v8 forKey:0];

    [v0 bounds];
    [v0 convertRect:*&v0[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView] toCoordinateSpace:?];
    sub_1D7D30FBC();
    v9 = [v3 layer];
    v10 = sub_1D7B0B594();
    [v9 addAnimation:v10 forKey:0];

    v11 = [v6 layer];
    v12 = sub_1D7B0B75C();
    [v11 addAnimation:v12 forKey:0];

    [v2 commit];
  }
}

id sub_1D7B09F84()
{
  v0 = sub_1D7D3031C();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_1D7D28A4C();
  [v1 setFromValue_];

  v3 = sub_1D7D28A4C();
  [v1 setToValue_];

  v4 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v5 = v1;
  LODWORD(v6) = 1043207291;
  LODWORD(v7) = 1059816735;
  LODWORD(v8) = 1.0;
  v9 = [v4 initWithControlPoints__:v6 :{0.0, v7, v8}];
  [v5 setTimingFunction_];

  [v5 setDuration_];
  [v5 setFillMode_];

  return v5;
}

id sub_1D7B0A0DC()
{
  v0 = sub_1D7D3031C();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_1D7D28A4C();
  [v1 setFromValue_];

  v3 = sub_1D7D28A4C();
  [v1 setToValue_];

  v4 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v5 = v1;
  LODWORD(v6) = 1050253722;
  LODWORD(v7) = 1062501089;
  LODWORD(v8) = 1062501089;
  v9 = [v4 initWithControlPoints__:v6 :{0.0, v7, v8}];
  [v5 setTimingFunction_];

  [v5 setDuration_];
  [v5 setFillMode_];

  return v5;
}

id ArticleNavigationBarMessageContainer.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ArticleNavigationBarMessageContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleNavigationBarMessageContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ArticleNavigationBarMessageContainer.show(_:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 4)
  {
    sub_1D7D3160C();
    __break(1u);
  }

  else
  {
    v3 = v2;
    v6 = [v2 superview];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = v15;
      v17 = v13;
      v18 = v11;
      v19 = v9;
    }

    else
    {
      [v2 bounds];
    }

    Width = CGRectGetWidth(*&v19);
    v21 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_textForArticleMessage;
    swift_beginAccess();
    v22 = *&v3[v21];
    if (*(v22 + 16) && (v23 = sub_1D7A5B898(a1), (v24 & 1) != 0))
    {
      v25 = (*(v22 + 56) + 16 * v23);
      if (Width < 375.0)
      {
        ++v25;
      }

      v26 = *&v3[OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_messageLabel];
      v27 = *v25;
      [v26 setAttributedText_];
      v28 = [v26 text];
      if (!v28 || (v29 = v28, sub_1D7D3034C(), v29, v30 = sub_1D7D3041C(), , v31 = 2.0, v30 >= 30))
      {
        v31 = 2.5;
      }

      sub_1D7B09830();
      v32 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      v34 = type metadata accessor for NotifyOnDeinit();
      v35 = objc_allocWithZone(v34);
      v36 = &v35[OBJC_IVAR____TtC12NewsArticlesP33_C03E0B959E775327989EE4DDE248085F14NotifyOnDeinit_onDeinit];
      *v36 = sub_1D7B0AFCC;
      v36[1] = v33;
      v38.receiver = v35;
      v38.super_class = v34;
      v37 = objc_msgSendSuper2(&v38, sel_init);
      *(a2 + 24) = v34;

      *a2 = v37;
    }

    else
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }
  }
}

uint64_t sub_1D7B0A624()
{

  sub_1D7D28B6C();
}

void sub_1D7B0A688()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D7B09D70();
  }
}

uint64_t ArticleNavigationBarMessageContainer.isTransitioning.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v7 = v1;
  v8 = v6(ObjectType, v4);

  return v8 & 1;
}

void sub_1D7B0A8CC(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v3;
    v10 = v8(ObjectType, v6);
  }

  *a2 = v10 & 1;
}

void sub_1D7B0A990(unsigned __int8 *a1, void *a2)
{
  v3 = *(*a2 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = *a1;
    ObjectType = swift_getObjectType();
    v9 = *(v6 + 16);
    v10 = v3;
    v9(v7, ObjectType, v6);
  }
}

void ArticleNavigationBarMessageContainer.isTransitioning.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = v3;
    v8(a1 & 1, ObjectType, v6);
  }
}

void (*ArticleNavigationBarMessageContainer.isTransitioning.modify(uint64_t a1))(void **a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  *a1 = v3;
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    v9 = v3;
    v10 = v8(ObjectType, v6);
  }

  *(a1 + 8) = v10 & 1;
  return sub_1D7B0AC34;
}

void sub_1D7B0AC34(void **a1)
{
  v2 = (a1 + 1);
  v1 = *a1;
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 16);
    v9 = v1;
    v8(v6, ObjectType, v5);
  }
}

uint64_t sub_1D7B0AD0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v4 = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v7 = v1;
  v8 = v6(ObjectType, v4);

  return v8 & 1;
}

void sub_1D7B0ADB8(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_defaultView);
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);
    v9 = v3;
    v8(a1 & 1, ObjectType, v6);
  }
}

id sub_1D7B0AE94()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC12NewsArticlesP33_C03E0B959E775327989EE4DDE248085F14NotifyOnDeinit_onDeinit];

  v2(v3);

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

unint64_t sub_1D7B0B03C()
{
  result = qword_1EC9E4AC8;
  if (!qword_1EC9E4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4AC8);
  }

  return result;
}

void sub_1D7B0B090()
{
  *(v0 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_textForArticleMessage) = MEMORY[0x1E69E7CC8];
  v1 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_messageLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v2 = OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_clipView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC12NewsArticles36ArticleNavigationBarMessageContainer_state) = 0;
  sub_1D7D3160C();
  __break(1u);
}

id sub_1D7B0B178(char a1)
{
  v2 = sub_1D7D3031C();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = v3;
  v5 = sub_1D7D28A4C();
  [v4 setFromValue_];

  v6 = sub_1D7D28A4C();
  [v4 setToValue_];

  [v4 setMass_];
  [v4 setStiffness_];
  [v4 setDamping_];
  [v4 setInitialVelocity_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v8 = v4;
  LODWORD(v9) = 1036831949;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v8 setTimingFunction_];

  if (a1)
  {
    [v8 settlingDuration];
    [v8 setDuration_];
  }

  else
  {
    [v8 setDuration_];
    LODWORD(v13) = 1176255488;
    [v8 setSpeed_];
  }

  [v8 setFillMode_];

  return v8;
}

id sub_1D7B0B384(char a1)
{
  v2 = sub_1D7D3031C();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = v3;
  v5 = sub_1D7D28A4C();
  [v4 setFromValue_];

  v6 = sub_1D7D28A4C();
  [v4 setToValue_];

  [v4 setMass_];
  [v4 setStiffness_];
  [v4 setDamping_];
  [v4 setInitialVelocity_];
  v7 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v8 = v4;
  LODWORD(v9) = 1036831949;
  LODWORD(v10) = 1.0;
  LODWORD(v11) = 1.0;
  v12 = [v7 initWithControlPoints__:v9 :{0.0, v10, v11}];
  [v8 setTimingFunction_];

  if (a1)
  {
    [v8 settlingDuration];
    [v8 setDuration_];
  }

  else
  {
    [v8 setDuration_];
    LODWORD(v13) = 1176255488;
    [v8 setSpeed_];
  }

  [v8 setFillMode_];

  return v8;
}

id sub_1D7B0B594()
{
  v0 = sub_1D7D3031C();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = v1;
  v3 = sub_1D7D28A4C();
  [v2 setFromValue_];

  v4 = sub_1D7D28A4C();
  [v2 setToValue_];

  [v2 setMass_];
  [v2 setStiffness_];
  [v2 setDamping_];
  [v2 setInitialVelocity_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v6 = v2;
  LODWORD(v7) = 1036831949;
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v7 :{0.0, v8, v9}];
  [v6 setTimingFunction_];

  [v6 settlingDuration];
  [v6 setDuration_];
  [v6 setFillMode_];

  return v6;
}

id sub_1D7B0B75C()
{
  v0 = sub_1D7D3031C();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = v1;
  v3 = sub_1D7D28A4C();
  [v2 setFromValue_];

  v4 = sub_1D7D28A4C();
  [v2 setToValue_];

  [v2 setMass_];
  [v2 setStiffness_];
  [v2 setDamping_];
  [v2 setInitialVelocity_];
  v5 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  v6 = v2;
  LODWORD(v7) = 1036831949;
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  v10 = [v5 initWithControlPoints__:v7 :{0.0, v8, v9}];
  [v6 setTimingFunction_];

  [v6 settlingDuration];
  [v6 setDuration_];
  [v6 setFillMode_];

  return v6;
}

uint64_t sub_1D7B0B954(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_1D7D31B4C();
  v5 = v4;
  swift_beginAccess();
  v6 = *(v1 + 16);
  if (*(v6 + 16) && (v7 = sub_1D7A18FFC(v3, v5), (v8 & 1) != 0))
  {
    sub_1D799CC84(*(v6 + 56) + 40 * v7, v12);
    sub_1D799D69C(v12, v13);
    swift_endAccess();

    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v10 + 8))(a1, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    swift_endAccess();

    sub_1D7B0BAEC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1D7B0BA90()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D7B0BAEC()
{
  result = qword_1EE0BC158;
  if (!qword_1EE0BC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0BC158);
  }

  return result;
}

unint64_t sub_1D7B0BB54()
{
  result = qword_1EC9E4AD0;
  if (!qword_1EC9E4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4AD0);
  }

  return result;
}

void sub_1D7B0BBA8(void *a1)
{
  v3 = OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView;
  v4 = *&v1[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (!a1)
  {
    return;
  }

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v19 = v6;
  [v8 addSubview_];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  [v19 setFrame_];
}

void sub_1D7B0BF30(uint64_t a1, void (*a2)(double, double))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v4 = *&Strong[OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_contentView];
  if (!v4)
  {

LABEL_7:
    a2(0.0, 0.0);
    return;
  }

  v5 = Strong;
  v6 = v4;
  v7 = [v5 view];
  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v9 = [v7 superview];

  if (v9)
  {
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v34.origin.x = v11;
    v34.origin.y = v13;
    v34.size.width = v15;
    v34.size.height = v17;
    Width = CGRectGetWidth(v34);
  }

  else
  {
    Width = 0.0;
  }

  v19 = [v5 view];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = v19;
  [v19 safeAreaInsets];
  v22 = v21;

  v23 = [v5 navigationController];
  v24 = 0.0;
  if (v23)
  {
    v25 = [v23 topViewController];

    if (v25)
    {
      v26 = [v25 view];

      if (v26)
      {
        [v26 safeAreaInsets];
        v24 = v27;

        goto LABEL_14;
      }

LABEL_20:
      __break(1u);
      return;
    }
  }

LABEL_14:
  if (v22 > v24)
  {
    v28 = v22;
  }

  else
  {
    v28 = v24;
  }

  sub_1D7D3102C();
  v30 = v29;
  v32 = v31;
  v33 = &v6[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame];
  swift_beginAccess();
  *v33 = v28;
  *(v33 + 1) = 0;
  *(v33 + 2) = v30;
  *(v33 + 3) = v32;
  [v6 setNeedsLayout];
  (a2)([v6 layoutIfNeeded], Width, 44.0);
}

uint64_t sub_1D7B0C2AC(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D7B0C31C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_1D79D82E8;
}

uint64_t sub_1D7B0C3C0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1D7B0C408(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12NewsArticles34ArticleBottomPaletteViewController_isBeingUsedAsPlugin;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

uint64_t sub_1D7B0C550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a7;
  v12[4] = v10;

  sub_1D7D294EC();
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D7B0C6B8()
{
  sub_1D7D2E5EC();
  sub_1D7D2E5DC();
  sub_1D7AE8404(0);
  sub_1D7D2C7DC();
  if (v3)
  {
    sub_1D7D2DEEC();
    swift_dynamicCast();
  }

  else
  {
    sub_1D79F0014(v2);
  }

  type metadata accessor for EndOfArticleFeedServiceConfig();
  sub_1D7B0C7C8(&qword_1EE0CD120, type metadata accessor for EndOfArticleFeedServiceConfig);
  v0 = sub_1D7D2E5CC();

  return v0;
}

uint64_t sub_1D7B0C7C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D7B0C810(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  swift_beginAccess();
  v1 = off_1F52AD890[0];
  type metadata accessor for ReportConcernService();

  swift_unknownObjectRetain();
  v2 = v1();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_1D7B0C954(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v3 = a2[18] == 0xD000000000000023 && 0x80000001D7D715C0 == a2[19];
  if (v3 || (sub_1D7D3197C() & 1) != 0)
  {
    v4 = *(*__swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]) + 16);
    v5 = [swift_unknownObjectRetain() identifier];
    if (!v5)
    {
      sub_1D7D3034C();
      v5 = sub_1D7D3031C();
    }

    [v4 markArticle:v5 asOffensive:1];
    swift_unknownObjectRelease();
  }

  sub_1D7B0D508(0, &qword_1EC9E4AF8, &type metadata for ConcernModel, MEMORY[0x1E69D6B18]);
  swift_allocObject();

  return sub_1D7D2940C();
}

void sub_1D7B0CAE4()
{
  swift_beginAccess();
  v1 = *(v0 + 144) == 0xD000000000000015 && 0x80000001D7D715F0 == *(v0 + 152);
  if (!v1 && (sub_1D7D3197C() & 1) == 0)
  {
    return;
  }

  sub_1D7A5FE9C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7D3B4E0;
  v3 = [*(v0 + 136) surfacedByTopicID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D7D3034C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = [*(v0 + 136) surfacedBySectionID];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D7D3034C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v65 = inited;
  v13 = [*(v0 + 136) surfacedByArticleListIDs];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D7D3063C();

    v16 = sub_1D7AF9BAC(v15);

    sub_1D79E2B60(v16);
    inited = v65;
  }

  v17 = 0;
  v18 = *(inited + 16);
  v19 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v20 = 16 * v17 + 40;
  while (v18 != v17)
  {
    if (v17 >= *(inited + 16))
    {
      __break(1u);
      goto LABEL_67;
    }

    ++v17;
    v21 = v20 + 16;
    v22 = *(inited + v20);
    v20 += 16;
    if (v22)
    {
      v23 = *(inited + v21 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D79A8020(0, *(v19 + 2) + 1, 1, v19);
      }

      v25 = *(v19 + 2);
      v24 = *(v19 + 3);
      if (v25 >= v24 >> 1)
      {
        v19 = sub_1D79A8020((v24 > 1), v25 + 1, 1, v19);
      }

      *(v19 + 2) = v25 + 1;
      v26 = &v19[16 * v25];
      *(v26 + 4) = v23;
      *(v26 + 5) = v22;
      goto LABEL_15;
    }
  }

  if (!*(v19 + 2) || (, , v27 = *(v0 + 176), (v28 = *(v27 + 16)) == 0))
  {
LABEL_33:

    swift_beginAccess();
    v32 = *(v0 + 176);
    v64 = (v0 + 176);
    v33 = *(v32 + 2);
    if (v33)
    {
      v34 = 0;
      v35 = 0;
      while (1)
      {
        v36 = *&v32[v34 + 32] == 0x4E495F4349504F54 && *&v32[v34 + 40] == 0xEF54434552524F43;
        if (v36 || (sub_1D7D3197C() & 1) != 0)
        {
          break;
        }

        ++v35;
        v34 += 48;
        if (v33 == v35)
        {
          goto LABEL_41;
        }
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_73;
      }

      if (v35 + 1 != v33)
      {
        v42 = v34 + 120;
        v43 = v35 + 1;
        while (1)
        {
          v44 = *(v32 + 2);
          if (v43 >= v44)
          {
            break;
          }

          v45 = &v32[v42];
          v46 = *&v32[v42 - 40] == 0x4E495F4349504F54 && *&v32[v42 - 32] == 0xEF54434552524F43;
          if (!v46 && (sub_1D7D3197C() & 1) == 0)
          {
            if (v43 != v35)
            {
              if (v35 >= v44)
              {
                goto LABEL_70;
              }

              v47 = &v32[48 * v35 + 32];
              v48 = *(v47 + 1);
              v58 = *v47;
              v57 = *(v47 + 2);
              v63 = *(v47 + 3);
              v49 = *(v47 + 5);
              v56 = *(v47 + 4);
              v50 = *(v45 - 4);
              v62 = *(v45 - 5);
              v51 = *&v32[v42 - 16];
              v60 = *&v32[v42 - 24];
              v59 = *&v32[v42 - 8];
              v61 = *&v32[v42];

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v64 = v32;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v32 = sub_1D7BE2AB8(v32);
                *v64 = v32;
              }

              if (v35 >= *(v32 + 2))
              {
                goto LABEL_71;
              }

              v53 = &v32[48 * v35];
              *(v53 + 4) = v62;
              *(v53 + 5) = v50;
              *(v53 + 6) = v60;
              *(v53 + 7) = v51;
              *(v53 + 8) = v59;
              *(v53 + 9) = v61;

              *v64 = v32;
              if (v43 >= *(v32 + 2))
              {
                goto LABEL_72;
              }

              v54 = &v32[v42];
              *(v54 - 5) = v58;
              *(v54 - 4) = v48;
              *(v54 - 3) = v57;
              *(v54 - 2) = v63;
              *(v54 - 1) = v56;
              *v54 = v49;

              *v64 = v32;
            }

            ++v35;
          }

          v55 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_68;
          }

          ++v43;
          v42 += 48;
          if (v55 == *(v32 + 2))
          {
            goto LABEL_44;
          }
        }

LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }
    }

    else
    {
LABEL_41:
      v35 = v33;
    }

LABEL_44:
    v37 = *(v32 + 2);
    if (v37 >= v35)
    {
      sub_1D7B07600(v35, v37);
      swift_endAccess();

      return;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v29 = 0;
  v30 = (v27 + 40);
  while (1)
  {
    v31 = *(v30 - 1) == 0x4E495F4349504F54 && *v30 == 0xEF54434552524F43;
    if (v31 || (sub_1D7D3197C() & 1) != 0)
    {
      break;
    }

    ++v29;
    v30 += 6;
    if (v28 == v29)
    {
      goto LABEL_33;
    }
  }

  MEMORY[0x1EEE9AC00](v38, v39);
  sub_1D7A8CA84();
  sub_1D7D294BC();

  v40 = swift_allocObject();
  *(v40 + 16) = v0;
  *(v40 + 24) = v29;

  v41 = sub_1D7D2934C();
  sub_1D7D293AC();
}

uint64_t sub_1D7B0D1B4(void **a1, uint64_t a2, unint64_t a3)
{
  v7 = *a1;
  swift_beginAccess();
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*(a2 + 176) + 16) > a3)
  {

    v8 = [v7 name];
    sub_1D7D3034C();

    sub_1D79EF194();
    v7 = sub_1D7D3135C();
    v4 = v9;

    swift_beginAccess();
    v3 = *(a2 + 176);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 176) = v3;
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  result = sub_1D7BE2AB8(v3);
  v3 = result;
  *(a2 + 176) = result;
LABEL_4:
  if (*(v3 + 16) <= a3)
  {
    __break(1u);
  }

  else
  {
    v11 = v3 + 48 * a3;
    *(v11 + 48) = v7;
    *(v11 + 56) = v4;
    *(a2 + 176) = v3;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D7B0D348()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7B0D3F4()
{
  sub_1D7D294BC();
  sub_1D7AE6C50();
  v0 = sub_1D7D30E1C();
  v1 = sub_1D7D293BC();

  return v1;
}

void sub_1D7B0D508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t AnalyticsMediaUserAction.hashValue.getter()
{
  v1 = *v0;
  sub_1D7D31A8C();
  MEMORY[0x1DA70F500](v1);
  return sub_1D7D31ABC();
}

unint64_t sub_1D7B0D668()
{
  result = qword_1EC9E4B00;
  if (!qword_1EC9E4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4B00);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NewsArticles42BarButtonItemArticleViewerFeatureViewModelVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D7B0D700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D7B0D748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7B0D7B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1D7B0D804(unint64_t a1, void (*a2)(void), uint64_t a3, double a4, double a5)
{
  v10 = [objc_opt_self() areAnimationsEnabled];
  v11 = a1 >> 62;
  if (!v10)
  {
    if (v11)
    {
      v17 = sub_1D7D3167C();
      if (v17)
      {
LABEL_14:
        v18 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1DA70EF00](v18, a1);
          }

          else
          {
            if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v19 = *(a1 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_23;
          }

          [v19 setAlpha_];

          ++v18;
        }

        while (v21 != v17);
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_14;
      }
    }

    if (a2)
    {
      a2();
    }

    return;
  }

  if (v11)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v13 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA70EF00](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setAlpha_];

      ++v13;
      if (v16 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.75, 1.0}];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v22 timingParameters:a4];
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v32 = sub_1D7B10DF4;
  v33 = v24;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D79FE25C;
  v31 = &block_descriptor_18;
  v25 = _Block_copy(&v28);

  [v23 addAnimations_];
  _Block_release(v25);
  [v23 startAnimationAfterDelay_];
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v32 = sub_1D7B10E14;
  v33 = v26;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D7B0D7B0;
  v31 = &block_descriptor_6_1;
  v27 = _Block_copy(&v28);
  sub_1D7A7DE40(a2);

  [v23 addCompletion_];
  _Block_release(v27);
}

void sub_1D7B0DB88(unint64_t a1, void (*a2)(void), uint64_t a3, double a4, double a5)
{
  v10 = [objc_opt_self() areAnimationsEnabled];
  v11 = a1 >> 62;
  if (!v10)
  {
    if (v11)
    {
      v17 = sub_1D7D3167C();
      if (v17)
      {
LABEL_14:
        v18 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1DA70EF00](v18, a1);
          }

          else
          {
            if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v19 = *(a1 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_23;
          }

          [v19 setAlpha_];

          ++v18;
        }

        while (v21 != v17);
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_14;
      }
    }

    if (a2)
    {
      a2();
    }

    return;
  }

  if (v11)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v13 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1DA70EF00](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setAlpha_];

      ++v13;
      if (v16 == i)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:
  v22 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.75, 1.0}];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v22 timingParameters:a4];
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v32 = sub_1D7B10FC8;
  v33 = v24;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D79FE25C;
  v31 = &block_descriptor_28_0;
  v25 = _Block_copy(&v28);

  [v23 addAnimations_];
  _Block_release(v25);
  [v23 startAnimationAfterDelay_];
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  v32 = sub_1D7B10FD8;
  v33 = v26;
  v28 = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = sub_1D7B0D7B0;
  v31 = &block_descriptor_35;
  v27 = _Block_copy(&v28);
  sub_1D7A7DE40(a2);

  [v23 addCompletion_];
  _Block_release(v27);
}

void sub_1D7B0DF0C(unint64_t a1, void (*a2)(void), uint64_t a3, double a4, double a5)
{
  if ([objc_opt_self() areAnimationsEnabled])
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.25 controlPoint2:{0.1, 0.75, 1.0}];
    v11 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v10 timingParameters:a4];
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v25 = sub_1D7B10E9C;
    v26 = v12;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1D79FE25C;
    v24 = &block_descriptor_15_0;
    v13 = _Block_copy(&v21);

    [v11 addAnimations_];
    _Block_release(v13);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    v25 = sub_1D7B10E14;
    v26 = v14;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1D7B0D7B0;
    v24 = &block_descriptor_21_0;
    v15 = _Block_copy(&v21);
    sub_1D7A7DE40(a2);

    [v11 addCompletion_];
    _Block_release(v15);
    [v11 startAnimationAfterDelay_];
  }

  else
  {
    if (a1 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
    {
      v17 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1DA70EF00](v17, a1);
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v18 = *(a1 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v18 setAlpha_];

        ++v17;
        if (v20 == i)
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
    if (a2)
    {
      a2();
    }
  }
}

uint64_t sub_1D7B0E1F4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  v7 = 16 * v2 + 24;
  v19 = v2 >> 1;
  while (1)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 2);
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v3 + 32];
    v11 = *&v1[v3 + 40];
    v14 = *&v1[v7 - 8];
    v13 = *&v1[v7];

    v15 = v12;

    v16 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1D7BE2ACC(v1);
    }

    v17 = &v1[v3];
    v18 = *&v1[v3 + 32];
    *(v17 + 4) = v16;
    *(v17 + 5) = v13;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[v7];
    v9 = *&v1[v7 - 8];
    *(v8 - 1) = v15;
    *v8 = v11;

    v5 = v19;
LABEL_5:
    ++v4;
    --v6;
    v7 -= 16;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1D7B0E33C()
{
  v175 = *(v0 + 24);
  v177 = *(v0 + 40);
  v178 = *(v0 + 16);
  v186 = *(v0 + 48);
  j = *(v0 + 56);
  v179 = *(v0 + 80);
  v2 = sub_1D7D30D8C();
  v3 = [v2 leftBarButtonItems];

  if (v3)
  {
    sub_1D7992EFC(0, &qword_1EE0BF050);
    v4 = sub_1D7D3063C();

    if (v4 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
    {
      j = 0;
      v185 = MEMORY[0x1E69E7CC0];
      v6 = MEMORY[0x1E69E7CC8];
      v180 = i;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA70EF00](j, v4);
        }

        else
        {
          if (j >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v7 = *(v4 + 8 * j + 32);
        }

        v8 = v7;
        v9 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v10 = [v7 identifier];
        if (v10)
        {
          v11 = v10;
          v12 = sub_1D7D3034C();
          v14 = v13;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v185 = sub_1D79A8020(0, *(v185 + 2) + 1, 1, v185);
          }

          v16 = *(v185 + 2);
          v15 = *(v185 + 3);
          if (v16 >= v15 >> 1)
          {
            v185 = sub_1D79A8020((v15 > 1), v16 + 1, 1, v185);
          }

          *(v185 + 2) = v16 + 1;
          v17 = &v185[16 * v16];
          *(v17 + 4) = v12;
          *(v17 + 5) = v14;
          v18 = v8;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v188 = v6;
          v20 = sub_1D7A18FFC(v12, v14);
          v22 = v6;
          v23 = v20;
          v24 = *(v22 + 16);
          v25 = (v21 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_31;
          }

          v27 = v21;
          if (*(v22 + 24) >= v26)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v21 & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            else
            {
              sub_1D7B97294();
              if ((v27 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            sub_1D7B91D34(v26, isUniquelyReferenced_nonNull_native);
            v28 = sub_1D7A18FFC(v12, v14);
            if ((v27 & 1) != (v29 & 1))
            {
              goto LABEL_190;
            }

            v23 = v28;
            if ((v27 & 1) == 0)
            {
LABEL_26:
              v188[(v23 >> 6) + 8] |= 1 << v23;
              v32 = (v188[6] + 16 * v23);
              *v32 = v12;
              v32[1] = v14;
              *(v188[7] + 8 * v23) = v18;
              v6 = v188;

              v33 = v188[2];
              v34 = __OFADD__(v33, 1);
              v35 = v33 + 1;
              if (v34)
              {
                goto LABEL_33;
              }

              v188[2] = v35;
              goto LABEL_28;
            }
          }

          v30 = v188[7];
          v31 = *(v30 + 8 * v23);
          *(v30 + 8 * v23) = v18;
          v6 = v188;

LABEL_28:
          i = v180;
          goto LABEL_6;
        }

LABEL_6:
        ++j;
        if (v9 == i)
        {
          goto LABEL_36;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v185 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC8];
LABEL_36:
  }

  else
  {
    v185 = MEMORY[0x1E69E7CC0];
    v6 = MEMORY[0x1E69E7CC8];
  }

  v36 = sub_1D7D30D8C();
  v37 = [v36 rightBarButtonItems];

  if (v37)
  {
    sub_1D7992EFC(0, &qword_1EE0BF050);
    v38 = sub_1D7D3063C();

    if (v38 >> 62)
    {
      goto LABEL_68;
    }

    for (j = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D7D3167C())
    {
      v39 = 0;
      v184 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v40 = MEMORY[0x1DA70EF00](v39, v38);
        }

        else
        {
          if (v39 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_66;
          }

          v40 = *(v38 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v43 = [v40 identifier];
        if (!v43)
        {

          goto LABEL_42;
        }

        v44 = v43;
        v45 = sub_1D7D3034C();
        v47 = v46;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_1D79A8020(0, *(v184 + 2) + 1, 1, v184);
        }

        v49 = *(v184 + 2);
        v48 = *(v184 + 3);
        if (v49 >= v48 >> 1)
        {
          v184 = sub_1D79A8020((v48 > 1), v49 + 1, 1, v184);
        }

        *(v184 + 2) = v49 + 1;
        v50 = &v184[16 * v49];
        *(v50 + 4) = v45;
        *(v50 + 5) = v47;
        v51 = v41;
        v52 = v6;
        v6 = swift_isUniquelyReferenced_nonNull_native();
        v189 = v52;
        v53 = sub_1D7A18FFC(v45, v47);
        v55 = v52[2];
        v56 = (v54 & 1) == 0;
        v34 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v34)
        {
          goto LABEL_65;
        }

        v58 = v54;
        if (v52[3] >= v57)
        {
          if ((v6 & 1) == 0)
          {
            v63 = v53;
            sub_1D7B97294();
            v53 = v63;
            if (v58)
            {
LABEL_59:
              v60 = v53;

              v6 = v189;
              v61 = v189[7];
              v62 = *(v61 + 8 * v60);
              *(v61 + 8 * v60) = v51;

              goto LABEL_42;
            }

            goto LABEL_61;
          }
        }

        else
        {
          sub_1D7B91D34(v57, v6);
          v53 = sub_1D7A18FFC(v45, v47);
          if ((v58 & 1) != (v59 & 1))
          {
            goto LABEL_190;
          }
        }

        if (v58)
        {
          goto LABEL_59;
        }

LABEL_61:
        v6 = v52;
        v52[(v53 >> 6) + 8] |= 1 << v53;
        v64 = (v52[6] + 16 * v53);
        *v64 = v45;
        v64[1] = v47;
        *(v52[7] + 8 * v53) = v51;

        v65 = v52[2];
        v34 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v34)
        {
          goto LABEL_67;
        }

        v52[2] = v66;
LABEL_42:
        ++v39;
        if (v42 == j)
        {
          goto LABEL_70;
        }
      }

      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      ;
    }

    v184 = MEMORY[0x1E69E7CC0];
LABEL_70:
  }

  else
  {
    v184 = MEMORY[0x1E69E7CC0];
  }

  v67 = v179;
  if (v178)
  {
    v68 = *(v175 + 16);
    if (v68)
    {
      sub_1D7A1EE44(v178);

      v69 = (v175 + 40);
      do
      {
        v70 = *(v69 - 1);
        j = *v69;

        v71 = v70;
        v72 = [v71 identifier];
        if (v72)
        {
          v73 = v72;
          v74 = sub_1D7D3034C();
          v76 = v75;

          v77 = sub_1D7A18FFC(v74, v76);
          LOBYTE(v73) = v78;

          if (v73)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1D7B97294();
            }

            sub_1D7B9A108(v77, v6);
          }
        }

        v69 += 2;
        --v68;
      }

      while (v68);
      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v67 = v179;
    }
  }

  if (!v177 || (v181 = *(v186 + 16)) == 0)
  {
    v176 = MEMORY[0x1E69E7CC8];
LABEL_111:
    if (!v67[2])
    {

      return;
    }

    v120 = v67[6];
    v119 = v67[7];

    v82 = sub_1D7A4EE14(v6, v120);
    v121 = sub_1D7A4EE14(v6, v119);

    v122 = sub_1D7B0FECC(v121);

    v186 = v122;
    sub_1D79E2C7C(v123);
    j = v82;
    if (v82 >> 62)
    {
      goto LABEL_134;
    }

    v124 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v124)
    {
      goto LABEL_118;
    }

LABEL_135:

    if (v82 >> 62)
    {
LABEL_155:
      v135 = sub_1D7D3167C();
      if (v135)
      {
LABEL_137:
        v136 = 0;
        v137 = MEMORY[0x1E69E7CC0];
        do
        {
          v138 = v136;
          while (1)
          {
            if ((v82 & 0xC000000000000001) != 0)
            {
              v139 = MEMORY[0x1DA70EF00](v138, v82);
            }

            else
            {
              if (v138 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_154;
              }

              v139 = *(v82 + 8 * v138 + 32);
            }

            v140 = v139;
            v136 = v138 + 1;
            if (__OFADD__(v138, 1))
            {
              __break(1u);
LABEL_154:
              __break(1u);
              goto LABEL_155;
            }

            v141 = [v139 identifier];
            if (v141)
            {
              break;
            }

            ++v138;
            if (v136 == v135)
            {
              goto LABEL_157;
            }
          }

          v142 = v141;
          v143 = sub_1D7D3034C();
          v182 = v144;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_1D79A8020(0, *(v137 + 2) + 1, 1, v137);
          }

          v146 = *(v137 + 2);
          v145 = *(v137 + 3);
          if (v146 >= v145 >> 1)
          {
            v137 = sub_1D79A8020((v145 > 1), v146 + 1, 1, v137);
          }

          *(v137 + 2) = v146 + 1;
          v147 = &v137[16 * v146];
          *(v147 + 4) = v143;
          *(v147 + 5) = v182;
        }

        while (v136 != v135);
LABEL_157:
        v148 = sub_1D7D30D8C();
        [v148 setLeftItemsSupplementBackButton_];

        v149 = sub_1D7D30D8C();
        v150 = sub_1D7992EFC(0, &qword_1EE0BF050);
        v151 = sub_1D7D3062C();

        v152 = objc_opt_self();
        if ([v152 areAnimationsEnabled])
        {
          v153 = sub_1D7A59788(v185, v137);

          v154 = v153 ^ 1;
        }

        else
        {

          v154 = 0;
        }

        v155 = v186;
        [v149 setLeftBarButtonItems:v151 animated:v154 & 1];

        if ((v186 & 0x8000000000000000) != 0 || (v186 & 0x4000000000000000) != 0)
        {
LABEL_181:
          v156 = sub_1D7D3167C();
          if (v156)
          {
LABEL_163:
            v157 = 0;
            v158 = v155 & 0xC000000000000001;
            v159 = MEMORY[0x1E69E7CC0];
            do
            {
              v160 = v157;
              while (1)
              {
                if (v158)
                {
                  v161 = MEMORY[0x1DA70EF00](v160, v155);
                }

                else
                {
                  if (v160 >= *(v155 + 16))
                  {
                    goto LABEL_180;
                  }

                  v161 = *(v155 + 8 * v160 + 32);
                }

                v162 = v161;
                v157 = v160 + 1;
                if (__OFADD__(v160, 1))
                {
                  __break(1u);
LABEL_180:
                  __break(1u);
                  goto LABEL_181;
                }

                v163 = [v161 identifier];
                if (v163)
                {
                  break;
                }

                ++v160;
                v155 = v186;
                if (v157 == v156)
                {
                  goto LABEL_183;
                }
              }

              v164 = v163;
              v183 = v152;
              v165 = v150;
              v166 = sub_1D7D3034C();
              v168 = v167;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v159 = sub_1D79A8020(0, *(v159 + 2) + 1, 1, v159);
              }

              v170 = *(v159 + 2);
              v169 = *(v159 + 3);
              if (v170 >= v169 >> 1)
              {
                v159 = sub_1D79A8020((v169 > 1), v170 + 1, 1, v159);
              }

              *(v159 + 2) = v170 + 1;
              v171 = &v159[16 * v170];
              *(v171 + 4) = v166;
              *(v171 + 5) = v168;
              v155 = v186;
              v150 = v165;
              v152 = v183;
            }

            while (v157 != v156);
            goto LABEL_183;
          }
        }

        else
        {
          v156 = *(v186 + 16);
          if (v156)
          {
            goto LABEL_163;
          }
        }

        v159 = MEMORY[0x1E69E7CC0];
LABEL_183:
        v172 = sub_1D7D30D8C();
        v187 = sub_1D7D3062C();

        if ([v152 areAnimationsEnabled])
        {
          v173 = sub_1D7A59788(v184, v159);

          v174 = v173 ^ 1;
        }

        else
        {

          v174 = 0;
        }

        [v172 setRightBarButtonItems:v187 animated:v174 & 1];

        return;
      }
    }

    else
    {
      v135 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v135)
      {
        goto LABEL_137;
      }
    }

    v137 = MEMORY[0x1E69E7CC0];
    goto LABEL_157;
  }

  v79 = v6;
  sub_1D7A1EE44(v177);

  v80 = v186;
  v81 = 0;
  v82 = v186 + 40;
  v176 = MEMORY[0x1E69E7CC8];
  while (v81 < v80[2])
  {
    v84 = *(v82 - 8);
    v83 = *v82;

    j = sel_identifier;
    v85 = v84;
    v86 = [v85 identifier];
    if (!v86)
    {

      goto LABEL_85;
    }

    v87 = v86;
    v88 = sub_1D7D3034C();
    v90 = v89;

    j = v85;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v190 = v79;
    v92 = sub_1D7A18FFC(v88, v90);
    v94 = v79[2];
    v95 = (v93 & 1) == 0;
    v34 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v34)
    {
      goto LABEL_130;
    }

    v97 = v93;
    if (v79[3] < v96)
    {
      sub_1D7B91D34(v96, v91);
      v92 = sub_1D7A18FFC(v88, v90);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_190;
      }

LABEL_93:
      v99 = v79;
      if (v97)
      {
        goto LABEL_94;
      }

      goto LABEL_103;
    }

    if (v91)
    {
      goto LABEL_93;
    }

    v111 = v92;
    sub_1D7B97294();
    v92 = v111;
    v99 = v190;
    if (v97)
    {
LABEL_94:
      v79 = v99;
      v100 = v99[7];
      v101 = *(v100 + 8 * v92);
      *(v100 + 8 * v92) = j;

      if (!v83)
      {
        goto LABEL_105;
      }

      goto LABEL_95;
    }

LABEL_103:
    v99[(v92 >> 6) + 8] |= 1 << v92;
    v112 = (v99[6] + 16 * v92);
    *v112 = v88;
    v112[1] = v90;
    *(v99[7] + 8 * v92) = j;
    v113 = v99[2];
    v34 = __OFADD__(v113, 1);
    v114 = v113 + 1;
    if (v34)
    {
      goto LABEL_132;
    }

    v79 = v99;
    v99[2] = v114;

    if (!v83)
    {
LABEL_105:

      goto LABEL_85;
    }

LABEL_95:

    sub_1D7D2A65C();

    v102 = swift_isUniquelyReferenced_nonNull_native();
    v103 = sub_1D7A18FFC(v88, v90);
    v105 = v176[2];
    v106 = (v104 & 1) == 0;
    v34 = __OFADD__(v105, v106);
    v107 = v105 + v106;
    if (v34)
    {
      goto LABEL_131;
    }

    v108 = v104;
    if (v176[3] >= v107)
    {
      if ((v102 & 1) == 0)
      {
        v115 = v103;
        sub_1D7B97274();
        v103 = v115;
        if (v108)
        {
LABEL_101:
          v110 = v103;

          *(v176[7] + 8 * v110) = v83;

          goto LABEL_85;
        }

        goto LABEL_107;
      }
    }

    else
    {
      sub_1D7B91D14(v107, v102);
      v103 = sub_1D7A18FFC(v88, v90);
      if ((v108 & 1) != (v109 & 1))
      {
        goto LABEL_190;
      }
    }

    if (v108)
    {
      goto LABEL_101;
    }

LABEL_107:
    v176[(v103 >> 6) + 8] |= 1 << v103;
    v116 = (v176[6] + 16 * v103);
    *v116 = v88;
    v116[1] = v90;
    *(v176[7] + 8 * v103) = v83;

    v117 = v176[2];
    v34 = __OFADD__(v117, 1);
    v118 = v117 + 1;
    if (v34)
    {
      goto LABEL_133;
    }

    v176[2] = v118;
LABEL_85:
    v80 = v186;
    ++v81;
    v82 += 16;
    if (v181 == v81)
    {
      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
      v6 = v79;
      v67 = v179;
      goto LABEL_111;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  v124 = sub_1D7D3167C();
  if (!v124)
  {
    goto LABEL_135;
  }

LABEL_118:
  if (v124 >= 1)
  {
    for (k = 0; k != v124; ++k)
    {
      if ((j & 0xC000000000000001) != 0)
      {
        v126 = MEMORY[0x1DA70EF00](k, j);
      }

      else
      {
        v126 = *(j + 8 * k + 32);
      }

      v127 = v126;
      v128 = [v126 identifier];
      if (v128)
      {
        v129 = v128;
        v130 = sub_1D7D3034C();
        v132 = v131;

        if (v176[2])
        {
          sub_1D7A18FFC(v130, v132);
          v134 = v133;

          if (v134)
          {

            sub_1D7D2A65C();
          }
        }

        else
        {
        }
      }
    }

    goto LABEL_135;
  }

  __break(1u);
LABEL_190:
  sub_1D7D31A2C();
  __break(1u);
}

uint64_t sub_1D7B0F638(uint64_t result)
{
  v2 = result;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  if (v4)
  {
    if (!v7)
    {
      sub_1D7A1EE44(v4);
      sub_1D7B10ABC(v2);
      v9 = v4;
      return sub_1D7A1EE84(v9);
    }

    sub_1D7A1EE44(v7);
    sub_1D7A1EE44(v4);
    sub_1D7B0F884(v4, v3, v5 & 1, v7, v6, v8 & 1, v2);
    sub_1D7A1EE84(v4);
  }

  else
  {
    if (!v7)
    {
      return result;
    }

    sub_1D7A1EE44(v7);
    sub_1D7B108EC(v6, v2);
  }

  v9 = v7;
  return sub_1D7A1EE84(v9);
}

void sub_1D7B0F808(uint64_t a1)
{
  if (sub_1D7D2DB0C())
  {
    sub_1D7B0E33C();
  }

  else
  {
    sub_1D7B0F638(a1);
  }
}

void sub_1D7B0F884(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void *a7)
{
  v11 = [a1 identifier];
  v12 = sub_1D7D3034C();
  v14 = v13;

  v15 = [a4 identifier];
  v16 = sub_1D7D3034C();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {
  }

  else
  {
    v20 = sub_1D7D3197C();

    if ((v20 & 1) == 0)
    {
LABEL_13:
      sub_1D7B0FB04(a7);
      sub_1D7B104A8(a5, a7);
      return;
    }
  }

  if (*(a2 + 16) != *(a5 + 16) || (a6 & 1) != 0)
  {
    goto LABEL_13;
  }

  v21 = sub_1D7D30D8C();
  v22 = sub_1D7D30D2C();

  if (v22 == 2)
  {
    return;
  }

  v23 = sub_1D7D30D8C();
  sub_1D7D30D0C();

  if (sub_1D7D2DB0C())
  {
    v24 = sub_1D7D30D8C();
    [v24 setLeftItemsSupplementBackButton_];

    v25 = sub_1D7D30D8C();
  }

  else
  {
    v26 = [a7 traitCollection];
    v27 = [v26 horizontalSizeClass];

    v28 = 4.0;
    if (v27 == 2)
    {
      v28 = 16.0;
    }

    Array<A>.fixSpacing(spaceWidth:)(v28);
    if ((v29 & 1) == 0)
    {
      goto LABEL_19;
    }

    v25 = sub_1D7D30D8C();
  }

  sub_1D7D30D1C();

LABEL_19:
}

uint64_t sub_1D7B0FB04(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = sub_1D7D30D8C();
  v6 = sub_1D7D30D2C();

  if (v6 == 2)
  {
    if (qword_1EE0CAF08 != -1)
    {
      swift_once();
    }

    v7 = qword_1EE0CAF10;
    v8 = sub_1D7D30C6C();
    result = os_log_type_enabled(v7, v8);
    if (result)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1D7B06D4C(v3, v4, &v19);
      _os_log_impl(&dword_1D7987000, v7, v8, "Unable to find a navigation item associated with the feature ID %s.  Removal of this feature will fail.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1DA7102E0](v11, -1, -1);
      return MEMORY[0x1DA7102E0](v10, -1, -1);
    }
  }

  else
  {
    v12 = sub_1D7D30D8C();
    v13 = sub_1D7D30D0C();

    v19 = v13;
    sub_1D7B10EA4();
    sub_1D7D3075C();
    if ((sub_1D7D2DB0C() & 1) == 0)
    {
      v14 = [a1 traitCollection];
      v15 = [v14 horizontalSizeClass];

      v16 = 4.0;
      if (v15 == 2)
      {
        v16 = 16.0;
      }

      Array<A>.fixSpacing(spaceWidth:)(v16);
    }

    v17 = sub_1D7D30D8C();
    [v17 setLeftItemsSupplementBackButton_];

    v18 = sub_1D7D30D8C();
    sub_1D7D30D1C();
  }

  return result;
}

void *sub_1D7B0FD24(uint64_t a1, uint64_t a2)
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

  sub_1D79EB1FC();
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

void sub_1D7B0FDDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1D7992EFC(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D79EB1FC();
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1D7B0FECC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D7B0FD24(v2, 0);

    v1 = sub_1D7B10384(&v5, v3 + 4, v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1D7D3167C();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1D7B0FF78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1D7B10F0C();
      v7 = *(_s15ArticleProviderOMa() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        _s15ArticleProviderOMa();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D7B10120(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_1D798C3BC(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D79EB1FC();
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D7B10210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for EndOfArticleHeadlineModel();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1D79EB1FC();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1D7B102E8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1D7B0FD24(v2, 0);

    MEMORY[0x1DA70EED0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_1D7D3167C();
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

uint64_t sub_1D7B10384(uint64_t result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_1D7D3167C();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1DA70EF00](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7B104A8(uint64_t a1, void *a2)
{
  v4 = v2[8];
  v5 = v2[9];
  v6 = BarButtonOrder.location(for:)(*v2, v2[1]);
  v8 = v7;

  if (v6 == 2)
  {
    return result;
  }

  v47 = a2;
  v10 = sub_1D7D30D8C();
  sub_1D7D30D0C();

  v11 = v8 - 1;
  if (v8 < 1)
  {
    v25 = 0;
    v5 = a1;
    v28 = v6;
  }

  else
  {
    v46 = v6;
    if (v6)
    {
      v12 = v5;
    }

    else
    {
      v12 = v4;
    }

    v13 = *(v12 + 16);

    v45 = v8;
    if (v8 > v13)
    {
LABEL_41:
      __break(1u);
LABEL_42:

      v25 = 0;
      v28 = v46;
      goto LABEL_24;
    }

    sub_1D7992EFC(0, &qword_1EE0BF050);

    v5 = sub_1D7D3074C();
    v15 = v14;

    if (v15)
    {
      v16 = v8;
      v17 = v12 + 16 * v8;
      if (v8 != 1)
      {
        v44 = v12 + 16 * v8;
        v18 = v17 + 8;
        while (1)
        {
          v13 = *(v12 + 16);
          if (v11 > v13)
          {
            goto LABEL_41;
          }

          v5 = sub_1D7D3074C();
          v20 = v19;

          if ((v20 & 1) == 0)
          {
            goto LABEL_21;
          }

          v18 -= 16;
          if (!--v11)
          {
            v17 = v44;
            v16 = v45;
            break;
          }
        }
      }

      v21 = v16 + 1;
      v5 = a1;
      if (!__OFADD__(v16, 1))
      {
        if (v13 >= v21)
        {
          v22 = v17 + 56;
          v23 = v13 - v16;
          while (--v23)
          {
            if (v21 < 0)
            {
              goto LABEL_44;
            }

            v24 = v22 + 16;

            v25 = sub_1D7D3073C();
            v27 = v26;

            v22 = v24;
            v5 = a1;
            if ((v27 & 1) == 0)
            {

              v28 = v46;
              goto LABEL_24;
            }
          }

          goto LABEL_42;
        }

LABEL_46:
        __break(1u);
        return result;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_21:

    v25 = v5 + 1;
    v28 = v46;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = a1;
  }

LABEL_24:

  if (v28)
  {
    v5 = sub_1D7B0E1F4(v5);
  }

  v29 = *(v5 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  if (v29)
  {
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D7D3156C();
    v31 = (v5 + 32);
    do
    {
      v32 = *v31;
      v31 += 2;
      v33 = v32;
      sub_1D7D3153C();
      sub_1D7D3157C();
      sub_1D7D3158C();
      sub_1D7D3154C();
      --v29;
    }

    while (v29);
    v30 = v49;
  }

  sub_1D7B08738(v25, v25, v30);

  if ((sub_1D7D2DB0C() & 1) == 0)
  {
    v34 = [v47 traitCollection];
    v35 = [v34 horizontalSizeClass];

    v36 = 4.0;
    if (v35 == 2)
    {
      v36 = 16.0;
    }

    Array<A>.fixSpacing(spaceWidth:)(v36);
  }

  v37 = sub_1D7D30D8C();
  [v37 setLeftItemsSupplementBackButton_];

  v38 = sub_1D7D30D8C();
  sub_1D7D30D1C();

  v39 = *(v5 + 16);
  if (v39)
  {
    v40 = (v5 + 40);
    v41 = (v5 + 40);
    do
    {
      v42 = *v41;
      v41 += 2;
      if (v42)
      {
        v43 = *(v40 - 1);
        swift_retain_n();
        sub_1D7D2A65C();
      }

      v40 = v41;
      --v39;
    }

    while (v39);
  }
}

id sub_1D7B108EC(uint64_t a1, void *a2)
{
  v18 = v2[2];
  v19 = v2[3];
  v20 = v2[4];
  v21 = v2[5];
  v16 = *v2;
  v17 = v2[1];
  result = sub_1D7B104A8(a1, a2);
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *&v16 = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 16);
  v8 = a1 + 32;
LABEL_2:
  v9 = (v8 + 16 * v5);
  while (v7 != v5)
  {
    if (v5 >= v7)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_19;
    }

    v11 = *v9;
    v9 += 2;
    result = [v11 ts_barButtonItemView];
    ++v5;
    if (result)
    {
      MEMORY[0x1DA70E080]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
      }

      result = sub_1D7D3072C();
      v6 = v16;
      v5 = v10;
      goto LABEL_2;
    }
  }

  if (!(v6 >> 62))
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

LABEL_20:
  result = sub_1D7D3167C();
  v12 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (v12 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1DA70EF00](i, v6);
    }

    else
    {
      v14 = *(v6 + 8 * i + 32);
    }

    v15 = v14;
    [v14 setAlpha_];
  }

LABEL_21:
  sub_1D7B0D804(v6, 0, 0, 0.25, 0.0);
}

uint64_t sub_1D7B10ABC(void *a1)
{
  v3 = v1[3];
  v29 = v1[2];
  v30 = v3;
  v4 = v1[5];
  v31 = v1[4];
  v32 = v4;
  v5 = v1[1];
  v27 = *v1;
  v28 = v5;
  v6 = sub_1D7D30D8C();
  v7 = sub_1D7D30CFC();

  if (v7 >> 62)
  {
LABEL_28:
    if (sub_1D7D3167C())
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:

    v8 = sub_1D7D30D8C();
    v7 = sub_1D7D30CFC();
  }

LABEL_4:
  v25 = a1;
  v26[0] = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v9 = sub_1D7D3167C();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA70EF00](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    a1 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v14 = [v12 ts_barButtonItemView];

    ++v10;
    if (v14)
    {
      MEMORY[0x1DA70E080]();
      if (*((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7D306DC();
      }

      sub_1D7D3072C();
      v11 = v26[0];
      v10 = a1;
    }
  }

  if (v11 >> 62)
  {
    result = sub_1D7D3167C();
    v16 = result;
    if (result)
    {
LABEL_19:
      if (v16 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v16; ++i)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1DA70EF00](i, v11);
          }

          else
          {
            v18 = *(v11 + 8 * i + 32);
          }

          v19 = v18;
          [v18 setAlpha_];
        }

        v20 = swift_allocObject();
        v21 = v30;
        *(v20 + 48) = v29;
        *(v20 + 64) = v21;
        v22 = v32;
        *(v20 + 80) = v31;
        *(v20 + 96) = v22;
        v23 = v28;
        *(v20 + 16) = v27;
        *(v20 + 32) = v23;
        *(v20 + 112) = v25;
        sub_1D7B10E64(&v27, v26);
        v24 = v25;
        sub_1D7B0DF0C(v11, sub_1D7B10E1C, v20, 0.15, 0.0);
      }

      return result;
    }
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_19;
    }
  }
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7B10EA4()
{
  if (!qword_1EE0BF1F0)
  {
    sub_1D7992EFC(255, &qword_1EE0BF050);
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF1F0);
    }
  }
}

void sub_1D7B10F0C()
{
  if (!qword_1EE0BEA30)
  {
    _s15ArticleProviderOMa();
    v0 = sub_1D7D3191C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEA30);
    }
  }
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL SharedArticleViewerFeatureDescriptor.shouldShow(for:featureUpdateOptions:)(uint64_t a1)
{
  sub_1D7B12CD8(0, &qword_1EE0BF750, MEMORY[0x1E69B6038], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  if ((sub_1D7D2F9CC() & 1) == 0)
  {
    return 0;
  }

  sub_1D7B12C70(a1, v10, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 3)
  {
    sub_1D7B112C4(v10, type metadata accessor for ArticleViewerPage);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v10[*(v17 + 48)], *&v10[*(v17 + 48) + 8], *&v10[*(v17 + 48) + 16]);
  }

  sub_1D7A087BC(v10, v14, type metadata accessor for ArticleViewerArticlePage);
  v18 = *(v14 + 2);
  swift_unknownObjectRetain();
  sub_1D7B112C4(v14, type metadata accessor for ArticleViewerArticlePage);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  v19 = [v18 articleID];
  sub_1D7D3034C();

  sub_1D7D2F84C();

  swift_unknownObjectRelease();
  v20 = sub_1D7D2EECC();
  v21 = (*(*(v20 - 8) + 48))(v6, 1, v20) != 1;
  sub_1D7B11324(v6);
  return v21;
}

uint64_t sub_1D7B112C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7B11324(uint64_t a1)
{
  sub_1D7B12CD8(0, &qword_1EE0BF750, MEMORY[0x1E69B6038], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7B113B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a2;
  v8 = type metadata accessor for BottomPaletteFeatureContext();
  v9 = v8 - 8;
  v73 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v74 = v11;
  v75 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B12CD8(0, &qword_1EE0BF750, MEMORY[0x1E69B6038], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v67 - v14;
  v78 = sub_1D7D2EECC();
  v16 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v17);
  v72 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v70 = &v67 - v21;
  v22 = type metadata accessor for ArticleViewerPage(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ArticleViewerArticlePage(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = (&v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7B12C70(a1 + *(v9 + 28), v25, type metadata accessor for ArticleViewerPage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v68 = a1;
    if (EnumCaseMultiPayload)
    {
      v69 = a3;
      v41 = *(v25 + 3);
      *&v80[32] = *(v25 + 2);
      *&v80[48] = v41;
      v42 = *(v25 + 5);
      v81 = *(v25 + 4);
      v82 = v42;
      v43 = *(v25 + 1);
      *v80 = *v25;
      *&v80[16] = v43;
      sub_1D79F5B54(v80, v79);
      sub_1D7A1EF80(v80);
LABEL_10:
      v36 = *&v80[56];
      v37 = *&v80[40];
      v38 = *&v80[24];
      v39 = *v80;
      v40 = *&v80[8];
      goto LABEL_11;
    }

LABEL_9:
    v69 = a3;
    sub_1D7A087BC(v25, v29, type metadata accessor for ArticleViewerArticlePage);
    v45 = v29[1];
    *v80 = *v29;
    v46 = v29[2];
    v47 = v29[3];
    *&v80[16] = v45;
    *&v80[32] = v46;
    *&v80[48] = v47;
    sub_1D79F5B54(v80, v79);
    sub_1D7B112C4(v29, type metadata accessor for ArticleViewerArticlePage);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D7B112C4(v25, type metadata accessor for ArticleViewerPage);
    return 0;
  }

  v68 = a1;
  if (EnumCaseMultiPayload != 3)
  {
    sub_1D799A6BC();
    sub_1D79DA510(*&v25[*(v44 + 48)], *&v25[*(v44 + 48) + 8], *&v25[*(v44 + 48) + 16]);
    goto LABEL_9;
  }

  v69 = a3;
  v31 = *(v25 + 9);
  v85 = *(v25 + 8);
  v86 = v31;
  v87 = *(v25 + 20);
  v32 = *(v25 + 5);
  v81 = *(v25 + 4);
  v82 = v32;
  v33 = *(v25 + 7);
  v83 = *(v25 + 6);
  v84 = v33;
  v34 = *(v25 + 1);
  *v80 = *v25;
  v35 = *(v25 + 2);
  *&v80[48] = *(v25 + 3);
  *&v80[16] = v34;
  *&v80[32] = v35;
  sub_1D79F5B54(&v82 + 8, v79);
  sub_1D79F949C(v80);
  v36 = v86;
  v38 = v84;
  v37 = v85;
  v39 = *(&v82 + 1);
  v40 = v83;
LABEL_11:
  v77 = v40;
  *&v79[0] = v39;
  *(v79 + 8) = v40;
  *(&v79[1] + 8) = v38;
  *(&v79[2] + 8) = v37;
  *(&v79[3] + 1) = v36;
  *v80 = v79[0];
  *&v80[16] = v79[1];
  *&v80[32] = v79[2];
  *&v80[48] = v79[3];
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v48 = [*(&v77 + 1) articleID];
  sub_1D7D3034C();
  *&v77 = v4;

  sub_1D7D2F84C();

  v49 = v78;
  if ((*(v16 + 48))(v15, 1, v78) != 1)
  {
    v51 = v16 + 32;
    v52 = *(v16 + 32);
    v53 = v70;
    v52(v70, v15, v49);
    v67 = v52;

    v54 = v72;
    v52(v72, v53, v49);
    v55 = v68;
    v56 = v75;
    sub_1D7B12C70(v68, v75, type metadata accessor for BottomPaletteFeatureContext);
    v57 = (*(v51 + 48) + 88) & ~*(v51 + 48);
    v58 = (v71 + *(v73 + 80) + v57) & ~*(v73 + 80);
    v59 = (v74 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    v61 = *&v80[16];
    *(v60 + 16) = *v80;
    *(v60 + 32) = v61;
    v62 = *&v80[48];
    *(v60 + 48) = *&v80[32];
    *(v60 + 64) = v62;
    *(v60 + 80) = v77;
    v67(v60 + v57, v54, v49);
    sub_1D7A087BC(v56, v60 + v58, type metadata accessor for BottomPaletteFeatureContext);
    v63 = (v60 + v59);
    v64 = v69;
    *v63 = v76;
    v63[1] = v64;
    v50 = *v55;
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1D7B12D3C;
    *(v65 + 24) = v60;

    return v50;
  }

  sub_1D7A0AD5C(v79);
  sub_1D7B11324(v15);
  return 0;
}

id sub_1D7B11B30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v38 = a4;
  v39 = a5;
  v44 = a3;
  v8 = sub_1D7D2ACCC();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BottomPaletteFeatureContext();
  v12 = v11 - 8;
  v37 = *(v11 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D7D2FDCC();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [*(a1 + 16) articleID];
  sub_1D7D3034C();

  sub_1D7D300FC();

  v22 = sub_1D7D2FB5C();
  v24 = v23;

  swift_getObjectType();
  (*(v16 + 104))(v20, *MEMORY[0x1E69B6740], v15);
  sub_1D7D2F78C();
  (*(v16 + 8))(v20, v15);
  v25 = a2[10];
  v35 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v25);
  v26 = v38;
  v27 = v36;
  sub_1D7B12C70(v38, v36, type metadata accessor for BottomPaletteFeatureContext);
  v28 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v29 = swift_allocObject();
  sub_1D7A087BC(v27, v29 + v28, type metadata accessor for BottomPaletteFeatureContext);
  v30 = (v29 + ((v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v31 = v41;
  *v30 = v39;
  v30[1] = v31;

  sub_1D7D2F85C();

  v32 = v40;
  (*(v42 + 16))(v40, v26 + *(v12 + 32), v43);
  v33 = objc_allocWithZone(type metadata accessor for AttributionViewWrapperView());
  return sub_1D7B120C4(v22, v24, v32);
}

uint64_t sub_1D7B11ED8(uint64_t a1, void (*a2)(char *))
{
  v4 = type metadata accessor for ArticleViewerFeatureAction();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BottomPaletteFeatureContext();
  sub_1D7B12C70(a1 + *(v8 + 20), v7, type metadata accessor for ArticleViewerPage);
  swift_storeEnumTagMultiPayload();
  a2(v7);
  return sub_1D7B112C4(v7, type metadata accessor for ArticleViewerFeatureAction);
}

uint64_t SharedArticleViewerFeatureDescriptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return v0;
}

uint64_t SharedArticleViewerFeatureDescriptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

id sub_1D7B120C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D7D2FBCC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView_attributionView];
  *v12 = a1;
  v12[1] = a2;
  v13 = OBJC_IVAR____TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView_navigationItemStyle;
  v14 = sub_1D7D2ACCC();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v3[v13], a3, v14);
  v3[OBJC_IVAR____TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView_isTransitioning] = 0;
  v16 = type metadata accessor for AttributionViewWrapperView();
  v21.receiver = v3;
  v21.super_class = v16;
  v17 = a1;
  v18 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v18 addSubview_];
  v19 = [v18 traitCollection];
  sub_1D7B12670(v19, v11);

  swift_getObjectType();
  sub_1D7D2F77C();

  (*(v15 + 8))(a3, v14);
  (*(v8 + 8))(v11, v7);

  return v18;
}

id sub_1D7B123E8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AttributionViewWrapperView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticlesP33_AB2C07DEED72E6BCD424DDADA40C3A3026AttributionViewWrapperView_attributionView];
  [v0 bounds];
  sub_1D7D30FBC();
  [v1 setCenter_];
  [v0 bounds];
  CGRectGetWidth(v4);
  [v1 bounds];
  CGRectGetWidth(v5);
  [v1 bounds];
  return [v1 setBounds_];
}

uint64_t sub_1D7B12670@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D7D2AC3C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 userInterfaceStyle];
  sub_1D7D2AC8C();
  v11 = (*(v5 + 88))(v9, v4);
  if (v11 == *MEMORY[0x1E69D7C50])
  {
    (*(v5 + 96))(v9, v4);
    v12 = *v9;
    v13 = *(v9 + 1);

    [v12 ts_luminance];
    v15 = v14;

    v16 = sub_1D7D2FBCC();
    v17 = *(*(v16 - 8) + 104);
    if (v10 == 2)
    {
      if (v15 >= 0.2)
      {
        v18 = MEMORY[0x1E69B65D8];
        return v17(a2, *v18, v16);
      }

LABEL_10:
      v18 = MEMORY[0x1E69B65E0];
      return v17(a2, *v18, v16);
    }

    if (v15 <= 0.9)
    {
      v18 = MEMORY[0x1E69B65E8];
      return v17(a2, *v18, v16);
    }

LABEL_12:
    v18 = MEMORY[0x1E69B65F0];
    return v17(a2, *v18, v16);
  }

  if (v11 == *MEMORY[0x1E69D7C40] || v11 == *MEMORY[0x1E69D7C58] || v11 == *MEMORY[0x1E69D7C48])
  {
    (*(v5 + 8))(v9, v4);
    v16 = sub_1D7D2FBCC();
    v17 = *(*(v16 - 8) + 104);
    goto LABEL_9;
  }

  v20 = *MEMORY[0x1E69D7C60];
  v21 = v11;
  v16 = sub_1D7D2FBCC();
  v17 = *(*(v16 - 8) + 104);
  if (v21 == v20)
  {
LABEL_9:
    if (v10 == 2)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v22 = MEMORY[0x1E69B65E0];
  if (v10 != 2)
  {
    v22 = MEMORY[0x1E69B65F0];
  }

  v17(a2, *v22, v16);
  return (*(v5 + 8))(v9, v4);
}

id sub_1D7B12988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionViewWrapperView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AttributionViewWrapperView()
{
  result = qword_1EC9E4B40;
  if (!qword_1EC9E4B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7B12A90()
{
  result = sub_1D7D2ACCC();
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

uint64_t sub_1D7B12B54(char a1)
{
  v2 = sub_1D7D2FDCC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, **(&unk_1E84EAAB8 + a1), v2, v5);
  swift_getObjectType();
  sub_1D7D2F78C();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_1D7B12C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D7B12CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_1D7B12D3C()
{
  v1 = *(sub_1D7D2EECC() - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for BottomPaletteFeatureContext() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 80);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D7B11B30(v0 + 16, v6, v0 + v2, v0 + v5, v8, v9);
}

uint64_t sub_1D7B12E70()
{
  v1 = *(type metadata accessor for BottomPaletteFeatureContext() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D7B11ED8(v0 + v2, v3);
}

uint64_t sub_1D7B12F04()
{
  sub_1D798F8C0();
  v41 = *(v0 - 8);
  v42 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EFC8();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EEFC();
  v8 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EC80();
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F63C();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EndOfArticleFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B154A8(v44, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v35 = v43;
      (*(v43 + 32))(v16, v26, v13);
      v30 = sub_1D7D2DEFC();
      (*(v35 + 8))(v16, v13);
    }

    else
    {
      (*(v19 + 32))(v22, v26, v18);
      v30 = sub_1D7D2DEFC();
      (*(v19 + 8))(v22, v18);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v31 = v37;
    (*(v37 + 32))(v11, v26, v8);
    v30 = sub_1D7D2DEFC();
    (*(v31 + 8))(v11, v8);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v29 = v38;
    v28 = v39;
    (*(v38 + 32))(v6, v26, v39);
    v30 = sub_1D7D2DEFC();
    (*(v29 + 8))(v6, v28);
  }

  else
  {
    v32 = v40;
    v33 = v41;
    v34 = v42;
    (*(v41 + 32))(v40, v26, v42);
    v30 = sub_1D7D2DEFC();
    (*(v33 + 8))(v32, v34);
  }

  return v30;
}

uint64_t sub_1D7B1342C@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = a1;
  sub_1D798F8C0();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EFC8();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EEFC();
  v10 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EC80();
  v15 = v14;
  v44 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F63C();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EndOfArticleFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B154A8(v45, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37 = v44;
      (*(v44 + 32))(v18, v28, v15);
      v47(v15);
      return (*(v37 + 8))(v18, v15);
    }

    else
    {
      (*(v21 + 32))(v24, v28, v20);
      v47(v20);
      return (*(v21 + 8))(v24, v20);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v33 = v38;
    (*(v38 + 32))(v13, v28, v10);
    v47(v10);
    return (*(v33 + 8))(v13, v10);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v31 = v39;
    v30 = v40;
    (*(v39 + 32))(v8, v28, v40);
    v47(v30);
    return (*(v31 + 8))(v8, v30);
  }

  else
  {
    v34 = v41;
    v35 = v42;
    v36 = v43;
    (*(v42 + 32))(v41, v28, v43);
    v47(v36);
    return (*(v35 + 8))(v34, v36);
  }
}

uint64_t sub_1D7B13978(uint64_t (*a1)(uint64_t))
{
  v47 = a1;
  sub_1D798F8C0();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EFC8();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EEFC();
  v9 = v8;
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EC80();
  v14 = v13;
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F63C();
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for EndOfArticleFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B154A8(v46, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v36 = v45;
      (*(v45 + 32))(v17, v27, v14);
      v31 = v47(v14);
      (*(v36 + 8))(v17, v14);
    }

    else
    {
      (*(v20 + 32))(v23, v27, v19);
      v31 = v47(v19);
      (*(v20 + 8))(v23, v19);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v32 = v39;
    (*(v39 + 32))(v12, v27, v9);
    v31 = v47(v9);
    (*(v32 + 8))(v12, v9);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v30 = v40;
    v29 = v41;
    (*(v40 + 32))(v7, v27, v41);
    v31 = v47(v29);
    (*(v30 + 8))(v7, v29);
  }

  else
  {
    v33 = v42;
    v34 = v43;
    v35 = v44;
    (*(v43 + 32))(v42, v27, v44);
    v31 = v47(v35);
    (*(v34 + 8))(v33, v35);
  }

  return v31;
}

uint64_t sub_1D7B13E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D798F750(&qword_1EE0C5130, type metadata accessor for EndOfArticleFeedGroupConfig);

  return MEMORY[0x1EEE21730](a1, a2, a3, v6);
}

uint64_t sub_1D7B13FCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v55 = a2;
  sub_1D798F8C0();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v51 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EFC8();
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EEFC();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v54 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EC80();
  v43 = *(v12 - 8);
  v44 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F63C();
  v16 = v15;
  v42 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B15340();
  v21 = v20;
  v56 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for EndOfArticleFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7B1539C();
  v29 = v57;
  sub_1D7D31AFC();
  if (!v29)
  {
    v40 = v16;
    v31 = v53;
    v30 = v54;
    v41 = v28;
    v57 = v25;
    v32 = v55;
    sub_1D7B153F0();
    sub_1D7D317DC();
    if (v58[0] <= 1u)
    {
      v54 = v24;
      if (v58[0])
      {
        v38 = v21;
        sub_1D799CC84(v59, v58);
        type metadata accessor for RelatedEndOfArticleFeedGroupConfigData();
        sub_1D798F750(&unk_1EE0CC560, type metadata accessor for RelatedEndOfArticleFeedGroupConfigData);
        sub_1D798F750(qword_1EE0CC570, type metadata accessor for RelatedEndOfArticleFeedGroupConfigData);
        sub_1D7D2DF3C();
        v39 = v32;
        v36 = v41;
        (*(v56 + 8))(v54, v38);
        (*(v43 + 32))(v36, v31, v44);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        sub_1D7B15444(v36, v39);
        return __swift_destroy_boxed_opaque_existential_1(v59);
      }

      sub_1D799CC84(v59, v58);
      type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData();
      sub_1D798F750(&qword_1EE0CC4B8, type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData);
      sub_1D798F750(&qword_1EE0CC4C0, type metadata accessor for MoreFromEndOfArticleFeedGroupConfigData);
      sub_1D7D2DF3C();
      (*(v56 + 8))(v54, v21);
      v36 = v41;
      (*(v42 + 32))(v41, v19, v40);
    }

    else if (v58[0] == 2)
    {
      sub_1D799CC84(v59, v58);
      type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData();
      sub_1D798F750(&qword_1EE0CC188, type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData);
      sub_1D798F750(qword_1EE0CC190, type metadata accessor for RecommendedEndOfArticleFeedGroupConfigData);
      sub_1D7D2DF3C();
      (*(v56 + 8))(v24, v21);
      v36 = v41;
      (*(v45 + 32))(v41, v30, v46);
    }

    else
    {
      v54 = v21;
      v34 = v56;
      if (v58[0] == 3)
      {
        sub_1D799CC84(v59, v58);
        type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData();
        sub_1D798F750(&qword_1EE0CC2D8, type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData);
        sub_1D798F750(&unk_1EE0CC2E0, type metadata accessor for MoreToReadEndOfArticleFeedGroupConfigData);
        v35 = v52;
        sub_1D7D2DF3C();
        (*(v34 + 8))(v24, v54);
        v36 = v41;
        (*(v47 + 32))(v41, v35, v48);
      }

      else
      {
        sub_1D799CC84(v59, v58);
        type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData();
        sub_1D798F750(&unk_1EE0CC040, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData);
        sub_1D798F750(qword_1EE0CC050, type metadata accessor for MoreFromIssueEndOfArticleFeedGroupConfigData);
        v37 = v51;
        sub_1D7D2DF3C();
        (*(v34 + 8))(v24, v54);
        v36 = v41;
        (*(v49 + 32))(v41, v37, v50);
      }
    }

    v39 = v32;
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_1D7B14910(uint64_t a1)
{
  v43 = a1;
  sub_1D798F8C0();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v38 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EFC8();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EEFC();
  v8 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798EC80();
  v13 = v12;
  v41 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D798F63C();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for EndOfArticleFeedGroupConfig();
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7B154A8(v42, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v33 = v41;
      (*(v41 + 32))(v16, v26, v13);
      sub_1D7D2DF4C();
      return (*(v33 + 8))(v16, v13);
    }

    else
    {
      (*(v19 + 32))(v22, v26, v18);
      sub_1D7D2DF4C();
      return (*(v19 + 8))(v22, v18);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v32 = v34;
    (*(v34 + 32))(v11, v26, v8);
    sub_1D7D2DF4C();
    return (*(v32 + 8))(v11, v8);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v28 = v35;
      v29 = v36;
      v30 = v37;
      (*(v36 + 32))(v35, v26, v37);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      (*(v39 + 32))(v38, v26, v40);
    }

    sub_1D7D2DF4C();
    return (*(v29 + 8))(v28, v30);
  }
}

uint64_t sub_1D7B14D9C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D7B14DF0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D7D316EC();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D7B14E48(uint64_t a1)
{
  v2 = sub_1D7B1539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7B14E84(uint64_t a1)
{
  v2 = sub_1D7B1539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D7B14ECC()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7B14FB8()
{
  sub_1D7D303FC();
}

uint64_t sub_1D7B15090()
{
  sub_1D7D31A8C();
  sub_1D7D303FC();

  return sub_1D7D31ABC();
}

uint64_t sub_1D7B15178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D7B156E0();
  *a1 = result;
  return result;
}

void sub_1D7B151A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6D6F724665726F6DLL;
  v5 = 0xEB00000000646564;
  v6 = 0x6E656D6D6F636572;
  v7 = 0xEA00000000006461;
  v8 = 0x65526F5465726F6DLL;
  if (v2 != 3)
  {
    v8 = 0x6D6F724665726F6DLL;
    v7 = 0xED00006575737349;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x646574616C6572;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_1D7B15340()
{
  if (!qword_1EE0BEB30)
  {
    sub_1D7B1539C();
    v0 = sub_1D7D3180C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BEB30);
    }
  }
}

unint64_t sub_1D7B1539C()
{
  result = qword_1EE0C5158[0];
  if (!qword_1EE0C5158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0C5158);
  }

  return result;
}

unint64_t sub_1D7B153F0()
{
  result = qword_1EE0C5138;
  if (!qword_1EE0C5138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5138);
  }

  return result;
}

uint64_t sub_1D7B15444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedGroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B154A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedGroupConfig();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7B15530()
{
  result = qword_1EC9E4B50;
  if (!qword_1EC9E4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4B50);
  }

  return result;
}

unint64_t sub_1D7B15588()
{
  result = qword_1EC9E4B58;
  if (!qword_1EC9E4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4B58);
  }

  return result;
}

unint64_t sub_1D7B155E0()
{
  result = qword_1EE0C5148;
  if (!qword_1EE0C5148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5148);
  }

  return result;
}

unint64_t sub_1D7B15638()
{
  result = qword_1EE0C5150;
  if (!qword_1EE0C5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5150);
  }

  return result;
}

unint64_t sub_1D7B1568C()
{
  result = qword_1EE0C5140;
  if (!qword_1EE0C5140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0C5140);
  }

  return result;
}

uint64_t sub_1D7B156E0()
{
  v0 = sub_1D7D316EC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t RecipeArticleDrawerModule.__allocating_init(baseStyler:router:tracker:paidAccessChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1D799D69C(a1, v8 + 16);
  sub_1D799D69C(a2, v8 + 64);
  *(v8 + 56) = a3;
  *(v8 + 104) = a4;
  return v8;
}

uint64_t RecipeArticleDrawerModule.init(baseStyler:router:tracker:paidAccessChecker:)(__int128 *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  sub_1D799D69C(a1, v4 + 16);
  sub_1D799D69C(a2, v4 + 64);
  *(v4 + 56) = a3;
  *(v4 + 104) = a4;
  return v4;
}

id RecipeArticleDrawerModule.createViewController(for:article:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for RecipeRouteContext();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v38 - v15;
  if (a2[1])
  {
    v17 = a2[5];
    v18 = a2[6];
    v19 = a2[7];
    if (v17)
    {
      *v12 = a2[4];
      *(v12 + 1) = v17;
      *(v12 + 2) = v18;
      *(v12 + 3) = v19;
      v12[32] = 1;
    }

    else
    {
      *v12 = v18;
      *(v12 + 1) = v19;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v12[32] = 0;
    }
  }

  else
  {
    *v12 = 0u;
    *(v12 + 1) = 0u;
    v12[32] = 2;
  }

  v20 = *(v5 + 20);
  v21 = type metadata accessor for ArticleRouteModel();
  (*(*(v21 - 8) + 56))(&v12[v20], 1, 1, v21);
  sub_1D7ABB264(v12, v16);
  v22 = *(v3 + 104);
  type metadata accessor for RecipeArticleDrawerViewModel();
  swift_allocObject();
  swift_unknownObjectRetain();

  v24 = sub_1D7A8483C(v23, v22);

  swift_unknownObjectRelease();
  sub_1D799CC84(v3 + 64, v39);
  v25 = *(v3 + 56);
  sub_1D7A82778(v16, v8);
  type metadata accessor for RecipeArticleDrawerRouter();
  v26 = swift_allocObject();
  sub_1D799D69C(v39, v26 + 16);
  *(v26 + 56) = v25;
  sub_1D7ABB264(v8, v26 + OBJC_IVAR____TtC12NewsArticles25RecipeArticleDrawerRouter_routeContext);
  sub_1D799CC84(v3 + 16, v39);
  v27 = objc_allocWithZone(type metadata accessor for RecipeArticleDrawerViewController());

  v28 = sub_1D7A148D8(v39, v24, v26);

  v29 = [objc_allocWithZone(sub_1D7D2ADCC()) initWithRootViewController_];
  [v29 setModalPresentationStyle_];
  v30 = [v29 sheetPresentationController];
  if (v30)
  {
    v31 = v30;
    v32 = [objc_opt_self() currentTraitCollection];
    v33 = [v32 horizontalSizeClass];

    if (v33 == 1)
    {
      sub_1D79EB1FC();
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_1D7D41F60;
      v35 = objc_opt_self();
      *(v34 + 32) = [v35 mediumDetent];
      *(v34 + 40) = [v35 largeDetent];
      sub_1D7B15CB8();
      v36 = sub_1D7D3062C();

      [v31 setDetents_];
    }

    else
    {
    }
  }

  else
  {
  }

  sub_1D7A08A8C(v16);
  return v29;
}

uint64_t RecipeArticleDrawerModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RecipeArticleDrawerModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1D7B15CB8()
{
  result = qword_1EC9E4B60;
  if (!qword_1EC9E4B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC9E4B60);
  }

  return result;
}

uint64_t type metadata accessor for EndOfArticleFeedGapLocation()
{
  result = qword_1EE0C5200;
  if (!qword_1EE0C5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D7B15DB4()
{
  sub_1D7B15E28();
  if (v0 <= 0x3F)
  {
    sub_1D7B15E94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D7B15E28()
{
  if (!qword_1EE0BEFA0)
  {
    sub_1D799621C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0BEFA0);
    }
  }
}

void sub_1D7B15E94()
{
  if (!qword_1EE0BF760)
  {
    type metadata accessor for EndOfArticleFeedServiceConfig();
    sub_1D7990AF8();
    v0 = sub_1D7D2ED6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF760);
    }
  }
}

uint64_t sub_1D7B15EFC(uint64_t a1, uint64_t a2)
{
  sub_1D7B15E94();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  sub_1D7B1616C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v17[*(v18 + 56)];
  sub_1D7B161D0(a1, v17);
  sub_1D7B161D0(a2, v19);
  type metadata accessor for EndOfArticleFeedGapLocation();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = (v17 + 8);
    swift_unknownObjectRelease();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      swift_unknownObjectRelease();
      sub_1D7B16290(v19 + 8);
      sub_1D7B16290(v23);
      v21 = 1;
      return v21 & 1;
    }

    sub_1D7B16290(v23);
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v6 + 8))(v17, v5);
LABEL_7:
    sub_1D7B16234(v19);
    v21 = 0;
    return v21 & 1;
  }

  v20 = *(v6 + 32);
  v20(v13, v17, v5);
  v20(v9, v19, v5);
  type metadata accessor for EndOfArticleFeedServiceConfig();
  sub_1D7990AF8();
  v21 = sub_1D7D2ED5C();
  v22 = *(v6 + 8);
  v22(v9, v5);
  v22(v13, v5);
  return v21 & 1;
}

void sub_1D7B1616C()
{
  if (!qword_1EC9E4B68)
  {
    type metadata accessor for EndOfArticleFeedGapLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC9E4B68);
    }
  }
}

uint64_t sub_1D7B161D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndOfArticleFeedGapLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7B16234(uint64_t a1)
{
  v2 = type metadata accessor for EndOfArticleFeedGapLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*EndOfArticleViewController.footerDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_footerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D7B163AC;
}

id sub_1D7B163BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1D7B164D4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*EndOfArticleViewController.resultProviderDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_resultProviderDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D7B18FA4;
}

void sub_1D7B165C8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id EndOfArticleViewController.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x1E69DD8D8] object:0];

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id EndOfArticleViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D7D3031C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

Swift::Void __swiftcall EndOfArticleViewController.viewDidLoad()()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v1;
  [v1 setClipsToBounds_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  [v3 addSubview_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 setPreservesSuperviewLayoutMargins_];

  v7 = *&v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_blueprintViewController];
  [v0 addChildViewController_];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v9 addSubview_];

  [v7 didMoveToParentViewController_];
  v12 = [v7 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v0 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v13 setFrame_];
  v24 = [v7 view];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 setPreservesSuperviewLayoutMargins_];

  v26 = *&v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  if (v26)
  {
    v27 = v26;
    [v0 setOverrideTraitCollection:v27 forChildViewController:v7];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7B18E90(qword_1EE0C5998, v28, type metadata accessor for EndOfArticleViewController);
    sub_1D7B18E90(&qword_1EE0C5990, v29, type metadata accessor for EndOfArticleViewController);

    sub_1D7D2E3AC();
  }

  else
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7B18E90(qword_1EE0C5998, v30, type metadata accessor for EndOfArticleViewController);
    sub_1D7B18E90(&qword_1EE0C5990, v31, type metadata accessor for EndOfArticleViewController);

    sub_1D7D2E3AC();

    v27 = [v0 traitCollection];
  }

  sub_1D7B18B28();
}

void sub_1D7B16E1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_blueprintViewController);

    sub_1D7D2B2CC();
    v3 = sub_1D7D2AF0C();

    [v3 reloadData];
  }
}

Swift::Void __swiftcall EndOfArticleViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = *(*&v1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler] + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(ObjectType, v3);
}

Swift::Void __swiftcall EndOfArticleViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1D7D2B6DC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = v1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1, v7);
  (*(v5 + 104))(v9, *MEMORY[0x1E69D81C8], v4);
  sub_1D7D2B2EC();
}

Swift::Void __swiftcall EndOfArticleViewController.viewWillLayoutSubviews()()
{
  v70.receiver = v0;
  v70.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v70, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_gutterViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (!v3)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v4 = v3;
    v5 = [v0 view];
    if (!v5)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v6 = v5;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v4 setFrame_];
LABEL_8:

    v26 = [v0 view];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 window];

      if (v28)
      {
        [v28 bounds];
        v30 = v29;
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v71.origin.x = v30;
        v71.origin.y = v32;
        v71.size.width = v34;
        v71.size.height = v36;
        Height = CGRectGetHeight(v71);
      }

      else
      {
        Height = 1000.0;
      }

      v38 = *&v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overscrollBackgroundView];
      v39 = [v0 view];
      if (v39)
      {
        v40 = v39;
        [v39 bounds];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v72.origin.x = v42;
        v72.origin.y = v44;
        v72.size.width = v46;
        v72.size.height = v48;
        [v38 setHidden_];
        v49 = [v0 view];
        if (v49)
        {
          v50 = v49;
          [v49 bounds];
          v52 = v51;
          v54 = v53;
          v56 = v55;
          v58 = v57;

          v73.origin.x = v52;
          v73.origin.y = v54;
          v73.size.width = v56;
          v73.size.height = v58;
          v59 = CGRectGetHeight(v73);
          v60 = [v0 view];
          if (v60)
          {
            v61 = v60;
            [v60 bounds];
            v63 = v62;
            v65 = v64;
            v67 = v66;
            v69 = v68;

            v74.origin.x = v63;
            v74.origin.y = v65;
            v74.size.width = v67;
            v74.size.height = v69;
            [v38 setFrame_];
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v15 = [*&v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_blueprintViewController] view];
  if (!v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = v15;
  v16 = [v0 view];
  if (v16)
  {
    v17 = v16;
    [v16 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [v4 setFrame_];
    goto LABEL_8;
  }

LABEL_23:
  __break(1u);
}

Swift::Void __swiftcall EndOfArticleViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_traitCollectionDidChange_, isa);
  v3 = *&v1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overriddenTraitCollection];
  }

  else
  {
    v4 = [v1 traitCollection];
    v3 = 0;
  }

  v5 = v3;
  sub_1D7B18B28();
}

Swift::Bool __swiftcall EndOfArticleViewController.shouldUpdateFocus(in:)(UIFocusUpdateContext in)
{
  v2 = sub_1D7D2DB3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D7D2DB7C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [(objc_class *)in.super.isa focusHeading];
  if (v13 == 32)
  {
    sub_1D7AE6C50();
    v19 = sub_1D7D30E1C();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1D7B18DCC;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D79FE25C;
    aBlock[3] = &block_descriptor_19;
    v15 = _Block_copy(aBlock);

    sub_1D7D2DB5C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D7B18E90(&qword_1EE0BFA20, 255, MEMORY[0x1E69E7F60]);
    sub_1D7B18DEC();
    sub_1D7B18E90(&qword_1EE0BF270, 255, sub_1D7B18DEC);
    sub_1D7D313AC();
    v16 = v19;
    MEMORY[0x1DA70E890](0, v12, v6, v15);
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v7);
  }

  return v13 != 32;
}

void sub_1D7B17A54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong parentViewController];

    if (v2)
    {
      [v2 becomeFirstResponder];
    }
  }
}

Swift::Void __swiftcall EndOfArticleViewController.deselect()()
{
  sub_1D7D2B2CC();
  v0 = sub_1D7D2AF0C();

  [v0 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

void sub_1D7B17CD8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_blueprintViewController];
  sub_1D7D2B2CC();
  v3 = sub_1D7D2AF0C();

  v4 = [v3 collectionViewLayout];

  [v4 collectionViewContentSize];
  v5 = *&a1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_gutterViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v6 view];
      if (v9)
      {
        v10 = v9;
        [v9 frame];

        sub_1D7D30FEC();
        [v8 setFrame_];

        v11 = [a1 view];
        if (v11)
        {
          v12 = v11;
          v13 = [a1 view];
          if (v13)
          {
            v14 = v13;
            [v13 frame];

            sub_1D7D30FEC();
            [v12 setFrame_];

            v15 = [v6 view];
            if (v15)
            {
              v16 = v15;
              [v15 setNeedsLayout];

              v17 = [v6 view];
              if (v17)
              {
                [v17 layoutIfNeeded];

                goto LABEL_14;
              }

              goto LABEL_22;
            }

LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  v18 = [v2 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  v20 = [v2 view];
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  [v20 frame];

  sub_1D7D30FEC();
  [v19 setFrame_];

  v22 = [a1 view];
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = v22;
  v23 = [a1 view];
  if (!v23)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v24 = v23;
  [v23 frame];

  sub_1D7D30FEC();
  [v17 setFrame_];
LABEL_14:

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong footerNeedsLayout_];
    swift_unknownObjectRelease();
  }
}

void sub_1D7B18080()
{
  sub_1D7D2B2CC();
  v0 = sub_1D7D2AF0C();

  [v0 reloadData];
}

Swift::Void __swiftcall EndOfArticleViewController.blueprintReadableContentGuideDidChange(_:)(UILayoutGuide a1)
{
  v2 = [v1 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 navigationBar];

    sub_1D7D3108C();
  }
}

uint64_t EndOfArticleViewController.blueprint(_:didSelect:at:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(v4 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v7 + 104))(a2, 0, a4, ObjectType, v7);
}

uint64_t EndOfArticleViewController.blueprint(_:didStartSession:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t EndOfArticleViewController.blueprint(_:createdImpressionSession:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t EndOfArticleViewController.blueprint(_:didStartImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a2, ObjectType, v4);
}

uint64_t EndOfArticleViewController.blueprint(_:createdImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 80))(a2, ObjectType, v4);
}

uint64_t EndOfArticleViewController.blueprint(_:cancelledImpression:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 88))(a2, ObjectType, v4);
}

uint64_t EndOfArticleViewController.blueprint(_:createdImpressionSection:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 96))(a2, ObjectType, v4);
}

void EndOfArticleViewController.blueprint(_:layoutOptionsDidChange:triggeredBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7D2BE7C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a3, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == *MEMORY[0x1E69D8630])
  {
    (*(v7 + 8))(v11, v6);
LABEL_3:
    v13 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v13 + 40))(ObjectType, v13);
    return;
  }

  if (v12 == *MEMORY[0x1E69D8608])
  {
    v15 = *(*(v3 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
    v16 = swift_getObjectType();
    (*(v15 + 32))(a2, v16, v15);
  }

  else
  {
    if (v12 == *MEMORY[0x1E69D8628])
    {
      goto LABEL_3;
    }

    if (v12 != *MEMORY[0x1E69D8658])
    {
      if (v12 == *MEMORY[0x1E69D8610])
      {
        goto LABEL_3;
      }

      if (v12 != *MEMORY[0x1E69D8638])
      {
        if (v12 == *MEMORY[0x1E69D8650])
        {
          sub_1D7D2B2CC();
          v17 = sub_1D7D2AF0C();

          [v17 reloadData];
        }

        else
        {
          (*(v7 + 8))(v11, v6);
        }
      }
    }
  }
}

uint64_t sub_1D7B186C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(v4 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v7 + 104))(a2, 0, a4, ObjectType, v7);
}

uint64_t sub_1D7B1875C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 80))(a2, ObjectType, v4);
}

uint64_t sub_1D7B187BC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 96))(a2, ObjectType, v4);
}

uint64_t sub_1D7B1881C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t sub_1D7B1887C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_1D7B188DC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 72))(a2, ObjectType, v4);
}

uint64_t sub_1D7B1893C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 88))(a2, ObjectType, v4);
}

double EndOfArticleViewController.sectionItemHeight(for:traitCollection:)()
{
  sub_1D7D2B2CC();
  v0 = sub_1D7D2AF0C();

  v1 = [v0 collectionViewLayout];

  [v1 collectionViewContentSize];
  v3 = v2;

  return fmax(v3, 1.0);
}

id sub_1D7B18B28()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_styler];
  sub_1D799CC84(&v0[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_styler], v27);
  v3 = __swift_project_boxed_opaque_existential_1(v27, v28);
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = *(*v3 + 40);
  v7 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((*v3 + 16), v6);
  v8 = (*(v7 + 24))(v6, v7);
  [v5 setBackgroundColor_];

  __swift_destroy_boxed_opaque_existential_1(v27);
  v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
  v10 = *&v1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_overscrollBackgroundView];
  v11 = *(*v9 + 40);
  v12 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v11);
  v13 = (*(v12 + 24))(v11, v12);
  [v10 setBackgroundColor_];

  sub_1D799CC84(v2, v27);
  v14 = __swift_project_boxed_opaque_existential_1(v27, v28);
  sub_1D7D2B2CC();
  v15 = sub_1D7D2AF0C();

  v16 = *v14;
  v17 = *(*v14 + 40);
  v18 = *(v16 + 48);
  __swift_project_boxed_opaque_existential_1((v16 + 16), v17);
  v19 = (*(v18 + 24))(v17, v18);
  [v15 setBackgroundColor_];

  [v15 _setPocketsEnabled_];
  result = __swift_destroy_boxed_opaque_existential_1(v27);
  v20 = *&v1[OBJC_IVAR____TtC12NewsArticles26EndOfArticleViewController_gutterViewController];
  if (!v20)
  {
    return result;
  }

  sub_1D799CC84(v2, v27);
  v21 = __swift_project_boxed_opaque_existential_1(v27, v28);
  v22 = v20;
  result = [v22 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v23 = result;
  v24 = *(*v21 + 40);
  v25 = *(*v21 + 48);
  __swift_project_boxed_opaque_existential_1((*v21 + 16), v24);
  v26 = (*(v25 + 24))(v24, v25);
  [v23 setBackgroundColor_];

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D7B18DEC()
{
  if (!qword_1EE0BF280)
  {
    sub_1D7D2DB3C();
    v0 = sub_1D7D307BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0BF280);
    }
  }
}

uint64_t sub_1D7B18E90(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_1D7B18FA8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D7D3039C();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7D2833C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v53 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = a1;
    v20 = [v18 endDate];
    if (v20)
    {
      v53[1] = v7;
      v21 = v20;
      sub_1D7D2830C();

      (*(v9 + 32))(v16, v12, v8);
      v60 = v19;
      v22 = [v19 startDate];
      sub_1D7D2830C();

      v23 = *(type metadata accessor for AnalyticsTimedData() + 20);
      v24 = *(v9 + 16);
      v61 = a2;
      v24(a2 + v23, v16, v8);
      v25 = [v18 componentIdentifier];
      v26 = sub_1D7D3034C();
      v58 = v27;
      v59 = v26;

      v28 = [v18 componentType];
      v29 = sub_1D7D3034C();
      v56 = v30;
      v57 = v29;

      v31 = [v18 componentRole];
      v32 = sub_1D7D3034C();
      v54 = v33;
      v55 = v32;

      v34 = [v18 metaData];
      sub_1D7D3028C();

      v35 = objc_opt_self();
      v36 = sub_1D7D3027C();

      v62[0] = 0;
      v37 = [v35 dataWithJSONObject:v36 options:0 error:v62];

      v38 = v62[0];
      if (v37)
      {
        v39 = sub_1D7D2827C();
        v41 = v40;

        sub_1D7D3038C();
        v42 = sub_1D7D3036C();
        v37 = v43;
        sub_1D79EA2E4(v39, v41);

        (*(v9 + 8))(v16, v8);
      }

      else
      {
        v46 = v38;
        v47 = sub_1D7D2815C();

        swift_willThrow();
        (*(v9 + 8))(v16, v8);

        v42 = 0;
      }

      sub_1D7A26C84();
      v49 = (v61 + *(v48 + 48));
      v50 = v58;
      *v49 = v59;
      v49[1] = v50;
      v51 = v56;
      v49[2] = v57;
      v49[3] = v51;
      v52 = v54;
      v49[4] = v55;
      v49[5] = v52;
      v49[6] = v42;
      v49[7] = v37;
      type metadata accessor for AnalyticsEvent();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_1D7B19480();
      swift_allocError();
      *v45 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D7B19480();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
  }
}

unint64_t sub_1D7B19480()
{
  result = qword_1EC9E4BB8;
  if (!qword_1EC9E4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4BB8);
  }

  return result;
}

unint64_t sub_1D7B194E8()
{
  result = qword_1EC9E4BC0;
  if (!qword_1EC9E4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9E4BC0);
  }

  return result;
}

id ArticleNavigationBarPaletteContent.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1D7B195DC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  [v4 setNeedsLayout];
  return [v4 layoutIfNeeded];
}

uint64_t sub_1D7B1965C()
{
  v1 = v0 + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX;
  swift_beginAccess();
  return *v1;
}

id sub_1D7B196A8(uint64_t a1, char a2)
{
  v5 = &v2[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX];
  swift_beginAccess();
  *v5 = a1;
  v5[8] = a2 & 1;
  [v2 setNeedsLayout];
  return [v2 layoutIfNeeded];
}

uint64_t (*sub_1D7B19728(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D7B1B150;
}

id sub_1D7B1978C(_OWORD *a1, void **a2)
{
  v3 = *a2;
  v4 = *a2 + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame;
  swift_beginAccess();
  v5 = a1[1];
  *v4 = *a1;
  v4[1] = v5;
  [v3 setNeedsLayout];
  return [v3 layoutIfNeeded];
}

double sub_1D7B19808()
{
  v1 = v0 + OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame;
  swift_beginAccess();
  return *v1;
}

id sub_1D7B19854(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame];
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  [v4 setNeedsLayout];
  return [v4 layoutIfNeeded];
}

uint64_t (*sub_1D7B198E0(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D7B19944;
}

id sub_1D7B19948(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    [v5 setNeedsLayout];

    return [v5 layoutIfNeeded];
  }

  return result;
}

char *ArticleNavigationBarPaletteContent.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_opaqueBar;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_horizontalScrollOffset] = 0;
  *&v4[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_bottomPaletteButtonLocation] = 0;
  v10 = &v4[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_contentSafeAreaFrame];
  v12 = type metadata accessor for ArticleNavigationBarPaletteContent();
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v15.receiver = v4;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 addSubview_];
  return v13;
}

id sub_1D7B19BBC(double a1, double a2)
{
  v5 = [v2 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20);
  v6 = sub_1D7D3063C();

  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA70EF00](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v10)
      {

        goto LABEL_17;
      }

      ++v8;
      if (v11 == i)
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

  a1 = 0.0;
  a2 = 0.0;
LABEL_17:
  *&v2[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_horizontalScrollOffset] = a1;
  *&v2[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_bottomPaletteButtonLocation] = a2;

  return [v2 setNeedsLayout];
}

void sub_1D7B19D54(void *a1, uint64_t a2, double a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = sub_1D7D3114C();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() ts:v7 visualEffectsForBarWithBackgroundColor:?];
      if (!v9)
      {
        sub_1D7992EFC(0, &unk_1EC9E28D8);
        sub_1D7D3063C();
        v9 = sub_1D7D3062C();
      }

      [a1 setBackgroundEffects_];
    }
  }

  v10 = [v4 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20);
  sub_1D7D3063C();

  sub_1D7B19EF8();
  sub_1D7D3067C();

  if (v13)
  {
    v11 = a3 != 0.0 && a3 != 1.0;
    ObjectType = swift_getObjectType();
    (*(v14 + 16))(v11, ObjectType);
  }
}

unint64_t sub_1D7B19EF8()
{
  result = qword_1EC9E28D0;
  if (!qword_1EC9E28D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC9E28D0);
  }

  return result;
}

void sub_1D7B1A000(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_opaqueBar];
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = [objc_opt_self() systemBackgroundColor];
  }

  v5 = a1;
  [v3 setBackgroundColor_];

  v6 = [v1 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20);
  v7 = sub_1D7D3063C();

  if (v7 >> 62)
  {
    v8 = sub_1D7D3167C();
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA70EF00](i, v7);
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12 && v11)
    {
      v13 = v12;
      ObjectType = swift_getObjectType();
      (*(v13 + 40))(a1, ObjectType, v13);
    }
  }

LABEL_16:
}

void sub_1D7B1A224(CGFloat a1, double a2)
{
  v5 = [v2 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20);
  v6 = sub_1D7D3063C();

  if (v6 >> 62)
  {
    v7 = sub_1D7D3167C();
    if (v7)
    {
LABEL_3:
      if (v7 < 1)
      {
        __break(1u);
      }

      else
      {
        v8 = 0;
        v9 = *&v2[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_opaqueBar];
        v10 = a2;
        do
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1DA70EF00](v8, v6);
          }

          else
          {
            v11 = *(v6 + 8 * v8 + 32);
          }

          v12 = v11;
          v13 = v9;
          v14 = sub_1D7D311DC();

          if ((v14 & 1) == 0)
          {
            v15 = [v12 layer];
            *&v16 = v10;
            [v15 setOpacity_];

            v17 = [v12 layer];
            CATransform3DMakeScale(&v19, a1, a1, 1.0);
            v18 = v19;
            CATransform3DTranslate(&v20, &v18, 0.0, 0.0, 0.0);
            v18 = v20;
            [v17 setTransform_];
          }

          ++v8;
        }

        while (v7 != v8);
      }

      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }
  }
}

void sub_1D7B1A50C()
{
  v1 = v0;
  v41.receiver = v0;
  v41.super_class = type metadata accessor for ArticleNavigationBarPaletteContent();
  objc_msgSendSuper2(&v41, sel_layoutSubviews);
  [v0 bounds];
  if (CGRectGetWidth(v42) > 0.0)
  {
    if (sub_1D7D2DB0C())
    {
      v2 = &v0[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_parallaxX];
      swift_beginAccess();
      if (v2[8])
      {
        [v1 safeAreaInsets];
      }
    }

    v3 = *&v1[OBJC_IVAR____TtC12NewsArticles34ArticleNavigationBarPaletteContent_opaqueBar];
    if (sub_1D7D2DB0C())
    {
      swift_beginAccess();
      sub_1D7D30F8C();
    }

    else
    {
      [v1 bounds];
      Width = CGRectGetWidth(v43);
      v4 = 0.0;
      v7 = 44.0;
      v5 = 0.0;
    }

    [v3 setFrame_];
    [v3 center];
    v39 = v1;
    v8 = [v1 subviews];
    sub_1D7992EFC(0, &unk_1EE0BED20);
    v9 = sub_1D7D3063C();

    v40 = MEMORY[0x1E69E7CC0];
    if (v9 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7D3167C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1DA70EF00](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 == v3)
        {
        }

        else
        {
          sub_1D7D3153C();
          sub_1D7D3157C();
          sub_1D7D3158C();
          sub_1D7D3154C();
        }

        ++v11;
        if (v13 == i)
        {
          v14 = v40;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v14 = MEMORY[0x1E69E7CC0];
LABEL_25:

    v15 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
    if (v15)
    {
      goto LABEL_57;
    }

    v16 = *(v14 + 16);
    if (v16)
    {
LABEL_30:
      v17 = 0;
      v18 = v14 & 0xC000000000000001;
      v19 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
      do
      {
        if (v18)
        {
          v20 = MEMORY[0x1DA70EF00](v17, v14);
        }

        else
        {
          if (v17 >= *(v14 + 16))
          {
            goto LABEL_55;
          }

          v20 = *(v14 + 8 * v17 + 32);
        }

        v21 = v20;
        v22 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v16 = sub_1D7D3167C();
          if (!v16)
          {
            break;
          }

          goto LABEL_30;
        }

        [v3 bounds];
        [v21 v19[134]];
        [v21 setBounds_];
        if (v15)
        {
          if (sub_1D7D3167C() == 1)
          {
            goto LABEL_42;
          }
        }

        else if (*(v14 + 16) == 1)
        {
LABEL_42:
          sub_1D7D310FC();
          [v21 setCenter_];
          swift_getObjectType();
          v28 = swift_conformsToProtocol2();
          if (!v28 || !v21)
          {
            goto LABEL_31;
          }

LABEL_52:
          v38 = v28;
          swift_getObjectType();
          (*(v38 + 32))();
          goto LABEL_31;
        }

        if (!v17)
        {
          sub_1D7D310FC();
          [v21 setCenter_];
          swift_getObjectType();
          v28 = swift_conformsToProtocol2();
          if (!v28 || !v21)
          {
            goto LABEL_31;
          }

          goto LABEL_52;
        }

        [v39 bounds];
        CGRectGetWidth(v44);
        if (v18)
        {
          v27 = MEMORY[0x1DA70EF00](0, v14);
        }

        else
        {
          if (!*(v14 + 16))
          {
            goto LABEL_56;
          }

          v27 = *(v14 + 32);
        }

        v29 = v27;
        [v27 bounds];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v45.origin.x = v31;
        v45.origin.y = v33;
        v45.size.width = v35;
        v45.size.height = v37;
        CGRectGetWidth(v45);
        [v21 bounds];
        [v21 setBounds_];
        [v39 bounds];
        CGRectGetWidth(v46);
        [v21 bounds];
        CGRectGetWidth(v47);
        sub_1D7D310FC();
        [v21 setCenter_];
        swift_getObjectType();
        v28 = swift_conformsToProtocol2();
        v19 = &selRef_nowPlayingPlaybackControlsDidTapNextTrack_;
        if (v28 && v21)
        {
          goto LABEL_52;
        }

LABEL_31:

        ++v17;
      }

      while (v22 != v16);
    }
  }
}

id ArticleNavigationBarPaletteContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleNavigationBarPaletteContent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double ArticleNavigationBarPaletteContent.show(_:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v6 = [v3 subviews];
  sub_1D7992EFC(0, &unk_1EE0BED20);
  v7 = sub_1D7D3063C();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_19:

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

LABEL_18:
  v8 = sub_1D7D3167C();
  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_3:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1DA70EF00](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = swift_dynamicCastObjCProtocolConditional();
    if (v13)
    {
      break;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_19;
    }
  }

  v14 = v13;

  if ([v14 showMessage_])
  {
    sub_1D7D3138C();

    swift_unknownObjectRelease();
  }

  else
  {

    v16 = 0u;
    v17 = 0u;
  }

  result = *&v16;
  *a2 = v16;
  a2[1] = v17;
  return result;
}
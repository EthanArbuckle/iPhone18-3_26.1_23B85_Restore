uint64_t Header.HeaderView.hasScrolledPastTopEdge.getter()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

void Header.HeaderView.hasScrolledPastTopEdge.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge;
  v5 = swift_beginAccess();
  v6 = *(v2 + v4);
  v7 = a1 & 1;
  *(v2 + v4) = a1;
  if (v6 != v7)
  {
    v8 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
    if (*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible) != v7)
    {
      v9 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
      v10 = MEMORY[0x1E69E7D40];
      v11 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))(v5);
      v13 = v12;
      if (v9)
      {
        if (v11)
        {
          ObjectType = swift_getObjectType();
          (*(v13 + 8))(v2, (a1 & 1) == 0, ObjectType, v13);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v11)
        {
          v15 = swift_getObjectType();
          (*(v13 + 8))(v2, 1, v15, v13);
          swift_unknownObjectRelease();
        }

        v16 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
        if (v16)
        {
          v17 = *((*v10 & *v16) + 0x90);
          v18 = v16;
          v17(a1 & 1, 1);
        }
      }

      *(v2 + v8) = v7;
    }
  }
}

void (*Header.HeaderView.hasScrolledPastTopEdge.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return Header.HeaderView.hasScrolledPastTopEdge.modify;
}

void Header.HeaderView.hasScrolledPastTopEdge.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if ((v4 ^ v5))
  {
    v6 = v1[3];
    v7 = v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
    if (v4 != *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible))
    {
      v8 = *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
      v9 = MEMORY[0x1E69E7D40];
      v10 = (*((*MEMORY[0x1E69E7D40] & *v6) + 0xE8))();
      v12 = v11;
      if (v8)
      {
        if (v10)
        {
          v13 = v1[3];
          ObjectType = swift_getObjectType();
          (*(v12 + 8))(v13, v4 ^ 1, ObjectType, v12);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v10)
        {
          v15 = v1[3];
          v16 = swift_getObjectType();
          (*(v12 + 8))(v15, 1, v16, v12);
          swift_unknownObjectRelease();
        }

        v17 = *(v1[3] + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
        if (v17)
        {
          v18 = *((*v9 & *v17) + 0x90);
          v19 = v17;
          v18(v4, 1);
        }
      }

      *v7 = v4;
    }
  }

  free(v1);
}

uint64_t key path getter for Header.HeaderView.overrideTraitCollection : Header.HeaderView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x230))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Header.HeaderView.overrideTraitCollection : Header.HeaderView(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x238);
  v4 = *a1;
  return v3(v2);
}

void *Header.HeaderView.overrideTraitCollection.getter()
{
  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void Header.HeaderView.overrideTraitCollection.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *Header.HeaderView.__allocating_init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(a1, a2, a3, a4, a5);

  return v12;
}

char *Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5 = specialized Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(a1, a2, a3, a4, a5);

  return v5;
}

id Header.HeaderView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id Header.HeaderView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Header.HeaderView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Header.HeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall Header.HeaderView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for HeaderSizeInterpolator();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Header.HeaderView();
  v72.receiver = v0;
  v72.super_class = v5;
  objc_msgSendSuper2(&v72, sel_layoutSubviews);
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v10 = *(**(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 16) + 584);

  v10(v81, v11);

  v12 = MEMORY[0x1E69E7D40];
  if (v81[0])
  {
    specialized Header.HeaderView.sizeForContactIdentityView(proposedSize:sizingStrategy:)();
    v14 = v13;
    v15 = (*((*v12 & *v0) + 0x1C8))();
    MaxY = 0.0;
    if (v15)
    {
      v17 = v15;
      v18 = v15();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      outlined consume of (@escaping @callee_guaranteed () -> (@unowned CGRect))?(v17);
      v83.origin.x = v18;
      v83.origin.y = v20;
      v83.size.width = v22;
      v83.size.height = v24;
      MaxY = CGRectGetMaxY(v83);
    }

    v25 = (*((*v12 & *v0) + 0x1E0))();
    v26 = static Geometry.lerp(t:min:max:)(v25, 0.0, MaxY) - v14;
    if (v26 < 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v26;
    }
  }

  else
  {
    v27 = 0.0;
  }

  v28 = *((*v12 & *v0) + 0x210);
  v28();
  v29 = *(v4 + 6);
  v81[0] = *(v4 + 5);
  v81[1] = v29;
  v82 = *(v4 + 14);
  v30 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v31 = *((*v12 & *v0) + 0x1E0);
  v32 = v31(v30);
  v33 = InterpolationValue.evaluate(at:)(v32);
  v34 = (*((*v12 & *v0) + 0x178))();
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](v36);
  cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(partial apply for implicit closure #1 in Header.HeaderView.topHeaderPadding.getter, v37, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), v79, 0, partial apply for implicit closure #5 in Header.HeaderView.topHeaderPadding.getter, &v71, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v38 = v33 + v27 + *v79;
  v39 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView);
  if (v39)
  {
    [v39 setFrame_];
  }

  specialized Header.HeaderView.sizeForContactIdentityView(proposedSize:sizingStrategy:)();
  v41 = v40;
  v42 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarView);
  [*(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarView) setFrame_];
  v44 = v7 * 0.5;
  [v42 center];
  v45 = [v42 setCenter_];
  v46 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel);
  (v28)(v45);
  v47 = *(v4 + 11);
  v79[0] = *(v4 + 10);
  v79[1] = v47;
  v80 = *(v4 + 24);
  v48 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v49 = v31(v48);
  v50 = InterpolationValue.evaluate(at:)(v49);
  v51 = (*(*v46 + 192))(v50);
  (v28)(v51);
  v52 = *(v4 + 136);
  v76 = *(v4 + 120);
  v77 = v52;
  v78 = *(v4 + 19);
  v53 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v54 = v31(v53);
  v55 = InterpolationValue.evaluate(at:)(v54);
  (*(*v46 + 240))(v55);
  v56 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView);
  v57 = [v56 sizeThatFits_];
  v59 = v58;
  v61 = v60;
  (v28)(v57);
  v62 = *(v4 + 296);
  v73 = *(v4 + 280);
  v74 = v62;
  v75 = *(v4 + 39);
  v63 = outlined destroy of DetailsStyleGuide(v4, type metadata accessor for HeaderSizeInterpolator);
  v64 = v31(v63);
  v65 = v61 * 0.5 + v38 + v41 + InterpolationValue.evaluate(at:)(v64);
  [v56 setBounds_];
  [v56 setCenter_];
  v66 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
  if (v66)
  {
    v67 = v66;
    [v67 sizeThatFits_];
    v69 = v68;
    [v67 setBounds_];
    [v67 setCenter_];
  }
}

Swift::Int Header.HeaderView.SizingStrategy.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Header.HeaderView.SizingStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Header.HeaderView.SizingStrategy()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AEB260](v1);
  return Hasher._finalize()();
}

CGSize __swiftcall Header.HeaderView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = Header.HeaderView.expandedSizeThatFits(_:)(a1.width, a1.height);
  v6 = v5;
  v7.n128_f64[0] = Header.HeaderView.collapsedStateSizeThatFits(_:)(width, height);
  v9 = v8;
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1E0))(v7);
  v11 = static Geometry.lerp(t:min:max:)(v10, v9, v6);
  v12 = v4;
  result.height = v11;
  result.width = v12;
  return result;
}

void Header.HeaderView.rawSizeThatFits(_:strategy:)(char a1, double a2, double a3)
{
  if (a1)
  {
    if (a1 == 1)
    {
      Header.HeaderView.collapsedStateSizeThatFits(_:)(a2, a3);
    }

    else
    {
      Header.HeaderView.expandedSizeThatFits(_:)(a2, a3);
      v7 = v6;
      v8.n128_f64[0] = Header.HeaderView.collapsedStateSizeThatFits(_:)(a2, a3);
      v10 = v9;
      v11 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1E0))(v8);
      static Geometry.lerp(t:min:max:)(v11, v10, v7);
    }
  }

  else
  {
    Header.HeaderView.expandedSizeThatFits(_:)(a2, a3);
  }
}

double Header.HeaderView.expandedSizeThatFits(_:)(double a1, double a2)
{
  v5 = type metadata accessor for HeaderSizeInterpolator();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Header.StyleGuide();
  MEMORY[0x1EEE9AC00](v39);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide);
  v11 = _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide, v9, type metadata accessor for Header.StyleGuide);
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v11);
  v14 = *v10;
  v44 = v13;
  v45 = v14;
  v42 = v14;
  v41 = v14;
  v15 = cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in Header.HeaderView.topHeaderPadding.getterpartial apply, v43, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), v46, 0, implicit closure #5 in Header.HeaderView.topHeaderPadding.getterpartial apply, v40, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v16 = *((*v12 & *v2) + 0x210);
  v16(v15);
  outlined destroy of DetailsStyleGuide(v7, type metadata accessor for HeaderSizeInterpolator);
  v17 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel);
  v18 = *(**(v17 + 16) + 584);

  v18(v46, v19);

  if (v46[0] == 1)
  {
    v20 = *(**(v17 + 16) + 584);

    v20(v46, v21);

    v23 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))(v22);
    if (v23)
    {
      v24 = v23;
      v25 = v23();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      outlined consume of (@escaping @callee_guaranteed () -> (@unowned CGRect))?(v24);
      v47.origin.x = v25;
      v47.origin.y = v27;
      v47.size.width = v29;
      v47.size.height = v31;
      CGRectGetMaxY(v47);
    }
  }

  v32 = *(**(v17 + 16) + 584);

  v32(v46, v33);

  v16(v34);
  outlined destroy of DetailsStyleGuide(v7, type metadata accessor for HeaderSizeInterpolator);
  [*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView) sizeThatFits_];
  v35 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
  if (v35)
  {
    v36 = v35;
    if ([v36 isHidden])
    {
    }

    else
    {
      [v36 sizeThatFits_];
    }
  }

  outlined destroy of DetailsStyleGuide(v9, type metadata accessor for Header.StyleGuide);
  return a1;
}

double Header.HeaderView.collapsedStateSizeThatFits(_:)(double a1, double a2)
{
  v5 = type metadata accessor for HeaderSizeInterpolator();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x178))(v6);
  v11 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide);
  v25 = v10;
  v26 = v11;
  v23 = v11;
  v22 = v11;
  v12 = cdValue<A>(_:default:iOS:macOS:watchOS:visionOS:tvOS:)(implicit closure #1 in Header.HeaderView.topHeaderPadding.getterpartial apply, v24, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), &v27, 0, implicit closure #5 in Header.HeaderView.topHeaderPadding.getterpartial apply, v21, specialized thunk for @callee_guaranteed () -> (@unowned CGFloat?), 0, MEMORY[0x1E69E7DE0]);
  v13 = *((*v9 & *v2) + 0x210);
  v13(v12);
  outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  v14 = *(**(*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 16) + 584);

  v14(&v27, v15);

  v13(v16);
  v17 = outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  v13(v17);
  outlined destroy of DetailsStyleGuide(v8, type metadata accessor for HeaderSizeInterpolator);
  [*(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView) sizeThatFits_];
  v18 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
  if (v18)
  {
    v19 = v18;
    if (([v19 isHidden] & 1) == 0)
    {
      [v19 sizeThatFits_];
    }
  }

  return a1;
}

Swift::Void __swiftcall Header.HeaderView.configureAvatarView(with:)(Swift::OpaquePointer with)
{
  v2 = *(**(v1 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel) + 144);

  v2(v3);
}

uint64_t Header.HeaderView.configureHeaderTabs(for:selectedTab:onTabChange:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2[1];
  if (v5)
  {
    v6 = v4;
    v7 = result;
    v10 = a2[2];
    v45 = *a2;
    v46 = a2[3];
    v11 = a2[4];
    v12 = MEMORY[0x1E69E7D40];
    v13 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x148);

    v15 = v13(v14);
    if (v15)
    {
      v16 = *(*v15 + 144);

      v16(v17);
    }

    v18 = *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
    if (v18)
    {
      if (*(v7 + 16) == 1)
      {
        [v18 setHidden_];
      }

      else
      {
        [v18 setHidden_];
      }

      return outlined consume of DetailsTab?(v45, v5);
    }

    else
    {
      type metadata accessor for HorizontalTabControl.ViewModel();
      *&v50 = v45;
      *(&v50 + 1) = v5;
      *&v51 = v10;
      *(&v51 + 1) = v46;
      *&v52 = v11;

      sub_19011E3EC(a3);
      HorizontalTabControl.ViewModel.__allocating_init(tabs:selectedTab:onTabChange:)(v7, &v50, a3, a4);
      v19 = *((*v12 & *v6) + 0x150);

      v19(v20);
      v21 = v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide;
      v22 = &v21[*(type metadata accessor for DetailsStyleGuide() + 20)];
      v23 = v22[1];
      v66 = *v22;
      v67 = v23;
      v24 = v22[5];
      v70 = v22[4];
      v71 = v24;
      v25 = v22[3];
      v68 = v22[2];
      v69 = v25;
      v26 = v66;
      v27 = v67;
      v28 = BYTE8(v67);
      if (((*(&v71 + 1) | ((*(&v71 + 5) | (SBYTE7(v71) << 16)) << 32)) & 0x8000000000000000) != 0)
      {
        type metadata accessor for SegmentedTabControl();
        v50 = v26;
        *&v51 = v27;
        BYTE8(v51) = v28 & 1;

        v37 = SegmentedTabControl.__allocating_init(viewModel:styleGuide:)(v38, &v50);
      }

      else
      {
        v29 = v71;
        v50 = v66;
        v51 = v67;
        v52 = v68;
        v53 = v69;
        v54 = v70;
        LOBYTE(v55) = v71;
        BYTE7(v55) = (*(&v71 + 1) | ((*(&v71 + 5) | (SBYTE7(v71) << 16)) << 32)) >> 48;
        *(&v55 + 5) = *(&v71 + 5);
        *(&v55 + 1) = *(&v71 + 1);
        *(&v55 + 1) = *(&v71 + 1);
        outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v66, v48);

        outlined init with copy of DetailsStyleGuide.TabBarConfiguration(&v66, v48);
        DetailsTabBarViewRepresentable.init(viewModel:styleGuide:)(&v50, &v59);
        v30 = static Edge.Set.vertical.getter();
        v31 = 0uLL;
        v32 = v30;
        v33 = 0uLL;
        if ((v29 & 1) == 0)
        {
          EdgeInsets.init(_all:)();
          *(&v31 + 1) = v34;
          *(&v33 + 1) = v35;
        }

        v58 = v29 & 1;
        v54 = v63;
        v55 = v64;
        v56 = v65;
        v50 = v59;
        v51 = v60;
        v52 = v61;
        v53 = v62;
        v57[0] = v32;
        *&v57[8] = v31;
        *&v57[24] = v33;
        v57[40] = v29 & 1;
        v48[6] = v65;
        v48[7] = *v57;
        v49[0] = *&v57[16];
        *(v49 + 9) = *&v57[25];
        v48[2] = v61;
        v48[3] = v62;
        v48[4] = v63;
        v48[5] = v64;
        v48[0] = v59;
        v48[1] = v60;
        v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCyAA15ModifiedContentVy20CommunicationDetails0h6TabBarD13RepresentableVAA14_PaddingLayoutVGGMd));
        outlined init with copy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(&v50, v47);
        v37 = _UIHostingView.init(rootView:)();
        outlined destroy of DetailsStyleGuide.TabBarConfiguration(&v66);
        outlined destroy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(&v50);
      }

      v39 = objc_opt_self();
      v40 = v37;
      v41 = [v39 clearColor];
      [v40 setBackgroundColor_];

      [v6 addSubview_];
      v42 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView;
      v43 = *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView);
      *(v6 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView) = v40;

      v44 = *(v6 + v42);
      if (*(v7 + 16) == 1)
      {
        if (v44)
        {
          [v44 setHidden_];
        }
      }

      else if (v44)
      {
        [v44 setHidden_];
      }

      return outlined consume of DetailsTab?(v45, v5);
    }
  }

  return result;
}

void Header.HeaderView.updateScrollPocketInteractions(basePocketInteraction:pocketContainerInteraction:)(void *a1, void *a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction);
  v6 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction;
  v15 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction);
  *(v2 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction) = a1;
  *(v2 + v6) = a2;
  if (v5)
  {
    v7 = a2;
    v8 = a1;
    v9 = [v2 removeInteraction_];
    v10 = &off_1E72E3000;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14 = a2;
  v9 = a1;
  v10 = &off_1E72E3000;
  if (a1)
  {
LABEL_3:
    v9 = [v2 v10[255]];
  }

LABEL_4:
  if (v15)
  {
    v9 = [v2 removeInteraction_];
  }

  if (a2)
  {
    v9 = [v2 v10[255]];
  }

  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0xE8))(v9))
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v2, 1, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

uint64_t type metadata accessor for Header.HeaderView()
{
  result = type metadata singleton initialization cache for Header.HeaderView;
  if (!type metadata singleton initialization cache for Header.HeaderView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *specialized Header.HeaderView.init(viewModel:styleGuide:headerDelegate:quickActionsDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v77 = a5;
  v78 = a4;
  v81 = a3;
  v9 = type metadata accessor for Header.StyleGuide();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Header.SwiftUIContainerView();
  MEMORY[0x1EEE9AC00](v76);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy20CommunicationDetails6HeaderV0a11UIContainerC0V_AH36QuickActionsContainerDelegateWrapperCQo_Md);
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate];
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel;
  type metadata accessor for WrappedAvatarView.ViewModel();
  *&v5[v21] = WrappedAvatarView.ViewModel.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsViewModel] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView] = 0;
  v22 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_effectiveSafeAreaInsets];
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  *(v22 + 1) = v23;
  v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible] = 0;
  v24 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hitButtonTimestamp];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_posterSaliencyRect];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress] = 0x3FF0000000000000;
  v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge] = 0;
  v26 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_quickActionsContainerPool;
  type metadata accessor for QuickActionsContainer.Pool();
  *&v5[v26] = QuickActionsContainer.Pool.__allocating_init()();
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection] = 0;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel] = a1;
  _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(a2, &v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide], type metadata accessor for DetailsStyleGuide);
  swift_beginAccess();
  *(v20 + 1) = v78;
  swift_unknownObjectWeakAssign();

  v84 = WrappedAvatarView.init(viewModel:backgroundStyle:)();
  v85 = v27;
  v86 = v28;
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy20CommunicationDetails013WrappedAvatarD0VGMd));
  v30 = _UIHostingView.init(rootView:)();
  v31 = &unk_1EAD3F000;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarView] = v30;
  v32 = v30;
  dispatch thunk of _UIHostingView.safeAreaRegions.setter();

  v78 = a2;
  _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(a2, v11, type metadata accessor for Header.StyleGuide);
  v33 = *&v6[v26];

  v34 = v11;
  v35 = v79;
  Header.SwiftUIContainerView.init(viewModel:styleGuide:pool:)(v34, v33, v13);
  type metadata accessor for QuickActionsContainerDelegateWrapper(0);
  lazy protocol witness table accessor for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView(&lazy protocol witness table cache variable for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView, type metadata accessor for Header.SwiftUIContainerView);
  lazy protocol witness table accessor for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView(&lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper, type metadata accessor for QuickActionsContainerDelegateWrapper);

  View.environment<A>(_:)();

  outlined destroy of DetailsStyleGuide(v13, type metadata accessor for Header.SwiftUIContainerView);
  v36 = *(v80 + 16);
  v77 = v19;
  v36(v75, v19, v35);
  v37 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCyAA0D0PAAE11environmentyQrqd__SgRld__C11Observation10ObservableRd__lFQOy20CommunicationDetails6HeaderV0a11UIContainerD0V_AJ36QuickActionsContainerDelegateWrapperCQo_GMd));
  v38 = _UIHostingView.init(rootView:)();
  v39 = &type metadata singleton initialization cache for QuickActionsContainerDelegateWrapper;
  *&v6[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_swiftUIHeaderContentView] = v38;
  v40 = type metadata accessor for Header.HeaderView();
  v82.receiver = v6;
  v82.super_class = v40;
  v41 = v38;
  v42 = objc_msgSendSuper2(&v82, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v43 = *(*&v42[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel] + 16);
  v44 = v42;
  v45 = *(*v43 + 584);

  v45(&v84, v46);

  if ((v44[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_styleGuide + 8] & 1) == 0)
  {
    v48 = v84;
    v49 = (*((*MEMORY[0x1E69E7D40] & *v44) + 0x148))(v47);
    if (v49)
    {
      (*(*v49 + 184))(&v84);

      v50 = v85;
      if (v85)
      {
        v51 = v84;
        v52 = v86;

        v53 = outlined consume of DetailsTab?(v51, v50);
        LOBYTE(v50) = (*(*v52 + 176))(v53);
      }

      else
      {
        outlined consume of DetailsTab?(v84, 0);
      }
    }

    else
    {
      LOBYTE(v50) = 0;
    }

    type metadata accessor for PlatformTopEdgeBlurView();
    v54 = PlatformTopEdgeBlurView.__allocating_init(wantsPlatterBlur:)(v50 & 1);
    [v44 addSubview_];
    v55 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView;
    v56 = *&v44[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView];
    *&v44[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView] = v54;
    v57 = v54;

    LOBYTE(v84) = v48;
    v83 = 0;
    lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle();
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible;
    if ((v58 & 1) == v44[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible])
    {

      v31 = &unk_1EAD3F000;
      v39 = &type metadata singleton initialization cache for QuickActionsContainerDelegateWrapper;
    }

    else
    {
      v60 = v58;
      v61 = v41;
      v62 = *&v44[OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction];
      v63 = MEMORY[0x1E69E7D40];
      v64 = (*((*MEMORY[0x1E69E7D40] & *v44) + 0xE8))();
      v66 = v65;
      if (v62)
      {
        v41 = v61;
        if (v64)
        {
          ObjectType = swift_getObjectType();
          (*(v66 + 8))(v44, (v60 & 1) == 0, ObjectType, v66);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        if (v64)
        {
          v68 = swift_getObjectType();
          (*(v66 + 8))(v44, 1, v68, v66);
          swift_unknownObjectRelease();
        }

        v69 = *&v44[v55];
        v41 = v61;
        if (v69)
        {
          v70 = *((*v63 & *v69) + 0x90);
          v71 = v69;
          v70(v60 & 1, 0);
        }
      }

      v44[v59] = v60 & 1;
      v35 = v79;
      v31 = &unk_1EAD3F000;
      v39 = &type metadata singleton initialization cache for QuickActionsContainerDelegateWrapper;
    }
  }

  [v44 addSubview_];
  v72 = *&v44[v39[210]];
  v73 = [objc_opt_self() clearColor];
  [v72 setBackgroundColor_];

  [v44 addSubview_];
  swift_unknownObjectRelease();

  outlined destroy of DetailsStyleGuide(v78, type metadata accessor for DetailsStyleGuide);
  (*(v80 + 8))(v77, v35);
  return v44;
}

void specialized Header.HeaderView.init(frame:)()
{
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_avatarViewModel;
  type metadata accessor for WrappedAvatarView.ViewModel();
  *(v0 + v1) = WrappedAvatarView.ViewModel.__allocating_init(_:)(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketInteraction) = 0;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_scrollPocketContainerInteraction) = 0;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsViewModel) = 0;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_horizontalTabsHostingView) = 0;
  v2 = (v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_effectiveSafeAreaInsets);
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_isHeaderBlurVisible) = 0;
  v4 = v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hitButtonTimestamp;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = (v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_posterSaliencyRect);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_headerInterpolationProgress) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_hasScrolledPastTopEdge) = 0;
  v6 = OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_quickActionsContainerPool;
  type metadata accessor for QuickActionsContainer.Pool();
  *(v0 + v6) = QuickActionsContainer.Pool.__allocating_init()();
  *(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_overrideTraitCollection) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized Header.HeaderView.sizeForContactIdentityView(proposedSize:sizingStrategy:)()
{
  v1 = type metadata accessor for HeaderSizeInterpolator();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(**(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails6Header10HeaderView_viewModel) + 16) + 584);

  v4(v18, v5);

  if ((v18[0] & 1) == 0)
  {
    v7 = MEMORY[0x1E69E7D40];
    v8 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x210);
    (v8)(v6);
    v9 = *(v3 + 1);
    v18[0] = *v3;
    v18[1] = v9;
    v19 = *(v3 + 4);
    v10 = outlined destroy of DetailsStyleGuide(v3, type metadata accessor for HeaderSizeInterpolator);
    v11 = *((*v7 & *v0) + 0x1E0);
    v12 = v11(v10);
    InterpolationValue.evaluate(at:)(v12);
    v8();
    v13 = *(v3 + 56);
    v16[0] = *(v3 + 40);
    v16[1] = v13;
    v17 = *(v3 + 9);
    v14 = outlined destroy of DetailsStyleGuide(v3, type metadata accessor for HeaderSizeInterpolator);
    v15 = v11(v14);
    InterpolationValue.evaluate(at:)(v15);
  }
}

void partial apply for implicit closure #1 in Header.HeaderView.topHeaderPadding.getter(double *a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2 < 2.0)
  {
    v2 = *(v1 + 24);
  }

  *a1 = v2;
}

double partial apply for implicit closure #3 in Header.HeaderView.topHeaderPadding.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy()
{
  result = lazy protocol witness table cache variable for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy;
  if (!lazy protocol witness table cache variable for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Header.HeaderView.SizingStrategy and conformance Header.HeaderView.SizingStrategy);
  }

  return result;
}

uint64_t type metadata completion function for Header.HeaderView()
{
  result = type metadata accessor for DetailsStyleGuide();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Header.HeaderView.SizingStrategy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Header.HeaderView.SizingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
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

void partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned CGRect)(uint64_t a1@<X8>)
{
  *a1 = (*(v1 + 16))();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

uint64_t outlined init with copy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F23TabBarViewRepresentableVAA14_PaddingLayoutVGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<DetailsTabBarViewRepresentable, _PaddingLayout>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F23TabBarViewRepresentableVAA14_PaddingLayoutVGMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20CommunicationDetails22HeaderSizeInterpolatorVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Header.SwiftUIContainerView and conformance Header.SwiftUIContainerView(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined destroy of DetailsStyleGuide(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ParticipantView.AddContactButtonBadgeOverlay.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.contextMenuPreview.getter();
  *v4 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMd);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ParticipantView.AddContactButtonBadgeOverlay@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMd) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
  static ContentShapeKinds.contextMenuPreview.getter();
  *v4 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMd);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t View.addContactButtonBadgeOverlay(addToContactsButton:isAddedToContacts:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  return MEMORY[0x193AEA300](&v4, a3, &type metadata for ParticipantView.AddContactButtonBadgeOverlay);
}

uint64_t getEnumTagSinglePayload for ParticipantView.AddContactButtonBadgeOverlay(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.AddContactButtonBadgeOverlay(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy20CommunicationDetails011ParticipantE0V28AddContactButtonBadgeOverlayVGAA01_d9ShapeKindF0VyAA6CircleVGGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy20CommunicationDetails011ParticipantC0V28AddContactButtonBadgeOverlayVGMd);
    lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ParticipantView.AddContactButtonBadgeOverlay> and conformance _ViewModifier_Content<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay()
{
  result = lazy protocol witness table cache variable for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay;
  if (!lazy protocol witness table cache variable for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.AddContactButtonBadgeOverlay and conformance ParticipantView.AddContactButtonBadgeOverlay);
  }

  return result;
}

Swift::Void __swiftcall DetailsViewController.didFinishTransition(to:animated:)(Swift::Int to, Swift::Bool animated)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))();
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = (*((*v6 & *v7) + 0x148))();

  if (!v9)
  {
    return;
  }

  v31 = v9;
  v10 = (*(*v9 + 184))(&v32);
  v11 = v32;
  v12 = v33;
  v28 = animated;
  if (v33)
  {
    v13 = *((*v6 & *v3) + 0x240);

    v13(0, &v32);
    v6 = MEMORY[0x1E69E7D40];
    v10 = outlined consume of DetailsTab?(v32, v33);
  }

  v29 = v12;
  v30 = v11;
  v14 = (*((*v6 & *v3) + 0xD8))(v10);
  if (to < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v14 + 16) <= to)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v15 = (v14 + 40 * to);
  v16 = v15[4];
  v17 = v15[5];
  v19 = v15[6];
  v18 = v15[7];
  v20 = v15[8];

  v32 = v16;
  v33 = v17;
  v34 = v19;
  v35 = v18;
  v36 = v20;
  v21 = *(*v31 + 192);
  v22 = to;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v21(&v32);
  DetailsViewController.updatePosterScrollGeometry(for:animated:)(to, 1);
  if (v17)
  {
    toTabIndex = to;
    v32 = v16;
    v33 = v17;
    v34 = v19;
    v35 = v18;
    v36 = v20;
    v23 = v29;
    v24 = v30;
    if (v29)
    {
      outlined copy of DetailsTab?(v30, v29);
      outlined copy of DetailsTab?(v16, v17);
      lazy protocol witness table accessor for type DetailsTab and conformance DetailsTab();
      v26 = dispatch thunk of static Equatable.== infix(_:_:)();

      v23 = v29;

      outlined consume of DetailsTab?(v16, v17);
      if (v26)
      {
        outlined consume of DetailsTab?(v30, v29);

LABEL_16:

        return;
      }

LABEL_15:
      v25._countAndFlagsBits = v16;
      v25._object = v17;
      DetailsViewController.performHeaderTransition(toTabIndex:tabId:animated:)(toTabIndex, v25, v28);

      outlined consume of DetailsTab?(v30, v23);
      goto LABEL_16;
    }

    outlined copy of DetailsTab?(v30, 0);
    outlined copy of DetailsTab?(v16, v17);

LABEL_14:
    outlined consume of DetailsTab?(v16, v17);
    outlined consume of DetailsTab?(v24, v23);
    goto LABEL_15;
  }

  v23 = v29;
  v24 = v30;
  if (v29)
  {
    toTabIndex = v22;
    outlined copy of DetailsTab?(v30, v29);
    goto LABEL_14;
  }

  outlined consume of DetailsTab?(v16, 0);
}

uint64_t DetailsViewControllerRepresentable.tabs.getter()
{
  v3[1] = *v0;
  v4 = *(v0 + 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd);
  MEMORY[0x193AEA550](v3, v1);
  return v3[0];
}

void *key path getter for DetailsViewControllerRepresentable.tabs : DetailsViewControllerRepresentable@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[1] = *a1;
  v6 = *(a1 + 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd);
  result = MEMORY[0x193AEA550](v5, v3);
  *a2 = v5[0];
  return result;
}

uint64_t key path setter for DetailsViewControllerRepresentable.tabs : DetailsViewControllerRepresentable()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd);
  return Binding.wrappedValue.setter();
}

void (*DetailsViewControllerRepresentable.tabs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v4[8] = *v1;
  v4[9] = v6;
  v7 = v1[2];
  v4[10] = v7;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;

  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd);
  MEMORY[0x193AEA550]();
  return DetailsViewControllerRepresentable.tabs.modify;
}

void DetailsViewControllerRepresentable.tabs.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v2[3] = *(*a1 + 64);
  v2[7] = v2[6];
  v4 = v2[10];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t DetailsViewControllerRepresentable.$tabs.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd);
  Binding.projectedValue.getter();
  return v1;
}

double key path getter for DetailsViewControllerRepresentable.selectedTab : DetailsViewControllerRepresentable@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  MEMORY[0x193AEA550](v6, v2);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

uint64_t key path setter for DetailsViewControllerRepresentable.selectedTab : DetailsViewControllerRepresentable(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  outlined copy of DetailsTab?(*a1, a1[1]);

  outlined copy of DetailsTab?(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  Binding.wrappedValue.setter();

  return outlined consume of DetailsTab?(v2, v3);
}

uint64_t DetailsViewControllerRepresentable.selectedTab.setter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  outlined copy of DetailsTab?(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  Binding.wrappedValue.setter();

  return outlined consume of DetailsTab?(v1, v2);
}

void (*DetailsViewControllerRepresentable.selectedTab.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x100uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[4];
  v6 = v1[5];
  v4[24] = v5;
  v4[25] = v6;
  v7 = v1[6];
  v8 = v1[7];
  v4[26] = v7;
  v4[27] = v8;
  v9 = v1[8];
  v10 = v1[9];
  v4[28] = v9;
  v4[29] = v10;
  v11 = v1[10];
  v4[30] = v11;
  *v4 = v5;
  v4[1] = v6;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v9;
  v4[5] = v10;
  v4[6] = v11;

  outlined copy of DetailsTab?(v7, v8);
  v4[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  MEMORY[0x193AEA550]();
  return DetailsViewControllerRepresentable.selectedTab.modify;
}

void DetailsViewControllerRepresentable.selectedTab.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 224);
  *(v3 + 72) = *(*a1 + 208);
  v5 = *(v3 + 200);
  *(v3 + 56) = *(v3 + 192);
  v6 = *(v3 + 112);
  *(v3 + 152) = v6;
  v7 = *(v3 + 120);
  v8 = *(v3 + 128);
  v9 = *(v3 + 136);
  v10 = *(v3 + 144);
  v11 = *(v3 + 240);
  *(v3 + 64) = v5;
  *(v3 + 88) = v4;
  *(v3 + 104) = v11;
  *(v3 + 160) = v7;
  *(v3 + 168) = v8;
  *(v3 + 176) = v9;
  *(v3 + 184) = v10;
  if (a2)
  {
    outlined copy of DetailsTab?(v6, v7);
    Binding.wrappedValue.setter();
    v12 = *(v3 + 72);
    v13 = *(v3 + 80);

    outlined consume of DetailsTab?(v12, v13);
    v14 = *(v3 + 112);
    v15 = *(v3 + 120);
  }

  else
  {
    Binding.wrappedValue.setter();
    v16 = *(v3 + 72);
    v17 = *(v3 + 80);

    v14 = v16;
    v15 = v17;
  }

  outlined consume of DetailsTab?(v14, v15);

  free(v3);
}

void *DetailsViewControllerRepresentable.makeUIViewController(context:)()
{
  v1 = v0;
  v2 = type metadata accessor for DetailsStyleGuide();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsViewController();
  v12 = *v0;
  v13 = *(v0 + 1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySay20CommunicationDetails0E3TabVGGMd);
  MEMORY[0x193AEA550](&v11, v5);
  v6 = v11;
  v7 = v1[3];
  v8 = type metadata accessor for DetailsViewControllerRepresentable(0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v1 + *(v8 + 28), v4, type metadata accessor for DetailsStyleGuide);

  v9 = DetailsViewController.__allocating_init(tabs:configuration:styleGuide:)(v6, v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy20CommunicationDetails0h4ViewdE0VGMd);
  UIViewControllerRepresentableContext.coordinator.getter();
  (*((*MEMORY[0x1E69E7D40] & *v9) + 0x218))(v12, &protocol witness table for DetailsViewControllerRepresentable.Coordinator);
  return v9;
}

id DetailsViewControllerRepresentable.makeCoordinator()()
{
  v1 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v0, v3, type metadata accessor for DetailsViewControllerRepresentable);
  v4 = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v3, v5 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  outlined destroy of DetailsViewControllerRepresentable(v3);
  return v6;
}

uint64_t _s20CommunicationDetails0B10StyleGuideVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id DetailsViewControllerRepresentable.Coordinator.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(a1, v3 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  outlined destroy of DetailsViewControllerRepresentable(a1);
  return v4;
}

uint64_t type metadata accessor for DetailsViewControllerRepresentable(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t key path setter for DetailsViewControllerRepresentable.Coordinator.parent : DetailsViewControllerRepresentable.Coordinator(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(a1, v6, type metadata accessor for DetailsViewControllerRepresentable);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x68))(v6);
}

uint64_t DetailsViewControllerRepresentable.Coordinator.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent;
  swift_beginAccess();
  return _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v1 + v3, a1, type metadata accessor for DetailsViewControllerRepresentable);
}

uint64_t DetailsViewControllerRepresentable.Coordinator.parent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent;
  swift_beginAccess();
  outlined assign with take of DetailsViewControllerRepresentable(a1, v1 + v3);
  return swift_endAccess();
}

id DetailsViewControllerRepresentable.Coordinator.init(_:)(uint64_t a1)
{
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(a1, v1 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  outlined destroy of DetailsViewControllerRepresentable(a1);
  return v3;
}

uint64_t outlined assign with take of DetailsViewControllerRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailsViewControllerRepresentable(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DetailsViewControllerRepresentable.Coordinator.detailsViewController(_:didUpdateSelectedTab:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v12;
  v23 = *(a2 + 32);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v15 = *(a2 + 16);
  *(v14 + 24) = *a2;
  *(v14 + 16) = v2;
  *(v14 + 40) = v15;
  *(v14 + 56) = *(a2 + 32);
  aBlock[4] = partial apply for closure #1 in DetailsViewControllerRepresentable.Coordinator.detailsViewController(_:didUpdateSelectedTab:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);
  v17 = v2;
  outlined init with copy of DetailsTab(v22, v20);
  static DispatchQoS.unspecified.getter();
  v20[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x193AEACA0](0, v11, v7, v16);
  _Block_release(v16);

  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t closure #1 in DetailsViewControllerRepresentable.Coordinator.detailsViewController(_:didUpdateSelectedTab:)(void *a1, uint64_t a2)
{
  v19 = *a2;
  v4 = *(a2 + 8);
  v20 = *(a2 + 24);
  v21 = v4;
  v5 = type metadata accessor for DetailsViewControllerRepresentable(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x60))(isCurrentExecutor);
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  v12 = v7[8];
  v13 = v7[9];
  v14 = v7[10];
  v26 = v7[4];
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v23 = v19;
  v24 = v21;
  v25 = v20;
  outlined init with copy of DetailsTab(a2, v22);

  outlined copy of DetailsTab?(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy20CommunicationDetails0E3TabVSgGMd);
  Binding.wrappedValue.setter();
  outlined destroy of DetailsViewControllerRepresentable(v7);
  v15 = v28;
  v16 = v29;

  outlined consume of DetailsTab?(v15, v16);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DetailsViewControllerRepresentable.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DetailsViewControllerRepresentable.Coordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:) in conformance DetailsViewControllerRepresentable.Coordinator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](protocol witness for DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:) in conformance DetailsViewControllerRepresentable.Coordinator, v7, v6);
}

uint64_t protocol witness for DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:) in conformance DetailsViewControllerRepresentable.Coordinator()
{

  v1 = DetailsViewControllerDelegate.detailsViewController(_:shouldEnableCustomQuickAction:)();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t DetailsViewControllerRepresentable.init(tabs:configuration:selectedTab:styleGuide:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a5;
  v10 = a5[1];
  v11 = a5[6];
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v9;
  *(a7 + 40) = v10;
  v12 = *(a5 + 2);
  *(a7 + 48) = *(a5 + 1);
  *(a7 + 64) = v12;
  *(a7 + 80) = v11;
  v13 = a7 + *(type metadata accessor for DetailsViewControllerRepresentable(0) + 28);

  return outlined init with take of DetailsStyleGuide(a6, v13);
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance DetailsViewControllerRepresentable@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v2, v5, type metadata accessor for DetailsViewControllerRepresentable);
  v6 = type metadata accessor for DetailsViewControllerRepresentable.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  _s20CommunicationDetails0B10StyleGuideVWOcTm_0(v5, v7 + OBJC_IVAR____TtCV20CommunicationDetails34DetailsViewControllerRepresentable11Coordinator_parent, type metadata accessor for DetailsViewControllerRepresentable);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = outlined destroy of DetailsViewControllerRepresentable(v5);
  *a2 = v8;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DetailsViewControllerRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable, type metadata accessor for DetailsViewControllerRepresentable);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DetailsViewControllerRepresentable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable, type metadata accessor for DetailsViewControllerRepresentable);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance DetailsViewControllerRepresentable()
{
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DetailsViewControllerRepresentable and conformance DetailsViewControllerRepresentable, type metadata accessor for DetailsViewControllerRepresentable);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void type metadata completion function for DetailsViewControllerRepresentable()
{
  type metadata accessor for Binding<[DetailsTab]>(319, &lazy cache variable for type metadata for Binding<[DetailsTab]>, &_sSay20CommunicationDetails0B3TabVGMd);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailsViewController.ObservableConfiguration();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Binding<[DetailsTab]>(319, &lazy cache variable for type metadata for Binding<DetailsTab?>, &_s20CommunicationDetails0B3TabVSgMd);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DetailsStyleGuide();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Binding<[DetailsTab]>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = type metadata accessor for Binding();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for DetailsViewControllerRepresentable.Coordinator()
{
  result = type metadata accessor for DetailsViewControllerRepresentable(319);
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

uint64_t ParticipantView.ViewModel.contact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v13 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v4 = v15;
  v5 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v10[0] = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v10[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v11 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 96) = v4;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  return outlined init with copy of CommunicationDetailsContact(v10, v9);
}

uint64_t key path getter for ParticipantView.ViewModel.delegate : ParticipantView.ViewModel@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for ParticipantView.ViewModel.delegate : ParticipantView.ViewModel(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t ParticipantView.ViewModel.delegate.getter()
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))();

  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t ParticipantView.ViewModel.delegate.setter(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v8 = v2;
  v9 = a1;
  v10 = a2;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0))(KeyPath, partial apply for closure #1 in ParticipantView.ViewModel.delegate.setter, &v7, MEMORY[0x1E69E7CA8] + 8);

  return swift_unknownObjectRelease();
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.delegate.setter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__delegate);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void (*ParticipantView.ViewModel.delegate.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ParticipantView.ViewModel._delegate.modify();
  return ParticipantView.ViewModel.delegate.modify;
}

void ParticipantView.ViewModel.delegate.modify(void *a1)
{
  ParticipantView.ViewModel.delegate.modify(a1);
}

{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

unint64_t lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel()
{
  result = lazy protocol witness table cache variable for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel;
  if (!lazy protocol witness table cache variable for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel)
  {
    type metadata accessor for ParticipantView.ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel);
  }

  return result;
}

uint64_t type metadata accessor for ParticipantView.ViewModel()
{
  result = type metadata singleton initialization cache for ParticipantView.ViewModel;
  if (!type metadata singleton initialization cache for ParticipantView.ViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ParticipantView.ViewModel.__allocating_init(contact:configuration:participantGridActionHandlers:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = &v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__delegate];
  *v13 = 0;
  v13[1] = 0;
  v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedRemoveFromGroup] = 0;
  v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedBlockContact] = 0;
  ObservationRegistrar.init()();
  v14 = &v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact];
  v15 = *(a1 + 80);
  *(v14 + 4) = *(a1 + 64);
  *(v14 + 5) = v15;
  *(v14 + 12) = *(a1 + 96);
  v16 = *(a1 + 16);
  *v14 = *a1;
  *(v14 + 1) = v16;
  v17 = *(a1 + 48);
  *(v14 + 2) = *(a1 + 32);
  *(v14 + 3) = v17;
  *&v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration] = a2;
  *&v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers] = a3;

  v18 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v13 = a4;
  v13[1] = a5;
  *&v12[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_supportedContextMenuSections] = &outlined read-only object #0 of ParticipantView.ViewModel.__allocating_init(contact:configuration:participantGridActionHandlers:delegate:);
  v21.receiver = v12;
  v21.super_class = v6;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  swift_unknownObjectRelease();
  return v19;
}

id ParticipantView.ViewModel.init(contact:configuration:participantGridActionHandlers:delegate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = &v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__delegate];
  *v11 = 0;
  v11[1] = 0;
  v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedRemoveFromGroup] = 0;
  v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel__selectedBlockContact] = 0;
  ObservationRegistrar.init()();
  v12 = &v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact];
  v13 = *(a1 + 80);
  *(v12 + 4) = *(a1 + 64);
  *(v12 + 5) = v13;
  *(v12 + 12) = *(a1 + 96);
  v14 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 1) = v14;
  v15 = *(a1 + 48);
  *(v12 + 2) = *(a1 + 32);
  *(v12 + 3) = v15;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration] = a2;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers] = a3;

  v16 = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v11 = a4;
  v11[1] = a5;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_supportedContextMenuSections] = &outlined read-only object #0 of ParticipantView.ViewModel.init(contact:configuration:participantGridActionHandlers:delegate:);
  v19.receiver = v5;
  v19.super_class = type metadata accessor for ParticipantView.ViewModel();
  v17 = objc_msgSendSuper2(&v19, sel_init);

  swift_unknownObjectRelease();
  return v17;
}

uint64_t ParticipantView.ViewModel.selectedRemoveFromGroup.setter(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7 = MEMORY[0x1EEE9AC00](KeyPath);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1D0))(v7);
  }

  return result;
}

uint64_t key path getter for ParticipantView.ViewModel.selectedRemoveFromGroup : ParticipantView.ViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

void (*ParticipantView.ViewModel.selectedRemoveFromGroup.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ParticipantView.ViewModel._selectedRemoveFromGroup.modify();
  return ParticipantView.ViewModel.selectedRemoveFromGroup.modify;
}

uint64_t key path getter for ParticipantView.ViewModel.selectedBlockContact : ParticipantView.ViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x110))();
  *a2 = result & 1;
  return result;
}

uint64_t ParticipantView.ViewModel.selectedRemoveFromGroup.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C8))();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.selectedRemoveFromGroup.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

void (*ParticipantView.ViewModel.selectedBlockContact.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))(KeyPath);

  v4[5] = OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type ParticipantView.ViewModel and conformance ParticipantView.ViewModel();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = ParticipantView.ViewModel._selectedBlockContact.modify();
  return ParticipantView.ViewModel.selectedBlockContact.modify;
}

uint64_t key path getter for ParticipantView.ViewModel.presentSafetyCheck : ParticipantView.ViewModel@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result & 1;
  return result;
}

uint64_t ParticipantView.ViewModel.presentSafetyCheck.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration);
  v2 = [*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16) identifier];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = (*(*v1 + 712))();
  if (!*(v6 + 16))
  {

    goto LABEL_5;
  }

  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v5);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(*(v6 + 56) + v7);
LABEL_6:

  return v10;
}

uint64_t ParticipantView.ViewModel.presentSafetyCheck.setter(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration);
  v4 = [*(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16) identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v3 + 728))(v14);
  v10 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v10;
  *v10 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v5, v7, isUniquelyReferenced_nonNull_native);

  *v10 = v13;

  return v8(v14, 0);
}

uint64_t (*ParticipantView.ViewModel.presentSafetyCheck.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ParticipantView.ViewModel.presentSafetyCheck.getter() & 1;
  return ParticipantView.ViewModel.presentSafetyCheck.modify;
}

uint64_t ParticipantView.ViewModel.isPhoneCallAvailable.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xD8))();
  v2 = v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));

  return v2 & 1;
}

uint64_t ParticipantView.ViewModel.isFaceTimeVideoAvailable.getter()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0x108))();
  v2 = v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));

  return v2 & 1;
}

BOOL ParticipantView.ViewModel.isEmailAvailable.getter()
{
  v1 = [objc_opt_self() bestGuessEmailAddressForContact:*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16) sendingAddressDomain:0];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 != 0;
}

uint64_t ParticipantView.ViewModel.isScreenSharingAvailable()()
{
  v1[54] = v0;
  type metadata accessor for MainActor();
  v1[55] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[56] = v3;
  v1[57] = v2;

  return MEMORY[0x1EEE6DFA0](ParticipantView.ViewModel.isScreenSharingAvailable(), v3, v2);
}

{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 432)) + 0xA8))();
  *(v0 + 464) = v1;
  if (v1)
  {
    v3 = v2;
    v4 = *(v0 + 432);
    ObjectType = swift_getObjectType();
    v6 = (v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v7 = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v8 = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    *(v0 + 152) = *(v4 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
    *(v0 + 136) = v8;
    *(v0 + 120) = v7;
    v9 = v6[3];
    v10 = v6[4];
    v11 = v6[5];
    *(v0 + 216) = *(v6 + 12);
    *(v0 + 200) = v11;
    *(v0 + 184) = v10;
    *(v0 + 168) = v9;
    v12 = v6[2];
    v13 = *v6;
    *(v0 + 240) = v6[1];
    *(v0 + 256) = v12;
    *(v0 + 224) = v13;
    v15 = v6[4];
    v14 = v6[5];
    v16 = v6[3];
    *(v0 + 320) = *(v6 + 12);
    *(v0 + 288) = v15;
    *(v0 + 304) = v14;
    *(v0 + 272) = v16;
    v17 = *(v3 + 32);
    outlined init with copy of CommunicationDetailsContact(v0 + 120, v0 + 328);
    v21 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 472) = v18;
    *v18 = v0;
    v18[1] = ParticipantView.ViewModel.isScreenSharingAvailable();

    return v21(v0 + 224, ObjectType, v3);
  }

  else
  {

    v20 = *(v0 + 8);

    return v20(0);
  }
}

{

  v1 = *(v0 + 480);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t ParticipantView.ViewModel.isScreenSharingAvailable()(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 480) = a1;

  swift_unknownObjectRelease();
  v4 = *(v3 + 18);
  *(v3 + 4) = *(v3 + 17);
  *(v3 + 5) = v4;
  *(v3 + 6) = *(v3 + 19);
  v3[14] = v2[40];
  v5 = *(v3 + 15);
  *(v3 + 1) = *(v3 + 14);
  *(v3 + 2) = v5;
  *(v3 + 3) = *(v3 + 16);
  outlined destroy of CommunicationDetailsContact((v3 + 2));
  v6 = v2[57];
  v7 = v2[56];

  return MEMORY[0x1EEE6DFA0](ParticipantView.ViewModel.isScreenSharingAvailable(), v7, v6);
}

Swift::Void __swiftcall ParticipantView.ViewModel.startPhoneCall()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xF0))();
  v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));
}

Swift::Void __swiftcall ParticipantView.ViewModel.startFaceTimeVideoCall()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0x120))();
  v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 40), *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48));
}

Swift::Void __swiftcall ParticipantView.ViewModel.startMessage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v21 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  URLComponents.init(string:)();
  v16 = *(v4 + 48);
  if (!v16(v15, 1, v3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd);
    v22 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for URLQueryItem();
    v21 = v6;
    *(swift_allocObject() + 16) = xmmword_1901E6CD0;
    URLQueryItem.init(name:value:)();
    v9 = v22;
    URLComponents.queryItems.setter();
    v6 = v21;
  }

  if (v16(v15, 1, v3))
  {
    v17 = type metadata accessor for URL();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  else
  {
    (*(v4 + 16))(v6, v15, v3);
    URLComponents.url.getter();
    (*(v4 + 8))(v6, v3);
  }

  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  _s10Foundation3URLVSgWOcTm_0(v12, v9, &_s10Foundation3URLVSgMd);
  v19 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  outlined init with take of URL?(v9, v20 + v19);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in ParticipantView.ViewModel.startMessage(), v20);

  outlined destroy of URL?(v12, &_s10Foundation3URLVSgMd);
  outlined destroy of URL?(v15, &_s10Foundation13URLComponentsVSgMd);
}

uint64_t closure #1 in ParticipantView.ViewModel.startMessage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), 0, 0);
}

uint64_t closure #1 in ParticipantView.ViewModel.startMessage()()
{
  *(v0 + 192) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 200) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), v2, v1);
}

{
  v1 = *(v0 + 192);

  *(v0 + 208) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), 0, 0);
}

{
  v1 = v0[23];
  _s10Foundation3URLVSgWOcTm_0(v0[19], v1, &_s10Foundation3URLVSgMd);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = 0;
  if (v4 != 1)
  {
    v7 = v0[23];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v3 + 8))(v7, v2);
  }

  v0[27] = v6;
  v9 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v12 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = closure #1 in ParticipantView.ViewModel.startMessage();
  swift_continuation_init();
  v0[17] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_38_0;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startMessage(), 0, 0);
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  **(v0 + 144) = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  _s10Foundation3URLVSgWOcTm_0(a3, v25 - v10, &_sScPSgMd);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of URL?(v11, &_sScPSgMd);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of URL?(a3, &_sScPSgMd);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of URL?(a3, &_sScPSgMd);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Void __swiftcall ParticipantView.ViewModel.startEmail()()
{
  v1 = type metadata accessor for Logger();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v44 = swift_allocBox();
  v12 = v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v42 = *(v14 + 56);
  v42(v12, 1, 1, v13);
  v15 = [objc_allocWithZone(MEMORY[0x1E695CEF0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1901E6230;
  v38 = v0;
  v17 = *&v0[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16];
  *(v16 + 32) = v17;
  type metadata accessor for CNContact();
  v18 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v43 = v15;
  v20 = [v15 mailUrlForContacts:isa needsEmailAddresses:1];

  if (v20)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v42(v10, v21, 1, v13);
  outlined assign with take of URL?(v10, v12);
  _s10Foundation3URLVSgWOcTm_0(v12, v7, &_s10Foundation3URLVSgMd);
  v22 = (*(v14 + 48))(v7, 1, v13);
  outlined destroy of URL?(v7, &_s10Foundation3URLVSgMd);
  if (v22 == 1)
  {
    v23 = v18;
    v24 = Logger.detailsViewController.unsafeMutableAddressor();
    v26 = v39;
    v25 = v40;
    v27 = v41;
    (*(v40 + 16))(v39, v24, v41);
    v28 = v38;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v23;
      *v32 = v23;
      v33 = v23;
      _os_log_impl(&dword_190119000, v29, v30, "Unable to send email from context menu to non-email handle for contact %@", v31, 0xCu);
      outlined destroy of URL?(v32, &_sSo8NSObjectCSgMd);
      MEMORY[0x193AEBB30](v32, -1, -1);
      MEMORY[0x193AEBB30](v31, -1, -1);
    }

    (*(v25 + 8))(v26, v27);
  }

  else
  {
    v34 = type metadata accessor for TaskPriority();
    v35 = v37;
    (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v44;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v35, &async function pointer to partial apply for closure #1 in ParticipantView.ViewModel.startEmail(), v36);
  }
}

uint64_t closure #1 in ParticipantView.ViewModel.startEmail()(uint64_t a1)
{
  v1[21] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v1[25] = swift_task_alloc();
  v1[26] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), 0, 0);
}

uint64_t closure #1 in ParticipantView.ViewModel.startEmail()()
{
  *(v0 + 216) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), v2, v1);
}

{
  v1 = *(v0 + 216);

  *(v0 + 232) = [v1 sharedApplication];

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), 0, 0);
}

{
  v2 = v0[25];
  v1 = v0[26];
  swift_beginAccess();
  _s10Foundation3URLVSgWOcTm_0(v1, v2, &_s10Foundation3URLVSgMd);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v7 = v0[25];
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  v0[30] = v6;
  v9 = v0[29];
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = closure #1 in ParticipantView.ViewModel.startEmail();
  swift_continuation_init();
  v0[17] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_7;
  [v9 openURL:v6 withCompletionHandler:v0 + 10];
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ParticipantView.ViewModel.startEmail(), 0, 0);
}

{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  **(v0 + 168) = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall ParticipantView.ViewModel.shareScreen()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v5 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v22 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
    v23 = v5;
    v6 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v19[1] = v6;
    v7 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v9 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v8 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v20 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
    v21 = v7;
    v10 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v16 = v22;
    v17 = v10;
    v12 = v9;
    v13 = v8;
    v24 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v18 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v14 = v20;
    v15 = v4;
    v11 = *(v2 + 24);
    outlined init with copy of CommunicationDetailsContact(v19, v25);
    v11(&v12, ObjectType, v2);
    swift_unknownObjectRelease();
    v25[4] = v16;
    v25[5] = v17;
    v26 = v18;
    v25[0] = v12;
    v25[1] = v13;
    v25[2] = v14;
    v25[3] = v15;
    outlined destroy of CommunicationDetailsContact(v25);
  }
}

Swift::Void __swiftcall ParticipantView.ViewModel.requestToShareScreen()()
{
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0xA8))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v5 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v22 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
    v23 = v5;
    v6 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v19[0] = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v19[1] = v6;
    v7 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
    v9 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
    v8 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
    v20 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
    v21 = v7;
    v10 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
    v16 = v22;
    v17 = v10;
    v12 = v9;
    v13 = v8;
    v24 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v18 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
    v14 = v20;
    v15 = v4;
    v11 = *(v2 + 16);
    outlined init with copy of CommunicationDetailsContact(v19, v25);
    v11(&v12, ObjectType, v2);
    swift_unknownObjectRelease();
    v25[4] = v16;
    v25[5] = v17;
    v26 = v18;
    v25[0] = v12;
    v25[1] = v13;
    v25[2] = v14;
    v25[3] = v15;
    outlined destroy of CommunicationDetailsContact(v25);
  }
}

uint64_t ParticipantView.ViewModel.showContactCard(using:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v4 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v21 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v18[0] = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v18[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v8 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v7 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v19 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
  v20 = v6;
  v9 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v15 = v21;
  v16 = v9;
  v11 = v8;
  v12 = v7;
  v23 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v17 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v13 = v19;
  v14 = v3;
  outlined init with copy of CommunicationDetailsContact(v18, v24);
  static CommunicationDetailsContactCard.pushContactCard(for:from:)(&v11, a1);
  v24[4] = v15;
  v24[5] = v16;
  v25 = v17;
  v24[0] = v11;
  v24[1] = v12;
  v24[2] = v13;
  v24[3] = v14;
  return outlined destroy of CommunicationDetailsContact(v24);
}

Swift::Void __swiftcall ParticipantView.ViewModel.blockContact()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_configuration);
  v3 = *(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v4 = [v3 identifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = (*(*v2 + 776))(v18);
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
    *v10 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    *v10 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = v5;
  *(v15 + 5) = v7;
  v16 = v8(v18, 0);
  v17 = (*((*MEMORY[0x1E69E7D40] & **(v1 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xA8))(v16);
  v17(v3);
}

Swift::Void __swiftcall ParticipantView.ViewModel.unblockContact()()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & **(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_participantGridActionHandlers)) + 0xC0))();
  v1(*(v0 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16));
}

void ParticipantView.ViewModel.createNewContact(using:from:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v5 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v24 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 64);
  v25 = v5;
  v6 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v21[0] = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v21[1] = v6;
  v7 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 48);
  v9 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact);
  v8 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16);
  v22 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 32);
  v23 = v7;
  v10 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 80);
  v18 = v24;
  v19 = v10;
  v14 = v9;
  v15 = v8;
  v26 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v20 = *(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 96);
  v16 = v22;
  v17 = v4;
  outlined init with copy of CommunicationDetailsContact(v21, v27);
  v11 = static CommunicationDetailsContactCard.createNewContactViewController(for:)(&v14);
  v27[4] = v18;
  v27[5] = v19;
  v28 = v20;
  v27[0] = v14;
  v27[1] = v15;
  v27[2] = v16;
  v27[3] = v17;
  outlined destroy of CommunicationDetailsContact(v27);
  [v11 setDelegate_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  if (a1)
  {
    LOBYTE(v14) = 0;
    v13 = v12;
    (*(*a1 + 104))(v12, &v14, 1);
  }

  else
  {
  }
}

void ParticipantView.ViewModel.addToExistingContact(using:from:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  [v4 setAllowsCancel_];
  [v4 setAutocloses_];
  [v4 setMode_];
  v7 = [objc_opt_self() predicateWithValue_];
  [v4 setPredicateForSelectionOfContact_];
  [v4 setAllowsNamePicking_];
  [v4 setDelegate_];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  if (a1)
  {
    v8 = 0;
    v6 = v5;
    (*(*a1 + 104))(v5, &v8, 1);
  }

  else
  {
  }
}

id ParticipantView.ViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ParticipantView.ViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantView.ViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ParticipantView.ViewModel.contactPicker(_:didSelect:)(CNContactPickerViewController *_, CNContact didSelect)
{
  v4 = [objc_opt_self() viewControllerForUpdatingContact:didSelect.super.isa withPropertiesFromContact:*(v2 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView9ViewModel_contact + 16)];
  if (v4)
  {
    v7 = v4;
    [v4 setDelegate_];
    v5 = [(CNContactPickerViewController *)_ navigationController];
    if (v5)
    {
      v6 = v5;
      [v5 pushViewController:v7 animated:1];
    }
  }
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.startMessage()(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in ParticipantView.ViewModel.startMessage();

  return closure #1 in ParticipantView.ViewModel.startMessage()(a1, v6, v7, v1 + v5);
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.startEmail()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in ParticipantView.ViewModel.startEmail();

  return closure #1 in ParticipantView.ViewModel.startEmail()(a1);
}

uint64_t partial apply for closure #1 in ParticipantView.ViewModel.startEmail()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t type metadata completion function for ParticipantView.ViewModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t dispatch thunk of ParticipantView.ViewModel.isScreenSharingAvailable()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x158);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of ParticipantView.ViewModel.isScreenSharingAvailable();

  return v5();
}

uint64_t dispatch thunk of ParticipantView.ViewModel.isScreenSharingAvailable()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t _s10Foundation3URLVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_33(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_33TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSb_TG5TA_33TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id DetailsHeaderContainer.HeaderContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailsHeaderContainer.HeaderContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance DetailsHeaderContainer()
{
  v1 = *v0;
  v2 = type metadata accessor for DetailsHeaderContainer.HeaderContainerView();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy] = v1;
  v8.receiver = v3;
  v8.super_class = v2;

  v4 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = *(*v1 + 664);
  v6 = v4;
  v5(v4);

  return v6;
}

uint64_t protocol witness for UIViewRepresentable.updateUIView(_:context:) in conformance DetailsHeaderContainer()
{

  specialized DetailsHeaderContainer.HeaderContainerView.contentOffsetProxy.setter(v0);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance DetailsHeaderContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance DetailsHeaderContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance DetailsHeaderContainer()
{
  lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void DetailsScrollView.DetailsScrollBehavior.updateTarget(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScrollTarget.rect.getter();
  MinY = CGRectGetMinY(v12);
  v5 = *(*a3 + 560);
  v6 = v5() * 0.5;
  ScrollTarget.rect.getter();
  if (MinY >= v6)
  {
    v11 = CGRectGetMinY(*&v7);
    if (v11 >= v5())
    {
      return;
    }

    ScrollTarget.rect.getter();
    CGRectGetMinX(v15);
    v5();
    ScrollTarget.rect.getter();
    CGRectGetWidth(v16);
    ScrollTarget.rect.getter();
    CGRectGetHeight(v17);
  }

  else
  {
    CGRectGetMinX(*&v7);
    ScrollTarget.rect.getter();
    CGRectGetWidth(v13);
    ScrollTarget.rect.getter();
    CGRectGetHeight(v14);
  }

  ScrollTarget.rect.setter();
}

uint64_t protocol witness for ScrollTargetBehavior.updateTarget(_:context:) in conformance DetailsScrollView<A>.DetailsScrollBehavior(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsScrollView.DetailsScrollBehavior.updateTarget(_:context:)(a1, v3, *v1);
}

uint64_t property wrapper backing initializer of DetailsScrollView.scrollPosition(uint64_t a1)
{
  v2 = type metadata accessor for ScrollPosition();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  State.init(wrappedValue:)();
  return (*(v3 + 8))(a1, v2);
}

uint64_t DetailsScrollView.init(contentOffsetProxy:shouldInsetAutomatically:_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ScrollPosition();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsScrollView();
  ScrollPosition.init<A>(idType:edge:)();
  property wrapper backing initializer of DetailsScrollView.scrollPosition(v10);
  (*(*a1 + 544))(1);
  *(a4 + 8) = a1;
  *a4 = a2;
  *(a4 + 1) = 0;

  v12 = a3(v11);
  (*(*a1 + 456))(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(y:)();
  State.wrappedValue.setter();
}

uint64_t DetailsScrollView.init(contentOffsetProxy:shouldInsetAutomatically:showsScrollIndicators:_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ScrollPosition();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DetailsScrollView();
  ScrollPosition.init<A>(idType:edge:)();
  property wrapper backing initializer of DetailsScrollView.scrollPosition(v12);
  (*(*a1 + 544))(1);
  *(a5 + 8) = a1;
  *a5 = a2;
  *(a5 + 1) = a3;

  v14 = a4(v13);
  (*(*a1 + 456))(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(y:)();
  State.wrappedValue.setter();
}

void DetailsScrollView.scrollIfNeeded()()
{
  v1 = type metadata accessor for ScrollPosition();
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *(v0 + 8);
  v4 = *(*v3 + 816);
  if ((v4(v2) & 1) != 0 || ((*(*v3 + 488))() & 1) != 0 || ((*(*v3 + 720))() & 1) == 0 && (v6 = (*(*v3 + 608))(v7), vabdd_f64(v7[0], (*(*v3 + 456))(v6)) > 0.1))
  {
    (*(*v3 + 456))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd);
    State.wrappedValue.getter();
    ScrollPosition.scrollTo(y:)();
    v5 = State.wrappedValue.setter();
    if ((v4)(v5))
    {
      (*(*v3 + 496))(0);
    }
  }
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance DetailsScrollView<A>.HeaderBodyLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance DetailsScrollView<A>.HeaderBodyLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981820]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance DetailsScrollView<A>.HeaderBodyLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981828]);
}

void (*protocol witness for Animatable.animatableData.modify in conformance DetailsScrollView<A>.HeaderBodyLayout(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance DetailsScrollView<A>.HeaderBodyLayout;
}

void protocol witness for Animatable.animatableData.modify in conformance DetailsScrollView<A>.HeaderBodyLayout(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t DetailsScrollView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v217 = a2;
  v216 = type metadata accessor for ContentMarginPlacement();
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v214 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for ScrollIndicatorVisibility();
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v223 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = &v161 - v6;
  v233 = *(a1 - 8);
  v225 = *(v233 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v229 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = a1;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  type metadata accessor for DetailsScrollView.HeaderBodyLayout();
  swift_getWitnessTable();
  type metadata accessor for _LayoutRoot();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  v244 = v9;
  v245 = v10;
  v234 = v9;
  v232 = v10;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v11 = type metadata accessor for _VariadicView.Tree();
  WitnessTable = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v248 = WitnessTable;
  v249 = v13;
  v230 = v11;
  v228 = swift_getWitnessTable();
  *&v14 = COERCE_DOUBLE(type metadata accessor for ScrollView());
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v161 - v16;
  v18 = type metadata accessor for DetailsScrollView.DetailsScrollBehavior();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v244 = *&v14;
  v245 = v18;
  v21 = v18;
  v224 = v18;
  v246 = v19;
  v247 = v20;
  v227 = v19;
  v22 = v20;
  v226 = v20;
  *&v23 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v180 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v162 = &v161 - v24;
  v244 = *&v14;
  v245 = v21;
  v246 = v19;
  v247 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v244 = *&v23;
  v245 = MEMORY[0x1E69E7DE0];
  v163 = v23;
  v27 = MEMORY[0x1E69E7DE0];
  v246 = OpaqueTypeConformance2;
  v247 = v26;
  v164 = OpaqueTypeConformance2;
  v28 = v26;
  v222 = v26;
  *&v29 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v182 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  *&v218 = &v161 - v30;
  v244 = *&v23;
  v245 = v27;
  v246 = OpaqueTypeConformance2;
  v247 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v244 = *&v29;
  v245 = MEMORY[0x1E69E6370];
  v32 = *&v29;
  v167 = v29;
  v33 = MEMORY[0x1E69E6370];
  v246 = v31;
  v247 = MEMORY[0x1E69E6388];
  v34 = v31;
  v168 = v31;
  v35 = MEMORY[0x1E69E6388];
  *&v36 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v183 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v219 = &v161 - v37;
  v244 = v32;
  v245 = v33;
  v246 = v34;
  v247 = v35;
  v38 = swift_getOpaqueTypeConformance2();
  v244 = *&v36;
  v245 = v33;
  v39 = *&v36;
  v165 = v36;
  v40 = v33;
  v246 = v38;
  v247 = v35;
  v41 = v38;
  v166 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v184 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v220 = &v161 - v42;
  *&v43 = COERCE_DOUBLE(type metadata accessor for ModifiedContent());
  v188 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v179 = &v161 - v44;
  v244 = v39;
  v245 = v40;
  v246 = v41;
  v247 = v35;
  v176 = swift_getOpaqueTypeConformance2();
  v242 = v176;
  v243 = MEMORY[0x1E69805D0];
  v45 = swift_getWitnessTable();
  v244 = *&v43;
  v245 = v45;
  v46 = *&v43;
  v174 = v43;
  v47 = v45;
  v175 = v45;
  *&v48 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v187 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  *&v221 = &v161 - v49;
  v244 = v46;
  v245 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = lazy protocol witness table accessor for type DetailsContentOffsetProxy.ScrollMetrics and conformance DetailsContentOffsetProxy.ScrollMetrics();
  v244 = *&v48;
  v245 = &type metadata for DetailsContentOffsetProxy.ScrollMetrics;
  v52 = *&v48;
  v177 = v48;
  v246 = v50;
  v247 = v51;
  v178 = v50;
  v171 = v51;
  *&v53 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v185 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v173 = &v161 - v54;
  v244 = v52;
  v245 = &type metadata for DetailsContentOffsetProxy.ScrollMetrics;
  v246 = v50;
  v247 = v51;
  v55 = swift_getOpaqueTypeConformance2();
  v244 = *&v53;
  v245 = v55;
  v169 = v53;
  v56 = v55;
  v170 = v55;
  v57 = swift_getOpaqueTypeMetadata2();
  v194 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v172 = &v161 - v58;
  v195 = v59;
  *&v60 = COERCE_DOUBLE(type metadata accessor for ModifiedContent());
  v192 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v191 = &v161 - v61;
  v244 = *&v53;
  v245 = v56;
  v189 = swift_getOpaqueTypeConformance2();
  v240 = v189;
  v241 = MEMORY[0x1E6980A30];
  v62 = swift_getWitnessTable();
  v244 = *&v60;
  v245 = v62;
  *&v63 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v199 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v197 = &v161 - v64;
  v193 = v60;
  v244 = *&v60;
  v245 = v62;
  v190 = v62;
  v65 = swift_getOpaqueTypeConformance2();
  v244 = *&v63;
  v245 = v65;
  *&v66 = COERCE_DOUBLE(swift_getOpaqueTypeMetadata2());
  v200 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v198 = &v161 - v67;
  v201 = v63;
  v244 = *&v63;
  v245 = v65;
  v196 = v65;
  v68 = swift_getOpaqueTypeConformance2();
  v207 = v66;
  v244 = *&v66;
  v245 = v68;
  v202 = v68;
  v69 = swift_getOpaqueTypeMetadata2();
  v205 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v203 = &v161 - v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMd);
  v208 = v69;
  v210 = type metadata accessor for ModifiedContent();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v204 = &v161 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v206 = &v161 - v73;
  static Axis.Set.vertical.getter();
  v74 = v234;
  v235 = v234;
  v75 = v232;
  v236 = v232;
  v76 = v231;
  v237 = v231;
  ScrollView.init(_:showsIndicators:content:)();
  v244 = *(v76 + 8);
  v77 = v244;

  swift_checkMetadataState();
  v78 = v162;
  View.scrollTargetBehavior<A>(_:)();

  v79 = (*(v15 + 8))(v17, v14);
  v244 = (*(**&v77 + 440))(v79);
  v80 = v233;
  v81 = *(v233 + 16);
  v227 = v233 + 16;
  v226 = v81;
  v82 = v229;
  v83 = v76;
  v84 = v186;
  v81(v229, v83, v186);
  v230 = *(v80 + 80);
  v225 += (v230 + 32) & ~v230;
  v85 = (v230 + 32) & ~v230;
  v86 = swift_allocObject();
  *(v86 + 16) = v74;
  *(v86 + 24) = v75;
  v224 = *(v80 + 32);
  v87 = v85;
  v228 = v85;
  v224(v86 + v85, v82, v84);
  v233 = v80 + 32;
  v88 = v163;
  View.onChange<A>(of:initial:_:)();

  v89 = (*(v180 + 8))(v78, v88);
  LOBYTE(v244) = (*(**&v77 + 720))(v89) & 1;
  v226(v82, v231, v84);
  v90 = swift_allocObject();
  v91 = v232;
  *(v90 + 16) = v234;
  *(v90 + 24) = v91;
  v92 = v224;
  v224(v90 + v87, v82, v84);
  v93 = v167;
  v94 = *&v218;
  View.onChange<A>(of:initial:_:)();

  v95 = (*(v182 + 8))(v94, v93);
  v96 = *(**&v77 + 816);
  v218 = v77;
  LOBYTE(v244) = v96(v95) & 1;
  v97 = v229;
  v98 = v231;
  v99 = v226;
  v226(v229, v231, v84);
  v100 = swift_allocObject();
  v101 = v234;
  *(v100 + 16) = v234;
  *(v100 + 24) = v91;
  v102 = v97;
  v92(v100 + v228, v97, v84);
  v103 = v165;
  v104 = v219;
  View.onChange<A>(of:initial:_:)();

  (*(v183 + 8))(v104, v103);
  v99(v102, v98, v84);
  v105 = swift_allocObject();
  v106 = v232;
  *(v105 + 16) = v101;
  *(v105 + 24) = v106;
  v107 = v228;
  v224(v105 + v228, v102, v84);
  v108 = v179;
  v109 = OpaqueTypeMetadata2;
  v110 = v220;
  View.onAppear(perform:)();

  (*(v184 + 8))(v110, v109);
  v111 = v229;
  v112 = v226;
  v226(v229, v231, v84);
  v113 = swift_allocObject();
  v114 = v232;
  *(v113 + 16) = v234;
  *(v113 + 24) = v114;
  v115 = v224;
  v224(v113 + v107, v111, v84);
  v116 = v174;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v188 + 8))(v108, v116);
  v117 = v231;
  v112(v111, v231, v84);
  v118 = swift_allocObject();
  *(v118 + 16) = v234;
  *(v118 + 24) = v114;
  v119 = v84;
  v115(v118 + v228, v111, v84);
  v120 = v173;
  v121 = v177;
  v122 = v221;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v187 + 8))(v122, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd);
  v123 = v117;
  v124 = v172;
  v125 = v211;
  State.projectedValue.getter();
  static UnitPoint.top.getter();
  v126 = v169;
  View.scrollPosition(_:anchor:)();
  outlined destroy of Binding<ScrollPosition>(v125, &_s7SwiftUI7BindingVyAA14ScrollPositionVGMd);
  (*(v185 + 8))(v120, v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd);
  inited = swift_initStackObject();
  v221 = xmmword_1901E6240;
  *(inited + 16) = xmmword_1901E6240;
  LOBYTE(v107) = static Edge.Set.top.getter();
  *(inited + 32) = v107;
  v128 = static Edge.Set.bottom.getter();
  *(inited + 33) = v128;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v107)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v128)
  {
    Edge.Set.init(rawValue:)();
  }

  v129 = v197;
  static SafeAreaRegions.all.getter();
  v130 = v191;
  v131 = v195;
  View.ignoresSafeArea(_:edges:)();
  (*(v194 + 8))(v124, v131);
  v132 = v193;
  View.scrollIndicatorsFlash(onAppear:)();
  v133 = (*(v192 + 8))(v130, v132);
  if (*(v123 + 1))
  {
    MEMORY[0x193AE9E10](v133);
  }

  else
  {
    MEMORY[0x193AE9E00](v133);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4AxisO3SetVGMd);
  v134 = swift_initStackObject();
  *(v134 + 16) = v221;
  v135 = static Axis.Set.vertical.getter();
  *(v134 + 32) = v135;
  v136 = static Axis.Set.horizontal.getter();
  *(v134 + 33) = v136;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v135)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v136)
  {
    Axis.Set.init(rawValue:)();
  }

  v137 = v198;
  v138 = v223;
  v139 = v201;
  View.scrollIndicators(_:axes:)();
  (*(v212 + 8))(v138, v213);
  (*(v199 + 8))(v129, v139);
  v140 = static Edge.Set.top.getter();
  (*(**&v218 + 216))();
  v142 = v141;
  v143 = v214;
  static ContentMarginPlacement.scrollIndicators.getter();
  v144 = v203;
  v145 = v140;
  v146 = *&v207;
  v147 = v202;
  MEMORY[0x193AEA1C0](v145, v142, 0, v143, v207, v202);
  (*(v215 + 8))(v143, v216);
  (*(v200 + 8))(v137, COERCE_DOUBLE(*&v146));
  v148 = v229;
  v226(v229, v123, v119);
  v149 = swift_allocObject();
  v150 = v232;
  *(v149 + 16) = v234;
  *(v149 + 24) = v150;
  v115(v149 + v228, v148, v119);
  v244 = v146;
  v245 = v147;
  v151 = swift_getOpaqueTypeConformance2();
  v152 = v204;
  v153 = v208;
  View.onGeometryChange<A>(of:do:)();

  (*(v205 + 8))(v144, v153);
  v154 = lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(&lazy protocol witness table cache variable for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>, &_s7SwiftUI23_GeometryActionModifierVy12CoreGraphics7CGFloatVGMd);
  v238 = v151;
  v239 = v154;
  v155 = v210;
  swift_getWitnessTable();
  v156 = v209;
  v157 = *(v209 + 16);
  v158 = v206;
  v157(v206, v152, v155);
  v159 = *(v156 + 8);
  v159(v152, v155);
  v157(v217, v158, v155);
  return (v159)(v158, v155);
}

uint64_t closure #1 in DetailsScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v21 = a1;
  v22 = a4;
  type metadata accessor for DetailsScrollView.HeaderBodyLayout();
  swift_getWitnessTable();
  v6 = type metadata accessor for _LayoutRoot();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  v25 = a2;
  v26 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v20[1] = v6;
  v7 = type metadata accessor for _VariadicView.Tree();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  MEMORY[0x1EEE9AC00](v14);
  v20[-4] = a2;
  v20[-3] = a3;
  v20[-2] = v21;
  partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DetailsScrollView.body.getter(partial apply for closure #1 in closure #1 in DetailsScrollView.body.getter, &v20[-6], v10);

  WitnessTable = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v23 = WitnessTable;
  v24 = v16;
  swift_getWitnessTable();
  v17 = *(v8 + 16);
  v17(v13, v10, v7);
  v18 = *(v8 + 8);
  v18(v10, v7);
  v17(v22, v13, v7);
  v18(v13, v7);
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  _LayoutRoot.init(_:)();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t closure #1 in closure #1 in DetailsScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  *&v44[0] = a2;
  *(&v44[0] + 1) = a3;
  v26 = a3;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v24 - v12;
  type metadata accessor for MainActor();
  v27 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  v14 = v26;
  *(&v24 - 4) = a2;
  *(&v24 - 3) = v14;
  *(&v24 - 2) = a1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v15 = *(v8 + 16);
  v15(v29, v10, v7);
  v26 = *(v8 + 8);
  v16 = (v26)(v10, v7);
  v17 = *(a1 + 8);
  v18 = (*(*v17 + 608))(v44, v16);
  v19 = *&v44[0];
  v20 = *(*v17 + 216);
  (v20)(v18);
  v20();
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v39 = v17;
  BYTE8(v39) = 1;
  *&v40 = 0;
  *(&v40 + 1) = v19;
  v21 = v29;
  v15(v10, v29, v7);
  v35 = v41;
  v36 = v42;
  v37 = v43;
  v33 = v39;
  v34 = v40;
  v38[0] = v10;
  v38[1] = &v33;

  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout>(&v39, v44);
  v32[0] = v7;
  v32[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  v30 = WitnessTable;
  v31 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  static ViewBuilder.buildBlock<each A>(_:)(v38, 2uLL, v32);
  outlined destroy of Binding<ScrollPosition>(&v39, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  v22 = v26;
  v26(v21, v7);
  v44[2] = v35;
  v44[3] = v36;
  v44[4] = v37;
  v44[0] = v33;
  v44[1] = v34;
  outlined destroy of Binding<ScrollPosition>(v44, &_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  v22(v10, v7);
}

uint64_t closure #1 in closure #1 in closure #1 in DetailsScrollView.body.getter@<X0>(unsigned __int8 *a1@<X0>, double *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v23[2] = a4;
  v34 = a2;
  v35 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  type metadata accessor for MainActor();
  v23[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v15 = *a1;
  v16 = 0.0;
  v17 = 0.0;
  if (v15 == 1)
  {
    v17 = (*(**(a1 + 1) + 360))(isCurrentExecutor);
  }

  type metadata accessor for DetailsScrollView();
  View.listHasLazyStackBehavior()();
  v34 = a2;
  v35 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = *(v8 + 16);
  v19(v13, v10, OpaqueTypeMetadata2);
  v20 = *(v8 + 8);
  v21 = v20(v10, OpaqueTypeMetadata2);
  if (v15)
  {
    v16 = (*(**(a1 + 1) + 384))(v21);
  }

  v31 = v17;
  v32 = 0;
  v33 = v15 ^ 1;
  v34 = &v31;
  v19(v10, v13, OpaqueTypeMetadata2);
  v28 = v16;
  v29 = 0;
  v30 = v15 ^ 1;
  v35 = v10;
  v36 = &v28;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerVSgMd);
  v27[1] = OpaqueTypeMetadata2;
  v27[2] = v27[0];
  v24 = lazy protocol witness table accessor for type Spacer? and conformance <A> A?();
  v25 = OpaqueTypeConformance2;
  v26 = v24;
  static ViewBuilder.buildBlock<each A>(_:)(&v34, 3uLL, v27);
  v20(v13, OpaqueTypeMetadata2);
  v20(v10, OpaqueTypeMetadata2);
}

uint64_t static ViewBuilder.buildBlock<each A>(_:)(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t partial apply for closure #2 in DetailsScrollView.body.getter()
{
  return partial apply for closure #2 in DetailsScrollView.body.getter();
}

{
  type metadata accessor for DetailsScrollView();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsScrollView.scrollIfNeeded()();
}

uint64_t partial apply for closure #4 in DetailsScrollView.body.getter(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for DetailsScrollView();
  v3 = *a2;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v3)
  {
    DetailsScrollView.scrollIfNeeded()();
  }
}

uint64_t partial apply for closure #5 in DetailsScrollView.body.getter()
{
  type metadata accessor for DetailsScrollView();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DetailsScrollView.scrollIfNeeded()();
}

uint64_t partial apply for closure #6 in DetailsScrollView.body.getter(char a1)
{
  type metadata accessor for DetailsScrollView();
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    DetailsScrollView.scrollIfNeeded()();
  }
}

uint64_t closure #7 in DetailsScrollView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  ScrollGeometry.contentOffset.getter();
  v3 = v2;
  ScrollGeometry.contentSize.getter();
  v5 = v4;
  ScrollGeometry.containerSize.getter();
  DetailsContentOffsetProxy.ScrollMetrics.init(contentOffsetY:contentHeight:containerHeight:)(v5, 0, a1, v3, v6);
}

uint64_t partial apply for closure #8 in DetailsScrollView.body.getter(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *(*(type metadata accessor for DetailsScrollView() - 8) + 80);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = a2[3];
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(v3 + ((v5 + 32) & ~v5) + 8);
  v12[0] = v6;
  v12[1] = v7;
  v13 = v8;
  v14 = v9;
  (*(*v10 + 808))(v12);
  DetailsScrollView.scrollIfNeeded()();
}

uint64_t closure #9 in DetailsScrollView.body.getter@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.safeAreaInsets.getter();
  *a1 = v3;
  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for DetailsScrollView() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*v2 + 64);

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[13], v1);
  v6 = v0 + v4 + v2[14];
  v7 = type metadata accessor for ScrollPosition();
  (*(*(v7 - 8) + 8))(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVyAA14ScrollPositionVGMd);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #10 in DetailsScrollView.body.getter(double *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for DetailsScrollView() - 8) + 80);
  v5 = *a1;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  (*(**(v2 + ((v4 + 32) & ~v4) + 8) + 272))(isCurrentExecutor, v5);
}

void type metadata completion function for DetailsScrollView()
{
  type metadata accessor for DetailsContentOffsetProxy();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      type metadata accessor for State<ScrollPosition>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for DetailsScrollView(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for ScrollPosition();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  if (*(v9 + 84) <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v9 + 80) & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v11 + v14 + ((v10 + 16) & ~v10)) & ~v14) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v13 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v13 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  v24 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v12 & 0x80000000) != 0)
  {
    v26 = (v24 + v10 + 8) & ~v10;
    if (v7 == v13)
    {
      v27 = *(v6 + 48);

      return v27(v26, v7, v5);
    }

    else
    {
      v28 = *(v9 + 48);
      v29 = (v26 + v11 + v14) & ~v14;

      return v28(v29);
    }
  }

  else
  {
    v25 = *v24;
    if (*v24 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }
}

void storeEnumTagSinglePayload for DetailsScrollView(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = type metadata accessor for ScrollPosition();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (*(v11 + 84) <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 80) & 0xF8 | 7;
  v17 = ((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) + 8;
  if (v15 >= a3)
  {
    v20 = 0;
    v21 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) == -8)
    {
      v18 = a3 - v15 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        v24 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
        if ((v14 & 0x80000000) != 0)
        {
          v26 = (v24 + v12 + 8) & ~v12;
          if (v9 == v15)
          {
            v27 = *(v30 + 56);

            v27(v26, a2, v9, v7);
          }

          else
          {
            v28 = *(v11 + 56);
            v29 = (v26 + v13 + v16) & ~v16;

            v28(v29, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v25 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v25 = (a2 - 1);
          }

          *v24 = v25;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) == -8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(*(v10 - 8) + 64) + 7) & 0xFFFFFFF8) + ((v13 + v16 + ((v12 + 16) & ~v12)) & ~v16) != -8)
  {
    v23 = ~v15 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void type metadata accessor for State<ScrollPosition>()
{
  if (!lazy cache variable for type metadata for State<ScrollPosition>)
  {
    type metadata accessor for ScrollPosition();
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for State<ScrollPosition>);
    }
  }
}

uint64_t type metadata instantiation function for DetailsScrollView.DetailsScrollBehavior()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer()
{
  result = lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer;
  if (!lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer;
  if (!lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsHeaderContainer and conformance DetailsHeaderContainer);
  }

  return result;
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v8();
  v11 = *(v4 + 16);
  v11(v10, v7, a1);
  v12 = *(v4 + 8);
  v12(v7, a1);
  v11(a2, v10, a1);
  return (v12)(v10, a1);
}

uint64_t specialized DetailsHeaderContainer.HeaderContainerView.contentOffsetProxy.setter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy;
  v3 = *&v1[OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy];
  *&v1[OBJC_IVAR____TtCV20CommunicationDetailsP33_2DB30AA36CA0269A8F3FE974D4E6106422DetailsHeaderContainer19HeaderContainerView_contentOffsetProxy] = a1;
  v4 = *(*v3 + 664);

  v4(0);
  v5 = *(**&v1[v2] + 664);

  v6 = v1;
  v5(v1);
}

uint64_t specialized DetailsScrollView.HeaderBodyLayout.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13LayoutSubviewVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  Collection.first.getter();
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Binding<ScrollPosition>(v8, &_s7SwiftUI13LayoutSubviewVSgMd);
  }

  v12[8] = a2 & 1;
  v12[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  return (*(v10 + 8))(v8, v9);
}

uint64_t specialized DetailsScrollView.HeaderBodyLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v32 = a1;
  v33 = a3;
  v31 = type metadata accessor for LayoutSubview();
  v8 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v26[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26[-v15];
  v17 = type metadata accessor for LayoutSubviews();
  (*(*(v17 - 8) + 16))(v16, a5, v17);
  v18 = *(v14 + 44);
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*&v16[v18] != v35[0])
  {
    v28 = (v8 + 32);
    v29 = (v8 + 16);
    v19 = a2;
    v20 = (v8 + 8);
    v21 = v19 & 1;
    v27 = a4 & 1;
    do
    {
      v22 = dispatch thunk of Collection.subscript.read();
      v23 = v30;
      v24 = v31;
      (*v29)(v30);
      v22(v35, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*v28)(v10, v23, v24);
      lazy protocol witness table accessor for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey();
      LayoutSubview.subscript.getter();
      static UnitPoint.topLeading.getter();
      LOBYTE(v35[0]) = v21;
      v34 = v27;
      LayoutSubview.place(at:anchor:proposal:)();
      (*v20)(v10, v24);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v16[v18] != v35[0]);
  }

  return outlined destroy of Binding<ScrollPosition>(v16, &_ss16IndexingIteratorVy7SwiftUI14LayoutSubviewsVGMd);
}

unint64_t lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews()
{
  result = lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews;
  if (!lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutSubviews and conformance LayoutSubviews);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey()
{
  result = lazy protocol witness table cache variable for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey;
  if (!lazy protocol witness table cache variable for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DetailsHeaderContainerKey and conformance DetailsHeaderContainerKey);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGMd);
    lazy protocol witness table accessor for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGMd);
    lazy protocol witness table accessor for type DetailsHeaderContainer and conformance DetailsHeaderContainer();
    lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA07_LayoutC0Vy20CommunicationDetails0H18HeaderContainerKey33_2DB30AA36CA0269A8F3FE974D4E61064LLVGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<DetailsHeaderContainer, _TraitWritingModifier<_LayoutTrait<DetailsHeaderContainerKey>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _GeometryActionModifier<CGFloat> and conformance _GeometryActionModifier<A>(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Binding<ScrollPosition>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Spacer? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Spacer? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Spacer? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Spacer? and conformance <A> A?);
  }

  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in closure #1 in DetailsScrollView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DetailsScrollView.HeaderBodyLayout();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6SpacerVSgMd);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails0F15HeaderContainer33_2DB30AA36CA0269A8F3FE974D4E61064LLVAA21_TraitWritingModifierVyAA07_LayoutQ0VyAD0fgH3KeyAFLLVGGGAA13_OffsetEffectVGAA06_FrameT0VGMd);
  swift_getTupleTypeMetadata2();
  v7 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(a1, a2, v6, v7, WitnessTable, v9, a3);
}

id ParticipantView.AddToContactsMenu.makeUIView(context:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = a2;
  *&v6[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = a3;
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = a2;

  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v8;
}

id ParticipantView.AddToContactsMenuButton.__allocating_init(viewModel:presentationProxy:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = a1;
  *&v5[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  v6 = a1;

  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v7;
}

double ParticipantView.AddToContactsMenu.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

id protocol witness for UIViewRepresentable.makeUIView(context:) in conformance ParticipantView.AddToContactsMenu()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = v2;
  *&v4[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = v1;
  v8.receiver = v4;
  v8.super_class = v3;
  v5 = v2;

  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v6;
}

double protocol witness for UIViewRepresentable.sizeThatFits(_:uiView:context:) in conformance ParticipantView.AddToContactsMenu(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits_];
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ParticipantView.AddToContactsMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ParticipantView.AddToContactsMenu(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance ParticipantView.AddToContactsMenu()
{
  lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id ParticipantView.AddToContactsMenuButton.init(viewModel:presentationProxy:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel] = a1;
  *&v2[OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  v4 = a1;

  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  ParticipantView.AddToContactsMenuButton.setupButton()();

  return v5;
}

id ParticipantView.AddToContactsMenuButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ParticipantView.AddToContactsMenuButton.setupButton()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v47 = v42 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = v42 - v3;
  v4 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for AttributedString();
  v42[0] = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIAccessibilityCustomAction(0, &lazy cache variable for type metadata for UIAction);
  v11._object = 0x80000001901FFC70;
  v11._countAndFlagsBits = 0xD000000000000012;
  LocalizedString(_:)(v11);
  v12 = MEMORY[0x193AEA8E0](0xD000000000000012, 0x80000001901FC4C0);
  v13 = objc_opt_self();
  v14 = [v13 systemImageNamed_];

  swift_allocObject();
  v15 = v42[1];
  swift_unknownObjectWeakInit();
  v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16._countAndFlagsBits = 0xD000000000000017;
  v16._object = 0x80000001901FFC90;
  LocalizedString(_:)(v16);
  v17 = MEMORY[0x193AEA8E0](0xD00000000000001DLL, 0x80000001901FFCB0);
  v18 = v42[0];
  v19 = [v13 systemImageNamed_];

  v20 = v15;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v43;
  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  static UIButton.Configuration.plain()();
  v23._countAndFlagsBits = 0x435F4F545F444441;
  v23._object = 0xEF53544341544E4FLL;
  LocalizedString(_:)(v23);
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v50 = [objc_opt_self() preferredFontForTextStyle_];
  lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute();
  AttributedString.subscript.setter();
  v24 = v45;
  (*(v18 + 16))(v45, v7, v21);
  (*(v18 + 56))(v24, 0, 1, v21);
  UIButton.Configuration.attributedTitle.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v25 = [objc_opt_self() systemBlueColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v26 = v47;
  v27 = v48;
  v28 = v49;
  (*(v48 + 16))(v47, v10, v49);
  (*(v27 + 56))(v26, 0, 1, v28);
  UIButton.configuration.setter();
  v29 = MEMORY[0x193AEA8E0](0xD000000000000013, 0x80000001901FFCD0);
  [v20 setAccessibilityIdentifier_];

  v30 = [v20 titleLabel];
  if (v30)
  {
    v31 = v30;
    [v30 setTextAlignment_];
  }

  [v20 setShowsMenuAsPrimaryAction_];
  type metadata accessor for UIAccessibilityCustomAction(0, &lazy cache variable for type metadata for UIMenu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1901E8240;
  v33 = v46;
  *(v32 + 32) = v46;
  *(v32 + 40) = v22;
  v34 = v33;
  v35 = v22;
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v51.value.super.isa = 0;
  v51.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, v36, 0, v51, 0, 0xFFFFFFFFFFFFFFFFLL, v32, v41);
  v39 = v38;
  [v20 setMenu_];

  (*(v18 + 8))(v7, v21);
  return (*(v48 + 8))(v10, v49);
}

double ParticipantView.AddToContactsMenuButton.accessibilityCustomActions.getter()
{
  v0._countAndFlagsBits = 0x435F4F545F444441;
  v0._object = 0xEF53544341544E4FLL;
  v1 = LocalizedString(_:)(v0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(MEMORY[0x1E69DC5E8]);

  v4 = MEMORY[0x193AEA8E0](v1._countAndFlagsBits, v1._object);

  v9[4] = partial apply for closure #1 in ParticipantView.AddToContactsMenuButton.accessibilityCustomActions.getter;
  v9[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool);
  v9[3] = &block_descriptor_8;
  v5 = _Block_copy(v9);
  v6 = [v3 initWithName:v4 actionHandler:v5];

  _Block_release(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v7 = swift_allocObject();
  *&result = 1;
  *(v7 + 16) = xmmword_1901E6230;
  *(v7 + 32) = v6;
  return result;
}

uint64_t @objc ParticipantView.AddToContactsMenuButton.accessibilityLabel.setter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

BOOL partial apply for closure #1 in ParticipantView.AddToContactsMenuButton.accessibilityCustomActions.getter()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong performPrimaryAction];
  }

  return v1 != 0;
}

id ParticipantView.AddToContactsMenuButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ParticipantView.AddToContactsMenuButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ParticipantView.AddToContactsMenuButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomAction) -> (@unowned Bool)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu()
{
  result = lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu;
  if (!lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu;
  if (!lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ParticipantView.AddToContactsMenu and conformance ParticipantView.AddToContactsMenu);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ParticipantView.AddToContactsMenu(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ParticipantView.AddToContactsMenu(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in ParticipantView.AddToContactsMenuButton.setupButton()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy);
      v5 = v3;
    }

    else
    {
      v4 = 0;
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1B8))(v4, v6);
  }
}

uint64_t partial apply for closure #2 in ParticipantView.AddToContactsMenuButton.setupButton()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_viewModel);

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtCV20CommunicationDetails15ParticipantView23AddToContactsMenuButton_presentationProxy);
      v5 = v3;
    }

    else
    {
      v4 = 0;
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x1C0))(v4, v6);
  }
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.UIKitAttributes.FontAttribute and conformance AttributeScopes.UIKitAttributes.FontAttribute);
  }

  return result;
}

uint64_t type metadata accessor for UIAccessibilityCustomAction(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id PhotosGridAssetActionManager.__allocating_init(selectionManager:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithSelectionManager_];

  return v3;
}

id PhotosGridAssetActionManager.init(selectionManager:)(void *a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v13, sel_initWithSelectionManager_, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1901EAE60;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v5;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v6;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v7;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v8;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v9;
  v10 = v3;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v10 setAllowedActionTypes_];

  return v10;
}

id PhotosGridAssetActionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

id PhotosSenderAvatarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *PhotosSenderAvatarView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData] = 0;
  v9 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions] = 0;
  v10 = &v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect];
  v11 = *(MEMORY[0x1E695F040] + 16);
  *v10 = *MEMORY[0x1E695F040];
  *(v10 + 1) = v11;
  swift_beginAccess();
  *&v4[v9] = 0;
  type metadata accessor for AttributionAvatarView.ViewModel();
  v12 = AttributionAvatarView.ViewModel.__allocating_init(_:)(0);

  AttributionAvatarView.init(viewModel:)(v24);
  v22 = v24[0];
  v23 = v24[1];
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14_UIHostingViewCy20CommunicationDetails017AttributionAvatarD0VGMd));
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView] = _UIHostingView.init(rootView:)();
  *&v4[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel] = v12;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for PhotosSenderAvatarView();

  v14 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setUserInteractionEnabled_];
  v15 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView;
  v16 = *&v14[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  [*&v14[v15] setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 addSubview_];

  return v14;
}

id PhotosSenderAvatarView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void PhotosSenderAvatarView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData) = 0;
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  v2 = *(MEMORY[0x1E695F040] + 16);
  *v1 = *MEMORY[0x1E695F040];
  v1[1] = v2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t PhotosSenderAvatarView.userData.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  PhotosSenderAvatarView.userData.didset();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for PhotosSenderAvatarView.userData : PhotosSenderAvatarView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

uint64_t key path setter for PhotosSenderAvatarView.userData : PhotosSenderAvatarView(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xB0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void PhotosSenderAvatarView.userData.didset()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_userData;
  swift_beginAccess();
  if (*(v0 + v1) && (type metadata accessor for AvatarViewUserData(), (v2 = swift_dynamicCastClass()) != 0) && (v3 = *(v2 + OBJC_IVAR____TtC20CommunicationDetails18AvatarViewUserData_contact)) != 0)
  {
    v4 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel;
    v5 = v0;
    v6 = *(**(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel) + 120);
    v7 = v3;

    v9 = v6(v8);

    if (v9)
    {
      type metadata accessor for CNContact();
      v10 = v7;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {

        return;
      }
    }

    else
    {
      v13 = v7;
    }

    v14 = *(**(v5 + v4) + 128);

    v14(v3);
  }

  else
  {
    v12 = *(**(v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarViewModel) + 128);

    v12(0);
  }
}

void (*PhotosSenderAvatarView.userData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return PhotosSenderAvatarView.userData.modify;
}

void PhotosSenderAvatarView.userData.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    PhotosSenderAvatarView.userData.didset();
  }
}

uint64_t PhotosSenderAvatarView.decorationOptions.getter()
{
  v1 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PhotosSenderAvatarView.decorationOptions.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_decorationOptions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for PhotosSenderAvatarView.decorationOptions : PhotosSenderAvatarView@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

double PhotosSenderAvatarView.clippingRect.getter()
{
  v1 = v0 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect;
  swift_beginAccess();
  return *v1;
}

uint64_t PhotosSenderAvatarView.clippingRect.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_clippingRect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

void key path getter for PhotosSenderAvatarView.clippingRect : PhotosSenderAvatarView(void **a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xD8))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t @objc PhotosSenderAvatarView.becomeReusable()()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

Swift::Void __swiftcall PhotosSenderAvatarView.layoutSubviews()()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PhotosSenderAvatarView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = [v0 effectiveUserInterfaceLayoutDirection];
  v2 = *DetailsStyleGuide.mediaItemBadgeSize.unsafeMutableAddressor();
  v3 = 8.0;
  if (!v1)
  {
    [v0 bounds];
    v3 = v4 - v2 + -8.0;
  }

  v5 = 8.0;
  v6 = v2;
  v7 = v2;
  v9 = CGRectIntegral(*&v3);
  [*&v0[OBJC_IVAR____TtC20CommunicationDetails22PhotosSenderAvatarView_avatarView] setFrame_];
}

id PhotosSenderAvatarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosSenderAvatarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance PXGDecorationViewOptions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance PXGDecorationViewOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance PXGDecorationViewOptions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance PXGDecorationViewOptions@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance PXGDecorationViewOptions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t lazy protocol witness table accessor for type PXGDecorationViewOptions and conformance PXGDecorationViewOptions(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PXGDecorationViewOptions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void _sSo6CGRectVMaTm_0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t Header.SwiftUIContainerView.viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  State.wrappedValue.getter();
  return v1;
}

uint64_t key path getter for Header.SwiftUIContainerView.viewModel : Header.SwiftUIContainerView@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  result = State.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for Header.SwiftUIContainerView.viewModel : Header.SwiftUIContainerView()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  return State.wrappedValue.setter();
}

void (*Header.SwiftUIContainerView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  State.wrappedValue.getter();
  return Header.SwiftUIContainerView.viewModel.modify;
}

void Header.SwiftUIContainerView.viewModel.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v2[3] = v3;
  if (a2)
  {

    State.wrappedValue.setter();
  }

  else
  {
    State.wrappedValue.setter();
  }

  free(v2);
}

uint64_t Header.SwiftUIContainerView.$viewModel.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  State.projectedValue.getter();
  return v1;
}

uint64_t Header.SwiftUIContainerView.styleGuide.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Header.SwiftUIContainerView() + 24);

  return outlined init with copy of Header.StyleGuide(v3, a1);
}

uint64_t type metadata accessor for Header.SwiftUIContainerView()
{
  result = type metadata singleton initialization cache for Header.SwiftUIContainerView;
  if (!type metadata singleton initialization cache for Header.SwiftUIContainerView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Header.SwiftUIContainerView.delegate.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for Header.SwiftUIContainerView() + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper()
{
  result = lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper;
  if (!lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper)
  {
    type metadata accessor for QuickActionsContainerDelegateWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper);
  }

  return result;
}

uint64_t Header.SwiftUIContainerView.pool.getter()
{
  type metadata accessor for Header.SwiftUIContainerView();
}

uint64_t Header.SwiftUIContainerView.pool.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Header.SwiftUIContainerView() + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Header.SwiftUIContainerView.init(viewModel:styleGuide:pool:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 16) = FocusState.init<>()() & 1;
  *(a3 + 24) = v6;
  *(a3 + 32) = v7 & 1;
  v8 = type metadata accessor for Header.SwiftUIContainerView();
  v9 = a3 + v8[7];
  type metadata accessor for QuickActionsContainerDelegateWrapper(0);
  lazy protocol witness table accessor for type QuickActionsContainerDelegateWrapper and conformance QuickActionsContainerDelegateWrapper();
  *v9 = Environment.init<A>(_:)();
  *(v9 + 8) = v10 & 1;
  v11 = v8[8];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA11ColorSchemeO_GMd);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Header.ViewModel(0);
  State.init(wrappedValue:)();
  *a3 = v13;
  *(a3 + 8) = v14;
  result = outlined init with take of Header.StyleGuide(a1, a3 + v8[6], type metadata accessor for Header.StyleGuide);
  *(a3 + v8[9]) = a2;
  return result;
}

uint64_t Header.SwiftUIContainerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA08_PaddingG0VGAA12_ScaleEffectVGAMyAMyAA0F0VyAIyAMyAMyAA6HStackVyAIyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA5_0S0OGGAA016_ForegroundStyleZ0VyAA5ColorVGGSg_AMyAMyAMyAA4TextVA7_ySiSgGGA7_yAA13TextAlignmentOGGAA023AccessibilityAttachmentZ0VGtGGA7_yAA4FontVSgGGA16_G_AMyAMyAMyA3_yAIyA11__A20_tGGA36_GA16_GA29_GSgtGGAWGAZGG_AMyAA6SpacerVAA06_FrameG0VGAMyAMyAMyAMyAMyAMy20CommunicationDetails21QuickActionsContainerVAA08_OpacityT0VGAA05_BlurT0VGAA010_BlendModeT0VGAA07_OffsetT0VGAZGAA06_TraityZ0VyAA011ZIndexTraitX0VGGtGGMd);
  return closure #1 in Header.SwiftUIContainerView.body.getter(v1, a1 + *(v3 + 44));
}

uint64_t closure #1 in Header.SwiftUIContainerView.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v164 = type metadata accessor for Header.StyleGuide();
  MEMORY[0x1EEE9AC00](v164);
  v165 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd);
  MEMORY[0x1EEE9AC00](v168);
  v170 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v169 = (&v148 - v6);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd);
  MEMORY[0x1EEE9AC00](v163);
  v8 = &v148 - v7;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAGyAGyAA6VStackVyAA9TupleViewVyAGyAGyAA6HStackVyAYyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA1_0O0OGGAA016_ForegroundStyleY0VyAA5ColorVGGSg_AGyAGyAGyAA4TextVA3_ySiSgGGA3_yAA13TextAlignmentOGGAA023AccessibilityAttachmentY0VGtGGA3_yAA4FontVSgGGA12_G_AGyAGyAGyA_yAYyA7__A16_tGGA32_GA12_GA25_GSgtGGAQGATG_GMd);
  MEMORY[0x1EEE9AC00](v162);
  v10 = &v148 - v9;
  v11 = type metadata accessor for ContactCardDetailsStyle();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v154 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMd);
  MEMORY[0x1EEE9AC00](v151);
  v153 = &v148 - v13;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMd);
  MEMORY[0x1EEE9AC00](v152);
  v156 = &v148 - v14;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd);
  MEMORY[0x1EEE9AC00](v161);
  v155 = &v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v157 = &v148 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ContactsUI26ContactCardActionsProviderVSgMd);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v148 - v19;
  v21 = type metadata accessor for ContactCardActionsProvider();
  v22 = *(v21 - 8);
  v159 = v21;
  v160 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v150 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v148 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v167 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v173 = &v148 - v29;
  type metadata accessor for MainActor();
  v166 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = a1;
  v32 = *a1;
  v31 = a1[1];
  *&v187 = v32;
  *(&v187 + 1) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  State.wrappedValue.getter();
  v33 = v185[2];

  v34 = v32;

  (*(*v33 + 584))(&v187, v35);

  LOBYTE(v185) = v187;
  LOBYTE(v181[0]) = 1;
  lazy protocol witness table accessor for type DetailsViewController.HeaderStyle and conformance DetailsViewController.HeaderStyle();
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v172 = v31;
  if ((v36 & 1) == 0)
  {
    goto LABEL_11;
  }

  *&v187 = v32;
  *(&v187 + 1) = v31;
  State.wrappedValue.getter();
  v37 = v185[2];

  (*(*v37 + 200))(&v187, v38);

  v181[4] = v191;
  v181[5] = v192;
  v182 = v193;
  v181[0] = v187;
  v181[1] = v188;
  v181[2] = v189;
  v181[3] = v190;
  if ((*(&v191 + 1) & 0x8000000000000000) != 0)
  {
    v46 = *(&v181[0] + 1);

LABEL_10:
    v34 = v32;
    goto LABEL_11;
  }

  outlined destroy of DetailsViewController.CommunicationType(v181);
  *&v187 = v32;
  *(&v187 + 1) = v31;
  v39 = State.wrappedValue.getter();
  v40 = (*(*v185 + 224))(v39);

  if (!*(v40 + 16))
  {

    goto LABEL_10;
  }

  v148 = v10;
  v41 = *(v40 + 96);
  v177 = *(v40 + 80);
  v178 = v41;
  v179 = *(v40 + 112);
  v180 = *(v40 + 128);
  v42 = *(v40 + 48);
  v174 = *(v40 + 32);
  v175 = v42;
  v176 = *(v40 + 64);
  outlined init with copy of CommunicationDetailsContact(&v174, &v187);

  v149 = v175;
  outlined destroy of CommunicationDetailsContact(&v174);
  *&v187 = v32;
  *(&v187 + 1) = v31;
  v43 = State.wrappedValue.getter();
  (*(*v185 + 152))(v43);

  v45 = v159;
  v44 = v160;
  v34 = v32;
  if ((*(v160 + 48))(v20, 1, v159) != 1)
  {
    v112 = v149;
    (*(v44 + 32))(v158, v20, v45);
    v113 = v30[1];
    *&v187 = *v30;
    *(&v187 + 1) = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
    v114 = State.wrappedValue.getter();
    v115 = (*(*v185 + 224))(v114);

    if (*(v115 + 16))
    {
      v116 = *(v115 + 96);
      v190 = *(v115 + 80);
      v191 = v116;
      v192 = *(v115 + 112);
      v193 = *(v115 + 128);
      v117 = *(v115 + 48);
      v187 = *(v115 + 32);
      v188 = v117;
      v189 = *(v115 + 64);
      outlined init with copy of CommunicationDetailsContact(&v187, &v185);

      v118 = v192;

      outlined destroy of CommunicationDetailsContact(&v187);
      v119 = v172;
      if (!*(&v118 + 1))
      {
        goto LABEL_19;
      }

      [v112 mutableCopy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      type metadata accessor for CNMutableContact();
      if (swift_dynamicCast())
      {
        v120 = v185;
        v121 = MEMORY[0x193AEA8E0](v118, *(&v118 + 1));

        [v120 setOrganizationName_];

        v119 = v172;
        if (v120)
        {
LABEL_20:
          (*(v160 + 16))(v150, v158, v45);
          *&v189 = 0;
          v187 = 0u;
          v188 = 0u;
          v122 = v120;
          ContactCardDetailsStyle.init(backgroundStyle:headerNameFont:propertyLabelFont:propertyLabelColor:propertyValueFont:propertyValueColor:separatorColor:allowEditingNotesInViewMode:groupPropertiesByType:)();
          v123 = v119;
          v124 = v153;
          ContactCardHeader.init(contact:actionsProvider:style:)();
          *(v124 + *(v151 + 52)) = v122;
          LOBYTE(v122) = static Edge.Set.horizontal.getter();
          EdgeInsets.init(_all:)();
          v126 = v125;
          v128 = v127;
          v130 = v129;
          v132 = v131;
          v133 = v156;
          outlined init with take of IDView<ContactCardHeader, CNContact>(v124, v156, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMd);
          v134 = v133 + *(v152 + 36);
          *v134 = v122;
          *(v134 + 8) = v126;
          *(v134 + 16) = v128;
          *(v134 + 24) = v130;
          *(v134 + 32) = v132;
          *(v134 + 40) = 0;
          *&v187 = v34;
          *(&v187 + 1) = v123;
          v135 = State.wrappedValue.getter();
          v140 = Header.ViewModel.nameViewScale.getter(v135, v136, v137, v138, v139);

          static UnitPoint.top.getter();
          v142 = v141;
          v144 = v143;
          v145 = v155;
          outlined init with take of IDView<ContactCardHeader, CNContact>(v133, v155, &_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMd);
          v146 = (v145 + *(v161 + 36));
          *v146 = v140;
          v146[1] = v140;
          *(v146 + 2) = v142;
          *(v146 + 3) = v144;
          v147 = v157;
          outlined init with take of IDView<ContactCardHeader, CNContact>(v145, v157, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd);
          outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v147, v148, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd);
          swift_storeEnumTagMultiPayload();
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
          v59 = v34;
          lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
          _ConditionalContent<>.init(storage:)();

          outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v147, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd);
          (*(v160 + 8))(v158, v159);
          goto LABEL_12;
        }

LABEL_19:
        v120 = v112;
        goto LABEL_20;
      }
    }

    v119 = v172;
    goto LABEL_19;
  }

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v20, &_s10ContactsUI26ContactCardActionsProviderVSgMd);
  v31 = v172;
  v10 = v148;
LABEL_11:
  v47 = *(v30 + *(type metadata accessor for Header.SwiftUIContainerView() + 24) + 160);
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = v47;
  v8[16] = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA6HStackVyAIyAKyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA016_ForegroundStyleP0VyAA5ColorVGGSg_AKyAKyAKyAA4TextVAQySiSgGGAQyAA0U9AlignmentOGGAA023AccessibilityAttachmentP0VGtGGAQyAA4FontVSgGGAZG_AKyAKyAKyAMyAIyAU_A2_tGGA18_GAZGA11_GSgtGGMd);
  closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter(v30, &v8[*(v48 + 44)]);
  LOBYTE(v47) = static Edge.Set.horizontal.getter();
  v49 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGMd) + 36)];
  *v49 = v47;
  *(v49 + 8) = 0u;
  *(v49 + 24) = 0u;
  v49[40] = 1;
  *&v187 = v34;
  *(&v187 + 1) = v31;
  v50 = State.wrappedValue.getter();
  v55 = Header.ViewModel.nameViewScale.getter(v50, v51, v52, v53, v54);

  static UnitPoint.top.getter();
  v56 = &v8[*(v163 + 36)];
  *v56 = v55;
  v56[1] = v55;
  *(v56 + 2) = v57;
  *(v56 + 3) = v58;
  v59 = v34;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v8, v10, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGMR, lazy protocol witness table accessor for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMR, lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v8, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGAA01_N6EffectVGMd);
LABEL_12:
  v60 = type metadata accessor for Header.SwiftUIContainerView();
  v61 = v30 + *(v60 + 24);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v163 = v188;
  v164 = v187;
  v161 = *(&v189 + 1);
  v162 = v189;
  LOBYTE(v174) = 1;
  v184 = BYTE8(v187);
  v183 = BYTE8(v188);
  v62 = v59;
  v185 = v59;
  v63 = v172;
  v186 = v172;
  v64 = State.wrappedValue.getter();
  v160 = (*(**&v181[0] + 232))(v64);

  v185 = v62;
  v186 = v63;
  v65 = State.wrappedValue.getter();
  v66 = (*(**&v181[0] + 256))(v65);

  v67 = v165;
  outlined init with copy of Header.StyleGuide(v61, v165);
  v68 = Header.SwiftUIContainerView.delegate.getter();
  v69 = *(v30 + *(v60 + 36));

  v70 = v169;
  QuickActionsContainer.init(contacts:requestedQuickActions:styleGuide:delegate:pool:)(v160, v66, v67, v68, v69, v169);
  v185 = v62;
  v186 = v63;
  v71 = State.wrappedValue.getter();
  v76 = Header.ViewModel.quickActionAlpha.getter(v71, v72, v73, v74, v75);

  *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGMd) + 36)) = v76;
  v185 = v62;
  v186 = v63;
  v77 = State.wrappedValue.getter();
  v82 = Header.ViewModel.quickActionBlurRadius.getter(v77, v78, v79, v80, v81);

  v83 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGMd) + 36));
  *v83 = v82;
  *(v83 + 8) = 0;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGMd);
  Header.SwiftUIContainerView.quickActionsContainerBlendMode.getter(v70 + *(v84 + 36));
  v185 = v62;
  v186 = v63;
  v85 = State.wrappedValue.getter();
  v90 = Header.ViewModel.quickActionsTranslationY.getter(v85, v86, v87, v88, v89);

  v91 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGMd) + 36));
  *v91 = 0.0;
  v91[1] = v90;
  v185 = v62;
  v186 = v63;
  v92 = State.wrappedValue.getter();
  v97 = Header.ViewModel.quickActionsScale.getter(v92, v93, v94, v95, v96);

  static UnitPoint.center.getter();
  v99 = v98;
  v101 = v100;
  v102 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGMd) + 36));
  *v102 = v97;
  v102[1] = v97;
  *(v102 + 2) = v99;
  *(v102 + 3) = v101;
  v103 = v167;
  *(v70 + *(v168 + 36)) = 0xBFF0000000000000;
  v104 = v173;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v173, v103, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd);
  LOBYTE(v67) = v174;
  LOBYTE(v62) = v184;
  LOBYTE(v61) = v183;
  v105 = v170;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v70, v170, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd);
  v106 = v171;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v103, v171, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGG_AEyAA6SpacerVAA06_FrameM0VGAEyAEyAEyAEyAEyAEy20CommunicationDetails21QuickActionsContainerVAA08_OpacityO0VGAA05_BlurO0VGAA010_BlendModeO0VGAA07_OffsetO0VGARGAA06_TraitwX0VyAA011ZIndexTraitV0VGGtMd);
  v108 = v106 + *(v107 + 48);
  *v108 = 0;
  *(v108 + 8) = v67;
  v109 = v163;
  *(v108 + 16) = v164;
  *(v108 + 24) = v62;
  *(v108 + 32) = v109;
  *(v108 + 40) = v61;
  v110 = v161;
  *(v108 + 48) = v162;
  *(v108 + 56) = v110;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v105, v106 + *(v107 + 64), &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v70, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v104, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v105, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACy20CommunicationDetails21QuickActionsContainerVAA14_OpacityEffectVGAA05_BlurK0VGAA010_BlendModeK0VGAA07_OffsetK0VGAA06_ScaleK0VGAA21_TraitWritingModifierVyAA06ZIndexQ3KeyVGGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v103, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGAA12_ScaleEffectVGAEyAEyAA6VStackVyAA9TupleViewVyAEyAEyAA6HStackVyAWyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA_0N0OGGAA016_ForegroundStyleX0VyAA5ColorVGGSg_AEyAEyAEyAA4TextVA1_ySiSgGGA1_yAA13TextAlignmentOGGAA023AccessibilityAttachmentX0VGtGGA1_yAA4FontVSgGGA10_G_AEyAEyAEyAYyAWyA5__A14_tGGA30_GA10_GA23_GSgtGGAOGARGGMd);
}

uint64_t Header.SwiftUIContainerView.quickActionsContainerBlendMode.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = type metadata accessor for ColorScheme();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails12BlendedColorVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9BlendModeOSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = v1 + *(type metadata accessor for Header.SwiftUIContainerView() + 24);
  v13 = type metadata accessor for Header.StyleGuide();
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v12 + *(v13 + 96), v8, &_s20CommunicationDetails12BlendedColorVSgMd);
  v14 = type metadata accessor for BlendedColor();
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v8, &_s20CommunicationDetails12BlendedColorVSgMd);
    v15 = type metadata accessor for BlendMode();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  }

  else
  {
    specialized Environment.wrappedValue.getter(v5);
    BlendedColor.resolvedBlendMode(for:)(v5, v11);
    (*(v3 + 8))(v5, v2);
    outlined destroy of BlendedColor(v8, type metadata accessor for BlendedColor);
    v15 = type metadata accessor for BlendMode();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) != 1)
    {
      return (*(v16 + 32))(v21, v11, v15);
    }
  }

  v17 = *MEMORY[0x1E6981DF0];
  type metadata accessor for BlendMode();
  v18 = *(v15 - 8);
  (*(v18 + 104))(v21, v17, v15);
  result = (*(v18 + 48))(v11, 1, v15);
  if (result != 1)
  {
    return outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, &_s7SwiftUI9BlendModeOSgMd);
  }

  return result;
}

uint64_t closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
  MEMORY[0x1EEE9AC00](v39);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGMd);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  type metadata accessor for MainActor();
  v40 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0;
  v18 = 1;
  v17[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA016_ForegroundStyleO0VyAA5ColorVGGSg_AKyAKyAKyAA4TextVAOySiSgGGAOyAA0T9AlignmentOGGAA023AccessibilityAttachmentO0VGtGGMd);
  closure #1 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter(a1, &v17[*(v19 + 44)]);
  v20 = (a1 + *(type metadata accessor for Header.SwiftUIContainerView() + 24));
  v21 = v20[19];
  KeyPath = swift_getKeyPath();
  v23 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGMd) + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = v20[23];

  v25 = v24;
  *&v17[*(v12 + 36)] = Color.init(uiColor:)();
  v26 = a1[1];
  v46 = *a1;
  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  v27 = State.wrappedValue.getter();
  LOBYTE(v24) = (*(*v45 + 240))(v27);

  if (v24)
  {
    v28 = v20[22];
    *v4 = static VerticalAlignment.center.getter();
    *(v4 + 1) = v28;
    v4[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGG_AA4TextVtGGMd);
    closure #2 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter(&v4[*(v29 + 44)]);
    v30 = v20[21];
    v31 = swift_getKeyPath();
    v32 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGMd) + 36)];
    *v32 = v31;
    v32[1] = v30;

    *&v4[*(v39 + 36)] = static Color.red.getter();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v33 = v38;
    View.accessibilityIdentifier(_:)();
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v4, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGMd);
    outlined init with take of IDView<ContactCardHeader, CNContact>(v33, v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGMd);
    v18 = 0;
  }

  (*(v41 + 56))(v11, v18, 1, v42);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v17, v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd);
  v34 = v43;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, v43, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd);
  v35 = v44;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v14, v44, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATG_ACyACyACyAEyAGyAO_AXtGGA12_GATGA5_GSgtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v34, v35 + *(v36 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v17, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v34, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGG_AA4TextVtGGAKyAA4FontVSgGGAA016_ForegroundStyleL0VyAA5ColorVGGAA023AccessibilityAttachmentL0VGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v14, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA016_ForegroundStyleL0VyAA5ColorVGGSg_ACyACyACyAA4TextVAKySiSgGGAKyAA0Q9AlignmentOGGAA023AccessibilityAttachmentL0VGtGGAKyAA4FontVSgGGATGMd);
}

uint64_t closure #1 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v52 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v8 = (&v52 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20CommunicationDetails6HeaderV22TitleIconConfigurationVSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v52 - v10;
  v12 = type metadata accessor for Header.TitleIconConfiguration();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v52 - v19;
  type metadata accessor for MainActor();
  v56 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = *a1;
  v21 = a1[1];
  *&v68[0] = *a1;
  *(&v68[0] + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy20CommunicationDetails6HeaderV9ViewModelCGMd);
  v22 = State.wrappedValue.getter();
  (*(*v61 + 216))(v68, v22);

  LOBYTE(v61) = v68[0];
  Header.SwiftUIContainerView.titleIconConfiguration(for:)(&v61, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v11, &_s20CommunicationDetails6HeaderV22TitleIconConfigurationVSgMd);
    v23 = 1;
    v24 = v55;
    v25 = v54;
  }

  else
  {
    outlined init with take of Header.StyleGuide(v11, v15, type metadata accessor for Header.TitleIconConfiguration);

    v26 = Image.init(systemName:)();
    v27 = *(v12 + 24);
    KeyPath = swift_getKeyPath();
    v29 = (v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd) + 36));
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
    v31 = type metadata accessor for Image.Scale();
    (*(*(v31 - 8) + 16))(v29 + v30, &v15[v27], v31);
    *v29 = KeyPath;
    *v8 = v26;
    v32 = *(v15 + 2);

    outlined destroy of BlendedColor(v15, type metadata accessor for Header.TitleIconConfiguration);
    v25 = v54;
    *(v8 + *(v54 + 36)) = v32;
    v33 = v8;
    v24 = v55;
    outlined init with take of IDView<ContactCardHeader, CNContact>(v33, v55, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGMd);
    v23 = 0;
  }

  (*(v53 + 56))(v24, v23, 1, v25);
  *&v68[0] = v20;
  *(&v68[0] + 1) = v21;
  v34 = State.wrappedValue.getter();
  v35 = (*(*v61 + 248))(v34);
  v37 = v36;

  *&v68[0] = v35;
  *(&v68[0] + 1) = v37;
  lazy protocol witness table accessor for type String and conformance String();
  v38 = Text.init<A>(_:)();
  v40 = v39;
  LOBYTE(v37) = v41;
  v43 = v42;
  v44 = swift_getKeyPath();
  v45 = swift_getKeyPath();
  v67 = v37 & 1;
  v66 = 0;
  *&v61 = v38;
  *(&v61 + 1) = v40;
  LOBYTE(v62) = v37 & 1;
  *(&v62 + 1) = v43;
  *&v63 = v44;
  *(&v63 + 1) = 2;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = v45;
  v65 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>();
  v46 = v58;
  View.accessibilityIdentifier(_:)();
  v68[2] = v63;
  v68[3] = v64;
  v69 = v65;
  v68[0] = v61;
  v68[1] = v62;
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v68, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd);
  v47 = v57;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v24, v57, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  v48 = v60;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v46, v60, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd);
  v49 = v59;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v47, v59, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSg_ACyACyACyAA4TextVAGySiSgGGAGyAA0N9AlignmentOGGAA023AccessibilityAttachmentI0VGtMd);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v48, v49 + *(v50 + 48), &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v46, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v24, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v48, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGAA023AccessibilityAttachmentI0VGMd);
  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v47, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA016_ForegroundStyleI0VyAA5ColorVGGSgMd);
}

uint64_t closure #2 in closure #1 in Header.SwiftUIContainerView.avatarHeaderStyleContainerNameView.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v22._countAndFlagsBits - v6);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = Image.init(systemName:)();
  v9 = (v7 + *(v2 + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd) + 28);
  v11 = *MEMORY[0x1E69816C8];
  v12 = type metadata accessor for Image.Scale();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  v13._countAndFlagsBits = 0x64656B636F6C42;
  v13._object = 0xE700000000000000;
  v22 = LocalizedString(_:)(v13);
  lazy protocol witness table accessor for type String and conformance String();
  v14 = Text.init<A>(_:)();
  v16 = v15;
  LOBYTE(v9) = v17;
  v19 = v18;
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v7, v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v4, a1, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGG_AA4TextVtMd) + 48);
  *v20 = v14;
  *(v20 + 8) = v16;
  *(v20 + 16) = v9 & 1;
  *(v20 + 24) = v19;
  outlined copy of Text.Storage(v14, v16, v9 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v7, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
  outlined consume of Text.Storage(v14, v16, v9 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd);
}

uint64_t protocol witness for View.body.getter in conformance Header.SwiftUIContainerView@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA08_PaddingG0VGAA12_ScaleEffectVGAMyAMyAA0F0VyAIyAMyAMyAA6HStackVyAIyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyA5_0S0OGGAA016_ForegroundStyleZ0VyAA5ColorVGGSg_AMyAMyAMyAA4TextVA7_ySiSgGGA7_yAA13TextAlignmentOGGAA023AccessibilityAttachmentZ0VGtGGA7_yAA4FontVSgGGA16_G_AMyAMyAMyA3_yAIyA11__A20_tGGA36_GA16_GA29_GSgtGGAWGAZGG_AMyAA6SpacerVAA06_FrameG0VGAMyAMyAMyAMyAMyAMy20CommunicationDetails21QuickActionsContainerVAA08_OpacityT0VGAA05_BlurT0VGAA010_BlendModeT0VGAA07_OffsetT0VGAZGAA06_TraityZ0VyAA011ZIndexTraitX0VGGtGGMd);
  return closure #1 in Header.SwiftUIContainerView.body.getter(v1, a1 + *(v3 + 44));
}

void type metadata completion function for Header.SwiftUIContainerView()
{
  type metadata accessor for State<Header.ViewModel>(319, &lazy cache variable for type metadata for State<Header.ViewModel>, type metadata accessor for Header.ViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FocusState<Bool>();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Header.StyleGuide();
      if (v2 <= 0x3F)
      {
        type metadata accessor for State<Header.ViewModel>(319, &lazy cache variable for type metadata for Environment<QuickActionsContainerDelegateWrapper>, type metadata accessor for QuickActionsContainerDelegateWrapper, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for State<Header.ViewModel>(319, &lazy cache variable for type metadata for Environment<ColorScheme>, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for QuickActionsContainer.Pool();
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

void type metadata accessor for FocusState<Bool>()
{
  if (!lazy cache variable for type metadata for FocusState<Bool>)
  {
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FocusState<Bool>);
    }
  }
}

void type metadata accessor for State<Header.ViewModel>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type IDView<ContactCardHeader, CNContact> and conformance IDView<A, B>, &_s7SwiftUI6IDViewVy08ContactsB017ContactCardHeaderVSo9CNContactCGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyACyAA6HStackVyAGyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_ACyACyACyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_ACyACyACyAIyAGyAQ_AZtGGA14_GAVGA7_GSgtGGAA14_PaddingLayoutVGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA6HStackVyAEyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA016_ForegroundStyleM0VyAA5ColorVGGSg_AGyAGyAGyAA4TextVAMySiSgGGAMyAA0R9AlignmentOGGAA023AccessibilityAttachmentM0VGtGGAMyAA4FontVSgGGAVG_AGyAGyAGyAIyAEyAQ_AZtGGA14_GAVGA7_GSgtGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t type metadata accessor for CNMutableContact()
{
  result = lazy cache variable for type metadata for CNMutableContact;
  if (!lazy cache variable for type metadata for CNMutableContact)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CNMutableContact);
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.multilineTextAlignment : EnvironmentValues, serialized@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA0E9AlignmentOGGMd);
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TextAlignment> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGMd);
    lazy protocol witness table accessor for type VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<IDView<ContactCardHeader, CNContact>, _PaddingLayout>, _ScaleEffect>, ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>>, ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<Modif (&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<VStack<TupleView<(ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _ForegroundStyleModifier<Color>>?, ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<TextAlignment>>, AccessibilityAttachmentModifier>)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, Text)>>, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>?)>>, _PaddingLayout>, _ScaleEffect>(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Header.StyleGuide(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of BlendedColor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of IDView<ContactCardHeader, CNContact>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t QuickActionsContainerView.__allocating_init(contacts:requestedQuickActions:styleGuide:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(a1, a2, a3, a4);

  return v10;
}

uint64_t QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized QuickActionsContainerView.init(contacts:requestedQuickActions:styleGuide:delegate:)(a1, a2, a3, a4);

  return v4;
}

id QuickActionsContainerView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void QuickActionsContainerView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model) = 0;
  v1 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + v1) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOAEGMd);
  v3 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
  *(v0 + v3) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_AETt0g5Tf4g_nTm(v2, &_ss18_DictionaryStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOSo8UIButtonCGMd);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void QuickActionsContainerView.setupSubviews()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v2 setAxis_];
  v3 = &v1[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_styleGuide];
  v4 = type metadata accessor for Header.StyleGuide();
  v5 = &v3[*(v4 + 124)];
  if (v5[8])
  {
    [v2 setDistribution_];
  }

  else
  {
    [v2 setSpacing_];
  }

  [v2 setAlignment_];
  v55 = v2;
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = *&v3[*(v4 + 144)];
  v7 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = *(v8 + 16);
  v56 = v1;
  if (v9)
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(v9, 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
    v52 = specialized Sequence._copySequenceContents(initializing:)(v57, v10 + 32, v9, v8);
    swift_bridgeObjectRetain_n();
    outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant();
    if (v52 != v9)
    {
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v57[0] = v10;
  v51 = v6;
  specialized MutableCollection<>.sort(by:)(v57, v6);

  v53 = v57[0];
  v11 = *(v57[0] + 2);
  if (v11)
  {
    type metadata accessor for MainActor();
    v12 = (v53 + 32);
    for (i = v11 - 1; ; --i)
    {
      v15 = *v12++;
      v14 = v15;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v16 = *&v1[v7];
      if (*(v16 + 16))
      {

        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v18)
        {
          v19 = *(*(v16 + 56) + 8 * v17);

          [v55 addArrangedSubview_];
          [*&v19[OBJC_IVAR____TtC20CommunicationDetails15QuickActionView_button] addTarget:v56 action:sel_handleAction_ forControlEvents:64];

          v1 = v56;
          if (!i)
          {
            break;
          }
        }

        else
        {

          if (!i)
          {
            break;
          }
        }
      }

      else
      {

        if (!i)
        {
          break;
        }
      }
    }
  }

  v20 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_customActionButtons;
  swift_beginAccess();
  v21 = *&v1[v20];
  v22 = *(v21 + 16);
  if (!v22)
  {

    v23 = MEMORY[0x1E69E7CC0];
    v25 = v51;
    goto LABEL_23;
  }

  v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(*(v21 + 16), 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
  v24 = specialized Sequence._copySequenceContents(initializing:)(v57, v23 + 32, v22, v21);
  v10 = v57[1];
  swift_bridgeObjectRetain_n();
  outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant();
  v25 = v51;
  if (v24 != v22)
  {
LABEL_36:
    __break(1u);

    __break(1u);
    return;
  }

  v1 = v56;
LABEL_23:
  v57[0] = v23;
  specialized MutableCollection<>.sort(by:)(v57, v25);

  v54 = v57[0];
  v26 = *(v57[0] + 2);
  if (v26)
  {
    type metadata accessor for MainActor();
    v27 = (v54 + 32);
    for (j = v26 - 1; ; --j)
    {
      v31 = *v27++;
      v30 = v31;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v32 = *&v1[v20];
      if (*(v32 + 16))
      {

        v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        if (v34)
        {
          v29 = *(*(v32 + 56) + 8 * v33);

          [v55 addArrangedSubview_];

          v1 = v56;
          if (!j)
          {
            break;
          }
        }

        else
        {

          if (!j)
          {
            break;
          }
        }
      }

      else
      {

        if (!j)
        {
          break;
        }
      }
    }
  }

  [v1 addSubview_];
  v35 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1901E5DD0;
  v37 = v1;
  v38 = [v55 topAnchor];
  v39 = [v37 topAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v36 + 32) = v40;
  v41 = [v55 bottomAnchor];
  v42 = [v37 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v36 + 40) = v43;
  v44 = [v55 leadingAnchor];
  v45 = [v37 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v36 + 48) = v46;
  v47 = [v55 trailingAnchor];

  v48 = [v37 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v36 + 56) = v49;
  _sSo18NSLayoutConstraintCMaTm_0(0, &lazy cache variable for type metadata for NSLayoutConstraint);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v35 activateConstraints_];
}

Swift::Void __swiftcall QuickActionsContainerView.setContacts(_:)(Swift::OpaquePointer a1)
{
  v2 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
  swift_beginAccess();
  v29 = v1;
  v3 = *&v1[v2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(*(v3 + 16), 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
    v6 = specialized Sequence._copySequenceContents(initializing:)(&v30, v5 + 32, v4, v3);
    swift_bridgeObjectRetain_n();
    outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v30 = v5;
  specialized MutableCollection<>.sort(by:)(&v30);

  v7 = &v29[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_styleGuide];
  v8 = &v7[*(type metadata accessor for Header.StyleGuide() + 144)];
  v9 = *v8;
  v10 = *&v29[v2];
  v11 = *(v10 + 16);
  if (v11)
  {
    v27 = *v8;
    v12 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(v11, 0, &_ss23_ContiguousArrayStorageCy20CommunicationDetails15QuickActionViewC10ButtonTypeOGMd);
    v13 = specialized Sequence._copySequenceContents(initializing:)(&v30, v12 + 32, v11, v10);
    swift_bridgeObjectRetain_n();
    outlined consume of [QuickActionView.ButtonType : QuickActionView].Iterator._Variant();
    if (v13 != v11)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v9 = v27;
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v30 = v12;
  specialized MutableCollection<>.sort(by:)(&v30, v9);

  v14 = v30;
  v15 = *(v30 + 2);
  if (v15)
  {
    type metadata accessor for MainActor();
    v16 = (v14 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      v20 = *v16++;
      v19 = v20;
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v21 = QuickActionView.ButtonType.cnActionType.getter(v19);
      v23 = v22;

      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v25 = *(v17 + 2);
        v24 = *(v17 + 3);
        if (v25 >= v24 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v17);
        }

        *(v17 + 2) = v25 + 1;
        v18 = &v17[16 * v25];
        *(v18 + 4) = v21;
        *(v18 + 5) = v23;
      }

      --v15;
    }

    while (v15);
  }

  QuickActionsContainerView.groupActions(for:)(a1._rawValue);
  type metadata accessor for CNContactHeaderQuickActionsModel();
  swift_allocObject();
  v26 = v29;

  *&v26[OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model] = CNContactHeaderQuickActionsModel.init(contacts:actionTypes:groupActionsPerType:container:)();
}

uint64_t QuickActionsContainerView.view(forActionType:)(uint64_t a1, uint64_t a2)
{

  v5 = QuickActionView.ButtonType.init(actionType:)(a1, a2);
  if (v5 == 5)
  {
    _StringGuts.grow(_:)(74);
    MEMORY[0x193AEA970](0xD00000000000002ELL, 0x80000001901FFFF0);
    MEMORY[0x193AEA970](a1, a2);
    MEMORY[0x193AEA970](0xD00000000000001ALL, 0x8000000190200020);
  }

  else
  {
    v6 = v5;
    v7 = OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_actionButtons;
    swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {

      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v10)
      {
        v11 = *(*(v8 + 56) + 8 * v9);

        return v11;
      }
    }

    _StringGuts.grow(_:)(52);
    MEMORY[0x193AEA970](0xD000000000000022, 0x8000000190200040);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193AEA970](0xD000000000000010, 0x8000000190200070);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t QuickActionsContainerView.handleAction(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = QuickActionView.ButtonType.cnActionType.getter(*(a1 + OBJC_IVAR____TtCC20CommunicationDetails15QuickActionView6Button_type));
  if (v9)
  {
    v10 = result;
    v11 = v9;
    v12 = Logger.detailsViewController.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v12, v4);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v18);
      _os_log_impl(&dword_190119000, v13, v14, "Quick action button pressed for action type: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193AEBB30](v16, -1, -1);
      MEMORY[0x193AEBB30](v15, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    if (*(v2 + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_model))
    {

      dispatch thunk of CNContactHeaderQuickActionsModel.buttonPressed(for:)();
    }
  }

  return result;
}

unint64_t QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v130);
  v132 = v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v131 = v121 - v5;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v127 = v121 - v11;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v128 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v129 = v121 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v134 = v121 - v18;
  v19 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  v135 = *(v19 - 8);
  v136 = v19;
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v121 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v121 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v29 = a1;
  v31 = v121 - v30;
  if (v29 >> 62)
  {
    if (v29 < 0)
    {
      v118 = v29;
    }

    else
    {
      v118 = v29 & 0xFFFFFFFFFFFFFF8;
    }

    v123 = v27;
    v133 = v29;
    v119 = MEMORY[0x193AEB0F0](v118, v28);
    v29 = v133;
    v27 = v123;
    if (v119 >= 2)
    {
LABEL_3:
      v133 = v29;
      v122 = v9;
      v123 = v27;
      v124 = v7;
      v138 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v126 = v31;
      CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v125 = v25;
      v32 = CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
      v33 = *(**(v1 + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_delegate) + 120);
      v34 = v33(v32);
      v121[0] = v6;
      if (v34 && (v36 = v35, ObjectType = swift_getObjectType(), LOBYTE(v137) = 2, LOBYTE(v36) = (*(v36 + 24))(&v137, ObjectType, v36), swift_unknownObjectRelease(), (v36 & 1) != 0))
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
        (*(v135 + 16))(v22, v126, v136);
        v41 = v138;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v137 = v41;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v38, v40, isUniquelyReferenced_nonNull_native);

        v138 = v137;
      }

      else
      {
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v44, v46, v134);

        v43 = outlined destroy of CNContactHeaderQuickActionsGroupAction?(v45, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd);
      }

      if (v33(v43) && (v48 = v47, v49 = swift_getObjectType(), LOBYTE(v137) = 3, LOBYTE(v48) = (*(v48 + 24))(&v137, v49, v48), swift_unknownObjectRelease(), (v48 & 1) != 0))
      {
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;
        (*(v135 + 16))(v22, v125, v136);
        v53 = v138;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v53;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v50, v52, v54);

        v138 = v137;
      }

      else
      {
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v55, v57, v134);

        outlined destroy of CNContactHeaderQuickActionsGroupAction?(v56, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd);
      }

      v58 = [objc_allocWithZone(MEMORY[0x1E695CF10]) init];
      v121[1] = _sSo18NSLayoutConstraintCMaTm_0(0, &lazy cache variable for type metadata for CNContact);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v60 = [v58 messageUrlForContacts_];

      if (v60)
      {
        v61 = v129;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = v128;
        (*(v13 + 16))(v128, v61, v12);
        v63 = (*(v13 + 80) + 16) & ~*(v13 + 80);
        v64 = swift_allocObject();
        (*(v13 + 32))(v64 + v63, v62, v12);
        CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
        v69 = v135;
        v68 = v136;
        v70 = v123;
        (*(v135 + 16))(v123, v22, v136);
        v71 = v138;
        v72 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v71;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, v65, v67, v72);

        (*(v69 + 8))(v22, v68);
        (*(v13 + 8))(v61, v12);
        v138 = v137;
      }

      else
      {
        v73 = Logger.detailsViewController.unsafeMutableAddressor();
        v74 = v124;
        v75 = v127;
        v76 = v121[0];
        (*(v124 + 16))(v127, v73, v121[0]);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_190119000, v77, v78, "Unable to build recipient url for at least one of the contacts, disabling group message.", v79, 2u);
          v80 = v79;
          v74 = v124;
          MEMORY[0x193AEBB30](v80, -1, -1);
        }

        (*(v74 + 8))(v75, v76);
        v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v81, v83, v134);

        outlined destroy of CNContactHeaderQuickActionsGroupAction?(v82, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd);
      }

      v130 = swift_allocBox();
      v85 = v84;
      v86 = *(v13 + 56);
      v87 = 1;
      v86(v84, 1, 1, v12);
      v88 = [objc_allocWithZone(MEMORY[0x1E695CEF0]) init];
      v89 = Array._bridgeToObjectiveC()().super.isa;
      v90 = [v88 mailUrlForContacts:v89 needsEmailAddresses:1];

      v91 = v131;
      if (v90)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v87 = 0;
      }

      v86(v91, v87, 1, v12);
      outlined assign with take of URL?(v91, v85);
      v92 = v132;
      _s10Foundation3URLVSgWOcTm_1(v85, v132, &_s10Foundation3URLVSgMd);
      v93 = (*(v13 + 48))(v92, 1, v12);
      outlined destroy of CNContactHeaderQuickActionsGroupAction?(v92, &_s10Foundation3URLVSgMd);
      if (v93 == 1)
      {
        v94 = Logger.detailsViewController.unsafeMutableAddressor();
        v95 = v124;
        v96 = v121[0];
        (*(v124 + 16))(v122, v94, v121[0]);
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.info.getter();
        v99 = os_log_type_enabled(v97, v98);
        v100 = v125;
        if (v99)
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_190119000, v97, v98, "List of contacts has at least one non-email recipient, disabling group email quick action.", v101, 2u);
          v102 = v101;
          v95 = v124;
          MEMORY[0x193AEBB30](v102, -1, -1);
        }

        (*(v95 + 8))(v122, v96);
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v134;
        specialized Dictionary._Variant.removeValue(forKey:)(v103, v105, v134);

        outlined destroy of CNContactHeaderQuickActionsGroupAction?(v104, &_s10ContactsUI38CNContactHeaderQuickActionsGroupActionVSgMd);
        v106 = v136;
        v107 = *(v135 + 8);
        v107(v100, v136);
        v107(v126, v106);

        return v138;
      }

      else
      {

        CNContactHeaderQuickActionsGroupAction.init(actionBlock:)();
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = v110;
        v113 = v135;
        v112 = v136;
        v114 = v123;
        (*(v135 + 16))(v123, v22, v136);
        v115 = v138;
        v116 = swift_isUniquelyReferenced_nonNull_native();
        v137 = v115;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v114, v109, v111, v116);

        v117 = *(v113 + 8);
        v117(v22, v112);
        v117(v125, v112);
        v117(v126, v112);

        return v137;
      }
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
  {
    goto LABEL_3;
  }

  v120 = MEMORY[0x1E69E7CC0];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10ContactsUI38CNContactHeaderQuickActionsGroupActionVTt0g5Tf4g_n(v120);
}

uint64_t closure #1 in QuickActionsContainerView.groupActions(for:)(uint64_t a1, uint64_t a2, const char *a3, char a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v10, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_190119000, v11, v12, a3, v13, 2u);
    MEMORY[0x193AEBB30](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  v15 = *(Strong + OBJC_IVAR____TtC20CommunicationDetails25QuickActionsContainerView_delegate);
  v16 = Strong;

  v17 = (*(*v15 + 120))();
  v19 = v18;

  if (!v17)
  {
  }

  ObjectType = swift_getObjectType();
  HIBYTE(v22) = a4;
  (*(v19 + 8))(&v22 + 7, ObjectType, v19);

  return swift_unknownObjectRelease();
}

uint64_t closure #3 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v27 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = v25 - v6;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v25[1] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v8 + 16))(v10, v11, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25[0] = v3;
    v15 = v2;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_190119000, v12, v13, "Quick action to send message to group pressed.", v14, 2u);
    v17 = v16;
    v2 = v15;
    v3 = v25[0];
    MEMORY[0x193AEBB30](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v18 = type metadata accessor for TaskPriority();
  v19 = v26;
  (*(*(v18 - 8) + 56))(v26, 1, 1, v18);
  v20 = v27;
  (*(v3 + 16))(v27, a1, v2);
  v21 = static MainActor.shared.getter();
  v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = MEMORY[0x1E69E85E0];
  (*(v3 + 32))(v23 + v22, v20, v2);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:), v23);
}

uint64_t closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v7;
  v4[25] = v6;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:), v7, v6);
}

uint64_t closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:)()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = [objc_opt_self() sharedApplication];
  v0[26] = v4;
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v0[27] = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for UIApplicationOpenExternalURLOptionsKey();
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[28] = isa;

  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:);
  swift_continuation_init();
  v0[17] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_9;
  [v4 openURL:v7 options:isa completionHandler:?];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in QuickActionsContainerView.groupActions(for:), v2, v1);
}

{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 144);

  *v4 = *(v0 + 232);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #4 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v9 = MEMORY[0x1E69E85E0];
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = Logger.detailsViewController.unsafeMutableAddressor();
  (*(v6 + 16))(v8, v10, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_190119000, v11, v12, "Quick action to send email to group pressed.", v13, 2u);
    v14 = v13;
    v9 = MEMORY[0x1E69E85E0];
    MEMORY[0x193AEBB30](v14, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v9;
  v17[4] = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCSb_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:), v17);
}

uint64_t closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:)(uint64_t a1)
{
  v1[21] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v1[25] = swift_task_alloc();
  v1[26] = swift_projectBox();
  type metadata accessor for MainActor();
  v1[27] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[28] = v4;
  v1[29] = v3;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:), v4, v3);
}

uint64_t closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:)()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = [objc_opt_self() sharedApplication];
  v0[30] = v3;
  swift_beginAccess();
  _s10Foundation3URLVSgWOcTm_1(v1, v2, &_s10Foundation3URLVSgMd);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = 0;
  if ((*(v5 + 48))(v2, 1, v4) != 1)
  {
    v8 = v0[25];
    URL._bridgeToObjectiveC()(v6);
    v7 = v9;
    (*(v5 + 8))(v8, v4);
  }

  v0[31] = v7;
  v11 = v0[23];
  v10 = v0[24];
  v12 = v0[22];
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:);
  swift_continuation_init();
  v0[17] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 14);
  CheckedContinuation.init(continuation:function:)();
  (*(v11 + 32))(boxed_opaque_existential_0, v10, v12);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool) -> () with result type Bool;
  v0[13] = &block_descriptor_35;
  [v3 openURL:v7 withCompletionHandler:v0 + 10];
  (*(v11 + 8))(boxed_opaque_existential_0, v12);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in QuickActionsContainerView.groupActions(for:), v2, v1);
}

{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 168);

  *v3 = *(v0 + 256);

  v4 = *(v0 + 8);

  return v4();
}

id QuickActionsContainerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id QuickActionsContainerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickActionsContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance UIApplicationOpenExternalURLOptionsKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x193AEA8E0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance UIApplicationOpenExternalURLOptionsKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x193AEA990](v0);

  return v1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UIApplicationOpenExternalURLOptionsKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UIApplicationOpenExternalURLOptionsKey()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIApplicationOpenExternalURLOptionsKey()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x193AEA8E0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance UIApplicationOpenExternalURLOptionsKey@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance UIApplicationOpenExternalURLOptionsKey()
{
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);
  lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey(&lazy protocol witness table cache variable for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC20CommunicationDetails15QuickActionViewC10ButtonTypeO_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size_8(v5);
  result = v5;
  v5[2] = a1;
  v5[3] = 2 * v6 - 64;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMd);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + v20);
      v23 = *(v21 + 8 * v20);
      if ((v34 & 1) == 0)
      {
        v24 = v23;
      }

      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v32 = 1 << *(v6 + 32);
    v4 = v3;
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for CNContactHeaderQuickActionsGroupAction() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for CNContactHeaderQuickActionsGroupAction();
  v37 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10ContactsUI38CNContactHeaderQuickActionsGroupActionVGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v84 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v10 = result;
    }

    v75 = *(v10 + 2);
    if (v75 >= 2)
    {
      while (1)
      {
        v76 = *v7;
        if (!*v7)
        {
          goto LABEL_128;
        }

        v7 = (v75 - 1);
        v77 = *&v10[16 * v75];
        v78 = *&v10[16 * v75 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(&v76[v77], &v76[*&v10[16 * v75 + 16]], &v76[v78], v5);
        if (v6)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v75 - 2 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v79 = &v10[16 * v75];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = specialized Array.remove(at:)(v7);
        v75 = *(v10 + 2);
        v7 = a3;
        if (v75 <= 1)
        {
        }
      }
    }
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v82 = v6;
      v5 = *v7;
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
      result = dispatch thunk of static Comparable.< infix(_:_:)();
      v13 = v11;
      v14 = result;
      v81 = v13;
      while (v8 - 2 != v13)
      {
        result = dispatch thunk of static Comparable.< infix(_:_:)();
        ++v13;
        if ((v14 & 1) != (result & 1))
        {
          v8 = v13 + 1;
          break;
        }
      }

      v6 = v82;
      v7 = a3;
      if (v14)
      {
        v11 = v81;
        if (v8 < v81)
        {
          goto LABEL_121;
        }

        if (v81 < v8)
        {
          v15 = v8 - 1;
          v16 = v81;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v17 = *(v19 + v16);
              *(v19 + v16) = *(v19 + v15);
              *(v19 + v15) = v17;
            }
          }

          while (++v16 < v15--);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v11 = v81;
      }
    }

    v20 = v7[1];
    if (v12 < v20)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_120;
      }

      if (v12 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_122;
        }

        if (v11 + a4 >= v20)
        {
          v21 = v7[1];
        }

        else
        {
          v21 = v11 + a4;
        }

        if (v21 < v11)
        {
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v12 != v21)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v12 < v11)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v88 = v12;
    v28 = v6;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v30 = *(v10 + 2);
    v29 = *(v10 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v31;
    v32 = &v10[16 * v30];
    *(v32 + 4) = v11;
    *(v32 + 5) = v88;
    v33 = *v84;
    if (!*v84)
    {
      goto LABEL_129;
    }

    if (v30)
    {
      v6 = v28;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v10 + 4);
          v36 = *(v10 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_61:
          if (v38)
          {
            goto LABEL_108;
          }

          v51 = &v10[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_111;
          }

          v57 = &v10[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_115;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v61 = &v10[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_75:
        if (v56)
        {
          goto LABEL_110;
        }

        v64 = &v10[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_113;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_82:
        v72 = v34 - 1;
        if (v34 - 1 >= v31)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_123;
        }

        if (!*v7)
        {
          goto LABEL_126;
        }

        v73 = *&v10[16 * v72 + 32];
        v5 = *&v10[16 * v34 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v7 + v73), (*v7 + *&v10[16 * v34 + 32]), &v5[*v7], v33);
        if (v6)
        {
        }

        if (v5 < v73)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
        }

        if (v72 >= *(v10 + 2))
        {
          goto LABEL_105;
        }

        v74 = &v10[16 * v72];
        *(v74 + 4) = v73;
        *(v74 + 5) = v5;
        result = specialized Array.remove(at:)(v34);
        v31 = *(v10 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v10[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_106;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_107;
      }

      v46 = &v10[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_109;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_112;
      }

      if (v50 >= v42)
      {
        v68 = &v10[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_116;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

    v6 = v28;
LABEL_4:
    v8 = v7[1];
    v9 = v88;
    if (v88 >= v8)
    {
      goto LABEL_92;
    }
  }

  v83 = v6;
  v22 = *v7;
  lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
  v23 = &v22[v12];
  v24 = v11 - v12;
  v86 = v21;
LABEL_33:
  v87 = v12;
  v25 = v24;
  v5 = v23;
  while (1)
  {
    result = dispatch thunk of static Comparable.< infix(_:_:)();
    if ((result & 1) == 0)
    {
LABEL_32:
      ++v12;
      ++v23;
      --v24;
      if (v87 + 1 != v86)
      {
        goto LABEL_33;
      }

      v12 = v86;
      v6 = v83;
      v7 = a3;
      goto LABEL_40;
    }

    if (!v22)
    {
      break;
    }

    v26 = *v5;
    *v5 = *(v5 - 1);
    *--v5 = v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4, uint64_t (*a5)(void, void))
{
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v13 = (v7 + v12);
    if (v12 >= 1 && v9 > v10)
    {
      v18 = -v7;
      v30 = a5;
      while (1)
      {
        v19 = v9 - 1;
        v20 = &v13[v18];
        --v8;
        v21 = v13;
        while (1)
        {
          v22 = *--v21;
          v23 = v19;
          v24 = v30(v22, *v19);
          if (v5)
          {
            if (v9 >= v7 && v9 < v13 && v9 == v7)
            {
              return 1;
            }

            v27 = v9;
            v28 = v7;
            v26 = v20;
LABEL_54:
            memmove(v27, v28, v26);
            return 1;
          }

          v25 = v8 + 1;
          if (v24)
          {
            break;
          }

          v19 = v23;
          if (v25 < v13 || v8 >= v13)
          {
            *v8 = *v21;
          }

          --v20;
          --v8;
          v13 = v21;
          if (v21 <= v7)
          {
            v13 = v21;
            goto LABEL_49;
          }
        }

        if (v25 < v9 || v8 >= v9)
        {
          *v8 = *v23;
        }

        if (v13 > v7)
        {
          v9 = v23;
          v18 = -v7;
          if (v23 > v10)
          {
            continue;
          }
        }

        v9 = v23;
        break;
      }
    }

LABEL_49:
    v26 = &v13[-v7];
    if (v9 >= v7 && v9 < v13 && v9 == v7)
    {
      return 1;
    }

    v27 = v9;
LABEL_53:
    v28 = v7;
    goto LABEL_54;
  }

  if (a4 != __dst || a4 >= __src)
  {
    memmove(a4, __dst, v11);
  }

  v13 = (v7 + v11);
  if (v11 < 1 || v9 >= v8)
  {
LABEL_19:
    v9 = v10;
    goto LABEL_49;
  }

  while (1)
  {
    v14 = a5(*v9, *v7);
    if (v5)
    {
      break;
    }

    if (v14)
    {
      v15 = v9 + 1;
      v16 = v9;
      if (v10 >= v9 && v10 < v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v17 = (v7 + 1);
      v16 = v7;
      v15 = v9;
      if (v10 < v7)
      {
        ++v7;
      }

      else
      {
        ++v7;
        if (v10 < v17)
        {
          goto LABEL_17;
        }
      }
    }

    *v10 = *v16;
LABEL_17:
    ++v10;
    if (v7 < v13)
    {
      v9 = v15;
      if (v15 < v8)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v26 = &v13[-v7];
  if (v10 < v7 || v10 >= v13 || v10 != v7)
  {
    v27 = v10;
    goto LABEL_53;
  }

  return 1;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
LABEL_26:
      v14 = v6 - 1;
      --v5;
      v15 = v10;
      do
      {
        v16 = v5 + 1;
        --v15;
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          if (v16 < v6 || v5 >= v6)
          {
            *v5 = *v14;
          }

          if (v10 <= v4 || (--v6, v14 <= v7))
          {
            v6 = v14;
            goto LABEL_40;
          }

          goto LABEL_26;
        }

        if (v16 < v10 || v5 >= v10)
        {
          *v5 = *v15;
        }

        --v5;
        v10 = v15;
      }

      while (v15 > v4);
      v10 = v15;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      lazy protocol witness table accessor for type QuickActionView.ButtonType and conformance QuickActionView.ButtonType();
      while (1)
      {
        if (dispatch thunk of static Comparable.< infix(_:_:)())
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_17;
            }
          }
        }

        *v7 = *v12;
LABEL_17:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
  }

LABEL_40:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}
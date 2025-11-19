uint64_t sub_1D6A1F5D4(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0x656E696C6E69;
  }

  return 0x676E69646E6962;
}

uint64_t sub_1D6A1F620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6A1F694(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D6A1F700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6A1F770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D6A1F7E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6A1F5D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static FormatFileReference.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v78 = a1;
  v79 = a2;
  v72 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v74, v7);
  v69 = (&v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = (&v66 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v66 = (&v66 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v67 = (&v66 - v17);
  v75 = sub_1D72585BC();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a3;
  v68 = a4;
  v21 = type metadata accessor for FormatFileReference();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v66 - v28;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v33 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v32);
  v35 = &v66 - v34;
  v37 = &v66 + *(v36 + 48) - v34;
  v76 = v22;
  v38 = *(v22 + 16);
  v38(&v66 - v34, v78, v21, v33);
  (v38)(v37, v79, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v38)(v25, v35, v21);
      v40 = v77;
      v41 = *(swift_getTupleTypeMetadata2() + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v71;
        v42 = v72;
        (*(v72 + 32))(v71, v37, v40);
        v44 = v70;
        sub_1D5C35728(&v25[v41], v70);
        v45 = &v37[v41];
        v46 = v69;
        sub_1D5C35728(v45, v69);
        v47 = sub_1D7261FBC();
        v48 = v77;
        v49 = v47;
        v50 = *(v42 + 8);
        v50(v25, v77);
        if (v49)
        {
          v51 = static FormatMetadata.== infix(_:_:)(v44, v46);
          sub_1D5D23EE8(v46, type metadata accessor for FormatMetadata);
          sub_1D5D23EE8(v44, type metadata accessor for FormatMetadata);
          v50(v43, v48);
LABEL_17:
          v31 = v76;
          goto LABEL_18;
        }

        sub_1D5D23EE8(v46, type metadata accessor for FormatMetadata);
        sub_1D5D23EE8(v44, type metadata accessor for FormatMetadata);
        v50(v43, v48);
LABEL_16:
        v51 = 0;
        goto LABEL_17;
      }

      sub_1D5D23EE8(&v25[v41], type metadata accessor for FormatMetadata);
      (*(v72 + 8))(v25, v40);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      v51 = 1;
      goto LABEL_17;
    }
  }

  else
  {
    v79 = v20;
    v52 = v73;
    (v38)(v29, v35, v21);
    sub_1D5B55504();
    v54 = *(v53 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v55 = v52;
      v56 = *(v52 + 32);
      v57 = v79;
      v58 = v75;
      v56(v79, v37, v75);
      v59 = v67;
      sub_1D5C35728(&v29[v54], v67);
      v60 = &v37[v54];
      v61 = v66;
      sub_1D5C35728(v60, v66);
      v62 = sub_1D72584CC();
      v63 = *(v55 + 8);
      v63(v29, v58);
      if (v62)
      {
        v64 = v57;
        v51 = static FormatMetadata.== infix(_:_:)(v59, v61);
        sub_1D5D23EE8(v61, type metadata accessor for FormatMetadata);
        sub_1D5D23EE8(v59, type metadata accessor for FormatMetadata);
        v63(v64, v58);
        goto LABEL_17;
      }

      sub_1D5D23EE8(v61, type metadata accessor for FormatMetadata);
      sub_1D5D23EE8(v59, type metadata accessor for FormatMetadata);
      v63(v57, v58);
      goto LABEL_16;
    }

    sub_1D5D23EE8(&v29[v54], type metadata accessor for FormatMetadata);
    (*(v52 + 8))(v29, v75);
  }

  v51 = 0;
  v21 = TupleTypeMetadata2;
LABEL_18:
  (*(v31 + 8))(v35, v21);
  return v51 & 1;
}

uint64_t FormatFileReference.minVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatMetadata();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormatFileReference.metadata.getter(a1, v8);
  v9 = *(v5 + 28);
  v10 = sub_1D725BD1C();
  (*(*(v10 - 8) + 16))(a2, &v8[v9], v10);
  return sub_1D5D23EE8(v8, type metadata accessor for FormatMetadata);
}

uint64_t FormatFileReference.maxVersion.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FormatMetadata();
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FormatFileReference.metadata.getter(a1, v8);
  v9 = *(v5 + 32);
  v10 = sub_1D725BD1C();
  (*(*(v10 - 8) + 16))(a2, &v8[v9], v10);
  return sub_1D5D23EE8(v8, type metadata accessor for FormatMetadata);
}

uint64_t sub_1D6A2016C(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6A201EC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1D72585BC() - 8) + 64);
  v7 = *(sub_1D725BD1C() - 8);
  v8 = *(v7 + 80);
  v9 = v8 | 7;
  v10 = ((v8 | 7) + v6) & ~(v8 | 7);
  v11 = *(v7 + 64);
  v12 = (v11 + v8 + ((v11 + v8 + ((v8 + 16) & ~v8)) & ~v8)) & ~v8;
  if (*(v7 + 84))
  {
    v13 = *(v7 + 64);
  }

  else
  {
    v13 = v11 + 1;
  }

  v14 = ((((((((v13 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 + v10;
  v16 = v14 + ((*(*(*(a3 + 16) - 8) + 64) + v9) & ~v9);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_28;
  }

  v17 = v16 | 1;
  v18 = 8 * (v16 | 1);
  if ((v16 | 1) <= 3)
  {
    v21 = (a2 + ~(-1 << v18) - 253) >> v18;
    if (v21 > 0xFFFE)
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFE)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (!v21)
    {
LABEL_28:
      v24 = *(a1 + v16);
      if (v24 >= 3)
      {
        return (v24 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_28;
  }

LABEL_17:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
    LODWORD(v17) = 4;
  }

  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v23 = *a1 | (*(a1 + 2) << 16);
    }

    else
    {
      v23 = *a1;
    }
  }

  else if (v17 == 1)
  {
    v23 = *a1;
  }

  else
  {
    v23 = *a1;
  }

  return (v23 | v22) + 254;
}

void sub_1D6A203F4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1D72585BC() - 8) + 64);
  v9 = *(sub_1D725BD1C() - 8);
  v10 = *(v9 + 80);
  v11 = v10 | 7;
  v12 = ((v10 | 7) + v8) & ~(v10 | 7);
  v13 = *(v9 + 64);
  v14 = (v13 + v10 + ((v13 + v10 + ((v10 + 16) & ~v10)) & ~v10)) & ~v10;
  if (*(v9 + 84))
  {
    v15 = *(v9 + 64);
  }

  else
  {
    v15 = v13 + 1;
  }

  v16 = ((((((((v15 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v17 = v16 + v12;
  v18 = v16 + ((*(*(*(a4 + 16) - 8) + 64) + v11) & ~v11);
  if (v18 <= v17)
  {
    v18 = v17;
  }

  v19 = v18 | 1;
  if (a3 < 0xFE)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = (a3 + ~(-1 << (8 * v19)) - 253) >> (8 * v19);
    if (v23 > 0xFFFE)
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0xFF)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (a2 > 0xFD)
  {
    v21 = a2 - 254;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      bzero(a1, v19);
      if (v19 == 1)
      {
        *a1 = v21;
        if (v20 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v25 = v21 & ~(-1 << (8 * v19));
        *a1 = v25;
        a1[2] = BYTE2(v25);
        if (v20 <= 1)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      bzero(a1, v18 | 1);
      *a1 = v21;
      v22 = 1;
      if (v20 <= 1)
      {
LABEL_37:
        if (v20)
        {
          a1[v19] = v22;
        }

        return;
      }
    }

    if (v20 == 2)
    {
      *&a1[v19] = v22;
    }

    else
    {
      *&a1[v19] = v22;
    }

    return;
  }

  if (v20 <= 1)
  {
    if (v20)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v18] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v20 == 2)
  {
    *&a1[v19] = 0;
    goto LABEL_27;
  }

  *&a1[v19] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

Swift::Void __swiftcall PuzzleEmbedViewController.setInputAccessoryView(_:)(UIView_optional *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  sub_1D5B5A498(0, &qword_1EC88B4C0);
  v4 = sub_1D726265C();
  v5 = sub_1D726265C();
  [v3 setShortcutsBarWithLeadingGroups:v4 trailingGroups:v5];

  [v3 setInputAccessoryView_];
}

Swift::Void __swiftcall PuzzleEmbedViewController.prepareForReuse()()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1D5B74328(v2);
  *(v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
}

void PuzzleEmbedViewController.add(handler:name:)(uint64_t a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) messageHandlerManager];
  v4 = sub_1D726203C();
  [v3 addMessageHandler:a1 name:v4];
  swift_unknownObjectRelease();
}

void sub_1D6A208B4(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

void sub_1D6A20940(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t PuzzleEmbedViewController.reuseIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PuzzleEmbedViewController.reuseIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PuzzleEmbedViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PuzzleEmbedViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1D5EDA9DC;
}

id PuzzleEmbedViewController.layoutGuide.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void (*PuzzleEmbedViewController.layoutGuide.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D6A20CE8;
}

id PuzzleEmbedViewController.feedConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D6A20D40(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *&v6[v7];
  *&v6[v7] = v5;
  v9 = v5;

  v10 = [v6 view];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D6A20DDC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  v6 = a1;

  v7 = [v2 view];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void (*PuzzleEmbedViewController.feedConfiguration.modify(uint64_t a1))(uint64_t, char)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D6A291D8;
}

uint64_t sub_1D6A20ED4@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D5F39624;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D5DEA510(v4);
}

uint64_t sub_1D6A20F74(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D6A28B80;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  sub_1D5DEA510(v3);
  return sub_1D5B74328(v8);
}

uint64_t PuzzleEmbedViewController.onEmbedInteraction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v2 = *v1;
  sub_1D5DEA510(*v1);
  return v2;
}

uint64_t PuzzleEmbedViewController.onEmbedInteraction.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1D5B74328(v6);
}

uint64_t sub_1D6A21158@<X0>(_BYTE *a1@<X8>)
{
  result = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController____lazy_storage___contentEnvironment;
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController____lazy_storage___contentEnvironment);
  if (v5 == 8)
  {
    if (qword_1EDF43B30 != -1)
    {
      swift_once();
    }

    sub_1D6A28BA8(&qword_1EC890290);
    result = sub_1D725964C();
    LOBYTE(v5) = v6;
    *(v1 + v4) = v6;
  }

  *a1 = v5;
  return result;
}

Swift::Void __swiftcall PuzzleEmbedViewController.viewDidLoad()()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, sel_viewDidLoad);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  [v2 setClipsToBounds_];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setAutoresizingMask_];

  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController];
  [v1 addChildViewController_];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v8 addSubview_];

  [v6 didMoveToParentViewController_];
  v11 = [v6 view];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  [v11 setHidden_];

  v13 = *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorView];
  [v13 setHidden_];
  [v13 setAutoresizingMask_];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v14 addSubview_];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  [v16 addSubview_];

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87DCA0 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  if (aBlock != 1)
  {
    goto LABEL_13;
  }

  v18 = [objc_allocWithZone(type metadata accessor for WebEmbedLayoutGuideView()) initWithFrame_];
  v19 = [v1 view];
  if (v19)
  {
    v20 = v19;
    [v19 addSubview_];

    v21 = *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView];
    *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView] = v18;

LABEL_13:
    [v6 setTextInputTraits_];
    sub_1D6A21800();
    v22 = *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_actionProvider];
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_1D6A26434;
    v37 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D6A21D50;
    v35 = &block_descriptor_65;
    v24 = _Block_copy(&aBlock);

    [v22 onAction_];
    _Block_release(v24);
    v25 = *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_1D6A2643C;
    v37 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D6A208B4;
    v35 = &block_descriptor_4_0;
    v27 = _Block_copy(&aBlock);

    [v25 onPresentable_];
    _Block_release(v27);
    v28 = *&v1[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorProvider];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = sub_1D6A26444;
    v37 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v33 = 1107296256;
    v34 = sub_1D6A20930;
    v35 = &block_descriptor_8_1;
    v30 = _Block_copy(&aBlock);

    [v28 onError_];
    _Block_release(v30);
    LOBYTE(aBlock) = 0;

    sub_1D725AB1C();

    v31 = [objc_opt_self() defaultCenter];
    [v31 addObserver:v1 selector:sel_keyboardWillChangeFrameWithNotification_ name:*MEMORY[0x1E69DE068] object:0];

    return;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_1D6A21800()
{
  v1 = type metadata accessor for PuzzleResourceSource();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = CACurrentMediaTime();
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v7 = sub_1D725C42C();
  __swift_project_value_buffer(v7, qword_1EDFFCFA8);
  v8 = v0;
  v9 = sub_1D725C3FC();
  v10 = sub_1D7262EDC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    v13 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
    swift_beginAccess();
    if ((*(v2 + 48))(&v8[v13], 1, v1))
    {
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      sub_1D5C10C48(&v8[v13], v5, type metadata accessor for PuzzleResourceSource);
      v16 = PuzzleResourceSource.identifier.getter();
      v15 = v17;
      sub_1D6A29060(v5, type metadata accessor for PuzzleResourceSource);
      v14 = v16;
    }

    v18 = sub_1D5BC5100(v14, v15, &v27);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_1D5B42000, v9, v10, "Puzzle did start preparing for load, puzzle=%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1DA6FD500](v12, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
  }

  LOBYTE(v27) = 1;
  sub_1D6A290C0();
  swift_allocObject();

  sub_1D725B59C();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v6;
  sub_1D725B5BC();

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v6;
  sub_1D725B5AC();

  sub_1D725AB0C();

  LOBYTE(v27) = 2;
  swift_allocObject();

  sub_1D725B59C();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v6;
  sub_1D725B5BC();

  sub_1D725AB0C();
}

void sub_1D6A21C84(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);

      ObjectType = swift_getObjectType();
      (*(v5 + 24))(a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D6A21D50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void sub_1D6A21DB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;

    sub_1D725AB1C();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1D6A21ED0()
{
  v0 = sub_1D725828C();
  v1 = [v0 code];

  if (v1 == 2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = Strong + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);

        ObjectType = swift_getObjectType();
        (*(v5 + 16))(ObjectType, v5);
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;

      sub_1D725AB1C();
    }
  }
}

Swift::Void __swiftcall PuzzleEmbedViewController.viewDidLayoutSubviews()()
{
  ObjectType = swift_getObjectType();
  sub_1D5B4D194(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v108[-v4];
  v6 = type metadata accessor for PuzzleData();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v108[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v109.receiver = v0;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, sel_viewDidLayoutSubviews, v9);
  v12 = *&v0[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController];
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v0 view];
  if (!v15)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  [v14 setFrame_];
  v25 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D6A28FE0(&v0[v25], v5, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D6A28B10(v5, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  }

  else
  {
    sub_1D6A285A0(v5, v11, type metadata accessor for PuzzleData);
    v26 = sub_1D6A22688(&v11[*(v6 + 20)]);
    [v12 setConfiguration_];

    sub_1D6A29060(v11, type metadata accessor for PuzzleData);
  }

  v27 = *&v0[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorView];
  v28 = [v0 view];
  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = v28;
  [v28 safeAreaInsets];
  v31 = v30;

  v32 = [v0 view];
  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v32;
  [v32 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v110.origin.x = v35;
  v110.origin.y = v37;
  v110.size.width = v39;
  v110.size.height = v41;
  Width = CGRectGetWidth(v110);
  v43 = [v0 view];
  if (!v43)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = v43;
  [v43 safeAreaInsets];
  v46 = v45;

  v47 = [v0 view];
  if (!v47)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = v47;
  v49 = Width - v46;
  [v47 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v111.origin.x = v51;
  v111.origin.y = v53;
  v111.size.width = v55;
  v111.size.height = v57;
  [v27 setFrame_];
  v58 = *&v0[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_activityIndicator];
  v59 = [v0 view];
  if (!v59)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v60 = v59;
  [v59 safeAreaInsets];
  v62 = v61;

  v63 = [v0 view];
  if (!v63)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v64 = v63;
  [v63 bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v112.origin.x = v66;
  v112.origin.y = v68;
  v112.size.width = v70;
  v112.size.height = v72;
  v73 = CGRectGetWidth(v112);
  v74 = [v0 view];
  if (!v74)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v75 = v74;
  [v74 safeAreaInsets];
  v77 = v76;

  v78 = [v0 view];
  if (!v78)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v79 = v78;
  v80 = v73 - v77;
  [v78 bounds];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;

  v113.origin.x = v82;
  v113.origin.y = v84;
  v113.size.width = v86;
  v113.size.height = v88;
  [v58 setFrame_];
  v89 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView;
  v90 = *&v0[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView];
  if (!v90)
  {
    return;
  }

  v91 = v90;
  v92 = [v0 view];
  if (!v92)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v93 = v92;
  [v92 bounds];
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v101 = v100;

  [v91 setFrame_];
  v102 = *&v0[v89];
  if (v102)
  {
    v103 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
    swift_beginAccess();
    v104 = *&v0[v103];
    v105 = *&v102[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide];
    *&v102[OBJC_IVAR____TtC8NewsFeed23WebEmbedLayoutGuideView_layoutGuide] = v104;
    v106 = v104;
    v107 = v102;

    [v107 setNeedsLayout];
  }
}

id sub_1D6A22688(uint64_t a1)
{
  v52 = a1;
  sub_1D5B4D194(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v46 - v4;
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v56 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7258AAC();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v55 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedAccount];
  v14 = [v13 contentStoreFrontID];

  if (v14)
  {
    v46 = sub_1D726207C();
    v48 = v15;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  sub_1D7258A4C();
  sub_1D6A21158(&v57);
  v16 = 0x69746375646F7270;
  v17 = 0x316F6D6564;
  if (v57 != 6)
  {
    v17 = 0x326F6D6564;
  }

  v18 = 0x6C65766564;
  if (v57 != 4)
  {
    v18 = 0x786F62646E6173;
  }

  if (v57 <= 5u)
  {
    v17 = v18;
  }

  v19 = 24945;
  if (v57 != 2)
  {
    v19 = 1953719668;
  }

  if (v57)
  {
    v16 = 0x676E6967617473;
  }

  if (v57 > 1u)
  {
    v16 = v19;
  }

  if (v57 > 3u)
  {
    v16 = v17;
  }

  v49 = v16;
  v20 = [objc_opt_self() sharedApplication];
  v51 = [v20 preferredContentSizeCategory];

  v21 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v22 = *(v1 + v21);
  v23 = *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation);
  (*(v7 + 16))(v56, v52, v6);
  v24 = v7;
  v25 = v5;
  (*(v7 + 56))(v5, 1, 1, v6);
  v26 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v27 = *(v1 + v26);
  v50 = v23;
  v28 = v6;
  if (v48)
  {
    v29 = v22;
    swift_unknownObjectRetain();
    v30 = v27;
    v31 = v27;
    v52 = sub_1D726203C();
  }

  else
  {
    v32 = v22;
    swift_unknownObjectRetain();
    v30 = v27;
    v33 = v27;
    v52 = 0;
  }

  v48 = sub_1D72589DC();
  v34 = sub_1D726203C();

  v35 = sub_1D725844C();
  v36 = (*(v24 + 48))(v25, 1, v28);
  v47 = v28;
  if (v36 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1D725844C();
    (*(v24 + 8))(v25, v28);
  }

  v38 = objc_allocWithZone(MEMORY[0x1E69CE140]);
  LOBYTE(v45) = 0;
  v44 = v35;
  v39 = v35;
  v41 = v51;
  v40 = v52;
  v42 = v48;
  v49 = [v38 initWithStoreFront:v52 locale:v48 contentEnvironment:v34 contentSizeCategory:v51 layoutGuide:v22 dataSources:0 location:v50 sourceURL:v44 activePictureInPictureURL:v37 feedConfiguration:v30 supportsLiveActivities:v45];

  swift_unknownObjectRelease();
  (*(v24 + 8))(v56, v47);
  (*(v53 + 8))(v55, v54);
  return v49;
}

id PuzzleEmbedViewController.viewWillTransition(to:with:)(uint64_t a1, double a2, double a3)
{
  v8.receiver = v3;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  return [*&v3[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager] setPresentationState_];
}

id PuzzleEmbedViewController.inputAccessoryView.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) inputAccessoryView];

  return v1;
}

id PuzzleEmbedViewController.scriptsManager.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) scriptsManager];

  return v1;
}

void PuzzleEmbedViewController.prepare(layoutGuide:isResizable:)(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = a1;

  v8 = [v2 view];
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];

    v2[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_isResizable] = a2 & 1;
  }

  else
  {
    __break(1u);
  }
}

id PuzzleEmbedViewController.populate(with:puzzleLaunchAction:layoutGuide:location:feedConfiguration:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  swift_getObjectType();

  return sub_1D6A2644C(a1, a2, a3, a4, a5, v5);
}

void sub_1D6A22F4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = (Strong + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
    v2 = Strong;
    swift_beginAccess();
    v3 = *v1;
    sub_1D5DEA510(*v1);

    if (v3)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        v6 = v4 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v6 + 8);

          ObjectType = swift_getObjectType();
          (*(v7 + 32))(ObjectType, v7);
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v3();
      sub_1D5B74328(v3);
    }
  }
}

void sub_1D6A23088(void *a1)
{
  sub_1D5B4D194(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v62 - v7;
  v9 = type metadata accessor for WebEmbedFailureContext();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v62 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v62 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v67 = a1;
    v68 = v9;
    v28 = Strong + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
    swift_beginAccess();
    v29 = type metadata accessor for PuzzleData();
    if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      v30 = *(v29 + 20);
      v65 = v14;
      v31 = (v28 + v30);
      v32 = *(v14 + 16);
      v63 = v32;
      v32(v21, v31, v13);
      v33 = *(v14 + 32);
      v66 = v25;
      v33(v25, v21, v13);
      v32(v17, v25, v13);
      v62 = *&v27[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation];
      v34 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
      swift_beginAccess();
      v64 = type metadata accessor for PuzzleResourceSource;
      sub_1D6A28FE0(&v27[v34], v8, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
      swift_unknownObjectRetain();
      v35 = v67;
      v36 = [v67 contentDomain];
      v37 = sub_1D726207C();
      v39 = v38;

      *v12 = v37;
      v12[1] = v39;
      v40 = [v35 embedName];
      v41 = sub_1D726207C();
      v43 = v42;

      v12[2] = v41;
      v12[3] = v43;
      v44 = [v35 errorType];
      v45 = sub_1D726207C();
      v47 = v46;

      v12[4] = v45;
      v12[5] = v47;
      v67 = v8;
      v49 = v68;
      v48 = v69;
      v63(v12 + *(v68 + 28), v17, v13);
      v50 = [v62 context];
      v51 = sub_1D726207C();
      v53 = v52;

      v54 = (v12 + *(v49 + 32));
      *v54 = v51;
      v54[1] = v53;
      v55 = v67;
      v56 = v64;
      sub_1D6A28FE0(v67, v48, &qword_1EDF2A1E8, v64);
      sub_1D6D2171C(v48, &v70);
      swift_unknownObjectRelease();
      sub_1D6A28B10(v55, &qword_1EDF2A1E8, v56);
      v57 = *(v65 + 8);
      v57(v17, v13);
      v58 = v71;
      v59 = v12 + *(v49 + 36);
      *v59 = v70;
      v59[16] = v58;
      v60 = *&v27[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webEmbedFailureHandler + 8];
      ObjectType = swift_getObjectType();
      (*(v60 + 8))(v27, v12, ObjectType, v60);
      sub_1D6A29060(v12, type metadata accessor for WebEmbedFailureContext);
      v57(v66, v13);
    }
  }
}

Swift::Void __swiftcall PuzzleEmbedViewController.updateWindowSceneTitle()()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        sub_1D6A236AC();
        if (v5)
        {
          v6 = sub_1D726203C();
        }

        else
        {
          v6 = 0;
        }

        [v4 setTitle_];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D6A236AC()
{
  v1 = sub_1D7258AAC();
  v86 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D7257A4C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  v16 = type metadata accessor for PuzzleData();
  v17 = (*(*(v16 - 8) + 48))(v0 + v15, 1, v16);
  result = 0;
  if (v17)
  {
    return result;
  }

  v83 = v14;
  v84 = v9;
  v79 = v6;
  v85 = v11;
  v78 = v1;
  v80 = v0;
  v19 = *(v0 + v15);
  swift_getObjectType();
  v20 = [objc_msgSend(swift_unknownObjectRetain() puzzleType)];
  swift_unknownObjectRelease();
  if (v20)
  {
    v21 = sub_1D726207C();
    v23 = v22;

    v87 = v21;
    v88 = v23;
    v24 = v83;
    sub_1D72579DC();
    sub_1D5BF4D9C();
    v25 = sub_1D7263A4C();
    v27 = v26;
    (*(v85 + 8))(v24, v10);

    v28 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v28 = v25 & 0xFFFFFFFFFFFFLL;
    }

    v29 = v4;
    if (v28)
    {
      v87 = v25;
      v88 = v27;
      MEMORY[0x1DA6F9910](11552, 0xE200000000000000);
      v82 = v87;
      v81 = v88;
    }

    else
    {

      v82 = 0;
      v81 = 0;
    }

    v30 = v10;
  }

  else
  {
    v82 = 0;
    v81 = 0;
    v29 = v4;
    v30 = v10;
    v24 = v83;
  }

  v31 = v5;
  if ((FCPuzzleProviding.puzzleTypeTraits.getter() & 0x10000) == 0)
  {
    v83 = 0;
    v80 = 0;
    v32 = v84;
    goto LABEL_19;
  }

  v33 = *(v80 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDifficultyDescriptionProvider + 24);
  v34 = *(v80 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDifficultyDescriptionProvider + 32);
  __swift_project_boxed_opaque_existential_1((v80 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDifficultyDescriptionProvider), v33);
  v35 = (*(v34 + 8))(v19, v33, v34);
  v32 = v84;
  if (v36)
  {
    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v87 = v35;
      v88 = v36;
      MEMORY[0x1DA6F9910](11552, 0xE200000000000000);
      v83 = v87;
      v80 = v88;
      goto LABEL_19;
    }
  }

  v83 = 0;
  v80 = 0;
LABEL_19:
  v38 = [v19 publishDate];
  if (v38)
  {
    v39 = v38;
    sub_1D72588BC();

    if (qword_1EC87D8C8 != -1)
    {
LABEL_57:
      swift_once();
    }

    v40 = qword_1EC8901F0;
    v41 = sub_1D725881C();
    v42 = [v40 stringFromDate_];

    v43 = sub_1D726207C();
    v45 = v44;

    (*(v79 + 8))(v32, v31);
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [v19 subtitle];
  if (!v46)
  {
    goto LABEL_40;
  }

  v47 = v46;
  v48 = sub_1D726207C();
  v50 = v49;

  v87 = v48;
  v88 = v50;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v32 = sub_1D7263A4C();
  v52 = v51;
  (*(v85 + 8))(v24, v30);

  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v53)
  {

LABEL_40:
    v63 = 0;
    v64 = 0;
    goto LABEL_41;
  }

  sub_1D7258A4C();
  v54 = sub_1D7258A0C();
  if (v55)
  {
    v56 = v54;
  }

  else
  {
    v56 = 0;
  }

  v57 = 0xE000000000000000;
  v85 = v45;
  v58 = v29;
  v29 = v43;
  if (v55)
  {
    v59 = v55;
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  v60 = sub_1D72589FC();
  if (v61)
  {
    v62 = v60;
  }

  else
  {
    v62 = 0;
  }

  if (v61)
  {
    v57 = v61;
  }

  v87 = v56;
  v88 = v59;
  v43 = v29;
  MEMORY[0x1DA6F9910](v32, v52);

  MEMORY[0x1DA6F9910](v62, v57);

  v63 = v87;
  v64 = v88;
  v65 = v58;
  v45 = v85;
  (*(v86 + 8))(v65, v78);
LABEL_41:
  v24 = 0;
  v30 = v89;
  v90 = v82;
  v91 = v81;
  v92 = v83;
  v93 = v80;
  v94 = v43;
  v95 = v45;
  v96 = v63;
  v97 = v64;
  v31 = 4;
  v66 = MEMORY[0x1E69E7CC0];
LABEL_42:
  if (v24 <= 4)
  {
    v67 = 4;
  }

  else
  {
    v67 = v24;
  }

  v68 = v67 + 1;
  v69 = 16 * v24 + 40;
  while (v24 != 4)
  {
    if (v68 == ++v24)
    {
      __break(1u);
      goto LABEL_57;
    }

    v70 = v69 + 16;
    v71 = *&v89[v69];
    v69 += 16;
    if (v71)
    {
      v32 = *(&v86 + v70);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_1D5B858EC(0, *(v66 + 2) + 1, 1, v66);
      }

      v73 = *(v66 + 2);
      v72 = *(v66 + 3);
      v29 = (v73 + 1);
      if (v73 >= v72 >> 1)
      {
        v66 = sub_1D5B858EC((v72 > 1), v73 + 1, 1, v66);
      }

      *(v66 + 2) = v29;
      v74 = &v66[16 * v73];
      *(v74 + 4) = v32;
      *(v74 + 5) = v71;
      goto LABEL_42;
    }
  }

  v75 = MEMORY[0x1E69E6158];
  sub_1D6A28BEC(0, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  v87 = v66;
  sub_1D6A28BEC(0, &qword_1EDF43BA0, v75, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v76 = sub_1D7261F3C();

  swift_unknownObjectRelease();
  return v76;
}

id PuzzleEmbedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id PuzzleEmbedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6A241BC()
{
  v1 = (*v0 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D6A24218(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D6A242E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 + 132) = a8;
  *(v8 + 152) = a6;
  *(v8 + 160) = a7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  v9 = type metadata accessor for PuzzleResourceSource();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  sub_1D5B4D194(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  *(v8 + 192) = swift_task_alloc();
  v10 = type metadata accessor for PuzzleData();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  sub_1D726290C();
  *(v8 + 224) = sub_1D72628FC();
  v12 = sub_1D726285C();
  *(v8 + 232) = v12;
  *(v8 + 240) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D6A24494, v12, v11);
}

uint64_t sub_1D6A24494()
{
  v1 = *(v0 + 132);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 128) = v1;
  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_1D6A24554;
  v3 = *(v0 + 216);
  v4 = *(v0 + 144);

  return sub_1D5FD813C(v3, v4, v0 + 112);
}

uint64_t sub_1D6A24554()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_1D6A24854;
  }

  else
  {
    v5 = sub_1D6A24668;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6A24668()
{
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[24];
  v5 = v0[17];

  sub_1D5C10C48(v1, v4, type metadata accessor for PuzzleData);
  (*(v3 + 56))(v4, 0, 1, v2);
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D6A28C3C(v4, v5 + v6, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  swift_endAccess();
  v7 = *(v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  v8 = *(*(v1 + *(v2 + 24)) + 16);
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D5B6B06C;
  v0[5] = &block_descriptor_41_0;
  v9 = _Block_copy(v0 + 2);
  v10 = v8;
  [v7 loadLocalDatastore:v10 options:1 completion:v9];
  _Block_release(v9);

  sub_1D6A29060(v1, type metadata accessor for PuzzleData);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D6A24854()
{
  v28 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = v0[32];
  v2 = v0[17];
  v3 = sub_1D725C42C();
  __swift_project_value_buffer(v3, qword_1EDFFCFA8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = v0[22];
    v10 = v0[17];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136315394;
    v14 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
    swift_beginAccess();
    if ((*(v9 + 48))(v10 + v14, 1, v8))
    {
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    else
    {
      v18 = v0[23];
      sub_1D5C10C48(v10 + v14, v18, type metadata accessor for PuzzleResourceSource);
      v19 = PuzzleResourceSource.identifier.getter();
      v16 = v20;
      sub_1D6A29060(v18, type metadata accessor for PuzzleResourceSource);
      v15 = v19;
    }

    v21 = v0[32];
    v22 = sub_1D5BC5100(v15, v16, &v27);

    *(v11 + 4) = v22;
    *(v11 + 12) = 2112;
    v23 = v21;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v24;
    *v12 = v24;
    _os_log_impl(&dword_1D5B42000, v6, v7, "Error fetching puzzle data for puzzleID=%s error= %@", v11, 0x16u);
    sub_1D6A29060(v12, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
  }

  else
  {
    v17 = v0[32];
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1D6A24B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  *(v8 + 132) = a8;
  *(v8 + 152) = a6;
  *(v8 + 160) = a7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  v9 = type metadata accessor for PuzzleResourceSource();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  sub_1D5B4D194(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, MEMORY[0x1E69E6720]);
  *(v8 + 192) = swift_task_alloc();
  v10 = type metadata accessor for PuzzleData();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  sub_1D726290C();
  *(v8 + 232) = sub_1D72628FC();
  v12 = sub_1D726285C();
  *(v8 + 240) = v12;
  *(v8 + 248) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D6A24CF4, v12, v11);
}

uint64_t sub_1D6A24CF4()
{
  v1 = *(v0 + 132);
  *(v0 + 112) = *(v0 + 152);
  *(v0 + 128) = v1;
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *v2 = v0;
  v2[1] = sub_1D6A24DB4;
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);

  return sub_1D5FD813C(v3, v4, v0 + 112);
}

uint64_t sub_1D6A24DB4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_1D6A252FC;
  }

  else
  {
    v5 = sub_1D6A24EC8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D6A24EC8()
{
  v33 = v0;
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[24];
  v5 = v0[17];

  sub_1D5C10C48(v1, v4, type metadata accessor for PuzzleData);
  (*(v2 + 56))(v4, 0, 1, v3);
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D6A28C3C(v4, v5 + v6, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  swift_endAccess();
  v7 = *(v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleAccessArbiter + 24);
  v8 = *(v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleAccessArbiter + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleAccessArbiter), v7);
  v9 = (*(v8 + 16))(*v1, v7, v8);
  v10 = *(v5 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController);
  [v10 setFocusShouldStartInputSession_];
  v11 = sub_1D6A22688(v1 + *(v3 + 20));
  [v10 setConfiguration_];

  v12 = *(*(v1 + *(v3 + 24)) + 16);
  v0[6] = nullsub_1;
  v0[7] = 0;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D5B6B06C;
  v0[5] = &block_descriptor_63;
  v13 = _Block_copy(v0 + 2);
  v14 = v12;
  [v10 loadLocalDatastore:v14 options:1 completion:v13];
  _Block_release(v13);

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v16 = v0[27];
  v15 = v0[28];
  v17 = sub_1D725C42C();
  __swift_project_value_buffer(v17, qword_1EDFFCFA8);
  sub_1D5C10C48(v15, v16, type metadata accessor for PuzzleData);
  v18 = sub_1D725C3FC();
  v19 = sub_1D7262EDC();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[27];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v23 = v32;
    *v22 = 136315138;
    v24 = *(v21 + *(v3 + 24));
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);

    sub_1D6A29060(v21, type metadata accessor for PuzzleData);
    v27 = sub_1D5BC5100(v25, v26, &v32);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_1D5B42000, v18, v19, "Puzzle Embed loaded with initial puzzle data:\n%s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1DA6FD500](v23, -1, -1);
    MEMORY[0x1DA6FD500](v22, -1, -1);
  }

  else
  {

    sub_1D6A29060(v21, type metadata accessor for PuzzleData);
  }

  v28 = v0[28];
  v29 = sub_1D725844C();
  [v10 loadURL_];

  sub_1D6A29060(v28, type metadata accessor for PuzzleData);

  v30 = v0[1];

  return v30();
}

uint64_t sub_1D6A252FC()
{
  v28 = v0;

  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = *(v0 + 136);
  v3 = sub_1D725C42C();
  __swift_project_value_buffer(v3, qword_1EDFFCFA8);
  v4 = v2;
  v5 = v1;
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 136);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v11 = 136315394;
    v14 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
    swift_beginAccess();
    if ((*(v9 + 48))(v10 + v14, 1, v8))
    {
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    else
    {
      v17 = *(v0 + 184);
      sub_1D5C10C48(v10 + v14, v17, type metadata accessor for PuzzleResourceSource);
      v18 = PuzzleResourceSource.identifier.getter();
      v16 = v19;
      sub_1D6A29060(v17, type metadata accessor for PuzzleResourceSource);
      v15 = v18;
    }

    v20 = *(v0 + 264);
    v21 = sub_1D5BC5100(v15, v16, &v27);

    *(v11 + 4) = v21;
    *(v11 + 12) = 2112;
    v22 = v20;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v23;
    *v12 = v23;
    _os_log_impl(&dword_1D5B42000, v6, v7, "Error fetching initial puzzle data for puzzleID=%s error= %@", v11, 0x16u);
    sub_1D6A29060(v12, sub_1D5F156F4);
    MEMORY[0x1DA6FD500](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v11, -1, -1);
  }

  *(v0 + 272) = 2;

  sub_1D725AB1C();
  v24 = *(v0 + 264);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D6A25618()
{
  v1 = *v0;
  v2 = (v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  result = sub_1D5B74328(v3);
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
  return result;
}

void sub_1D6A25678()
{
  sub_1D6A28BA8(&qword_1EC890288);

  JUMPOUT(0x1DA6F6FC0);
}

void sub_1D6A25844(double a1, uint64_t a2, uint64_t a3, const char *a4, SEL *a5)
{
  v8 = type metadata accessor for PuzzleResourceSource();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v15 = sub_1D725C42C();
    __swift_project_value_buffer(v15, qword_1EDFFCFA8);
    v16 = v14;
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();

    if (os_log_type_enabled(v17, v18))
    {
      v34[0] = a4;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136315394;
      v21 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
      swift_beginAccess();
      if ((*(v9 + 48))(&v16[v21], 1, v8))
      {
        v22 = 0;
        v23 = 0xE000000000000000;
      }

      else
      {
        sub_1D5C10C48(&v16[v21], v12, type metadata accessor for PuzzleResourceSource);
        v24 = PuzzleResourceSource.identifier.getter();
        v23 = v25;
        sub_1D6A29060(v12, type metadata accessor for PuzzleResourceSource);
        v22 = v24;
      }

      v26 = sub_1D5BC5100(v22, v23, &v35);

      *(v19 + 4) = v26;
      *(v19 + 12) = 2080;
      v27 = (CACurrentMediaTime() - a1) * 1000.0;
      v34[1] = 0;
      v34[2] = 0xE000000000000000;
      MEMORY[0x1DA6F9910](37, 0xE100000000000000);
      sub_1D7262ABC();
      MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
      sub_1D5B4D194(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1D7273AE0;
      v29 = MEMORY[0x1E69E6438];
      *(v28 + 56) = MEMORY[0x1E69E63B0];
      *(v28 + 64) = v29;
      *(v28 + 32) = v27 / 1000.0;
      v30 = sub_1D72620BC();
      v32 = v31;

      v33 = sub_1D5BC5100(v30, v32, &v35);

      *(v19 + 14) = v33;
      _os_log_impl(&dword_1D5B42000, v17, v18, v34[0], v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }

    [*&v16[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_activityIndicator] *a5];
  }
}

void sub_1D6A25C28(unsigned __int8 *a1, double a2)
{
  v4 = type metadata accessor for PuzzleResourceSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (v9)
    {
      if (v9 != 1)
      {
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v22 = sub_1D725C42C();
        __swift_project_value_buffer(v22, qword_1EDFFCFA8);
        v13 = v11;
        v23 = sub_1D725C3FC();
        v24 = sub_1D7262EDC();

        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v55 = v26;
          *v25 = 136315394;
          v27 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
          swift_beginAccess();
          if ((*(v5 + 48))(&v13[v27], 1, v4))
          {
            v28 = 0;
            v29 = 0xE000000000000000;
          }

          else
          {
            sub_1D5C10C48(&v13[v27], v8, type metadata accessor for PuzzleResourceSource);
            v42 = PuzzleResourceSource.identifier.getter();
            v29 = v43;
            sub_1D6A29060(v8, type metadata accessor for PuzzleResourceSource);
            v28 = v42;
          }

          v44 = sub_1D5BC5100(v28, v29, &v55);

          *(v25 + 4) = v44;
          *(v25 + 12) = 2080;
          v45 = (CACurrentMediaTime() - a2) * 1000.0;
          v53 = 0;
          v54 = 0xE000000000000000;
          MEMORY[0x1DA6F9910](37, 0xE100000000000000);
          sub_1D7262ABC();
          MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
          sub_1D5B4D194(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
          v46 = swift_allocObject();
          *(v46 + 16) = xmmword_1D7273AE0;
          v47 = MEMORY[0x1E69E6438];
          *(v46 + 56) = MEMORY[0x1E69E63B0];
          *(v46 + 64) = v47;
          *(v46 + 32) = v45 / 1000.0;
          v48 = sub_1D72620BC();
          v50 = v49;

          v51 = sub_1D5BC5100(v48, v50, &v55);

          *(v25 + 14) = v51;
          _os_log_impl(&dword_1D5B42000, v23, v24, "Puzzle did enter error state, puzzleID=%s, duration=%s", v25, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6FD500](v26, -1, -1);
          MEMORY[0x1DA6FD500](v25, -1, -1);
        }

        if (*(*&v13[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDataManager] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_configuration) == 1)
        {
          [*&v13[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorView] setHidden_];
        }

        [*&v13[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager] setPresentationState_];
        goto LABEL_25;
      }

      if (qword_1EDF3B838 != -1)
      {
        swift_once();
      }

      v12 = sub_1D725C42C();
      __swift_project_value_buffer(v12, qword_1EDFFCFA8);
      v13 = v11;
      v14 = sub_1D725C3FC();
      v15 = sub_1D7262EDC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v55 = v17;
        *v16 = 136315394;
        v18 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
        swift_beginAccess();
        if ((*(v5 + 48))(&v13[v18], 1, v4))
        {
          v19 = 0;
          v20 = 0xE000000000000000;
        }

        else
        {
          sub_1D5C10C48(&v13[v18], v8, type metadata accessor for PuzzleResourceSource);
          v30 = PuzzleResourceSource.identifier.getter();
          v20 = v31;
          sub_1D6A29060(v8, type metadata accessor for PuzzleResourceSource);
          v19 = v30;
        }

        v32 = sub_1D5BC5100(v19, v20, &v55);

        *(v16 + 4) = v32;
        *(v16 + 12) = 2080;
        v33 = (CACurrentMediaTime() - a2) * 1000.0;
        v53 = 0;
        v54 = 0xE000000000000000;
        MEMORY[0x1DA6F9910](37, 0xE100000000000000);
        sub_1D7262ABC();
        MEMORY[0x1DA6F9910](29542, 0xE200000000000000);
        sub_1D5B4D194(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1D7273AE0;
        v35 = MEMORY[0x1E69E6438];
        *(v34 + 56) = MEMORY[0x1E69E63B0];
        *(v34 + 64) = v35;
        *(v34 + 32) = v33 / 1000.0;
        v36 = sub_1D72620BC();
        v38 = v37;

        v39 = sub_1D5BC5100(v36, v38, &v55);

        *(v16 + 14) = v39;
        _os_log_impl(&dword_1D5B42000, v14, v15, "Puzzle did enter loaded state, puzzle=%s duration=%s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6FD500](v17, -1, -1);
        MEMORY[0x1DA6FD500](v16, -1, -1);
      }

      v40 = [*&v13[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController] view];
      if (v40)
      {
        v41 = v40;
        [v40 setHidden_];

        [*&v13[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager] setPresentationState_];
        goto LABEL_25;
      }
    }

    else
    {
      v21 = [*(Strong + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) view];
      if (v21)
      {
        v13 = v21;
        [v21 setHidden_];

LABEL_25:
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

id sub_1D6A263D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EC8901F0 = v0;
  return result;
}

id sub_1D6A2644C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, char *a6)
{
  v77 = a4;
  v78 = a5;
  v10 = type metadata accessor for PuzzleResourceSource();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v71 = v13;
  v73 = &v65[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1E69E6720];
  sub_1D5B4D194(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v72 = &v65[-v17];
  sub_1D5B4D194(0, qword_1EDF41DF0, type metadata accessor for PuzzleData, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v65[-v20];
  v22 = type metadata accessor for PuzzleData();
  v75 = *(v22 - 8);
  v76 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v74 = &v65[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5B4D194(0, &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource, v14);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v65[-v27];
  v29 = *(a2 + 8);
  v68 = *a2;
  v67 = v29;
  v66 = *(a2 + 16);
  v69 = a1;
  sub_1D5C10C48(a1, v28, type metadata accessor for PuzzleResourceSource);
  v70 = v11;
  (*(v11 + 56))(v28, 0, 1, v10);
  v30 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
  swift_beginAccess();
  sub_1D6A28C3C(v28, &a6[v30], &qword_1EDF2A1E8, type metadata accessor for PuzzleResourceSource);
  swift_endAccess();
  v31 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  swift_beginAccess();
  v32 = *&a6[v31];
  *&a6[v31] = a3;
  v33 = a3;

  result = [a6 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v35 = result;
  [result setNeedsLayout];

  *&a6[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation] = v77;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v37 = *&a6[v36];
  v38 = v78;
  *&a6[v36] = v78;
  v39 = v38;

  result = [a6 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v40 = result;
  [result setNeedsLayout];

  v41 = *&a6[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_interactionProvider];
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = sub_1D6A28CBC;
  v84 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1D5B6B06C;
  v82 = &block_descriptor_51;
  v43 = _Block_copy(&aBlock);

  [v41 setInteractionBlock_];
  _Block_release(v43);
  v44 = *&a6[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_failureProvider];
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v83 = sub_1D6A28CC4;
  v84 = v45;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = sub_1D6A20938;
  v82 = &block_descriptor_55;
  v46 = _Block_copy(&aBlock);

  [v44 onEvent_];
  _Block_release(v46);
  v47 = *&a6[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController];
  [v47 setPocketsEnabled_];
  v48 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  sub_1D6A28FE0(&a6[v48], v21, qword_1EDF41DF0, type metadata accessor for PuzzleData);
  v49 = v76;
  if ((*(v75 + 48))(v21, 1, v76) == 1)
  {
    result = sub_1D6A28B10(v21, qword_1EDF41DF0, type metadata accessor for PuzzleData);
    if (a6[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] != 1)
    {
      a6[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] = 1;
      v50 = sub_1D726294C();
      v51 = v72;
      (*(*(v50 - 8) + 56))(v72, 1, 1, v50);
      v52 = v73;
      sub_1D5C10C48(v69, v73, type metadata accessor for PuzzleResourceSource);
      sub_1D726290C();
      v53 = a6;
      v54 = v68;
      v55 = v67;
      v56 = v66;
      sub_1D5FE3DF8(v68, v67, v66);
      v57 = sub_1D72628FC();
      v58 = (*(v70 + 80) + 40) & ~*(v70 + 80);
      v59 = (v71 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      v61 = MEMORY[0x1E69E85E0];
      v60[2] = v57;
      v60[3] = v61;
      v60[4] = v53;
      sub_1D6A285A0(v52, v60 + v58, type metadata accessor for PuzzleResourceSource);
      v62 = v60 + v59;
      *v62 = v54;
      *(v62 + 1) = v55;
      *(v62 + 4) = v56;
      sub_1D6BD1334(0, 0, v51, &unk_1D7312E10, v60);
    }
  }

  else
  {
    v63 = v74;
    sub_1D6A285A0(v21, v74, type metadata accessor for PuzzleData);
    v64 = sub_1D6A22688(&v63[*(v49 + 20)]);
    [v47 setConfiguration_];

    return sub_1D6A29060(v63, type metadata accessor for PuzzleData);
  }

  return result;
}

id keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

char *sub_1D6A26D7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, objc_class *a14, uint64_t a15, uint64_t a16)
{
  v93 = a6;
  v89 = a5;
  v99 = a4;
  v91 = a13;
  v90 = a12;
  v92 = a11;
  v100 = a10;
  v20 = sub_1D725C9FC();
  v97 = *(v20 - 8);
  v98 = v20;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v94 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v95 = &v87 - v25;
  sub_1D5B4D194(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v29 = &v87 - v28;
  v103[3] = a15;
  v103[4] = a16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
  (*(*(a15 - 8) + 32))(boxed_opaque_existential_1, a8, a15);
  v96 = a14;
  v31 = objc_allocWithZone(a14);
  v32 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_activityIndicator;
  *&v31[v32] = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v33 = sub_1D72585BC();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v29, 1, 1, v33);
  v35 = sub_1D726203C();
  v36 = 0;
  if ((*(v34 + 48))(v29, 1, v33) != 1)
  {
    v36 = sub_1D725844C();
    (*(v34 + 8))(v29, v33);
  }

  v37 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation;
  v38 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v35 URL:v36];

  *&v31[v37] = v38;
  v39 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onReuse;
  sub_1D6A28BEC(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v31[v39] = [objc_allocWithZone(v40) init];
  v41 = &v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier];
  *v41 = 0;
  v41[1] = 0;
  v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_isResizable] = 0;
  v42 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  v43 = type metadata accessor for PuzzleData();
  (*(*(v43 - 8) + 56))(&v31[v42], 1, 1, v43);
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v44 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
  v45 = type metadata accessor for PuzzleResourceSource();
  (*(*(v45 - 8) + 56))(&v31[v44], 1, 1, v45);
  v46 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  *&v31[v46] = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView] = 0;
  v47 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  *&v31[v47] = [objc_allocWithZone(MEMORY[0x1E69CE168]) init];
  v48 = &v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction];
  *v48 = 0;
  v48[1] = 0;
  v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController____lazy_storage___contentEnvironment] = 8;
  v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted] = 0;
  v49 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController;
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController] = a1;
  v50 = v49;
  v88 = v49;
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_interactionProvider] = a2;
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_actionProvider] = a3;
  v51 = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v52 = [v51 errorProvider];
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorProvider] = v52;
  v53 = [v51 failureProvider];
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_failureProvider] = v53;
  v54 = [v51 presentationManager];
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_presentationManager] = v54;
  v55 = &v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDataManager];
  v56 = v89;
  *v55 = v99;
  v55[1] = v56;
  sub_1D5B68374(v103, &v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleAccessArbiter]);
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_bundleSubscriptionManager] = a9;
  LOBYTE(v102[0]) = 0;
  sub_1D6A277B0();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleLoadingStateMachine] = sub_1D725AB4C();
  swift_beginAccess();
  v57 = *v48;
  *v48 = 0;
  v48[1] = 0;
  sub_1D5B74328(v57);
  v58 = v91;
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_textInputTraits] = v91;
  sub_1D5B68374(v100, &v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDifficultyDescriptionProvider]);
  v59 = &v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webEmbedFailureHandler];
  v60 = v90;
  *v59 = v92;
  v59[1] = v60;
  v61 = *&v31[v50];
  sub_1D5B4D194(0, &qword_1EDF01D10, type metadata accessor for Identifier, MEMORY[0x1E69E6F90]);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D7274590;
  v63 = *MEMORY[0x1E69DE110];
  v64 = *MEMORY[0x1E69DE1B8];
  *(v62 + 32) = *MEMORY[0x1E69DE110];
  *(v62 + 40) = v64;
  v65 = *MEMORY[0x1E69DE1E0];
  v66 = *MEMORY[0x1E69DE1B0];
  *(v62 + 48) = *MEMORY[0x1E69DE1E0];
  *(v62 + 56) = v66;
  type metadata accessor for Identifier(0);
  v67 = v58;
  swift_unknownObjectRetain();
  v68 = v61;
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = sub_1D726265C();

  [v68 removeMenusForIdentifiers_];

  v74 = [*&v31[v88] messageHandlerManager];
  v75 = v93;
  swift_unknownObjectRetain();
  v76 = sub_1D726203C();
  [v74 addMessageHandler:v75 name:v76];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  type metadata accessor for PuzzleDataManager();
  if (swift_dynamicCastClass())
  {
    *(v75 + OBJC_IVAR____TtC8NewsFeed28PuzzleProgressMessageHandler_delegate + 8) = &off_1F512AFE8;
    swift_unknownObjectWeakAssign();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v78 = objc_opt_self();
  v79 = [v78 bundleForClass_];
  sub_1D725811C();

  v80 = [v78 bundleForClass_];
  sub_1D725811C();

  v81 = v95;
  sub_1D725C9EC();
  v83 = v97;
  v82 = v98;
  (*(v97 + 16))(v94, v81, v98);
  v102[3] = sub_1D725CB3C();
  v102[4] = MEMORY[0x1E69D75D0];
  __swift_allocate_boxed_opaque_existential_1(v102);
  sub_1D725CB1C();
  v84 = objc_allocWithZone(sub_1D725FB4C());
  *&v31[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_errorView] = sub_1D725FB3C();
  v101.receiver = v31;
  v101.super_class = v96;
  v85 = objc_msgSendSuper2(&v101, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v100);
  (*(v83 + 8))(v81, v82);
  __swift_destroy_boxed_opaque_existential_1(v103);
  *(*&v85[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleDataManager] + OBJC_IVAR____TtC8NewsFeed17PuzzleDataManager_delegate + 8) = &off_1F51A55E8;
  swift_unknownObjectWeakAssign();
  return v85;
}

void sub_1D6A277B0()
{
  if (!qword_1EC890280)
  {
    sub_1D5E01FBC();
    v0 = sub_1D725AB7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890280);
    }
  }
}

uint64_t sub_1D6A27814(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6720];
  sub_1D5B4D194(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v132 = &v118 - v7;
  sub_1D5B4D194(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v126 = &v118 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v128 = &v118 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v134 = &v118 - v20;
  v21 = type metadata accessor for PuzzleResourceSource();
  v130 = *(v21 - 8);
  v131 = v21;
  v22 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v125 = (&v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24, v25);
  v129 = &v118 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v133 = (&v118 - v29);
  v30 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  swift_beginAccess();
  v31 = type metadata accessor for PuzzleData();
  result = (*(*(v31 - 8) + 48))(&v2[v30], 1, v31);
  if (!result)
  {
    v33 = *(a1 + 16);
    if (v33)
    {
      v119 = v11;
      v34 = *&v2[v30];
      v122 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation;
      v121 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleLoadingStateMachine;
      v120 = &v2[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleAccessArbiter];
      v123 = v22 + 7;
      result = swift_unknownObjectRetain();
      v35 = 0;
      v36 = 1 - v33;
      v37 = (a1 + 48);
      v127 = v34;
      v124 = v2;
      while (1)
      {
        if (v35)
        {
          if (!v36)
          {
            return swift_unknownObjectRelease();
          }

          goto LABEL_9;
        }

        v38 = *v37;
        if (*v37)
        {
          v39 = *(v37 - 2);
          v136 = *(v37 - 1);
          if (v38 == 1)
          {
            v40 = v39;
            v41 = [swift_unknownObjectRetain() identifier];
            v42 = sub_1D726207C();
            v44 = v43;

            v45 = [v34 identifier];
            v46 = sub_1D726207C();
            v48 = v47;

            if (v42 == v46 && v44 == v48)
            {

              goto LABEL_19;
            }

            v58 = sub_1D72646CC();

            if (v58)
            {
LABEL_19:
              v135 = v39;
              v59 = [*&v2[v122] context];
              v60 = sub_1D726207C();
              v62 = v61;

              v63 = sub_1D72585BC();
              v64 = *(v63 - 8);
              v65 = v132;
              (*(v64 + 56))(v132, 1, 1, v63);
              v66 = sub_1D726203C();
              v67 = (*(v64 + 48))(v65, 1, v63);
              v68 = 0;
              if (v67 != 1)
              {
                v69 = v132;
                v68 = sub_1D725844C();
                v70 = v69;
                v34 = v127;
                (*(v64 + 8))(v70, v63);
              }

              v71 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v66 URL:v68];

              v72 = [v71 context];
              v73 = sub_1D726207C();
              v75 = v74;

              if (v60 == v73 && v62 == v75)
              {

                v39 = v135;
                goto LABEL_28;
              }

              v88 = sub_1D72646CC();

              v39 = v135;
              if (v88)
              {
LABEL_28:

                sub_1D725AB5C();

                if (v145 == 2)
                {
                  v89 = *(v120 + 3);
                  v90 = *(v120 + 4);
                  __swift_project_boxed_opaque_existential_1(v120, v89);
                  if ((*(v90 + 8))(v34, v89, v90))
                  {
                    v91 = [v34 identifier];
                    v92 = sub_1D726207C();
                    v94 = v93;

                    v95 = v125;
                    *v125 = v92;
                    v95[1] = v94;
                    swift_storeEnumTagMultiPayload();
                    v96 = sub_1D726294C();
                    v97 = *(v96 - 8);
                    (*(v97 + 56))(v126, 1, 1, v96);
                    v98 = v129;
                    sub_1D5C10C48(v95, v129, type metadata accessor for PuzzleResourceSource);
                    sub_1D726290C();
                    v99 = v2;
                    v100 = sub_1D72628FC();
                    v101 = (*(v130 + 80) + 40) & ~*(v130 + 80);
                    v102 = (v123 + v101) & 0xFFFFFFFFFFFFFFF8;
                    v103 = swift_allocObject();
                    v103[2] = v100;
                    v103[3] = MEMORY[0x1E69E85E0];
                    v103[4] = v99;
                    sub_1D6A285A0(v98, v103 + v101, type metadata accessor for PuzzleResourceSource);
                    v104 = v103 + v102;
                    *v104 = 0;
                    *(v104 + 1) = 0;
                    *(v104 + 4) = -16777216;
                    v105 = v119;
                    sub_1D6A28FE0(v126, v119, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
                    LODWORD(v100) = (*(v97 + 48))(v105, 1, v96);

                    if (v100 == 1)
                    {
                      sub_1D6A28B10(v105, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
                    }

                    else
                    {
                      sub_1D726293C();
                      (*(v97 + 8))(v105, v96);
                    }

                    v112 = v103[2];
                    swift_unknownObjectRetain();

                    v2 = v124;
                    v34 = v127;
                    v113 = v135;
                    if (v112)
                    {
                      swift_getObjectType();
                      v114 = sub_1D726285C();
                      v116 = v115;
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v114 = 0;
                      v116 = 0;
                    }

                    sub_1D6A28B10(v126, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
                    v117 = swift_allocObject();
                    *(v117 + 16) = &unk_1D7312DE0;
                    *(v117 + 24) = v103;
                    if (v116 | v114)
                    {
                      v141 = 0;
                      v142 = 0;
                      v143 = v114;
                      v144 = v116;
                    }

                    swift_task_create();

                    v35 = 1;
                    sub_1D5FE38D8(v113, v136, 1u);
                    result = sub_1D6A29060(v125, type metadata accessor for PuzzleResourceSource);
                    if (!v36)
                    {
                      return swift_unknownObjectRelease();
                    }

                    goto LABEL_6;
                  }
                }
              }
            }

            result = sub_1D5FE38D8(v39, v136, 1u);
            if (!v36)
            {
              return swift_unknownObjectRelease();
            }

            goto LABEL_5;
          }

          v135 = v39;
          v49 = v39;
          v50 = [swift_unknownObjectRetain() identifier];
          v51 = sub_1D726207C();
          v53 = v52;

          v54 = [v34 identifier];
          v55 = sub_1D726207C();
          v57 = v56;

          if (v51 == v55 && v53 == v57)
          {

LABEL_25:
            v77 = v133;
            *v133 = v51;
            v77[1] = v53;
            swift_storeEnumTagMultiPayload();
            v78 = sub_1D726294C();
            v79 = *(v78 - 8);
            (*(v79 + 56))(v134, 1, 1, v78);
            v80 = v129;
            sub_1D5C10C48(v77, v129, type metadata accessor for PuzzleResourceSource);
            sub_1D726290C();
            v81 = v2;
            v82 = sub_1D72628FC();
            v83 = (*(v130 + 80) + 40) & ~*(v130 + 80);
            v84 = (v123 + v83) & 0xFFFFFFFFFFFFFFF8;
            v85 = swift_allocObject();
            v85[2] = v82;
            v85[3] = MEMORY[0x1E69E85E0];
            v85[4] = v81;
            sub_1D6A285A0(v80, v85 + v83, type metadata accessor for PuzzleResourceSource);
            v86 = v85 + v84;
            *v86 = 0;
            *(v86 + 1) = 0;
            *(v86 + 4) = -16777216;
            v87 = v128;
            sub_1D6A28FE0(v134, v128, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
            LODWORD(v82) = (*(v79 + 48))(v87, 1, v78);

            if (v82 == 1)
            {
              sub_1D6A28B10(v87, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
            }

            else
            {
              sub_1D726293C();
              (*(v79 + 8))(v87, v78);
            }

            v106 = v85[2];
            swift_unknownObjectRetain();

            v2 = v124;
            v34 = v127;
            v107 = v135;
            if (v106)
            {
              swift_getObjectType();
              v108 = sub_1D726285C();
              v110 = v109;
              swift_unknownObjectRelease();
            }

            else
            {
              v108 = 0;
              v110 = 0;
            }

            sub_1D6A28B10(v134, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
            v111 = swift_allocObject();
            *(v111 + 16) = &unk_1D7312DF8;
            *(v111 + 24) = v85;
            if (v110 | v108)
            {
              v137 = 0;
              v138 = 0;
              v139 = v108;
              v140 = v110;
            }

            swift_task_create();

            sub_1D5FE38D8(v107, v136, 2u);
            result = sub_1D6A29060(v133, type metadata accessor for PuzzleResourceSource);
            if (!v36)
            {
              return swift_unknownObjectRelease();
            }

LABEL_9:
            v35 = 1;
            goto LABEL_6;
          }

          v76 = sub_1D72646CC();

          if (v76)
          {
            goto LABEL_25;
          }

          result = sub_1D5FE38D8(v135, v136, 2u);
          if (!v36)
          {
            return swift_unknownObjectRelease();
          }
        }

        else if (!v36)
        {
          return swift_unknownObjectRelease();
        }

LABEL_5:
        v35 = 0;
LABEL_6:
        ++v36;
        v37 += 24;
        if (v36 == 1)
        {
          __break(1u);
          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6A285A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A28608(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PuzzleResourceSource() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 4);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64680;

  return sub_1D6A242E0(a1, v7, v8, v9, v1 + v6, v11, v12, v13);
}

void sub_1D6A28754()
{
  v1 = v0;
  sub_1D5B4D194(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - v4;
  v6 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_activityIndicator;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v5, 1, 1, v7);
  v9 = sub_1D726203C();
  v10 = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    v10 = sub_1D725844C();
    (*(v8 + 8))(v5, v7);
  }

  v11 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_embedLocation;
  v12 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v9 URL:v10];

  *(v1 + v11) = v12;
  v13 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onReuse;
  sub_1D6A28BEC(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v1 + v13) = [objc_allocWithZone(v14) init];
  v15 = (v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_isResizable) = 0;
  v16 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleData;
  v17 = type metadata accessor for PuzzleData();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v18 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_puzzleSource;
  v19 = type metadata accessor for PuzzleResourceSource();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuide;
  *(v1 + v20) = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_layoutGuideView) = 0;
  v21 = OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_feedConfiguration;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x1E69CE168]) init];
  v22 = (v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
  *v22 = 0;
  v22[1] = 0;
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController____lazy_storage___contentEnvironment) = 8;
  *(v1 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6A28B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B4D194(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6A28BA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PuzzleEmbedViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6A28BEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D6A28C3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B4D194(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_20Tm_1()
{
  v1 = *(type metadata accessor for PuzzleResourceSource() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      sub_1D5B4D334();
      v7 = v6;
      v8 = *(v6 + 48);
      v9 = sub_1D72585BC();
      v10 = *(v9 - 8);
      v11 = *(v10 + 8);
      v11(v4 + v8, v9);
      v12 = *(v7 + 64);
      if (!(*(v10 + 48))(v4 + v12, 1, v9))
      {
        v11(v4 + v12, v9);
      }

      break;
    case 1:
      swift_unknownObjectRelease();
      break;
    case 0:

      break;
  }

  if (HIBYTE(*(v0 + v3 + 16)) != 255)
  {
    sub_1D5FE3E40(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), HIBYTE(*(v0 + v3 + 16)));
  }

  return swift_deallocObject();
}

uint64_t sub_1D6A28E94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PuzzleResourceSource() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 4);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D5B64684;

  return sub_1D6A24B34(a1, v7, v8, v9, v1 + v6, v11, v12, v13);
}

uint64_t sub_1D6A28FE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B4D194(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6A29060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6A290C0()
{
  if (!qword_1EC890298)
  {
    sub_1D6749644();
    sub_1D5E01FBC();
    v0 = sub_1D725B5EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890298);
    }
  }
}

uint64_t FamilySharingError.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D6A29254()
{
  result = qword_1EC8902A8;
  if (!qword_1EC8902A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8902A8);
  }

  return result;
}

uint64_t static FormatAssetURL.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A250(v2, v3);
}

uint64_t FormatAssetURL.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatAssetURL.parameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

unint64_t sub_1D6A293B0(uint64_t a1)
{
  result = sub_1D6A293D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A293D8()
{
  result = qword_1EC8902B0;
  if (!qword_1EC8902B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8902B0);
  }

  return result;
}

uint64_t sub_1D6A2942C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D633A250(v2, v3);
}

unint64_t sub_1D6A294A0(void *a1)
{
  a1[1] = sub_1D5F868E4();
  a1[2] = sub_1D6704310();
  result = sub_1D6A294D8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A294D8()
{
  result = qword_1EC8902B8;
  if (!qword_1EC8902B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8902B8);
  }

  return result;
}

uint64_t type metadata accessor for FormatPackageError()
{
  result = qword_1EC8902C0;
  if (!qword_1EC8902C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6A295B8()
{
  sub_1D6A29864(319, &qword_1EC8902D0);
  if (v0 <= 0x3F)
  {
    sub_1D6A29864(319, &qword_1EC8902D8);
    if (v1 <= 0x3F)
    {
      sub_1D6A2972C(319, &qword_1EC8847C8, type metadata accessor for FormatSlotDefinition);
      if (v2 <= 0x3F)
      {
        sub_1D6A2972C(319, &qword_1EC8902E0, type metadata accessor for FormatSnippet);
        if (v3 <= 0x3F)
        {
          sub_1D6A29864(319, &qword_1EC8902E8);
          if (v4 <= 0x3F)
          {
            sub_1D6A29864(319, &qword_1EC8902F0);
            if (v5 <= 0x3F)
            {
              sub_1D6A29790();
              if (v6 <= 0x3F)
              {
                sub_1D6A29864(319, &qword_1EC890300);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D6A2972C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1D6A29790()
{
  if (!qword_1EC8902F8)
  {
    sub_1D6A29800();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC8902F8);
    }
  }
}

unint64_t sub_1D6A29800()
{
  result = qword_1EDF3A6E8;
  if (!qword_1EDF3A6E8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3A6E8);
  }

  return result;
}

void sub_1D6A29864(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t FeedSectionPositionProviderType.strictSectionPosition<A, B>(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = (*(a7 + 8))(a1, a2, a3, a5, a6, a8, a9, a4, a7);
  if (v9 == sub_1D725773C())
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t _s8NewsFeed0B23SectionPositionProviderC07sectionD03for2inSiSS_5TeaUI9BlueprintVyxq_Gt0I10Foundation12IdentifiableRzAG9ModelableR_r0_lF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a1;
  v25 = a2;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v11 = sub_1D725D68C();
  v23 = sub_1D726393C();
  v12 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v22 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v22 - v19;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7;
  sub_1D725FACC();
  sub_1D725FAEC();
  if ((*(v16 + 48))(v15, 1, v11) == 1)
  {
    (*(v12 + 8))(v15, v23);
    return 0;
  }

  (*(v16 + 32))(v20, v15, v11);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D7262CFC();
  (*(v16 + 8))(v20, v11);
  if (v27)
  {
    return 0;
  }

  return v26;
}

uint64_t sub_1D6A29C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for DebugFormatCompilingPackage() + 20);
  v5 = sub_1D725891C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1 + v4, v5);
}

uint64_t sub_1D6A29C8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for FormatDerivedDataCompilerSettings();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for DebugFormatCompilerItem();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v8);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EC87DD08 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725BD1C();
  __swift_project_value_buffer(v11, qword_1EC9BADE0);
  v12 = sub_1D725BC9C();
  v29 = v13;
  v30 = v12;
  v36 = MEMORY[0x1E69E7CC0];
  sub_1D6999868(0, 3, 0);
  v14 = v36;
  swift_beginAccess();
  v15 = 0;
  v33 = "ition Item Kind Mismatch";
  v34 = "Newsroom Identifiers";
  v32 = "ebug-format-logger";
  do
  {
    v16 = byte_1F5119048[v15 + 32];
    if (byte_1F5119048[v15 + 32])
    {
      if (v16 == 1)
      {
        v17 = 0xD000000000000024;
        v18 = v33;
      }

      else
      {
        v17 = 0xD000000000000028;
        v18 = v32;
      }
    }

    else
    {
      v17 = 0xD000000000000017;
      v18 = v34;
    }

    *v10 = v17;
    v10[1] = v18 | 0x8000000000000000;
    v19 = a1;

    sub_1D725B31C();

    v20 = sub_1D61860E4(v16, *v6);
    sub_1D6A2B394(v6, type metadata accessor for FormatDerivedDataCompilerSettings);
    v21 = 28494;
    if (v20)
    {
      v21 = 7562585;
    }

    v22 = 0xE200000000000000;
    if (v20)
    {
      v22 = 0xE300000000000000;
    }

    v10[5] = MEMORY[0x1E69E6158];
    v10[6] = MEMORY[0x1E69E61C8];
    v10[2] = v21;
    v10[3] = v22;
    swift_storeEnumTagMultiPayload();
    v36 = v14;
    v24 = *(v14 + 16);
    v23 = *(v14 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1D6999868(v23 > 1, v24 + 1, 1);
      v14 = v36;
    }

    ++v15;
    *(v14 + 16) = v24 + 1;
    result = sub_1D6A2AF70(v10, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v24, type metadata accessor for DebugFormatCompilerItem);
    a1 = v19;
  }

  while (v15 != 3);
  v26 = v31;
  *v31 = 0x72656C69706D6F43;
  v26[1] = 0xE800000000000000;
  v27 = v29;
  v26[2] = v30;
  v26[3] = v27;
  v26[4] = v14;
  return result;
}

uint64_t sub_1D6A2A014@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, void *a3@<X8>)
{
  v55 = a3;
  v54 = type metadata accessor for DebugFormatCompilerItem();
  v58 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DebugFormatCompilerResultEntry();
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v60 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v54 - v13);
  v15 = *a2;
  v16 = sub_1D6BF6C58(a1);

  result = v16;
  v18 = MEMORY[0x1E69E7CC0];
  v57 = *(v16 + 16);
  if (v57)
  {
    v19 = 0;
    v56 = v16;
    do
    {
      if (v19 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v21 = *(v59 + 72);
      sub_1D6A2B32C(result + v20 + v21 * v19, v14, type metadata accessor for DebugFormatCompilerResultEntry);
      v22 = *(*v14 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v22 <= 2)
      {
        v23 = 0xE600000000000000;
        if (*(*v14 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v22 == 1)
          {
            v25 = 1684104552;
          }

          else
          {
            v25 = 1953460070;
          }

          v24 = v25 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v15 > 2)
          {
LABEL_28:
            v28 = 0x756F72676B636162;
            if (v15 == 5)
            {
              v28 = 0x7972617262696CLL;
            }

            v29 = 0xEA0000000000646ELL;
            if (v15 == 5)
            {
              v29 = 0xE700000000000000;
            }

            v30 = 0x6C6C6177796170;
            if (v15 != 3)
            {
              v30 = 0x656D656874;
            }

            v31 = 0xE500000000000000;
            if (v15 == 3)
            {
              v31 = 0xE700000000000000;
            }

            if (v15 <= 4)
            {
              v32 = v30;
            }

            else
            {
              v32 = v28;
            }

            if (v15 <= 4)
            {
              v27 = v31;
            }

            else
            {
              v27 = v29;
            }

            if (v24 != v32)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v24 = 0x74756F79616CLL;
          if (v15 > 2)
          {
            goto LABEL_28;
          }
        }
      }

      else if (*(*v14 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v22 == 5)
        {
          v23 = 0xE700000000000000;
          v24 = 0x7972617262696CLL;
          if (v15 > 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v24 = 0x756F72676B636162;
          v23 = 0xEA0000000000646ELL;
          if (v15 > 2)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v22 == 3)
      {
        v23 = 0xE700000000000000;
        v24 = 0x6C6C6177796170;
        if (v15 > 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v23 = 0xE500000000000000;
        v24 = 0x656D656874;
        if (v15 > 2)
        {
          goto LABEL_28;
        }
      }

      if (v15)
      {
        if (v15 == 1)
        {
          v26 = 0x726564616568;
        }

        else
        {
          v26 = 0x7265746F6F66;
        }

        v27 = 0xE600000000000000;
        if (v24 != v26)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v27 = 0xE600000000000000;
        if (v24 != 0x74756F79616CLL)
        {
          goto LABEL_45;
        }
      }

LABEL_43:
      if (v23 == v27)
      {

LABEL_46:
        sub_1D6A2AF70(v14, v60, type metadata accessor for DebugFormatCompilerResultEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998024(0, *(v18 + 16) + 1, 1);
          v18 = v62;
        }

        v36 = *(v18 + 16);
        v35 = *(v18 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1D6998024(v35 > 1, v36 + 1, 1);
          v18 = v62;
        }

        *(v18 + 16) = v36 + 1;
        sub_1D6A2AF70(v60, v18 + v20 + v36 * v21, type metadata accessor for DebugFormatCompilerResultEntry);
        goto LABEL_4;
      }

LABEL_45:
      v33 = sub_1D72646CC();

      if (v33)
      {
        goto LABEL_46;
      }

      sub_1D6A2B394(v14, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_4:
      result = v56;
      ++v19;
    }

    while (v57 != v19);
  }

  v37 = *(v18 + 16);
  if (v37)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1D6999868(0, v37, 0);
    v38 = v62;
    v39 = v18 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v40 = *(v59 + 72);
    do
    {
      sub_1D6A2B32C(v39, v7, type metadata accessor for DebugFormatCompilerResultEntry);
      swift_storeEnumTagMultiPayload();
      v62 = v38;
      v42 = *(v38 + 16);
      v41 = *(v38 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1D6999868(v41 > 1, v42 + 1, 1);
        v38 = v62;
      }

      *(v38 + 16) = v42 + 1;
      sub_1D6A2AF70(v7, v38 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v42, type metadata accessor for DebugFormatCompilerItem);
      v39 += v40;
      --v37;
    }

    while (v37);
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1D7263D4C();
  v43 = 0x74756F79614CLL;
  v44 = 0x7972617262694CLL;
  v45 = 0xE700000000000000;
  if (v15 != 5)
  {
    v44 = 0x756F72676B636142;
    v45 = 0xEA0000000000646ELL;
  }

  v46 = 0x6C6C6177796150;
  v47 = 0xE700000000000000;
  if (v15 != 3)
  {
    v46 = 0x656D656854;
    v47 = 0xE500000000000000;
  }

  if (v15 <= 4)
  {
    v44 = v46;
    v45 = v47;
  }

  v48 = 0x726564616548;
  if (v15 != 1)
  {
    v48 = 0x7265746F6F46;
  }

  if (v15)
  {
    v43 = v48;
  }

  if (v15 <= 2)
  {
    v49 = v43;
  }

  else
  {
    v49 = v44;
  }

  if (v15 <= 2)
  {
    v50 = 0xE600000000000000;
  }

  else
  {
    v50 = v45;
  }

  MEMORY[0x1DA6F9910](v49, v50);

  MEMORY[0x1DA6F9910](0x676E696E72615720, 0xEB00000000282073);
  v61 = *(v38 + 16);
  v51 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v51);

  result = MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v52 = v63;
  v53 = v55;
  *v55 = v62;
  v53[1] = v52;
  v53[2] = 0;
  v53[3] = 0;
  v53[4] = v38;
  return result;
}

uint64_t sub_1D6A2A7E0@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X2>, uint64_t (*a3)(uint64_t, __n128)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v60 = a4;
  v61 = a5;
  v62 = a6;
  v59 = type metadata accessor for DebugFormatCompilerItem();
  v65 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DebugFormatCompilerResultEntry();
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = (&v59 - v18);
  v20 = *a2;
  v21 = a3(a1, v17);

  result = v21;
  v23 = MEMORY[0x1E69E7CC0];
  v64 = *(v21 + 16);
  if (v64)
  {
    v24 = 0;
    v63 = v21;
    do
    {
      if (v24 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v25 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v26 = *(v66 + 72);
      sub_1D6A2B32C(result + v25 + v26 * v24, v19, type metadata accessor for DebugFormatCompilerResultEntry);
      v27 = *(*v19 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v27 <= 2)
      {
        v28 = 0xE600000000000000;
        if (*(*v19 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v27 == 1)
          {
            v30 = 1684104552;
          }

          else
          {
            v30 = 1953460070;
          }

          v29 = v30 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          if (v20 > 2)
          {
LABEL_28:
            v33 = 0x756F72676B636162;
            if (v20 == 5)
            {
              v33 = 0x7972617262696CLL;
            }

            v34 = 0xEA0000000000646ELL;
            if (v20 == 5)
            {
              v34 = 0xE700000000000000;
            }

            v35 = 0x6C6C6177796170;
            if (v20 != 3)
            {
              v35 = 0x656D656874;
            }

            v36 = 0xE500000000000000;
            if (v20 == 3)
            {
              v36 = 0xE700000000000000;
            }

            if (v20 <= 4)
            {
              v37 = v35;
            }

            else
            {
              v37 = v33;
            }

            if (v20 <= 4)
            {
              v32 = v36;
            }

            else
            {
              v32 = v34;
            }

            if (v29 != v37)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v29 = 0x74756F79616CLL;
          if (v20 > 2)
          {
            goto LABEL_28;
          }
        }
      }

      else if (*(*v19 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v27 == 5)
        {
          v28 = 0xE700000000000000;
          v29 = 0x7972617262696CLL;
          if (v20 > 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v29 = 0x756F72676B636162;
          v28 = 0xEA0000000000646ELL;
          if (v20 > 2)
          {
            goto LABEL_28;
          }
        }
      }

      else if (v27 == 3)
      {
        v28 = 0xE700000000000000;
        v29 = 0x6C6C6177796170;
        if (v20 > 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v28 = 0xE500000000000000;
        v29 = 0x656D656874;
        if (v20 > 2)
        {
          goto LABEL_28;
        }
      }

      if (v20)
      {
        if (v20 == 1)
        {
          v31 = 0x726564616568;
        }

        else
        {
          v31 = 0x7265746F6F66;
        }

        v32 = 0xE600000000000000;
        if (v29 != v31)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v32 = 0xE600000000000000;
        if (v29 != 0x74756F79616CLL)
        {
          goto LABEL_45;
        }
      }

LABEL_43:
      if (v28 == v32)
      {

LABEL_46:
        sub_1D6A2AF70(v19, v67, type metadata accessor for DebugFormatCompilerResultEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998024(0, *(v23 + 16) + 1, 1);
          v23 = v69;
        }

        v41 = *(v23 + 16);
        v40 = *(v23 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D6998024(v40 > 1, v41 + 1, 1);
          v23 = v69;
        }

        *(v23 + 16) = v41 + 1;
        sub_1D6A2AF70(v67, v23 + v25 + v41 * v26, type metadata accessor for DebugFormatCompilerResultEntry);
        goto LABEL_4;
      }

LABEL_45:
      v38 = sub_1D72646CC();

      if (v38)
      {
        goto LABEL_46;
      }

      sub_1D6A2B394(v19, type metadata accessor for DebugFormatCompilerResultEntry);
LABEL_4:
      result = v63;
      ++v24;
    }

    while (v64 != v24);
  }

  v42 = *(v23 + 16);
  if (v42)
  {
    v69 = MEMORY[0x1E69E7CC0];
    sub_1D6999868(0, v42, 0);
    v43 = v69;
    v44 = v23 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v45 = *(v66 + 72);
    do
    {
      sub_1D6A2B32C(v44, v11, type metadata accessor for DebugFormatCompilerResultEntry);
      swift_storeEnumTagMultiPayload();
      v69 = v43;
      v47 = *(v43 + 16);
      v46 = *(v43 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1D6999868(v46 > 1, v47 + 1, 1);
        v43 = v69;
      }

      *(v43 + 16) = v47 + 1;
      sub_1D6A2AF70(v11, v43 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v47, type metadata accessor for DebugFormatCompilerItem);
      v44 += v45;
      --v42;
    }

    while (v42);
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  v48 = 0x74756F79614CLL;
  v49 = 0x7972617262694CLL;
  v69 = 0;
  v70 = 0xE000000000000000;
  v50 = 0xE700000000000000;
  if (v20 != 5)
  {
    v49 = 0x756F72676B636142;
    v50 = 0xEA0000000000646ELL;
  }

  v51 = 0x6C6C6177796150;
  v52 = 0xE700000000000000;
  if (v20 != 3)
  {
    v51 = 0x656D656854;
    v52 = 0xE500000000000000;
  }

  if (v20 <= 4)
  {
    v49 = v51;
    v50 = v52;
  }

  v53 = 0x726564616548;
  if (v20 != 1)
  {
    v53 = 0x7265746F6F46;
  }

  if (v20)
  {
    v48 = v53;
  }

  if (v20 <= 2)
  {
    v54 = v48;
  }

  else
  {
    v54 = v49;
  }

  if (v20 <= 2)
  {
    v55 = 0xE600000000000000;
  }

  else
  {
    v55 = v50;
  }

  MEMORY[0x1DA6F9910](v54, v55);

  MEMORY[0x1DA6F9910](v60, v61);
  v68 = *(v43 + 16);
  v56 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v56);

  result = MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  v57 = v70;
  v58 = v62;
  *v62 = v69;
  v58[1] = v57;
  v58[2] = 0;
  v58[3] = 0;
  v58[4] = v43;
  return result;
}

uint64_t sub_1D6A2AF70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A2AFD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DebugFormatCompilingPackage();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for DebugFormatCompilerItem();
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = sub_1D5E24154(*(a1 + 16), 0);
    sub_1D5E2616C(&v30, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v13, a1);
    v16 = v15;
    sub_1D5B87E38();
    if (v16 == v13)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  sub_1D725891C();
  sub_1D5E3F92C();
  v17 = sub_1D72626EC();

  v18 = *(v17 + 16);
  if (v18)
  {
    v28 = a2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D6999868(0, v18, 0);
    v19 = v30;
    v20 = *(v5 + 80);
    v27 = v17;
    v21 = v17 + ((v20 + 32) & ~v20);
    v22 = *(v5 + 72);
    do
    {
      sub_1D6A2B32C(v21, v8, type metadata accessor for DebugFormatCompilingPackage);
      v23 = *v8;

      sub_1D6A2B394(v8, type metadata accessor for DebugFormatCompilingPackage);
      *v12 = v23;
      swift_storeEnumTagMultiPayload();
      v30 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D6999868(v24 > 1, v25 + 1, 1);
        v19 = v30;
      }

      *(v19 + 16) = v25 + 1;
      sub_1D6A2AF70(v12, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, type metadata accessor for DebugFormatCompilerItem);
      v21 += v22;
      --v18;
    }

    while (v18);

    a2 = v28;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  *a2 = 0x6E696C69706D6F43;
  a2[1] = 0xAC000000A680E267;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v19;
  return result;
}

uint64_t sub_1D6A2B32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A2B394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatMediaTimingFillMode.rawValue.getter()
{
  v1 = 0x7364726177726F66;
  v2 = 1752461154;
  if (*v0 != 2)
  {
    v2 = 0x6465766F6D6572;
  }

  if (*v0)
  {
    v1 = 0x647261776B636162;
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

NewsFeed::FormatMediaTimingFillMode_optional __swiftcall FormatMediaTimingFillMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D6A2B504()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A2B5C4()
{
  sub_1D72621EC();
}

uint64_t sub_1D6A2B670()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6A2B738(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7364726177726F66;
  v4 = 0xE400000000000000;
  v5 = 1752461154;
  if (*v1 != 2)
  {
    v5 = 0x6465766F6D6572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x647261776B636162;
    v2 = 0xE900000000000073;
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

uint64_t CAMediaTimingFillMode.description.getter()
{
  v0 = 0x647261776B636142;
  v1 = sub_1D726207C();
  v3 = v2;
  if (v1 == sub_1D726207C() && v3 == v4)
  {
    goto LABEL_12;
  }

  v6 = sub_1D72646CC();

  if (v6)
  {
    return v0;
  }

  v0 = 1752461122;
  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 == sub_1D726207C() && v9 == v10)
  {
    goto LABEL_12;
  }

  v12 = sub_1D72646CC();

  if (v12)
  {
    return v0;
  }

  v0 = 0x7364726177726F46;
  v14 = sub_1D726207C();
  v16 = v15;
  if (v14 == sub_1D726207C() && v16 == v17)
  {
    goto LABEL_12;
  }

  v18 = sub_1D72646CC();

  if (v18)
  {
    return v0;
  }

  v0 = 0x6465766F6D6552;
  v19 = sub_1D726207C();
  v21 = v20;
  if (v19 == sub_1D726207C() && v21 == v22)
  {
LABEL_12:

    return v0;
  }

  v23 = sub_1D72646CC();

  if ((v23 & 1) == 0)
  {
    return 0x6E776F6E6B6E55;
  }

  return v0;
}

unint64_t sub_1D6A2BAB8()
{
  result = qword_1EC890308;
  if (!qword_1EC890308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890308);
  }

  return result;
}

unint64_t sub_1D6A2BB0C(uint64_t a1)
{
  *(a1 + 8) = sub_1D6A2BB3C();
  result = sub_1D6A2BB90();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6A2BB3C()
{
  result = qword_1EC890310;
  if (!qword_1EC890310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890310);
  }

  return result;
}

unint64_t sub_1D6A2BB90()
{
  result = qword_1EC890318;
  if (!qword_1EC890318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890318);
  }

  return result;
}

unint64_t sub_1D6A2BBE4(uint64_t a1)
{
  result = sub_1D6A2BC0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A2BC0C()
{
  result = qword_1EC890320;
  if (!qword_1EC890320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890320);
  }

  return result;
}

unint64_t sub_1D6A2BC60(void *a1)
{
  a1[1] = sub_1D669FFD8();
  a1[2] = sub_1D66A01FC();
  result = sub_1D6A2BAB8();
  a1[3] = result;
  return result;
}

uint64_t FormatText.deinit()
{

  return v0;
}

uint64_t FormatText.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static IssueCoverColorPalette.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF27BE0 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = qword_1EDF27BE8;
  v2 = unk_1EDF27BF0;
  v4 = qword_1EDF27BF8;
  v3 = unk_1EDF27C00;
  v10 = unk_1EDF27C00;
  *a1 = qword_1EDF27BE8;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;

  return v10;
}

UIColor __swiftcall IssueCoverColorPalette.placeholderColor(on:)(UIColor on)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = swift_allocObject();
  v5[2].super.isa = on.super.isa;
  v5[3].super.isa = v4;
  v5[4].super.isa = v3;
  v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v13[4] = sub_1D5E46A8C;
  v13[5] = v5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D6E0CD34;
  v13[3] = &block_descriptor_66;
  v7 = _Block_copy(v13);
  v8 = on.super.isa;
  v9 = v4;
  v10 = v3;
  v11 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  return v11;
}

id sub_1D6A2BF38(uint64_t a1, id a2, void *a3, void *a4)
{
  v6 = [a2 resolvedColorWithTraitCollection_];
  [v6 ts_luminance];
  v8 = v7;

  if (v8 <= 0.7)
  {
    v9 = a4;
  }

  else
  {
    v9 = a3;
  }

  return v9;
}

unint64_t BundleSessionError.errorDescription.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD00000000000001FLL;
  if (!*v0)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t BundleSessionError.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6A2C0D8()
{
  result = qword_1EC890328;
  if (!qword_1EC890328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890328);
  }

  return result;
}

unint64_t sub_1D6A2C130()
{
  v1 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000015;
  }

  v2 = 0xD00000000000001FLL;
  if (!*v0)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

__n128 IssueCoverViewLayoutOptions.sizeConstraint.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 IssueCoverViewLayoutOptions.init(origin:sizeConstraint:shadowRadius:cornerRadius:uiRectCorner:borderWidth:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  v8 = a1[1].n128_u8[0];
  a3->n128_f64[0] = a4;
  a3->n128_f64[1] = a5;
  result = *a1;
  a3[1] = *a1;
  a3[2].n128_u8[0] = v8;
  a3[2].n128_f64[1] = a6;
  a3[3].n128_f64[0] = a7;
  a3[3].n128_u64[1] = a2;
  a3[4].n128_f64[0] = a8;
  return result;
}

uint64_t sub_1D6A2C220(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 72))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D6A2C268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D6A2C2E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v170 = a2;
  sub_1D5B7B58C(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v161 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v163 = &v149 - v8;
  sub_1D5B7B58C(0, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v165 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v162 = &v149 - v14;
  v167 = sub_1D7258DBC();
  v168 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v15);
  v164 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v154 = &v149 - v19;
  v178 = type metadata accessor for WebEmbedDataVisualization();
  v192 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178, v20);
  v175 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B58C(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v177 = &v149 - v24;
  v25 = type metadata accessor for FormatModel();
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v197 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v196, v28);
  v158 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v157 = &v149 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v199 = &v149 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v195 = &v149 - v38;
  v39 = type metadata accessor for FeedWebEmbed();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  v188 = &v149 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C2C8();
  v198 = v43;
  v189 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v149 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v194 = &v149 - v49;
  sub_1D5FC4F44();
  v187 = v50;
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v149 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E2C428(0);
  v55 = v54;
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v57);
  v186 = &v149 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A2D8B8();
  v60 = v59 - 8;
  MEMORY[0x1EEE9AC00](v59, v61);
  v63 = &v149 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1D725891C();
  v174 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v64);
  v160 = &v149 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v149 - v68;
  sub_1D5B7B58C(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  MEMORY[0x1EEE9AC00](v70 - 8, v71);
  v159 = &v149 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x1EEE9AC00](v73, v74);
  v169 = v40;
  v76 = *(v40 + 56);
  v171 = &v149 - v77;
  v179 = v39;
  v156 = v40 + 56;
  v155 = v76;
  v76(v75);
  v172 = v69;
  v78 = v55;
  v79 = v63;
  sub_1D72588CC();
  sub_1D5ECF374(0);
  v81 = v80;
  v82 = *(*(v80 - 8) + 16);
  v83 = v63;
  v84 = a1;
  v82(v83, a1, v81);
  v85 = *(v60 + 44);
  v86 = sub_1D6A2D94C(&unk_1EDF16968, sub_1D5ECF374);
  v166 = v84;
  sub_1D7262BFC();
  sub_1D7262C5C();
  if (*(v79 + v85) == v200)
  {
    goto LABEL_2;
  }

  v182 = (v56 + 16);
  v181 = (v56 + 8);
  v190 = (v189 + 32);
  v191 = (v189 + 16);
  v176 = (v192 + 6);
  v192 = (v189 + 8);
  v152 = (v168 + 48);
  v153 = (v174 + 56);
  v151 = (v174 + 48);
  v149 = (v174 + 32);
  v150 = (v174 + 8);
  v88 = 1.79769313e308;
  v193 = v78;
  v183 = v79;
  v184 = v81;
  v180 = v85;
  v185 = v86;
  do
  {
    v189 = sub_1D7262D0C();
    v89 = *v182;
    v90 = v186;
    (*v182)(v186);
    (v189)(&v200, 0);
    sub_1D7262C6C();
    (v89)(v53, v90, v78);
    v91 = *(v187 + 36);
    sub_1D6A2D94C(&qword_1EDF17218, sub_1D5E2C428);
    sub_1D7262BFC();
    (*v181)(v90, v78);
    sub_1D7262C5C();
    if (*&v53[v91] == v200)
    {
LABEL_6:
      v92 = v88;
      goto LABEL_7;
    }

    v93 = v175;
    do
    {
      v94 = v198;
      while (1)
      {
        v96 = v93;
        v97 = sub_1D7262D0C();
        v98 = v194;
        (*v191)(v194);
        v97(&v200, 0);
        sub_1D7262C6C();
        (*v190)(v46, v98, v94);
        v99 = v197;
        v100 = v46;
        sub_1D725CE7C();
        sub_1D683A158();
        v102 = v101;
        v103 = *(v101 + 48);
        v104 = v195;
        sub_1D5C21BBC(v99, v195, type metadata accessor for FeedItem);
        sub_1D683A1C4(v99 + v103);
        v105 = v199;
        sub_1D5C21BBC(v104, v199, type metadata accessor for FeedItem);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload - 5 >= 0xD && EnumCaseMultiPayload >= 4)
        {
          break;
        }

        sub_1D5BCA86C(v105, type metadata accessor for FeedItem);
        v93 = v96;
        v78 = v193;
LABEL_12:
        v46 = v100;
        v95 = v100;
        v94 = v198;
        (*v192)(v95, v198);
        sub_1D7262C5C();
        if (*&v53[v91] == v200)
        {
          goto LABEL_6;
        }
      }

      v93 = v96;
      v78 = v193;
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_12;
      }

      v107 = v188;
      sub_1D5C21BBC(v199, v188, type metadata accessor for FeedWebEmbed);
      v108 = v107 + *(v179 + 52);
      v109 = v177;
      sub_1D686B7BC(v108, v177);
      if ((*v176)(v109, 1, v178) == 1)
      {
        sub_1D6A2D994(v109, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_22:
        sub_1D5BCA86C(v188, type metadata accessor for FeedWebEmbed);
        goto LABEL_12;
      }

      sub_1D61880A0(v109, v96);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5BCA86C(v96, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BCA86C(v109, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_22;
      }

      v110 = *v96;
      sub_1D5BCA86C(v109, type metadata accessor for WebEmbedDataVisualization);
      if (v110 >> 61)
      {

        goto LABEL_22;
      }

      v111 = *(v110 + 16);

      v189 = v111;

      sub_1D5BCA86C(v188, type metadata accessor for FeedWebEmbed);
      v112 = *(v111 + OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus) >> 60;
      v46 = v100;
      if (v112 <= 0xA && ((1 << v112) & 0x370) == 0 && ((1 << v112) & 0x8C) != 0)
      {

        goto LABEL_28;
      }

      v113 = sub_1D72646CC();

      if (v113)
      {
LABEL_28:
        v114 = v162;
        sub_1D725FABC();
        if ((*v152)(v114, 1, v167) == 1)
        {
          sub_1D6A2D994(v114, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
          v93 = v96;
          goto LABEL_30;
        }

        (*v192)(v100, v198);
        sub_1D5BCA86C(v53, sub_1D5FC4F44);
        sub_1D5BCA86C(v183, sub_1D6A2D8B8);
        (*v150)(v172, v173);
        v146 = *(v168 + 32);
        v147 = v154;
        v148 = v167;
        v146(v154, v114, v167);
        v141 = v170;
        v146(v170, v147, v148);
        v140 = 0;
        v87 = v171;
        goto LABEL_53;
      }

LABEL_30:
      v115 = *(v189 + 56);
      if (!v115)
      {
        (*v192)(v100, v198);

        v121 = v163;
        (*v153)(v163, 1, 1, v173);
        goto LABEL_37;
      }

      v116 = [v115 sportsEventStartTime];
      if (v116)
      {
        v117 = v161;
        v118 = v116;
        sub_1D72588BC();

        v119 = v117;
        v120 = 0;
      }

      else
      {
        v120 = 1;
        v119 = v161;
      }

      v122 = v160;
      v123 = v173;
      (*v153)(v119, v120, 1, v173);
      v124 = v119;
      v121 = v163;
      sub_1D5DF42F8(v124, v163);
      if ((*v151)(v121, 1, v123) != 1)
      {
        (*v149)(v122, v121, v123);
        sub_1D72587FC();
        v92 = fabs(v125);
        v126 = v123;
        v127 = v122;
        v93 = v96;
        if (v92 >= v88)
        {

          (*v150)(v127, v126);
          (*v192)(v46, v198);
          goto LABEL_38;
        }

        v129 = v197;
        v128 = v198;
        sub_1D725CE7C();

        (*v150)(v127, v173);
        (*v192)(v46, v128);
        v130 = *(v102 + 48);
        v131 = v157;
        sub_1D5C21BBC(v129, v157, type metadata accessor for FeedItem);
        sub_1D683A1C4(v129 + v130);
        v132 = v131;
        v133 = v158;
        sub_1D5C21BBC(v132, v158, type metadata accessor for FeedItem);
        v134 = swift_getEnumCaseMultiPayload();
        if (v134 - 5 < 0xD || v134 < 4)
        {
          sub_1D5BCA86C(v133, type metadata accessor for FeedItem);
          goto LABEL_45;
        }

        if (v134 == 4)
        {
          sub_1D5C21BBC(v133, v159, type metadata accessor for FeedWebEmbed);
          v135 = 0;
        }

        else
        {
LABEL_45:
          v135 = 1;
        }

        v78 = v193;
        v136 = v159;
        (v155)(v159, v135, 1, v179);
        sub_1D6A2D9F0(v136, v171);
        goto LABEL_39;
      }

      (*v192)(v46, v198);

      v93 = v96;
LABEL_37:
      sub_1D6A2D994(v121, &qword_1EDF45B00, MEMORY[0x1E6969530]);
LABEL_38:
      v92 = v88;
LABEL_39:
      sub_1D7262C5C();
      v88 = v92;
    }

    while (*&v53[v91] != v200);
LABEL_7:
    sub_1D5BCA86C(v53, sub_1D5FC4F44);
    v79 = v183;
    sub_1D7262C5C();
    v88 = v92;
  }

  while (*(v79 + v180) != v200);
LABEL_2:
  sub_1D5BCA86C(v79, sub_1D6A2D8B8);
  v87 = v171;
  if ((*(v169 + 48))(v171, 1, v179))
  {
    (*(v174 + 8))(v172, v173);
  }

  else
  {

    v137 = v165;
    sub_1D725FAAC();

    (*(v174 + 8))(v172, v173);
    v138 = v168;
    v139 = v167;
    if ((*(v168 + 48))(v137, 1, v167) != 1)
    {
      v144 = *(v138 + 32);
      v145 = v164;
      v144(v164, v137, v139);
      v141 = v170;
      v144(v170, v145, v139);
      v140 = 0;
      goto LABEL_53;
    }

    sub_1D6A2D994(v137, &qword_1EDF3C370, MEMORY[0x1E6969C28]);
  }

  v140 = 1;
  v141 = v170;
LABEL_53:
  v142 = type metadata accessor for FormatAutoscrollPivotPoint();
  (*(*(v142 - 8) + 56))(v141, v140, 1, v142);
  return sub_1D6A2D994(v87, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
}

void sub_1D6A2D8B8()
{
  if (!qword_1EDF041F8)
  {
    sub_1D5ECF374(255);
    sub_1D6A2D94C(&unk_1EDF16968, sub_1D5ECF374);
    v0 = sub_1D7263FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF041F8);
    }
  }
}

uint64_t sub_1D6A2D94C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6A2D994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B7B58C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6A2D9F0(uint64_t a1, uint64_t a2)
{
  sub_1D5B7B58C(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FormatAutoscrollPivotPoint()
{
  result = qword_1EDF0B840;
  if (!qword_1EDF0B840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6A2DAE4()
{
  result = sub_1D7258DBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t LegacyFeedGroupEmitterInitialCursorContext.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  sub_1D725BC0C();
  v11 = type metadata accessor for ModernFeedGroupEmitterInitialCursorContext();
  (*(v7 + 16))(v10, a1 + *(v11 + 40), v6);
  *a3 = sub_1D725BB0C();
  v12 = type metadata accessor for LegacyFeedGroupEmitterInitialCursorContext();
  sub_1D5BE6814(a1, a3 + *(v12 + 36));
  (*(*(a2 - 8) + 16))(a3 + *(v12 + 40), a1 + *(v11 + 36), a2);
  return (*(*(v11 - 8) + 8))(a1, v11);
}

uint64_t LegacyFeedGroupEmitterInitialCursorContext.unwrappedPool.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  sub_1D726393C();
  sub_1D725BDCC();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = sub_1D725B92C();
  v5 = sub_1D725BA8C();

  return v5;
}

uint64_t sub_1D6A2DE94(uint64_t a1)
{
  result = sub_1D6865CC4(a1);
  if (!v1)
  {
  }

  return result;
}

uint64_t sub_1D6A2DEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_1D726393C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = v14 - v9;
  (*(v6 + 16))(v14 - v9, a1, v5, v8);
  v11 = *(AssociatedTypeWitness - 8);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v11 + 32))(a2, v10, AssociatedTypeWitness);
  }

  (*(v6 + 8))(v10, v5);
  sub_1D6A2E3D4();
  swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 8;
  return swift_willThrow();
}

uint64_t ModernFeedGroupEmitterInitialCursorContext.init(feedPool:feedContext:serviceConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ModernFeedGroupEmitterInitialCursorContext();
  v11 = *(v10 + 40);
  swift_getAssociatedTypeWitness();
  v12 = sub_1D726393C();
  (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  sub_1D5C25D20(a2, a5);
  v13 = *(*(a4 - 8) + 32);
  v14 = a5 + *(v10 + 36);

  return v13(v14, a3, a4);
}

uint64_t ModernFeedGroupEmitterInitialCursorContext.feedPool.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v2 + *(a1 + 40), v6, v9);
  v12 = *(AssociatedTypeWitness - 8);
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) != 1)
  {
    return (*(v12 + 32))(a2, v11, AssociatedTypeWitness);
  }

  (*(v7 + 8))(v11, v6);
  sub_1D6A2E3D4();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 8;
  return swift_willThrow();
}

unint64_t sub_1D6A2E3D4()
{
  result = qword_1EDF37770;
  if (!qword_1EDF37770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37770);
  }

  return result;
}

uint64_t sub_1D6A2E428()
{
  swift_getAssociatedTypeWitness();
  sub_1D726393C();
  result = sub_1D725BC0C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FeedContext();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6A2E4F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D725891C() - 8);
  v7 = v6;
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(*(a3 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v12 + 80);
  if (v13 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 | 7;
  v19 = (v14 + 8) & ~(v14 | 7);
  v20 = ((((((((v19 + ((((v15 + ((v14 + 8) & ~v14) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a2 <= v17)
  {
    goto LABEL_37;
  }

  v21 = ((v20 + v16 + v19) & ~v16) + *(v12 + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v25 < 2)
    {
LABEL_37:
      if (v17 == 0x7FFFFFFF)
      {
        v29 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v29) = -1;
        }

        return (v29 + 1);
      }

      else
      {
        v30 = ~v18;
        v31 = (a1 + v18 + 8) & ~v18;
        if (v10 == v17)
        {
          v32 = (*(v7 + 48))((v14 + 8 + ((v14 + 8 + v31) & v30)) & ~v14);
          if (v32 >= 2)
          {
            return v32 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v33 = *(v12 + 48);

          return v33((v31 + v16 + v20) & ~v16, v13);
        }
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_37;
  }

LABEL_24:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = v21;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v17 + (v28 | v26) + 1;
}

void sub_1D6A2E7E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D725891C() - 8);
  v9 = v8;
  if (*(v8 + 84) <= 0x7FFFFFFFu)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = v10 - 1;
  if (v10 - 1 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10 - 1;
  }

  if (v11 >= 0)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v8 + 80);
  v17 = *(v8 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  v20 = v16 | 7;
  v21 = v16 + 8;
  v22 = (v16 + 8) & ~(v16 | 7);
  v23 = ((((v17 + ((v16 + 8) & ~v16) + 9) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
  v24 = ((((((((v23 + v22 + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v25 = ((v24 + v18 + v22) & ~v18) + *(v14 + 64);
  if (a3 <= v19)
  {
    v26 = 0;
  }

  else if (v25 <= 3)
  {
    v29 = ((a3 - v19 + ~(-1 << (8 * v25))) >> (8 * v25)) + 1;
    if (HIWORD(v29))
    {
      v26 = 4;
    }

    else
    {
      if (v29 < 0x100)
      {
        v30 = 1;
      }

      else
      {
        v30 = 2;
      }

      if (v29 >= 2)
      {
        v26 = v30;
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 1;
  }

  if (v19 < a2)
  {
    v27 = ~v19 + a2;
    if (v25 < 4)
    {
      v28 = (v27 >> (8 * v25)) + 1;
      if (v25)
      {
        v31 = v27 & ~(-1 << (8 * v25));
        bzero(a1, v25);
        if (v25 != 3)
        {
          if (v25 == 2)
          {
            *a1 = v31;
            if (v26 > 1)
            {
LABEL_60:
              if (v26 == 2)
              {
                *&a1[v25] = v28;
              }

              else
              {
                *&a1[v25] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v26 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v31;
        a1[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v25);
      *a1 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v26)
    {
      a1[v25] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v25] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v25] = 0;
LABEL_39:
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v26)
  {
    goto LABEL_39;
  }

  a1[v25] = 0;
  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v19 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v32 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v32 = (a2 - 1);
    }

    *a1 = v32;
  }

  else
  {
    v33 = ~v20;
    v34 = &a1[v20 + 8] & ~v20;
    if (v12 == v19)
    {
      v35 = ((v21 + v34) & v33);
      if (v11 >= a2)
      {
        v38 = a2 - v10;
        if (a2 >= v10)
        {
          bzero(((v21 + v34) & v33), v23);
          if (v23 <= 3)
          {
            *v35 = v38;
          }

          else
          {
            *v35 = v38;
          }
        }

        else
        {
          v39 = *(v9 + 56);

          v39((v35 + v21) & ~v16, (a2 + 1));
        }
      }

      else
      {
        v36 = a2 - v10;
        bzero(((v21 + v34) & v33), v23);
        if (v23 <= 3)
        {
          *v35 = v36;
        }

        else
        {
          *v35 = v36;
        }
      }
    }

    else
    {
      v37 = *(v14 + 56);

      v37((v34 + v18 + v24) & ~v18, a2, v15);
    }
  }
}

uint64_t sub_1D6A2EBD0()
{
  v0 = type metadata accessor for FeedContext();
  if (v1 <= 0x3F)
  {
    v0 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      v0 = sub_1D726393C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v0;
}

uint64_t sub_1D6A2ECA0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(sub_1D725891C() - 8);
  v6 = *(v5 + 84);
  v40 = v6;
  if (v6 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  v7 = v6 - 1;
  v41 = v7;
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(a3 + 16);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v16 = v11;
  }

  v17 = *(v5 + 80);
  v18 = *(v5 + 64);
  v19 = *(v9 + 80);
  v20 = *(v13 + 80);
  v21 = *(v13 + 64);
  if (v15)
  {
    v22 = v21;
  }

  else
  {
    v22 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v18 + 9;
  v24 = ((((((((((v17 + 8) & ~(v17 | 7)) + ((((v18 + 9 + ((v17 + 8) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v19 + 16;
  v25 = *(v9 + 64) + v20;
  if (a2 <= v16)
  {
    goto LABEL_39;
  }

  v26 = v22 + ((v25 + (v24 & ~v19)) & ~v20);
  v27 = 8 * v26;
  if (v26 > 3)
  {
    goto LABEL_19;
  }

  v29 = ((a2 - v16 + ~(-1 << v27)) >> v27) + 1;
  if (HIWORD(v29))
  {
    v28 = *(a1 + v26);
    if (v28)
    {
      goto LABEL_26;
    }

LABEL_39:
    if (v8 == v16)
    {
      if ((v41 & 0x80000000) == 0)
      {
        v33 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v33) = -1;
        }

        return (v33 + 1);
      }

      v37 = (v17 + 8 + ((a1 + (v17 | 7) + 8) & ~(v17 | 7))) & ~v17;
      if (v40 < 0x7FFFFFFF)
      {
        v39 = *((v23 + v37) & 0xFFFFFFFFFFFFFFF8) >> 1;
        if (v39 > 0x80000000)
        {
          v38 = -v39;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = (*(v5 + 48))(v37);
      }

LABEL_56:
      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    v35 = (a1 + v24) & ~v19;
    if (v10 == v16)
    {
      v36 = *(v9 + 48);

      return v36(v35, v10, v12);
    }

    if (v15 >= 2)
    {
      v38 = (*(v14 + 48))((v25 + v35) & ~v20);
      goto LABEL_56;
    }

    return 0;
  }

  if (v29 > 0xFF)
  {
    v28 = *(a1 + v26);
    if (*(a1 + v26))
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  if (v29 < 2)
  {
    goto LABEL_39;
  }

LABEL_19:
  v28 = *(a1 + v26);
  if (!*(a1 + v26))
  {
    goto LABEL_39;
  }

LABEL_26:
  v30 = (v28 - 1) << v27;
  if (v26 > 3)
  {
    v30 = 0;
  }

  if (v26)
  {
    if (v26 <= 3)
    {
      v31 = v26;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 2)
    {
      if (v31 == 3)
      {
        v32 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v32 = *a1;
      }
    }

    else if (v31 == 1)
    {
      v32 = *a1;
    }

    else
    {
      v32 = *a1;
    }
  }

  else
  {
    v32 = 0;
  }

  return v16 + (v32 | v30) + 1;
}

void sub_1D6A2F0B0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v50 = sub_1D725891C();
  v5 = *(v50 - 8);
  v6 = *(v5 + 84);
  v51 = v6;
  if (v6 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  v52 = v6;
  v7 = v6 - 1;
  if (v6 - 1 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6 - 1;
  }

  v9 = *(*(a4 + 16) - 8);
  v57 = v9;
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v53 = *(a4 + 16);
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v5 + 80);
  v19 = v18 | 7;
  v20 = *(v5 + 64) + 9;
  v21 = ((((v20 + ((v18 + 8) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
  v22 = *(v9 + 80);
  v23 = ((((((((v21 + ((v18 + 8) & ~(v18 | 7)) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v22 + 16;
  v24 = *(v13 + 80);
  v25 = *(v9 + 64) + v24;
  v26 = (v25 + (v23 & ~v22)) & ~v24;
  v27 = *(v13 + 64);
  if (v15)
  {
    v28 = v27;
  }

  else
  {
    v28 = v27 + 1;
  }

  v29 = v26 + v28;
  if (a3 > v17)
  {
    if (v29 <= 3)
    {
      v30 = ((a3 - v17 + ~(-1 << (8 * v29))) >> (8 * v29)) + 1;
      if (HIWORD(v30))
      {
        v12 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v12 = v31;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  if (v17 < a2)
  {
    v32 = ~v17 + a2;
    if (v29 >= 4)
    {
      bzero(a1, v26 + v28);
      *a1 = v32;
      v33 = 1;
      if (v12 > 1)
      {
        goto LABEL_31;
      }

      goto LABEL_73;
    }

    v33 = (v32 >> (8 * v29)) + 1;
    if (v29)
    {
      v34 = v32 & ~(-1 << (8 * v29));
      bzero(a1, v26 + v28);
      if (v29 != 3)
      {
        if (v29 == 2)
        {
          *a1 = v34;
          if (v12 > 1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          *a1 = v32;
          if (v12 > 1)
          {
LABEL_31:
            if (v12 == 2)
            {
              *&a1[v29] = v33;
            }

            else
            {
              *&a1[v29] = v33;
            }

            return;
          }
        }

LABEL_73:
        if (v12)
        {
          a1[v29] = v33;
        }

        return;
      }

      *a1 = v34;
      a1[2] = BYTE2(v34);
    }

    if (v12 > 1)
    {
      goto LABEL_31;
    }

    goto LABEL_73;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v29] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_45;
    }

LABEL_44:
    if (!a2)
    {
      return;
    }

    goto LABEL_45;
  }

  if (v12 == 2)
  {
    *&a1[v29] = 0;
    goto LABEL_44;
  }

  *&a1[v29] = 0;
  if (!a2)
  {
    return;
  }

LABEL_45:
  if (v8 == v17)
  {
    if ((v7 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        v35 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v35 = a2 - 1;
      }

      *a1 = v35;
      return;
    }

    v45 = (&a1[v19 + 8] & ~v19);
    if (v7 < a2)
    {
      v46 = a2 - v52;
      goto LABEL_84;
    }

    v46 = a2 - v52;
    if (a2 >= v52)
    {
LABEL_84:
      bzero((&a1[v19 + 8] & ~v19), ((((v20 + ((v18 + 8) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
      if (v21 <= 3)
      {
        *v45 = v46;
      }

      else
      {
        *v45 = v46;
      }

      return;
    }

    v38 = a2 + 1;
    v36 = (v45 + v18 + 8) & ~v18;
    v39 = v51;
    if (v51 < 0x7FFFFFFF)
    {
      v48 = ((v20 + v36) & 0xFFFFFFFFFFFFFFF8);
      if ((v38 & 0x80000000) != 0)
      {
        v49 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v49 = 2 * ~a2;
      }

      *v48 = v49;
      v48[1] = 0;
      return;
    }

    v37 = *(v5 + 56);
    v40 = v50;
    goto LABEL_52;
  }

  v36 = &a1[v23] & ~v22;
  if (v10 == v17)
  {
    v37 = *(v57 + 56);
    v38 = a2;
    v39 = v10;
    v40 = v53;
LABEL_52:

    v37(v36, v38, v39, v40);
    return;
  }

  v41 = (v25 + v36) & ~v24;
  if (v16 >= a2)
  {
    v47 = *(v14 + 56);

    v47(v41, a2 + 1);
  }

  else
  {
    if (v28 <= 3)
    {
      v42 = ~(-1 << (8 * v28));
    }

    else
    {
      v42 = -1;
    }

    if (v28)
    {
      v43 = v42 & (~v16 + a2);
      if (v28 <= 3)
      {
        v44 = v28;
      }

      else
      {
        v44 = 4;
      }

      bzero(((v25 + v36) & ~v24), v28);
      if (v44 > 2)
      {
        if (v44 == 3)
        {
          *v41 = v43;
          *(v41 + 2) = BYTE2(v43);
        }

        else
        {
          *v41 = v43;
        }
      }

      else if (v44 == 1)
      {
        *v41 = v43;
      }

      else
      {
        *v41 = v43;
      }
    }
  }
}

uint64_t sub_1D6A2F628()
{
  v1 = type metadata accessor for FormatOption();
  v65 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v63 = (&v52 - v7);
  v55 = type metadata accessor for FormatContent.Resolved();
  v8 = *(v55 + 36);
  v56 = v0;
  v9 = *(v0 + v8);
  v57 = *(v9 + 16);
  if (v57)
  {
    v10 = 0;
    v11 = v9 + 32;
    v54 = v9;
    v53 = v9 + 32;
    while (1)
    {
      v58 = v10;
      v12 = (v11 + 80 * v10);
      v67 = *v12;
      v14 = v12[3];
      v13 = v12[4];
      v15 = v12[2];
      v68 = v12[1];
      v69 = v15;
      v70 = v14;
      v71 = v13;
      v16 = *(&v15 + 1);
      sub_1D5CE9930(&v67, v66);
      sub_1D5CE9930(&v67, v66);

      v18 = *(v16 + 16);
      if (v18)
      {
        break;
      }

LABEL_22:

      v31 = *(&v68 + 1);
      v32 = *(&v70 + 1);
      sub_1D5CE9930(&v67, v66);

      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = 0;
        v35 = v32 + 32;
        v61 = v32;
        v60 = v33;
        v59 = v32 + 32;
        while (v34 < *(v32 + 16))
        {
          v36 = *(v35 + (v34 << 6) + 16);
          v37 = *(v36 + 16);
          if (v37)
          {
            v62 = v34;
            v64 = v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80));

            v38 = 0;
            while (v38 < *(v36 + 16))
            {
              sub_1D5CEB888(v64 + *(v65 + 72) * v38, v4, type metadata accessor for FormatOption);
              if (qword_1EC87D8D8 != -1)
              {
                swift_once();
              }

              v39 = off_1EC890330;
              if (*(off_1EC890330 + 2) && (v41 = *v4, v40 = v4[1], sub_1D7264A0C(), sub_1D72621EC(), v42 = sub_1D7264A5C(), v31 = (v39 + 7), v43 = -1 << *(v39 + 32), v44 = v42 & ~v43, ((*(v39 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v44) & 1) != 0))
              {
                v45 = ~v43;
                while (1)
                {
                  v46 = (v39[6] + 16 * v44);
                  v47 = *v46 == v41 && v46[1] == v40;
                  if (v47 || (sub_1D72646CC() & 1) != 0)
                  {
                    break;
                  }

                  v44 = (v44 + 1) & v45;
                  if (((*&v31[(v44 >> 3) & 0xFFFFFFFFFFFFFF8] >> v44) & 1) == 0)
                  {
                    goto LABEL_29;
                  }
                }

                v48 = v4[2];
                v31 = (v48 & 0xFFFFFFFFFFFFFFFLL);

                sub_1D5CED790(v4, type metadata accessor for FormatOption);
                if (v48 >> 60 == 5)
                {
                  goto LABEL_49;
                }
              }

              else
              {
LABEL_29:
                result = sub_1D5CED790(v4, type metadata accessor for FormatOption);
              }

              if (++v38 == v37)
              {

                v32 = v61;
                v33 = v60;
                v34 = v62;
                v35 = v59;
                goto LABEL_25;
              }
            }

            __break(1u);
            goto LABEL_57;
          }

LABEL_25:
          if (++v34 == v33)
          {
            goto LABEL_46;
          }
        }

LABEL_58:
        __break(1u);
        return result;
      }

LABEL_46:
      sub_1D5CEC67C(&v67);

      v10 = v58 + 1;
      if (v58 + 1 == v57)
      {
        goto LABEL_50;
      }

      v11 = v53;
      if (v10 >= *(v54 + 16))
      {
        __break(1u);
LABEL_49:
        sub_1D5CEC67C(&v67);

LABEL_54:

        v51 = *(v31 + 2);

        return v51;
      }
    }

    v19 = 0;
    v64 = v16 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    while (v19 < *(v16 + 16))
    {
      sub_1D5CEB888(v64 + *(v65 + 72) * v19, v63, type metadata accessor for FormatOption);
      if (qword_1EC87D8D8 != -1)
      {
        swift_once();
      }

      v20 = off_1EC890330;
      if (*(off_1EC890330 + 2) && (v21 = *v63, v22 = v63[1], sub_1D7264A0C(), sub_1D72621EC(), v23 = sub_1D7264A5C(), v24 = -1 << *(v20 + 32), v25 = v23 & ~v24, ((*(v20 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) != 0))
      {
        v26 = ~v24;
        while (1)
        {
          v27 = (v20[6] + 16 * v25);
          v28 = *v27 == v21 && v27[1] == v22;
          if (v28 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v25 = (v25 + 1) & v26;
          if (((*(v20 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v25) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v29 = v63;
        v30 = v63[2];
        v31 = (v30 & 0xFFFFFFFFFFFFFFFLL);

        sub_1D5CED790(v29, type metadata accessor for FormatOption);
        if (v30 >> 60 == 5)
        {
          sub_1D5CEC67C(&v67);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_5:
        result = sub_1D5CED790(v63, type metadata accessor for FormatOption);
      }

      if (++v19 == v18)
      {
        goto LABEL_22;
      }
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_50:
  v49 = *(v56 + *(v55 + 52));
  if (!v49)
  {
    return 0;
  }

  v50 = [v49 name];
  v51 = sub_1D726207C();

  return v51;
}

uint64_t FormatFeedGroup.kindIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FormatFeedGroup() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FormatFeedGroup.paidVisibility.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatFeedGroup();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t FormatFeedGroup.paidVisibilityInForYou.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatFeedGroup();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t FormatFeedGroup.repooling.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FormatFeedGroup();
  *a1 = *(v1 + *(result + 64));
  return result;
}

uint64_t FormatFeedGroup.personalizingScoreProfiles.getter()
{
  type metadata accessor for FormatFeedGroup();
}

uint64_t FormatFeedGroup.debugCandidates.getter()
{
  type metadata accessor for FormatFeedGroup();
}

BOOL static FormatFeedGroup.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *(type metadata accessor for FormatFeedGroup() + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return *a1 == *a2;
  }

  v9 = sub_1D72646CC();
  result = 0;
  if (v9)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t FormatFeedGroup.init(result:kindIdentifier:paidVisibility:paidVisibilityInForYou:rankMultiplier:baseScore:scoreThreshold:softMaxPaidArticlesForFreeUsersSmall:softMaxPaidArticlesForFreeUsersLarge:softMinPaidArticlesForFreeUsersSmall:softMinPaidArticlesForFreeUsersLarge:repooling:debugCandidates:debugFilterJournals:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, void *a9@<X8>, double a10@<D0>, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, char *a20, uint64_t a21, uint64_t a22)
{
  v27 = *a4;
  v28 = *a5;
  v118 = *a20;
  *a9 = 0;
  v29 = type metadata accessor for FormatFeedGroup();
  v30 = (a9 + v29[6]);
  v120 = a1;
  v31 = a1 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent;
  v129 = a9 + v29[5];
  sub_1D5CEB888(v31, v129, type metadata accessor for FormatContent.Resolved);
  *v30 = a2;
  v30[1] = a3;
  *(a9 + v29[7]) = v27;
  *(a9 + v29[8]) = v28;
  *(a9 + v29[9]) = a10;
  v32 = a6;
  if (a7)
  {
    v32 = 0.0;
  }

  *(a9 + v29[10]) = v32;
  v33 = a8;
  if (a11)
  {
    v33 = 0.0;
  }

  *(a9 + v29[11]) = v33;
  v34 = a9 + v29[12];
  *v34 = a12;
  v34[8] = a13 & 1;
  v35 = a9 + v29[13];
  *v35 = a14;
  v35[8] = a15 & 1;
  v36 = a9 + v29[14];
  *v36 = a16;
  v36[8] = a17 & 1;
  v37 = a9 + v29[15];
  *v37 = a18;
  v37[8] = a19 & 1;
  v121 = v29;
  v123 = a9;
  *(a9 + v29[16]) = v118;
  v38 = type metadata accessor for FormatContent.Resolved();
  v39 = *(v38 + 36);
  v40 = sub_1D5CEB958(*(v31 + v39));
  v41 = sub_1D5CECAC0(*(v31 + v39));
  if (v40 >> 62)
  {
LABEL_48:
    sub_1D5B5B5F8();

    v75 = sub_1D726403C();
    swift_bridgeObjectRelease_n();
    v40 = v75;
  }

  else
  {
    v42 = v40 & 0xFFFFFFFFFFFFFF8;

    sub_1D726479C();
    sub_1D5B5B5F8();
    if (swift_dynamicCastMetatype() || (v73 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_7:
    }

    else
    {
      v74 = v42 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v74 += 8;
        if (!--v73)
        {
          goto LABEL_7;
        }
      }

      v40 = v42 | 1;
    }
  }

  if (v41 >> 62)
  {
    sub_1D5B5B5F8();

    v43 = sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5B5F8();
    v43 = v41;
  }

  sub_1D5CED3B0(v43);
  *(v123 + v121[17]) = v40;
  v119 = *(v129 + *(v38 + 36));
  v44 = sub_1D5CEB958(v119);
  v45 = v44;
  if (v44 >> 62)
  {
    v38 = sub_1D7263BFC();
    if (v38)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v38 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
LABEL_12:
      v41 = 0;
      v127 = v45 & 0xC000000000000001;
      v124 = v45 & 0xFFFFFFFFFFFFFF8;
      v46 = MEMORY[0x1E69E7CC8];
      v125 = v38;
      while (1)
      {
        if (v127)
        {
          v47 = MEMORY[0x1DA6FB460](v41, v45);
          v48 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v41 >= *(v124 + 16))
          {
            goto LABEL_46;
          }

          v47 = *(v45 + 8 * v41 + 32);
          swift_unknownObjectRetain();
          v48 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v129 = v48;
        v49 = [v47 identifier];
        v50 = sub_1D726207C();
        v52 = v51;

        v53 = [v47 scoreProfile];
        if (!v53)
        {
          v64 = sub_1D5B69D90(v50, v52);
          v66 = v65;

          if (v66)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1D6D8193C();
            }

            sub_1D6716D80(v64, v46);
          }

          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        v54 = v53;
        v38 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = sub_1D5B69D90(v50, v52);
        v58 = v46[2];
        v59 = (v56 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_45;
        }

        v61 = v56;
        if (v46[3] >= v60)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v56 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_1D6D8193C();
            if ((v61 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_1D6D6C83C(v60, isUniquelyReferenced_nonNull_native);
          v62 = sub_1D5B69D90(v50, v52);
          if ((v61 & 1) != (v63 & 1))
          {
LABEL_89:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v57 = v62;
          if ((v61 & 1) == 0)
          {
LABEL_35:
            v46[(v57 >> 6) + 8] |= 1 << v57;
            v69 = (v46[6] + 16 * v57);
            *v69 = v50;
            v69[1] = v52;
            *(v46[7] + 8 * v57) = v54;
            swift_unknownObjectRelease();
            v70 = v46[2];
            v71 = __OFADD__(v70, 1);
            v72 = v70 + 1;
            if (v71)
            {
              goto LABEL_47;
            }

            v46[2] = v72;
            goto LABEL_37;
          }
        }

        v67 = v46[7];
        v68 = *(v67 + 8 * v57);
        *(v67 + 8 * v57) = v54;
        swift_unknownObjectRelease();

LABEL_37:
        v45 = v38;
        v38 = v125;
LABEL_15:
        ++v41;
        if (v129 == v38)
        {
          goto LABEL_52;
        }
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v76 = sub_1D5CECAC0(v119);
  v77 = v76;
  if (v76 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v79 = 0;
    v126 = v77 & 0xFFFFFFFFFFFFFF8;
    v128 = v77 & 0xC000000000000001;
    while (1)
    {
      if (v128)
      {
        v84 = MEMORY[0x1DA6FB460](v79, v77);
      }

      else
      {
        if (v79 >= *(v126 + 16))
        {
          goto LABEL_79;
        }

        v84 = *(v77 + 8 * v79 + 32);
      }

      v85 = v84;
      v83 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      v86 = [v84 identifier];
      v87 = sub_1D726207C();
      v89 = v88;

      v90 = [v85 scoreProfile];
      if (v90)
      {
        v91 = v90;
        v92 = v77;
        v77 = i;
        v93 = swift_isUniquelyReferenced_nonNull_native();
        v94 = sub_1D5B69D90(v87, v89);
        v96 = v46[2];
        v97 = (v95 & 1) == 0;
        v71 = __OFADD__(v96, v97);
        v98 = v96 + v97;
        if (v71)
        {
          goto LABEL_78;
        }

        v99 = v95;
        if (v46[3] >= v98)
        {
          if ((v93 & 1) == 0)
          {
            v107 = v94;
            sub_1D6D8193C();
            v94 = v107;
          }
        }

        else
        {
          sub_1D6D6C83C(v98, v93);
          v94 = sub_1D5B69D90(v87, v89);
          if ((v99 & 1) != (v100 & 1))
          {
            goto LABEL_89;
          }
        }

        i = v77;
        v77 = v92;
        if (v99)
        {
          v80 = v94;

          v81 = v46[7];
          v82 = *(v81 + 8 * v80);
          *(v81 + 8 * v80) = v91;

          v83 = v79 + 1;
        }

        else
        {
          v46[(v94 >> 6) + 8] |= 1 << v94;
          v104 = (v46[6] + 16 * v94);
          *v104 = v87;
          v104[1] = v89;
          *(v46[7] + 8 * v94) = v91;

          v105 = v46[2];
          v71 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          v83 = v79 + 1;
          if (v71)
          {
            goto LABEL_80;
          }

          v46[2] = v106;
        }
      }

      else
      {
        v101 = sub_1D5B69D90(v87, v89);
        v103 = v102;

        if (v103)
        {
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1D6D8193C();
          }

          sub_1D6716D80(v101, v46);
        }

        else
        {
        }
      }

      ++v79;
      if (v83 == i)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

LABEL_82:

  *(v123 + v121[18]) = v46;
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    if (!a21)
    {
      v110 = v120 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content;
      v111 = *(v110 + *(type metadata accessor for FormatContent(0) + 68));

      v112 = sub_1D6A33D0C(v111, v120);

      v113 = v120 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options;
      v114 = *(v113 + *(type metadata accessor for FormatServiceOptions() + 44));
      type metadata accessor for FeedGroupDebugCandidates();
      v115 = swift_allocObject();
      v115[2] = v112;
      sub_1D5B5D1FC(0, &qword_1EDF1B4B0, type metadata accessor for FeedGroupDebugCandidateItem, MEMORY[0x1E69E62F8]);
      sub_1D6A34358(&qword_1EDF1B4A8);
      sub_1D5C270D0(qword_1EDF35D90, type metadata accessor for FeedGroupDebugCandidateItem);

      v115[3] = sub_1D72623AC();
      v115[4] = v114;
      v115[5] = MEMORY[0x1E69E7CC0];
    }

    v109 = FeedGroupDebugCandidates.append(filterJournals:)(a22);
  }

  else
  {

    v109 = 0;
  }

  *(v123 + v121[19]) = v109;
  return result;
}

uint64_t FormatFeedGroup.init(content:kindIdentifier:paidVisibility:paidVisibilityInForYou:rankMultiplier:baseScore:scoreThreshold:softMaxPaidArticlesForFreeUsersSmall:softMaxPaidArticlesForFreeUsersLarge:softMinPaidArticlesForFreeUsersSmall:softMinPaidArticlesForFreeUsersLarge:repooling:debugCandidates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, void *a9@<X8>, double a10@<D0>, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, char *a20, uint64_t a21)
{
  v26 = *a4;
  v27 = *a5;
  v109 = *a20;
  *a9 = 0;
  v28 = type metadata accessor for FormatFeedGroup();
  v29 = (a9 + v28[6]);
  sub_1D5CEB888(a1, a9 + v28[5], type metadata accessor for FormatContent.Resolved);
  *v29 = a2;
  v29[1] = a3;
  *(a9 + v28[7]) = v26;
  *(a9 + v28[8]) = v27;
  *(a9 + v28[9]) = a10;
  v30 = a6;
  if (a7)
  {
    v30 = 0.0;
  }

  *(a9 + v28[10]) = v30;
  v31 = a8;
  if (a11)
  {
    v31 = 0.0;
  }

  *(a9 + v28[11]) = v31;
  v32 = a9 + v28[12];
  *v32 = a12;
  v32[8] = a13 & 1;
  v33 = a9 + v28[13];
  *v33 = a14;
  v33[8] = a15 & 1;
  v34 = a9 + v28[14];
  *v34 = a16;
  v34[8] = a17 & 1;
  v35 = a9 + v28[15];
  *v35 = a18;
  v35[8] = a19 & 1;
  v111 = v28;
  v112 = a9;
  *(a9 + v28[16]) = v109;
  v107 = a1;
  v36 = *(a1 + *(type metadata accessor for FormatContent.Resolved() + 36));
  v37 = sub_1D5CEB958(v36);
  v38 = sub_1D5CECAC0(v36);
  if (v37 >> 62)
  {
LABEL_48:
    sub_1D5B5B5F8();

    v72 = sub_1D726403C();
    swift_bridgeObjectRelease_n();
    v37 = v72;
  }

  else
  {
    v39 = v37 & 0xFFFFFFFFFFFFFF8;

    sub_1D726479C();
    sub_1D5B5B5F8();
    if (swift_dynamicCastMetatype() || (v70 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_7:
    }

    else
    {
      v71 = v39 + 32;
      while (swift_dynamicCastObjCProtocolConditional())
      {
        v71 += 8;
        if (!--v70)
        {
          goto LABEL_7;
        }
      }

      v37 = v39 | 1;
    }
  }

  if (v38 >> 62)
  {
    sub_1D5B5B5F8();

    v40 = sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5B5F8();
    v40 = v38;
  }

  sub_1D5CED3B0(v40);
  *(v112 + v111[17]) = v37;
  v41 = sub_1D5CEB958(v36);
  v38 = v41;
  if (v41 >> 62)
  {
    v42 = sub_1D7263BFC();
    v110 = v36;
    if (v42)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v110 = v36;
    if (v42)
    {
LABEL_12:
      v43 = 0;
      v117 = v38 & 0xC000000000000001;
      v114 = v38 & 0xFFFFFFFFFFFFFF8;
      v44 = MEMORY[0x1E69E7CC8];
      v115 = v42;
      while (1)
      {
        if (v117)
        {
          v45 = MEMORY[0x1DA6FB460](v43, v38);
          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v43 >= *(v114 + 16))
          {
            goto LABEL_46;
          }

          v45 = *(v38 + 8 * v43 + 32);
          swift_unknownObjectRetain();
          v46 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v119 = v46;
        v47 = [v45 identifier];
        v36 = sub_1D726207C();
        v49 = v48;

        v50 = [v45 scoreProfile];
        if (!v50)
        {
          v61 = sub_1D5B69D90(v36, v49);
          v63 = v62;

          if (v63)
          {
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_1D6D8193C();
            }

            sub_1D6716D80(v61, v44);
          }

          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        v51 = v50;
        v52 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = sub_1D5B69D90(v36, v49);
        v56 = v44[2];
        v57 = (v54 & 1) == 0;
        v58 = v56 + v57;
        if (__OFADD__(v56, v57))
        {
          goto LABEL_45;
        }

        v38 = v54;
        if (v44[3] >= v58)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v54 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_1D6D8193C();
            if ((v38 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_1D6D6C83C(v58, isUniquelyReferenced_nonNull_native);
          v59 = sub_1D5B69D90(v36, v49);
          if ((v38 & 1) != (v60 & 1))
          {
LABEL_83:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v55 = v59;
          if ((v38 & 1) == 0)
          {
LABEL_35:
            v44[(v55 >> 6) + 8] |= 1 << v55;
            v66 = (v44[6] + 16 * v55);
            *v66 = v36;
            v66[1] = v49;
            *(v44[7] + 8 * v55) = v51;
            swift_unknownObjectRelease();
            v67 = v44[2];
            v68 = __OFADD__(v67, 1);
            v69 = v67 + 1;
            if (v68)
            {
              goto LABEL_47;
            }

            v44[2] = v69;
            goto LABEL_37;
          }
        }

        v64 = v44[7];
        v65 = *(v64 + 8 * v55);
        *(v64 + 8 * v55) = v51;
        swift_unknownObjectRelease();

LABEL_37:
        v38 = v52;
        v42 = v115;
LABEL_15:
        ++v43;
        if (v119 == v42)
        {
          goto LABEL_52;
        }
      }
    }
  }

  v44 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v73 = sub_1D5CECAC0(v110);
  v74 = v73;
  if (v73 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v76 = 0;
    v116 = v74 & 0xFFFFFFFFFFFFFF8;
    v118 = v74 & 0xC000000000000001;
    while (1)
    {
      if (v118)
      {
        v81 = MEMORY[0x1DA6FB460](v76, v74);
      }

      else
      {
        if (v76 >= *(v116 + 16))
        {
          goto LABEL_79;
        }

        v81 = *(v74 + 8 * v76 + 32);
      }

      v82 = v81;
      v80 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      v83 = [v81 identifier];
      v84 = sub_1D726207C();
      v86 = v85;

      v87 = [v82 scoreProfile];
      if (v87)
      {
        v88 = v87;
        v89 = v74;
        v74 = i;
        v90 = swift_isUniquelyReferenced_nonNull_native();
        v91 = sub_1D5B69D90(v84, v86);
        v93 = v44[2];
        v94 = (v92 & 1) == 0;
        v68 = __OFADD__(v93, v94);
        v95 = v93 + v94;
        if (v68)
        {
          goto LABEL_78;
        }

        v96 = v92;
        if (v44[3] >= v95)
        {
          if ((v90 & 1) == 0)
          {
            v104 = v91;
            sub_1D6D8193C();
            v91 = v104;
          }
        }

        else
        {
          sub_1D6D6C83C(v95, v90);
          v91 = sub_1D5B69D90(v84, v86);
          if ((v96 & 1) != (v97 & 1))
          {
            goto LABEL_83;
          }
        }

        i = v74;
        v74 = v89;
        if (v96)
        {
          v77 = v91;

          v78 = v44[7];
          v79 = *(v78 + 8 * v77);
          *(v78 + 8 * v77) = v88;

          v80 = v76 + 1;
        }

        else
        {
          v44[(v91 >> 6) + 8] |= 1 << v91;
          v101 = (v44[6] + 16 * v91);
          *v101 = v84;
          v101[1] = v86;
          *(v44[7] + 8 * v91) = v88;

          v102 = v44[2];
          v68 = __OFADD__(v102, 1);
          v103 = v102 + 1;
          v80 = v76 + 1;
          if (v68)
          {
            goto LABEL_80;
          }

          v44[2] = v103;
        }
      }

      else
      {
        v98 = sub_1D5B69D90(v84, v86);
        v100 = v99;

        if (v100)
        {
          if (!swift_isUniquelyReferenced_nonNull_native())
          {
            sub_1D6D8193C();
          }

          sub_1D6716D80(v98, v44);
        }

        else
        {
        }
      }

      ++v76;
      if (v80 == i)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

LABEL_82:

  result = sub_1D5CED790(v107, type metadata accessor for FormatContent.Resolved);
  *(v112 + v111[18]) = v44;
  *(v112 + v111[19]) = a21;
  return result;
}

uint64_t FormatFeedGroup.init(result:paidVisibility:paidVisibilityInForYou:rankMultiplier:baseScore:scoreThreshold:softMaxPaidArticlesForFreeUsersSmall:softMaxPaidArticlesForFreeUsersLarge:softMinPaidArticlesForFreeUsersSmall:softMinPaidArticlesForFreeUsersLarge:repooling:debugCandidates:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, char *a18, uint64_t a19)
{
  v24 = *a2;
  v25 = *a3;
  v117 = *a18;
  *a9 = 0;
  v26 = type metadata accessor for FormatFeedGroup();
  v27 = (a9 + v26[6]);
  v118 = a1;
  v28 = a1 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent;
  v128 = a9 + v26[5];
  sub_1D5CEB888(v28, v128, type metadata accessor for FormatContent.Resolved);
  *v27 = 0;
  v27[1] = 0;
  *(a9 + v26[7]) = v24;
  *(a9 + v26[8]) = v25;
  *(a9 + v26[9]) = a10;
  v29 = a4;
  if (a5)
  {
    v29 = 0.0;
  }

  *(a9 + v26[10]) = v29;
  v30 = a6;
  if (a7)
  {
    v30 = 0.0;
  }

  *(a9 + v26[11]) = v30;
  v31 = a9 + v26[12];
  *v31 = a8;
  v31[8] = a11 & 1;
  v32 = a9 + v26[13];
  *v32 = a12;
  v32[8] = a13 & 1;
  v33 = a9 + v26[14];
  *v33 = a14;
  v33[8] = a15 & 1;
  v34 = a9 + v26[15];
  *v34 = a16;
  v34[8] = a17 & 1;
  v119 = v26;
  v120 = a9;
  *(a9 + v26[16]) = v117;
  v35 = type metadata accessor for FormatContent.Resolved();
  v36 = *(v35 + 36);
  v37 = sub_1D5CEB958(*(v28 + v36));
  v38 = sub_1D5CECAC0(*(v28 + v36));
  if (v37 >> 62)
  {
    goto LABEL_46;
  }

  v39 = v37 & 0xFFFFFFFFFFFFFF8;

  sub_1D726479C();
  sub_1D5B5B5F8();
  if (swift_dynamicCastMetatype() || (v72 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v73 = v39 + 32;
  while (swift_dynamicCastObjCProtocolConditional())
  {
    v73 += 8;
    if (!--v72)
    {
      goto LABEL_7;
    }
  }

  v37 = v39 | 1;
LABEL_8:
  if (v38 >> 62)
  {
    sub_1D5B5B5F8();

    v40 = sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5B5F8();
    v40 = v38;
  }

  sub_1D5CED3B0(v40);
  *(v120 + v119[17]) = v37;
  v122 = *(v128 + *(v35 + 36));
  v41 = sub_1D5CEB958(v122);
  v35 = v41;
  if (!(v41 >> 62))
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_49;
    }

    goto LABEL_12;
  }

  v42 = sub_1D7263BFC();
  if (v42)
  {
LABEL_12:
    v38 = 0;
    v124 = v35 & 0xFFFFFFFFFFFFFF8;
    v126 = v35 & 0xC000000000000001;
    v43 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v126)
      {
        v44 = MEMORY[0x1DA6FB460](v38, v35);
        v45 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v38 >= *(v124 + 16))
        {
          goto LABEL_44;
        }

        v44 = *(v35 + 8 * v38 + 32);
        swift_unknownObjectRetain();
        v45 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          sub_1D5B5B5F8();

          v74 = sub_1D726403C();
          swift_bridgeObjectRelease_n();
          v37 = v74;
          goto LABEL_8;
        }
      }

      v46 = [v44 identifier];
      v47 = sub_1D726207C();
      v49 = v48;

      v50 = [v44 scoreProfile];
      if (v50)
      {
        v51 = v50;
        v128 = v45;
        v52 = v35;
        v35 = v42;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = sub_1D5B69D90(v47, v49);
        v56 = v43[2];
        v57 = (v55 & 1) == 0;
        v58 = __OFADD__(v56, v57);
        v59 = v56 + v57;
        if (v58)
        {
          goto LABEL_43;
        }

        v60 = v55;
        if (v43[3] >= v59)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v71 = v54;
            sub_1D6D8193C();
            v54 = v71;
          }
        }

        else
        {
          sub_1D6D6C83C(v59, isUniquelyReferenced_nonNull_native);
          v54 = sub_1D5B69D90(v47, v49);
          if ((v60 & 1) != (v61 & 1))
          {
LABEL_90:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }
        }

        v42 = v35;
        v35 = v52;
        if (v60)
        {
          v65 = v54;

          v66 = v43[7];
          v67 = *(v66 + 8 * v65);
          *(v66 + 8 * v65) = v51;
          swift_unknownObjectRelease();

          v45 = v128;
        }

        else
        {
          v43[(v54 >> 6) + 8] |= 1 << v54;
          v68 = (v43[6] + 16 * v54);
          *v68 = v47;
          v68[1] = v49;
          *(v43[7] + 8 * v54) = v51;
          swift_unknownObjectRelease();
          v69 = v43[2];
          v58 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          v45 = v128;
          if (v58)
          {
            goto LABEL_45;
          }

          v43[2] = v70;
        }
      }

      else
      {
        v62 = sub_1D5B69D90(v47, v49);
        v64 = v63;

        if (v64)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D6D8193C();
          }

          sub_1D6716D80(v62, v43);
        }

        swift_unknownObjectRelease();
      }

      ++v38;
      if (v45 == v42)
      {
        goto LABEL_50;
      }
    }
  }

LABEL_49:
  v43 = MEMORY[0x1E69E7CC8];
LABEL_50:

  v75 = sub_1D5CECAC0(v122);
  v76 = v75;
  if (v75 >> 62)
  {
    goto LABEL_82;
  }

  v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
LABEL_52:
    v78 = 0;
    v123 = v76 & 0xFFFFFFFFFFFFFF8;
    v125 = v76 & 0xC000000000000001;
    do
    {
      if (v125)
      {
        v79 = MEMORY[0x1DA6FB460](v78, v76);
        v80 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v78 >= *(v123 + 16))
        {
          goto LABEL_80;
        }

        v79 = *(v76 + 8 * v78 + 32);
        v80 = v78 + 1;
        if (__OFADD__(v78, 1))
        {
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          v77 = sub_1D7263BFC();
          if (!v77)
          {
            break;
          }

          goto LABEL_52;
        }
      }

      v81 = v79;
      v82 = [v79 identifier];
      v83 = sub_1D726207C();
      v85 = v84;

      v129 = v81;
      v86 = [v81 scoreProfile];
      if (!v86)
      {
        v98 = sub_1D5B69D90(v83, v85);
        v100 = v99;

        if (v100)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D6D8193C();
          }

          sub_1D6716D80(v98, v43);
        }

        goto LABEL_55;
      }

      v87 = v86;
      v127 = v80;
      v88 = v77;
      v89 = v76;
      v90 = swift_isUniquelyReferenced_nonNull_native();
      v92 = sub_1D5B69D90(v83, v85);
      v93 = v43[2];
      v94 = (v91 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_79;
      }

      v76 = v91;
      if (v43[3] >= v95)
      {
        if (v90)
        {
          if ((v91 & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else
        {
          sub_1D6D8193C();
          if ((v76 & 1) == 0)
          {
            goto LABEL_75;
          }
        }
      }

      else
      {
        sub_1D6D6C83C(v95, v90);
        v96 = sub_1D5B69D90(v83, v85);
        if ((v76 & 1) != (v97 & 1))
        {
          goto LABEL_90;
        }

        v92 = v96;
        if ((v76 & 1) == 0)
        {
LABEL_75:
          v43[(v92 >> 6) + 8] |= 1 << v92;
          v103 = (v43[6] + 16 * v92);
          *v103 = v83;
          v103[1] = v85;
          *(v43[7] + 8 * v92) = v87;

          v104 = v43[2];
          v58 = __OFADD__(v104, 1);
          v105 = v104 + 1;
          if (v58)
          {
            goto LABEL_81;
          }

          v43[2] = v105;
          goto LABEL_77;
        }
      }

      v101 = v43[7];
      v102 = *(v101 + 8 * v92);
      *(v101 + 8 * v92) = v87;

LABEL_77:
      v76 = v89;
      v77 = v88;
      v80 = v127;
LABEL_55:
      ++v78;
    }

    while (v80 != v77);
  }

  *(v120 + v119[18]) = v43;
  sub_1D725A9FC();
  if (sub_1D725A9CC())
  {
    if (!a19)
    {
      v108 = MEMORY[0x1E69E7CC0];
      v109 = v118 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content;
      v110 = *(v109 + *(type metadata accessor for FormatContent(0) + 68));

      v111 = sub_1D6A33D0C(v110, v118);

      v112 = v118 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options;
      v113 = *(v112 + *(type metadata accessor for FormatServiceOptions() + 44));
      type metadata accessor for FeedGroupDebugCandidates();
      v114 = swift_allocObject();
      v114[2] = v111;
      sub_1D5B5D1FC(0, &qword_1EDF1B4B0, type metadata accessor for FeedGroupDebugCandidateItem, MEMORY[0x1E69E62F8]);
      sub_1D6A34358(&qword_1EDF1B4A8);
      sub_1D5C270D0(qword_1EDF35D90, type metadata accessor for FeedGroupDebugCandidateItem);

      v114[3] = sub_1D72623AC();
      v114[4] = v113;
      v114[5] = v108;
    }

    v107 = FeedGroupDebugCandidates.append(filterJournals:)(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v107 = 0;
  }

  *(v120 + v119[19]) = v107;
  return result;
}

uint64_t FormatFeedGroup.init(content:paidVisibility:paidVisibilityInForYou:rankMultiplier:baseScore:scoreThreshold:softMaxPaidArticlesForFreeUsersSmall:softMaxPaidArticlesForFreeUsersLarge:softMinPaidArticlesForFreeUsersSmall:softMinPaidArticlesForFreeUsersLarge:repooling:debugCandidates:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, double a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, void *a14, unsigned __int8 a15, unint64_t a16, unsigned __int8 a17, char *a18, uint64_t a19)
{
  LODWORD(v121) = a7;
  v120 = *&a6;
  LODWORD(v126) = a17;
  v124 = a8;
  v125 = a16;
  LODWORD(v123) = a15;
  v122 = a14;
  LODWORD(v119) = a13;
  v118 = a12;
  v116 = a11;
  v117 = a5;
  v25 = type metadata accessor for FormatContent.Resolved();
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a2;
  v31 = *a3;
  v32 = *a18;
  v115 = a1;
  sub_1D5CEB888(a1, v29, type metadata accessor for FormatContent.Resolved);
  *a9 = 0;
  v33 = type metadata accessor for FormatFeedGroup();
  v34 = (a9 + v33[6]);
  sub_1D5CEB888(v29, a9 + v33[5], type metadata accessor for FormatContent.Resolved);
  *v34 = 0;
  v34[1] = 0;
  *(a9 + v33[7]) = v30;
  *(a9 + v33[8]) = v31;
  *(a9 + v33[9]) = a10;
  v35 = a4;
  if (v117)
  {
    v35 = 0.0;
  }

  *(a9 + v33[10]) = v35;
  v36 = v120;
  if (v121)
  {
    v36 = 0.0;
  }

  *(a9 + v33[11]) = v36;
  v37 = a9 + v33[12];
  *v37 = v124;
  v37[8] = v116 & 1;
  v38 = a9 + v33[13];
  *v38 = v118;
  v38[8] = v119 & 1;
  v39 = a9 + v33[14];
  *v39 = v122;
  v39[8] = v123 & 1;
  v40 = a9 + v33[15];
  *v40 = v125;
  v40[8] = v126 & 1;
  v121 = v33;
  v122 = a9;
  *(a9 + v33[16]) = v32;
  v41 = *(v26 + 44);
  v118 = v29;
  v42 = *&v29[v41];
  v43 = 0;
  v44 = sub_1D5CEB958(v42);
  v45 = sub_1D5CECAC0(v42);
  if (v44 >> 62)
  {
LABEL_48:
    sub_1D5B5B5F8();

    v77 = sub_1D726403C();
    swift_bridgeObjectRelease_n();
    v44 = v77;
  }

  else
  {
    v46 = v44 & 0xFFFFFFFFFFFFFF8;

    sub_1D726479C();
    sub_1D5B5B5F8();
    if (swift_dynamicCastMetatype() || (v75 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_7:
    }

    else
    {
      v76 = v46 + 32;
      while (1)
      {
        v128 = &unk_1F5290D68;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v76 += 8;
        if (!--v75)
        {
          goto LABEL_7;
        }
      }

      v44 = v46 | 1;
    }
  }

  if (v45 >> 62)
  {
    sub_1D5B5B5F8();

    v47 = sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5B5F8();
    v47 = v45;
  }

  v127 = v44;
  sub_1D5CED3B0(v47);
  *(v122 + v121[17]) = v127;
  v48 = sub_1D5CEB958(v42);
  v49 = v48;
  v119 = v43;
  if (v48 >> 62)
  {
    v45 = sub_1D7263BFC();
    v120 = *&v42;
    if (v45)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v45 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v120 = *&v42;
    if (v45)
    {
LABEL_12:
      v50 = 0;
      v125 = v49 & 0xC000000000000001;
      v123 = v49 & 0xFFFFFFFFFFFFFF8;
      v51 = MEMORY[0x1E69E7CC8];
      v124 = v45;
      while (1)
      {
        if (v125)
        {
          v52 = MEMORY[0x1DA6FB460](v50, v49);
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v50 >= *(v123 + 16))
          {
            goto LABEL_46;
          }

          v52 = *(v49 + 8 * v50 + 32);
          swift_unknownObjectRetain();
          v53 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v126 = v53;
        v54 = [v52 identifier];
        v42 = sub_1D726207C();
        v56 = v55;

        v57 = [v52 scoreProfile];
        if (!v57)
        {
          v67 = sub_1D5B69D90(v42, v56);
          v43 = v68;

          if (v43)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v127 = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D6D8193C();
              v51 = v127;
            }

            sub_1D6716D80(v67, v51);
          }

          swift_unknownObjectRelease();
          goto LABEL_15;
        }

        v58 = v57;
        v45 = v49;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v51;
        v60 = sub_1D5B69D90(v42, v56);
        v61 = v51[2];
        v62 = (v59 & 1) == 0;
        v63 = v61 + v62;
        if (__OFADD__(v61, v62))
        {
          goto LABEL_45;
        }

        v64 = v59;
        if (v51[3] >= v63)
        {
          if (v43)
          {
            if ((v59 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            sub_1D6D8193C();
            if ((v64 & 1) == 0)
            {
              goto LABEL_35;
            }
          }
        }

        else
        {
          sub_1D6D6C83C(v63, v43);
          v65 = sub_1D5B69D90(v42, v56);
          if ((v64 & 1) != (v66 & 1))
          {
LABEL_83:
            result = sub_1D726493C();
            __break(1u);
            return result;
          }

          v60 = v65;
          if ((v64 & 1) == 0)
          {
LABEL_35:
            v51 = v127;
            v127[(v60 >> 6) + 8] |= 1 << v60;
            v71 = (v51[6] + 16 * v60);
            *v71 = v42;
            v71[1] = v56;
            *(v51[7] + 8 * v60) = v58;
            swift_unknownObjectRelease();
            v72 = v51[2];
            v73 = __OFADD__(v72, 1);
            v74 = v72 + 1;
            if (v73)
            {
              goto LABEL_47;
            }

            v51[2] = v74;
            goto LABEL_37;
          }
        }

        v51 = v127;
        v70 = v127[7];
        v43 = *(v70 + 8 * v60);
        *(v70 + 8 * v60) = v58;
        swift_unknownObjectRelease();

LABEL_37:
        v49 = v45;
        v45 = v124;
LABEL_15:
        ++v50;
        if (v126 == v45)
        {
          goto LABEL_52;
        }
      }
    }
  }

  v51 = MEMORY[0x1E69E7CC8];
LABEL_52:

  v78 = sub_1D5CECAC0(*&v120);
  v79 = v78;
  if (v78 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v81 = 0;
    v124 = v79 & 0xFFFFFFFFFFFFFF8;
    v125 = v79 & 0xC000000000000001;
    while (1)
    {
      if (v125)
      {
        v86 = MEMORY[0x1DA6FB460](v81, v79);
      }

      else
      {
        if (v81 >= *(v124 + 16))
        {
          goto LABEL_79;
        }

        v86 = *(v79 + 8 * v81 + 32);
      }

      v87 = v86;
      v85 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      v88 = [v86 identifier];
      v89 = sub_1D726207C();
      v91 = v90;

      v92 = [v87 scoreProfile];
      if (v92)
      {
        v93 = v92;
        v126 = v81 + 1;
        v94 = v79;
        v79 = i;
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v51;
        v96 = sub_1D5B69D90(v89, v91);
        v98 = v51[2];
        v99 = (v97 & 1) == 0;
        v73 = __OFADD__(v98, v99);
        v100 = v98 + v99;
        if (v73)
        {
          goto LABEL_78;
        }

        v101 = v97;
        if (v51[3] >= v100)
        {
          if ((v95 & 1) == 0)
          {
            v110 = v96;
            sub_1D6D8193C();
            v96 = v110;
          }
        }

        else
        {
          sub_1D6D6C83C(v100, v95);
          v96 = sub_1D5B69D90(v89, v91);
          if ((v101 & 1) != (v102 & 1))
          {
            goto LABEL_83;
          }
        }

        i = v79;
        v79 = v94;
        if (v101)
        {
          v82 = v96;

          v51 = v127;
          v83 = v127[7];
          v84 = *(v83 + 8 * v82);
          *(v83 + 8 * v82) = v93;

          v85 = v126;
        }

        else
        {
          v51 = v127;
          v127[(v96 >> 6) + 8] |= 1 << v96;
          v107 = (v51[6] + 16 * v96);
          *v107 = v89;
          v107[1] = v91;
          *(v51[7] + 8 * v96) = v93;

          v108 = v51[2];
          v73 = __OFADD__(v108, 1);
          v109 = v108 + 1;
          v85 = v126;
          if (v73)
          {
            goto LABEL_80;
          }

          v51[2] = v109;
        }
      }

      else
      {
        v103 = sub_1D5B69D90(v89, v91);
        v105 = v104;

        if (v105)
        {
          v106 = swift_isUniquelyReferenced_nonNull_native();
          v127 = v51;
          if ((v106 & 1) == 0)
          {
            sub_1D6D8193C();
            v51 = v127;
          }

          sub_1D6716D80(v103, v51);
        }

        else
        {
        }
      }

      ++v81;
      if (v85 == i)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

LABEL_82:

  sub_1D5CED790(v115, type metadata accessor for FormatContent.Resolved);
  result = sub_1D5CED790(v118, type metadata accessor for FormatContent.Resolved);
  v113 = v121;
  v112 = v122;
  *(v122 + v121[18]) = v51;
  *(v112 + v113[19]) = a19;
  return result;
}

uint64_t FormatFeedGroup.copy(content:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v118 = a2;
  sub_1D5B5D1FC(0, &qword_1EDF11E38, type metadata accessor for FormatContent.Resolved, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v112 - v6;
  v8 = type metadata accessor for FormatContent.Resolved();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A34080(a1, v7);
  v13 = *(v9 + 48);
  v14 = v13(v7, 1, v8);
  v122 = v8;
  if (v14 == 1)
  {
    v15 = type metadata accessor for FormatFeedGroup();
    sub_1D5CEB888(v2 + *(v15 + 20), v12, type metadata accessor for FormatContent.Resolved);
    if (v13(v7, 1, v8) != 1)
    {
      sub_1D6A34114(v7);
    }
  }

  else
  {
    sub_1D5CED978(v7, v12, type metadata accessor for FormatContent.Resolved);
  }

  v16 = type metadata accessor for FormatFeedGroup();
  v17 = v16[7];
  v18 = (v2 + v16[6]);
  v19 = v18[1];
  v120 = *v18;
  LODWORD(v121) = *(v2 + v17);
  v20 = v16[9];
  LODWORD(v119) = *(v2 + v16[8]);
  v21 = *(v2 + v20);
  v22 = *(v2 + v16[10]);
  v23 = *(v2 + v16[11]);
  v24 = v16[13];
  v25 = v2 + v16[12];
  v115 = *v25;
  LODWORD(v114) = *(v25 + 8);
  v117 = *(v2 + v24);
  LODWORD(v116) = *(v2 + v24 + 8);
  v26 = (v2 + v16[14]);
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = (v2 + v16[15]);
  LODWORD(v113) = *(v2 + v16[16]);
  v30 = *(v2 + v16[19]);
  v31 = *v29;
  v32 = v118;
  *v118 = 0;
  v33 = (v32 + v16[6]);
  v34 = *(v29 + 8);
  sub_1D5CEB888(v12, v32 + v16[5], type metadata accessor for FormatContent.Resolved);
  *v33 = v120;
  v33[1] = v19;
  *(v32 + v16[7]) = v121;
  *(v32 + v16[8]) = v119;
  *(v32 + v16[9]) = v21;
  *(v32 + v16[10]) = v22;
  *(v32 + v16[11]) = v23;
  v35 = v32 + v16[12];
  *v35 = v115;
  v35[8] = v114;
  v36 = v32 + v16[13];
  *v36 = v117;
  v36[8] = v116;
  v37 = v32 + v16[14];
  *v37 = v27;
  v37[8] = v28;
  v38 = v32 + v16[15];
  *v38 = v31;
  v38[8] = v34;
  v117 = v16;
  *(v32 + v16[16]) = v113;
  v39 = *(v122 + 36);
  v113 = v30;
  v114 = v12;
  v40 = *&v12[v39];

  v41 = 0;
  v42 = sub_1D5CEB958(v40);
  v43 = sub_1D5CECAC0(v40);
  if (v42 >> 62)
  {
    goto LABEL_48;
  }

  v44 = v42 & 0xFFFFFFFFFFFFFF8;

  sub_1D726479C();
  sub_1D5B5B5F8();
  if (swift_dynamicCastMetatype() || (v73 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v74 = v44 + 32;
  while (1)
  {
    v124 = &unk_1F5290D68;
    if (!swift_dynamicCastObjCProtocolConditional())
    {
      break;
    }

    v74 += 8;
    if (!--v73)
    {
      goto LABEL_7;
    }
  }

  v42 = v44 | 1;
LABEL_8:
  if (v43 >> 62)
  {
    sub_1D5B5B5F8();

    v45 = sub_1D726403C();
  }

  else
  {

    sub_1D726479C();
    sub_1D5B5B5F8();
    v45 = v43;
  }

  v123 = v42;
  sub_1D5CED3B0(v45);
  *(v118 + v117[17]) = v123;
  v46 = sub_1D5CEB958(v40);
  v47 = v46;
  v115 = v41;
  if (!(v46 >> 62))
  {
    v43 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v116 = v40;
    if (!v43)
    {
      goto LABEL_51;
    }

    goto LABEL_12;
  }

  v43 = sub_1D7263BFC();
  v116 = v40;
  if (!v43)
  {
LABEL_51:
    v49 = MEMORY[0x1E69E7CC8];
LABEL_52:

    v76 = sub_1D5CECAC0(v116);
    v77 = v76;
    if (v76 >> 62)
    {
      goto LABEL_83;
    }

    v78 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v78)
    {
LABEL_84:

      result = sub_1D5CED790(v114, type metadata accessor for FormatContent.Resolved);
      v111 = v117;
      v110 = v118;
      *(v118 + v117[18]) = v49;
      *(v110 + v111[19]) = v113;
      return result;
    }

LABEL_54:
    v79 = 0;
    v120 = v77 & 0xFFFFFFFFFFFFFF8;
    v121 = v77 & 0xC000000000000001;
    while (1)
    {
      if (v121)
      {
        v84 = MEMORY[0x1DA6FB460](v79, v77);
      }

      else
      {
        if (v79 >= *(v120 + 16))
        {
          goto LABEL_81;
        }

        v84 = *(v77 + 8 * v79 + 32);
      }

      v85 = v84;
      v83 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        v78 = sub_1D7263BFC();
        if (!v78)
        {
          goto LABEL_84;
        }

        goto LABEL_54;
      }

      v86 = [v84 identifier];
      v87 = sub_1D726207C();
      v89 = v88;

      v90 = [v85 scoreProfile];
      if (!v90)
      {
        v101 = sub_1D5B69D90(v87, v89);
        v103 = v102;

        if (v103)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D6D8193C();
            v49 = v123;
          }

          sub_1D6716D80(v101, v49);
        }

        else
        {
        }

        goto LABEL_57;
      }

      v91 = v90;
      v122 = v79 + 1;
      v92 = v77;
      v77 = v78;
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v123 = v49;
      v94 = sub_1D5B69D90(v87, v89);
      v96 = v49[2];
      v97 = (v95 & 1) == 0;
      v71 = __OFADD__(v96, v97);
      v98 = v96 + v97;
      if (v71)
      {
        goto LABEL_80;
      }

      v99 = v95;
      if (v49[3] < v98)
      {
        break;
      }

      if (v93)
      {
        goto LABEL_73;
      }

      v108 = v94;
      sub_1D6D8193C();
      v94 = v108;
      if ((v99 & 1) == 0)
      {
LABEL_74:
        v49 = v123;
        v123[(v94 >> 6) + 8] |= 1 << v94;
        v105 = (v49[6] + 16 * v94);
        *v105 = v87;
        v105[1] = v89;
        *(v49[7] + 8 * v94) = v91;

        v106 = v49[2];
        v71 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v71)
        {
          goto LABEL_82;
        }

        v49[2] = v107;
        goto LABEL_56;
      }

LABEL_55:
      v80 = v94;

      v49 = v123;
      v81 = v123[7];
      v82 = *(v81 + 8 * v80);
      *(v81 + 8 * v80) = v91;

LABEL_56:
      v78 = v77;
      v77 = v92;
      v83 = v122;
LABEL_57:
      ++v79;
      if (v83 == v78)
      {
        goto LABEL_84;
      }
    }

    sub_1D6D6C83C(v98, v93);
    v94 = sub_1D5B69D90(v87, v89);
    if ((v99 & 1) != (v100 & 1))
    {
      goto LABEL_85;
    }

LABEL_73:
    if ((v99 & 1) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_55;
  }

LABEL_12:
  v48 = 0;
  v121 = v47 & 0xC000000000000001;
  v119 = v47 & 0xFFFFFFFFFFFFFF8;
  v49 = MEMORY[0x1E69E7CC8];
  v120 = v43;
  while (1)
  {
    if (v121)
    {
      v50 = MEMORY[0x1DA6FB460](v48, v47);
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v48 >= *(v119 + 16))
      {
        goto LABEL_46;
      }

      v50 = *(v47 + 8 * v48 + 32);
      swift_unknownObjectRetain();
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        sub_1D5B5B5F8();

        v75 = sub_1D726403C();
        swift_bridgeObjectRelease_n();
        v42 = v75;
        goto LABEL_8;
      }
    }

    v52 = [v50 identifier];
    v40 = sub_1D726207C();
    v54 = v53;

    v55 = [v50 scoreProfile];
    if (!v55)
    {
      v65 = sub_1D5B69D90(v40, v54);
      v41 = v66;

      if (v41)
      {
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v123 = v49;
        if ((v67 & 1) == 0)
        {
          sub_1D6D8193C();
          v49 = v123;
        }

        sub_1D6716D80(v65, v49);
      }

      swift_unknownObjectRelease();
      goto LABEL_15;
    }

    v56 = v55;
    v122 = v51;
    v43 = v47;
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v123 = v49;
    v58 = sub_1D5B69D90(v40, v54);
    v59 = v49[2];
    v60 = (v57 & 1) == 0;
    v61 = v59 + v60;
    if (__OFADD__(v59, v60))
    {
      goto LABEL_45;
    }

    v62 = v57;
    if (v49[3] < v61)
    {
      break;
    }

    if (v41)
    {
      if ((v57 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D6D8193C();
      if ((v62 & 1) == 0)
      {
LABEL_35:
        v49 = v123;
        v123[(v58 >> 6) + 8] |= 1 << v58;
        v69 = (v49[6] + 16 * v58);
        *v69 = v40;
        v69[1] = v54;
        *(v49[7] + 8 * v58) = v56;
        swift_unknownObjectRelease();
        v70 = v49[2];
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        if (v71)
        {
          goto LABEL_47;
        }

        v49[2] = v72;
        goto LABEL_37;
      }
    }

LABEL_33:

    v49 = v123;
    v68 = v123[7];
    v41 = *(v68 + 8 * v58);
    *(v68 + 8 * v58) = v56;
    swift_unknownObjectRelease();

LABEL_37:
    v47 = v43;
    v43 = v120;
    v51 = v122;
LABEL_15:
    ++v48;
    if (v51 == v43)
    {
      goto LABEL_52;
    }
  }

  sub_1D6D6C83C(v61, v41);
  v63 = sub_1D5B69D90(v40, v54);
  if ((v62 & 1) == (v64 & 1))
  {
    v58 = v63;
    if ((v62 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_85:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

BOOL sub_1D6A33264(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = *(a1 + v5);
  v8 = (a2 + v5);
  if (v7 == *v8 && *(v6 + 1) == v8[1])
  {
    return *a1 == *a2;
  }

  v10 = sub_1D72646CC();
  result = 0;
  if (v10)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t sub_1D6A33358(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D5C27134(*a1);
  v5 = v4;
  if (v3 == sub_1D5C27134(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6A333E0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5C27134(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A33444()
{
  sub_1D5C27134(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6A33498()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D5C27134(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6A334F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6A3430C();
  *a1 = result;
  return result;
}

unint64_t sub_1D6A33528@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D5C27134(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6A33554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6A3430C();
  *a1 = result;
  return result;
}
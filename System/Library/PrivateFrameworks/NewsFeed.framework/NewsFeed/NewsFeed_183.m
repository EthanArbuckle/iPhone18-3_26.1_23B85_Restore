void sub_1D6C13290(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v9 = *(v8 - 8);
  v40 = v9;
  v41 = v8;
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v12 + 80);
  v19 = *(v12 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v9 + 64) + v18;
  v24 = ((v20 + 16 + ((v19 + 7 + (v23 & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v26 = 0;
    v25 = a1;
  }

  else
  {
    v25 = a1;
    if (v24 <= 3)
    {
      v29 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
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
  }

  if (v22 < a2)
  {
    v27 = ~v22 + a2;
    if (v24 < 4)
    {
      v28 = (v27 >> (8 * v24)) + 1;
      if (v24)
      {
        v31 = v27 & ~(-1 << (8 * v24));
        bzero(v25, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *v25 = v31;
            if (v26 > 1)
            {
LABEL_57:
              if (v26 == 2)
              {
                *&v25[v24] = v28;
              }

              else
              {
                *&v25[v24] = v28;
              }

              return;
            }
          }

          else
          {
            *v25 = v27;
            if (v26 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v25 = v31;
        v25[2] = BYTE2(v31);
      }

      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v25, v24);
      *v25 = v27;
      v28 = 1;
      if (v26 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v26)
    {
      v25[v24] = v28;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&v25[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v25[v24] = 0;
  }

  else if (v26)
  {
    v25[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v10 == v22)
  {
    v32 = v41;
    v33 = *(v40 + 56);
    v34 = v25;
    v35 = a2;
    v36 = v10;
LABEL_39:

    v33(v34, v35, v36, v32);
    return;
  }

  v37 = &v25[v23] & ~v18;
  if (v14 != v22)
  {
    v39 = ((v19 + 7 + v37) & 0xFFFFFFFFFFFFFFF8);
    if ((v21 & 0x80000000) == 0)
    {
      if ((a2 & 0x80000000) != 0)
      {
        *v39 = a2 & 0x7FFFFFFF;
        v39[1] = 0;
      }

      else
      {
        v39[1] = (a2 - 1);
      }

      return;
    }

    v33 = *(v16 + 56);
    v34 = (v39 + v20 + 16) & ~v20;
    v35 = a2;
    v36 = v17;
    v32 = v11;
    goto LABEL_39;
  }

  v38 = *(v13 + 56);

  v38(v37, a2);
}

BOOL sub_1D6C136C4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(v3 + 24);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  FeedKind.init(rawValue:)(v8);
  v9 = FeedKind.rawValue.getter();
  v11 = v10;
  if (v9 == FeedKind.rawValue.getter() && v11 == v12)
  {
  }

  else
  {
    v13 = sub_1D72646CC();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  result = (v7 | a3) == 0;
  if (v7)
  {
    if (a3)
    {

      v15 = sub_1D663D3A4(v7, a3);

      return v15;
    }
  }

  return result;
}

void sub_1D6C137E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  FCFeedDescriptor.feedKind.getter(v22);
  v21 = v22[0];
  v4 = [FCFeedDescriptor.feedTag.getter() identifier];
  swift_unknownObjectRelease();
  v20 = sub_1D726207C();
  v6 = v5;

  v7 = a1;
  v8 = sub_1D713A4FC(a1);
  v9 = [FCFeedDescriptor.feedTag.getter() displayName];
  swift_unknownObjectRelease();
  v10 = sub_1D726207C();
  v12 = v11;

  FCFeedDescriptor.feedTag.getter();
  swift_getObjectType();
  v13 = sub_1D62E5CE0();
  v15 = v14;
  swift_unknownObjectRelease();
  v16 = [FCFeedDescriptor.feedTag.getter() feedNavImageAssetHandle];
  swift_unknownObjectRelease();
  if (!v16)
  {
    v17 = [FCFeedDescriptor.feedTag.getter() asSports];
    swift_unknownObjectRelease();
    if (!v17 || (v18 = [v17 sportsTheme], swift_unknownObjectRelease(), !v18) || (v16 = objc_msgSend(v18, sel_sportsLogoImageCompactAssetHandle), swift_unknownObjectRelease(), !v16))
    {
      v16 = [FCFeedDescriptor.feedTag.getter() asSports];
      swift_unknownObjectRelease();
      if (v16)
      {
        v19 = [v16 sportsTheme];
        swift_unknownObjectRelease();
        if (!v19)
        {

          v16 = 0;
          goto LABEL_3;
        }

        v16 = [v19 sportsLogoImageAssetHandle];
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_3:
  v22[1] = 1;
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;
  *(a2 + 72) = 1;
}

void sub_1D6C13A5C()
{
  sub_1D5C14A38();
  v0 = sub_1D726338C();
  v1 = [objc_opt_self() configurationWithFont_];

  qword_1EC9BAB88 = v1;
}

uint64_t sub_1D6C13AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6C13B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6C13B9C()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1D6C13BFC(*(v0 + 56));
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_1D6C13BFC(unint64_t a1)
{
  while (2)
  {
    switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
    {
      case 4uLL:
      case 0x12uLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EDF30360;
        v5 = type metadata accessor for FormatLayoutView;
        goto LABEL_9;
      case 7uLL:
        a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        continue;
      case 8uLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EDF31108;
        v5 = type metadata accessor for FormatStateView;
        goto LABEL_9;
      case 0xCuLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EDF0DAB8;
        v5 = type metadata accessor for FormatLayeredMediaView;
        goto LABEL_9;
      case 0xEuLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EC893948;
        v5 = type metadata accessor for IssueCoverView;
        goto LABEL_9;
      case 0x10uLL:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AC8, &qword_1EDF3B4A0);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        v4 = &unk_1EC893940;
        v5 = type metadata accessor for FormatVideoPlayerViewController;
LABEL_9:
        v6 = sub_1D6C14B54(v4, v5);
        *(v3 + 32) = v2;
        *(v3 + 40) = v6;
        v7 = v2;
        result = v3;
        break;
      default:
        result = MEMORY[0x1E69E7CC0];
        break;
    }

    return result;
  }
}

uint64_t sub_1D6C13ECC()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    v1 = sub_1D6C13F2C(*(v0 + 56));
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t sub_1D6C13F2C(unint64_t a1)
{
  while (1)
  {
    v1 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
    if (v1 <= 5)
    {
      break;
    }

    if (v1 != 7)
    {
      if (v1 > 0x14)
      {
        goto LABEL_17;
      }

      if (((1 << v1) & 0x1BFE00) != 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      if (v1 == 8)
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        *(v3 + 56) = type metadata accessor for FormatStateView();
        v5 = &unk_1EDF31110;
        v6 = type metadata accessor for FormatStateView;
        goto LABEL_10;
      }

      if (v1 != 18)
      {
LABEL_17:
        v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_1D7273AE0;
        *(v3 + 56) = type metadata accessor for WebEmbedImageView();
        v5 = &unk_1EDF107C8;
        v6 = type metadata accessor for WebEmbedImageView;
        goto LABEL_10;
      }

LABEL_7:
      v2 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D7273AE0;
LABEL_9:
      *(v3 + 56) = type metadata accessor for FormatLayoutView();
      v5 = &unk_1EDF30368;
      v6 = type metadata accessor for FormatLayoutView;
LABEL_10:
      *(v3 + 64) = sub_1D6C14B54(v5, v6);
      *(v3 + 32) = v2;
      v7 = v2;
      return v3;
    }

    a1 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  }

  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6C14AF4(0, &qword_1EDF19AB8, &qword_1EDF3B490);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1D7273AE0;
      v2 = *(v4 + OBJC_IVAR____TtC8NewsFeed12FormatButton_formatLayoutView);
      goto LABEL_9;
    }

    if (v1 == 4)
    {
      goto LABEL_7;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D6C141D0(unint64_t result)
{
  v1 = 0xFFFFFFFFFFFFFFBLL;
  while (2)
  {
    switch((result >> 59) & 0x1E | (result >> 2) & 1)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 6uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xBuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:
      case 0x12uLL:
      case 0x14uLL:
        v2 = result & 0xFFFFFFFFFFFFFFBLL;
        goto LABEL_5;
      case 5uLL:
        v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        result = [v4 view];
        if (result)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_15:
        v4 = *((result & v1) + 0x10);
        result = [v4 view];
        if (result)
        {
LABEL_16:
          v5 = result;

          result = v5;
        }

        else
        {
          __break(1u);
        }

        break;
      case 7uLL:
        result = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        continue;
      case 0xFuLL:
        goto LABEL_11;
      case 0x10uLL:
        goto LABEL_15;
      case 0x11uLL:
        v3 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        if (v3 >> 62)
        {
          v3 &= 0x3FFFFFFFFFFFFFFFuLL;
        }

        goto LABEL_6;
      case 0x13uLL:
        v4 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        result = [v4 view];
        if (result)
        {
          goto LABEL_16;
        }

        __break(1u);
LABEL_11:
        v2 = *((result & v1) + 0x10);
LABEL_5:
        v3 = *(v2 + 16);
LABEL_6:

        result = v3;
        break;
      default:
        v3 = *(result + 16);
        goto LABEL_6;
    }

    return result;
  }
}

uint64_t sub_1D6C14310()
{
  v1 = *(v0 + 32);

  sub_1D5F33D8C(v1);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C143C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6C && *(a1 + 8))
  {
    return (*a1 + 108);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x6B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C1441C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x6B)
  {
    *result = a2 - 108;
    if (a3 >= 0x6C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D6C1447C(unint64_t a1)
{
  sub_1D6C14A40();
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 3uLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      FormatLayoutView.prepareForReuse()();
      *&v20[OBJC_IVAR____TtC8NewsFeed12FormatButton_lastRenderStateMask] = 0;
      goto LABEL_28;
    case 4uLL:
    case 0x12uLL:
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      FormatLayoutView.prepareForReuse()();
      goto LABEL_24;
    case 5uLL:
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      WebEmbedViewController.prepareForReuse()();
      goto LABEL_24;
    case 6uLL:
      v26 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D61CAB60();
      (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
      v28 = OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_loader;
      swift_beginAccess();
      v29 = v26;
      sub_1D61CC41C(v6, v26 + v28);
      swift_endAccess();
      sub_1D6F27384();
      sub_1D6C14A98(v6);
      v30 = &v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
      v31 = *&v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedInteraction];
      *v30 = 0;
      *(v30 + 1) = 0;
      sub_1D5B74328(v31);
      v32 = &v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
      v33 = *&v29[OBJC_IVAR____TtC8NewsFeed17WebEmbedImageView_onEmbedLinkInteraction];
      *v32 = 0;
      *(v32 + 1) = 0;
      sub_1D5B74328(v33);

      return;
    case 7uLL:
      v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      sub_1D6C1447C(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), v4);
      v8 = 1 << *(v7 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v7 + 64);
      v11 = (v8 + 63) >> 6;

      v12 = 0;
      break;
    case 8uLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      FormatLayoutView.prepareForReuse()();
      v36 = &v20[OBJC_IVAR____TtC8NewsFeed15FormatStateView_lastRenderedState];
      *v36 = 0;
      *(v36 + 1) = 0;
LABEL_28:

      return;
    case 0xBuLL:
      v37 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D725F8DC();
      goto LABEL_24;
    case 0xFuLL:

      MEMORY[0x1DA6F6CF0](v25);
      v37 = sub_1D725F64C();

      goto LABEL_24;
    case 0x10uLL:
      v34 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1DA6F6CF0]();
      v37 = sub_1D725F64C();

LABEL_24:
      v35 = v37;

      return;
    case 0x13uLL:
      v21 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      MEMORY[0x1DA6F6CF0]();

      v22 = *&v21[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController];
      v23 = (v22 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_onEmbedInteraction);
      swift_beginAccess();
      v24 = *v23;
      *v23 = 0;
      v23[1] = 0;
      sub_1D5B74328(v24);
      *(v22 + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_hasPuzzleDataLoadAttempted) = 0;

      return;
    default:
      return;
  }

  while (v10)
  {
LABEL_12:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(v7 + 56) + ((v12 << 10) | (16 * v14));
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v17 > 3)
    {
      if (v17 == 4)
      {
        v19 = v16;
        sub_1D725F8DC();
      }
    }

    else if ((v17 - 1) >= 3)
    {
      v18 = v16;
      sub_1D725FC3C();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }
}

void sub_1D6C14958()
{
  sub_1D6C149EC();

  JUMPOUT(0x1DA6F6FC0);
}

unint64_t sub_1D6C14998()
{
  result = qword_1EC893930;
  if (!qword_1EC893930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893930);
  }

  return result;
}

unint64_t sub_1D6C149EC()
{
  result = qword_1EC893938;
  if (!qword_1EC893938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893938);
  }

  return result;
}

void sub_1D6C14A40()
{
  if (!qword_1EDF29E98)
  {
    sub_1D61CAB60();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF29E98);
    }
  }
}

uint64_t sub_1D6C14A98(uint64_t a1)
{
  sub_1D6C14A40();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6C14AF4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B483C4(255, a3);
    v4 = sub_1D72644CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6C14B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6C14BB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  do
  {
    v7 = *v2++;
    v6 = v7;
    if (v7 < 0)
    {
      v3 = v6 & 0x7FFFFFFFFFFFFFFFLL;
      v5 = *(v3 + 16);
      v4 = *(v3 + 24);
    }

    else
    {
      swift_beginAccess();

      v5 = sub_1D6C14BB8(v8);
      v4 = v9;
    }

    MEMORY[0x1DA6F9910](v5, v4);

    --v1;
  }

  while (v1);
  return 0;
}

uint64_t sub_1D6C14CA4()
{
  v1 = *v0;
  if ((v1 & 0x8000000000000000) == 0)
  {
    return sub_1D6867284();
  }

  v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  return v3;
}

uint64_t sub_1D6C14CE4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0 && sub_1D671DCD4(*(a1 + 16), *(a2 + 16)))
    {
      swift_beginAccess();
      v4 = *(a1 + 24);
      swift_beginAccess();
      v5 = *(a2 + 24);

      v6 = sub_1D6338B08(v4, v5);

      if (v6)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  if (*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    return 1;
  }

  return sub_1D72646CC();
}

uint64_t sub_1D6C14DEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D614F57C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v15;
  v24[2] = *(v2 + 32);
  v25 = *(v2 + 48);
  v16 = *(v2 + 56);
  result = sub_1D68A62E4(a1);
  if (!v3)
  {
    v19 = v18;
    v26 = result;
    if ((v16 & 0xF000000000000007) == 0x7000000000000007)
    {
      v20 = type metadata accessor for FormatPostPurchaseData();
      (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
    }

    else
    {
      v21 = (v16 >> 57) & 0x78 | v16 & 7;
      if (v21 == 95)
      {
        (*(v7 + 56))(v14, 2, 2, v6);
      }

      else if (v21 == 127)
      {
        (*(v7 + 56))(v14, 1, 2, v6);
      }

      else
      {
        sub_1D614F658(v16);
        sub_1D6D4FCF8(a1, v16, v10);
        sub_1D614F680(v16);
        (*(v7 + 32))(v14, v10, v6);
        (*(v7 + 56))(v14, 0, 2, v6);
      }

      v22 = type metadata accessor for FormatPostPurchaseData();
      (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
    }

    v23 = type metadata accessor for FormatPurchaseLandingPageData();
    result = sub_1D6BC86F8(v14, a2 + *(v23 + 20));
    *a2 = v26;
    a2[1] = v19;
  }

  return result;
}

uint64_t FormatPurchaseLandingPage.articleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  return sub_1D5E1DA6C(v2, v3, v4, v5, v6, v7, v8);
}

unint64_t FormatPurchaseLandingPage.postPurchase.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return sub_1D614F63C(v2);
}

BOOL _s8NewsFeed25FormatPurchaseLandingPageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  v15 = *(a1 + 48);
  v16 = *(a2 + 48);
  v26 = *a1;
  v27 = v2;
  v28 = v3;
  v29 = v4;
  v30 = v5;
  v31 = v6;
  v32 = v15;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v16;
  sub_1D5E1DA6C(v26, v2, v3, v4, v5, v6, v15);
  sub_1D5E1DA6C(v8, v9, v10, v11, v12, v13, v16);
  LOBYTE(v8) = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v26, &v19);
  sub_1D5E1DE98(v19, v20, v21, v22, v23, v24, v25);
  sub_1D5E1DE98(v26, v27, v28, v29, v30, v31, v32);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((v7 & 0xF000000000000007) == 0x7000000000000007)
  {
    sub_1D614F63C(v7);
    sub_1D614F63C(v14);
    if ((v14 & 0xF000000000000007) == 0x7000000000000007)
    {
      sub_1D614F680(v7);
      return 1;
    }

    goto LABEL_7;
  }

  v26 = v7;
  if ((v14 & 0xF000000000000007) == 0x7000000000000007)
  {
    sub_1D614F63C(v7);
    sub_1D614F63C(v14);
    sub_1D614F63C(v7);
    sub_1D614F69C(v7);
LABEL_7:
    sub_1D614F680(v7);
    sub_1D614F680(v14);
    return 0;
  }

  v19 = v14;
  sub_1D614F63C(v7);
  sub_1D614F63C(v14);
  sub_1D614F63C(v7);
  v18 = _s8NewsFeed18FormatPostPurchaseO2eeoiySbAC_ACtFZ_0(&v26, &v19);
  sub_1D614F69C(v19);
  sub_1D614F69C(v26);
  sub_1D614F680(v7);
  return v18;
}

unint64_t sub_1D6C152CC(uint64_t a1)
{
  result = sub_1D6C152F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C152F4()
{
  result = qword_1EC893950;
  if (!qword_1EC893950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893950);
  }

  return result;
}

unint64_t sub_1D6C15348(void *a1)
{
  a1[1] = sub_1D6667854();
  a1[2] = sub_1D6703ECC();
  result = sub_1D6C15380();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C15380()
{
  result = qword_1EC893958;
  if (!qword_1EC893958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893958);
  }

  return result;
}

uint64_t sub_1D6C153D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 64))
  {
    return (*a1 + 122);
  }

  v3 = *(a1 + 56);
  v4 = (v3 >> 57) & 0x18 | v3 & 7;
  v5 = ((v3 >> 57) >> 5) | (4 * v4);
  if (-v5 < -125 || v5 == 125)
  {
    v6 = -125;
  }

  else
  {
    v6 = -v5;
  }

  v7 = v6 + 124;
  if (!v4)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1D6C15440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = (((125 - a2) >> 2) | (32 * (125 - a2)) | ((((125 - a2) >> 2) | (32 * (125 - a2))) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D6C154B8()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[22];

  (*(v4 + 8))(v2, v3);
  sub_1D5C40AE0(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D6C15604(uint64_t a1)
{
  sub_1D5C3E7FC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedSponsorshipAdService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  return v0;
}

uint64_t FeedSponsorshipAdService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);

  return swift_deallocClassInstance();
}

unint64_t sub_1D6C15744()
{
  result = qword_1EC893968;
  if (!qword_1EC893968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893968);
  }

  return result;
}

uint64_t FormatColorColorExpression.bind(binder:context:)(uint64_t a1, uint64_t a2)
{

  FormatColor.bind(binder:context:)(a1, a2);

  if (!v2)
  {
    return FormatColorExpression.bindChildren(binder:context:)(a1, a2);
  }

  return result;
}

uint64_t sub_1D6C15888(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  v7[7] = *v2;
  return sub_1D62A7684(a1, v7);
}

uint64_t _s8NewsFeed011FormatColorD10ExpressionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatColor.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatColorExpression.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_1D6C1599C(uint64_t a1)
{
  result = sub_1D6C159C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C159C4()
{
  result = qword_1EC893970;
  if (!qword_1EC893970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893970);
  }

  return result;
}

unint64_t sub_1D6C15A18(void *a1)
{
  a1[1] = sub_1D667F790();
  a1[2] = sub_1D6700080();
  result = sub_1D6C15A50();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C15A50()
{
  result = qword_1EC893978;
  if (!qword_1EC893978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893978);
  }

  return result;
}

uint64_t sub_1D6C15AA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 16))
  {
    return (*a1 + 124);
  }

  v3 = (((*(a1 + 8) >> 57) >> 4) | (8 * ((*(a1 + 8) >> 57) & 8 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D6C15B00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t FormatStateMachineDefinition.input.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1D618ECBC(v2, v3, v4, v5, v6);
}

uint64_t sub_1D6C15B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = *v5;
  v8 = v5[2];
  v7 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  v11 = *(v5 + 48);
  v29 = v5[1];
  sub_1D5B49714(0, &unk_1EDF1B078);
  sub_1D6C184CC();
  sub_1D6C18534();
  v12 = sub_1D72623BC();
  v30 = v11;
  if (v11)
  {

    v26 = v9;
    if (v9)
    {
      v13 = qword_1EDF16528;

      if (v13 != -1)
      {
        swift_once();
      }

      sub_1D69EEC60(a2, a3);
      if (v14)
      {
        v15 = v9;
        v16 = v10;
        sub_1D5E32940(v8, v7, v15, v10, 1);
      }

      else
      {
        v16 = v10;
      }

      sub_1D69D10F8();
      swift_allocObject();
      v20 = 0;
      v19 = 0;
      v18 = sub_1D725AB4C() | 0x8000000000000000;
    }

    else
    {
      v16 = v10;
      sub_1D69D10F8();
      swift_allocObject();

      v18 = sub_1D725AB4C() | 0x8000000000000000;
      v19 = a5;

      v20 = a4;
    }
  }

  else
  {
    v17 = v12;

    v18 = sub_1D6AC91DC(a1, v8, v7, v9, v10, v17);

    if (v6)
    {
      return v17;
    }

    v26 = v9;
    v16 = v10;
    v20 = 0;
    v19 = 0;
  }

  type metadata accessor for FormatStateMachineData();
  v17 = swift_allocObject();
  *(v17 + 16) = v28;
  *(v17 + 24) = v29;
  *(v17 + 32) = v8;
  *(v17 + 40) = v7;
  *(v17 + 48) = v26;
  *(v17 + 56) = v16;
  *(v17 + 64) = v30;
  *(v17 + 72) = v18;
  *(v17 + 80) = v20;
  *(v17 + 88) = v19;

  sub_1D618ECBC(v8, v7, v26, v16, v30);
  return v17;
}

uint64_t FormatStateMachineDefinition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6C18020(0, &qword_1EDF19BD0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v27 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C17EA4();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5B49714(0, &qword_1EDF43BA0);
  v45 = 0;
  sub_1D5B99874(&qword_1EDF3C830);
  sub_1D726431C();
  v11 = v37;
  sub_1D5B49714(0, &unk_1EDF1B078);
  v45 = 1;
  sub_1D6C18110(&qword_1EDF1B068, sub_1D6C17EF8);
  sub_1D726431C();
  v35 = v37;
  v45 = 2;
  sub_1D6C17F4C();
  sub_1D726431C();
  v33 = v38;
  v34 = v37;
  v12 = v11;
  v13 = v40;
  v31 = v12;
  v32 = v39;
  v14 = v41;
  v44 = v41;
  v37 = v12;
  v38 = v35;
  v39 = v34;
  v40 = v33;
  v41 = v32;
  v42 = v13;
  v43 = v44;

  v36 = v13;
  v15 = sub_1D618ECBC(v34, v33, v32, v13, v14);
  sub_1D6C162B0(v15, v16);
  v19 = v39;
  v18 = v40;
  v29 = v42;
  v30 = v41;
  LODWORD(v28) = v43;

  sub_1D5E32940(v19, v18, v30, v29, v28);
  (*(v7 + 8))(v10, v6);
  v20 = v44;
  v21 = v32;
  v23 = v34;
  v22 = v35;
  *a2 = v31;
  *(a2 + 8) = v22;
  v24 = v33;
  *(a2 + 16) = v23;
  *(a2 + 24) = v24;
  v25 = v36;
  *(a2 + 32) = v21;
  *(a2 + 40) = v25;
  *(a2 + 48) = v20;
  v26 = v20;

  sub_1D618ECBC(v23, v24, v21, v25, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_1D5E32940(v23, v24, v21, v25, v26);
}

uint64_t sub_1D6C162B0(uint64_t result, uint64_t a2)
{
  v4 = *v2;
  if (!*(*v2 + 16))
  {
    sub_1D5E2D970();
    swift_allocError();
    *v28 = 2;
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = 0x8000000000000000;
    return swift_willThrow();
  }

  v5 = v3;
  v63 = *(*v2 + 16);
  v73 = v4;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 40);
  v65 = *(v2 + 32);
  v66 = v9;
  v64 = *(v2 + 48);
  v75 = MEMORY[0x1E69E7CD0];
  v10 = *(v6 + 16);
  v72 = v8;
  v69 = v10;
  v70 = v7;
  if (v10)
  {
    v11 = 0;
    v71 = v6 + 32;
    v67 = v6;
    while (v11 < *(v6 + 16))
    {
      v12 = (v71 + 40 * v11);
      v13 = *v12;
      v14 = v12[1];
      v16 = v12[2];
      v15 = v12[3];
      v17 = v12[4];
      v74[0] = v15;
      v74[1] = v17;
      MEMORY[0x1EEE9AC00](result, a2);
      v62[2] = v74;

      v18 = v73;
      if ((sub_1D5BD0418(sub_1D5BD0538, v62, v73) & 1) == 0)
      {

        sub_1D5E2D970();
        swift_allocError();
        *v58 = v15;
        *(v58 + 8) = v17;
        *(v58 + 16) = v18;
        *(v58 + 24) = xmmword_1D733BDF0;
        swift_willThrow();
      }

      v19 = sub_1D6C1798C(v18, v16);

      v20 = sub_1D5BFC390(v19, v16);

      v21 = v75;
      if ((v20 & 1) == 0)
      {

        sub_1D5E2D970();
        swift_allocError();
        v59 = v73;
        *v60 = v16;
        v60[1] = v59;
        v60[2] = 0;
        v60[3] = 0;
        v60[4] = 0x5000000000000000;
LABEL_51:
        swift_willThrow();
      }

      if (*(v75 + 16))
      {
        v68 = v5;
        sub_1D7264A0C();

        sub_1D72621EC();
        v22 = sub_1D7264A5C();
        v23 = -1 << *(v21 + 32);
        v24 = v22 & ~v23;
        if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (1)
          {
            v26 = (*(v21 + 48) + 16 * v24);
            v27 = *v26 == v13 && v26[1] == v14;
            if (v27 || (sub_1D72646CC() & 1) != 0)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          sub_1D5E2D970();
          swift_allocError();
          *v29 = v13;
          v29[1] = v14;
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = 0x5000000000000004;
          swift_willThrow();
        }

LABEL_4:

        v5 = v68;
      }

      ++v11;

      sub_1D5B860D0(v74, v13, v14);

      v7 = v70;
      v8 = v72;
      v6 = v67;
      if (v11 == v69)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_56;
  }

LABEL_21:
  if (v64)
  {
    v30 = (v73 + 40);
    v31 = -v63;
    v32 = -1;
    while (1)
    {
      if (v31 + v32 == -1)
      {
        sub_1D618ECBC(v7, v8, v65, v66, 1);

        sub_1D5E2D970();
        swift_allocError();
        *v57 = v7;
        *(v57 + 8) = v8;
        *(v57 + 16) = v73;
        *(v57 + 24) = xmmword_1D733BE10;
        goto LABEL_51;
      }

      if (++v32 >= *(v73 + 16))
      {
        break;
      }

      if (*(v30 - 1) != v7 || v8 != *v30)
      {
        v30 += 2;
        result = sub_1D72646CC();
        if ((result & 1) == 0)
        {
          continue;
        }
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return result;
  }

  v34 = *(v8 + 16);
  sub_1D618ECBC(v7, v8, v65, v66, 0);
  v35 = v75;

  v69 = v34;
  if (v34)
  {
    v36 = 0;
    v71 = v8 + 32;
    v37 = v35 + 56;
    while (1)
    {
      v68 = v5;
      if (v36 >= *(v8 + 16))
      {
        goto LABEL_57;
      }

      v38 = v71 + 40 * v36;
      v40 = *v38;
      v39 = *(v38 + 8);
      v41 = *(v38 + 16);
      v43 = *(v38 + 24);
      v42 = *(v38 + 32);
      v44 = *(v35 + 16);
      v73 = v39;
      if (!v44)
      {
        break;
      }

      sub_1D7264A0C();
      v45 = v40;
      sub_1D5D03180(v40, v39, v41);
      swift_bridgeObjectRetain_n();
      sub_1D72621EC();
      v46 = sub_1D7264A5C();
      v47 = -1 << *(v35 + 32);
      v48 = v46 & ~v47;
      if (((*(v37 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
      {
LABEL_44:

        v52 = v72;

        v40 = v45;
LABEL_45:
        sub_1D5E2D970();
        swift_allocError();
        *v53 = v43;
        *(v53 + 8) = v42;
        *(v53 + 16) = v35;
        *(v53 + 24) = xmmword_1D733BE00;
        swift_willThrow();

        sub_1D5E32940(v70, v52, v65, v66, 0);
        sub_1D5D07BA8(v40, v73, v41);
      }

      ++v36;
      v49 = ~v47;
      while (1)
      {
        v50 = (*(v35 + 48) + 16 * v48);
        v51 = *v50 == v43 && v50[1] == v42;
        if (v51 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v48 = (v48 + 1) & v49;
        if (((*(v37 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      sub_1D5D07BA8(v45, v73, v41);

      v5 = v68;
      v8 = v72;
      if (v36 == v69)
      {
        goto LABEL_46;
      }
    }

    sub_1D5D03180(v40, v39, v41);

    v52 = v72;

    goto LABEL_45;
  }

LABEL_46:

  v54 = v66;

  v55 = v65;
  v56 = sub_1D5BE240C(v65, v54, v35);

  if (v56)
  {
  }

  else
  {
    sub_1D5E2D970();
    swift_allocError();
    *v61 = v55;
    *(v61 + 8) = v54;
    *(v61 + 16) = v35;
    *(v61 + 24) = xmmword_1D733BE00;
    swift_willThrow();
  }

  return sub_1D5E32940(v70, v8, v55, v54, 0);
}

uint64_t FormatStateMachineDefinition.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v85 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v93 = &v81 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v81 - v11;
  sub_1D6C17FA0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v86 = v1[1];
  v19 = *(v1 + 1);
  v83 = *(v1 + 2);
  v84 = v19;
  v102 = *(v1 + 48);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = sub_1D6C17EA4();
  sub_1D5D2EE70(&type metadata for FormatStateMachineDefinition, &type metadata for FormatStateMachineDefinition.CodingKeys, v23, v20, &type metadata for FormatStateMachineDefinition, &type metadata for FormatStateMachineDefinition.CodingKeys, &type metadata for FormatVersions.JazzkonG, v21, v17, v22, &off_1F51F6BF8);
  if (qword_1EDF31EA8 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD18);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v90 = v25;
  v91 = v24;
  v88 = v26 + 16;
  v89 = v27;
  (v27)(v12);
  v87 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v99 = v18;
  v103 = 0;
  v28 = &v17[*(v14 + 44)];
  v29 = *v28;
  v30 = *(v28 + 1);
  v31 = swift_allocObject();
  v97 = &v81;
  *(v31 + 16) = 0;
  *(v31 + 24) = v29;
  *(v31 + 32) = v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  *(&v81 - 4) = sub_1D5B4AA6C;
  *(&v81 - 3) = 0;
  v79 = sub_1D6C185C0;
  v80 = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v92 = v29;
  *(v34 + 24) = v29;
  *(v34 + 32) = v30;
  sub_1D6C18020(0, &qword_1EDF025A0, MEMORY[0x1E69E6F58]);
  v36 = v35;
  v37 = sub_1D6C18084();
  swift_retain_n();
  v94 = v37;
  v95 = v36;
  v38 = sub_1D72647CC();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = 0;
  v40 = *(v14 + 36);
  v41 = v12;
  v42 = &v17[v40];
  v96 = v17;
  v43 = __swift_project_boxed_opaque_existential_1(&v17[v40], *&v17[v40 + 24]);
  MEMORY[0x1EEE9AC00](v43, v44);
  MEMORY[0x1EEE9AC00](v45, v46);
  *(&v81 - 4) = sub_1D60565EC;
  *(&v81 - 3) = (&v81 - 6);
  v79 = sub_1D6C180F8;
  v80 = v34;
  v47 = v98;
  sub_1D5D2BC70(v41, sub_1D60566B0, v48, sub_1D60565EC, (&v81 - 6));
  if (v47)
  {
    sub_1D5D2D108(v41, type metadata accessor for FormatVersionRequirement);

    v49 = v96;
  }

  else
  {
    v82 = v42;
    v98 = v30;

    sub_1D5B49714(0, &qword_1EDF43BA0);
    sub_1D5B99874(&qword_1EDF04A90);
    v49 = v96;
    sub_1D72647EC();
    sub_1D5D2D108(v41, type metadata accessor for FormatVersionRequirement);

    v51 = v93;
    v89(v93, v90, v91);
    swift_storeEnumTagMultiPayload();
    *&v99 = v86;
    v103 = 1;
    v52 = swift_allocObject();
    v97 = &v81;
    *(v52 + 16) = 1;
    v53 = v92;
    v54 = v98;
    *(v52 + 24) = v92;
    *(v52 + 32) = v54;
    MEMORY[0x1EEE9AC00](v52, v55);
    *(&v81 - 4) = sub_1D5B4AA6C;
    *(&v81 - 3) = 0;
    v79 = sub_1D6C185C0;
    v80 = v56;
    v57 = swift_allocObject();
    *(v57 + 16) = 1;
    *(v57 + 24) = v53;
    *(v57 + 32) = v54;
    swift_retain_n();
    v58 = sub_1D72647CC();
    v59 = swift_allocObject();
    *(v59 + 16) = v58;
    *(v59 + 24) = 1;
    v60 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
    MEMORY[0x1EEE9AC00](v60, v61);
    MEMORY[0x1EEE9AC00](v62, v63);
    *(&v81 - 4) = sub_1D615B4A4;
    *(&v81 - 3) = (&v81 - 6);
    sub_1D5D2BC70(v51, sub_1D615B49C, v64, sub_1D615B4A4, (&v81 - 6));

    sub_1D5B49714(0, &unk_1EDF1B078);
    sub_1D6C18110(&qword_1EDF04D68, sub_1D6C1818C);
    sub_1D72647EC();
    sub_1D5D2D108(v93, type metadata accessor for FormatVersionRequirement);

    v65 = v85;
    v89(v85, v90, v91);
    swift_storeEnumTagMultiPayload();
    v99 = v84;
    v100 = v83;
    v101 = v102;
    v103 = 2;
    v66 = swift_allocObject();
    v97 = &v81;
    *(v66 + 16) = 2;
    v67 = v92;
    v68 = v98;
    *(v66 + 24) = v92;
    *(v66 + 32) = v68;
    MEMORY[0x1EEE9AC00](v66, v69);
    *(&v81 - 4) = sub_1D5B4AA6C;
    *(&v81 - 3) = 0;
    v79 = sub_1D6C185C0;
    v80 = v70;
    v71 = swift_allocObject();
    *(v71 + 16) = 2;
    *(v71 + 24) = v67;
    *(v71 + 32) = v68;
    swift_retain_n();
    v72 = sub_1D72647CC();
    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = 2;
    v74 = __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
    MEMORY[0x1EEE9AC00](v74, v75);
    MEMORY[0x1EEE9AC00](v76, v77);
    *(&v81 - 4) = sub_1D615B4A4;
    *(&v81 - 3) = (&v81 - 6);
    v79 = sub_1D6C185C0;
    v80 = v71;
    sub_1D5D2BC70(v65, sub_1D615B49C, v78, sub_1D615B4A4, (&v81 - 6));

    sub_1D6C181E0();
    sub_1D72647EC();
    sub_1D5D2D108(v65, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2D108(v49, sub_1D6C17FA0);
}

uint64_t sub_1D6C17548(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73746E657665;
  if (v2 != 1)
  {
    v5 = 0x7475706E69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x736574617473;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x73746E657665;
  if (*a2 != 1)
  {
    v8 = 0x7475706E69;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736574617473;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6C17634()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C176CC()
{
  sub_1D72621EC();
}

uint64_t sub_1D6C17750()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C177E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C18480();
  *a1 = result;
  return result;
}

void sub_1D6C17814(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x73746E657665;
  if (v2 != 1)
  {
    v5 = 0x7475706E69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736574617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D6C17868()
{
  v1 = 0x73746E657665;
  if (*v0 != 1)
  {
    v1 = 0x7475706E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736574617473;
  }
}

uint64_t sub_1D6C178B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C18480();
  *a1 = result;
  return result;
}

uint64_t sub_1D6C178E0(uint64_t a1)
{
  v2 = sub_1D6C17EA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C1791C(uint64_t a1)
{
  v2 = sub_1D6C17EA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D6C1798C(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x1E69E9840];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v13, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = sub_1D6C17B2C(v10, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_1D6C18588(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  return v11;
}

uint64_t sub_1D6C17B2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_1D7264A0C();

          sub_1D72621EC();
          v13 = sub_1D7264A5C();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_1D72646CC() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_1D6EC09F8(v25, a2, v24, a4);
}

uint64_t sub_1D6C17D0C(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_1D5D290FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = &type metadata for FormatStateMachineDefinition.CodingKeys;
  *(inited + 64) = sub_1D6C17EA4();
  *(inited + 32) = v3;

  sub_1D5D291B8(inited);
  return a1;
}

uint64_t _s8NewsFeed28FormatStateMachineDefinitionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (sub_1D5BF1C0C(*a1, *a2) & 1) != 0 && (sub_1D635AA9C(v2, v6))
  {
    v21 = v3;
    v22 = v4;
    v23 = v5;
    v24 = v15;
    v25 = v14;
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    sub_1D618ECBC(v3, v4, v5, v15, v14);
    sub_1D618ECBC(v7, v8, v9, v10, v11);
    v12 = _s8NewsFeed23FormatStateMachineInputO2eeoiySbAC_ACtFZ_0(&v21, &v16);
    sub_1D5E32940(v16, v17, v18, v19, v20);
    sub_1D5E32940(v21, v22, v23, v24, v25);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_1D6C17EA4()
{
  result = qword_1EDF217C8;
  if (!qword_1EDF217C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217C8);
  }

  return result;
}

unint64_t sub_1D6C17EF8()
{
  result = qword_1EDF27020;
  if (!qword_1EDF27020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27020);
  }

  return result;
}

unint64_t sub_1D6C17F4C()
{
  result = qword_1EDF27008;
  if (!qword_1EDF27008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27008);
  }

  return result;
}

void sub_1D6C17FA0()
{
  if (!qword_1EDF087A0)
  {
    sub_1D6C18020(255, &qword_1EDF025A0, MEMORY[0x1E69E6F58]);
    sub_1D6C18084();
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087A0);
    }
  }
}

void sub_1D6C18020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6C17EA4();
    v7 = a3(a1, &type metadata for FormatStateMachineDefinition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6C18084()
{
  result = qword_1EDF025A8;
  if (!qword_1EDF025A8)
  {
    sub_1D6C18020(255, &qword_1EDF025A0, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF025A8);
  }

  return result;
}

uint64_t sub_1D6C18110(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &unk_1EDF1B078);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C1818C()
{
  result = qword_1EDF0D338;
  if (!qword_1EDF0D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D338);
  }

  return result;
}

unint64_t sub_1D6C181E0()
{
  result = qword_1EDF0D328;
  if (!qword_1EDF0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D328);
  }

  return result;
}

unint64_t sub_1D6C18234(void *a1)
{
  a1[1] = sub_1D66C91DC();
  a1[2] = sub_1D66F61C4();
  result = sub_1D6C1826C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C1826C()
{
  result = qword_1EC893980;
  if (!qword_1EC893980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893980);
  }

  return result;
}

uint64_t sub_1D6C182C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1D6C18308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6C1837C()
{
  result = qword_1EC893988;
  if (!qword_1EC893988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893988);
  }

  return result;
}

unint64_t sub_1D6C183D4()
{
  result = qword_1EDF217B8;
  if (!qword_1EDF217B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217B8);
  }

  return result;
}

unint64_t sub_1D6C1842C()
{
  result = qword_1EDF217C0;
  if (!qword_1EDF217C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF217C0);
  }

  return result;
}

uint64_t sub_1D6C18480()
{
  v0 = sub_1D72641CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D6C184CC()
{
  result = qword_1EDF1B070;
  if (!qword_1EDF1B070)
  {
    sub_1D5B49714(255, &unk_1EDF1B078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B070);
  }

  return result;
}

unint64_t sub_1D6C18534()
{
  result = qword_1EDF27028;
  if (!qword_1EDF27028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27028);
  }

  return result;
}

uint64_t sub_1D6C18588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D6C17B2C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D6C185D4(void *a1)
{
  v3 = v1;
  sub_1D6C1B170(0, &qword_1EC893A30, sub_1D6C1B11C, &type metadata for A12_V19.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1B11C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6C1AA88(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6C1881C(uint64_t a1)
{
  v2 = sub_1D6C1B11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C18858(uint64_t a1)
{
  v2 = sub_1D6C1B11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6C18894@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6C1AE7C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6C188F4()
{
  sub_1D6C1ABC0();

  return sub_1D725A24C();
}

uint64_t sub_1D6C18970@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6C1B170(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6C18A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v86 = a2;
  v75 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v95 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v89 = &v75 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for GroupLayoutContext();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v18);
  v84 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v75 - v22;
  v79 = &v75 - v22;
  v88 = type metadata accessor for GroupLayoutBindingContext();
  v80 = *(v88 - 1);
  MEMORY[0x1EEE9AC00](v88, v24);
  v26 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v85 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v81 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v86, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v78 = sub_1D725893C();
  v77 = v29;
  (*(v14 + 8))(v17, v13);
  v93 = &type metadata for A12_V19;
  v30 = sub_1D5ECE874();
  v94 = v30;
  LOBYTE(v91) = v27;
  *(&v91 + 1) = v28;
  v92 = v5;
  type metadata accessor for GroupLayoutKey();
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v90[0] = sub_1D7264C5C();
  v90[1] = v32;
  v90[9] = 95;
  v90[10] = 0xE100000000000000;
  v90[7] = 45;
  v90[8] = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;
  v36 = v31;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v37 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v38 = v77;
  *v37 = v78;
  v37[1] = v38;
  sub_1D5B68374(&v91, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v40 = v26;
  v41 = v84;
  sub_1D5BDA904(v40, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v80 + 56))(v31 + v39, 0, 1, v88);
  v42 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v79, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v82 + 56))(v31 + v42, 0, 1, v83);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v93 = &type metadata for A12_V19;
  v94 = v30;
  LOBYTE(v91) = v27;
  *(&v91 + 1) = v28;
  v92 = v5;
  sub_1D5BE3ED8(v86, v41, v81);
  sub_1D5BD39E8(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v44 = MEMORY[0x1E69E7CC0];
  v86 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v45 = (inited + 16);
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v46 = sub_1D5C0F8FC(0, 1, 1, v44);
  v48 = v46[2];
  v47 = v46[3];
  v49 = v48 + 1;
  if (v48 >= v47 >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v46[2] = v49;
    v50 = &v46[2 * v48];
    v50[4] = sub_1D63106DC;
    v50[5] = 0;
    *v45 = v46;
    swift_endAccess();
    if (!*(*&v85[v88[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v51 & 1) == 0) || (v52 = , v45 = sub_1D5C14D80(v52), , !v45))
    {
      v59 = v76;
      if (!qword_1F5113D30 || !qword_1F5113D38)
      {

        v64 = MEMORY[0x1E69E7CC0];
        goto LABEL_28;
      }

      v90[0] = &unk_1F5113D10;
      v4 = v76;
      sub_1D5E239F4(v90);
      if (v59)
      {
        goto LABEL_37;
      }

      v60 = v90[0];
      if (*(v90[0] + 2))
      {
LABEL_18:
        v61 = *(v60 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v62, "FeedHeadline");
        v62[13] = 0;
        *(v62 + 7) = -5120;
        *(v62 + 2) = 0;
        *(v62 + 3) = 0;
        *(v62 + 4) = 0;
        *(v62 + 5) = v61;
        *(v62 + 6) = 0;
        *(v62 + 7) = 0;
        v62[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE7BCC(v41, type metadata accessor for GroupLayoutContext);
        return __swift_destroy_boxed_opaque_existential_1(&v91);
      }

      __break(1u);
      goto LABEL_35;
    }

    v83 = v36;
    v41 = v45[2];
    if (!v41)
    {
      break;
    }

    v36 = 0;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = v87;
    while (1)
    {
      v47 = v45[2];
      if (v36 >= v47)
      {
        break;
      }

      v53 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v54 = *(v95 + 72);
      v55 = v89;
      sub_1D5BE3ED8(v45 + v53 + v54 * v36, v89, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v55, v49, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90[0] = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v48 + 16) + 1, 1);
        v49 = v87;
        v48 = v90[0];
      }

      v58 = *(v48 + 16);
      v57 = *(v48 + 24);
      v46 = (v58 + 1);
      if (v58 >= v57 >> 1)
      {
        sub_1D5C0F91C(v57 > 1, v58 + 1, 1);
        v49 = v87;
        v48 = v90[0];
      }

      ++v36;
      *(v48 + 16) = v46;
      sub_1D5BDA904(v49, v48 + v53 + v58 * v54, type metadata accessor for FeedHeadline);
      if (v41 == v36)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_33:
    v46 = sub_1D5C0F8FC((v47 > 1), v49, 1, v46);
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v65 = v85;
  if ((*v85 & 1) == 0)
  {

    v66 = sub_1D62F071C(v48);

    v48 = v66;
  }

  v67 = *&v65[v88[18]];
  v68 = *&v65[v88[19]];
  if (__OFSUB__(v67, v68))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v69 = sub_1D5C0FAD4(v48, v67 - v68);
  v64 = sub_1D5C11E10(&unk_1F5113D10, v69, v45);

  if (v64)
  {

    goto LABEL_27;
  }

  v64 = sub_1D5C11E10(&unk_1F5113D10, v48, v45);

  if (!v64)
  {
    v90[0] = &unk_1F5113D10;
    v4 = v76;
    sub_1D5E239F4(v90);
    if (v4)
    {
LABEL_37:

      __break(1u);
      return result;
    }

    v60 = v90[0];
    v41 = v84;
    if (*(v90[0] + 2))
    {
      goto LABEL_18;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_27:
  strcpy(v90, "FeedHeadline");
  BYTE5(v90[1]) = 0;
  HIWORD(v90[1]) = -5120;
  v90[2] = 0;
  v90[3] = 0;

  v71 = sub_1D5C107C4(v70);

  sub_1D5BDACA8(v90, v71);
  swift_setDeallocating();

  v41 = v84;
  v36 = v83;
LABEL_28:
  v72 = type metadata accessor for A12_V19.Bound();
  v73 = v75;
  v75[3] = v72;
  v73[4] = sub_1D6C1AA88(&qword_1EC8939A0, type metadata accessor for A12_V19.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  *boxed_opaque_existential_1 = v36;
  sub_1D5B63F14(&v91, (boxed_opaque_existential_1 + 1));
  result = sub_1D5BDA904(v41, boxed_opaque_existential_1 + *(v72 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v72 + 28)) = v64;
  return result;
}

uint64_t sub_1D6C1956C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A12_V19.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v39);
  sub_1D5B68374(v11 + 56, v38);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v39, inited + 16);
  sub_1D5B63F14(v38, inited + 56);
  *(inited + 96) = v13;
  v37[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v37, v41);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(inited + 16);
  __swift_destroy_boxed_opaque_existential_1(inited + 56);
  v15 = *(v2 + *(v8 + 28));
  v36[2] = v2;
  v36[3] = v41;
  v16 = sub_1D5ECA650(sub_1D6C1AAD0, v36, v15);
  *&v39[0] = v16;
  sub_1D5BD39E8(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v18 = v17;
  sub_1D6C1AAF0(&qword_1EC880610);
  v33 = v18;
  v19 = sub_1D7262C1C();
  v20 = *MEMORY[0x1E69D7130];
  v21 = sub_1D7259D1C();
  (*(*(v21 - 8) + 104))(v7, v20, v21);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v35 = v19;
  sub_1D6C1AC68(0, &qword_1EC8939C0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v22 = v40;
  sub_1D5B49714(0, &qword_1EDF1B268);
  sub_1D6C1AAF0(&qword_1EDF1B248);
  v23 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268);
  v31 = v39[1];
  v32 = v39[0];
  *&v39[0] = v16;
  *&v38[0] = v22;
  MEMORY[0x1EEE9AC00](v23, v24);

  v25 = sub_1D725C00C();

  v26 = v34;
  *v34 = 0;
  v27 = v32;
  *(v26 + 24) = v31;
  *(v26 + 8) = v27;
  *&v39[0] = v25;
  sub_1D5B49714(0, &qword_1EDF1B4C8);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8);
  sub_1D5BDEFF8();
  v28 = sub_1D72623BC();

  v29 = MEMORY[0x1E69E7CC0];
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1D6C19A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6C19B14(uint64_t a1, uint64_t a2)
{
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 12;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6C1AC68(0, &qword_1EC8939E0, MEMORY[0x1E69D7150]);
  sub_1D6C1AC24(&qword_1EC8939E8, &qword_1EC8939E0, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D6C19D00(uint64_t a1, uint64_t a2)
{
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v24 - v8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + 32;
    v12 = sub_1D725994C();
    v30 = *MEMORY[0x1E69D6F50];
    v31 = v12;
    v29 = v12 - 8;
    v28 = *MEMORY[0x1E69D73C0];
    v26 = (v6 + 8);
    v27 = v6 + 104;
    v25 = *MEMORY[0x1E69D7460];
    v34 = a1;
    v13 = (v6 + 104);
    do
    {
      v33 = v10;
      v11 += 8;
      v35 = a1;
      v14 = v31;
      v15 = swift_allocBox();
      (*(*(v14 - 8) + 104))(v16, v30, v14);
      *v9 = v15;
      v17 = *v13;
      (*v13)(v9, v28, v5);
      v18 = MEMORY[0x1E69D6F38];
      sub_1D6C1AC68(0, &qword_1EC8939F0, MEMORY[0x1E69D6F38]);
      v32 = v19;
      sub_1D6C1AC24(&qword_1EC8939F8, &qword_1EC8939F0, v18);

      sub_1D7259A9C();
      v20 = *v26;
      (*v26)(v9, v5);
      v35 = v34;
      v21 = v17(v9, v25, v5);
      MEMORY[0x1EEE9AC00](v21, v22);
      v23 = v33;
      sub_1D72599EC();

      a1 = v34;
      v20(v9, v5);
      v10 = v23 - 1;
    }

    while (v10);
  }
}

void sub_1D6C1A01C(uint64_t a1, uint64_t a2)
{
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v21 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = v27 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    v25 = *MEMORY[0x1E69D7490];
    v23 = (v6 + 8);
    v24 = (v6 + 104);
    v22 = v5;
    do
    {
      sub_1D5BE3ED8(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v28 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v24)(v9, v25, v5);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D6C1AC68(0, &qword_1EC8939F0, MEMORY[0x1E69D6F38]);
      sub_1D6C1AC24(&qword_1EC8939F8, &qword_1EC8939F0, v20);
      sub_1D7259A2C();
      v5 = v22;
      (*v23)(v9, v22);
      sub_1D5BE7BCC(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v26;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D6C1A34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v5 = type metadata accessor for HeadlineViewLayout.Context(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v38[0], v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C1B170(0, &qword_1EC8939D8, sub_1D6C1AB6C, &type metadata for A12_V19.Layout, MEMORY[0x1E69D74B0]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (v38 - v17);
  v42 = a1;
  v38[1] = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x4060E00000000000;
  *v18 = v19;
  v20 = *MEMORY[0x1E69D73D8];
  v40 = v15;
  v41 = v14;
  (*(v15 + 104))(v18, v20, v14);
  v21 = 0;
  v22 = *(a3 + 16);
  while (v22 != v21)
  {
    sub_1D5BE3ED8(a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21++, v9, type metadata accessor for HeadlineViewLayout.Context);
    v23 = *&v9[*(v5 + 20) + 32];
    sub_1D5BE7BCC(v9, type metadata accessor for HeadlineViewLayout.Context);
    if ((v23 & 4) == 0)
    {
      v24 = 2;
      goto LABEL_6;
    }
  }

  v24 = 0;
LABEL_6:
  v25 = v38[0];
  v26 = *(v38[0] + 20);
  v27 = *MEMORY[0x1E69D7348];
  v28 = sub_1D725A34C();
  v29 = *(v28 - 8);
  (*(v29 + 104))(&v12[v26], v27, v28);
  (*(v29 + 56))(&v12[v26], 0, 1, v28);
  v30 = *MEMORY[0x1E69DDC70];
  *v12 = v24;
  *&v12[*(v25 + 24)] = 0;
  *&v12[*(v25 + 28)] = v30;
  v31 = *MEMORY[0x1E69DDCE0];
  v32 = *(MEMORY[0x1E69DDCE0] + 8);
  v33 = *(MEMORY[0x1E69DDCE0] + 16);
  v34 = *(MEMORY[0x1E69DDCE0] + 24);
  v35 = v30;
  _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v39, v12, v31, v32, v33, v34);
  sub_1D5BE7BCC(v12, type metadata accessor for HeadlineViewLayout.Options);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D6C1AC68(0, &qword_1EC8939F0, MEMORY[0x1E69D6F38]);
  sub_1D6C1AC24(&qword_1EC8939F8, &qword_1EC8939F0, v36);
  sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v40 + 8))(v18, v41);
}

uint64_t sub_1D6C1A7D0@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V19.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6C1A8E4(uint64_t a1)
{
  *(a1 + 8) = sub_1D6C1A914();
  result = sub_1D6C1A968();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6C1A914()
{
  result = qword_1EC893990;
  if (!qword_1EC893990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893990);
  }

  return result;
}

unint64_t sub_1D6C1A968()
{
  result = qword_1EC893998;
  if (!qword_1EC893998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893998);
  }

  return result;
}

uint64_t type metadata accessor for A12_V19.Bound()
{
  result = qword_1EC8939A8;
  if (!qword_1EC8939A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6C1AA30(uint64_t a1)
{
  result = sub_1D6C1AA88(&qword_1EC8939B8, type metadata accessor for A12_V19.Bound);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C1AA88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6C1AAF0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BD39E8(255, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6C1AB6C()
{
  result = qword_1EC8939C8;
  if (!qword_1EC8939C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8939C8);
  }

  return result;
}

unint64_t sub_1D6C1ABC0()
{
  result = qword_1EC8939D0;
  if (!qword_1EC8939D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8939D0);
  }

  return result;
}

uint64_t sub_1D6C1AC24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6C1AC68(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C1AC68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V19.Layout;
    v8[1] = &type metadata for A12_V19.Layout.Attributes;
    v8[2] = sub_1D6C1AB6C();
    v8[3] = sub_1D6C1ABC0();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D6C1AD20()
{
  result = qword_1EC893A00;
  if (!qword_1EC893A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A00);
  }

  return result;
}

unint64_t sub_1D6C1AD78()
{
  result = qword_1EC893A08;
  if (!qword_1EC893A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A08);
  }

  return result;
}

unint64_t sub_1D6C1ADD0()
{
  result = qword_1EC893A10;
  if (!qword_1EC893A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A10);
  }

  return result;
}

unint64_t sub_1D6C1AE28()
{
  result = qword_1EC893A18;
  if (!qword_1EC893A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A18);
  }

  return result;
}

uint64_t sub_1D6C1AE7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6C1B170(0, &qword_1EC893A20, sub_1D6C1B11C, &type metadata for A12_V19.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1B11C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6C1AA88(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6C1B11C()
{
  result = qword_1EC893A28;
  if (!qword_1EC893A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A28);
  }

  return result;
}

void sub_1D6C1B170(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6C1B1EC()
{
  result = qword_1EC893A38;
  if (!qword_1EC893A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A38);
  }

  return result;
}

unint64_t sub_1D6C1B244()
{
  result = qword_1EC893A40;
  if (!qword_1EC893A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A40);
  }

  return result;
}

unint64_t sub_1D6C1B29C()
{
  result = qword_1EC893A48;
  if (!qword_1EC893A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A48);
  }

  return result;
}

uint64_t static OfflineModelProviding.unsupportedRegion.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC87D8F0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC890E98;
  v2 = qword_1EC890EA0;
  v3 = unk_1EC890EA8;
  v4 = qword_1EC890EB0;
  v5 = unk_1EC890EB8;
  v6 = qword_1EC890EC0;
  *a1 = qword_1EC890E90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6C1B478@<X0>(void *a1@<X8>)
{
  if (qword_1EDF102F8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EDFFC5C0;
  v2 = qword_1EDFFC5C8;
  v3 = unk_1EDFFC5D0;
  v4 = qword_1EDFFC5D8;
  v5 = unk_1EDFFC5E0;
  v6 = qword_1EDFFC5E8;
  *a1 = qword_1EDFFC5B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6C1B524@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DD60 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC9BAE28;
  v2 = qword_1EC9BAE30;
  v3 = unk_1EC9BAE38;
  v4 = qword_1EC9BAE40;
  v5 = unk_1EC9BAE48;
  v6 = qword_1EC9BAE50;
  *a1 = qword_1EC9BAE20;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t FeedPuzzleScore.score.getter()
{
  if (v0[8] == 1)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t FeedPuzzleScore.rawState.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 8))
  {
    v3 = v4;
  }

  *a1 = v3;
  v5 = *MEMORY[0x1E69D7858];
  v6 = sub_1D725D38C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

BOOL static FeedPuzzleScore.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

BOOL sub_1D6C1B6EC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

uint64_t sub_1D6C1B744@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = *v1;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 8))
  {
    v3 = v4;
  }

  *a1 = v3;
  v5 = *MEMORY[0x1E69D7858];
  v6 = sub_1D725D38C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a1, v5, v6);
}

uint64_t FormatResetNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D6C1BF20(a2);
  swift_beginAccess();
  v5 = *(v2 + 48);

  sub_1D6215F90(a1, v4, v5);
}

uint64_t FormatResetNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatResetNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatResetNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t FormatResetNode.regexSelectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t FormatResetNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

void *FormatResetNode.__allocating_init(identifier:selectors:regexSelectors:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  swift_beginAccess();
  v10[2] = a1;
  v10[3] = a2;
  swift_beginAccess();
  v10[4] = a3;
  swift_beginAccess();
  v10[5] = a4;
  swift_beginAccess();
  v10[6] = a5;
  return v10;
}

void *FormatResetNode.init(identifier:selectors:regexSelectors:children:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v5[2] = a1;
  v5[3] = a2;
  swift_beginAccess();
  v5[4] = a3;
  swift_beginAccess();
  v5[5] = a4;
  swift_beginAccess();
  v5[6] = a5;
  return v5;
}

uint64_t FormatResetNode.deinit()
{

  return v0;
}

uint64_t FormatResetNode.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6C1BDC4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D66B4964(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t *sub_1D6C1BE20(uint64_t *a1)
{
  sub_1D725A7EC();
  v2 = *(*(v9 + 40) + 16);
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    v8 = *(v9 + 56);

    v4 = sub_1D6F622E0(v3);
    sub_1D5B886D0(v4);

    v5 = v8;
  }

  else
  {
    v5 = sub_1D6E46E28();
  }

  v6 = sub_1D6C1C7B0(v5);

  if (v6)
  {
    a1 = sub_1D6B0ACE8(v6, 1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1D6C1BF20(uint64_t a1)
{
  v2 = type metadata accessor for GroupLayoutContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1D725A7EC();
  v6 = *(*(v66 + 40) + 16);
  swift_beginAccess();
  if (*(*(v6 + 16) + 16))
  {
    *&v66 = *(v66 + 56);

    v8 = sub_1D6F622E0(v7);
    sub_1D5B886D0(v8);

    v9 = v66;
  }

  else
  {
    v9 = sub_1D6E46E28();
  }

  v10 = sub_1D6C1C7B0(v9);

  if (!v10)
  {
    goto LABEL_8;
  }

  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v63 = 0;
  v11 = *(a1 + 24);
  v12 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);

  sub_1D6D0A744(v12, v10);
  swift_beginAccess();
  v63 = 1;
  v13 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  v14 = *(a1 + 40);
  v52 = *(a1 + 32);

  v61 = v13;

  v15 = sub_1D6BEC5F4(MEMORY[0x1E69E7CC0], a1, &v63);
  v16 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v17 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v18 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v19 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v20 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v21 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  v59 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v60 = v16;
  v57 = v18;
  v58 = v17;
  v55 = v20;
  v56 = v19;
  v54 = v21;
  sub_1D62E312C(v16, v59, v17, v18, v19, v20, v21);
  v53 = sub_1D6BEC878(v64, a1, &v63);
  v23 = *(a1 + 96);
  v68 = *(a1 + 80);
  v69 = v23;
  v70 = *(a1 + 112);
  v71 = *(a1 + 128);
  v24 = *(a1 + 64);
  v66 = *(a1 + 48);
  v67 = v24;
  if ((v63 & 1) == 0)
  {

    sub_1D62E31A0(v60, v59, v58, v57, v56, v55, v54);

    sub_1D6C1CEB8(v64, sub_1D630BB34);
LABEL_8:

    return a1;
  }

  v51 = v22;
  sub_1D6C1CE20(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  v49 = v25;
  v50 = v15;
  v46 = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext;
  v47 = v11;
  sub_1D6C1CF18(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupLayoutContext);
  v26 = *(v3 + 80);
  v48 = v14;
  v27 = (v26 + 16) & ~v26;
  v28 = (v4 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = swift_allocObject();
  sub_1D6C1CF80(v29, v30 + v27, type metadata accessor for GroupLayoutContext);
  v31 = v61;
  *(v30 + v28) = v61;
  *(v30 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v10;

  sub_1D5CF6A5C(&v66, v62);

  v49 = sub_1D725A80C();
  v32 = *(a1 + 16);
  sub_1D6C1CF18(a1 + v46, v29, type metadata accessor for GroupLayoutContext);
  v33 = *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
  sub_1D5B68374(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v62);
  type metadata accessor for FormatNodeBinderContext();
  a1 = swift_allocObject();
  v34 = v47;
  *(a1 + 16) = v32;
  *(a1 + 24) = v34;
  v35 = v69;
  *(a1 + 80) = v68;
  *(a1 + 96) = v35;
  *(a1 + 112) = v70;
  *(a1 + 128) = v71;
  v36 = v67;
  *(a1 + 48) = v66;
  *(a1 + 64) = v36;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v31;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v10;
  sub_1D6C1CF18(v29, a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v37 = v48;
  *(a1 + 32) = v52;
  *(a1 + 40) = v37;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v50;
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v33;
  sub_1D5B68374(v62, a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  v38 = a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v39 = v59;
  *v38 = v60;
  *(v38 + 8) = v39;
  v40 = v57;
  *(v38 + 16) = v58;
  *(v38 + 24) = v40;
  v41 = v55;
  *(v38 + 32) = v56;
  *(v38 + 40) = v41;
  *(v38 + 48) = v54;
  v42 = (a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  v43 = v51;
  *v42 = v53;
  v42[1] = v43;

  __swift_destroy_boxed_opaque_existential_1(v62);
  sub_1D6C1CEB8(v29, type metadata accessor for GroupLayoutContext);
  sub_1D6C1CEB8(v64, sub_1D630BB34);
  *(a1 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v49;
  return a1;
}

uint64_t sub_1D6C1C4B4(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C1C5DC(&qword_1EC893A50, a2, type metadata accessor for FormatResetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C1C530(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C1C5DC(&qword_1EDF31300, a2, type metadata accessor for FormatResetNode);
  a1[2] = sub_1D6C1C5DC(&qword_1EDF11820, v3, type metadata accessor for FormatResetNode);
  result = sub_1D6C1C5DC(&qword_1EC893A58, v4, type metadata accessor for FormatResetNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C1C5DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6C1C624(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C1C5DC(&qword_1EC893A60, a2, type metadata accessor for FormatResetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C1C67C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_1D6C1BF20(a2);
  swift_beginAccess();
  v6 = *(v4 + 48);

  sub_1D6215F90(a1, v5, v6);
}

uint64_t sub_1D6C1C70C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 48);

  sub_1D626DB9C(a1, v4);
}

uint64_t sub_1D6C1C7B0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatRegex();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  swift_beginAccess();
  v12 = *(v1 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {
    if (v13 <= *(a1 + 16) >> 3)
    {
      v30 = a1;

      sub_1D6836478(v12);

      v14 = v30;
    }

    else
    {

      v14 = sub_1D6E14F70(v12, a1);
    }
  }

  else
  {
    swift_beginAccess();
    if (!*(*(v1 + 40) + 16))
    {
      return 0;
    }

    v14 = a1;
  }

  swift_beginAccess();
  v15 = *(v2 + 40);
  if (!*(v15 + 16))
  {
LABEL_19:

    v27 = sub_1D5BFC390(v26, a1);

    if ((v27 & 1) == 0)
    {
      return v14;
    }

    return 0;
  }

  v28 = a1;
  v16 = 1 << *(v15 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v15 + 56);
  v19 = (v16 + 63) >> 6;

  for (i = 0; v18; result = sub_1D6C1CEB8(v7, type metadata accessor for FormatRegex))
  {
    v22 = i;
LABEL_16:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D6C1CF18(*(v15 + 48) + *(v29 + 72) * (v23 | (v22 << 6)), v11, type metadata accessor for FormatRegex);
    v24 = sub_1D6C1CF80(v11, v7, type metadata accessor for FormatRegex);
    MEMORY[0x1EEE9AC00](v24, v25);
    *(&v28 - 2) = v7;
    v14 = sub_1D70E2380(sub_1D6C1CD98, (&v28 - 4), v14);
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      a1 = v28;
      goto LABEL_19;
    }

    v18 = *(v15 + 56 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6C1CAD4()
{
  sub_1D6C1CDB8(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C1CDEC(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FormatRegex();
  sub_1D6C1C5DC(&qword_1EDF175D8, 255, sub_1D6C1CDB8);
  sub_1D725C15C();
  sub_1D726236C();
  sub_1D725C17C();
  if (v0)
  {

    (*(v3 + 8))(v6, v2);
    sub_1D6C1CE84(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    (*(v3 + 8))(v6, v2);

    sub_1D6C1CE84(0);
    if ((*(*(v12 - 8) + 48))(v10, 1, v12) != 1)
    {
      v13 = 0;
      goto LABEL_5;
    }
  }

  v13 = 1;
LABEL_5:
  sub_1D6C1CEB8(v10, sub_1D6C1CDEC);
  return v13;
}

void sub_1D6C1CE20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C1CEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C1CF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C1CF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8NewsFeed12FormatResizeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_1D5E1F5F0(v4, v5);

  return v6 & 1;
}

unint64_t sub_1D6C1D0D0(uint64_t a1)
{
  result = sub_1D6C1D0F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C1D0F8()
{
  result = qword_1EC893A68;
  if (!qword_1EC893A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A68);
  }

  return result;
}

unint64_t sub_1D6C1D14C(void *a1)
{
  a1[1] = sub_1D5C6411C();
  a1[2] = sub_1D6659D24();
  result = sub_1D6C1D184();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C1D184()
{
  result = qword_1EC893A70;
  if (!qword_1EC893A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A70);
  }

  return result;
}

uint64_t sub_1D6C1D210()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656D617266;
  }
}

uint64_t sub_1D6C1D24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73ED8E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D6C1D32C(uint64_t a1)
{
  v2 = sub_1D6C1D5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C1D368(uint64_t a1)
{
  v2 = sub_1D6C1D5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GapOfflineViewLayout.Attributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D6C1EAF8(0, &qword_1EC893A78, sub_1D6C1D5A0, &type metadata for GapOfflineViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14 - v9;
  v11 = v3[2];
  v14 = v3[3];
  v15 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1D5A0();
  sub_1D7264B5C();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEA9B4(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = 1;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6C1D5A0()
{
  result = qword_1EDF2A550;
  if (!qword_1EDF2A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A550);
  }

  return result;
}

uint64_t GapOfflineViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v17 = a2;
  sub_1D6C1EAF8(0, &qword_1EDF19C18, sub_1D6C1D5A0, &type metadata for GapOfflineViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C1D5A0();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v6;
    v11 = v17;
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_1D5BEA9B4(&qword_1EDF1A740, type metadata accessor for CGRect);
    sub_1D726431C();
    v15 = v19;
    v16 = v18;
    v20 = 1;
    sub_1D726431C();
    (*(v10 + 8))(v9, v5);
    v13 = v15;
    *v11 = v16;
    v11[1] = v13;
    v14 = v19;
    v11[2] = v18;
    v11[3] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D6C1D840(uint64_t a1)
{
  v2 = sub_1D6C1E9C8();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6C1D8AC()
{
  sub_1D69DE4A4();

  return sub_1D725A24C();
}

uint64_t GapOfflineViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[1] = result;
  return result;
}

uint64_t GapOfflineViewLayout.Context.model.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10 = *(v1 + 48);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 80);
  v6 = *(v1 + 16);
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D6307094(v9, v8);
}

unint64_t sub_1D6C1DA28()
{
  result = qword_1EDF2A530;
  if (!qword_1EDF2A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A530);
  }

  return result;
}

unint64_t sub_1D6C1DA80()
{
  result = qword_1EC893A80;
  if (!qword_1EC893A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A80);
  }

  return result;
}

unint64_t sub_1D6C1DAD8()
{
  result = qword_1EDF2A518;
  if (!qword_1EDF2A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A518);
  }

  return result;
}

unint64_t sub_1D6C1DB30()
{
  result = qword_1EDF2A520;
  if (!qword_1EDF2A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A520);
  }

  return result;
}

unint64_t sub_1D6C1DB88()
{
  result = qword_1EDF2A538;
  if (!qword_1EDF2A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A538);
  }

  return result;
}

uint64_t sub_1D6C1DBDC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  result = (*(v6 + 8))(a2[5], a2[6], a2[7], a2[8], v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C1DC48(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  sub_1D6C1EAF8(0, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v32[-v16];
  sub_1D6C1EAF8(0, &qword_1EDF3BEF8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v32[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v32[-v27];
  v34 = a1;
  (*(v20 + 104))(v23, *MEMORY[0x1E69D7460], v19, v26);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  (*(v14 + 104))(v17, *MEMORY[0x1E69D7048], v13);
  sub_1D69DE450();
  sub_1D725A21C();
  (*(v14 + 8))(v17, v13);
  v29 = *(v20 + 8);
  v29(v23, v19);
  v33 = a2;
  v30 = MEMORY[0x1E69D7150];
  sub_1D6C1EB68(0, &qword_1EDF3C058, MEMORY[0x1E69D7150]);
  sub_1D6C1EA24(&qword_1EDF3C060, &qword_1EDF3C058, v30);
  sub_1D72599EC();
  return (v29)(v28, v19);
}

uint64_t sub_1D6C1DF80(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  sub_1D6C1EAF8(0, &qword_1EDF3BEF8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (&v19 - v7);
  v22 = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = 0x3FE8000000000000;
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D73C8], v4);
  sub_1D6C1EA68();
  sub_1D6C1EAF8(0, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  v15 = *MEMORY[0x1E69D7060];
  sub_1D6C1EAF8(0, &qword_1EDF3C0E8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v16 - 8) + 104))(v14 + v13, v15, v16);
  (*(v12 + 104))(v14 + v13, *MEMORY[0x1E69D7080], v11);
  v21 = v20;
  v17 = MEMORY[0x1E69D6F38];
  sub_1D6C1EB68(0, &qword_1EDF3C1B8, MEMORY[0x1E69D6F38]);
  sub_1D6C1EA24(&qword_1EDF3C1C0, &qword_1EDF3C1B8, v17);
  sub_1D7259A2C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6C1E2C8(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_1D7261B9C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6C1EAF8(0, &qword_1EDF3BEF8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v40 - v12);
  v47 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x4034000000000000;
  *v13 = v14;
  v15 = *(v10 + 104);
  v43 = *MEMORY[0x1E69D7488];
  v45 = v15;
  v46 = v10 + 104;
  v15(v13);
  v16 = MEMORY[0x1E69D6F38];
  sub_1D6C1EB68(0, &qword_1EDF3C1B8, MEMORY[0x1E69D6F38]);
  v18 = v17;
  v19 = sub_1D6C1EA24(&qword_1EDF3C1C0, &qword_1EDF3C1B8, v16);
  v42 = v18;
  sub_1D7259A9C();
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v41 = v21;
  v21(v13, v9);
  v47 = a1;
  v40[2] = swift_getKeyPath();
  v22 = *(v44 + 128);
  if (*(v22 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v7 = sub_1D726308C(), (*(v4 + 104))(v7, *MEMORY[0x1E69E8018], v3), v23 = sub_1D7261BBC(), result = (*(v4 + 8))(v7, v3), (v23))
  {
    v25 = swift_allocObject();
    v26 = *(*v22 + 136);
    v44 = v19;
    v27 = *(v22 + v26);
    *(v25 + 16) = v27;
    *v13 = v25;
    v45(v13, *MEMORY[0x1E69D73E8], v9);
    sub_1D6C1EA68();
    sub_1D6C1EAF8(0, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
    v29 = v28;
    v30 = *(v28 - 8);
    v40[1] = v20;
    v31 = v30;
    v32 = *(v30 + 80);
    v40[0] = a1;
    v33 = (v32 + 32) & ~v32;
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D7273AE0;
    v35 = *MEMORY[0x1E69D7060];
    sub_1D6C1EAF8(0, &qword_1EDF3C0E8, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D7078]);
    (*(*(v36 - 8) + 104))(v34 + v33, v35, v36);
    (*(v31 + 104))(v34 + v33, *MEMORY[0x1E69D7080], v29);
    sub_1D5BEA9B4(&qword_1EDF3C140, sub_1D5BEDFF4);
    v37 = v27;
    sub_1D7259A7C();

    v38 = v41;
    v41(v13, v9);
    v47 = v40[0];
    v39 = swift_allocObject();
    *(v39 + 16) = 0x4034000000000000;
    *v13 = v39;
    v45(v13, v43, v9);
    sub_1D7259A9C();
    return v38(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D6C1E8C4()
{
  result = qword_1EC893A88;
  if (!qword_1EC893A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A88);
  }

  return result;
}

unint64_t sub_1D6C1E91C()
{
  result = qword_1EDF2A540;
  if (!qword_1EDF2A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A540);
  }

  return result;
}

unint64_t sub_1D6C1E974()
{
  result = qword_1EDF2A548;
  if (!qword_1EDF2A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2A548);
  }

  return result;
}

unint64_t sub_1D6C1E9C8()
{
  result = qword_1EC893A90;
  if (!qword_1EC893A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893A90);
  }

  return result;
}

uint64_t sub_1D6C1EA24(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6C1EB68(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C1EA68()
{
  if (!qword_1EDF19B68)
  {
    sub_1D6C1EAF8(255, &qword_1EDF3C0C0, sub_1D69DE450, &type metadata for GapOfflineViewLayout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19B68);
    }
  }
}

void sub_1D6C1EAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1D6C1EB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for GapOfflineViewLayout;
    v8[1] = &type metadata for GapOfflineViewLayout.Attributes;
    v8[2] = sub_1D69DE450();
    v8[3] = sub_1D69DE4A4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t FormatItemNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t FormatItemNode.bind(binder:context:)(unint64_t a1, uint64_t a2)
{
  v47[4] = &protocol witness table for FormatNodeBinderContext;
  v47[3] = type metadata accessor for FormatNodeBinderContext();
  v47[0] = a2;

  sub_1D6C20938(v47, v48);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v47);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  v44 = v48[4];
  v45 = v48[5];
  v46[0] = v49[0];
  *(v46 + 9) = *(v49 + 9);
  v40 = v48[0];
  v41 = v48[1];
  v42 = v48[2];
  v43 = v48[3];
  swift_beginAccess();
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);

  v9 = sub_1D6E8DD40(v7, v8);
  v11 = v10;

  v33 = 0u;
  v32 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v27 = v44;
  v28 = v45;
  v29[0] = v46[0];
  *(v29 + 9) = *(v46 + 9);
  v23 = v40;
  v24 = v41;
  v25 = v42;
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CD0];
  v22[0] = 0;
  v26 = v43;
  v30 = v9;
  v31 = v11;
  sub_1D5F8A3DC(&v40, v18);
  sub_1D6D04DCC(a1, a2);
  v12 = sub_1D6C20C68(v22, a2);
  v19 = v27;
  v20 = v28;
  *v21 = v29[0];
  *&v21[9] = *(v29 + 9);
  v18[0] = v23;
  v18[1] = v24;
  v18[2] = v25;
  v18[3] = v26;
  if (v28)
  {
    sub_1D5F8A3DC(v18, v17);
    FormatItemNodeStyle.bind(binder:context:)(a1, v12);
  }

  else
  {
    sub_1D5F8A3DC(v18, v17);
  }

  v13 = *(&v20 + 1);

  sub_1D62160B4(a1, v12, v13);

  v14 = *&v21[8];

  sub_1D6213004(a1, v12, v14);

  v15 = *&v21[16];

  sub_1D62212CC(a1, v12, v15);

  v16 = *(&v19 + 1);

  sub_1D6215F90(a1, v12, v16);

  sub_1D66876CC(v18);
  FormatItemNode.bindChildren(binder:context:)(a1, v12);
  sub_1D6C20C14(v22);
  sub_1D66876CC(&v40);
}

uint64_t sub_1D6C1F07C(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  swift_beginAccess();
  v7 = v1[12];

  sub_1D6C4D7E4(v3, v4, 1u, v5, v6, v7, a1, v1);
}

uint64_t FormatItemNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatItemNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatItemNode.itemIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t FormatItemNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

uint64_t FormatItemNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t FormatItemNode.styles.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t FormatItemNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t FormatItemNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatItemNode.blocks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t FormatItemNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

unint64_t sub_1D6C1F6B0(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  sub_1D5EB1500(v2);
  *(v3 + 112) = v2;
  return sub_1D5EB15C4(v4);
}

unint64_t FormatItemNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatItemNode.sourceItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t FormatItemNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[16];
  v3 = v1[17];
  v4 = v1[18];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[21];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatItemNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 48));

  sub_1D5EB15C4(*(v0 + 112));

  sub_1D5EB2398(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  return v0;
}

uint64_t FormatItemNode.__deallocating_deinit()
{
  FormatItemNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C1F940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FormatOption();
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[7];
  *&v109 = a1[6];
  *(&v109 + 1) = v17;
  sub_1D5CBA110(v109, v17);
  v18 = sub_1D6B0D084(&v109, a3, a4);
  sub_1D5CBA0FC(v109, *(&v109 + 1));
  if (!v4)
  {
    v115 = v16;
    v95 = v13;
    v96 = v18;
    v92 = v12;
    v93 = 0;
    v19 = a1[11];
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v91 = a2;
    v22 = v97;
    v94 = a1;
    if (v20)
    {
      *&v99 = MEMORY[0x1E69E7CC0];

      sub_1D69979A0(0, v20, 0);
      v21 = v99;
      v23 = v20 - 1;
      for (i = 32; ; i += 64)
      {
        v25 = *(v19 + i);
        v26 = *(v19 + i + 16);
        v27 = *(v19 + i + 48);
        v111 = *(v19 + i + 32);
        v112 = v27;
        v109 = v25;
        v110 = v26;
        v28 = swift_allocObject();
        v29 = *(v19 + i + 48);
        v31 = *(v19 + i);
        v30 = *(v19 + i + 16);
        *(v28 + 48) = *(v19 + i + 32);
        *(v28 + 64) = v29;
        *(v28 + 16) = v31;
        *(v28 + 32) = v30;
        sub_1D5C8C900(&v109, v105);
        *&v99 = v21;
        v33 = v21[2];
        v32 = v21[3];
        if (v33 >= v32 >> 1)
        {
          sub_1D69979A0((v32 > 1), v33 + 1, 1);
          v21 = v99;
        }

        v21[2] = v33 + 1;
        v21[v33 + 4] = v28 | 0x9000000000000004;
        if (!v23)
        {
          break;
        }

        --v23;
      }

      v22 = v97;
      a1 = v94;
    }

    swift_beginAccess();
    v34 = *(v22 + 72);
    v35 = *(v34 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v90 = v21;
      *&v99 = MEMORY[0x1E69E7CC0];

      sub_1D69979A0(0, v35, 0);
      v36 = v99;
      v37 = v35 - 1;
      for (j = 32; ; j += 64)
      {
        v39 = v34;
        v40 = *(v34 + j);
        v41 = *(v34 + j + 16);
        v42 = *(v34 + j + 48);
        v111 = *(v34 + j + 32);
        v112 = v42;
        v109 = v40;
        v110 = v41;
        v43 = swift_allocObject();
        v44 = *(v34 + j + 48);
        v46 = *(v34 + j);
        v45 = *(v34 + j + 16);
        *(v43 + 48) = *(v34 + j + 32);
        *(v43 + 64) = v44;
        *(v43 + 16) = v46;
        *(v43 + 32) = v45;
        sub_1D5C8C900(&v109, v105);
        *&v99 = v36;
        v48 = *(v36 + 16);
        v47 = *(v36 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1D69979A0((v47 > 1), v48 + 1, 1);
          v36 = v99;
        }

        *(v36 + 16) = v48 + 1;
        *(v36 + 8 * v48 + 32) = v43 | 0x4000000000000004;
        if (!v37)
        {
          break;
        }

        --v37;
        v34 = v39;
      }

      v22 = v97;
      a1 = v94;
      v21 = v90;
    }

    *&v109 = v21;
    sub_1D6985C70(v36);
    sub_1D6B0BBC4(v109);

    v49 = a1[12];
    swift_beginAccess();

    v51 = sub_1D5D6021C(v50, v49);
    v90 = sub_1D6B0ACE8(v51, 0);

    v52 = a1[13];
    v53 = *(v52 + 16);
    v54 = MEMORY[0x1E69E7CC0];
    v55 = v115;
    if (v53)
    {
      *&v109 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v53, 0);
      v54 = v109;
      v56 = *(v98 + 80);
      v94 = v52;
      v57 = v52 + ((v56 + 32) & ~v56);
      v58 = *(v98 + 72);
      do
      {
        sub_1D6C221DC(v57, v55, type metadata accessor for FormatOption);
        v59 = swift_allocBox();
        sub_1D5D5E5AC(v55, v60, type metadata accessor for FormatOption);
        *&v109 = v54;
        v62 = *(v54 + 16);
        v61 = *(v54 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_1D5D24610((v61 > 1), v62 + 1, 1);
          v54 = v109;
        }

        *(v54 + 16) = v62 + 1;
        *(v54 + 8 * v62 + 32) = v59 | 0x9000000000000004;
        v57 += v58;
        --v53;
        v55 = v115;
      }

      while (v53);

      v22 = v97;
    }

    v63 = v98;
    swift_beginAccess();
    v64 = *(v22 + 88);
    v65 = *(v64 + 16);
    v66 = MEMORY[0x1E69E7CC0];
    if (v65)
    {
      *&v109 = MEMORY[0x1E69E7CC0];

      sub_1D5D24610(0, v65, 0);
      v66 = v109;
      v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
      v68 = v63;
      v94 = v64;
      v69 = v64 + v67;
      v98 = *(v68 + 72);
      do
      {
        sub_1D6C221DC(v69, v55, type metadata accessor for FormatOption);
        v70 = swift_allocBox();
        sub_1D5D5E5AC(v55, v71, type metadata accessor for FormatOption);
        *&v109 = v66;
        v73 = *(v66 + 16);
        v72 = *(v66 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_1D5D24610((v72 > 1), v73 + 1, 1);
          v66 = v109;
        }

        *(v66 + 16) = v73 + 1;
        *(v66 + 8 * v73 + 32) = v70 | 0x4000000000000004;
        v69 += v98;
        --v65;
        v55 = v115;
      }

      while (v65);
    }

    *&v109 = v54;
    sub_1D6985C44(v66);
    sub_1D6B0C068(v109);

    swift_beginAccess();

    v115 = sub_1D6B0C570(v74);

    v75 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 48);
    v76 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 64);
    v111 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v112 = v75;
    v113 = v76;
    v114 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 80);
    v77 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v109 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v110 = v77;
    v78 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v98 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 8);
    v79 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 24);
    v80 = *(v91 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    sub_1D6C22244(v96 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &v107, &qword_1EDF34AB8, sub_1D5EFF46C);
    v81 = v92;
    v97 = v78;
    if (v108)
    {
      sub_1D5B63F14(&v107, &v99);
      sub_1D5B68374(&v99, &v107);
      sub_1D5CF6A5C(&v109, v105);
      sub_1D6818590(&v107, v81);

      v94 = sub_1D69F6E38(v81);
      v95 = v82;
      sub_1D6C222C4(v81, type metadata accessor for FeedItem);
      __swift_destroy_boxed_opaque_existential_1(&v99);
    }

    else
    {
      sub_1D5CF6A5C(&v109, v105);
      sub_1D6C22548(&v107, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720], sub_1D6C225A8);
      v95 = v80;

      v94 = v79;
    }

    v83 = v109;
    v84 = BYTE1(v109);
    v85 = *(&v111 + 1);
    v86 = v112;
    v88 = v113;
    v87 = v114;
    sub_1D60B297C(*(&v111 + 1), v112, *(&v112 + 1), v113, *(&v113 + 1), v114);
    sub_1D5D09C48(&v109);
    LOBYTE(v99) = v83;
    BYTE1(v99) = v84;
    *(&v99 + 1) = v98;
    *&v100 = v97;
    *(&v100 + 1) = v94;
    *&v101 = v95;
    *(&v101 + 1) = v85;
    v102 = v86;
    v103 = v88;
    v104 = v87;
    v18 = sub_1D6B14BDC(&v99);

    v105[3] = v102;
    v105[4] = v103;
    v106 = v104;
    v105[0] = v99;
    v105[1] = v100;
    v105[2] = v101;
    sub_1D6C22548(v105, &qword_1EDF33A38, &type metadata for FormatConfig, MEMORY[0x1E69E6720], sub_1D5B49FDC);
  }

  return v18;
}

uint64_t sub_1D6C20254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v60 = a7;
  v61 = a8;
  v63 = a6;
  sub_1D6C225A8(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v67 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v68 = &v55 - v22;
  v23 = type metadata accessor for FormatNodeStateData.Data();
  v64 = *(v23 - 8);
  v65 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v66 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FormatItemNodeData();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v30 = *(a3 + 120);

  v62 = a4;
  v69[2] = a4;
  v69[3] = a2;
  v31 = sub_1D5FBC110(sub_1D5EB5908, v69, v30);
  if (v12)
  {
  }

  v33 = v31;
  v56 = a12;
  v59 = a11;
  v58 = a10;
  v34 = v63;
  v78 = a5;

  v35 = *(v60 + 24);
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70[0] = *(v35 + 40);
  *(v35 + 40) = 0x8000000000000000;
  v57 = v35;
  v60 = 0;
  sub_1D6D77BEC(v78, v34, v33, v78, v34, isUniquelyReferenced_nonNull_native);
  *(v35 + 40) = v70[0];
  swift_endAccess();

  v37 = v34;

  sub_1D5B68374(v61, &v71);
  sub_1D6818590(&v71, v29);
  v38 = a9[5];
  v75 = a9[4];
  v76 = v38;
  v77[0] = a9[6];
  *(v77 + 9) = *(a9 + 105);
  v39 = a9[3];
  v73 = a9[2];
  v74 = v39;
  v40 = a9[1];
  v71 = *a9;
  v72 = v40;
  v41 = v26[7];
  v42 = sub_1D725D80C();
  (*(*(v42 - 8) + 16))(&v29[v41], v56, v42);
  sub_1D5F8A3DC(&v71, v70);
  sub_1D725A7EC();
  v43 = sub_1D6E465F4();

  v44 = &v29[v26[5]];
  v45 = v76;
  *(v44 + 4) = v75;
  *(v44 + 5) = v45;
  *(v44 + 6) = v77[0];
  *(v44 + 105) = *(v77 + 9);
  v46 = v72;
  *v44 = v71;
  *(v44 + 1) = v46;
  v47 = v74;
  *(v44 + 2) = v73;
  *(v44 + 3) = v47;
  v48 = &v29[v26[6]];
  v49 = v58;
  *v48 = v58;
  v48[8] = v59;
  v50 = &v29[v26[8]];
  *v50 = v78;
  *(v50 + 1) = v37;
  *(v50 + 2) = v33;
  *&v29[v26[9]] = v43;
  v51 = v66;
  sub_1D6C221DC(v29, v66, type metadata accessor for FormatItemNodeData);
  v52 = v65;
  swift_storeEnumTagMultiPayload();
  v53 = v68;
  sub_1D6C221DC(v51, v68, type metadata accessor for FormatNodeStateData.Data);
  (*(v64 + 56))(v53, 0, 1, v52);
  v54 = v67;
  sub_1D6C22244(v53, v67, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
  swift_beginAccess();

  sub_1D61CA640(v49, v59);
  sub_1D6D60A18(v54, v78, v37);
  swift_endAccess();
  sub_1D6C22548(v53, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D6C225A8);
  sub_1D6C222C4(v51, type metadata accessor for FormatNodeStateData.Data);
  return sub_1D6C222C4(v29, type metadata accessor for FormatItemNodeData);
}

uint64_t sub_1D6C207E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = a3[7];
  if (v10 && (v11 = *(v10 + 16), swift_beginAccess(), *(*(v11 + 16) + 16)))
  {
  }

  else
  {
    v11 = 0;
  }

  v12 = (a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  v13 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier + 8);
  v21 = *v12;
  swift_beginAccess();
  v20 = a3[13];
  swift_beginAccess();
  v14 = a3[14];
  type metadata accessor for FormatItemNodeLayoutAttributes();
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  *(v15 + 24) = a2;
  *(v15 + 32) = v11;
  *&v17 = v20;
  *&v16 = v21;
  *(&v16 + 1) = v13;
  *(&v17 + 1) = v14;
  *(v15 + 56) = v17;
  *(v15 + 40) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *a5 = v18;

  sub_1D5EB1500(v14);
}

uint64_t sub_1D6C20938@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  sub_1D5CBB26C();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28[-v12];
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v16 = (*(v14 + 8))(v15, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items;
  swift_beginAccess();
  v17 = *(v16 + 8);

  if (*(v17 + 16) && (v18 = sub_1D5B69D90(*(v3 + 32), *(v3 + 40)), (v19 & 1) != 0))
  {
    sub_1D6C221DC(*(v17 + 56) + *(v36 + 72) * v18, v9, sub_1D5CBB26C);
    sub_1D5D5E5AC(v9, v13, sub_1D5CBB26C);

    v20 = v13[5];
    v33 = v13[4];
    v34 = v20;
    v35[0] = v13[6];
    *(v35 + 9) = *(v13 + 105);
    v21 = v13[1];
    v29 = *v13;
    v30 = v21;
    v22 = v13[3];
    v31 = v13[2];
    v32 = v22;
    sub_1D5F8A3DC(&v29, v28);
    result = sub_1D6C222C4(v13, sub_1D5CBB26C);
    v24 = v34;
    a2[4] = v33;
    a2[5] = v24;
    a2[6] = v35[0];
    *(a2 + 105) = *(v35 + 9);
    v25 = v30;
    *a2 = v29;
    a2[1] = v25;
    v26 = v32;
    a2[2] = v31;
    a2[3] = v26;
  }

  else
  {

    type metadata accessor for FormatLayoutError();
    sub_1D6C2260C(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v27 = v3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1D6C20C68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v125 = a2;
  v5 = type metadata accessor for GroupLayoutContext();
  v100 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v101 = v7;
  v126 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v114 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for FormatOption();
  v11 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128, v12);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = v3[3];
  v123 = v3[2];
  v124 = v15;
  v129 = a1;
  v16 = *(a1 + 112);
  v17 = *(v16 + 16);
  v127 = v3;
  if (v17)
  {
    *&v142[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v17, 0);
    v18 = *&v142[0];
    v19 = *(v11 + 80);
    v122 = v16;
    v20 = v16 + ((v19 + 32) & ~v19);
    v130 = v11;
    v21 = *(v11 + 72);
    do
    {
      sub_1D6C221DC(v20, v14, type metadata accessor for FormatOption);
      v22 = swift_allocBox();
      sub_1D5D5E5AC(v14, v23, type metadata accessor for FormatOption);
      *&v142[0] = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1D5D24610((v24 > 1), v25 + 1, 1);
        v18 = *&v142[0];
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + 8 * v25 + 32) = v22 | 0x9000000000000004;
      v20 += v21;
      --v17;
    }

    while (v17);

    v3 = v127;
    v11 = v130;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v26 = v3[11];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    *&v142[0] = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v27, 0);
    v28 = *&v142[0];
    v29 = *(v11 + 80);
    v122 = v26;
    v30 = v26 + ((v29 + 32) & ~v29);
    v130 = *(v11 + 72);
    do
    {
      sub_1D6C221DC(v30, v14, type metadata accessor for FormatOption);
      v31 = swift_allocBox();
      sub_1D5D5E5AC(v14, v32, type metadata accessor for FormatOption);
      *&v142[0] = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D5D24610((v33 > 1), v34 + 1, 1);
        v28 = *&v142[0];
      }

      *(v28 + 16) = v34 + 1;
      *(v28 + 8 * v34 + 32) = v31 | 0x4000000000000004;
      v30 += v130;
      --v27;
    }

    while (v27);

    v3 = v127;
  }

  v141 = v18;
  sub_1D6985C44(v28);
  v35 = v129;

  sub_1D6985C44(v36);
  v37 = v141;
  v38 = v35[13];
  swift_beginAccess();

  v40 = sub_1D5D6021C(v39, v38);

  v42 = sub_1D5D6021C(v41, v40);
  swift_beginAccess();
  v43 = v3[12];
  v44 = v35[26];
  v127 = v35[27];
  v128 = v44;
  v45 = v35[28];
  v121 = v35[29];
  v122 = v45;
  v46 = v35[30];
  v119 = v35[31];
  v120 = v46;
  v47 = v125;
  v48 = *(v125 + 96);
  v49 = *(v125 + 112);
  v143 = *(v125 + 80);
  v144 = v48;
  v145 = v49;
  v146 = *(v125 + 128);
  v50 = *(v125 + 64);
  v142[0] = *(v125 + 48);
  v142[1] = v50;
  v51 = *(v125 + 64);
  v118 = *(v125 + 56);
  v52 = *(v125 + 72);
  v53 = *(v125 + 80);
  sub_1D6C22244((v35 + 19), &v139, &qword_1EDF34AB8, sub_1D5EFF46C);
  v117 = v51;
  if (v140)
  {
    sub_1D5B63F14(&v139, v131);
    sub_1D5B68374(v131, &v139);

    sub_1D5CF6A5C(v142, &v133);
    v54 = v114;
    sub_1D6818590(&v139, v114);

    v55 = sub_1D69F6E38(v54);
    v115 = v56;
    v116 = v55;
    sub_1D6C222C4(v54, type metadata accessor for FeedItem);
    __swift_destroy_boxed_opaque_existential_1(v131);
  }

  else
  {
    v116 = v52;

    sub_1D5CF6A5C(v142, &v133);
    sub_1D6C22548(&v139, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720], sub_1D6C225A8);
    v115 = v53;
  }

  v102 = BYTE1(v142[0]);
  v103 = LOBYTE(v142[0]);
  v57 = *(&v143 + 1);
  v58 = v144;
  v107 = *(&v145 + 1);
  v108 = v145;
  v106 = v146;
  sub_1D60B297C(*(&v143 + 1), v144, *(&v144 + 1), v145, *(&v145 + 1), v146);
  sub_1D5D09C48(v142);
  v132 = 0;

  v123 = sub_1D6E8DE74(v123, v124);

  swift_beginAccess();
  v132 = 1;

  v59 = *(v42 + 16);
  v60 = v42;
  v61 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  v130 = v60;
  if (v59 && (sub_1D6D0A744(v61, v60) & 1) == 0)
  {
    v62 = 1;
    v132 = 1;

    v61 = sub_1D5D6021C(v63, v61);
  }

  else
  {

    v62 = 0;
  }

  v124 = v61;
  if (*(v37 + 16))
  {
    v64 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v65 = sub_1D6F619D8(v37);

    if (v65)
    {
      v62 = 1;
      v132 = 1;
    }

    else
    {

      v65 = v64;
    }
  }

  else
  {

    v65 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  v66 = v126;
  v67 = v47[5];
  v114 = v47[4];
  v126 = v67;

  v113 = sub_1D6BEC5F4(v43, v47, &v132);

  v68 = v127;
  if (v127)
  {
    v112 = 0;
    v132 = 1;
    v69 = v128;
    v70 = v128;
    v110 = v122;
    v111 = v127;
    v109 = v121;
    v104 = v119;
    v105 = v120;
  }

  else
  {
    v70 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
    v71 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
    v72 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
    v73 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
    v74 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
    v75 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
    v110 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
    v111 = v71;
    v109 = v72;
    v104 = v74;
    v105 = v73;
    v112 = v75;
    sub_1D62E312C(v70, v71, v110, v72, v73, v74, v75);
    v69 = v128;
  }

  LOBYTE(v133) = v103;
  BYTE1(v133) = v102;
  *(&v133 + 1) = v118;
  *&v134 = v117;
  *(&v134 + 1) = v116;
  *&v135 = v115;
  *(&v135 + 1) = v57;
  v136 = v58;
  *&v137 = v108;
  *(&v137 + 1) = v107;
  v138 = v106;
  sub_1D67F5880(v69, v68);
  v127 = sub_1D6BEC878(v129 + 152, v47, &v132);
  v122 = v76;
  v128 = v70;
  if (v62)
  {
    sub_1D6C225A8(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
    sub_1D6C221DC(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v66, type metadata accessor for GroupLayoutContext);
    v77 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    sub_1D5D5E5AC(v66, v80 + v77, type metadata accessor for GroupLayoutContext);
    *(v80 + v78) = v65;
    v81 = v124;
    *(v80 + v79) = v124;
    sub_1D5CF6A5C(&v133, v131);

    v129 = sub_1D725A80C();
  }

  else
  {
    v82 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
    sub_1D5CF6A5C(&v133, v131);
    v129 = v82;

    v81 = v124;
  }

  v83 = v47[2];
  sub_1D6C221DC(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v66, type metadata accessor for GroupLayoutContext);
  v84 = *(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
  sub_1D5B68374(v47 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v131);
  type metadata accessor for FormatNodeBinderContext();
  v85 = swift_allocObject();
  v86 = v123;
  *(v85 + 16) = v83;
  *(v85 + 24) = v86;
  v87 = v136;
  *(v85 + 80) = v135;
  *(v85 + 96) = v87;
  *(v85 + 112) = v137;
  *(v85 + 128) = v138;
  v88 = v134;
  *(v85 + 48) = v133;
  *(v85 + 64) = v88;
  *(v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v65;
  *(v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v81;
  sub_1D6C221DC(v66, v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
  v89 = v113;
  v90 = v126;
  *(v85 + 32) = v114;
  *(v85 + 40) = v90;
  *(v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v89;
  *(v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v84;
  sub_1D5B68374(v131, v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  v91 = v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  v92 = v110;
  v93 = v111;
  *v91 = v128;
  *(v91 + 8) = v93;
  *(v91 + 16) = v92;
  v94 = v104;
  v95 = v105;
  *(v91 + 24) = v109;
  *(v91 + 32) = v95;
  *(v91 + 40) = v94;
  *(v91 + 48) = v112;
  v96 = (v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  v97 = v122;
  *v96 = v127;
  v96[1] = v97;

  sub_1D5D09C48(&v133);
  __swift_destroy_boxed_opaque_existential_1(v131);
  sub_1D6C222C4(v66, type metadata accessor for GroupLayoutContext);
  *(v85 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v129;
  return v85;
}

uint64_t sub_1D6C217B4(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C2260C(&qword_1EC893A98, a2, type metadata accessor for FormatItemNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C2180C(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6C2260C(&qword_1EDF32660, a2, type metadata accessor for FormatItemNode);
  a1[2] = sub_1D6C2260C(&qword_1EDF11B80, v3, type metadata accessor for FormatItemNode);
  result = sub_1D6C2260C(&qword_1EC893AA0, v4, type metadata accessor for FormatItemNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C218B8(uint64_t a1, uint64_t a2)
{
  result = sub_1D6C2260C(&qword_1EC893AA8, a2, type metadata accessor for FormatItemNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C21970(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v58 = a8;
  v67 = a4;
  sub_1D6C225A8(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (&v48 - v18);
  v63 = a3[3];
  result = sub_1D720B6F0(&v63, *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v59);
  if (!v9)
  {
    v52 = a5;
    v53 = a1;
    v54 = a6;
    v51 = a7;
    v57 = a3;
    __swift_project_boxed_opaque_existential_1(&v59, v61);
    v21 = sub_1D725AA4C();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(&v59);
    if (*(*(v67 + 24) + 16))
    {
      *v19 = a2;
      v24 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(v19, 0, 1, v24);
      swift_beginAccess();

      sub_1D6D60828(v19, v21, v23);
      swift_endAccess();
    }

    v55 = v21;
    v56 = v23;
    v25 = v52;
    v52 = a2;
    v26 = v57;
    v28 = sub_1D6C22060(v25, v54, a2, v57);
    v29 = *(*(v26 + 9) + 16);
    result = v29 + 5;
    v30 = v53;
    if (__OFADD__(v29, 5))
    {
      __break(1u);
    }

    else
    {
      v48 = *(v26 + 9);
      v54 = a9;
      v49 = v28;
      v50 = v27;
      sub_1D7259E0C();
      *&v63 = v30;
      swift_getKeyPath();
      v61 = MEMORY[0x1E69E6158];
      v31 = MEMORY[0x1E69E6158];
      v62 = MEMORY[0x1E69D74F0];
      v59 = v51;
      v60 = v58;
      sub_1D5EB5368(0);
      sub_1D6C2260C(&qword_1EDF3C040, 255, sub_1D5EB5368);
      v51 = sub_1D6C2260C(&qword_1EDF3C168, 255, sub_1D5EB544C);

      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v59);
      *&v63 = v30;
      swift_getKeyPath();
      v61 = v31;
      v32 = v31;
      v33 = MEMORY[0x1E69D74F0];
      v62 = MEMORY[0x1E69D74F0];
      v59 = v55;
      v60 = v56;
      sub_1D6C22324();

      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v59);
      *&v63 = v30;
      swift_getKeyPath();
      v61 = v32;
      v62 = v33;
      v59 = v49;
      v60 = v50;
      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v59);
      v64 = v30;
      swift_getKeyPath();
      v34 = v54;
      swift_beginAccess();
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      v61 = MEMORY[0x1E69E6158];
      v62 = v33;
      v59 = v36;
      v60 = v35;

      sub_1D7259A0C();

      __swift_destroy_boxed_opaque_existential_1(&v59);
      v37 = *(v57 + 120);
      if (v37 != 7)
      {
        v64 = v30;
        swift_getKeyPath();
        v61 = &type metadata for FormatAccessibilityRole;
        v62 = sub_1D62E2C6C();
        LOBYTE(v59) = v37;
        sub_1D6C2243C();
        sub_1D7259A0C();

        __swift_destroy_boxed_opaque_existential_1(&v59);
      }

      v38 = *(v54 + 16);
      v39 = *(v54 + 24);

      sub_1D6B0A84C(v38, v39);

      sub_1D6B0B228(0, 0);

      v40 = sub_1D6B142D4(v55, v56);

      if (v29)
      {
        v41 = (v48 + 32);
        v42 = v67;
        do
        {
          v43 = *v41;
          v44 = v41[2];
          v65[1] = v41[1];
          v65[2] = v44;
          v65[0] = v43;
          v45 = v41[3];
          v46 = v41[4];
          v47 = v41[5];
          v66 = *(v41 + 12);
          v65[4] = v46;
          v65[5] = v47;
          v65[3] = v45;
          sub_1D5C5C4CC(v65, &v59);
          sub_1D6FBF7BC(v30, v40, v42);
          sub_1D5C5C540(v65);
          v41 = (v41 + 104);
          --v29;
        }

        while (v29);
      }
    }
  }

  return result;
}

uint64_t sub_1D6C22060(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a2)
  {
    v7 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v8 = MEMORY[0x1E69E6158];
    sub_1D5B49FDC(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    *(v9 + 32) = a1;
    *(v9 + 40) = a2;
    v16 = *a4;
    *(v9 + 48) = v16;
    v15[2] = v9;
    sub_1D5E422A8(&v16, v15);
    sub_1D5B49FDC(0, &qword_1EDF43BA0, v8, MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();

    v10 = sub_1D7261F3C();
    v12 = v11;

    v13 = *(v7 + 40);
    if (v13)
    {
      v15[0] = *(v7 + 32);
      v15[1] = v13;

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v10, v12);

      return v15[0];
    }
  }

  else
  {
    v10 = *a4;
  }

  return v10;
}

uint64_t sub_1D6C221DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C22244(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6C225A8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6C222C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6C22324()
{
  result = qword_1EDF3C158;
  if (!qword_1EDF3C158)
  {
    sub_1D6C224C0(255, &qword_1EDF3C150, &qword_1EDF43BE0, MEMORY[0x1E69E6158], sub_1D6C223A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C158);
  }

  return result;
}

unint64_t sub_1D6C223A8()
{
  result = qword_1EDF1B678;
  if (!qword_1EDF1B678)
  {
    sub_1D5B49FDC(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B678);
  }

  return result;
}

unint64_t sub_1D6C2243C()
{
  result = qword_1EDF3C178;
  if (!qword_1EDF3C178)
  {
    sub_1D6C224C0(255, &qword_1EDF3C170, &qword_1EDF27760, &type metadata for FormatAccessibilityRole, sub_1D62E2D74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C178);
  }

  return result;
}

void sub_1D6C224C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1D5B49FDC(255, a3, a4, MEMORY[0x1E69E6720]);
    a5();
    v7 = sub_1D725995C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6C22548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6C225A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C2260C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t FormatSelectorSimpleValue.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  type metadata accessor for FormatSelectorValueSelector();
  v10 = sub_1D726275C();
  (*(v6 + 8))(a1, a2);
  return FormatSelectorValue.init(value:selectors:)(v9, v10, a2, a3);
}

uint64_t sub_1D6C2280C(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v8[4] = a2[4];
  v8[5] = v3;
  v8[6] = a2[6];
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  v6 = type metadata accessor for FormatSelectorValue();
  return sub_1D62A61D8(a1, v8, v6);
}

uint64_t FormatSelectorSimpleValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = type metadata accessor for FormatSelectorValue();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v33 = &v25 - v8;
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for FormatSelectorSimpleValue();
  v29 = *(v17 - 8);
  v30 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v28 = &v25 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (v3)
  {
    sub_1D5B68374(a1, v32);
    v20 = v33;
    FormatSelectorValue.init(from:)(v32, a2, v33);

    v23 = v28;
    (*(v26 + 32))(v28, v20, v27);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_1D726472C();
    v21 = v25;
    (*(v25 + 16))(v12, v16, a2);
    type metadata accessor for FormatSelectorValueSelector();
    v22 = sub_1D726275C();
    (*(v21 + 8))(v16, a2);
    v23 = v28;
    FormatSelectorValue.init(value:selectors:)(v12, v22, a2, v28);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  (*(v29 + 32))(v31, v23, v30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t FormatSelectorSimpleValue.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  if (qword_1EDF31F38 != -1)
  {
    swift_once();
  }

  v9 = sub_1D725BD1C();
  v10 = __swift_project_value_buffer(v9, qword_1EDFFCE38);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v6, sub_1D5B4AA6C, 0, v7, v8);
  result = sub_1D6079974(v6);
  if (!v1)
  {
    v12 = type metadata accessor for FormatSelectorValue();
    v13[1] = sub_1D61834A8(v12);
    type metadata accessor for FormatSelectorValueSelector();
    sub_1D72627FC();
    swift_getWitnessTable();
    if (sub_1D7262CCC())
    {
      return sub_1D7261E6C();
    }

    else
    {
      return FormatSelectorValue.encode(to:)(a1, v12);
    }
  }

  return result;
}

uint64_t sub_1D6C22EA4(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6C22F24()
{
  result = type metadata accessor for FormatSelectorValue();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D6C22F94(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v22 = 0;
    v23 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
LABEL_27:
    v18 = v21;
    v19 = v22;
    *v21 = v13;
    v18[1] = v12;
    v18[2] = v11;
    v18[3] = v10;
    v18[4] = v9;
    v18[5] = v19;
    v18[6] = v23;
    return;
  }

  v22 = 0;
  v23 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v15 = *(v5 + 72);
  while (1)
  {
    sub_1D6C231C4(v14, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1D6C23228(v7);
          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1D6C23228(v7);
          v16 = __OFADD__(v11++, 1);
          if (v16)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
          goto LABEL_30;
        }

        sub_1D6C23228(v7);
      }

      goto LABEL_4;
    }

    if (EnumCaseMultiPayload <= 4)
    {
      break;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D6C23228(v7);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_28;
      }

      ++v22;
    }

    else
    {
      sub_1D6C23228(v7);
      if (__OFADD__(v23, 1))
      {
        goto LABEL_32;
      }

      ++v23;
    }

LABEL_4:
    v14 += v15;
    if (!--v8)
    {
      goto LABEL_27;
    }
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D6C23228(v7);
    v16 = __OFADD__(v9++, 1);
    if (v16)
    {
      goto LABEL_33;
    }

    goto LABEL_4;
  }

  sub_1D6C23228(v7);
  v16 = __OFADD__(v10++, 1);
  if (!v16)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1D6C231C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C23228(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataVisualizationResponseItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s8NewsFeed18FormatFloatBindingO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 >> 5) & 3;
  v5 = v3 & 0x60;
  if (!v4)
  {
    return v2 == v3 && v5 == 0;
  }

  if (v4 == 1)
  {
    v6 = ((v3 ^ v2) & 0x9F) == 0;
    return v5 == 32 && v6;
  }

  else
  {
    if (v5 == 64)
    {
      if ((v2 & 0x80) != 0)
      {
        if ((v3 & 0x80) != 0 && ((v3 ^ v2) & 0x1F) == 0)
        {
          return 1;
        }
      }

      else if ((v3 & 0x80) == 0 && ((v3 ^ v2) & 0x1F) == 0)
      {
        return 1;
      }
    }

    return 0;
  }
}

unint64_t sub_1D6C23348(uint64_t a1)
{
  result = sub_1D6C23370();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6C23370()
{
  result = qword_1EC893AB0;
  if (!qword_1EC893AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AB0);
  }

  return result;
}

unint64_t sub_1D6C233C4(void *a1)
{
  a1[1] = sub_1D6677FFC();
  a1[2] = sub_1D6678178();
  result = sub_1D6C233FC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C233FC()
{
  result = qword_1EC893AB8;
  if (!qword_1EC893AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FormatFloatBinding(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0xC | (*a1 >> 5) & 3) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FormatFloatBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 8 * ((((-a2 >> 2) & 3) - 4 * a2) & 0xF);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t IssueCoverImageProcessorRequest.cacheIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 IssueCoverImageProcessorRequest.corners.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 56);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t IssueCoverImageProcessorRequest.__allocating_init(assetHandle:size:scale:corners:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = sub_1D6C23C00(v13, a2, a3, a4, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

uint64_t IssueCoverImageProcessorRequest.init(assetHandle:size:scale:corners:)(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a1, v11);
  v14 = MEMORY[0x1EEE9AC00](v13, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v14);
  v18 = sub_1D6C23960(a3, a4, a5, v16, a2, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

uint64_t IssueCoverImageProcessorRequest.Corners.init(cornerRadius:roundedCorners:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = a3;
  if (a3 > 0.0)
  {
    v4 = result;
  }

  else
  {
    v3 = 0.0;
    v4 = 0;
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = a3 <= 0.0;
  return result;
}

uint64_t IssueCoverImageProcessorRequest.Corners.description.getter()
{
  if (*(v0 + 16))
  {
    return 0x657261757173;
  }

  v2 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v2);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v3 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v3);

  return 0x3A3A646E756F72;
}

uint64_t IssueCoverImageProcessorRequest.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  return v0;
}

uint64_t IssueCoverImageProcessorRequest.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C23960(double a1, double a2, double a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[3] = a7;
  v26[4] = a8;
  __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a7 - 8) + 32))();
  v15 = *a5;
  v14 = a5[1];
  v16 = *(a5 + 16);
  sub_1D6C23D98();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 32) = 0x616D497265766F63;
  *(inited + 40) = 0xEA00000000006567;
  sub_1D5B68374(v26, inited + 48);
  v18 = sub_1D5BFFC64(inited);
  swift_setDeallocating();
  sub_1D5F99394(inited + 32);
  *(a6 + 80) = v18;
  sub_1D5B68374(v26, a6 + 88);
  *(a6 + 32) = a1;
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = v15;
  *(a6 + 64) = v14;
  *(a6 + 72) = v16;
  v19 = sub_1D725D2DC();
  MEMORY[0x1DA6F9910](v19);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  type metadata accessor for CGSize(0);
  sub_1D7263F9C();
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  v20 = sub_1D7262A9C();
  MEMORY[0x1DA6F9910](v20);

  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  if (v16)
  {
    v21 = 0xE600000000000000;
    v22 = 0x657261757173;
  }

  else
  {
    v23 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v23);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    v24 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v24);

    v22 = 0x3A3A646E756F72;
    v21 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v22, v21);

  *(a6 + 16) = 0;
  *(a6 + 24) = 0xE000000000000000;
  __swift_destroy_boxed_opaque_existential_1(v26);
  return a6;
}

uint64_t sub_1D6C23C00(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a1, a7);
  return sub_1D6C23960(a3, a4, a5, v17, a2, v18, a7, a8);
}

void sub_1D6C23D98()
{
  if (!qword_1EDF19590)
  {
    sub_1D5C16B18();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19590);
    }
  }
}

uint64_t sub_1D6C23E00(void *a1)
{
  v3 = v1;
  sub_1D6C266A0(0, &qword_1EC893AC0, sub_1D6C2664C, &type metadata for A6_V4.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C2664C();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5C14818(&qword_1EC8801E8, type metadata accessor for CGRect);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5BD484C(&qword_1EC8806A0, sub_1D5C0B904);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6C2405C(uint64_t a1)
{
  v2 = sub_1D6C2664C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C24098(uint64_t a1)
{
  v2 = sub_1D6C2664C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6C240D4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6C26398(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6C24134()
{
  sub_1D6C2605C();

  return sub_1D725A24C();
}

uint64_t sub_1D6C241B0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6C266A0(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D6C2426C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v37 = sub_1D725A36C();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A6_V4.Bound();
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext();
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v45);
  sub_1D5B68374(v12 + 56, v44);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v45, v15 + 16);
  sub_1D5B63F14(v44, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v43[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v43, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v15 + 16);
  __swift_destroy_boxed_opaque_existential_1(v15 + 56);
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v44);
  sub_1D5B68374(v16 + 56, v43);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v44, v18 + 16);
  sub_1D5B63F14(v43, v18 + 56);
  *(v18 + 96) = v17;
  v42[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v42, v45);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v18 + 16);
  __swift_destroy_boxed_opaque_existential_1(v18 + 56);
  v19 = sub_1D6F50B74(v45, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v45[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v45[0];
  v38 = v2;
  v41[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D6C25FF8, v41);

  v23 = *MEMORY[0x1E69D7130];
  v24 = sub_1D7259D1C();
  (*(*(v24 - 8) + 104))(v6, v23, v24);
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v37);
  v40 = v22;
  sub_1D6C26104(0, &qword_1EDF17FA8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v37 = sub_1D725A4CC();
  sub_1D725A4DC();
  v25 = v46;
  sub_1D5C1445C(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  v26 = MEMORY[0x1E69E62F8];
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  sub_1D5BD48FC();
  v27 = sub_1D5BD49DC(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v35 = v45[1];
  v36 = v45[0];
  *&v45[0] = v22;
  *&v44[0] = v25;
  MEMORY[0x1EEE9AC00](v27, v28);

  v29 = sub_1D725C00C();

  v30 = v39;
  *v39 = 0;
  v31 = v36;
  *(v30 + 24) = v35;
  *(v30 + 8) = v31;
  *&v45[0] = v29;
  sub_1D5BEE168(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v26);
  sub_1D5BD49DC(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v32 = sub_1D72623BC();

  v34 = MEMORY[0x1E69E7CC0];
  *(v30 + 5) = v32;
  *(v30 + 6) = v34;
  return result;
}

uint64_t sub_1D6C247DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D6C248AC(uint64_t a1, uint64_t a2)
{
  sub_1D6C266A0(0, &qword_1EDF17F70, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 6;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D6C26104(0, &qword_1EDF18030, MEMORY[0x1E69D7150]);
  sub_1D6C260C0(&qword_1EDF18038, &qword_1EDF18030, v11);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6C24A98(uint64_t a1, int *a2)
{
  v143 = a2;
  v157 = a1;
  v130 = sub_1D725A36C();
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v3);
  v131 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1D725A19C();
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v5);
  v129 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeadlineViewLayout.Context(0);
  v147 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v144 = &v128 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C266A0(0, &qword_1EDF17F70, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v128 - v18);
  v158 = a1;
  v20 = sub_1D725994C();
  v21 = swift_allocBox();
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v153 = *MEMORY[0x1E69D6F50];
  v154 = v20;
  v151 = v22 + 104;
  v152 = v23;
  v23(v24);
  *v19 = v21;
  v25 = v16 + 104;
  v26 = *(v16 + 104);
  v150 = *MEMORY[0x1E69D73C0];
  v26(v19);
  v27 = MEMORY[0x1E69D6F38];
  sub_1D6C26104(0, &qword_1EDF18118, MEMORY[0x1E69D6F38]);
  v29 = v28;
  v30 = sub_1D6C260C0(&qword_1EDF18120, &qword_1EDF18118, v27);
  v146 = v29;
  v155 = v30;
  sub_1D7259A9C();
  v31 = *(v16 + 8);
  v148 = v16 + 8;
  v31(v19, v15);
  v32 = v15;
  v158 = v157;
  swift_getKeyPath();
  (v26)(v19, *MEMORY[0x1E69D74A8], v15);
  v149 = *(v143 + 2);
  if (v149)
  {
    v156 = v26;
    v145 = v25;
    v141 = v143 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
    sub_1D5BE3ED8(v141, v144, type metadata accessor for HeadlineViewLayout.Context);
    v33 = v7[5];
    v34 = *MEMORY[0x1E69D7348];
    v35 = sub_1D725A34C();
    v36 = *(v35 - 8);
    v37 = *(v36 + 104);
    v139 = v34;
    v137 = v36 + 104;
    v136 = v37;
    v37(&v10[v33], v34, v35);
    v38 = *(v36 + 56);
    v140 = v35;
    v138 = v36 + 56;
    v135 = v38;
    v38(&v10[v33], 0, 1, v35);
    v39 = MEMORY[0x1E69DDC70];
    *v10 = 0;
    *&v10[v7[6]] = 0;
    v40 = *v39;
    v143 = v7;
    *&v10[v7[7]] = v40;
    v41 = qword_1EDF386E8;
    v134 = v40;
    if (v41 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:

  v42 = v129;
  sub_1D725972C();

  v45 = MEMORY[0x1EEE9AC00](v43, v44);
  v46 = v144;
  *(&v128 - 4) = v144;
  *(&v128 - 3) = v10;
  v127 = v42;
  (*(v128 + 104))(v131, *MEMORY[0x1E69D7378], v130, v45);
  sub_1D5BED904();
  swift_allocObject();
  sub_1D725A4CC();
  (*(v132 + 8))(v42, v133);
  sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v46, type metadata accessor for HeadlineViewLayout.Context);
  v144 = sub_1D5BE8850();
  v127 = v144;
  sub_1D7259A4C();

  v31(v19, v32);
  v158 = v157;
  v47 = v154;
  v48 = swift_allocBox();
  v152(v49, v153, v47);
  *v19 = v48;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  v31(v19, v32);
  v142 = v31;
  if (v149 != 1)
  {
    v158 = v157;
    swift_getKeyPath();
    v50 = swift_allocObject();
    *(v50 + 16) = 0x4060200000000000;
    *v19 = v50;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188();
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v52 = v51;
    v53 = *(v51 - 8);
    v54 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D7273AE0;
    *(v55 + v54) = 0x4058C00000000000;
    v56 = v55 + v54;
    v31 = v142;
    (*(v53 + 104))(v56, *MEMORY[0x1E69D70D0], v52);
    v57 = *(v147 + 72);
    v58 = v143;
    v59 = v143[5];
    v60 = v140;
    v136(&v10[v59], v139, v140);
    v135(&v10[v59], 0, 1, v60);
    *v10 = 0;
    *&v10[v58[6]] = 0;
    v61 = v134;
    *&v10[v58[7]] = v134;
    v62 = *MEMORY[0x1E69DDCE0];
    v63 = *(MEMORY[0x1E69DDCE0] + 8);
    v64 = *(MEMORY[0x1E69DDCE0] + 16);
    v65 = *(MEMORY[0x1E69DDCE0] + 24);
    v66 = v61;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v141 + v57, v10, v62, v63, v64, v65);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    v31(v19, v32);
  }

  v158 = v157;
  v67 = v154;
  v68 = swift_allocBox();
  v152(v69, v153, v67);
  *v19 = v68;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  v31(v19, v32);
  if (v149 >= 3)
  {
    v158 = v157;
    swift_getKeyPath();
    v70 = swift_allocObject();
    *(v70 + 16) = 0x4060200000000000;
    *v19 = v70;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188();
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v72 = v71;
    v73 = *(v71 - 8);
    v74 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1D7273AE0;
    *(v75 + v74) = 0x4058C00000000000;
    v76 = v75 + v74;
    v31 = v142;
    (*(v73 + 104))(v76, *MEMORY[0x1E69D70D0], v72);
    v77 = v141 + 2 * *(v147 + 72);
    v78 = v143;
    v79 = v143[5];
    v80 = v140;
    v136(&v10[v79], v139, v140);
    v135(&v10[v79], 0, 1, v80);
    *v10 = 0;
    *&v10[v78[6]] = 0;
    v81 = v134;
    *&v10[v78[7]] = v134;
    v82 = *MEMORY[0x1E69DDCE0];
    v83 = *(MEMORY[0x1E69DDCE0] + 8);
    v84 = *(MEMORY[0x1E69DDCE0] + 16);
    v85 = *(MEMORY[0x1E69DDCE0] + 24);
    v86 = v81;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v77, v10, v82, v83, v84, v85);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    v31(v19, v32);
  }

  v158 = v157;
  v87 = v154;
  v88 = swift_allocBox();
  v152(v89, v153, v87);
  *v19 = v88;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  v31(v19, v32);
  if (v149 >= 4)
  {
    v158 = v157;
    swift_getKeyPath();
    v90 = swift_allocObject();
    *(v90 + 16) = 0x4060200000000000;
    *v19 = v90;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188();
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v92 = v91;
    v93 = *(v91 - 8);
    v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1D7273AE0;
    *(v95 + v94) = 0x4058C00000000000;
    v96 = v95 + v94;
    v31 = v142;
    (*(v93 + 104))(v96, *MEMORY[0x1E69D70D0], v92);
    v97 = 3 * *(v147 + 72);
    v98 = v143;
    v99 = v143[5];
    v100 = v140;
    v136(&v10[v99], v139, v140);
    v135(&v10[v99], 0, 1, v100);
    *v10 = 0;
    *&v10[v98[6]] = 0;
    v101 = v134;
    *&v10[v98[7]] = v134;
    v102 = *MEMORY[0x1E69DDCE0];
    v103 = *(MEMORY[0x1E69DDCE0] + 8);
    v104 = *(MEMORY[0x1E69DDCE0] + 16);
    v105 = *(MEMORY[0x1E69DDCE0] + 24);
    v106 = v101;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v141 + v97, v10, v102, v103, v104, v105);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    v31(v19, v32);
  }

  v158 = v157;
  v107 = v154;
  v108 = swift_allocBox();
  v152(v109, v153, v107);
  *v19 = v108;
  (v156)(v19, v150, v32);
  sub_1D7259A9C();
  result = (v31)(v19, v32);
  if (v149 >= 5)
  {
    v158 = v157;
    swift_getKeyPath();
    v111 = swift_allocObject();
    *(v111 + 16) = 0x4060200000000000;
    *v19 = v111;
    (v156)(v19, *MEMORY[0x1E69D73D8], v32);
    sub_1D6C26188();
    sub_1D6C266A0(0, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v113 = v112;
    v114 = *(v112 - 8);
    v115 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_1D7273AE0;
    *(v116 + v115) = 0x4058C00000000000;
    (*(v114 + 104))(v116 + v115, *MEMORY[0x1E69D70D0], v113);
    v117 = v141 + 4 * *(v147 + 72);
    v118 = v143;
    v119 = v143[5];
    v120 = v140;
    v136(&v10[v119], v139, v140);
    v135(&v10[v119], 0, 1, v120);
    *v10 = 0;
    *&v10[v118[6]] = 0;
    v121 = v134;
    *&v10[v118[7]] = v134;
    v122 = *MEMORY[0x1E69DDCE0];
    v123 = *(MEMORY[0x1E69DDCE0] + 8);
    v124 = *(MEMORY[0x1E69DDCE0] + 16);
    v125 = *(MEMORY[0x1E69DDCE0] + 24);
    v126 = v121;
    _s8NewsFeed18HeadlineViewLayoutV16imageOnRightSide7context7options6insets11TeaTemplate0E0CyA2C10AttributesVGAC7ContextV_AC7OptionsVSo12UIEdgeInsetsVtFZ_0(v117, v10, v122, v123, v124, v125);
    sub_1D5BE780C(v10, type metadata accessor for HeadlineViewLayout.Options);
    v127 = v144;
    sub_1D7259A4C();

    return (v142)(v19, v32);
  }

  return result;
}

uint64_t sub_1D6C25ED4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28();
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A6_V4.Bound() + 24);
  result = type metadata accessor for GroupLayoutContext();
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D6C26008()
{
  result = qword_1EDF05F00;
  if (!qword_1EDF05F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F00);
  }

  return result;
}

unint64_t sub_1D6C2605C()
{
  result = qword_1EDF05F18;
  if (!qword_1EDF05F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F18);
  }

  return result;
}

uint64_t sub_1D6C260C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1D6C26104(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6C26104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A6_V4.Layout;
    v8[1] = &type metadata for A6_V4.Layout.Attributes;
    v8[2] = sub_1D6C26008();
    v8[3] = sub_1D6C2605C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6C26188()
{
  if (!qword_1EDF023F0)
  {
    sub_1D6C266A0(255, &qword_1EDF180B8, sub_1D6C26008, &type metadata for A6_V4.Layout, MEMORY[0x1E69D70D8]);
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF023F0);
    }
  }
}

unint64_t sub_1D6C2623C()
{
  result = qword_1EDF05F08;
  if (!qword_1EDF05F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F08);
  }

  return result;
}

unint64_t sub_1D6C26294()
{
  result = qword_1EDF05F10;
  if (!qword_1EDF05F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F10);
  }

  return result;
}

unint64_t sub_1D6C262EC()
{
  result = qword_1EDF05F28;
  if (!qword_1EDF05F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F28);
  }

  return result;
}

unint64_t sub_1D6C26344()
{
  result = qword_1EDF05F20;
  if (!qword_1EDF05F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F20);
  }

  return result;
}

uint64_t sub_1D6C26398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6C266A0(0, &qword_1EDF037F8, sub_1D6C2664C, &type metadata for A6_V4.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6C2664C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D5C14818(&qword_1EDF1A740, type metadata accessor for CGRect);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5BEE168(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5BD484C(&qword_1EDF1B258, sub_1D5BEE208);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6C2664C()
{
  result = qword_1EDF05F40;
  if (!qword_1EDF05F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F40);
  }

  return result;
}

void sub_1D6C266A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D6C2671C()
{
  result = qword_1EC893AC8;
  if (!qword_1EC893AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AC8);
  }

  return result;
}

unint64_t sub_1D6C26774()
{
  result = qword_1EDF05F30;
  if (!qword_1EDF05F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F30);
  }

  return result;
}

unint64_t sub_1D6C267CC()
{
  result = qword_1EDF05F38;
  if (!qword_1EDF05F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05F38);
  }

  return result;
}

uint64_t sub_1D6C26820()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 2)
  {
    if (v2)
    {
      v6 = v1 & 0x1F;
      if (v2 == 1)
      {
        v18 = v6;
        v4 = sub_1D6C68238(&v18);
        v5 = sub_1D72631FC();
      }

      else
      {
        v19 = v6;
        v4 = sub_1D6C68238(&v19);
        v5 = sub_1D72631CC();
      }
    }

    else
    {
      v17 = *v0;
      v4 = sub_1D6C68238(&v17);
      v5 = sub_1D72631DC();
    }

    goto LABEL_14;
  }

  if (v1 >> 5 <= 4)
  {
    v3 = v1 & 0x1F;
    if (v2 == 3)
    {
      v20 = v3;
      v4 = sub_1D6C68238(&v20);
      v5 = sub_1D72631EC();
LABEL_14:
      v11 = v5;

      return v11 & 1;
    }

    v21 = v3;
    sub_1D6C68238(&v21);
    v12 = sub_1D726207C();
    v14 = v13;
    if (v12 == sub_1D726207C() && v14 == v15)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1D72646CC();
    }

LABEL_25:

    return v11 & 1;
  }

  if (v2 == 5)
  {
    v22 = v1 & 0x1F;
    sub_1D6C68238(&v22);
    v7 = sub_1D726207C();
    v9 = v8;
    if (v7 == sub_1D726207C() && v9 == v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_1D72646CC() ^ 1;
    }

    goto LABEL_25;
  }

  if (v1 == 192)
  {
    v11 = 1;
    return v11 & 1;
  }

  if (v1 == 193)
  {

    return sub_1D72631FC();
  }

  else
  {

    return sub_1D72631EC();
  }
}

uint64_t FormatContentSizeCategory.encode(to:)(void *a1)
{
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v118 = (&v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v104 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v116 = &v104 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v115 = &v104 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v114 = &v104 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v113 = &v104 - v20;
  v21 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v112 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v111 = &v104 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v110 = &v104 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v109 = &v104 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v108 = &v104 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v107 = &v104 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v106 = &v104 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v105 = &v104 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v104 = &v104 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v104 - v50;
  LODWORD(v119) = *v1;
  v52 = a1[3];
  v53 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v52);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v54 = sub_1D725BD1C();
  v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
  v56 = *(v54 - 8);
  v57 = *(v56 + 16);
  v58 = v56 + 16;
  (v57)(v51, v55, v54);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v59 = v121;
  sub_1D5D2BEC4(v51, sub_1D5B4AA6C, 0, v52, v53);
  if (v59)
  {
    v60 = type metadata accessor for FormatVersionRequirement;
    v61 = v51;
    return sub_1D5D2CF28(v61, v60);
  }

  v121 = v58;
  sub_1D5D2CF28(v51, type metadata accessor for FormatVersionRequirement);
  v62 = v119;
  v63 = v119 >> 5;
  if (v119 >> 5 <= 2)
  {
    if (v63)
    {
      if (v63 == 1)
      {
        v72 = v120[3];
        v73 = v120[4];
        __swift_project_boxed_opaque_existential_1(v120, v72);
        sub_1D5C30408();
        v66 = v114;
        sub_1D71B5B30(&type metadata for FormatCodingKeys, v74, v72, &type metadata for FormatVersions.DawnburstF, v73, &off_1F51F6BD8, v114);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v75 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
        v69 = v108;
        (v57)(v108, v75, v54);
        swift_storeEnumTagMultiPayload();
        v70 = v62 & 0x1F;
        v71 = 10;
      }

      else
      {
        v87 = v120[3];
        v88 = v120[4];
        __swift_project_boxed_opaque_existential_1(v120, v87);
        sub_1D5C30408();
        v66 = v115;
        sub_1D71B5B30(&type metadata for FormatCodingKeys, v89, v87, &type metadata for FormatVersions.DawnburstF, v88, &off_1F51F6BD8, v115);
        if (qword_1EDF31F50 != -1)
        {
          swift_once();
        }

        v90 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
        v69 = v109;
        (v57)(v109, v90, v54);
        swift_storeEnumTagMultiPayload();
        v70 = v62 & 0x1F;
        v71 = 11;
      }
    }

    else
    {
      v83 = v120[3];
      v84 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v83);
      sub_1D5C30408();
      v66 = v113;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v85, v83, &type metadata for FormatVersions.DawnburstF, v84, &off_1F51F6BD8, v113);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v86 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
      v69 = v107;
      (v57)(v107, v86, v54);
      swift_storeEnumTagMultiPayload();
      v71 = 9;
      v70 = v62;
    }

    goto LABEL_29;
  }

  if (v119 >> 5 <= 4)
  {
    v118 = v57;
    if (v63 == 3)
    {
      v64 = v120[3];
      v65 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v64);
      sub_1D5C30408();
      v66 = v116;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v67, v64, &type metadata for FormatVersions.DawnburstF, v65, &off_1F51F6BD8, v116);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v68 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
      v69 = v110;
      (v118)(v110, v68, v54);
      swift_storeEnumTagMultiPayload();
      v70 = v62 & 0x1F;
      v71 = 12;
    }

    else
    {
      v91 = v120[3];
      v92 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v91);
      sub_1D5C30408();
      v66 = v117;
      sub_1D71B5B30(&type metadata for FormatCodingKeys, v93, v91, &type metadata for FormatVersions.DawnburstF, v92, &off_1F51F6BD8, v117);
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v94 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
      v69 = v111;
      (v118)(v111, v94, v54);
      swift_storeEnumTagMultiPayload();
      v70 = v62 & 0x1F;
      v71 = 13;
    }

LABEL_29:
    sub_1D6390D74(v71, v70, v69);
    sub_1D5D2CF28(v69, type metadata accessor for FormatVersionRequirement);
    v60 = sub_1D5D30DC4;
    v61 = v66;
    return sub_1D5D2CF28(v61, v60);
  }

  if (v63 == 5)
  {
    v76 = v57;
    v77 = v120[3];
    v78 = v120[4];
    __swift_project_boxed_opaque_existential_1(v120, v77);
    sub_1D5C30408();
    v79 = v118;
    sub_1D71B5B30(&type metadata for FormatCodingKeys, v80, v77, &type metadata for FormatVersions.DawnburstF, v78, &off_1F51F6BD8, v118);
    if (qword_1EDF31F50 != -1)
    {
      swift_once();
    }

    v81 = __swift_project_value_buffer(v54, qword_1EDFFCE80);
    v82 = v112;
    v76(v112, v81, v54);
    swift_storeEnumTagMultiPayload();
    sub_1D6390D74(14, v62 & 0x1F, v82);
    sub_1D5D2CF28(v82, type metadata accessor for FormatVersionRequirement);
    v60 = sub_1D5D30DC4;
    v61 = v79;
    return sub_1D5D2CF28(v61, v60);
  }

  if (v119 == 192)
  {
    v100 = v120;
    v101 = v120[3];
    v119 = v120[4];
    __swift_project_boxed_opaque_existential_1(v120, v101);
    v102 = v104;
    (v57)(v104, v55, v54);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2BEC4(v102, sub_1D5B4AA6C, 0, v101, v119);
    sub_1D5D2CF28(v102, type metadata accessor for FormatVersionRequirement);
    __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    sub_1D7264B3C();
    v124 = 0;
  }

  else
  {
    v96 = v120;
    v97 = v120[3];
    if (v119 == 193)
    {
      v119 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v97);
      v98 = v105;
      (v57)(v105, v55, v54);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v98, sub_1D5B4AA6C, 0, v97, v119);
      sub_1D5D2CF28(v98, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      sub_1D7264B3C();
      v99 = 1;
    }

    else
    {
      v119 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v97);
      v103 = v106;
      (v57)(v106, v55, v54);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v103, sub_1D5B4AA6C, 0, v97, v119);
      sub_1D5D2CF28(v103, type metadata accessor for FormatVersionRequirement);
      __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      sub_1D7264B3C();
      v99 = 2;
    }

    v124 = v99;
  }

  __swift_mutable_project_boxed_opaque_existential_1(v122, v123);
  sub_1D66F4858();
  sub_1D726476C();
  return __swift_destroy_boxed_opaque_existential_1(v122);
}

unint64_t sub_1D6C27738(char a1)
{
  result = 7958113;
  switch(a1)
  {
    case 1:
      result = 1480683374;
      break;
    case 2:
      result = 0x5841796C6E6FLL;
      break;
    case 3:
    case 4:
      result = 0x6E6168547373656CLL;
      break;
    case 5:
      result = 0x5472657461657267;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6C61757165;
      break;
    case 8:
      result = 0x6C61757145746F6ELL;
      break;
    case 9:
      result = 29804;
      break;
    case 10:
      result = 6648940;
      break;
    case 11:
      result = 29799;
      break;
    case 12:
      result = 6648935;
      break;
    case 13:
      result = 29029;
      break;
    case 14:
      result = 7431534;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6C27870(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D6C27738(*a1);
  v5 = v4;
  if (v3 == sub_1D6C27738(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D6C278F8()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C27738(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C2795C()
{
  sub_1D6C27738(*v0);
  sub_1D72621EC();
}

uint64_t sub_1D6C279B0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C27738(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6C27A10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D6C28218();
  *a1 = result;
  return result;
}

unint64_t sub_1D6C27A40@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D6C27738(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t FormatContentSizeCategory.description.getter()
{
  v1 = *v0;
  v2 = v1 >> 5;
  if (v1 >> 5 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        sub_1D7263D4C();

        v3 = 0xD000000000000013;
        goto LABEL_8;
      }

      v4 = 0x2072657461657247;
    }

    else
    {
      v4 = 0x616854207373654CLL;
    }

LABEL_14:
    v8 = v4;
    goto LABEL_15;
  }

  if (v1 >> 5 <= 4)
  {
    if (v2 == 3)
    {
      sub_1D7263D4C();

      v3 = 0xD000000000000016;
LABEL_8:
      v8 = v3;
LABEL_15:
      v5 = FormatContentSizeCategoryValue.rawValue.getter();
      MEMORY[0x1DA6F9910](v5);

      return v8;
    }

    v4 = 0x206C61757145;
    goto LABEL_14;
  }

  if (v2 == 5)
  {
    v4 = 0x6175714520746F4ELL;
    goto LABEL_14;
  }

  v7 = 0x5841206F4ELL;
  if (v1 != 193)
  {
    v7 = 0x584120796C6E4FLL;
  }

  if (v1 == 192)
  {
    return 7958081;
  }

  else
  {
    return v7;
  }
}

unint64_t FormatContentSizeCategory.groupLayoutContentSizeCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = v3 >> 5;
  if (v5 > 2)
  {
    if ((v3 >> 5) > 4u && v5 != 5)
    {
      result = (v4 + 64);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v3 >> 5)
  {
    if (v5 == 1)
    {
LABEL_8:
      v3 &= 0x1Fu;
      goto LABEL_9;
    }

    v3 = v4 & 0x1F;
  }

LABEL_9:
  result = **(&unk_1E84CFBB0 + v3);
LABEL_10:
  *a1 = result;
  *(a1 + 8) = v4 >> 5;
  return result;
}

uint64_t _s8NewsFeed25FormatContentSizeCategoryO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 5;
  if (v2 >> 5 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if ((v3 & 0xE0) != 0x20)
        {
          goto LABEL_28;
        }
      }

      else if ((v3 & 0xE0) != 0x40)
      {
        goto LABEL_28;
      }
    }

    else if (v3 > 0x1F)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v2 >> 5 <= 4)
    {
      if (v4 == 3)
      {
        if ((v3 & 0xE0) == 0x60)
        {
          goto LABEL_18;
        }
      }

      else if ((v3 & 0xE0) == 0x80)
      {
        goto LABEL_18;
      }

      goto LABEL_28;
    }

    if (v4 != 5)
    {
      if (v2 == 192)
      {
        if (v3 != 192)
        {
          goto LABEL_28;
        }
      }

      else if (v2 == 193)
      {
        if (v3 != 193)
        {
          goto LABEL_28;
        }
      }

      else if (v3 != 194)
      {
        goto LABEL_28;
      }

      v9 = 1;
      return v9 & 1;
    }

    if ((v3 & 0xE0) != 0xA0)
    {
LABEL_28:
      v9 = 0;
      return v9 & 1;
    }
  }

LABEL_18:
  v5 = FormatContentSizeCategoryValue.rawValue.getter();
  v7 = v6;
  if (v5 == FormatContentSizeCategoryValue.rawValue.getter() && v7 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

unint64_t sub_1D6C27F94()
{
  result = qword_1EDF24A48;
  if (!qword_1EDF24A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24A48);
  }

  return result;
}

unint64_t sub_1D6C27FE8()
{
  result = qword_1EDF33F10;
  if (!qword_1EDF33F10)
  {
    sub_1D5C30198(255, &qword_1EDF33F08, sub_1D66F48AC, &type metadata for FormatContentSizeCategoryValue, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33F10);
  }

  return result;
}

unint64_t sub_1D6C28078(void *a1)
{
  a1[1] = sub_1D5CB9318();
  a1[2] = sub_1D6684C90();
  result = sub_1D6C280B0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6C280B0()
{
  result = qword_1EC893AD0;
  if (!qword_1EC893AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AD0);
  }

  return result;
}

uint64_t sub_1D6C28104(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 0x1F) + 6;
  }
}

_BYTE *sub_1D6C28120(_BYTE *result, unsigned int a2)
{
  if (a2 < 6)
  {
    *result = *result & 0x1F | (32 * a2);
  }

  else
  {
    *result = (a2 + 26) & 0x1F | 0xC0;
  }

  return result;
}

unint64_t sub_1D6C28170()
{
  result = qword_1EC893AD8;
  if (!qword_1EC893AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893AD8);
  }

  return result;
}

unint64_t sub_1D6C281C4()
{
  result = qword_1EDF24A50;
  if (!qword_1EDF24A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24A50);
  }

  return result;
}

uint64_t sub_1D6C28218()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v0;
  }
}

id sub_1D6C28264(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_sourceMetrics] = 0;
  v5 = OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_editor] = a1;
  type metadata accessor for DebugFormatFileTreeModel();
  swift_allocObject();

  *&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_model] = sub_1D6AD49E0(v7, MEMORY[0x1E69E7CC0], 1);
  sub_1D671F790();
  swift_retain_n();
  v14 = sub_1D7260F8C();
  v15 = v8;
  sub_1D671F7E8();
  v10 = objc_allocWithZone(v9);
  *&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_fileViewController] = sub_1D726126C();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);

  sub_1D725B33C();

  sub_1D725B2EC();

  return v11;
}

uint64_t sub_1D6C28404(uint64_t a1, _OWORD *a2)
{
  v3 = a2[5];
  v13[4] = a2[4];
  v13[5] = v3;
  v4 = a2[7];
  v13[6] = a2[6];
  v13[7] = v4;
  v5 = a2[1];
  v13[0] = *a2;
  v13[1] = v5;
  v6 = a2[3];
  v13[2] = a2[2];
  v13[3] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a2[5];
  v12[12] = a2[4];
  v12[13] = v7;
  v8 = a2[7];
  v12[14] = a2[6];
  v12[15] = v8;
  v9 = a2[1];
  v12[8] = *a2;
  v12[9] = v9;
  v10 = a2[3];
  v12[10] = a2[2];
  v12[11] = v10;
  sub_1D6C29A64(v13, v12, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, sub_1D5B49CBC);

  return sub_1D72600DC();
}

id sub_1D6C28588()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_fileViewController];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  result = [v5 view];
  if (result)
  {
    v7 = result;
    [v6 addSubview_];

    [v5 didMoveToParentViewController_];

    sub_1D725B33C();

    sub_1D725B2EC();

    sub_1D725B33C();

    sub_1D725B35C();
  }

LABEL_7:
  __break(1u);
  return result;
}

size_t sub_1D6C287AC()
{
  v1 = type metadata accessor for DebugFormatCacheFile();
  v2 = *(v1 - 8);
  v81 = v1;
  v82 = v2;
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v76 = v71 - v8;
  sub_1D6C298D0(0, &qword_1EC890010, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v71 - v15;
  v17 = type metadata accessor for DebugFormatCompilerResultEntry();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v78 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v77 = v71 - v22;
  v86 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v23 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v24);
  v26 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_editor);

  sub_1D725B31C();

  v124[10] = v120;
  v124[11] = v121;
  v124[12] = v122;
  v124[6] = v116;
  v124[7] = v117;
  v124[8] = v118;
  v124[9] = v119;
  v124[2] = v112;
  v124[3] = v113;
  v124[4] = v114;
  v124[5] = v115;
  v124[0] = v110;
  v124[1] = v111;
  v126[10] = v120;
  v126[11] = v121;
  v126[12] = v122;
  v126[6] = v116;
  v126[7] = v117;
  v126[8] = v118;
  v126[9] = v119;
  v126[2] = v112;
  v126[3] = v113;
  v126[4] = v114;
  v126[5] = v115;
  v125 = v123;
  v127 = v123;
  v126[0] = v110;
  v126[1] = v111;
  if (sub_1D5DEA380(v126) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *&v102 = MEMORY[0x1E69E7CC0];

    sub_1D72600DC();
    sub_1D607F0A4(&v102);
    swift_getKeyPath();
    swift_getKeyPath();
    v98 = v106;
    v99 = v107;
    v100 = v108;
    v101 = v109;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;

    return sub_1D72600DC();
  }

  v74 = v5;
  v75 = v0;
  v28 = MEMORY[0x1E69E7CC0];
  v93 = MEMORY[0x1E69E7CC0];
  v29 = *(v127 + 16);
  if (v29)
  {
    v72 = v12;
    v73 = v16;
    v30 = v127 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v83 = *(v23 + 72);
    v84 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__compilerResult;
    v71[1] = v127;

    while (1)
    {
      sub_1D6C29868(v30, v26, type metadata accessor for DebugFormatEditorWorkspaceGroup);

      sub_1D725B31C();

      v31 = *(&v110 + 1);
      v32 = *&v26[*(v86 + 24)];
      if (*(*(&v110 + 1) + 16))
      {
        v33 = *(v32 + 16);
        v34 = *(v33 + 16);
        v35 = *(v33 + 24);

        v36 = sub_1D5B69D90(v34, v35);
        if ((v37 & 1) == 0)
        {

          goto LABEL_15;
        }

        v38 = *(*(v31 + 56) + 8 * v36);

        if (*(v38 + 16))
        {
          v39 = v78;
          sub_1D6C29868(v38 + ((*(v79 + 80) + 32) & ~*(v79 + 80)), v78, type metadata accessor for DebugFormatCompilerResultEntry);

          v40 = v77;
          sub_1D6C29AD4(v39, v77, type metadata accessor for DebugFormatCompilerResultEntry);

          sub_1D6988AB0(v41);
          sub_1D6C29A04(v40, type metadata accessor for DebugFormatCompilerResultEntry);
          goto LABEL_7;
        }
      }

      else
      {
      }

LABEL_15:
      v42 = *(v32 + 24);
      v43 = *(v42 + 16);
      v44 = v93;
      v45 = v93[2];
      v46 = v45 + v43;
      if (__OFADD__(v45, v43))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v46 <= v44[3] >> 1)
      {
        if (!*(v42 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v47 = v45 + v43;
        }

        else
        {
          v47 = v45;
        }

        result = sub_1D6996084(result, v47, 1, v44);
        v44 = result;
        if (!*(v42 + 16))
        {
LABEL_5:

          if (v43)
          {
            goto LABEL_51;
          }

          goto LABEL_6;
        }
      }

      if ((v44[3] >> 1) - v44[2] < v43)
      {
        goto LABEL_52;
      }

      swift_arrayInitWithCopy();

      if (v43)
      {
        v48 = v44[2];
        v49 = __OFADD__(v48, v43);
        v50 = v48 + v43;
        if (v49)
        {
          goto LABEL_53;
        }

        v44[2] = v50;
      }

LABEL_6:
      v93 = v44;
LABEL_7:
      sub_1D6C29A04(v26, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      v30 += v83;
      if (!--v29)
      {

        v28 = v93;
        v12 = v72;
        v16 = v73;
        break;
      }
    }
  }

  *&v94 = v28;
  sub_1D6C298D0(0, qword_1EC88E160, MEMORY[0x1E69E62F8]);
  sub_1D6C29930();
  v51 = sub_1D72623CC();

  v52 = sub_1D6E4286C();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v94 = v52;

  sub_1D72600DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v106 = v98;
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v102 = v94;
  v103 = v95;
  v104 = v96;
  v105 = v97;
  v110 = v94;
  v111 = v95;
  v112 = v96;
  v113 = v97;
  v114 = v98;
  v115 = v99;
  v116 = v100;
  v117 = v101;
  result = sub_1D5DEA380(&v110);
  v53 = v76;
  if (result == 1)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    v98 = v106;
    v99 = v107;
    v100 = v108;
    v101 = v109;
    v94 = v102;
    v95 = v103;
    v96 = v104;
    v97 = v105;

    sub_1D72600DC();
  }

  else
  {
    v54 = *(v51 + 16);
    v55 = v74;
    if (v54)
    {
      v56 = 0;
      while (v56 < *(v51 + 16))
      {
        sub_1D6C29868(v51 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v56, v53, type metadata accessor for DebugFormatCacheFile);
        v57 = *v53 == v110 && v53[1] == *(&v110 + 1);
        if (v57 || (sub_1D72646CC() & 1) != 0)
        {

          sub_1D6C29AD4(v53, v16, type metadata accessor for DebugFormatCacheFile);
          v58 = 0;
          goto LABEL_42;
        }

        ++v56;
        result = sub_1D6C29A04(v53, type metadata accessor for DebugFormatCacheFile);
        if (v54 == v56)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_54;
    }

LABEL_40:

    v58 = 1;
LABEL_42:
    v59 = v81;
    v60 = v82;
    (*(v82 + 56))(v16, v58, 1, v81);
    sub_1D6C29A64(v16, v12, &qword_1EC890010, MEMORY[0x1E69E6720], sub_1D6C298D0);
    if ((*(v60 + 48))(v12, 1, v59) == 1)
    {
      v61 = MEMORY[0x1E69E6720];
      sub_1D6C299A4(v16, &qword_1EC890010, MEMORY[0x1E69E6720], sub_1D6C298D0);
      sub_1D6C299A4(v12, &qword_1EC890010, v61, sub_1D6C298D0);
      sub_1D607F0A4(&v94);
    }

    else
    {
      v62 = v16;
      sub_1D6C29AD4(v12, v55, type metadata accessor for DebugFormatCacheFile);
      v64 = *v55;
      v63 = *(v55 + 8);
      v65 = *(v55 + 16);
      v66 = *(v55 + 24);
      v68 = *(v55 + 32);
      v67 = *(v55 + 40);
      if (*(v55 + 48))
      {
        swift_beginAccess();

        v70 = sub_1D6C4CF94(v69);
        v55 = v74;
      }

      else
      {

        v70 = MEMORY[0x1E69E7CC0];
      }

      sub_1D6C299A4(v62, &qword_1EC890010, MEMORY[0x1E69E6720], sub_1D6C298D0);
      sub_1D6C29A04(v55, type metadata accessor for DebugFormatCacheFile);
      *&v87 = v64;
      *(&v87 + 1) = v63;
      *&v88 = v65;
      BYTE8(v88) = v66;
      *&v89 = v68;
      *(&v89 + 1) = v67;
      v90 = 0u;
      v91 = 0u;
      *&v92[0] = v70;
      *(v92 + 8) = 0u;
      *(&v92[1] + 8) = 0u;
      *(&v92[2] + 1) = 0;
      nullsub_1();
      v98 = v91;
      v99 = v92[0];
      v100 = v92[1];
      v101 = v92[2];
      v94 = v87;
      v95 = v88;
      v96 = v89;
      v97 = v90;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v91 = v98;
    v92[0] = v99;
    v92[1] = v100;
    v92[2] = v101;
    v87 = v94;
    v88 = v95;
    v89 = v96;
    v90 = v97;

    sub_1D72600DC();
    sub_1D6C299A4(&v102, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, sub_1D5B49CBC);
  }

  return sub_1D6C299A4(v124, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace, sub_1D5B49CBC);
}

uint64_t sub_1D6C29684()
{
  v1 = [*v0 toolbarItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D5B816F8();
  v3 = sub_1D726267C();

  return v3;
}

double sub_1D6C296E8@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = *&v5;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_1D6C29780(_OWORD *a1)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v11[12] = a1[4];
  v11[13] = v6;
  v7 = a1[7];
  v11[14] = a1[6];
  v11[15] = v7;
  v8 = a1[1];
  v11[8] = *a1;
  v11[9] = v8;
  v9 = a1[3];
  v11[10] = a1[2];
  v11[11] = v9;
  sub_1D6C29A64(v12, v11, &qword_1EC88DD40, &type metadata for DebugFormatFileSource, sub_1D5B49CBC);

  return sub_1D72600DC();
}

uint64_t sub_1D6C29868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6C298D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6C29930()
{
  result = qword_1EC893B08;
  if (!qword_1EC893B08)
  {
    sub_1D6C298D0(255, qword_1EC88E160, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B08);
  }

  return result;
}

uint64_t sub_1D6C299A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6C29A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C29A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6C29AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C29B50(void *a1)
{
  v3 = v1;
  sub_1D6C2A7B0(0, &qword_1EC87F840, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E18F20();
  sub_1D7264B5C();
  v15[15] = 0;
  sub_1D5B6B7A4();
  sub_1D5B6AC88(&qword_1EC893B10, sub_1D5B6B7A4);
  sub_1D726443C();
  if (!v2)
  {
    v12 = type metadata accessor for SportsDataConfiguration();
    v13 = *(v3 + *(v12 + 20));
    if (*(v13 + 16))
    {
      sub_1D5E0760C(v13, v10, 1);
    }

    v14 = *(v3 + *(v12 + 24));
    if (*(v14 + 16))
    {
      sub_1D5E073CC(v14, v10, 2);
    }
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6C29D44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_1D6C2A72C();
  v39 = v3;
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v43 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B6B7A4();
  v10 = v9;
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v46 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C2A7B0(0, &qword_1EDF039F0, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v47 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v37 - v16;
  v18 = type metadata accessor for SportsDataConfiguration();
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E18F20();
  v22 = v48;
  sub_1D7264B0C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v48 = v21;
  v53 = 0;
  sub_1D5B6AC88(&qword_1EDF17B90, sub_1D5B6B7A4);
  v23 = v46;
  sub_1D726431C();
  (*(v45 + 32))(v48, v23, v10);
  v52 = 1;
  v25 = sub_1D726434C();
  v46 = v14;
  v37 = v17;
  if (v25)
  {
    v49 = 1;
    sub_1D5B6AC88(&qword_1EDF3BE00, sub_1D5C8CD38);
    v27 = v42;
    v26 = v43;
    sub_1D726431C();
    v28 = v44;
    v29 = a1;
    v30 = sub_1D725A74C();
    (*(v38 + 8))(v27, v26);
    v31 = v48;
    v32 = v29;
  }

  else
  {
    v30 = MEMORY[0x1E69E7CD0];
    v28 = v44;
    v32 = a1;
    v31 = v48;
  }

  *(v31 + *(v18 + 20)) = v30;
  v51 = 2;
  if (sub_1D726434C())
  {
    v50 = 2;
    sub_1D5B6AC88(&qword_1EDF17F50, sub_1D6C2A72C);
    v33 = v39;
    v34 = v40;
    sub_1D726431C();
    v35 = sub_1D725A74C();
    (*(v28 + 8))(v34, v33);
    v36 = v47;
    v31 = v48;
  }

  else
  {
    v35 = MEMORY[0x1E69E7CD0];
    v36 = v47;
  }

  (*(v36 + 8))(v37, v46);
  *(v31 + *(v18 + 24)) = v35;
  sub_1D5F7DD78(v31, v41);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1D5F7DDDC(v31);
}

uint64_t sub_1D6C2A32C()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x70614D6465626D65;
  }
}

uint64_t sub_1D6C2A3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6C2A92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6C2A3CC(uint64_t a1)
{
  v2 = sub_1D5E18F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6C2A408(uint64_t a1)
{
  v2 = sub_1D5E18F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsDataVisualizationResponseEmbedType.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 == 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x535F5354524F5053;
    v3 = 0x425F5354524F5053;
    if (v1 == 2)
    {
      v3 = 0x535F5354524F5053;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

NewsFeed::SportsDataVisualizationResponseEmbedType_optional __swiftcall SportsDataVisualizationResponseEmbedType.init(_:)(Swift::String a1)
{
  v2 = v1;
  result.value = SportsDataVisualizationResponseEmbedType.init(rawValue:)(a1).value;
  *v2 = v4;
  return result;
}

NewsFeed::SportsDataVisualizationResponseEmbedType_optional sub_1D6C2A5D0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = SportsDataVisualizationResponseEmbedType.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1D6C2A608()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 == 6)
    {
      v5 = 0xD000000000000014;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x535F5354524F5053;
    v3 = 0x425F5354524F5053;
    if (v1 == 2)
    {
      v3 = 0x535F5354524F5053;
    }

    if (*v0)
    {
      v2 = 0xD000000000000015;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

void sub_1D6C2A72C()
{
  if (!qword_1EDF17F48)
  {
    sub_1D5B706DC();
    sub_1D5B70730();
    sub_1D5B70784();
    v0 = sub_1D725A75C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17F48);
    }
  }
}

void sub_1D6C2A7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E18F20();
    v7 = a3(a1, &type metadata for SportsDataConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6C2A828()
{
  result = qword_1EC893B18;
  if (!qword_1EC893B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC893B18);
  }

  return result;
}

unint64_t sub_1D6C2A880()
{
  result = qword_1EDF0D190;
  if (!qword_1EDF0D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D190);
  }

  return result;
}

unint64_t sub_1D6C2A8D8()
{
  result = qword_1EDF0D198;
  if (!qword_1EDF0D198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D198);
  }

  return result;
}
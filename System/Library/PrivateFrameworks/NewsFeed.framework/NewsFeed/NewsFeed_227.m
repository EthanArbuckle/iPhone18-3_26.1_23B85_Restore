uint64_t sub_1D6FBF074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v35 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v36 = *(v35 + 56);

  v10 = sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v36;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16) || (sub_1D5B69D90(*(a1 + 32), *(a1 + 40)), (v12 & 1) == 0))
  {
LABEL_40:
    sub_1D6C8DC84(v11);

    v33 = sub_1D6FD464C(a2);

    if (!v4)
    {
      return v33;
    }

    return result;
  }

  v14 = sub_1D6FDFBD0(v13, a1);

  v16 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_39:

    goto LABEL_40;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6FB460](0, v14);
      v34 = result;
      if (v17 < 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v34 = *(v14 + 32);

      if (v17 < 0)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }
    }

    if (v16)
    {
      result = sub_1D7263BFC();
      if (result < 1)
      {
        goto LABEL_46;
      }

      result = sub_1D7263BFC();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_46;
      }
    }

    if (result < v17)
    {
      goto LABEL_47;
    }

    if ((v14 & 0xC000000000000001) == 0 || v17 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatSponsoredBannerNodeStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v17 != v19);
    }

    if (v16)
    {
      sub_1D72640EC();
      v16 = v21;
      v20 = v22;
      v24 = v23;

      v17 = v24 >> 1;
    }

    else
    {
      v16 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v34;

    v25 = v17 - v20;
    if (v17 == v20)
    {
      break;
    }

    if (v17 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v17;
    }

    v27 = v26 - v20;
    v28 = (v16 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v16 = v29;

      v14 = sub_1D6C8D0C4(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    result = sub_1D7263BFC();
    v17 = result;
    if (!result)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6C8DC84(v11);

  v31 = sub_1D6FD464C(a2);
  if (v4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v32 = v31;
    swift_unknownObjectRelease();

    return v32;
  }
}

uint64_t sub_1D6FBF418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D725A7EC();
  v8 = *(*(v35 + 40) + 16);
  swift_beginAccess();
  if (!*(*(v8 + 16) + 16))
  {
    v11 = sub_1D6E46E28();

    if (a1)
    {
      goto LABEL_3;
    }

LABEL_14:

    return 0;
  }

  v36 = *(v35 + 56);

  v10 = sub_1D6F622E0(v9);
  sub_1D5B886D0(v10);

  v11 = v36;
  if (!a1)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!*(a4 + 16) || (sub_1D5B69D90(*(a1 + 32), *(a1 + 40)), (v12 & 1) == 0))
  {
LABEL_40:
    sub_1D6733E28(v11);

    v33 = sub_1D6FCE0B4(a2);

    if (!v4)
    {
      return v33;
    }

    return result;
  }

  v14 = sub_1D6FDFE74(v13, a1);

  v16 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_39:

    goto LABEL_40;
  }

  while (1)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1DA6FB460](0, v14);
      v34 = result;
      if (v17 < 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v34 = *(v14 + 32);

      if (v17 < 0)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }
    }

    if (v16)
    {
      result = sub_1D7263BFC();
      if (result < 1)
      {
        goto LABEL_46;
      }

      result = sub_1D7263BFC();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_46;
      }
    }

    if (result < v17)
    {
      goto LABEL_47;
    }

    if ((v14 & 0xC000000000000001) == 0 || v17 == 1)
    {
    }

    else
    {
      type metadata accessor for FormatGroupNodeMaskStyle();

      v18 = 1;
      do
      {
        v19 = v18 + 1;
        sub_1D7263DAC();
        v18 = v19;
      }

      while (v17 != v19);
    }

    if (v16)
    {
      sub_1D72640EC();
      v16 = v21;
      v20 = v22;
      v24 = v23;

      v17 = v24 >> 1;
    }

    else
    {
      v16 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      v20 = 1;
    }

    swift_unknownObjectRetain();
    v14 = v34;

    v25 = v17 - v20;
    if (v17 == v20)
    {
      break;
    }

    if (v17 <= v20)
    {
      v26 = v20;
    }

    else
    {
      v26 = v17;
    }

    v27 = v26 - v20;
    v28 = (v16 + 8 * v20);
    while (v27)
    {
      v29 = *v28++;
      v16 = v29;

      v14 = sub_1D6732F84(v30);

      --v27;
      if (!--v25)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    result = sub_1D7263BFC();
    v17 = result;
    if (!result)
    {
      goto LABEL_39;
    }
  }

LABEL_34:
  swift_unknownObjectRelease();
  sub_1D6733E28(v11);

  v31 = sub_1D6FCE0B4(a2);
  if (v4)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v32 = v31;
    swift_unknownObjectRelease();

    return v32;
  }
}

uint64_t sub_1D6FBF7BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v62 = &v57 - v15;
  v71 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v58 = a1;
    v59 = v4;
    v61 = a3;
    v17 = *(v16 + 24);
    *&v63 = *v6;
    v18 = v63;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v63 = v18;
    v22 = sub_1D6E7A824();
    v60 = a2;
    v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v24 = *(v6 + 24);
    v70[0] = *(v6 + 8);
    v70[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v70[0] + 1);
    if (*(&v70[0] + 1))
    {
      v28 = *&v70[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v70, &v63, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v61;
    a2 = v60;
    v5 = v59;
    a1 = v58;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v60 = *(v6 + 8);
      v61 = v32;
      v59 = v33;
      v34 = *(v6 + 80);
      v67 = *(v6 + 64);
      v68 = v34;
      v69 = *(v6 + 96);
      v35 = *(v6 + 16);
      v63 = *v6;
      v64 = v35;
      v36 = *(v6 + 48);
      v65 = *(v6 + 32);
      v66 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v62;
      sub_1D6F5E8C4(a2, v62);
      if (v5)
      {

        goto LABEL_15;
      }

      v43 = swift_allocObject();
      v44 = *(v6 + 32);
      *(v43 + 104) = *(v6 + 48);
      v45 = *(v6 + 80);
      *(v43 + 120) = *(v6 + 64);
      *(v43 + 136) = v45;
      v46 = *(v6 + 16);
      *(v43 + 56) = *v6;
      *(v43 + 72) = v46;
      v47 = v60;
      *(v43 + 16) = a2;
      *(v43 + 24) = v47;
      v48 = v61;
      *(v43 + 32) = v31;
      *(v43 + 40) = v48;
      *(v43 + 48) = v59;
      v49 = *(v6 + 96);
      *(v43 + 88) = v44;
      *(v43 + 152) = v49;
      *(v43 + 160) = v30;
      *(v43 + 168) = a3;

      sub_1D5C5C4CC(v6, &v63);
      sub_1D5EB5368(0);
      sub_1D6FF91E8();

      sub_1D72599CC();

LABEL_25:

      result = sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v60 = *(v6 + 8);
    v61 = v32;
    v38 = *(v6 + 80);
    v67 = *(v6 + 64);
    v68 = v38;
    v69 = *(v6 + 96);
    v39 = *(v6 + 16);
    v63 = *v6;
    v64 = v39;
    v40 = *(v6 + 48);
    v65 = *(v6 + 32);
    v66 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v57;
    sub_1D6F5E8C4(a2, v57);
    if (v5)
    {
LABEL_15:
      result = swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return result;
      }

      goto LABEL_19;
    }

    v50 = swift_allocObject();
    v51 = *(v6 + 32);
    *(v50 + 104) = *(v6 + 48);
    v52 = *(v6 + 80);
    *(v50 + 120) = *(v6 + 64);
    *(v50 + 136) = v52;
    v53 = *(v6 + 16);
    *(v50 + 56) = *v6;
    *(v50 + 72) = v53;
    v54 = v60;
    *(v50 + 16) = a2;
    *(v50 + 24) = v54;
    v55 = v61;
    *(v50 + 32) = v31;
    *(v50 + 40) = v55;
    *(v50 + 48) = v33;
    v56 = *(v6 + 96);
    *(v50 + 88) = v51;
    *(v50 + 152) = v56;
    *(v50 + 160) = a3;

    sub_1D5C5C4CC(v6, &v63);
    sub_1D5EB5368(0);
    sub_1D6FF91E8();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  result = sub_1D6FE0B78(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return result;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6FBFE04(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v62 = &v57 - v15;
  v71 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v58 = a1;
    v59 = v4;
    v61 = a3;
    v17 = *(v16 + 24);
    *&v63 = *v6;
    v18 = v63;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v63 = v18;
    v22 = sub_1D6E7A824();
    v60 = a2;
    v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v24 = *(v6 + 24);
    v70[0] = *(v6 + 8);
    v70[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v70[0] + 1);
    if (*(&v70[0] + 1))
    {
      v28 = *&v70[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v70, &v63, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v61;
    a2 = v60;
    v5 = v59;
    a1 = v58;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v60 = *(v6 + 8);
      v61 = v32;
      v59 = v33;
      v34 = *(v6 + 80);
      v67 = *(v6 + 64);
      v68 = v34;
      v69 = *(v6 + 96);
      v35 = *(v6 + 16);
      v63 = *v6;
      v64 = v35;
      v36 = *(v6 + 48);
      v65 = *(v6 + 32);
      v66 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v62;
      sub_1D6F5E8C4(a2, v62);
      if (v5)
      {

        goto LABEL_15;
      }

      v43 = swift_allocObject();
      v44 = *(v6 + 32);
      *(v43 + 104) = *(v6 + 48);
      v45 = *(v6 + 80);
      *(v43 + 120) = *(v6 + 64);
      *(v43 + 136) = v45;
      v46 = *(v6 + 16);
      *(v43 + 56) = *v6;
      *(v43 + 72) = v46;
      v47 = v60;
      *(v43 + 16) = a2;
      *(v43 + 24) = v47;
      v48 = v61;
      *(v43 + 32) = v31;
      *(v43 + 40) = v48;
      *(v43 + 48) = v59;
      v49 = *(v6 + 96);
      *(v43 + 88) = v44;
      *(v43 + 152) = v49;
      *(v43 + 160) = v30;
      *(v43 + 168) = a3;

      sub_1D5C5C4CC(v6, &v63);
      sub_1D5EB563C(0);
      sub_1D6FF92D8();

      sub_1D72599CC();

LABEL_25:

      result = sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v60 = *(v6 + 8);
    v61 = v32;
    v38 = *(v6 + 80);
    v67 = *(v6 + 64);
    v68 = v38;
    v69 = *(v6 + 96);
    v39 = *(v6 + 16);
    v63 = *v6;
    v64 = v39;
    v40 = *(v6 + 48);
    v65 = *(v6 + 32);
    v66 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v57;
    sub_1D6F5E8C4(a2, v57);
    if (v5)
    {
LABEL_15:
      result = swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return result;
      }

      goto LABEL_19;
    }

    v50 = swift_allocObject();
    v51 = *(v6 + 32);
    *(v50 + 104) = *(v6 + 48);
    v52 = *(v6 + 80);
    *(v50 + 120) = *(v6 + 64);
    *(v50 + 136) = v52;
    v53 = *(v6 + 16);
    *(v50 + 56) = *v6;
    *(v50 + 72) = v53;
    v54 = v60;
    *(v50 + 16) = a2;
    *(v50 + 24) = v54;
    v55 = v61;
    *(v50 + 32) = v31;
    *(v50 + 40) = v55;
    *(v50 + 48) = v33;
    v56 = *(v6 + 96);
    *(v50 + 88) = v51;
    *(v50 + 152) = v56;
    *(v50 + 160) = a3;

    sub_1D5C5C4CC(v6, &v63);
    sub_1D5EB563C(0);
    sub_1D6FF92D8();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  result = sub_1D6FE1D5C(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return result;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6FC044C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v62 = &v57 - v15;
  v71 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v58 = a1;
    v59 = v4;
    v61 = a3;
    v17 = *(v16 + 24);
    *&v63 = *v6;
    v18 = v63;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v63 = v18;
    v22 = sub_1D6E7A824();
    v60 = a2;
    v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v24 = *(v6 + 24);
    v70[0] = *(v6 + 8);
    v70[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v70[0] + 1);
    if (*(&v70[0] + 1))
    {
      v28 = *&v70[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v70, &v63, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v61;
    a2 = v60;
    v5 = v59;
    a1 = v58;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v60 = *(v6 + 8);
      v61 = v32;
      v59 = v33;
      v34 = *(v6 + 80);
      v67 = *(v6 + 64);
      v68 = v34;
      v69 = *(v6 + 96);
      v35 = *(v6 + 16);
      v63 = *v6;
      v64 = v35;
      v36 = *(v6 + 48);
      v65 = *(v6 + 32);
      v66 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v62;
      sub_1D6F5E8C4(a2, v62);
      if (v5)
      {

        goto LABEL_15;
      }

      v43 = swift_allocObject();
      v44 = *(v6 + 32);
      *(v43 + 104) = *(v6 + 48);
      v45 = *(v6 + 80);
      *(v43 + 120) = *(v6 + 64);
      *(v43 + 136) = v45;
      v46 = *(v6 + 16);
      *(v43 + 56) = *v6;
      *(v43 + 72) = v46;
      v47 = v60;
      *(v43 + 16) = a2;
      *(v43 + 24) = v47;
      v48 = v61;
      *(v43 + 32) = v31;
      *(v43 + 40) = v48;
      *(v43 + 48) = v59;
      v49 = *(v6 + 96);
      *(v43 + 88) = v44;
      *(v43 + 152) = v49;
      *(v43 + 160) = v30;
      *(v43 + 168) = a3;

      sub_1D5C5C4CC(v6, &v63);
      sub_1D5EB5290(0);
      sub_1D6FF9338();

      sub_1D72599CC();

LABEL_25:

      result = sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v60 = *(v6 + 8);
    v61 = v32;
    v38 = *(v6 + 80);
    v67 = *(v6 + 64);
    v68 = v38;
    v69 = *(v6 + 96);
    v39 = *(v6 + 16);
    v63 = *v6;
    v64 = v39;
    v40 = *(v6 + 48);
    v65 = *(v6 + 32);
    v66 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v57;
    sub_1D6F5E8C4(a2, v57);
    if (v5)
    {
LABEL_15:
      result = swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return result;
      }

      goto LABEL_19;
    }

    v50 = swift_allocObject();
    v51 = *(v6 + 32);
    *(v50 + 104) = *(v6 + 48);
    v52 = *(v6 + 80);
    *(v50 + 120) = *(v6 + 64);
    *(v50 + 136) = v52;
    v53 = *(v6 + 16);
    *(v50 + 56) = *v6;
    *(v50 + 72) = v53;
    v54 = v60;
    *(v50 + 16) = a2;
    *(v50 + 24) = v54;
    v55 = v61;
    *(v50 + 32) = v31;
    *(v50 + 40) = v55;
    *(v50 + 48) = v33;
    v56 = *(v6 + 96);
    *(v50 + 88) = v51;
    *(v50 + 152) = v56;
    *(v50 + 160) = a3;

    sub_1D5C5C4CC(v6, &v63);
    sub_1D5EB5290(0);
    sub_1D6FF9338();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  result = sub_1D6FE2F40(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return result;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6FC0A94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v62 = &v57 - v15;
  v71 = a1;
  v16 = *(*(a3 + 24) + 16);
  if (v16)
  {
    v58 = a1;
    v59 = v4;
    v61 = a3;
    v17 = *(v16 + 24);
    *&v63 = *v6;
    v18 = v63;
    v19 = sub_1D6E7C394();
    v21 = v20;
    *&v63 = v18;
    v22 = sub_1D6E7A824();
    v60 = a2;
    v23 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    v24 = *(v6 + 24);
    v70[0] = *(v6 + 8);
    v70[1] = v24;
    type metadata accessor for FormatNodeDebugRecord();
    v25 = swift_allocObject();
    v26 = v25;
    *(v25 + 88) = 0;
    *(v25 + 96) = 1;
    *(v25 + 104) = 0;
    *(v25 + 112) = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 1;
    v27 = *(&v70[0] + 1);
    if (*(&v70[0] + 1))
    {
      v28 = *&v70[0];
      *(v25 + 16) = v19;
      *(v25 + 24) = v21;
      *(v25 + 40) = v22;
      *(v25 + 32) = v23;
      *(v25 + 56) = v28;
      *(v25 + 64) = v27;
      *(v25 + 72) = *(v6 + 24);

      sub_1D6FF924C(v70, &v63, &qword_1EC8992A8, &type metadata for FormatSourceMap);

      *(v26 + 48) = CACurrentMediaTime();
      *(v26 + 88) = 0;
      *(v26 + 96) = 1;
      swift_beginAccess();

      MEMORY[0x1DA6F9CE0](v29);
      if (*((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v17 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
    }

    else
    {

      sub_1D5D25B88(*(v26 + 120), *(v26 + 128));
      swift_deallocPartialClassInstance();

      v26 = 0;
    }

    a3 = v61;
    a2 = v60;
    v5 = v59;
    a1 = v58;
  }

  else
  {
    v26 = 0;
  }

  v30 = *(a3 + 80);
  v31 = *(v6 + 16);
  v32 = *(v6 + 24);
  v33 = *(v6 + 32);
  if (v30)
  {
    if (v31)
    {
      v60 = *(v6 + 8);
      v61 = v32;
      v59 = v33;
      v34 = *(v6 + 80);
      v67 = *(v6 + 64);
      v68 = v34;
      v69 = *(v6 + 96);
      v35 = *(v6 + 16);
      v63 = *v6;
      v64 = v35;
      v36 = *(v6 + 48);
      v65 = *(v6 + 32);
      v66 = v36;
      swift_bridgeObjectRetain_n();

      v37 = v62;
      sub_1D6F5E8C4(a2, v62);
      if (v5)
      {

        goto LABEL_15;
      }

      v43 = swift_allocObject();
      v44 = *(v6 + 32);
      *(v43 + 104) = *(v6 + 48);
      v45 = *(v6 + 80);
      *(v43 + 120) = *(v6 + 64);
      *(v43 + 136) = v45;
      v46 = *(v6 + 16);
      *(v43 + 56) = *v6;
      *(v43 + 72) = v46;
      v47 = v60;
      *(v43 + 16) = a2;
      *(v43 + 24) = v47;
      v48 = v61;
      *(v43 + 32) = v31;
      *(v43 + 40) = v48;
      *(v43 + 48) = v59;
      v49 = *(v6 + 96);
      *(v43 + 88) = v44;
      *(v43 + 152) = v49;
      *(v43 + 160) = v30;
      *(v43 + 168) = a3;

      sub_1D5C5C4CC(v6, &v63);
      sub_1D6FFA04C(0);
      sub_1D6FFA06C();

      sub_1D72599CC();

LABEL_25:

      result = sub_1D6FFCA9C(v37, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      goto LABEL_26;
    }
  }

  else if (v31)
  {
    v60 = *(v6 + 8);
    v61 = v32;
    v38 = *(v6 + 80);
    v67 = *(v6 + 64);
    v68 = v38;
    v69 = *(v6 + 96);
    v39 = *(v6 + 16);
    v63 = *v6;
    v64 = v39;
    v40 = *(v6 + 48);
    v65 = *(v6 + 32);
    v66 = v40;
    swift_bridgeObjectRetain_n();
    v41 = v57;
    sub_1D6F5E8C4(a2, v57);
    if (v5)
    {
LABEL_15:
      result = swift_bridgeObjectRelease_n();
      if (!v26)
      {
        return result;
      }

      goto LABEL_19;
    }

    v50 = swift_allocObject();
    v51 = *(v6 + 32);
    *(v50 + 104) = *(v6 + 48);
    v52 = *(v6 + 80);
    *(v50 + 120) = *(v6 + 64);
    *(v50 + 136) = v52;
    v53 = *(v6 + 16);
    *(v50 + 56) = *v6;
    *(v50 + 72) = v53;
    v54 = v60;
    *(v50 + 16) = a2;
    *(v50 + 24) = v54;
    v55 = v61;
    *(v50 + 32) = v31;
    *(v50 + 40) = v55;
    *(v50 + 48) = v33;
    v56 = *(v6 + 96);
    *(v50 + 88) = v51;
    *(v50 + 152) = v56;
    *(v50 + 160) = a3;

    sub_1D5C5C4CC(v6, &v63);
    sub_1D6FFA04C(0);
    sub_1D6FFA06C();

    sub_1D72599CC();

    v37 = v41;
    goto LABEL_25;
  }

  result = sub_1D6FE4124(a1, a2, a3, *v6);
  if (v5)
  {
    if (!v26)
    {
      return result;
    }

LABEL_19:
    if ((*(v26 + 96) & 1) == 0)
    {
    }

LABEL_20:
    *(v26 + 88) = CACurrentMediaTime();
    *(v26 + 96) = 0;
  }

LABEL_26:
  if (v26)
  {
    if (*(v26 + 96) != 1)
    {
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D6FC10DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a1;
  v6 = *(v3 + 144);
  v7 = *(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
  v8 = *(v6 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8);
  v9 = v7;
  v10 = v8;
  if (v8 == 2)
  {
    v10 = *(v3 + 72);
    if (v10 == 2)
    {
      v11 = *MEMORY[0x1E69D7110];
      v12 = sub_1D7259D1C();
      (*(*(v12 - 8) + 104))(a3, v11, v12);
      goto LABEL_10;
    }

    v9 = *(v3 + 64);
    sub_1D62B5D30(v9, *(v3 + 72));
  }

  if (!v10)
  {
    v13 = MEMORY[0x1E69D7110];
    goto LABEL_9;
  }

  if (v10 == 1)
  {
    v13 = MEMORY[0x1E69D7130];
LABEL_9:
    v14 = *v13;
    v12 = sub_1D7259D1C();
    (*(*(v12 - 8) + 104))(a3, v14, v12);
    sub_1D5D5FDA4(v7, v8);
    goto LABEL_10;
  }

  v44 = v6;
  v45 = a3;
  v16 = *(v3 + 248);
  v17 = type metadata accessor for GroupLayoutContext();
  v18 = *(v17 + 20);
  LOBYTE(v59[0]) = *(a2 + *(v17 + 44));
  v67[0] = *(v3 + 184);
  v20 = *(v3 + 232);
  v19 = *(v3 + 240);
  v46 = v18;
  v47 = v19;
  v21 = __swift_project_boxed_opaque_existential_1((v3 + 208), v20);
  v22 = v9;
  v23 = v21;
  v24 = v7;
  v25 = v22;
  sub_1D5D5FDA4(v24, v8);
  sub_1D62B5D30(v25, v10);
  v26 = sub_1D6C33A98(a2, (a2 + v46), v59, v23, v67, v16, v20, v47);
  v27 = v48;
  MEMORY[0x1EEE9AC00](v26, v28);
  v43[2] = v3;
  v43[3] = v48;
  v29 = v68;
  v31 = sub_1D6FF854C(sub_1D6FF8C9C, v43, v30);
  v68 = v29;
  if (v29)
  {

    sub_1D5F33294(v25, v10);
    return sub_1D5F33294(v25, v10);
  }

  v32 = *(v3 + 80);
  v33 = *(v3 + 112);
  v64 = *(v3 + 96);
  v65 = v33;
  v34 = *(v3 + 112);
  v66 = *(v3 + 128);
  v35 = *(v3 + 16);
  v36 = *(v3 + 48);
  v60 = *(v3 + 32);
  v61 = v36;
  v37 = *(v3 + 48);
  v38 = *(v3 + 80);
  v62 = *(v3 + 64);
  v63 = v38;
  v39 = *(v3 + 16);
  v59[0] = *v3;
  v59[1] = v39;
  v56 = v64;
  v57 = v34;
  v58 = *(v3 + 128);
  v52 = v60;
  v53 = v37;
  v54 = v62;
  v55 = v32;
  v50 = v59[0];
  v51 = v35;
  v40 = v31;
  sub_1D5D65D5C(v59, &v49);
  v41 = sub_1D6E043D4(v44, &v50, v27, v40);

  v67[6] = v56;
  v67[7] = v57;
  v67[8] = v58;
  v67[2] = v52;
  v67[3] = v53;
  v67[4] = v54;
  v67[5] = v55;
  v67[0] = v50;
  v67[1] = v51;
  sub_1D5D68304(v67);
  sub_1D5FA3700(&v50, v41, v25 & 1, v10);

  sub_1D5F33294(v25, v10);
  sub_1D5F33294(v25, v10);
  LOBYTE(v40) = v50;
  v12 = sub_1D7259D1C();
  if (v40)
  {
    v42 = MEMORY[0x1E69D7130];
  }

  else
  {
    v42 = MEMORY[0x1E69D7110];
  }

  a3 = v45;
  (*(*(v12 - 8) + 104))(v45, *v42, v12);
LABEL_10:
  sub_1D7259D1C();
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_1D6FC14D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v407 = a2;
  v320 = a1;
  v294 = a3;
  v5 = sub_1D725A36C();
  v298 = *(v5 - 8);
  v299 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v300 = &v282[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D7259D1C();
  v307 = *(v8 - 8);
  v308 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v306 = &v282[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v305 = &v282[-v13];
  v318 = sub_1D725895C();
  v313 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318, v14);
  v16 = &v282[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v312 = type metadata accessor for GroupLayoutContext();
  v317 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312, v17);
  v296 = &v282[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v297 = &v282[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v303 = &v282[-v24];
  v301 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v319 = &v282[-v28];
  v29 = type metadata accessor for GroupLayoutBindingContext();
  v314 = *(v29 - 8);
  v315 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v304 = &v282[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v282[-v34];
  v36 = v3[29];
  v37 = v3[30];
  __swift_project_boxed_opaque_existential_1(v3 + 26, v36);
  *&v398 = 0;
  *(&v398 + 1) = 0xE000000000000000;
  sub_1D7263D4C();
  v38 = v3[18];
  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  v309 = v38;

  *&v398 = v40;
  *(&v398 + 1) = v39;
  MEMORY[0x1DA6F9910](0xD000000000000019, 0x80000001D73FA500);
  v41 = *v4;
  v310 = *(v4 + 8);
  v311 = v41;
  MEMORY[0x1DA6F9910]();
  (*(v37 + 16))(v398, *(&v398 + 1), v36, v37);

  sub_1D5BE4148(v320, v35, type metadata accessor for GroupLayoutBindingContext);
  v42 = v319;
  sub_1D5BE4148(v407, v319, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v43 = sub_1D725893C();
  v45 = v44;
  (*(v313 + 8))(v16, v318);
  *(&v399 + 1) = &type metadata for FormatGroupLayoutFactory;
  v295 = sub_1D5D6817C();
  *&v400 = v295;
  v46 = swift_allocObject();
  *&v398 = v46;
  sub_1D6FF78B0(v4, v46 + 16);
  type metadata accessor for GroupLayoutKey();
  v47 = swift_allocObject();
  v48 = *(v46 + 24);
  *&v397[0] = *(v46 + 16);
  *(&v397[0] + 1) = v48;
  *&v388 = 95;
  *(&v388 + 1) = 0xE100000000000000;
  *&v379 = 45;
  *(&v379 + 1) = 0xE100000000000000;
  v280 = sub_1D5BF4D9C();
  v281 = v280;
  v278 = MEMORY[0x1E69E6158];
  v279 = v280;
  *(v47 + 16) = sub_1D7263A6C();
  *(v47 + 24) = v49;
  v50 = (v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  *v50 = v43;
  v50[1] = v45;
  sub_1D5B68374(&v398, v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v51 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v302 = v35;
  sub_1D5BDAB74(v35, v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v314 + 56))(v47 + v51, 0, 1, v315);
  v52 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDAB74(v42, v47 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v53 = *(v317 + 56);
  v318 = v47;
  v54 = v312;
  v53(v47 + v52, 0, 1);
  __swift_destroy_boxed_opaque_existential_1(&v398);
  v313 = *(v4 + 200);
  v55 = sub_1D61881BC(2);
  v56 = 0;
  v57 = MEMORY[0x1E69E7CC0];
  v58 = MEMORY[0x1E69E7CC8];
  if (v55)
  {
    type metadata accessor for FormatNodeDebugData();
    v56 = swift_allocObject();
    type metadata accessor for FormatNodeDebugRecords();
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    v56[2] = v59;
    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    v56[3] = v60;
    type metadata accessor for FormatSourceMapCollection();
    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *(v61 + 24) = v58;
    v56[4] = v61;
  }

  type metadata accessor for FormatNodeStateData();
  v62 = swift_allocObject();
  v62[4] = v58;
  v62[5] = v58;
  v62[2] = v56;
  v62[3] = v58;
  type metadata accessor for FormatNamespace();
  v63 = swift_allocObject();
  swift_weakInit();
  *(v63 + 16) = 0u;
  *(v63 + 32) = 0u;
  *(v63 + 48) = v57;
  swift_weakAssign();
  v64 = *(v4 + 240);
  v315 = *(v4 + 248);
  v65 = v407;
  v66 = *(v54 + 20);
  LOBYTE(v397[0]) = *(v407 + *(v54 + 44));
  v398 = *(v4 + 184);
  v67 = *(v4 + 232);
  v68 = __swift_project_boxed_opaque_existential_1((v4 + 208), v67);
  v314 = v66;
  v69 = sub_1D6C33A98(v65, (v65 + v66), v397, v68, &v398, v315, v67, v64);
  v315 = v282;
  v70 = v320;
  v71 = *(v320 + 9);
  MEMORY[0x1EEE9AC00](v69, v72);
  v280 = v4;
  v281 = v70;

  v73 = v316;
  v74 = sub_1D6FF854C(sub_1D6FF8C9C, &v278, v71);
  if (v73)
  {

    v75 = v73;
LABEL_10:
    sub_1D5B68374(v4 + 208, &v398);
    v111 = *(&v399 + 1);
    v112 = v400;
    __swift_project_boxed_opaque_existential_1(&v398, *(&v399 + 1));
    *&v397[0] = 0;
    *(&v397[0] + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001FLL, 0x80000001D73FA520);
    if (*(v4 + 24))
    {
      v113 = *(v4 + 16);
      v114 = *(v4 + 24);
    }

    else
    {
      v114 = v310;

      v113 = v311;
    }

    MEMORY[0x1DA6F9910](v113, v114);

    MEMORY[0x1DA6F9910](0x3D726F727265202CLL, 0xE800000000000000);
    *&v388 = v75;
    sub_1D5B49474(0, &qword_1EDF3C5D0);
    sub_1D7263F9C();
    (*(v112 + 32))(*&v397[0], *(&v397[0] + 1), v111, v112);

    __swift_destroy_boxed_opaque_existential_1(&v398);
    return swift_willThrow();
  }

  v292 = v62;
  v293 = v63;
  v76 = v74;

  v77 = *(v4 + 96);
  v78 = *(v4 + 64);
  v393 = *(v4 + 80);
  v394 = v77;
  v79 = *(v4 + 96);
  v80 = *(v4 + 128);
  v395 = *(v4 + 112);
  v396 = v80;
  v81 = *(v4 + 32);
  v82 = *v4;
  v389 = *(v4 + 16);
  v390 = v81;
  v83 = *(v4 + 32);
  v84 = *(v4 + 64);
  v391 = *(v4 + 48);
  v392 = v84;
  v85 = *v4;
  v385 = v79;
  v386 = v395;
  v387 = *(v4 + 128);
  v388 = v85;
  v381 = v83;
  v382 = v391;
  v383 = v78;
  v384 = v393;
  v379 = v82;
  v380 = v389;
  sub_1D5D65D5C(&v388, v378);
  v86 = v309;
  v316 = v76;
  v87 = v69;
  v88 = sub_1D6E043D4(v309, &v379, v70, v76);
  v397[6] = v385;
  v397[7] = v386;
  v397[8] = v387;
  v397[2] = v381;
  v397[3] = v382;
  v397[4] = v383;
  v397[5] = v384;
  v397[0] = v379;
  v397[1] = v380;
  sub_1D5D68304(v397);
  v89 = *(v4 + 80);
  v90 = *(v4 + 112);
  v404 = *(v4 + 96);
  v405 = v90;
  v91 = *(v4 + 112);
  v406 = *(v4 + 128);
  v92 = *(v4 + 16);
  v93 = *(v4 + 48);
  v400 = *(v4 + 32);
  v401 = v93;
  v94 = *(v4 + 48);
  v95 = *(v4 + 80);
  v402 = *(v4 + 64);
  v403 = v95;
  v96 = *(v4 + 16);
  v398 = *v4;
  v399 = v96;
  v385 = v404;
  v386 = v91;
  v387 = *(v4 + 128);
  v381 = v400;
  v382 = v94;
  v383 = v402;
  v384 = v89;
  v97 = *(v4 + 296);
  v310 = *(&v398 + 1);
  v311 = v398;
  v379 = v398;
  v380 = v92;
  sub_1D5D65D5C(&v398, v378);
  v98 = sub_1D6E02CD8(v86, v97, &v379, v70, v88);
  v291 = v87;
  v312 = 0;
  v378[6] = v385;
  v378[7] = v386;
  v378[8] = v387;
  v378[2] = v381;
  v378[3] = v382;
  v378[4] = v383;
  v378[5] = v384;
  v378[0] = v379;
  v378[1] = v380;
  v99 = v98;
  sub_1D5D68304(v378);
  v288 = type metadata accessor for FormatVariableCollection();
  v100 = swift_allocObject();
  *(v100 + 16) = MEMORY[0x1E69E7CC8];
  v289 = type metadata accessor for FormatOptionCollection();
  swift_allocObject();
  v101 = sub_1D5D2488C(v99, v100);

  v102 = v305;
  sub_1D7259BFC();
  v104 = v306;
  v103 = v307;
  v105 = v308;
  (*(v307 + 32))(v306, v102, v308);
  v106 = (*(v103 + 88))(v104, v105);
  v107 = v106;
  v108 = *MEMORY[0x1E69D7130];
  if (v106 != *MEMORY[0x1E69D7130] && v106 != *MEMORY[0x1E69D7110])
  {
    (*(v307 + 8))(v306, v308);
  }

  v109 = v107 == v108;
  v377 = v109;
  v110 = v312;
  sub_1D6FEC600(&v377, v88);
  v75 = v110;
  if (v110)
  {

    goto LABEL_10;
  }

  v308 = v88;
  v290 = v101;
  v283 = v109;
  v312 = 0;
  v116 = sub_1D61881BC(1);
  v117 = *(v4 + 152);
  v118 = *(v4 + 160);
  v119 = *(v4 + 176);
  v310 = *(v4 + 168);
  v311 = v117;
  v120 = v291[3];
  v285 = v291[2];
  v121 = v291[4];
  v122 = v291[5];
  LODWORD(v286) = v116 & 1;
  v307 = v4;
  v124 = v291[6];
  v123 = v291[7];
  v284 = sub_1D72596FC();
  v305 = v120;
  v125 = v120;

  v287 = v124;

  v126 = v123;
  v306 = v118;

  v127 = v119;

  v128 = v285;

  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  LOBYTE(v371) = v286;
  BYTE1(v371) = v362;
  *(&v371 + 2) = v362;
  WORD3(v371) = WORD2(v362);
  *(&v371 + 1) = v311;
  *&v372 = v306;
  *(&v372 + 1) = v310;
  *&v373 = v127;
  *(&v373 + 1) = v128;
  *&v374 = v305;
  *(&v374 + 1) = v121;
  *&v375 = v122;
  *(&v375 + 1) = v287;
  v376 = v123;
  v129 = v304;
  sub_1D5BE4148(v320, v304, type metadata accessor for GroupLayoutBindingContext);
  v4 = v307;
  v130 = *(v307 + 304);
  v131 = sub_1D61881BC(0);
  v132 = *(v4 + 96);
  type metadata accessor for FormatNodeBinder(0);
  v133 = swift_allocObject();
  *(v133 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders) = MEMORY[0x1E69E7CC8];
  *(v133 + 16) = v130;
  sub_1D5BE4148(v129, v133 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext, type metadata accessor for GroupLayoutBindingContext);
  LODWORD(v310) = v131;
  v305 = v130;
  v311 = v132;
  if (v131)
  {
    type metadata accessor for FormatSlot();
    swift_allocObject();

    v134 = v316;

    v136 = sub_1D7251514(v135);
    v137 = v133;
    v139 = *(v136 + 16);
    v138 = *(v136 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v362 = v134;
    v141 = v139;
    v133 = v137;
    sub_1D6D7866C(v136, v141, v138, isUniquelyReferenced_nonNull_native);

    v142 = v362;
    v143 = v309;
    v144 = v319;
  }

  else
  {

    v143 = v309;
    v144 = v319;
    v142 = v316;
  }

  *(v133 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots) = v142;
  *(v133 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) = v310 & 1;
  v145 = v304;
  v146 = *(v304 + 8);
  v147 = v133;
  v148 = *(v304 + 12);

  sub_1D6FFC9A0(v145, type metadata accessor for GroupLayoutBindingContext);
  v149 = MEMORY[0x1E69E7CC8];
  *(v147 + 24) = MEMORY[0x1E69E7CC8];
  v286 = (v147 + 24);
  *(v147 + 32) = v149;
  *(v147 + 40) = v146;
  *(v147 + 48) = v142;
  *(v147 + 56) = v149;
  *(v147 + 64) = v149;
  *(v147 + 72) = v149;
  *(v147 + 80) = v148;
  *(v147 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy) = v311;
  v150 = v302;
  sub_1D5BE4148(v320, v302, type metadata accessor for GroupLayoutBindingContext);
  v151 = *(v150 + 64);

  sub_1D6FFC9A0(v150, type metadata accessor for GroupLayoutBindingContext);
  v311 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE4148(v407, v144, type metadata accessor for GroupLayoutContext);
  v152 = v292[2];
  sub_1D5B68374(v4 + 208, &v344);

  v153 = v293;

  sub_1D5CF6A5C(&v371, &v353);

  v154 = v290;

  v316 = sub_1D605B4E0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatNodeBinderContext();
  v155 = swift_allocObject();
  *(v155 + 16) = v143;
  *(v155 + 24) = v153;
  v156 = v374;
  *(v155 + 80) = v373;
  *(v155 + 96) = v156;
  *(v155 + 112) = v375;
  *(v155 + 128) = v376;
  v157 = v372;
  *(v155 + 48) = v371;
  *(v155 + 64) = v157;
  *(v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v154;
  *(v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v308;
  v158 = v319;
  v159 = v311;
  sub_1D5BE4148(v319, v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v311);
  *(v155 + 32) = 0;
  *(v155 + 40) = 0;
  *(v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v316;
  *(v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v152;
  sub_1D5B68374(&v344, v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
  v160 = v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
  *v160 = 0u;
  *(v160 + 16) = 0u;
  *(v160 + 32) = 0u;
  *(v160 + 48) = -1;
  v161 = (v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
  *v161 = MEMORY[0x1E69E7CC0];
  v161[1] = v151;
  v306 = v151;
  sub_1D5D27F7C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
  v316 = v162;
  v163 = v303;
  sub_1D5BE4148(v158, v303, v159);
  v164 = (*(v317 + 80) + 16) & ~*(v317 + 80);
  v165 = (v301 + v164 + 7) & 0xFFFFFFFFFFFFFFF8;
  v287 = *(v317 + 80);
  v166 = swift_allocObject();
  v301 = v164;
  sub_1D5BDAB74(v163, v166 + v164, type metadata accessor for GroupLayoutContext);
  v317 = v165;
  v167 = v290;
  *(v166 + v165) = v290;
  v304 = ((v165 + 15) & 0xFFFFFFFFFFFFFFF8);
  *&v304[v166] = v308;
  v168 = v167;
  swift_bridgeObjectRetain_n();

  v169 = sub_1D725A80C();
  __swift_destroy_boxed_opaque_existential_1(&v344);
  sub_1D6FFC9A0(v319, type metadata accessor for GroupLayoutContext);
  v170 = *(v4 + 96);
  v171 = *(v4 + 64);
  v367 = *(v4 + 80);
  v368 = v170;
  v172 = *(v4 + 96);
  v173 = *(v4 + 128);
  v369 = *(v4 + 112);
  v370 = v173;
  v174 = *(v4 + 32);
  v176 = *v4;
  v363 = *(v4 + 16);
  v175 = v363;
  v364 = v174;
  v177 = *(v4 + 32);
  v178 = *(v4 + 64);
  v365 = *(v4 + 48);
  v366 = v178;
  v179 = *v4;
  v359 = v172;
  v360 = v369;
  v361 = *(v4 + 128);
  v362 = v179;
  v355 = v177;
  v356 = v365;
  v357 = v171;
  v358 = v367;
  *(v155 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v169;
  v310 = *(&v362 + 1);
  v311 = v362;
  v353 = v176;
  v354 = v175;
  sub_1D5D65D5C(&v362, &v344);
  v180 = v312;
  FormatGroup.bind(binder:context:)(v147, v155);
  v75 = v180;
  if (v180)
  {

    sub_1D5D09C48(&v371);

    v350 = v359;
    v351 = v360;
    v352 = v361;
    v346 = v355;
    v347 = v356;
    v348 = v357;
    v349 = v358;
    v344 = v353;
    v345 = v354;
    sub_1D5D68304(&v344);
    goto LABEL_10;
  }

  v285 = v155;
  v312 = 0;
  v350 = v359;
  v351 = v360;
  v352 = v361;
  v346 = v355;
  v347 = v356;
  v348 = v357;
  v349 = v358;
  v344 = v353;
  v345 = v354;
  sub_1D5D68304(&v344);
  v181 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
  swift_beginAccess();
  v284 = v147;
  v182 = v302;
  sub_1D5BE4148(v147 + v181, v302, type metadata accessor for GroupLayoutBindingContext);
  sub_1D62F3514(v182);
  sub_1D6FFC9A0(v182, type metadata accessor for GroupLayoutBindingContext);
  v183 = v286;
  swift_beginAccess();
  v184 = *(v183 + 1);
  v340 = *v183;
  v341 = v184;
  v185 = *(v183 + 3);
  v342 = *(v183 + 2);
  v343 = v185;
  v286 = type metadata accessor for GroupLayoutContext;
  v186 = v319;
  sub_1D5BE4148(v407, v319, type metadata accessor for GroupLayoutContext);
  v187 = swift_allocObject();
  v188 = v303;
  v189 = v187;
  *(v187 + 16) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v190 = *(v168 + 24);
  v191 = swift_allocObject();
  *(v191 + 16) = v189;
  *(v191 + 24) = v190;
  sub_1D6B154F0(&v340, &v331);

  v192 = v309;

  sub_1D5CF6A5C(&v371, &v331);
  sub_1D6B154F0(&v340, &v331);

  v193 = MEMORY[0x1E69E7CC0];
  v302 = sub_1D605B4E0(MEMORY[0x1E69E7CC0]);
  v194 = v188;
  v195 = v188;
  v196 = v286;
  sub_1D5BE4148(v186, v195, v286);
  *&v333 = 0;
  v331 = 0u;
  v332 = 0u;
  v320 = sub_1D605B7D8(v193);
  type metadata accessor for FormatNodeContext();
  v197 = swift_allocObject();
  sub_1D5BE4148(v194, v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext, v196);
  v198 = v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config;
  v199 = v374;
  *(v198 + 32) = v373;
  *(v198 + 48) = v199;
  *(v198 + 64) = v375;
  *(v198 + 80) = v376;
  v200 = v372;
  *v198 = v371;
  *(v198 + 16) = v200;
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) = v192;
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace) = v293;
  v201 = (v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindings);
  v202 = v341;
  *v201 = v340;
  v201[1] = v202;
  v203 = v343;
  v201[2] = v342;
  v201[3] = v203;
  v204 = v308;
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_selectors) = v308;
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options) = v191;
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_blocks) = v302;
  v205 = MEMORY[0x1E69E6720];
  sub_1D6FF9060(&v331, v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItem, &qword_1EDF34AB8, MEMORY[0x1E69E6720]);
  v206 = (v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack);
  v207 = v306;
  *v206 = MEMORY[0x1E69E7CC0];
  v206[1] = v207;
  v208 = (v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundItemAuxiliary);
  v208[1] = 0u;
  v208[2] = 0u;
  *v208 = 0u;
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_boundStateMachines) = v320;
  v209 = (v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_slotIdentifier);
  *v209 = 0;
  v209[1] = 0;
  v210 = v297;
  sub_1D5BE4148(v194, v297, v196);
  v211 = v304;
  v212 = swift_allocObject();
  sub_1D5BDAB74(v210, v212 + v301, type metadata accessor for GroupLayoutContext);
  *(v212 + v317) = v191;
  *&v211[v212] = v204;

  v213 = sub_1D725A80C();
  sub_1D6FF90CC(&v331, &qword_1EDF34AB8, v205);
  sub_1D6FFC9A0(v303, type metadata accessor for GroupLayoutContext);
  sub_1D6FFC9A0(v319, type metadata accessor for GroupLayoutContext);
  *(v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_lazyContextLayoutOptions) = v213;
  v214 = (v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_itemIdentifier);
  *v214 = 0;
  v214[1] = 0;
  v320 = v197;
  v215 = (v197 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_resizeGroupIdentifier);
  *v215 = 0;
  v215[1] = 0;
  v216 = *(v4 + 88);
  v217 = *(v216 + 16);
  if (v217)
  {
    *&v328 = MEMORY[0x1E69E7CC0];

    sub_1D69979A0(0, v217, 0);
    v218 = v328;
    v219 = v217 - 1;
    for (i = 32; ; i += 64)
    {
      v221 = v216;
      v222 = *(v216 + i);
      v223 = *(v216 + i + 16);
      v224 = *(v216 + i + 48);
      v333 = *(v216 + i + 32);
      v334 = v224;
      v331 = v222;
      v332 = v223;
      v225 = swift_allocObject();
      v226 = *(v216 + i + 48);
      v228 = *(v216 + i);
      v227 = *(v216 + i + 16);
      *(v225 + 48) = *(v216 + i + 32);
      *(v225 + 64) = v226;
      *(v225 + 16) = v228;
      *(v225 + 32) = v227;
      sub_1D5C8C900(&v331, v322);
      *&v328 = v218;
      v230 = *(v218 + 16);
      v229 = *(v218 + 24);
      if (v230 >= v229 >> 1)
      {
        sub_1D69979A0((v229 > 1), v230 + 1, 1);
        v218 = v328;
      }

      *(v218 + 16) = v230 + 1;
      *(v218 + 8 * v230 + 32) = v225 | 0x8000000000000000;
      if (!v219)
      {
        break;
      }

      --v219;
      v216 = v221;
    }

    v4 = v307;
  }

  else
  {
    v218 = MEMORY[0x1E69E7CC0];
  }

  v231 = v292;
  v232 = sub_1D6B0BBC4(v218);

  type metadata accessor for FormatNodeCache();
  v233 = swift_allocObject();
  v234 = MEMORY[0x1E69E7CC8];
  *(v233 + 16) = MEMORY[0x1E69E7CC8];
  *(v233 + 24) = v234;
  *(v233 + 32) = v234;
  *(v233 + 40) = v234;
  *(v233 + 48) = v234;
  *(v233 + 56) = v234;
  *(v233 + 64) = 0;
  sub_1D5B68374(v4 + 208, &v331);
  type metadata accessor for FormatNodeState();
  v235 = swift_allocObject();
  v235[2] = v318;
  v235[3] = v231;
  v235[4] = v233;
  sub_1D5B63F14(&v331, (v235 + 5));
  v235[10] = v305;

  v236 = v300;
  sub_1D7259BFC();
  v237 = (*(v298 + 104))(v236, *MEMORY[0x1E69D7370], v299);
  v320 = v282;
  MEMORY[0x1EEE9AC00](v237, v238);
  v278 = v4;
  v279 = v232;
  v280 = v235;
  sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v239 = v312;
  v240 = sub_1D725A4EC();
  if (v239)
  {

    sub_1D5D09C48(&v371);

    sub_1D6EBD64C(&v340);

    v75 = v239;
    goto LABEL_10;
  }

  v319 = v232;
  v312 = 0;
  v317 = v240;
  v329 = &type metadata for FormatGroupLayoutFactory;
  v330 = v295;
  *&v328 = swift_allocObject();
  sub_1D6FF78B0(v4, v328 + 16);
  sub_1D5BE4148(v407, v296, type metadata accessor for GroupLayoutContext);
  v241 = *(v4 + 112);
  v337 = *(v4 + 96);
  v338 = v241;
  v339 = *(v4 + 128);
  v242 = *(v4 + 48);
  v333 = *(v4 + 32);
  v334 = v242;
  v243 = *(v4 + 80);
  v335 = *(v4 + 64);
  v336 = v243;
  v244 = *(v4 + 16);
  v331 = *v4;
  v332 = v244;
  v245 = v235[3];
  sub_1D5B68374(v4 + 208, v327);
  sub_1D5B68374(v4 + 256, v326);
  v246 = *(v4 + 160);
  v316 = *(v4 + 152);
  v247 = *(v4 + 168);
  v310 = *(v4 + 176);
  v311 = v247;
  v248 = v340;
  v249 = *(v340 + 16);
  v308 = v235;
  v314 = v246;
  if (v249)
  {
    v407 = sub_1D5E23FF4(v249, 0);
    v250 = sub_1D5E25CD8(v323, (v407 + 4), v249, v248);
    v305 = v323[1];
    v306 = v323[0];
    v303 = v324;
    v304 = v323[2];
    v302 = v325;

    sub_1D5D65D5C(&v331, v322);

    result = sub_1D5B87E38();
    if (v250 != v249)
    {
      __break(1u);
      return result;
    }

    sub_1D6EBD64C(&v340);
    v251 = v407;
  }

  else
  {

    sub_1D5D65D5C(&v331, v322);

    sub_1D6EBD64C(&v340);
    v251 = MEMORY[0x1E69E7CC0];
  }

  v307 = v245;
  v252 = v251[2];
  if (v252)
  {
    v321 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v252, 0);
    v253 = v321;
    v407 = v251;
    v254 = (v251 + 4);
    do
    {
      sub_1D6FF9060(v254, v322, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      sub_1D5B68374(v322, v323);
      sub_1D6FF90CC(v322, &qword_1EDF29608, type metadata accessor for FormatNodeBindingItem);
      v321 = v253;
      v256 = *(v253 + 16);
      v255 = *(v253 + 24);
      if (v256 >= v255 >> 1)
      {
        sub_1D5BD0BA0((v255 > 1), v256 + 1, 1);
      }

      v257 = v324;
      v258 = v325;
      v259 = __swift_mutable_project_boxed_opaque_existential_1(v323, v324);
      v260 = MEMORY[0x1EEE9AC00](v259, v259);
      v262 = &v282[-((v261 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v263 + 16))(v262, v260);
      sub_1D5BD0BE4(v256, v262, &v321, v257, v258);
      __swift_destroy_boxed_opaque_existential_1(v323);
      v253 = v321;
      v254 += 104;
      --v252;
    }

    while (v252);

    sub_1D5D09C48(&v371);
  }

  else
  {

    sub_1D5D09C48(&v371);
    v253 = MEMORY[0x1E69E7CC0];
  }

  v264 = v309;
  v265 = type metadata accessor for FormatGroupLayoutFactory.Bound();
  v266 = v294;
  v294[3] = v265;
  v266[4] = sub_1D6FFA0A0(&qword_1EDF260F8, type metadata accessor for FormatGroupLayoutFactory.Bound);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v266);
  *boxed_opaque_existential_1 = v318;
  sub_1D5B63F14(&v328, (boxed_opaque_existential_1 + 1));
  sub_1D5BDAB74(v296, boxed_opaque_existential_1 + v265[6], type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + v265[7]) = v317;
  v268 = (boxed_opaque_existential_1 + v265[8]);
  *v268 = v331;
  v269 = v336;
  v270 = v337;
  v271 = v339;
  v268[7] = v338;
  v268[8] = v271;
  v268[5] = v269;
  v268[6] = v270;
  v272 = v332;
  v273 = v333;
  v274 = v335;
  v268[3] = v334;
  v268[4] = v274;
  v268[1] = v272;
  v268[2] = v273;
  *(boxed_opaque_existential_1 + v265[9]) = v264;
  *(boxed_opaque_existential_1 + v265[10]) = v307;
  *(boxed_opaque_existential_1 + v265[11]) = v313;
  sub_1D5B63F14(v327, boxed_opaque_existential_1 + v265[12]);
  *(boxed_opaque_existential_1 + v265[13]) = v283;
  result = sub_1D5B63F14(v326, boxed_opaque_existential_1 + v265[14]);
  v275 = (boxed_opaque_existential_1 + v265[15]);
  v276 = v314;
  *v275 = v316;
  v275[1] = v276;
  v277 = v310;
  v275[2] = v311;
  v275[3] = v277;
  *(boxed_opaque_existential_1 + v265[16]) = v253;
  return result;
}

uint64_t sub_1D6FC357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v73 = a7;
  v72 = a6;
  v71 = a5;
  v70[1] = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v74 = *(v12 - 8);
  v75 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v76 = (v70 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v81 = v70 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v79 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v70 - v24;
  v26 = type metadata accessor for FormatNodeStateData.Data();
  v77 = *(v26 - 8);
  v78 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FormatAdMetricsData();
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v84 = v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = (v70 - v35);
  v91 = a1;
  swift_beginAccess();
  v37 = v8[2];
  v38 = v8[3];
  v80 = v8;

  v39 = sub_1D6E8DD40(v37, v38);
  v41 = v40;

  if (*(*(a3 + 24) + 16))
  {
    *v36 = a2;
    v42 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v42 - 8) + 56))(v36, 0, 1, v42);
    swift_beginAccess();

    sub_1D6D60828(v36, v39, v41);
    swift_endAccess();
  }

  v82 = v39;
  v43 = v41;
  v45 = v83;
  v44 = v84;
  sub_1D70D12B8(a2, v84);
  if (v45)
  {
  }

  v83 = a2;
  sub_1D5BE4148(v44, v29, type metadata accessor for FormatAdMetricsData);
  v47 = v78;
  swift_storeEnumTagMultiPayload();
  sub_1D5BE4148(v29, v25, type metadata accessor for FormatNodeStateData.Data);
  (*(v77 + 56))(v25, 0, 1, v47);
  v48 = MEMORY[0x1E69E6720];
  v49 = v79;
  sub_1D6FFC87C(v25, v79, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();

  sub_1D6D60A18(v49, v82, v43);
  swift_endAccess();
  sub_1D6FFCA9C(v25, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v48, sub_1D5D27F7C);
  sub_1D6FFC9A0(v29, type metadata accessor for FormatNodeStateData.Data);
  v50 = v80;
  if (v80[12])
  {
    v52 = v80[16];
    v51 = v80[17];
    v54 = v80[14];
    v53 = v80[15];
    v55 = v80;
    v56 = v80[13];
    v85 = v80[12];
    v86 = v56;
    v87 = v54;
    v88 = v53;
    v89 = v52;
    v90 = v51;

    sub_1D5DEA234(v52);

    v57 = v81;
    v58 = v83;
    sub_1D68687FC(v83, v81);
    v59 = v89;
    v79 = v90;

    v60 = v57;

    sub_1D5CBF568(v59);

    v61 = 0;
    v50 = v55;
  }

  else
  {
    v60 = v81;
    v58 = v83;
    v61 = 1;
  }

  v62 = sub_1D7259B8C();
  (*(*(v62 - 8) + 56))(v60, v61, 1, v62);
  swift_getKeyPath();
  v85 = v50[6];
  v63 = v85;
  v64 = v43;

  sub_1D5C82CD8(v63);
  v65 = v76;
  v66 = v82;
  sub_1D5BEB9F4(v58, v82, v64, v76);
  sub_1D5C92A8C(v85);
  swift_beginAccess();
  v67 = v50[8];

  sub_1D618EFB4(v58, v67);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v68 = swift_allocObject();
  v68[2] = v66;
  v68[3] = v64;
  v68[4] = v58;
  v68[5] = v50;
  v71(0);
  v72();
  v69 = v81;
  sub_1D7259B1C();

  (*(v74 + 8))(v65, v75);
  sub_1D6FFCA9C(v69, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  return sub_1D6FFC9A0(v84, type metadata accessor for FormatAdMetricsData);
}

__n128 sub_1D6FC3FA8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 112);
  v32[6] = *(v2 + 96);
  v32[7] = v6;
  v33 = *(v2 + 128);
  v7 = *(v2 + 48);
  v32[2] = *(v2 + 32);
  v32[3] = v7;
  v8 = *(v2 + 80);
  v32[4] = *(v2 + 64);
  v32[5] = v8;
  v9 = *(v2 + 16);
  v32[0] = *v2;
  v32[1] = v9;
  v10 = sub_1D6011234(v32);
  v11 = sub_1D5D756B8(v32);
  if (v10 == 1)
  {
    v12 = *(v11 + 8);
    sub_1D5FA6CB0(a1, *v11, v22);
    if (v3)
    {
      return result;
    }

    *&v23 = *&v22[0];
    BYTE8(v23) = v12;
    sub_1D6011240(&v23);
  }

  else
  {
    v14 = *(v11 + 80);
    v38 = *(v11 + 64);
    v39 = v14;
    v15 = *(v11 + 112);
    v40 = *(v11 + 96);
    v41 = v15;
    v16 = *(v11 + 16);
    v34 = *v11;
    v35 = v16;
    v17 = *(v11 + 48);
    v36 = *(v11 + 32);
    v37 = v17;
    v18 = *(v11 + 128);
    result.n128_f64[0] = sub_1D6FD1B60(a1, v22);
    if (v3)
    {
      return result;
    }

    v27 = v22[4];
    v28 = v22[5];
    v29 = v22[6];
    v30 = v22[7];
    v23 = v22[0];
    v24 = v22[1];
    v25 = v22[2];
    v26 = v22[3];
    v31 = v18;
    sub_1D601128C(&v23);
  }

  v19 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v19;
  *(a2 + 128) = v31;
  v20 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v20;
  v21 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v21;
  result = v24;
  *a2 = v23;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_1D6FC40FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data();
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  v48 = sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v50 = v141;
  v136 = v140;
  v137 = v141;
  v51 = v142[0];
  v138[0] = v142[0];
  v52 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v50;
  v27[2] = v51;
  *(v27 + 41) = v52;
  v53 = v119;
  swift_storeEnumTagMultiPayload();
  v54 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v54, 0, 1, v53);
  v55 = MEMORY[0x1E69E6720];
  v56 = v120;
  sub_1D6FFC87C(v54, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v57 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v56, v123, v57);
  swift_endAccess();
  sub_1D6FFCA9C(v54, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v55, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v58 = 0;
  v59 = v125;
  if (v125)
  {
    v60 = *(v125 + 88);
    v61 = v126;
    if (v60 <= 0xFD)
    {
      if ((v60 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v59 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v62 = &unk_1F50F4218;
      }

      else
      {
        v62 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v62, v60);
        v59 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v62 = 0;
    }

    if (*(v59 + 176) != 254)
    {
      v58 = *(v59 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v62 = 0;
    v61 = v126;
  }

  v65 = *(v110 + v40);
  v66 = v110;
  v67 = (v65 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = *(v61 + 64);

  v71 = v70;
  v72 = v109;
  v73 = sub_1D6FBAE48(v71, v66, v68, v69);
  if (v72)
  {

    sub_1D619CBDC(&v136);
  }

  v74 = v73;

  if (v74)
  {

    v75 = sub_1D6A45640(v66);

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v62;
  if (*(v61 + 136))
  {
    v78 = *(v61 + 168);
    v77 = *(v61 + 176);
    v80 = *(v61 + 152);
    v79 = *(v61 + 160);
    v81 = *(v61 + 144);
    *&v133 = *(v61 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v66, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);
    }

    v120 = v74;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v74;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v61 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v66, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    return sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v61 + 48);

    v93 = sub_1D618EFB4(v66, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext() + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v61 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v58;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D5EB5368(0);
    sub_1D6FF91E8();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    return sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

unint64_t sub_1D6FC5100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data();
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  v48 = sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v50 = v141;
  v136 = v140;
  v137 = v141;
  v51 = v142[0];
  v138[0] = v142[0];
  v52 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v50;
  v27[2] = v51;
  *(v27 + 41) = v52;
  v53 = v119;
  swift_storeEnumTagMultiPayload();
  v54 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v54, 0, 1, v53);
  v55 = MEMORY[0x1E69E6720];
  v56 = v120;
  sub_1D6FFC87C(v54, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v57 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v56, v123, v57);
  swift_endAccess();
  sub_1D6FFCA9C(v54, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v55, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v58 = 0;
  v59 = v125;
  if (v125)
  {
    v60 = *(v125 + 88);
    v61 = v126;
    if (v60 <= 0xFD)
    {
      if ((v60 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v59 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v62 = &unk_1F50F4240;
      }

      else
      {
        v62 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v62, v60);
        v59 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v62 = 0;
    }

    if (*(v59 + 176) != 254)
    {
      v58 = *(v59 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v62 = 0;
    v61 = v126;
  }

  v65 = *(v110 + v40);
  v66 = v110;
  v67 = (v65 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = *(v61 + 64);

  v71 = v70;
  v72 = v109;
  v73 = sub_1D6FBAE48(v71, v66, v68, v69);
  if (v72)
  {

    sub_1D619CBDC(&v136);
  }

  v74 = v73;

  if (v74)
  {

    v75 = sub_1D6A45640(v66);

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v62;
  if (*(v61 + 136))
  {
    v78 = *(v61 + 168);
    v77 = *(v61 + 176);
    v80 = *(v61 + 152);
    v79 = *(v61 + 160);
    v81 = *(v61 + 144);
    *&v133 = *(v61 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v66, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);
    }

    v120 = v74;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v74;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v61 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v66, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    return sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v61 + 48);

    v93 = sub_1D618EFB4(v66, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext() + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v61 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v58;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D5EB563C(0);
    sub_1D6FF92D8();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    return sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

unint64_t sub_1D6FC6104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data();
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  v48 = sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v50 = v141;
  v136 = v140;
  v137 = v141;
  v51 = v142[0];
  v138[0] = v142[0];
  v52 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v50;
  v27[2] = v51;
  *(v27 + 41) = v52;
  v53 = v119;
  swift_storeEnumTagMultiPayload();
  v54 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v54, 0, 1, v53);
  v55 = MEMORY[0x1E69E6720];
  v56 = v120;
  sub_1D6FFC87C(v54, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v57 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v56, v123, v57);
  swift_endAccess();
  sub_1D6FFCA9C(v54, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v55, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v58 = 0;
  v59 = v125;
  if (v125)
  {
    v60 = *(v125 + 88);
    v61 = v126;
    if (v60 <= 0xFD)
    {
      if ((v60 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v59 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v62 = &unk_1F50F4268;
      }

      else
      {
        v62 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v62, v60);
        v59 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v62 = 0;
    }

    if (*(v59 + 176) != 254)
    {
      v58 = *(v59 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v62 = 0;
    v61 = v126;
  }

  v65 = *(v110 + v40);
  v66 = v110;
  v67 = (v65 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = *(v61 + 64);

  v71 = v70;
  v72 = v109;
  v73 = sub_1D6FBAE48(v71, v66, v68, v69);
  if (v72)
  {

    sub_1D619CBDC(&v136);
  }

  v74 = v73;

  if (v74)
  {

    v75 = sub_1D6A45640(v66);

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v62;
  if (*(v61 + 136))
  {
    v78 = *(v61 + 168);
    v77 = *(v61 + 176);
    v80 = *(v61 + 152);
    v79 = *(v61 + 160);
    v81 = *(v61 + 144);
    *&v133 = *(v61 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v66, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);
    }

    v120 = v74;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v74;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v61 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v66, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    return sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v61 + 48);

    v93 = sub_1D618EFB4(v66, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext() + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v61 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v58;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D5EB5290(0);
    sub_1D6FF9338();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    return sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

unint64_t sub_1D6FC7108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D6FF9BD0();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v113 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v114 = *(v11 - 8);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = (&v108 - v13);
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v117 = &v108 - v17;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  *&v121 = &v108 - v23;
  v24 = type metadata accessor for FormatNodeStateData.Data();
  v118 = *(v24 - 8);
  v119 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = (&v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (&v108 - v30);
  v143 = a1;
  swift_beginAccess();

  v124 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);
  v126 = v4;

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  v122 = *(a3 + 24);
  if (v122[2])
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v123 = v36;
  v144 = v38;
  v40 = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory;
  v41 = (*(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];
  v44 = v126;
  v45 = *(v126 + 56);

  v46 = v45;
  v47 = v125;
  v48 = sub_1D6FBDFD4(v46, v33, v42, v43);
  if (v47)
  {
  }

  v125 = v48;
  v110 = v33;

  v139 = *(v44 + 72);

  sub_1D7002EAC(v124, &v140);
  v109 = 0;

  v50 = v141;
  v136 = v140;
  v137 = v141;
  v51 = v142[0];
  v138[0] = v142[0];
  v52 = *(v142 + 9);
  *(v138 + 9) = *(v142 + 9);
  *v27 = v140;
  v27[1] = v50;
  v27[2] = v51;
  *(v27 + 41) = v52;
  v53 = v119;
  swift_storeEnumTagMultiPayload();
  v54 = *&v121;
  sub_1D5BE4148(v27, *&v121, type metadata accessor for FormatNodeStateData.Data);
  (*(v118 + 56))(v54, 0, 1, v53);
  v55 = MEMORY[0x1E69E6720];
  v56 = v120;
  sub_1D6FFC87C(v54, v120, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v57 = v144;

  sub_1D619CB80(&v136, &v133);
  sub_1D6D60A18(v56, v123, v57);
  swift_endAccess();
  sub_1D6FFCA9C(v54, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v55, sub_1D5D27F7C);
  sub_1D6FFC9A0(v27, type metadata accessor for FormatNodeStateData.Data);
  v58 = 0;
  v59 = v125;
  if (v125)
  {
    v60 = *(v125 + 88);
    v61 = v126;
    if (v60 <= 0xFD)
    {
      if ((v60 & 0x80) != 0)
      {
        v145.origin.x = 0.0;
        v145.origin.y = 0.0;
        v145.size.width = 0.0;
        v145.size.height = 0.0;
        Height = CGRectGetHeight(v145);
        v146.origin.x = 0.0;
        v146.origin.y = 0.0;
        v146.size.width = 0.0;
        v146.size.height = 0.0;
        Width = CGRectGetWidth(v146);
        v59 = v125;
        if (Width >= Height)
        {
          Width = Height;
        }

        v121 = Width * 0.5;
        v62 = &unk_1F50F4290;
      }

      else
      {
        v62 = *(v125 + 80);
        v121 = *(v125 + 72);
        sub_1D5ED34C4(*&v121, v62, v60);
        v59 = v125;
      }
    }

    else
    {
      v121 = 0.0;
      v62 = 0;
    }

    if (*(v59 + 176) != 254)
    {
      v58 = *(v59 + 96);
    }
  }

  else
  {
    v121 = 0.0;
    v62 = 0;
    v61 = v126;
  }

  v65 = *(v110 + v40);
  v66 = v110;
  v67 = (v65 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = *(v61 + 64);

  v71 = v70;
  v72 = v109;
  v73 = sub_1D6FBAE48(v71, v66, v68, v69);
  if (v72)
  {

    sub_1D619CBDC(&v136);
  }

  v74 = v73;

  if (v74)
  {

    v75 = sub_1D6A45640(v66);

    if (v75)
    {
      swift_beginAccess();

      v76 = v144;

      sub_1D6D60C08(v75, v123, v76);
      swift_endAccess();
    }
  }

  v109 = 0;
  v122 = v62;
  if (*(v61 + 136))
  {
    v78 = *(v61 + 168);
    v77 = *(v61 + 176);
    v80 = *(v61 + 152);
    v79 = *(v61 + 160);
    v81 = *(v61 + 144);
    *&v133 = *(v61 + 136);
    *(&v133 + 1) = v81;
    *&v134 = v80;
    *(&v134 + 1) = v79;
    *&v135[0] = v78;
    *(&v135[0] + 1) = v77;

    sub_1D5DEA234(v78);

    v82 = v109;
    sub_1D68687FC(v66, v117);
    v109 = v82;
    if (v82)
    {

      sub_1D619CBDC(&v136);
      v83 = *&v135[0];

      sub_1D5CBF568(v83);
    }

    v120 = v74;
    v85 = *&v135[0];

    sub_1D5CBF568(v85);

    v84 = 0;
  }

  else
  {
    v120 = v74;
    v84 = 1;
  }

  v86 = sub_1D7259B8C();
  v87 = v117;
  (*(*(v86 - 8) + 56))(v117, v84, 1, v86);
  KeyPath = swift_getKeyPath();
  *&v133 = *(v61 + 32);
  v89 = v133;
  v90 = v144;

  sub_1D5C82CD8(v89);
  v91 = v109;
  sub_1D5BEB9F4(v66, v123, v90, v116);
  if (v91)
  {
    sub_1D6FFCA9C(v87, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);

    swift_bridgeObjectRelease_n();

    sub_1D619CBDC(&v136);
    return sub_1D5C92A8C(v133);
  }

  else
  {
    v119 = KeyPath;
    sub_1D5C92A8C(v133);
    swift_beginAccess();
    v92 = *(v61 + 48);

    v93 = sub_1D618EFB4(v66, v92);
    v109 = 0;
    v118 = v93;

    v94 = v124 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_layoutContext;
    v132 = *(*(*(v94 + *(type metadata accessor for GroupLayoutContext() + 40)) + 24) + 24);
    v133 = v136;
    v134 = v137;
    v135[0] = v138[0];
    *(v135 + 9) = *(v138 + 9);
    v95 = *(v61 + 128);
    v96 = v144;
    if (v122)
    {
      v97 = v122[2];
      v98 = v123;
      if (v97)
      {
        v99 = 0;
        v100 = 32;
        do
        {
          v101 = qword_1D7380240[*(v122 + v100)];
          if ((v101 & ~v99) == 0)
          {
            v101 = 0;
          }

          v99 |= v101;
          ++v100;
          --v97;
        }

        while (v97);
        sub_1D619CB80(&v136, v127);
      }

      else
      {
        sub_1D619CB80(&v136, v127);

        v99 = 0;
      }

      v102 = v121;
    }

    else
    {
      sub_1D619CB80(&v136, v127);

      v102 = 0.0;
      v99 = -1;
      v98 = v123;
    }

    v127[0] = v95;
    v128 = v58;
    v129 = v102;
    v130 = v99;
    v131 = 0;
    sub_1D6FF9DCC(0, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
    sub_1D7259D2C();
    v103 = swift_allocObject();
    v103[2] = v98;
    v103[3] = v96;
    v105 = v125;
    v104 = v126;
    v103[4] = v110;
    v103[5] = v104;
    v103[6] = v105;
    sub_1D6FFA04C(0);
    sub_1D6FFA06C();

    v106 = v116;
    v107 = v113;
    sub_1D725998C();

    sub_1D619CBDC(&v136);
    (*(v111 + 8))(v107, v112);
    (*(v114 + 8))(v106, v115);
    return sub_1D6FFCA9C(v117, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FC810C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D5EB5368(0);
    v23 = a1;
    sub_1D6FF91E8();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  return sub_1D6FBF7BC(a1, a2, a3);
}

uint64_t sub_1D6FC8388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D5EB563C(0);
    v23 = a1;
    sub_1D6FF92D8();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  return sub_1D6FBFE04(a1, a2, a3);
}

uint64_t sub_1D6FC8604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D5EB5290(0);
    v23 = a1;
    sub_1D6FF9338();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  return sub_1D6FC044C(a1, a2, a3);
}

uint64_t sub_1D6FC8880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v29 = a1;
  v12 = *(a3 + 80);
  if (v12)
  {
    v13 = *(v3 + 48);
    v14 = *(v3 + 56);
    *&v26 = v13;
    *(&v26 + 1) = v14;
    v27 = *(v4 + 32);
    v28 = 0;
    v15 = sub_1D7259B8C();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    v17 = v27;
    *(v16 + 24) = v26;
    *(v16 + 40) = v17;
    *(v16 + 56) = v28;
    swift_retain_n();

    sub_1D6FF9F40(&v26, v24);
    sub_1D6FFA04C(0);
    v23 = a1;
    sub_1D6FFA06C();
    a1 = v23;
    sub_1D7259ACC();

    sub_1D6FF9F9C(&v26);

    sub_1D6FFCA9C(v11, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }

  v18 = *(v4 + 144);
  v24[4] = *(v4 + 128);
  v24[5] = v18;
  v25 = *(v4 + 160);
  v19 = *(v4 + 80);
  v24[0] = *(v4 + 64);
  v24[1] = v19;
  v20 = *(v4 + 112);
  v24[2] = *(v4 + 96);
  v24[3] = v20;
  return sub_1D6FC0A94(a1, a2, a3);
}

uint64_t sub_1D6FC8AFC(uint64_t a1)
{
  v3 = v1;
  v57 = *v1;
  swift_beginAccess();
  v5 = v1[3];
  v71 = v1[2];
  v6 = v1[5];
  v58 = v1[4];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (v8)
  {
    *&v60 = a1;
    v54 = a1;
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v56 = v5;

    v10 = v9();
    v11 = sub_1D5E02AFC(v10, v8);
    if (v2)
    {

LABEL_14:

      return v3;
    }

    v17 = v11;
    v55 = v7;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24();
    v12 = swift_allocObject();
    v14 = v12;
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    v5 = v56;
    a1 = v54;
    if (!*(v3 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {

    v55 = v7;

    v14 = 0;
    if (!*(v3 + 64))
    {
LABEL_8:
      v53 = v14;
      v16 = 0;
      goto LABEL_10;
    }
  }

  *&v60 = a1;
  MEMORY[0x1EEE9AC00](v12, v13);
  v46[2] = &v60;
  v16 = sub_1D5EC9CB8(sub_1D6FFCC1C, v46, v15);
  if (!v2)
  {
    v53 = v14;
LABEL_10:
    v56 = v16;
    v19 = *(v3 + 72);
    v20 = *(v3 + 80);
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v52 = *(v3 + 108);
    v24 = *(v3 + 112);
    v25 = *(v3 + 120);
    v26 = *(v3 + 128);
    v27 = *(v3 + 136);
    v50 = *(v3 + 152);
    v51 = v27;
    v49 = *(v3 + 168);
    v48 = *(v3 + 176);
    v54 = v19;
    if (v48 == 254)
    {
      v47 = v2;
      sub_1D5ED34B0(v19, v20, v21);
    }

    else
    {
      sub_1D5ED34B0(v19, v20, v21);
      sub_1D5FA6CB0(a1, v26, &v60);
      if (v2)
      {

        sub_1D5ED348C(v54, v20, v21);
        goto LABEL_14;
      }

      v47 = 0;
      v26 = v60;
    }

    v28 = *(v3 + 232);
    v29 = *(v3 + 248);
    v30 = *(v3 + 200);
    v60 = *(v3 + 184);
    v61 = v30;
    v62 = *(v3 + 216);
    v63 = v28;
    v31 = *(v3 + 296);
    v32 = *(v3 + 328);
    v68 = *(v3 + 312);
    v69 = v32;
    v33 = *(v3 + 264);
    v34 = *(v3 + 280);
    v64 = v29;
    v65 = v33;
    v35 = *(v3 + 177);
    v70 = *(v3 + 344);
    v66 = v34;
    v67 = v31;
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v71;
    *(v3 + 24) = v5;
    *(v3 + 32) = v58;
    *(v3 + 40) = v6;
    swift_beginAccess();
    v36 = v53;
    *(v3 + 48) = v55;
    *(v3 + 56) = v36;
    v37 = v54;
    *(v3 + 64) = v56;
    *(v3 + 72) = v37;
    *(v3 + 80) = v20;
    *(v3 + 88) = v21;
    *(v3 + 96) = v22;
    *(v3 + 104) = v23;
    *(v3 + 108) = v52;
    *(v3 + 112) = v24;
    *(v3 + 120) = v25;
    *(v3 + 128) = v26;
    v38 = v51;
    *(v3 + 152) = v50;
    *(v3 + 136) = v38;
    *(v3 + 168) = v49;
    *(v3 + 176) = v48;
    *(v3 + 177) = v35;
    v39 = v68;
    v40 = v69;
    v41 = v66;
    *(v3 + 296) = v67;
    *(v3 + 312) = v39;
    *(v3 + 328) = v40;
    *(v3 + 344) = v70;
    v42 = v62;
    *(v3 + 232) = v63;
    v43 = v65;
    *(v3 + 248) = v64;
    *(v3 + 264) = v43;
    *(v3 + 280) = v41;
    v44 = v61;
    *(v3 + 184) = v60;
    *(v3 + 200) = v44;
    *(v3 + 216) = v42;
    sub_1D6FF924C(&v60, &v59, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    return v3;
  }

  return v3;
}

uint64_t sub_1D6FC8FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v62 = a7;
  v59 = a5;
  v60 = a6;
  v58 = a4;
  v8 = v7;
  v12 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v57 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v53 - v18;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v12);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v53 - v22);
  v71 = a1;
  swift_beginAccess();
  v25 = v8[2];
  v24 = v8[3];

  v26 = sub_1D6E8DD40(v25, v24);
  v28 = v27;

  v61 = a3;
  v29 = *(a3 + 24);
  v30 = v26;
  if (*(v29 + 16))
  {
    *v23 = a2;
    v31 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
    swift_beginAccess();

    sub_1D6D60828(v23, v30, v28);
    swift_endAccess();
  }

  v55 = v30;
  v63 = a2;
  if (v8[13])
  {
    v33 = v8[17];
    v32 = v8[18];
    v35 = v8[15];
    v34 = v8[16];
    v36 = v8[14];
    v65 = v8[13];
    v66 = v36;
    v67 = v35;
    v68 = v34;
    v69 = v33;
    v70 = v32;

    sub_1D5DEA234(v33);

    v37 = v64;
    sub_1D68687FC(v63, v19);
    v64 = v37;
    if (v37)
    {

      v38 = v69;

      sub_1D5CBF568(v38);
    }

    v41 = v69;

    sub_1D5CBF568(v41);

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v42 = sub_1D7259B8C();
  v43 = *(*(v42 - 8) + 56);
  v44 = v19;
  v53 = v19;
  v43(v19, v40, 1, v42);
  swift_unownedRetainStrong();
  v45 = v28;

  swift_unownedRetain();

  v46 = MEMORY[0x1E69D6FA0];
  v54 = MEMORY[0x1E69E6720];
  v47 = v57;
  sub_1D6FFC87C(v44, v57, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  v48 = (*(v56 + 80) + 48) & ~*(v56 + 80);
  v49 = (v14 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v63;
  v50[2] = v8;
  v50[3] = v51;
  v50[4] = v55;
  v50[5] = v45;
  sub_1D6FFC410(v47, v50 + v48, &qword_1EDF3C120, v46);
  *(v50 + v49) = v61;
  v59(0);
  v60();

  v52 = v53;
  sub_1D7259ACC();

  return sub_1D6FFCA9C(v52, &qword_1EDF3C120, v46, v54, sub_1D5D27F7C);
}

unint64_t sub_1D6FC9504(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v51 = a6;
  v52 = a7;
  v49[1] = a4;
  v50 = a5;
  v9 = v8;
  v10 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v15 = v14;
  v53 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v55 = (v49 - v17);
  v18 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v56 = v49 - v21;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v18);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = (v49 - v24);
  v63 = a1;
  swift_beginAccess();
  v26 = v10[2];
  v27 = v10[3];

  v28 = sub_1D6E8DD40(v26, v27);
  v30 = v29;
  v31 = v28;

  if (*(*(a3 + 24) + 16))
  {
    *v25 = a2;
    v32 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(v25, 0, 1, v32);
    swift_beginAccess();

    sub_1D6D60828(v25, v31, v30);
    swift_endAccess();
  }

  v54 = v31;
  if (v10[6])
  {
    v34 = v10[10];
    v33 = v10[11];
    v36 = v10[8];
    v35 = v10[9];
    v37 = v10[7];
    v57 = v10[6];
    v58 = v37;
    v59 = v36;
    v60 = v35;
    v61 = v34;
    v62 = v33;

    sub_1D5DEA234(v34);

    sub_1D68687FC(a2, v56);
    if (v9)
    {

      v38 = v61;

      sub_1D5CBF568(v38);
    }

    v49[0] = v15;
    v41 = v61;

    sub_1D5CBF568(v41);
    v15 = v49[0];

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v42 = sub_1D7259B8C();
  v43 = v56;
  (*(*(v42 - 8) + 56))(v56, v40, 1, v42);
  swift_getKeyPath();
  v57 = v10[4];
  v44 = v57;

  sub_1D5C82CD8(v44);
  sub_1D5BEB9F4(a2, v54, v30, v55);
  if (v9)
  {
    sub_1D6FFCA9C(v43, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_bridgeObjectRelease_n();

    return sub_1D5C92A8C(v57);
  }

  else
  {
    sub_1D5C92A8C(v57);
    swift_beginAccess();
    v45 = v10[5];

    sub_1D618EFB4(a2, v45);

    v46 = swift_allocObject();
    v49[0] = v15;
    v46[2] = v54;
    v46[3] = v30;
    v46[4] = a2;
    v46[5] = v10;
    v50(0);
    v51();

    v48 = v55;
    v47 = v56;
    sub_1D7259B1C();

    (*(v53 + 8))(v48, v49[0]);
    return sub_1D6FFCA9C(v47, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FC9BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v73 = a6;
  v74 = a7;
  v71 = a4;
  v72 = a5;
  v75 = a3;
  v8 = v7;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v69 = *(v11 - 8);
  v12 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v63 - v16;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v10);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (&v63 - v20);
  v83 = a1;
  swift_beginAccess();

  v23 = sub_1D6B0ACE8(v22, 0);

  v24 = (*(v23 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  v27 = v8[7];

  v28 = v27;
  v29 = v76;
  v30 = sub_1D6FBAAA4(v28, v23, v26, v25);

  v76 = v29;
  if (v29)
  {
  }

  v66 = v30;
  v67 = v12;
  v32 = v17;
  swift_beginAccess();
  v33 = v8[2];
  v34 = v8[3];
  v35 = v8;

  v36 = sub_1D6E8DD40(v33, v34);
  v38 = v37;

  v39 = v75;
  if (*(*(v75 + 24) + 16))
  {
    *v21 = v23;
    v40 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v40 - 8) + 56))(v21, 0, 1, v40);
    swift_beginAccess();

    sub_1D6D60828(v21, v36, v38);
    swift_endAccess();
    v39 = v75;
  }

  v68 = v23;
  v65 = v36;
  v41 = v35;
  v42 = v35[26];
  if (v42)
  {
    v44 = v35[30];
    v43 = v35[31];
    v45 = v32;
    v47 = v41[28];
    v46 = v41[29];
    v48 = v41[27];
    v77 = v42;
    v78 = v48;
    v79 = v47;
    v80 = v46;
    v81 = v44;
    v82 = v43;

    sub_1D5DEA234(v44);

    v49 = v76;
    sub_1D68687FC(v68, v45);
    if (v49)
    {

      v50 = v81;

      sub_1D5CBF568(v50);
    }

    v76 = 0;
    v52 = v81;

    v32 = v45;

    sub_1D5CBF568(v52);

    v51 = 0;
    v39 = v75;
  }

  else
  {
    v51 = 1;
  }

  v63 = v32;
  v53 = sub_1D7259B8C();
  (*(*(v53 - 8) + 56))(v32, v51, 1, v53);
  swift_unownedRetainStrong();

  swift_unownedRetain();

  v54 = MEMORY[0x1E69D6FA0];
  v64 = MEMORY[0x1E69E6720];
  v55 = v32;
  v56 = v70;
  sub_1D6FFC87C(v55, v70, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  v57 = (*(v69 + 80) + 64) & ~*(v69 + 80);
  v58 = swift_allocObject();
  v59 = v65;
  v58[2] = v41;
  v58[3] = v59;
  v60 = v68;
  v58[4] = v38;
  v58[5] = v60;
  v61 = v66;
  v58[6] = v39;
  v58[7] = v61;
  sub_1D6FFC410(v56, v58 + v57, &qword_1EDF3C120, v54);
  v72(0);
  v73();

  v62 = v63;
  sub_1D7259ACC();

  return sub_1D6FFCA9C(v62, &qword_1EDF3C120, v54, v64, sub_1D5D27F7C);
}

uint64_t sub_1D6FCA290@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  v27 = a1;
  v24 = a2;
  v25 = a4;
  sub_1D5D27F7C(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for FormatOption();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v15 = v14();
  if ((a3 & 1) == 0)
  {

    v21 = v27;
LABEL_5:
    v22 = v25;
    *v25 = v21 & 1;
    v22[1] = 0;
    *(v22 + 16) = 0;
    return result;
  }

  v16 = v15;
  v17 = v24;

  v18 = v27;
  FormatOptionCollection.subscript.getter(v27, v17, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D6FFCA9C(v8, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v19 = v18;
    v19[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  sub_1D5D2F2C4(v18, v17, 1);
  sub_1D5BDAB74(v8, v13, type metadata accessor for FormatOption);
  v28 = *(v13 + 2);

  v23 = v26;
  v21 = sub_1D60ECADC(&v28, v16, v13);

  sub_1D6FFC9A0(v13, type metadata accessor for FormatOption);

  if (!v23)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1D6FCA5C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D6FCAC74(*v2, v2[1], v65);
  if (!v3)
  {
    v52 = a2;
    v7 = v65[0];
    v8 = v65[1];
    v54 = v2;
    v9 = v2[2];
    *&v59 = a1;
    v10 = &off_1F51AF328;
    v11 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v53 = a1;
    v12 = v11();
    v13 = sub_1D5E02AFC(v12, v9);
    v50 = v8;
    v51 = v7;

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_1D5F3FE24();
    v15 = swift_allocObject();
    v49 = xmmword_1D7273AE0;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    v16 = v54[3];
    v17 = v53;
    v64 = v53;
    v18 = v11();
    v19 = sub_1D5E02AFC(v18, v16);

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    v21 = swift_allocObject();
    v23 = v21;
    *(v21 + 16) = v49;
    *(v21 + 32) = v20;
    *(v21 + 40) = 0;
    v24 = v54;
    if (v54[12])
    {
      v25 = v54[5];
      v26 = v54[10];
      v10 = v54[11];
      *&v57 = v17;
      MEMORY[0x1EEE9AC00](v21, v22);
      v48 = &v57;
      *&v49 = sub_1D5EC9E90(sub_1D6FFCBEC, v47, v27);
      v67[0] = v25;
      if (v26)
      {
        sub_1D6FFC87C(v67, v56, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
        v28 = v17;
        v29 = sub_1D6FCAC74(v26, v10, &v57);
        v10 = *(&v57 + 1);
        v31 = v57;
        v32 = v49;
      }

      else
      {
        v29 = sub_1D6FFC87C(v67, v56, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
        v31 = 0;
        v32 = v49;
        v28 = v17;
      }

      v33 = *(v24 + 4);
      v60 = *(v24 + 3);
      v61 = v33;
      LOBYTE(v56[0]) = 1;
      *&v59 = v32;
      *(&v59 + 1) = v67[0];
      *&v62 = v31;
      *(&v62 + 1) = v10;
      v63 = 1;
    }

    else
    {
      v28 = v17;
      v29 = sub_1D5FA6CB0(v17, v54[4], &v57);
      LOBYTE(v56[0]) = 0;
      *&v59 = v57;
      v63 = 0;
    }

    if (v24[21])
    {
      v34 = v24[14];
      v35 = v24[19];
      v10 = v24[20];
      v56[0] = v28;
      MEMORY[0x1EEE9AC00](v29, v30);
      v48 = v56;
      *&v49 = sub_1D5EC9E90(sub_1D6FFCBEC, v47, v36);
      v66 = v34;
      if (v35)
      {
        sub_1D6FFC87C(&v66, v55, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
        result = sub_1D6FCAC74(v35, v10, v56);
        v40 = v56[0];
        v10 = v56[1];
      }

      else
      {
        result = sub_1D6FFC87C(&v66, v55, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
        v40 = 0;
      }

      v39 = v49;
      v41 = *(v24 + 17);
      v57 = *(v24 + 15);
      v58 = v41;
      v37 = v66;
      v38 = 1;
      v55[0] = 1;
    }

    else
    {
      result = sub_1D5FA6CB0(v28, v24[13], v56);
      v38 = 0;
      v39 = v56[0];
      v40 = &v68;
      v55[0] = 0;
    }

    v42 = v50;
    v43 = v52;
    *v52 = v51;
    v43[1] = v42;
    v43[2] = v15;
    v43[3] = v23;
    v44 = v62;
    *(v43 + 4) = v61;
    *(v43 + 5) = v44;
    *(v43 + 96) = v63;
    v45 = v60;
    *(v43 + 2) = v59;
    *(v43 + 3) = v45;
    v43[13] = v39;
    v43[14] = v37;
    v46 = v57;
    *(v43 + 17) = v58;
    *(v43 + 15) = v46;
    v43[19] = v40;
    v43[20] = v10;
    *(v43 + 168) = v38;
  }

  return result;
}

uint64_t sub_1D6FCAC74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v7 = v6();
  v8 = sub_1D5E02AFC(v7, a1);

  if (!v3)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    sub_1D5F3FE24();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    *(v11 + 32) = v10;
    *(v11 + 40) = 0;
    v12 = v6();
    v13 = sub_1D5E02AFC(v12, a2);

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7273AE0;
    *(result + 32) = v14;
    *(result + 40) = 0;
    *a3 = v11;
    a3[1] = result;
  }

  return result;
}

uint64_t sub_1D6FCAE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatOption();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v48 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v43 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v43 - v14);
  if (!a1)
  {
    goto LABEL_29;
  }

  if (!a2)
  {
    if (*(a1 + 16))
    {

      return a1;
    }

LABEL_29:

    return a2;
  }

  v16 = *(a1 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  v44 = a1;
  if (v16)
  {
    v47 = a2;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v16, 0);
    v17 = v49;
    v18 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v46 = v5;
    v19 = *(v5 + 72);
    do
    {
      sub_1D5BE4148(v18, v15, type metadata accessor for FormatOption);
      v20 = *v15;
      v21 = v15[1];

      sub_1D6FFC9A0(v15, type metadata accessor for FormatOption);
      v49 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D5BFC364((v22 > 1), v23 + 1, 1);
        v17 = v49;
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v18 += v19;
      --v16;
    }

    while (v16);
    v5 = v46;
    a2 = v47;
  }

  v25 = sub_1D5B86020(v17);

  v47 = *(a2 + 16);
  if (v47)
  {
    v26 = 0;
    v27 = *(v5 + 80);
    v28 = *(v5 + 72);
    v45 = (v27 + 32) & ~v27;
    v46 = a2 + v45;
    v29 = v25 + 56;
    v30 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D5BE4148(v46 + v28 * v26, v11, type metadata accessor for FormatOption);
      if (*(v25 + 16) && (v31 = *v11, v32 = v11[1], sub_1D7264A0C(), sub_1D72621EC(), v33 = sub_1D7264A5C(), v34 = -1 << *(v25 + 32), v35 = v33 & ~v34, ((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v25 + 48) + 16 * v35);
          v38 = *v37 == v31 && v37[1] == v32;
          if (v38 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        sub_1D6FFC9A0(v11, type metadata accessor for FormatOption);
      }

      else
      {
LABEL_22:
        sub_1D5BDAB74(v11, v48, type metadata accessor for FormatOption);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v30;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6997860(0, *(v30 + 16) + 1, 1);
          v30 = v50;
        }

        v41 = *(v30 + 16);
        v40 = *(v30 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D6997860(v40 > 1, v41 + 1, 1);
          v30 = v50;
        }

        *(v30 + 16) = v41 + 1;
        sub_1D5BDAB74(v48, v30 + v45 + v41 * v28, type metadata accessor for FormatOption);
      }

      ++v26;
    }

    while (v26 != v47);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v49 = v44;

  sub_1D5D505F0(v30);
  return v49;
}

uint64_t sub_1D6FCB23C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = swift_beginAccess();
  v9 = v1[2];
  v8 = v1[3];
  v11 = v1[4];
  v10 = v1[5];
  v19 = *(v4 + 48);
  v12 = *(v4 + 56);
  if (!v12)
  {

    v14 = 0;
LABEL_6:
    swift_beginAccess();
    v15 = *(v4 + 64);
    v4 = swift_allocObject();
    swift_beginAccess();
    *(v4 + 16) = v9;
    *(v4 + 24) = v8;
    *(v4 + 32) = v11;
    *(v4 + 40) = v10;
    *(v4 + 48) = v19;
    *(v4 + 56) = v14;
    swift_beginAccess();
    *(v4 + 64) = v15;

    return v4;
  }

  v18 = a1;
  MEMORY[0x1EEE9AC00](v6, v7);
  v17[2] = &v18;

  v13 = sub_1D5ECA350(sub_1D6FF9AFC, v17, v12);
  if (!v3)
  {
    v14 = v13;
    goto LABEL_6;
  }

  return v4;
}

uint64_t sub_1D6FCB400(uint64_t a1)
{
  v3 = v1;
  v40 = *v1;
  swift_beginAccess();
  v5 = v1[3];
  v43 = v1[2];
  v6 = v1[5];
  v41 = v1[4];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (v8)
  {
    v42[0] = a1;
    v37 = a1;
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();

    v39 = v6;
    v10 = v9();
    v11 = sub_1D5E02AFC(v10, v8);
    if (v2)
    {

LABEL_14:

      return v3;
    }

    v17 = v11;
    v38 = v7;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24();
    v12 = swift_allocObject();
    v14 = v12;
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    v6 = v39;
    a1 = v37;
    if (!*(v3 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {

    v38 = v7;

    v14 = 0;
    if (!*(v3 + 64))
    {
LABEL_8:
      v37 = v14;
      v16 = 0;
      goto LABEL_10;
    }
  }

  v42[0] = a1;
  MEMORY[0x1EEE9AC00](v12, v13);
  v30[2] = v42;
  v16 = sub_1D5EC9CB8(sub_1D6FFCC1C, v30, v15);
  if (!v2)
  {
    v37 = v14;
LABEL_10:
    v39 = v16;
    v20 = *(v3 + 72);
    v19 = *(v3 + 80);
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v36 = *(v3 + 108);
    v24 = *(v3 + 112);
    v25 = *(v3 + 120);
    v26 = *(v3 + 128);
    v34 = *(v3 + 152);
    v35 = *(v3 + 136);
    v33 = *(v3 + 168);
    v32 = *(v3 + 176);
    if (v32 == 254)
    {
      sub_1D5ED34B0(v20, v19, v21);
    }

    else
    {
      sub_1D5ED34B0(v20, v19, v21);
      sub_1D5FA6CB0(a1, v26, v42);
      if (v2)
      {

        sub_1D5ED348C(v20, v19, v21);
        goto LABEL_14;
      }

      v26 = v42[0];
    }

    v31 = *(v3 + 177);
    swift_beginAccess();
    v27 = *(v3 + 184);
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v43;
    *(v3 + 24) = v5;
    *(v3 + 32) = v41;
    *(v3 + 40) = v6;
    swift_beginAccess();
    v28 = v37;
    *(v3 + 48) = v38;
    *(v3 + 56) = v28;
    *(v3 + 64) = v39;
    *(v3 + 72) = v20;
    *(v3 + 80) = v19;
    *(v3 + 88) = v21;
    *(v3 + 96) = v22;
    *(v3 + 104) = v23;
    *(v3 + 108) = v36;
    *(v3 + 112) = v24;
    *(v3 + 120) = v25;
    *(v3 + 128) = v26;
    *(v3 + 152) = v34;
    *(v3 + 136) = v35;
    *(v3 + 168) = v33;
    *(v3 + 176) = v32;
    *(v3 + 177) = v31;
    swift_beginAccess();
    *(v3 + 184) = v27;

    return v3;
  }

  return v3;
}

uint64_t sub_1D6FCB8B4(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v22 = v1[2];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (!v8)
  {

    v20 = v7;

    v12 = 0;
    goto LABEL_6;
  }

  v23[0] = a1;
  v19 = a1;
  v9 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v10 = v9();
  v11 = sub_1D5E02AFC(v10, v8);
  if (!v2)
  {
    v13 = v11;
    v20 = v7;

    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    sub_1D5F3FE24();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v14;
    *(v12 + 40) = 0;
    a1 = v19;
LABEL_6:
    v15 = *(v3 + 64);
    if ((~v15 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(a1, *(v3 + 64), v23);
      if (v2)
      {

        return v3;
      }

      v15 = v23[0];
    }

    v16 = *(v3 + 72);
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(a1, *(v3 + 72), v23);
      if (v2)
      {

        sub_1D5C84FF4(v15);
        return v3;
      }

      v16 = v23[0];
    }

    v17 = *(v3 + 80);
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v22;
    *(v3 + 24) = v5;
    *(v3 + 32) = v21;
    *(v3 + 40) = v6;
    swift_beginAccess();
    *(v3 + 48) = v20;
    *(v3 + 56) = v12;
    *(v3 + 64) = v15;
    *(v3 + 72) = v16;
    *(v3 + 80) = v17;
    return v3;
  }

  return v3;
}

uint64_t sub_1D6FCBBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[1];
  v19 = *v2;
  sub_1D6FF9454(&v19, &v16, &qword_1EDF2CA68, sub_1D67282D8, &type metadata for FormatCodingAllBorderEdgeStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D5FA6CB0(a1, v6, &v17);
  if (v3)
  {
    return sub_1D6FF94C8(&v19, &qword_1EDF2CA68, sub_1D67282D8, &type metadata for FormatCodingAllBorderEdgeStrategy, type metadata accessor for FormatCodingDefault);
  }

  v8 = v17;
  v16 = a1;
  v9 = swift_allocObject();
  v10 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v11 = v10();
  FormatFloat.value(contextLayoutOptions:)(v11);
  v13 = v12;

  *(v9 + 16) = v13;
  v14 = *(v2 + 12);
  v18 = v2[4];
  v15 = v18;
  *a2 = v19;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return sub_1D5BE4148(&v18, &v17, sub_1D6FF9524);
}

uint64_t sub_1D6FCBDCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v11 = v10();
  v12 = sub_1D5E02AFC(v11, a1);

  if (!v5)
  {
    v27 = a5;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    sub_1D5F3FE24();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
    v16 = v10();
    v17 = sub_1D5E02AFC(v16, a2);

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    *(v19 + 32) = v18;
    *(v19 + 40) = 0;
    v20 = v10();
    v21 = sub_1D5E02AFC(v20, a3);

    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    *(v23 + 32) = v22;
    *(v23 + 40) = 0;
    v24 = v10();
    v25 = sub_1D5E02AFC(v24, a4);

    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7273AE0;
    *(result + 32) = v26;
    *(result + 40) = 0;
    *v27 = v15;
    v27[1] = v19;
    v27[2] = v23;
    v27[3] = result;
  }

  return result;
}

uint64_t sub_1D6FCC08C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  v10 = *(v0 + 32);
  v11 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 80);
  v12 = *(v0 + 72);
  v13 = *(v0 + 89);
  v6 = *(v0 + 64);
  v7 = *(v0 + 88);
  swift_beginAccess();
  v14 = *(v0 + 96);
  v8 = swift_allocObject();
  swift_beginAccess();
  *(v8 + 16) = v11;
  *(v8 + 24) = v1;
  *(v8 + 32) = v10;
  *(v8 + 40) = v2;
  *(v8 + 48) = v3;
  *(v8 + 56) = v4;
  *(v8 + 64) = v6;
  *(v8 + 72) = v12;
  *(v8 + 80) = v5;
  *(v8 + 88) = v7;
  *(v8 + 89) = v13;
  swift_beginAccess();
  *(v8 + 96) = v14;

  sub_1D5ED34B0(v3, v4, v6);
  sub_1D5ED34B0(v12, v5, v7);

  return v8;
}

uint64_t sub_1D6FCC208(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v121 = a7;
  v122 = a8;
  v119 = a5;
  v120 = a6;
  v129 = a4;
  v135 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v123 = *(v10 - 8);
  v124 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v125 = (&v113 - v12);
  v13 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v113 - v16;
  v18 = sub_1D725A36C();
  v126 = *(v18 - 8);
  v127 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v128 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v13);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v130 = (&v113 - v23);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v13);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v132 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  KeyPath = &v113 - v29;
  v30 = type metadata accessor for FormatNodeStateData.Data();
  v131 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6FF9DCC(0, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34 - 8, v36);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v113 - v41;
  v145 = a1;
  v136 = a2;
  v43 = *(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries;
  swift_beginAccess();
  v44 = *(v43 + 8);
  if (!*(v44 + 16))
  {
    goto LABEL_8;
  }

  v115 = v17;
  v118 = v42;
  v46 = v148[4];
  v45 = v148[5];

  v47 = sub_1D5B69D90(v46, v45);
  if ((v48 & 1) == 0)
  {

LABEL_8:
    type metadata accessor for FormatLayoutError();
    sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v84 = v148;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  sub_1D6FF9454(*(v44 + 56) + *(v35 + 72) * v47, v38, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
  v49 = v118;
  sub_1D6FF9770(v38, v118, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);

  v50 = v148;
  swift_beginAccess();
  v51 = v50[2];
  v52 = v50[3];

  v53 = sub_1D6E8DD40(v51, v52);
  v116 = v54;
  v117 = v53;

  v56 = v49[5];
  v143 = v49[4];
  v55 = v143;
  v144[0] = v56;
  *(v144 + 9) = *(v49 + 89);
  v57 = *(v144 + 9);
  v58 = v49[1];
  v140[0] = *v49;
  v140[1] = v58;
  v59 = v49[3];
  v141 = v49[2];
  v60 = v141;
  v142 = v59;
  v61 = *(&v59 + 1);
  *v33 = v140[0];
  v33[1] = v58;
  v33[2] = v60;
  v33[3] = v59;
  *(v33 + 89) = v57;
  v33[4] = v55;
  v33[5] = v56;
  swift_storeEnumTagMultiPayload();
  v62 = *(v135 + 24);
  v63 = KeyPath;
  sub_1D5BE4148(v33, KeyPath, type metadata accessor for FormatNodeStateData.Data);
  (*(v131 + 56))(v63, 0, 1, v30);
  v114 = type metadata accessor for FormatNodeStateData.Data;
  v64 = MEMORY[0x1E69E6720];
  v65 = v132;
  sub_1D6FFC87C(v63, v132, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  v66 = v62;
  swift_beginAccess();
  v67 = v116;

  sub_1D62E340C(v140, v137);
  v131 = v61;

  v68 = v65;
  v69 = v117;
  sub_1D6D60A18(v68, v117, v67);
  swift_endAccess();
  sub_1D6FFCA9C(v63, &qword_1EDF2C470, v114, v64, sub_1D5D27F7C);
  v70 = v33;
  v71 = v67;
  sub_1D6FFC9A0(v70, type metadata accessor for FormatNodeStateData.Data);
  v72 = v148;
  v73 = sub_1D62E08C4(v49, v136);
  v74 = v73;
  v75 = *(v66 + 16);
  v76 = v72;
  if (v75)
  {
    v77 = v130;
    *v130 = v73;
    v78 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
    swift_beginAccess();

    sub_1D6D60828(v77, v69, v71);
    swift_endAccess();
  }

  v79 = (*(v74 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v80 = *v79;
  v81 = v79[1];

  v82 = v134;
  v83 = sub_1D6FBBCC8(v131, v74, v80, v81);
  if (v82)
  {

    v91 = v49;
  }

  else
  {
    v134 = v83;

    v86 = v49[5];
    v146[4] = v49[4];
    v147[0] = v86;
    *(v147 + 9) = *(v49 + 89);
    v87 = v49[1];
    v146[0] = *v49;
    v146[1] = v87;
    v88 = v49[3];
    v146[2] = v49[2];
    v146[3] = v88;
    v89 = (*(v126 + 104))(v128, *MEMORY[0x1E69D7378], v127);
    MEMORY[0x1EEE9AC00](v89, v90);
    *(&v113 - 6) = v146;
    *(&v113 - 5) = v117;
    v109 = v71;
    v110 = v76;
    v111 = v74;
    v112 = v135;
    sub_1D6FF9128(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v135 = sub_1D725A4EC();
    if (v76[15])
    {
      v93 = v76[19];
      v92 = v76[20];
      v95 = v76[17];
      v94 = v76[18];
      v96 = v76[16];
      v137[0] = v76[15];
      v137[1] = v96;
      v137[2] = v95;
      v137[3] = v94;
      v138 = v93;
      v139 = v92;

      sub_1D5DEA234(v93);

      sub_1D68687FC(v74, v115);
      v97 = v138;

      sub_1D5CBF568(v97);

      v98 = 0;
    }

    else
    {
      v98 = 1;
    }

    v99 = v125;
    v100 = sub_1D7259B8C();
    (*(*(v100 - 8) + 56))(v115, v98, 1, v100);
    KeyPath = swift_getKeyPath();
    v101 = v148;
    v137[0] = v148[6];
    v102 = v137[0];
    v103 = v116;

    sub_1D5C82CD8(v102);
    sub_1D5BEB9F4(v74, v117, v103, v99);
    v104 = v134;

    sub_1D5C92A8C(v137[0]);
    swift_beginAccess();
    v105 = v101[8];

    v132 = sub_1D618EFB4(v74, v105);

    v106 = swift_allocObject();
    v106[2] = v104;
    v106[3] = v74;
    v106[4] = v136;
    v106[5] = v101;
    v131 = v120(0);
    v107 = v121();

    v111 = v107;
    v109 = v106;
    v110 = v131;
    v108 = v125;
    sub_1D7259AFC();

    (*(v123 + 8))(v108, v124);
    sub_1D6FFCA9C(v115, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    v91 = v118;
  }

  return sub_1D6FF94C8(v91, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary, type metadata accessor for FormatObject);
}

__n128 sub_1D6FCD138@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 112);
  v50[6] = *(a1 + 96);
  v50[7] = v7;
  v51 = *(a1 + 128);
  v8 = *(a1 + 48);
  v50[2] = *(a1 + 32);
  v50[3] = v8;
  v9 = *(a1 + 80);
  v50[4] = *(a1 + 64);
  v50[5] = v9;
  v10 = *(a1 + 16);
  v50[0] = *a1;
  v50[1] = v10;
  v11 = sub_1D5F78DC4(v50);
  if (!v11)
  {
    v22 = sub_1D5DEA32C(v50);
    sub_1D5F78F40(v22, v31);
    sub_1D5F78F40(v31, &v32);
    v65 = v36;
    v66 = v37;
    v67 = v38;
    v68 = v39;
    v61 = v32;
    v62 = v33;
    v63 = v34;
    v64 = v35;
    result.n128_f64[0] = sub_1D6FD1B60(a2, v30);
    if (v3)
    {
      return result;
    }

    v29[4] = v30[4];
    v29[5] = v30[5];
    v29[6] = v30[6];
    v29[7] = v30[7];
    v29[0] = v30[0];
    v29[1] = v30[1];
    v29[2] = v30[2];
    v29[3] = v30[3];
    nullsub_1(v29);
    sub_1D5F78F40(v29, &v41);
    sub_1D60112A8(&v41);
    v23 = v48;
    *(a3 + 96) = v47;
    *(a3 + 112) = v23;
    *(a3 + 128) = v49;
    v24 = v44;
    *(a3 + 32) = v43;
    *(a3 + 48) = v24;
    v25 = v46;
    *(a3 + 64) = v45;
    *(a3 + 80) = v25;
    v21 = v41;
    result = v42;
    goto LABEL_7;
  }

  if (v11 == 1)
  {
    v12 = sub_1D5DEA32C(v50);
    v13 = *(v12 + 112);
    v58 = *(v12 + 96);
    v59 = v13;
    v60 = *(v12 + 128);
    v14 = *(v12 + 48);
    v54 = *(v12 + 32);
    v55 = v14;
    v15 = *(v12 + 80);
    v56 = *(v12 + 64);
    v57 = v15;
    v16 = *(v12 + 16);
    v52 = *v12;
    v53 = v16;
    result.n128_u64[0] = sub_1D6FC3FA8(a2, &v41).n128_u64[0];
    if (v3)
    {
      return result;
    }

    v38 = v47;
    v39 = v48;
    v40 = v49;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v32 = v41;
    v33 = v42;
    sub_1D6011260(&v32);
    v18 = v39;
    *(a3 + 96) = v38;
    *(a3 + 112) = v18;
    *(a3 + 128) = v40;
    v19 = v35;
    *(a3 + 32) = v34;
    *(a3 + 48) = v19;
    v20 = v37;
    *(a3 + 64) = v36;
    *(a3 + 80) = v20;
    v21 = v32;
    result = v33;
LABEL_7:
    *a3 = v21;
    *(a3 + 16) = result;
    return result;
  }

  sub_1D5DEA32C(v50);
  v26 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v26;
  *(a3 + 128) = *(a1 + 128);
  v27 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v27;
  v28 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v28;
  result = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1D6FCD35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v101 = a7;
  v100 = a6;
  v99 = a5;
  v98 = a4;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v103 = v12;
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v95 - v14);
  v16 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v104 = &v95 - v19;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v16);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v108 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v109 = &v95 - v25;
  v26 = type metadata accessor for FormatNodeStateData.Data();
  v105 = *(v26 - 8);
  v106 = v26;
  MEMORY[0x1EEE9AC00](v26, v27);
  v107 = (&v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v16);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = (&v95 - v31);
  v120 = a1;
  swift_beginAccess();
  v33 = v8[2];
  v34 = v8[3];

  v35 = sub_1D6E8DD40(v33, v34);
  v37 = v36;

  v110 = *(a3 + 24);
  if (*(v110 + 16))
  {
    *v32 = a2;
    v38 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v38 - 8) + 56))(v32, 0, 1, v38);
    swift_beginAccess();

    sub_1D6D60828(v32, v35, v37);
    swift_endAccess();
  }

  v111 = v35;
  v113 = v37;
  v39 = (*(a2 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = v8[10];

  v43 = v42;
  v44 = v112;
  v45 = sub_1D6FBC794(v43, a2, v40, v41);
  if (v44)
  {
  }

  else
  {
    v96 = a2;
    v97 = 0;
    v95 = v15;
    v112 = v45;

    if (v112 && (v47 = *(v112 + 56)) != 0)
    {
      v48 = *(v47 + 16);

      v49 = 0;
      while (1)
      {
        if (v48 == v49)
        {

          goto LABEL_13;
        }

        if (v49 >= *(v47 + 16))
        {
          break;
        }

        v50 = *(type metadata accessor for FormatOption() - 8);
        v51 = v49 + 1;
        v52 = (v47 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v49);
        v53 = *v52;
        v54 = v52[1];

        v55 = sub_1D7258DCC();
        result = [swift_getObjCClassFromMetadata() instancesRespondToSelector_];
        v49 = v51;
        if ((result & 1) == 0)
        {

          type metadata accessor for FormatLayoutError();
          sub_1D6FFA0A0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v56 = v8[5];
          *v57 = v8[4];
          v57[1] = v56;
          v57[2] = v53;
          v57[3] = v54;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      __break(1u);
    }

    else
    {
LABEL_13:
      v58 = v106;
      v59 = v107;
      *v107 = v8[6];
      swift_storeEnumTagMultiPayload();
      v60 = v109;
      sub_1D5BE4148(v59, v109, type metadata accessor for FormatNodeStateData.Data);
      (*(v105 + 56))(v60, 0, 1, v58);
      v61 = MEMORY[0x1E69E6720];
      v62 = v108;
      sub_1D6FFC87C(v60, v108, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_beginAccess();
      v63 = v8;
      v64 = v113;

      v65 = v62;
      v66 = v63;
      sub_1D6D60A18(v65, v111, v64);
      swift_endAccess();
      sub_1D6FFCA9C(v60, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v61, sub_1D5D27F7C);
      sub_1D6FFC9A0(v59, type metadata accessor for FormatNodeStateData.Data);
      v67 = *v39;
      v68 = v39[1];
      v69 = v63[11];

      v70 = v69;
      v71 = v96;
      v72 = v97;
      v73 = sub_1D6FBAE48(v70, v96, v67, v68);
      if (v72)
      {
      }

      else
      {
        v74 = v73;

        if (v74)
        {

          v75 = sub_1D6A45640(v71);
          v76 = v111;
          v77 = v64;
          v79 = v75;
          v78 = v66;

          if (v79)
          {
            swift_beginAccess();

            sub_1D6D60C08(v79, v76, v77);
            swift_endAccess();
          }
        }

        else
        {
          v76 = v111;
          v77 = v64;
          v78 = v66;
        }

        if (v78[15])
        {
          v81 = v78[19];
          v80 = v78[20];
          v83 = v78[17];
          v82 = v78[18];
          v84 = v78[16];
          v114 = v78[15];
          v115 = v84;
          v116 = v83;
          v117 = v82;
          v118 = v81;
          v119 = v80;

          sub_1D5DEA234(v81);

          v85 = v104;
          v86 = v71;
          sub_1D68687FC(v71, v104);
          v87 = v118;
          v110 = v119;

          sub_1D5CBF568(v87);

          v88 = 0;
          v71 = v86;
          v77 = v113;
          v76 = v111;
        }

        else
        {
          v88 = 1;
          v85 = v104;
        }

        v89 = sub_1D7259B8C();
        (*(*(v89 - 8) + 56))(v85, v88, 1, v89);
        swift_getKeyPath();
        v114 = v78[7];
        v90 = v114;

        sub_1D5C82CD8(v90);
        sub_1D5BEB9F4(v71, v76, v77, v95);
        sub_1D5C92A8C(v114);
        swift_beginAccess();
        v91 = v78[9];

        v111 = sub_1D618EFB4(v71, v91);

        v92 = swift_allocObject();
        v92[2] = v76;
        v92[3] = v77;
        v92[4] = v71;
        v92[5] = v78;
        v113 = v74;
        v92[6] = v112;
        v99(0);
        v100();

        v93 = v104;
        v94 = v95;
        sub_1D7259B1C();

        (*(v102 + 8))(v94, v103);
        return sub_1D6FFCA9C(v93, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      }
    }
  }

  return result;
}

uint64_t sub_1D6FCE0B4(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = v1[3];
  v40 = v1[2];
  v7 = v1[5];
  v32 = v1[4];
  v8 = swift_beginAccess();
  v10 = v1[6];
  v11 = *(v3 + 9);
  v12 = *(v3 + 13);
  v37 = *(v3 + 11);
  v38 = v12;
  v39 = *(v3 + 120);
  v35 = *(v3 + 7);
  v36 = v11;
  v13 = v3[16];
  if (v13)
  {
    v31 = v5;
    v33 = a1;
    MEMORY[0x1EEE9AC00](v8, v9);
    v27[2] = &v33;

    sub_1D6FF924C(&v35, v34, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    v14 = sub_1D5EC9CB8(sub_1D6FFCC1C, v27, v13);
    if (v2)
    {
      sub_1D5D0AC3C(&v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    }

    v13 = v14;
  }

  else
  {

    sub_1D6FF924C(&v35, v34, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  }

  v16 = v3[17];
  v17 = *(v3 + 36);
  LODWORD(v31) = *(v3 + 37);
  v18 = v3[19];
  v19 = v3[20];
  v20 = v3[21];
  v21 = *(v3 + 11);
  v29 = *(v3 + 12);
  v30 = v21;
  v28 = v3[26];
  v22 = *(v3 + 216);
  if (v22 != 254)
  {
    sub_1D5FA6CB0(a1, v20, v34);
    if (v2)
    {
      sub_1D5D0AC3C(&v35, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    }

    v20 = v34[0];
  }

  v23 = swift_allocObject();
  swift_beginAccess();
  *(v23 + 16) = v40;
  *(v23 + 24) = v6;
  *(v23 + 32) = v32;
  *(v23 + 40) = v7;
  swift_beginAccess();
  result = v23;
  v24 = v35;
  *(v23 + 72) = v36;
  v25 = v38;
  *(v23 + 88) = v37;
  *(v23 + 104) = v25;
  *(v23 + 48) = v10;
  *(v23 + 120) = v39;
  *(v23 + 56) = v24;
  *(v23 + 128) = v13;
  *(v23 + 136) = v16;
  *(v23 + 144) = v17;
  *(v23 + 148) = v31;
  *(v23 + 152) = v18;
  *(v23 + 160) = v19;
  *(v23 + 168) = v20;
  v26 = v29;
  *(v23 + 176) = v30;
  *(v23 + 192) = v26;
  *(v23 + 208) = v28;
  *(v23 + 216) = v22;
  return result;
}

__n128 sub_1D6FCE428@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v16[0] = a1;
  v14[2] = v16;
  v6 = sub_1D5EC9E90(sub_1D6FFCBEC, v14, v5);
  if (!v3)
  {
    v8 = v6;
    v17 = *(v2 + 8);
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    sub_1D6FFC87C(&v17, v15, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
    if (v10)
    {
      sub_1D6FCAC74(v10, v9, v16);
      v11 = v16[0];
      v9 = v16[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v17;
    *a2 = v8;
    *(a2 + 8) = v12;
    result = *(v2 + 16);
    v13 = *(v2 + 32);
    *(a2 + 16) = result;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    *(a2 + 56) = v9;
  }

  return result;
}

__n128 sub_1D6FCE58C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v14[2] = a1;
  v6 = sub_1D5EC9E90(sub_1D6FFCA7C, v14, v5);
  if (!v3)
  {
    v8 = v6;
    v17 = *(v2 + 8);
    v10 = *(v2 + 48);
    v9 = *(v2 + 56);
    sub_1D6FFC87C(&v17, v15, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
    if (v10)
    {
      sub_1D6FD5540(v10, v9, v16);
      v11 = v16[0];
      v9 = v16[1];
    }

    else
    {
      v11 = 0;
    }

    v12 = v17;
    *a2 = v8;
    *(a2 + 8) = v12;
    result = *(v2 + 16);
    v13 = *(v2 + 32);
    *(a2 + 16) = result;
    *(a2 + 32) = v13;
    *(a2 + 48) = v11;
    *(a2 + 56) = v9;
  }

  return result;
}

unint64_t sub_1D6FCE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v78 = a6;
  v79 = a7;
  v76[1] = a4;
  v77 = a5;
  v8 = v7;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v80 = *(v12 - 8);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v82 = (v76 - v14);
  v15 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v89 = v76 - v18;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v15);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v86 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v87 = v76 - v24;
  v25 = type metadata accessor for FormatNodeStateData.Data();
  v83 = *(v25 - 8);
  v84 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v85 = (v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v15);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = (v76 - v30);
  v97 = a1;
  swift_beginAccess();

  v90 = a2;
  v33 = sub_1D6B0ACE8(v32, 0);

  swift_beginAccess();
  v34 = *(v8 + 16);
  v35 = *(v8 + 24);

  v36 = sub_1D6E8DD40(v34, v35);
  v38 = v37;

  if (*(*(a3 + 24) + 16))
  {
    *v31 = v33;
    v39 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v39 - 8) + 56))(v31, 0, 1, v39);
    swift_beginAccess();

    sub_1D6D60828(v31, v36, v38);
    swift_endAccess();
  }

  v88 = v36;
  v103 = v38;
  v40 = *(v33 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles;
  swift_beginAccess();
  v41 = *(v40 + 8);
  swift_beginAccess();
  v42 = *(v8 + 112);
  v102[0] = *(v8 + 96);
  v102[1] = v42;
  v43 = *(v8 + 144);
  v102[2] = *(v8 + 128);
  v102[3] = v43;

  sub_1D6FF924C(v102, v92, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
  v44 = v91;
  sub_1D6FBEAE8(v102, v41, &v93);
  if (v44)
  {

    sub_1D5D0AC3C(v102, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
  }

  sub_1D5D0AC3C(v102, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

  v98 = v93;
  v99 = v94;
  v100 = v95;
  v101 = v96;
  v46 = *(v8 + 80);
  type metadata accessor for FormatWebEmbedDataConfig();
  swift_allocObject();

  v48 = sub_1D71BCFB0(v47, v46);
  *&v93 = *(v8 + 72);

  v49 = sub_1D725569C(v33, v48);
  v90 = v48;
  v91 = 0;
  v50 = v49;

  v51 = v84;
  v52 = v85;
  *v85 = v50;
  swift_storeEnumTagMultiPayload();
  v53 = v87;
  sub_1D5BE4148(v52, v87, type metadata accessor for FormatNodeStateData.Data);
  (*(v83 + 7))(v53, 0, 1, v51);
  v83 = type metadata accessor for FormatNodeStateData.Data;
  v76[0] = MEMORY[0x1E69E6720];
  v54 = v86;
  sub_1D6FFC87C(v53, v86, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
  swift_beginAccess();
  v55 = v103;

  v84 = v50;

  v56 = v88;
  sub_1D6D60A18(v54, v88, v55);
  swift_endAccess();
  sub_1D6FFCA9C(v53, &qword_1EDF2C470, v83, v76[0], sub_1D5D27F7C);
  sub_1D6FFC9A0(v52, type metadata accessor for FormatNodeStateData.Data);
  if (*(v8 + 224))
  {
    v58 = *(v8 + 256);
    v57 = *(v8 + 264);
    v60 = *(v8 + 240);
    v59 = *(v8 + 248);
    v61 = *(v8 + 232);
    *&v93 = *(v8 + 224);
    *(&v93 + 1) = v61;
    *&v94 = v60;
    *(&v94 + 1) = v59;
    *&v95 = v58;
    *(&v95 + 1) = v57;

    sub_1D5DEA234(v58);

    v62 = v91;
    sub_1D68687FC(v33, v89);
    v91 = v62;
    if (v62)
    {
      sub_1D5D0AC3C(&v98, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

      v63 = v95;

      sub_1D5CBF568(v63);
    }

    v66 = v95;

    sub_1D5CBF568(v66);
    v64 = v89;

    v65 = 0;
    v55 = v103;
  }

  else
  {
    v64 = v89;
    v65 = 1;
  }

  v67 = sub_1D7259B8C();
  (*(*(v67 - 8) + 56))(v64, v65, 1, v67);
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v92[0] = *(v8 + 48);
  v69 = v92[0];

  sub_1D5C82CD8(v69);
  v70 = v91;
  sub_1D5BEB9F4(v33, v56, v55, v82);
  if (v70)
  {
    sub_1D6FFCA9C(v64, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    sub_1D5D0AC3C(&v98, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

    swift_bridgeObjectRelease_n();

    return sub_1D5C92A8C(v92[0]);
  }

  else
  {
    sub_1D5C92A8C(v92[0]);
    swift_beginAccess();
    v71 = *(v8 + 64);

    v91 = sub_1D618EFB4(v33, v71);

    v72 = swift_allocObject();
    v73 = v103;
    *(v72 + 16) = v88;
    *(v72 + 24) = v73;
    *(v72 + 32) = v33;
    *(v72 + 40) = v8;
    v74 = v99;
    *(v72 + 48) = v98;
    *(v72 + 64) = v74;
    v75 = v101;
    *(v72 + 80) = v100;
    *(v72 + 96) = v75;
    v89 = KeyPath;
    *(v72 + 112) = v84;
    v77(0);
    v78();

    sub_1D7259B1C();

    (*(v80 + 8))(v82, v81);
    return sub_1D6FFCA9C(v64, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
  }
}

uint64_t sub_1D6FCF388(uint64_t a1)
{
  v3 = v1;
  v44 = *v1;
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  v45 = v1[4];
  v46 = v5;
  swift_beginAccess();
  v8 = v1[6];
  v9 = *(v3 + 56);
  if (v9)
  {
    v48[0] = a1;
    v43 = a1;
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();

    v49 = v7;
    v11 = v10();
    v12 = sub_1D5E02AFC(v11, v9);
    if (v2)
    {

LABEL_19:

      return v3;
    }

    v16 = v12;
    v47 = v8;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    sub_1D5F3FE24();
    v13 = swift_allocObject();
    v15 = v13;
    *(v13 + 16) = xmmword_1D7273AE0;
    *(v13 + 32) = v17;
    *(v13 + 40) = 0;
    v7 = v49;
    a1 = v43;
  }

  else
  {

    v47 = v8;

    v15 = 0;
  }

  v18 = *(v3 + 64);
  if ((~v18 & 0xF000000000000007) != 0)
  {
    v13 = sub_1D6FCF804(a1, *(v3 + 64), v48);
    if (v2)
    {

      goto LABEL_19;
    }

    v18 = v48[0];
  }

  if (!*(v3 + 72))
  {
    v42 = v15;
    v20 = 0;
    goto LABEL_15;
  }

  v48[0] = a1;
  MEMORY[0x1EEE9AC00](v13, v14);
  v36[2] = v48;
  v20 = sub_1D5EC9CB8(sub_1D6FFCC1C, v36, v19);
  if (!v2)
  {
    v42 = v15;
LABEL_15:
    v49 = v20;
    v21 = *(v3 + 80);
    v22 = *(v3 + 88);
    v23 = *(v3 + 96);
    v24 = *(v3 + 104);
    v25 = *(v3 + 112);
    v41 = *(v3 + 116);
    v26 = *(v3 + 120);
    v27 = *(v3 + 128);
    v28 = *(v3 + 136);
    v29 = *(v3 + 144);
    v39 = *(v3 + 160);
    v40 = v29;
    v38 = *(v3 + 176);
    v37 = *(v3 + 184);
    v43 = v21;
    if (v37 == 254)
    {
      sub_1D5ED34B0(v21, v22, v23);
    }

    else
    {
      sub_1D5ED34B0(v21, v22, v23);
      sub_1D5FA6CB0(a1, v28, v48);
      if (v2)
      {

        sub_1D5C8500C(v18);
        sub_1D5ED348C(v43, v22, v23);
        goto LABEL_19;
      }

      v28 = v48[0];
    }

    v31 = *(v3 + 185);
    v3 = swift_allocObject();
    swift_beginAccess();
    v32 = v45;
    *(v3 + 16) = v46;
    *(v3 + 24) = v6;
    *(v3 + 32) = v32;
    *(v3 + 40) = v7;
    swift_beginAccess();
    v33 = v42;
    *(v3 + 48) = v47;
    *(v3 + 56) = v33;
    v34 = v49;
    *(v3 + 64) = v18;
    *(v3 + 72) = v34;
    *(v3 + 80) = v43;
    *(v3 + 88) = v22;
    *(v3 + 96) = v23;
    *(v3 + 104) = v24;
    *(v3 + 112) = v25;
    *(v3 + 116) = v41;
    *(v3 + 120) = v26;
    *(v3 + 128) = v27;
    *(v3 + 136) = v28;
    v35 = v39;
    *(v3 + 144) = v40;
    *(v3 + 160) = v35;
    *(v3 + 176) = v38;
    *(v3 + 184) = v37;
    *(v3 + 185) = v31;
    return v3;
  }

  sub_1D5C8500C(v18);
  return v3;
}

uint64_t sub_1D6FCF804@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) > 3)
  {
    if (v6 > 5)
    {
      if (v6 != 6)
      {
        *a3 = a2;
      }

      v23 = a2 & 0x1FFFFFFFFFFFFFFFLL;
      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      *&v57[96] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      *&v57[112] = v24;
      *&v57[128] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v57[144] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      *&v57[32] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      *&v57[48] = v25;
      v26 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      *&v57[64] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      *&v57[80] = v26;
      v27 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *v57 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v57[16] = v27;
      v28 = swift_allocObject();
      v29 = *v57;
      v30 = *(v23 + 120);
      v81 = *(v23 + 104);
      v82 = v30;
      v83[0] = *(v23 + 136);
      *(v83 + 9) = *(v23 + 145);
      v31 = *(v23 + 56);
      v77 = *(v23 + 40);
      v78 = v31;
      v32 = *(v23 + 88);
      v79 = *(v23 + 72);
      v80 = v32;
      v76 = *(v23 + 24);
      if (sub_1D60486AC(&v76) == 1)
      {
        v74 = *&v57[104];
        v75[0] = *&v57[120];
        *(v75 + 9) = *&v57[129];
        v70 = *&v57[40];
        v71 = *&v57[56];
        v72 = *&v57[72];
        v73 = *&v57[88];
        v68 = *&v57[8];
        v69 = *&v57[24];
      }

      else
      {
        v86[8] = v82;
        v87[0] = v83[0];
        *(v87 + 9) = *(v83 + 9);
        v86[4] = v78;
        v86[5] = v79;
        v86[6] = v80;
        v86[7] = v81;
        v86[2] = v76;
        v86[3] = v77;
        sub_1D62B4EA4(v57, &v58);

        sub_1D6FD0CD0(a1, v66);
        if (v3)
        {
          sub_1D62B4F00(v57);

          return swift_deallocUninitializedObject();
        }

        sub_1D62B4F00(v57);
        v64 = v66[6];
        v65[0] = v67[0];
        *(v65 + 9) = *(v67 + 9);
        v60 = v66[2];
        v61 = v66[3];
        v62 = v66[4];
        v63 = v66[5];
        v58 = v66[0];
        v59 = v66[1];
        result = nullsub_1(&v58);
        v74 = v64;
        v75[0] = v65[0];
        *(v75 + 9) = *(v65 + 9);
        v70 = v60;
        v71 = v61;
        v72 = v62;
        v73 = v63;
        v68 = v58;
        v69 = v59;
      }

      v52 = v72;
      *(v28 + 104) = v73;
      v53 = v75[0];
      *(v28 + 120) = v74;
      *(v28 + 136) = v53;
      *(v28 + 145) = *(v75 + 9);
      v54 = v68;
      *(v28 + 40) = v69;
      v55 = v71;
      *(v28 + 56) = v70;
      *(v28 + 72) = v55;
      *(v28 + 88) = v52;
      *(v28 + 16) = v29;
      *(v28 + 24) = v54;
      v42 = v28 | 0xC000000000000000;
    }

    else if (v6 == 4)
    {
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x90);
      v85[7] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      v85[8] = v10;
      v86[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA0);
      *(v86 + 9) = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0xA9);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      v85[3] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      v85[4] = v11;
      v12 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      v85[5] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      v85[6] = v12;
      v13 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v85[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v85[1] = v13;
      v85[2] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v14 = swift_allocObject();
      sub_1D62B4F54(v85, v57);
      sub_1D6FCA5C4(a1, (v14 + 16));
      if (v3)
      {
        sub_1D62B4FB0(v85);
        return swift_deallocUninitializedObject();
      }

      result = sub_1D62B4FB0(v85);
      v42 = v14 | 0x8000000000000000;
    }

    else
    {
      v37 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v36 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v38 = swift_allocObject();
      if (v36)
      {
        swift_retain_n();

        v39 = sub_1D6FD2904(a1);
        if (v3)
        {

          return swift_deallocUninitializedObject();
        }

        v51 = v39;
      }

      else
      {

        v51 = 0;
      }

      *(v38 + 16) = v37;
      *(v38 + 24) = v51;
      v42 = v38 | 0xA000000000000000;
    }
  }

  else if (v6 > 1)
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x60);
      *&v57[64] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
      *&v57[80] = v15;
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x80);
      *&v57[96] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x70);
      *&v57[112] = v16;
      v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *v57 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v57[16] = v17;
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      *&v57[32] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      *&v57[48] = v18;
      v19 = swift_allocObject();
      v20 = *&v57[112];
      *&v76 = a1;
      MEMORY[0x1EEE9AC00](v19, v21);
      v56[2] = &v76;
      sub_1D60865E4(v57, &v58);
      v22 = sub_1D5EC9E90(sub_1D6FFCBEC, v56, v20);
      if (v3)
      {
        sub_1D6086640(v57);
        return swift_deallocUninitializedObject();
      }

      v43 = v57[48];
      v44 = v57[104];
      v45 = *&v57[120];
      v46 = *&v57[56];
      v47 = *&v57[72];
      v48 = *&v57[88];
      v49 = *&v57[16];
      v50 = *&v57[32];
      *(v19 + 16) = *v57;
      *(v19 + 32) = v49;
      *(v19 + 48) = v50;
      *(v19 + 64) = v43;
      *(v19 + 72) = v46;
      *(v19 + 88) = v47;
      *(v19 + 104) = v48;
      *(v19 + 120) = v44;
      *(v19 + 128) = v22;
      *(v19 + 136) = v45;

      result = sub_1D6086640(v57);
      v42 = v19 | 0x4000000000000000;
    }

    else
    {
      v40 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = swift_allocObject();
      sub_1D6086744(v40);
      sub_1D6FD6FB8(a1, v40, (v41 + 16));
      result = sub_1D6086768(v40);
      if (v3)
      {
        return swift_deallocUninitializedObject();
      }

      v42 = v41 | 0x6000000000000000;
    }
  }

  else
  {
    if (!v6)
    {
      v7 = *(a2 + 16);
      v8 = swift_allocObject();

      sub_1D5FA6CB0(a1, v7, (v8 + 16));

      if (!v3)
      {
        *a3 = v8;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

    v33 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v84[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v84[1] = v33;
    v34 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
    v84[2] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v84[3] = v34;
    v35 = swift_allocObject();
    sub_1D6086694(v84, v57);
    sub_1D6FCE428(a1, v35 + 16);
    result = sub_1D60866F0(v84);
    if (v3)
    {
      return swift_deallocUninitializedObject();
    }

    v42 = v35 | 0x2000000000000000;
  }

  *a3 = v42;
  return result;
}

uint64_t sub_1D6FCFE2C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v86 = *v1;
  swift_beginAccess();
  v6 = v1[2];
  v7 = v1[3];
  v88 = v6;
  v8 = v4[5];
  v87 = v4[4];
  swift_beginAccess();
  v9 = v4[6];
  v10 = v4[7];
  if (!v10)
  {

    v14 = v9;

    v17 = 0;
    goto LABEL_6;
  }

  *&v94 = a1;
  v89 = a1;
  v11 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v100 = v8;
  v8 = v7;
  v12 = v11();
  v13 = sub_1D5E02AFC(v12, v10);
  v3 = v2;
  if (!v2)
  {
    v18 = v13;
    v14 = v9;

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_1D5F3FE24();
    v15 = swift_allocObject();
    v17 = v15;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v19;
    *(v15 + 40) = 0;
    v7 = v8;
    a1 = v89;
    v8 = v100;
LABEL_6:
    v20 = v4[8];
    if ((~v20 & 0xF000000000000007) != 0)
    {
      v15 = sub_1D6FCF804(a1, v4[8], &v94);
      if (v3)
      {

        return v8;
      }

      v20 = v94;
    }

    v84 = v7;
    if (v4[9])
    {
      *&v94 = a1;
      MEMORY[0x1EEE9AC00](v15, v16);
      v71 = &v94;
      v22 = sub_1D5EC9CB8(sub_1D6FFCC1C, v70, v21);
      if (v3)
      {

        sub_1D5C8500C(v20);
        return v8;
      }

      v89 = a1;
      v81 = v20;
      v82 = v17;
      v85 = 0;
      v100 = v8;
      v83 = v14;
    }

    else
    {
      v89 = a1;
      v81 = v20;
      v82 = v17;
      v85 = v3;
      v100 = v8;
      v83 = v14;
      v22 = 0;
    }

    v80 = v22;
    v24 = v4[10];
    v23 = v4[11];
    v25 = *(v4 + 96);
    v26 = v4[13];
    v27 = *(v4 + 28);
    v29 = v4[15];
    v28 = v4[16];
    v8 = v4[18];
    v79 = v4[17];
    v30 = v4[19];
    v31 = v4[20];
    v33 = v4[21];
    v32 = v4[22];
    if (*(v4 + 184) == 254)
    {
      DWORD2(v75) = *(v4 + 29);
      v77 = v24;
      v78 = v23;
      v76 = v25;
      v34 = sub_1D5ED34B0(v24, v23, v25);
      *&v94 = v26;
      *(&v94 + 1) = __PAIR64__(DWORD2(v75), v27);
      *&v95 = v29;
      *(&v95 + 1) = v28;
      *&v96 = v79;
      *(&v96 + 1) = v8;
      *&v97 = v30;
      *(&v97 + 1) = v31;
      *&v98 = v33;
      *(&v98 + 1) = v32;
      v36 = -2;
    }

    else
    {
      HIDWORD(v72) = *(v4 + 184);
      v73 = v8;
      *&v74 = v30;
      *(&v74 + 1) = v31;
      *&v75 = v33;
      *(&v75 + 1) = v32;
      sub_1D5ED34B0(v24, v23, v25);
      v37 = v85;
      v34 = sub_1D5FA6CB0(v89, v79, &v91);
      v85 = v37;
      if (v37)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v24, v23, v25);

        return v8;
      }

      v76 = v25;
      v77 = v24;
      v78 = v23;
      *&v94 = v26;
      DWORD2(v94) = v27;
      *&v95 = v29;
      *(&v95 + 1) = v28;
      *&v96 = v91;
      *(&v96 + 1) = v73;
      v97 = v74;
      v98 = v75;
      v36 = BYTE4(v72);
    }

    v99 = v36;
    v38 = v4[24];
    v8 = v4[25];
    v39 = *(v4 + 208);
    v40 = v83;
    v41 = v100;
    if (v39 == 255)
    {
      v46 = 255;
    }

    else
    {
      v90 = v89;
      v91 = v38;
      v92 = v8;
      v93 = v39 & 1;
      v42 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v43 = v42();
      v44 = v85;
      v45 = FormatBoolean.value(contextLayoutOptions:)(v43);
      if (v44)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v77, v78, v76);

        sub_1D5D0AC3C(&v94, &qword_1EDF33718, &type metadata for FormatShadow);

        return v8;
      }

      v47 = v45;
      v85 = 0;

      v8 = 0;
      v46 = 0;
      v38 = v47 & 1;
    }

    v48 = v4[27];
    v49 = v4[28];
    v50 = *(v4 + 232);
    if (v50 == 255)
    {
      *(&v75 + 1) = v38;
      LODWORD(v75) = 255;
      v55 = v85;
      v56 = v82;
    }

    else
    {
      LODWORD(v79) = v46;
      v90 = v89;
      v91 = v48;
      v92 = v49;
      v93 = v50 & 1;
      v51 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v52 = v51();
      v53 = v85;
      v54 = FormatBoolean.value(contextLayoutOptions:)(v52);
      v55 = v53;
      if (v53)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v77, v78, v76);

        sub_1D5D0AC3C(&v94, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D60107F0(v38, v8, v79);

        return v8;
      }

      v57 = v54;
      *(&v75 + 1) = v38;

      v49 = 0;
      LODWORD(v75) = 0;
      v48 = v57 & 1;
      v56 = v82;
      LOBYTE(v46) = v79;
    }

    LODWORD(v85) = *(v4 + 233);
    if (v4[30])
    {
      v82 = &v72;
      v91 = v89;
      MEMORY[0x1EEE9AC00](v34, v35);
      v71 = &v91;
      v59 = sub_1D5ECA3A4(sub_1D6FF9B84, v70, v58);
      if (v55)
      {

        sub_1D5C8500C(v81);
        sub_1D5ED348C(v77, v78, v76);

        sub_1D5D0AC3C(&v94, &qword_1EDF33718, &type metadata for FormatShadow);
        sub_1D60107F0(*(&v75 + 1), v8, v46);
        sub_1D60107F0(v48, v49, v75);
        return v8;
      }

      v63 = v59;
      v89 = v49;
      v61 = v46;
      v62 = v8;
    }

    else
    {
      v89 = v49;
      v61 = v46;
      v62 = v8;
      v63 = 0;
    }

    v8 = swift_allocObject();
    swift_beginAccess();
    v64 = v97;
    *(v8 + 136) = v96;
    *(v8 + 152) = v64;
    *(v8 + 168) = v98;
    v65 = v95;
    *(v8 + 104) = v94;
    v66 = v84;
    *(v8 + 16) = v88;
    *(v8 + 24) = v66;
    *(v8 + 32) = v87;
    *(v8 + 40) = v41;
    v67 = v77;
    *(v8 + 72) = v80;
    *(v8 + 80) = v67;
    *(v8 + 88) = v78;
    *(v8 + 96) = v76;
    *(v8 + 184) = v99;
    *(v8 + 120) = v65;
    v68 = v81;
    *(v8 + 56) = v56;
    *(v8 + 64) = v68;
    swift_beginAccess();
    *(v8 + 48) = v40;
    *(v8 + 192) = *(&v75 + 1);
    *(v8 + 200) = v62;
    *(v8 + 208) = v61;
    v69 = v89;
    *(v8 + 216) = v48;
    *(v8 + 224) = v69;
    *(v8 + 232) = v75;
    *(v8 + 233) = v85;
    *(v8 + 240) = v63;
    return v8;
  }

  return v8;
}

uint64_t sub_1D6FD0868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v43[2] = a4;
  v44 = a5;
  v9 = v8;
  v10 = v7;
  v14 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v43 - v17;
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v14);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = (v43 - v21);
  v54 = a1;
  swift_beginAccess();
  v23 = v10[2];
  v24 = v10[3];

  v25 = sub_1D6E8DD40(v23, v24);
  v27 = v26;

  v45 = a3;
  v28 = *(a3 + 24);
  v29 = v25;
  if (*(v28 + 16))
  {
    *v22 = a2;
    v30 = type metadata accessor for FormatSourceMapContext();
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v22, 0, 1, v30);
    swift_beginAccess();

    sub_1D6D60828(v22, v29, v27);
    swift_endAccess();
  }

  v43[1] = v29;
  if (v10[6])
  {
    v32 = v10[10];
    v31 = v10[11];
    v34 = v10[8];
    v33 = v10[9];
    v35 = v10[7];
    v48 = v10[6];
    v49 = v35;
    v50 = v34;
    v51 = v33;
    v52 = v32;
    v53 = v31;

    sub_1D5DEA234(v32);

    sub_1D68687FC(a2, v18);
    if (v9)
    {

      v36 = v52;

      sub_1D5CBF568(v36);
    }

    v43[0] = 0;
    v39 = v52;

    sub_1D5CBF568(v39);

    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v40 = sub_1D7259B8C();
  (*(*(v40 - 8) + 56))(v18, v38, 1, v40);
  swift_unownedRetainStrong();

  swift_unownedRetain();

  v41 = swift_allocObject();
  v41[2] = a2;
  v41[3] = v10;
  v42 = v44;
  v41[4] = v45;
  v42(0);
  v46();

  sub_1D7259ACC();

  return sub_1D6FFCA9C(v18, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

uint64_t sub_1D6FD0CD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v5 = result;
  v6 = *v2;
  if (*v2)
  {
    v77 = result;
    v7 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v8 = v7();
    v9 = sub_1D5E02AFC(v8, v6);
    if (v3)
    {
    }

    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    sub_1D5F3FE24();
    result = swift_allocObject();
    v6 = result;
    *(result + 16) = xmmword_1D7273AE0;
    *(result + 32) = v11;
    *(result + 40) = 0;
  }

  v12 = v4[1];
  if (v12)
  {
    v77 = v5;
    v13 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v14 = v13();
    v15 = sub_1D5E02AFC(v14, v12);
    if (v3)
    {
    }

    v20 = v15;

    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    sub_1D5F3FE24();
    result = swift_allocObject();
    *(result + 16) = xmmword_1D7273AE0;
    *(result + 32) = v21;
    v75 = result;
    *(result + 40) = 0;
    v16 = v4[2];
    if (!v16)
    {
LABEL_12:
      v74 = 0;
      v22 = v4[3];
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_16:
      v73 = 0;
      v28 = v4[5];
      if (!v28)
      {
        goto LABEL_20;
      }

LABEL_17:
      v77 = v5;
      v29 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v30 = v29();
      v31 = sub_1D5E02AFC(v30, v28);
      if (v3)
      {
      }

      v38 = v31;

      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      sub_1D5F3FE24();
      result = swift_allocObject();
      *(result + 16) = xmmword_1D7273AE0;
      *(result + 32) = v39;
      v72 = result;
      *(result + 40) = 0;
      v34 = v4[6];
      if (v34)
      {
        goto LABEL_21;
      }

LABEL_24:
      v40 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v75 = 0;
    v16 = v4[2];
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v77 = v5;
  v17 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v18 = v17();
  v19 = sub_1D5E02AFC(v18, v16);
  if (v3)
  {
  }

  v26 = v19;

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  sub_1D5F3FE24();
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  *(result + 32) = v27;
  v74 = result;
  *(result + 40) = 0;
  v22 = v4[3];
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_13:
  v77 = v5;
  v23 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v24 = v23();
  v25 = sub_1D5E02AFC(v24, v22);
  if (v3)
  {
  }

  v32 = v25;

  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  sub_1D5F3FE24();
  result = swift_allocObject();
  *(result + 16) = xmmword_1D7273AE0;
  *(result + 32) = v33;
  v73 = result;
  *(result + 40) = 0;
  v28 = v4[5];
  if (v28)
  {
    goto LABEL_17;
  }

LABEL_20:
  v72 = 0;
  v34 = v4[6];
  if (!v34)
  {
    goto LABEL_24;
  }

LABEL_21:
  v77 = v5;
  v35 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v36 = v35();
  v37 = sub_1D5E02AFC(v36, v34);
  if (v3)
  {
  }

  v41 = v37;

  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  sub_1D5F3FE24();
  result = swift_allocObject();
  v40 = result;
  *(result + 16) = xmmword_1D7273AE0;
  *(result + 32) = v42;
  *(result + 40) = 0;
LABEL_26:
  v43 = v4[7];
  v44 = v4[8];
  v45 = *(v4 + 72);
  if (v45 == 255)
  {
    v49 = -1;
  }

  else
  {
    v70 = v40;
    v81 = v5;
    v77 = v43;
    v78 = v44;
    LOBYTE(v79) = v45 & 1;
    v46 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v47 = v46();
    v48 = FormatBoolean.value(contextLayoutOptions:)(v47);
    if (v3)
    {
    }

    v50 = v48;

    v44 = 0;
    v49 = 0;
    v43 = v50 & 1;
    v40 = v70;
  }

  v51 = v4[10];
  v52 = v4[11];
  v53 = v4[12];
  v54 = v4[13];
  v55 = *(v4 + 112);
  if (v55 == 255)
  {
    v56 = -1;
  }

  else if (v55)
  {
    result = sub_1D6FD8AD0(v51, v52, v53, v54, &v77);
    if (v3)
    {

      return sub_1D60107F0(v43, v44, v49);
    }

    v51 = v77;
    v52 = v78;
    v56 = 1;
    v53 = v79;
    v54 = v80;
  }

  else
  {
    v56 = 0;
  }

  v58 = v4[15];
  v57 = v4[16];
  v59 = *(v4 + 136);
  if (v59 != 255)
  {
    v65 = v56;
    v66 = v54;
    v67 = v53;
    v68 = v52;
    v69 = v51;
    v71 = v43;
    v81 = v5;
    v77 = v58;
    v78 = v57;
    LOBYTE(v79) = v59 & 1;
    v60 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();
    v61 = v60();
    v62 = FormatBoolean.value(contextLayoutOptions:)(v61);
    if (v3)
    {

      sub_1D60107F0(v43, v44, v49);
      sub_1D62B4B50(v69, v68, v67, v66, v65);
    }

    v63 = v62;

    v57 = 0;
    LOBYTE(v59) = 0;
    v58 = v63 & 1;
    v43 = v71;
    v52 = v68;
    v51 = v69;
    v54 = v66;
    v53 = v67;
    v56 = v65;
  }

  v64 = *(v4 + 32);
  *a2 = v6;
  *(a2 + 8) = v75;
  *(a2 + 16) = v74;
  *(a2 + 24) = v73;
  *(a2 + 32) = v64;
  *(a2 + 40) = v72;
  *(a2 + 48) = v40;
  *(a2 + 56) = v43;
  *(a2 + 64) = v44;
  *(a2 + 72) = v49;
  *(a2 + 80) = v51;
  *(a2 + 88) = v52;
  *(a2 + 96) = v53;
  *(a2 + 104) = v54;
  *(a2 + 112) = v56;
  *(a2 + 120) = v58;
  *(a2 + 128) = v57;
  *(a2 + 136) = v59;
  return result;
}

void sub_1D6FD1458(uint64_t a1@<X8>)
{
  v4 = *v1;
  if (*v1)
  {
    v5 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v6 = v5();
    v7 = sub_1D5E02AFC(v6, v4);
    if (v2)
    {

      return;
    }

    v8 = v7;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_1D5F3FE24();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1D7273AE0;
    *(v4 + 32) = v9;
    *(v4 + 40) = 0;
  }

  v10 = *(v1 + 8);
  if (v10)
  {
    v11 = off_1F513B080[0];
    type metadata accessor for FormatDecorationContext();
    v12 = v11();
    v13 = sub_1D5E02AFC(v12, v10);
    if (v2)
    {

      return;
    }

    v19 = v13;

    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    sub_1D5F3FE24();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7273AE0;
    *(v21 + 32) = v20;
    v71 = v21;
    *(v21 + 40) = 0;
    v14 = *(v1 + 16);
    if (!v14)
    {
LABEL_12:
      v70 = 0;
      v22 = *(v1 + 24);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_16:
      v69 = 0;
      v29 = *(v1 + 40);
      if (!v29)
      {
        goto LABEL_20;
      }

LABEL_17:
      v30 = off_1F513B080[0];
      type metadata accessor for FormatDecorationContext();
      v31 = v30();
      v32 = sub_1D5E02AFC(v31, v29);
      if (v2)
      {

        return;
      }

      v42 = v32;

      v43 = swift_allocObject();
      *(v43 + 16) = v42;
      sub_1D5F3FE24();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1D7273AE0;
      *(v44 + 32) = v43;
      v36 = v44;
      *(v44 + 40) = 0;
      v37 = *(v1 + 48);
      if (v37)
      {
        goto LABEL_21;
      }

LABEL_24:
      v45 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v71 = 0;
    v14 = *(v1 + 16);
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v15 = a1;
  v16 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v17 = v16();
  v18 = sub_1D5E02AFC(v17, v14);
  if (v2)
  {

    return;
  }

  v26 = v18;

  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  sub_1D5F3FE24();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D7273AE0;
  *(v28 + 32) = v27;
  v70 = v28;
  *(v28 + 40) = 0;
  a1 = v15;
  v22 = *(v1 + 24);
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_13:
  v23 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v24 = v23();
  v25 = sub_1D5E02AFC(v24, v22);
  if (v2)
  {

    return;
  }

  v33 = v25;

  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  sub_1D5F3FE24();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D7273AE0;
  *(v35 + 32) = v34;
  v69 = v35;
  *(v35 + 40) = 0;
  v29 = *(v1 + 40);
  if (v29)
  {
    goto LABEL_17;
  }

LABEL_20:
  v36 = 0;
  v37 = *(v1 + 48);
  if (!v37)
  {
    goto LABEL_24;
  }

LABEL_21:
  v38 = v36;
  v39 = off_1F513B080[0];
  type metadata accessor for FormatDecorationContext();
  v40 = v39();
  v41 = sub_1D5E02AFC(v40, v37);
  if (v2)
  {

    return;
  }

  v46 = v41;

  v47 = swift_allocObject();
  *(v47 + 16) = v46;
  sub_1D5F3FE24();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1D7273AE0;
  *(v45 + 32) = v47;
  *(v45 + 40) = 0;
  v36 = v38;
LABEL_26:
  v48 = *(v1 + 56);
  v49 = *(v1 + 64);
  v50 = *(v1 + 72);
  if (v50 == 255)
  {
    v51 = -1;
  }

  else
  {
    sub_1D6FCA290(*(v1 + 56), *(v1 + 64), v50 & 1, &v72);
    if (v2)
    {

      return;
    }

    v49 = *(&v72 + 1);
    v48 = v72;
    v51 = v73;
  }

  v52 = *(v1 + 80);
  v53 = *(v1 + 88);
  v54 = *(v1 + 96);
  v55 = *(v1 + 104);
  v56 = *(v1 + 112);
  if (v56 == 255)
  {
    v57 = -1;
  }

  else if (v56)
  {
    v67 = v51;
    sub_1D6FCBDCC(v52, v53, v54, v55, &v72);
    if (v2)
    {

      sub_1D60107F0(v48, v49, v67);
      return;
    }

    v53 = *(&v72 + 1);
    v52 = v72;
    v57 = 1;
    v54 = v73;
    v55 = v74;
    v51 = v67;
  }

  else
  {
    v57 = 0;
  }

  v58 = *(v1 + 120);
  v59 = *(v1 + 136);
  if (v59 == 255)
  {
    v60 = -1;
  }

  else
  {
    v62 = v57;
    v63 = v55;
    v64 = v54;
    v65 = v53;
    v66 = v52;
    v68 = v51;
    sub_1D6FCA290(v58, *(&v58 + 1), v59 & 1, &v72);
    if (v2)
    {

      sub_1D60107F0(v48, v49, v68);
      sub_1D62B4B50(v66, v65, v64, v63, v62);
      return;
    }

    v58 = v72;
    v60 = v73;
    v51 = v68;
    v53 = v65;
    v52 = v66;
    v55 = v63;
    v54 = v64;
    v57 = v62;
  }

  v61 = *(v1 + 32);
  *a1 = v4;
  *(a1 + 8) = v71;
  *(a1 + 16) = v70;
  *(a1 + 24) = v69;
  *(a1 + 32) = v61;
  *(a1 + 40) = v36;
  *(a1 + 48) = v45;
  *(a1 + 56) = v48;
  *(a1 + 64) = v49;
  *(a1 + 72) = v51;
  *(a1 + 80) = v52;
  *(a1 + 88) = v53;
  *(a1 + 96) = v54;
  *(a1 + 104) = v55;
  *(a1 + 112) = v57;
  *(a1 + 120) = v58;
  *(a1 + 136) = v60;
}

double sub_1D6FD1B60@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v6 = v2[5];
  v51[4] = v2[4];
  v51[5] = v6;
  v7 = v2[7];
  v51[6] = v2[6];
  v51[7] = v7;
  v8 = v2[1];
  v51[0] = *v2;
  v51[1] = v8;
  v9 = v2[3];
  v51[2] = v2[2];
  v51[3] = v9;
  v10 = sub_1D6011280(v51);
  v11 = sub_1D5D756C8(v51);
  if (v10 == 1)
  {
    v13 = *(v11 + 80);
    *&v57[16] = *(v11 + 64);
    *&v57[32] = v13;
    *&v57[48] = *(v11 + 96);
    v14 = *(v11 + 16);
    v54 = *v11;
    v55 = v14;
    v15 = *(v11 + 48);
    v56 = *(v11 + 32);
    *v57 = v15;
    v37[0] = a1;
    v16 = *(v11 + 120);
    MEMORY[0x1EEE9AC00](v11, v12);
    v36 = v37;
    v18 = sub_1D5EC9E90(sub_1D6FFCBEC, v35, v17);
    if (!v3)
    {
      v47 = v54;
      v48 = v55;
      v49 = v56;
      LOBYTE(v50[0]) = v57[0];
      *(v50 + 8) = *&v57[8];
      *(&v50[1] + 8) = *&v57[24];
      *(&v50[2] + 8) = *&v57[40];
      BYTE8(v50[3]) = v57[56];
      v58 = v16;
      v44 = v50[2];
      v45 = v50[3];
      v42 = v50[0];
      v43 = v50[1];
      v40 = v55;
      v41 = v56;
      v39 = v54;
      *&v46 = v18;
      *(&v46 + 1) = v16;
      sub_1D5C326F0(&v39);
      v20 = v44;
      a2[4] = v43;
      a2[5] = v20;
      v21 = v46;
      a2[6] = v45;
      a2[7] = v21;
      v22 = v40;
      *a2 = v39;
      a2[1] = v22;
      v23 = v42;
      a2[2] = v41;
      a2[3] = v23;
      sub_1D6FFC87C(&v58, &v38, &unk_1EC8992B0, &unk_1EDF1B5E0, MEMORY[0x1E69E7DE0], sub_1D6FF93E8);
    }
  }

  else
  {
    v24 = *(v11 + 8);
    v25 = *(v11 + 32);
    v52 = *(v11 + 16);
    v53 = v25;
    v27 = *(v11 + 48);
    v26 = *(v11 + 56);
    *&v39 = a1;
    MEMORY[0x1EEE9AC00](v11, v12);
    v36 = &v39;
    v29 = sub_1D5EC9E90(sub_1D6FFCBEC, v35, v28);
    if (!v3)
    {
      v60 = v29;
      v59[0] = v24;
      sub_1D6FFC87C(v59, &v39, &unk_1EDF1AEF0, &qword_1EDF1AF00, MEMORY[0x1E69E63B0], sub_1D6FF93E8);
      if (v27)
      {
        sub_1D6FCAC74(v27, v26, v37);
        v30 = v37[0];
        v26 = v37[1];
      }

      else
      {
        v30 = 0;
      }

      v40 = v52;
      v41 = v53;
      *&v39 = v60;
      *(&v39 + 1) = v59[0];
      *&v42 = v30;
      *(&v42 + 1) = v26;
      sub_1D5C32704(&v39);
      v31 = v44;
      a2[4] = v43;
      a2[5] = v31;
      v32 = v46;
      a2[6] = v45;
      a2[7] = v32;
      v33 = v40;
      *a2 = v39;
      a2[1] = v33;
      result = *&v41;
      v34 = v42;
      a2[2] = v41;
      a2[3] = v34;
    }
  }

  return result;
}

uint64_t sub_1D6FD1EC4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v151 = a1;
  v101 = *v1;
  swift_beginAccess();
  v6 = v1[2];
  v5 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  swift_beginAccess();
  v9 = v1[6];
  v10 = v1[7];
  if ((~v10 & 0xF000000000000007) != 0)
  {
    if (v10 >> 61 == 3)
    {
      v98 = v8;
      v99 = v6;
      v11 = v10 & 0x1FFFFFFFFFFFFFFFLL;
      v12 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v14 = *((v10 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v15 = v5;
      v16 = *(v11 + 40);
      v102 = v15;

      sub_1D5F58038(v12, v13, v14, v16);
      sub_1D5F501D4(v151, v12, v13, v14, v16, &v113);
      if (v3)
      {

        sub_1D5F57FEC(v12, v13, v14, v16);
        return v12;
      }

      v103 = v9;
      v100 = v7;
      v17 = v113;
      v18 = swift_allocObject();
      *(v18 + 16) = v12;
      *(v18 + 24) = v13;
      *(v18 + 32) = v14;
      *(v18 + 40) = v16;
      v10 = v18 | 0x8000000000000000;
      *(v18 + 48) = v17;
      v6 = v99;
      v7 = v100;
      v5 = v102;
      v8 = v98;
    }

    else
    {

      v103 = v9;

      sub_1D5D04BD4(v10);
    }
  }

  else
  {

    v103 = v9;
  }

  v19 = *(v4 + 9);
  v138 = *(v4 + 8);
  v139 = v19;
  v20 = *(v4 + 11);
  v140 = *(v4 + 10);
  v141 = v20;
  v21 = *(v4 + 5);
  v134 = *(v4 + 4);
  v135 = v21;
  v22 = *(v4 + 7);
  v136 = *(v4 + 6);
  v137 = v22;
  v144 = v136;
  v145 = v22;
  v142 = v134;
  v143 = v21;
  v148 = v140;
  v149 = v20;
  v146 = v138;
  v147 = v19;
  v23 = sub_1D5CFD0B8(&v142);
  if (v23 == 1)
  {
    v130 = v138;
    v131 = v139;
    v132 = v140;
    v133 = v141;
    v126 = v134;
    v127 = v135;
    v25 = v136;
    v26 = v137;
    goto LABEL_13;
  }

  v150[4] = v146;
  v150[5] = v147;
  v150[6] = v148;
  v150[7] = v149;
  v150[0] = v142;
  v150[1] = v143;
  v150[2] = v144;
  v150[3] = v145;
  v12 = v150;
  sub_1D6FD6B80(v151, &v113);
  if (!v3)
  {
    v108 = v117;
    v109 = v118;
    v110 = v119;
    v111 = v120;
    v104 = v113;
    v105 = v114;
    v106 = v115;
    v107 = v116;
    v23 = nullsub_1(&v104);
    v130 = v108;
    v131 = v109;
    v132 = v110;
    v133 = v111;
    v126 = v104;
    v127 = v105;
    v25 = v106;
    v26 = v107;
LABEL_13:
    v128 = v25;
    v129 = v26;
    if (v4[24])
    {
      v12 = &v88;
      *&v113 = v151;
      MEMORY[0x1EEE9AC00](v23, v24);
      v87[2] = &v113;
      v28 = sub_1D5EC9CB8(sub_1D6FF93B8, v87, v27);
      if (v3)
      {

        sub_1D5C8500C(v10);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);
        return v12;
      }

      v98 = v8;
      v99 = v6;
      v102 = v5;
      v97 = v10;
      v100 = v7;
    }

    else
    {
      v98 = v8;
      v99 = v6;
      v102 = v5;
      v97 = v10;
      v100 = v7;
      v28 = 0;
    }

    v96 = v28;
    v29 = v4[25];
    v30 = *(v4 + 52);
    v32 = v4[27];
    v31 = v4[28];
    v33 = v4[29];
    v34 = v4[30];
    v36 = v4[31];
    v35 = v4[32];
    v37 = v4[33];
    v12 = v4[34];
    v38 = *(v4 + 280);
    if (v38 == 254)
    {
      v39 = *(v4 + 53);
      *&v104 = v4[25];
      *(&v104 + 1) = __PAIR64__(v39, v30);
      *&v105 = v32;
      *(&v105 + 1) = v31;
      *&v106 = v33;
      *(&v106 + 1) = v34;
      *&v107 = v36;
      *(&v107 + 1) = v35;
      *&v108 = v37;
      *(&v108 + 1) = v12;
      LOBYTE(v109) = -2;
    }

    else
    {
      sub_1D5FA6CB0(v151, v33, &v113);
      if (v3)
      {

        sub_1D5C8500C(v97);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

        return v12;
      }

      *&v104 = v29;
      DWORD2(v104) = v30;
      *&v105 = v32;
      *(&v105 + 1) = v31;
      *&v106 = v113;
      *(&v106 + 1) = v34;
      *&v107 = v36;
      *(&v107 + 1) = v35;
      *&v108 = v37;
      *(&v108 + 1) = v12;
      LOBYTE(v109) = v38;
    }

    v40 = v4[36];
    v125 = *(v4 + 244);
    v41 = *(v4 + 59);
    v123 = *(v4 + 57);
    v124 = v41;
    v42 = *(v4 + 51);
    v119 = *(v4 + 49);
    v120 = v42;
    v43 = *(v4 + 55);
    v121 = *(v4 + 53);
    v122 = v43;
    v44 = *(v4 + 43);
    v115 = *(v4 + 41);
    v116 = v44;
    v45 = *(v4 + 47);
    v117 = *(v4 + 45);
    v118 = v45;
    v46 = *(v4 + 39);
    v113 = *(v4 + 37);
    v114 = v46;
    v47 = v4[62];
    v95 = *(v4 + 504);
    v48 = v4[64];
    v49 = v151;
    if (v48)
    {
      v94 = v47;
      v112[0] = v151;
      v50 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();

      v12 = v50();
      v51 = sub_1D5E02AFC(v12, v48);
      if (v3)
      {

        sub_1D5C8500C(v97);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

        sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

        return v12;
      }

      v52 = v51;
      v93 = v40;

      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      sub_1D5F3FE24();
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1D7273AE0;
      *(v48 + 32) = v53;
      *(v48 + 40) = 0;
      v49 = v151;
      v47 = v94;
    }

    else
    {
      v93 = v40;
    }

    v54 = v4[66];
    v12 = v4[65];
    if (v12 == 9)
    {
      v92 = v4[65];
      v55 = v100;
    }

    else
    {
      if ((~v54 & 0xF000000000000007) != 0)
      {
        sub_1D5FA6CB0(v49, v4[66], v112);
        v55 = v100;
        if (v3)
        {

          sub_1D5C8500C(v97);
          sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

          sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

          return v12;
        }

        v54 = v112[0];
      }

      else
      {
        v55 = v100;
      }

      v92 = v12;
    }

    v56 = v4[67];
    v57 = v4[68];
    v12 = v56;
    if (v56 == 9)
    {
      v89 = v48;
    }

    else
    {
      if ((~v57 & 0xF000000000000007) != 0)
      {
        sub_1D5FA6CB0(v49, v57, v112);
        if (v3)
        {

          sub_1D5C8500C(v97);
          sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

          sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

          sub_1D62B5D00(v92, v54);
          return v12;
        }

        v57 = v112[0];
      }

      v89 = v48;
      v56 = v12;
    }

    v90 = v56;
    v91 = v57;
    HIDWORD(v88) = *(v4 + 552);
    v58 = v4[70];
    if (v58)
    {
      v94 = v47;
      v100 = v55;
      v112[0] = v49;
      v59 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v12 = v59();
      v60 = sub_1D5E02AFC(v12, v58);
      if (v3)
      {

        sub_1D5C8500C(v97);
        sub_1D5D0AC3C(&v126, &qword_1EDF34688, &type metadata for FormatFill);

        sub_1D5D0AC3C(&v104, &qword_1EDF33718, &type metadata for FormatShadow);

        sub_1D62B5D00(v92, v54);
        sub_1D62B5D00(v90, v91);

        return v12;
      }

      v63 = v60;

      v64 = swift_allocObject();
      *(v64 + 16) = v63;
      sub_1D5F3FE24();
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D7273AE0;
      *(v62 + 32) = v64;
      *(v62 + 40) = 0;
      v55 = v100;
      v47 = v94;
    }

    else
    {
      v62 = 0;
    }

    v65 = v89;
    v12 = swift_allocObject();
    swift_beginAccess();
    v66 = v102;
    *(v12 + 16) = v99;
    *(v12 + 24) = v66;
    *(v12 + 32) = v98;
    *(v12 + 40) = v55;
    swift_beginAccess();
    v67 = v96;
    v68 = v97;
    *(v12 + 48) = v103;
    *(v12 + 56) = v68;
    v69 = v131;
    *(v12 + 128) = v130;
    *(v12 + 144) = v69;
    v70 = v133;
    *(v12 + 160) = v132;
    *(v12 + 176) = v70;
    v71 = v127;
    *(v12 + 64) = v126;
    *(v12 + 80) = v71;
    v72 = v129;
    *(v12 + 96) = v128;
    *(v12 + 112) = v72;
    *(v12 + 192) = v67;
    v73 = v104;
    *(v12 + 216) = v105;
    *(v12 + 200) = v73;
    *(v12 + 280) = v109;
    v74 = v107;
    *(v12 + 264) = v108;
    v75 = v106;
    *(v12 + 248) = v74;
    *(v12 + 232) = v75;
    *(v12 + 288) = v93;
    v76 = v113;
    v77 = v114;
    v78 = v116;
    *(v12 + 328) = v115;
    *(v12 + 344) = v78;
    *(v12 + 296) = v76;
    *(v12 + 312) = v77;
    v79 = v117;
    v80 = v118;
    v81 = v120;
    *(v12 + 392) = v119;
    *(v12 + 408) = v81;
    *(v12 + 360) = v79;
    *(v12 + 376) = v80;
    v82 = v121;
    v83 = v122;
    v84 = v123;
    v85 = v124;
    *(v12 + 488) = v125;
    *(v12 + 456) = v84;
    *(v12 + 472) = v85;
    *(v12 + 424) = v82;
    *(v12 + 440) = v83;
    *(v12 + 496) = v47;
    *(v12 + 504) = v95;
    *(v12 + 512) = v65;
    *(v12 + 520) = v92;
    *(v12 + 528) = v54;
    v86 = v91;
    *(v12 + 536) = v90;
    *(v12 + 544) = v86;
    *(v12 + 552) = BYTE4(v88);
    *(v12 + 560) = v62;
    return v12;
  }

  sub_1D5C8500C(v10);
  return v12;
}

uint64_t (*sub_1D6FD2904(uint64_t a1))()
{
  v3 = v1;
  v80 = *v1;
  sub_1D5D27F7C(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v81 = &v62[-v7];
  swift_beginAccess();
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v78 = v1[4];
  v79 = v8;
  swift_beginAccess();
  v11 = v1[6];
  v12 = v3[7];
  if (!v12)
  {

    v83 = v10;

    v82 = v11;

    v16 = 0;
    goto LABEL_6;
  }

  *&v86 = a1;
  v92 = a1;
  v13 = v9;
  v9 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v84 = v13;

  v14 = v9();
  v15 = sub_1D5E02AFC(v14, v12);
  if (!v2)
  {
    v17 = v15;
    v82 = v11;
    v83 = v10;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D7273AE0;
    *(v16 + 32) = v18;
    *(v16 + 40) = 0;
    v9 = v84;
    a1 = v92;
LABEL_6:
    v19 = swift_beginAccess();
    v21 = v3[8];
    if (v21)
    {
      *&v86 = a1;
      MEMORY[0x1EEE9AC00](v19, v20);
      *&v62[-16] = &v86;

      v22 = sub_1D5ECA124(sub_1D6FF9618, &v62[-32], v21);
      if (v2)
      {
LABEL_8:

        return v9;
      }

      v84 = v22;
    }

    else
    {
      v84 = 0;
    }

    v23 = v3[9];
    if ((~v23 & 0xF000000000000007) != 0)
    {
      v19 = sub_1D6FCF804(a1, v3[9], &v86);
      if (v2)
      {
        goto LABEL_8;
      }

      v23 = v86;
    }

    v92 = a1;
    if (v3[10])
    {
      *&v86 = v92;
      MEMORY[0x1EEE9AC00](v19, v20);
      *&v62[-16] = &v86;
      v25 = sub_1D5EC9CB8(sub_1D6FFCC1C, &v62[-32], v24);
      if (v2)
      {

        sub_1D5C8500C(v23);
        return v9;
      }

      v70 = v16;
      v71 = v25;
      v72 = v23;
    }

    else
    {
      v70 = v16;
      v71 = 0;
      v72 = v23;
    }

    v26 = *(v3 + 88);
    v27 = v3[13];
    v75 = v3[12];
    v76 = v27;
    v77 = *(v3 + 112);
    v74 = v3[15];
    v67 = *(v3 + 128);
    v68 = v26;
    swift_beginAccess();
    v73 = v3[17];
    v28 = v3[18];
    v29 = *(v3 + 38);
    v31 = v3[20];
    v30 = v3[21];
    v32 = v3[23];
    v69 = v3[22];
    v34 = v3[24];
    v33 = v3[25];
    v35 = v3[26];
    v36 = v3[27];
    if (*(v3 + 224) == 254)
    {
      DWORD2(v66) = *(v3 + 39);
      sub_1D5ED34B0(v75, v76, v77);
      sub_1D5D0AF9C(v74);
      *&v86 = v28;
      *(&v86 + 1) = __PAIR64__(DWORD2(v66), v29);
      *&v87 = v31;
      *(&v87 + 1) = v30;
      *&v88 = v69;
      *(&v88 + 1) = v32;
      *&v89 = v34;
      *(&v89 + 1) = v33;
      *&v90 = v35;
      *(&v90 + 1) = v36;
      v91 = -2;
      v37 = v73;
    }

    else
    {
      v63 = *(v3 + 224);
      v64 = v32;
      *&v65 = v34;
      *(&v65 + 1) = v33;
      *&v66 = v35;
      *(&v66 + 1) = v36;
      v39 = v75;
      sub_1D5ED34B0(v75, v76, v77);
      v40 = v74;
      sub_1D5D0AF9C(v74);

      v38 = sub_1D5FA6CB0(v92, v69, v85);
      if (v2)
      {

        sub_1D5C8500C(v72);
        sub_1D5D0AFAC(v40);
        sub_1D5ED348C(v39, v76, v77);

        return v9;
      }

      v37 = v73;
      *&v86 = v28;
      DWORD2(v86) = v29;
      *&v87 = v31;
      *(&v87 + 1) = v30;
      *&v88 = v85[0];
      *(&v88 + 1) = v64;
      v89 = v65;
      v90 = v66;
      v91 = v63;
    }

    v41 = v72;
    v42 = v3[29];
    v43 = v92;
    v44 = v70;
    if ((~v42 & 0xF000000000000007) != 0)
    {
      v38 = sub_1D5FA6CB0(v92, v42, v85);
      if (v2)
      {

        sub_1D5C8500C(v41);
        sub_1D5D0AFAC(v74);
        sub_1D5ED348C(v75, v76, v77);

        sub_1D5D0AC3C(&v86, &qword_1EDF33718, &type metadata for FormatShadow);
        return v9;
      }

      v42 = v85[0];
    }

    LODWORD(v66) = *(v3 + 240);
    v46 = v3[31];
    v45 = v3[32];
    v69 = v42;
    if (v46)
    {
      *(&v66 + 1) = v45;
      if (v46 == 1)
      {
        v92 = 1;
        v72 = v41;
        v47 = v9;
LABEL_41:
        v70 = MEMORY[0x1E69D6A58];
        v52 = v81;
        sub_1D6FFC87C(v3 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v81, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v9 = swift_allocObject();
        *(v9 + 8) = 0;
        *(v9 + 17) = 0;
        swift_beginAccess();
        v53 = v78;
        *(v9 + 2) = v79;
        *(v9 + 3) = v47;
        v54 = v83;
        *(v9 + 4) = v53;
        *(v9 + 5) = v54;
        swift_beginAccess();
        *(v9 + 6) = v82;
        *(v9 + 7) = v44;
        swift_beginAccess();
        *(v9 + 8) = v84;

        v55 = v71;
        *(v9 + 9) = v72;
        *(v9 + 10) = v55;
        *(v9 + 88) = v68;
        v56 = v76;
        *(v9 + 12) = v75;
        *(v9 + 13) = v56;
        *(v9 + 112) = v77;
        *(v9 + 15) = v74;
        *(v9 + 128) = v67;
        swift_beginAccess();
        *(v9 + 17) = v37;

        v57 = v89;
        v58 = v90;
        v59 = v87;
        *(v9 + 11) = v88;
        *(v9 + 12) = v57;
        *(v9 + 13) = v58;
        *(v9 + 224) = v91;
        *(v9 + 9) = v86;
        *(v9 + 10) = v59;
        v60 = v70;
        *(v9 + 29) = v69;
        *(v9 + 240) = v66;
        v61 = *(&v66 + 1);
        *(v9 + 31) = v92;
        *(v9 + 32) = v61;
        sub_1D6FFC410(v52, v9 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, &qword_1EDF45AD0, v60);
        return v9;
      }

      v85[0] = v43;
      MEMORY[0x1EEE9AC00](v38, v42);
      *&v62[-16] = v85;
      v38 = sub_1D5EC9FC4(sub_1D6FFCC04, &v62[-32], v48);
      if (v2)
      {

        goto LABEL_37;
      }

      v46 = v38;
      v37 = v73;
      v45 = *(&v66 + 1);
    }

    v92 = v46;
    if (!v45)
    {
      v72 = v41;
      v47 = v9;
      *(&v66 + 1) = 0;
      goto LABEL_41;
    }

    v85[0] = v43;
    MEMORY[0x1EEE9AC00](v38, v42);
    *&v62[-16] = v85;
    v50 = sub_1D5EC9FC4(sub_1D6FF9684, &v62[-32], v49);
    if (!v2)
    {
      *(&v66 + 1) = v50;
      v72 = v41;
      v47 = v9;
      goto LABEL_41;
    }

LABEL_37:
    sub_1D5C8500C(v41);
    sub_1D5D0AFAC(v74);
    sub_1D5ED348C(v75, v76, v77);

    sub_1D5D0AC3C(&v86, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5C84FF4(v69);
    return v9;
  }

  return v9;
}

uint64_t sub_1D6FD331C(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v53 = *v1;
  sub_1D5D27F7C(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = &v45 - v5;
  swift_beginAccess();
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 40);
  v54 = *(v1 + 32);
  v55 = v7;
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v12 = *(v1 + 64);
  v11 = *(v1 + 72);
  v13 = *(v1 + 80);
  v14 = *(v1 + 88);
  v15 = *(v1 + 112);
  v17 = *(v2 + 96);
  v16 = *(v2 + 104);
  v58 = v6;
  v59 = v8;
  if ((v15 & 0xFE) == 0x7E)
  {
    *&v73 = v10;
    *(&v73 + 1) = v9;
    *&v74 = v12;
    *(&v74 + 1) = v11;
    *&v75 = v13;
    BYTE8(v75) = v14;
    *(&v75 + 9) = *(v2 + 89);
    HIDWORD(v75) = *(v2 + 92);
    *&v76 = v17;
    *(&v76 + 1) = v16;
    v77 = v15;

    goto LABEL_8;
  }

  *&v51 = v12;
  *(&v51 + 1) = v11;
  v52 = v13;

  if ((~v10 & 0xF000000000000007) == 0)
  {
LABEL_7:
    v19 = v14 & 1;
    v67 = v19;
    sub_1D5ED34B0(v17, v16, v15);
    *&v73 = v10;
    *(&v73 + 1) = v9;
    v74 = v51;
    *&v75 = v52;
    BYTE8(v75) = v19;
    *&v76 = v17;
    *(&v76 + 1) = v16;
    v77 = v15;
LABEL_8:
    v20 = *(v2 + 176);
    v21 = v78;
    if (v20 == 255)
    {
      v23 = *(v2 + 136);
      v63 = *(v2 + 120);
      v64 = v23;
      v65 = *(v2 + 152);
      v66 = *(v2 + 168);
      v24 = 255;
    }

    else
    {
      v22 = *(v2 + 136);
      v68 = *(v2 + 120);
      v69 = v22;
      v70 = *(v2 + 152);
      v71 = *(v2 + 168);
      v72 = v20;
      sub_1D6FD5C60(v57, v60);
      if (v21)
      {

        sub_1D5D0AC3C(&v73, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
        return v2;
      }

      v63 = v60[0];
      v64 = v60[1];
      v65 = v60[2];
      v66 = v61;
      v24 = v62;
    }

    LODWORD(v57) = v24;
    v25 = v56;
    sub_1D6FFC87C(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v56, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    LODWORD(v78) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
    LODWORD(v52) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
    v26 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
    *(&v51 + 1) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v50 = v26;
    v27 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    v47 = *(v2 + v27);
    LODWORD(v51) = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
    v28 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    v29 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 16);
    v48 = *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
    v45 = v29;
    swift_beginAccess();
    v49 = *(v2 + v28);
    v30 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    v46 = *(v2 + v30);
    v2 = swift_allocObject();
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu) = 2;
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag) = 2;
    swift_beginAccess();
    v31 = v76;
    *(v2 + 80) = v75;
    *(v2 + 96) = v31;
    v32 = v74;
    *(v2 + 48) = v73;
    *(v2 + 64) = v32;
    v33 = v64;
    *(v2 + 120) = v63;
    v34 = v58;
    *(v2 + 16) = v55;
    *(v2 + 24) = v34;
    v35 = v59;
    *(v2 + 32) = v54;
    *(v2 + 40) = v35;
    *(v2 + 112) = v77;
    *(v2 + 136) = v33;
    *(v2 + 152) = v65;
    *(v2 + 168) = v66;
    *(v2 + 176) = v57;
    sub_1D6FFC410(v25, v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds) = v78;
    *(v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors) = v52;
    v36 = (v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
    v37 = *(&v51 + 1);
    v38 = v50;
    *v36 = *(&v51 + 1);
    v36[1] = v38;
    v39 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
    swift_beginAccess();
    *(v2 + v39) = v47;
    v40 = v2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters;
    v41 = v45;
    *v40 = v48;
    *(v40 + 16) = v41;
    *(v40 + 32) = v51;
    v42 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
    swift_beginAccess();
    *(v2 + v42) = v49;
    v43 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
    swift_beginAccess();
    *(v2 + v43) = v46;
    sub_1D62B7E1C(v37);

    return v2;
  }

  v18 = v78;
  sub_1D5FA6CB0(v57, v10, v60);
  v78 = v18;
  if (!v18)
  {
    v10 = *&v60[0];
    goto LABEL_7;
  }

  return v2;
}

uint64_t sub_1D6FD38BC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v14 = v4;
  v15 = v2;
  v13 = *(v1 + 48);
  swift_beginAccess();
  v6 = v1[7];
  v7 = v1[8];
  v8 = *(v1 + 74);
  v9 = *(v1 + 36);
  v10 = *(v1 + 75);
  v11 = swift_allocObject();
  swift_beginAccess();
  *(v11 + 16) = v15;
  *(v11 + 24) = v3;
  *(v11 + 32) = v14;
  *(v11 + 40) = v5;
  *(v11 + 48) = v13;
  swift_beginAccess();
  *(v11 + 56) = v6;
  *(v11 + 64) = v7;
  *(v11 + 74) = v8;
  *(v11 + 72) = v9;
  *(v11 + 75) = v10;

  sub_1D62B7DCC(v7, v9 | (v8 << 16));
  return v11;
}

uint64_t sub_1D6FD3A10(uint64_t a1)
{
  v3 = v1;
  v40 = *v1;
  swift_beginAccess();
  v5 = v1[3];
  v43 = v1[2];
  v6 = v1[5];
  v41 = v1[4];
  swift_beginAccess();
  v7 = v1[6];
  v8 = *(v3 + 56);
  if (v8)
  {
    v42[0] = a1;
    v36 = a1;
    v9 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext();

    v39 = v5;
    v10 = v9();
    v11 = sub_1D5E02AFC(v10, v8);
    if (v2)
    {

LABEL_13:

      return v3;
    }

    v17 = v11;
    v37 = v6;
    v38 = v7;

    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    sub_1D5F3FE24();
    v12 = swift_allocObject();
    v14 = v12;
    *(v12 + 16) = xmmword_1D7273AE0;
    *(v12 + 32) = v18;
    *(v12 + 40) = 0;
    v5 = v39;
    a1 = v36;
    if (!*(v3 + 64))
    {
      goto LABEL_8;
    }
  }

  else
  {

    v37 = v6;

    v38 = v7;

    v14 = 0;
    if (!*(v3 + 64))
    {
LABEL_8:
      v16 = 0;
LABEL_9:
      v39 = v16;
      v20 = *(v3 + 72);
      v19 = *(v3 + 80);
      v21 = *(v3 + 88);
      v22 = *(v3 + 96);
      v23 = *(v3 + 104);
      LODWORD(v36) = *(v3 + 108);
      v24 = *(v3 + 112);
      v25 = *(v3 + 120);
      v26 = *(v3 + 128);
      v34 = *(v3 + 152);
      v35 = *(v3 + 136);
      v33 = *(v3 + 168);
      v32 = *(v3 + 176);
      if (v32 == 254)
      {
        sub_1D5ED34B0(v20, v19, v21);
      }

      else
      {
        sub_1D5ED34B0(v20, v19, v21);
        sub_1D5FA6CB0(a1, v26, v42);
        if (v2)
        {

          sub_1D5ED348C(v20, v19, v21);
          goto LABEL_13;
        }

        v26 = v42[0];
      }

      v27 = *(v3 + 177);
      v3 = swift_allocObject();
      swift_beginAccess();
      *(v3 + 16) = v43;
      *(v3 + 24) = v5;
      v28 = v37;
      *(v3 + 32) = v41;
      *(v3 + 40) = v28;
      swift_beginAccess();
      v29 = v39;
      *(v3 + 48) = v38;
      *(v3 + 56) = v14;
      *(v3 + 64) = v29;
      *(v3 + 72) = v20;
      *(v3 + 80) = v19;
      *(v3 + 88) = v21;
      *(v3 + 96) = v22;
      *(v3 + 104) = v23;
      *(v3 + 108) = v36;
      *(v3 + 112) = v24;
      *(v3 + 120) = v25;
      *(v3 + 128) = v26;
      *(v3 + 152) = v34;
      *(v3 + 136) = v35;
      *(v3 + 168) = v33;
      *(v3 + 176) = v32;
      *(v3 + 177) = v27;
      return v3;
    }
  }

  v42[0] = a1;
  MEMORY[0x1EEE9AC00](v12, v13);
  v31[2] = v42;
  v16 = sub_1D5EC9CB8(sub_1D6FFCC1C, v31, v15);
  if (!v2)
  {
    goto LABEL_9;
  }

  return v3;
}

uint64_t sub_1D6FD3E28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  swift_beginAccess();
  v6 = *(v0 + 72);
  v13 = *(v0 + 80);
  v12 = *(v0 + 84);
  swift_beginAccess();
  v7 = *(v0 + 88);
  v8 = swift_allocObject();
  *(v8 + 72) = 0;
  swift_beginAccess();
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  *(v8 + 32) = v4;
  *(v8 + 40) = v3;
  *(v8 + 48) = v5;
  *(v8 + 56) = v11;
  *(v8 + 64) = v10;
  swift_beginAccess();
  *(v8 + 72) = v6;

  *(v8 + 84) = v12;
  *(v8 + 80) = v13;
  swift_beginAccess();
  *(v8 + 88) = v7;
  return v8;
}

uint64_t sub_1D6FD3FBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t *))
{
  v64 = a2;
  v4 = v3;
  v5 = v2;
  v62 = *v2;
  swift_beginAccess();
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[5];
  v63 = v2[4];
  swift_beginAccess();
  v10 = v2[6];
  v11 = *(v5 + 56);
  v66 = a1;
  if (!v11)
  {

    v17 = 0;
    goto LABEL_6;
  }

  v65 = v7;
  *&v68 = a1;
  v12 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();

  v74 = v10;
  v13 = v12();
  v14 = sub_1D5E02AFC(v13, v11);
  v4 = v3;
  if (!v3)
  {
    v18 = v14;

    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_1D5F3FE24();
    v15 = swift_allocObject();
    v17 = v15;
    *(v15 + 16) = xmmword_1D7273AE0;
    *(v15 + 32) = v19;
    *(v15 + 40) = 0;
    v10 = v74;
    v7 = v65;
    a1 = v66;
LABEL_6:
    v20 = *(v5 + 64);
    if ((~v20 & 0xF000000000000007) != 0)
    {
      v15 = sub_1D6FCF804(a1, *(v5 + 64), &v68);
      if (v4)
      {

        return v5;
      }

      v20 = v68;
    }

    if (*(v5 + 72))
    {
      *&v68 = v66;
      MEMORY[0x1EEE9AC00](v15, v16);
      v50[2] = &v68;
      v22 = sub_1D5EC9CB8(v64, v50, v21);
      if (v4)
      {

        sub_1D5C8500C(v20);
        return v5;
      }

      v59 = v9;
      v65 = v7;
      v60 = v20;
      v64 = v17;
      v74 = v10;
    }

    else
    {
      v59 = v9;
      v65 = v7;
      v60 = v20;
      v64 = v17;
      v74 = v10;
      v22 = 0;
    }

    v61 = v22;
    v23 = *(v5 + 80);
    v24 = *(v5 + 88);
    v25 = *(v5 + 96);
    v26 = *(v5 + 104);
    v27 = *(v5 + 112);
    v29 = *(v5 + 120);
    v28 = *(v5 + 128);
    v30 = *(v5 + 144);
    v58 = *(v5 + 136);
    v31 = *(v5 + 152);
    v32 = *(v5 + 160);
    v33 = *(v5 + 168);
    v34 = *(v5 + 176);
    if (*(v5 + 184) == 254)
    {
      DWORD2(v54) = *(v5 + 116);
      v55 = v23;
      v56 = v24;
      v57 = v25;
      sub_1D5ED34B0(v23, v24, v25);
      *&v68 = v26;
      *(&v68 + 1) = __PAIR64__(DWORD2(v54), v27);
      *&v69 = v29;
      *(&v69 + 1) = v28;
      *&v70 = v58;
      *(&v70 + 1) = v30;
      *&v71 = v31;
      *(&v71 + 1) = v32;
      *&v72 = v33;
      *(&v72 + 1) = v34;
      v35 = -2;
    }

    else
    {
      v51 = *(v5 + 184);
      v52 = v30;
      *&v53 = v31;
      *(&v53 + 1) = v32;
      *&v54 = v33;
      *(&v54 + 1) = v34;
      v36 = v23;
      v37 = v24;
      sub_1D5ED34B0(v23, v24, v25);
      sub_1D5FA6CB0(v66, v58, v67);
      if (v4)
      {

        sub_1D5C8500C(v60);
        sub_1D5ED348C(v36, v37, v25);

        return v5;
      }

      v55 = v36;
      v56 = v37;
      v57 = v25;
      *&v68 = v26;
      DWORD2(v68) = v27;
      *&v69 = v29;
      *(&v69 + 1) = v28;
      *&v70 = v67[0];
      *(&v70 + 1) = v52;
      v71 = v53;
      v72 = v54;
      v35 = v51;
    }

    v73 = v35;
    v38 = v60;
    v39 = v59;
    v40 = *(v5 + 192);
    v41 = v65;
    if ((~v40 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(v66, *(v5 + 192), v67);
      v42 = v74;
      if (v4)
      {

        sub_1D5C8500C(v38);
        sub_1D5ED348C(v55, v56, v57);

        sub_1D5D0AC3C(&v68, &qword_1EDF33718, &type metadata for FormatShadow);
        return v5;
      }

      v40 = v67[0];
    }

    else
    {
      v42 = v74;
    }

    v44 = *(v5 + 200);
    v5 = swift_allocObject();
    swift_beginAccess();
    *(v5 + 16) = v41;
    *(v5 + 24) = v8;
    *(v5 + 32) = v63;
    *(v5 + 40) = v39;
    swift_beginAccess();
    v45 = v71;
    *(v5 + 136) = v70;
    *(v5 + 152) = v45;
    *(v5 + 168) = v72;
    v46 = v69;
    *(v5 + 104) = v68;
    v47 = v64;
    *(v5 + 48) = v42;
    *(v5 + 56) = v47;
    v48 = v61;
    *(v5 + 64) = v38;
    *(v5 + 72) = v48;
    v49 = v56;
    *(v5 + 80) = v55;
    *(v5 + 88) = v49;
    *(v5 + 96) = v57;
    *(v5 + 184) = v73;
    *(v5 + 120) = v46;
    *(v5 + 192) = v40;
    *(v5 + 200) = v44;
    return v5;
  }

  return v5;
}

uint64_t sub_1D6FD464C(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v16 = v1[4];
  swift_beginAccess();
  v8 = v1[6];
  v9 = *(v3 + 56);

  if ((~v9 & 0xF000000000000007) == 0)
  {
    v14 = v6;
    goto LABEL_6;
  }

  sub_1D5FA6CB0(a1, v9, v15);
  if (!v2)
  {
    v14 = v6;
    v9 = v15[0];
LABEL_6:
    v10 = *(v3 + 64);
    if ((~v10 & 0xF000000000000007) != 0)
    {
      sub_1D5FA6CB0(a1, *(v3 + 64), v15);
      if (v2)
      {

        sub_1D5C84FF4(v9);
        return v3;
      }

      v10 = v15[0];
    }

    v11 = *(v3 + 72);
    v12 = *(v3 + 80);
    v3 = swift_allocObject();
    swift_beginAccess();
    *(v3 + 16) = v14;
    *(v3 + 24) = v5;
    *(v3 + 32) = v16;
    *(v3 + 40) = v7;
    swift_beginAccess();
    *(v3 + 48) = v8;
    *(v3 + 56) = v9;
    *(v3 + 64) = v10;
    *(v3 + 72) = v11;
    *(v3 + 80) = v12;
    sub_1D62B8658(v12);
    return v3;
  }

  return v3;
}

uint64_t sub_1D6FD4830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void), uint64_t a7)
{
  v89 = a7;
  v86 = a5;
  v87 = a6;
  v85 = a4;
  v8 = v7;
  v97 = a3;
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v90 = v10;
  v88 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v79 - v12);
  v13 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v92 = &v79 - v16;
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v13);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v95 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v96 = &v79 - v22;
  v23 = type metadata accessor for FormatNodeStateData.Data();
  v93 = *(v23 - 1);
  v94 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext, v13);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v79 - v29;
  v127 = a1;
  swift_beginAccess();

  v32 = sub_1D6B0ACE8(v31, 0);

  v33 = (*(v32 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v34 = *v33;
  v35 = v33[1];
  swift_beginAccess();
  v36 = *(v8 + 136);

  v37 = v130;
  v38 = sub_1D6FBE744(v36, v32, v34, v35);
  if (v37)
  {
  }

  else
  {
    v82 = v26;
    v83 = v30;
    v84 = v38;
    v130 = 0;

    swift_beginAccess();
    v40 = *(v8 + 16);
    v41 = *(v8 + 24);

    v42 = sub_1D6E8DD40(v40, v41);
    v44 = v43;

    v97 = *(v97 + 24);
    if (*(v97 + 16))
    {
      v45 = v83;
      *v83 = v32;
      v46 = type metadata accessor for FormatSourceMapContext();
      swift_storeEnumTagMultiPayload();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      swift_beginAccess();

      sub_1D6D60828(v45, v42, v44);
      swift_endAccess();
    }

    v47 = *(v8 + 72);
    v48 = *(v8 + 104);
    v125[2] = *(v8 + 88);
    *v126 = v48;
    *&v126[15] = *(v8 + 119);
    v125[0] = *(v8 + 56);
    v125[1] = v47;
    v49 = *(v8 + 72);
    v50 = *(v8 + 104);
    v121 = *(v8 + 88);
    v122[0] = v50;
    *(v122 + 15) = *(v8 + 119);
    v119 = *(v8 + 56);
    v120 = v49;
    sub_1D62B62D8(v125, &v115);
    v51 = v130;
    sub_1D71CF078(v32, &v123);
    if (v51)
    {

      v117 = v121;
      v118[0] = v122[0];
      *(v118 + 15) = *(v122 + 15);
      v115 = v119;
      v116 = v120;
      return sub_1D62B6334(&v115);
    }

    else
    {
      v81 = v42;
      v83 = v44;
      v116 = v120;
      v117 = v121;
      v118[0] = v122[0];
      *(v118 + 15) = *(v122 + 15);
      v115 = v119;
      sub_1D62B6334(&v115);
      v52 = v124;
      v53 = v82;
      *v82 = v123;
      *(v53 + 8) = v52;
      v54 = v94;
      swift_storeEnumTagMultiPayload();
      v55 = v96;
      sub_1D5BE4148(v53, v96, type metadata accessor for FormatNodeStateData.Data);
      (*(v93 + 56))(v55, 0, 1, v54);
      v130 = 0;
      v94 = v32;
      v80 = type metadata accessor for FormatNodeStateData.Data;
      v79 = MEMORY[0x1E69E6720];
      v56 = v95;
      sub_1D6FFC87C(v55, v95, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      swift_beginAccess();
      v57 = v83;

      v93 = v52;
      sub_1D5E443B8(v52);
      sub_1D6D60A18(v56, v81, v57);
      swift_endAccess();
      sub_1D6FFCA9C(v55, &qword_1EDF2C470, v80, v79, sub_1D5D27F7C);
      sub_1D6FFC9A0(v53, type metadata accessor for FormatNodeStateData.Data);
      swift_beginAccess();
      v58 = *(v8 + 160);
      v113[0] = *(v8 + 144);
      v113[1] = v58;
      v60 = *(v8 + 144);
      v59 = *(v8 + 160);
      v114[0] = *(v8 + 176);
      *(v114 + 9) = *(v8 + 185);
      v108 = v60;
      v109 = v59;
      v110[0] = *(v8 + 176);
      *(v110 + 9) = *(v8 + 185);
      sub_1D66AD764(v113, &v105);
      sub_1D725A7EC();
      v61 = v130;
      FormatProgressKind.value(contextLayoutOptions:)(v105, &v111);
      if (v61)
      {

        sub_1D5E443C8(v93);
        v105 = v108;
        v106 = v109;
        v107[0] = v110[0];
        *(v107 + 9) = *(v110 + 9);
        return sub_1D62B63E4(&v105);
      }

      else
      {
        v105 = v108;
        v106 = v109;
        v107[0] = v110[0];
        *(v107 + 9) = *(v110 + 9);
        sub_1D62B63E4(&v105);

        v128 = v111;
        v129[0] = v112[0];
        *(v129 + 9) = *(v112 + 9);
        if (*(v8 + 256))
        {
          v63 = *(v8 + 288);
          v62 = *(v8 + 296);
          v65 = *(v8 + 272);
          v64 = *(v8 + 280);
          v66 = *(v8 + 264);
          v98 = *(v8 + 256);
          v99 = v66;
          v100 = v65;
          v101 = v64;
          v102 = v63;
          v103 = v62;

          sub_1D5DEA234(v63);

          sub_1D68687FC(v94, v92);
          v67 = v102;

          sub_1D5CBF568(v67);
          v68 = v83;

          v69 = 0;
        }

        else
        {
          v69 = 1;
          v68 = v83;
        }

        v70 = sub_1D7259B8C();
        (*(*(v70 - 8) + 56))(v92, v69, 1, v70);
        swift_getKeyPath();
        swift_beginAccess();
        v104 = *(v8 + 32);
        v71 = v104;

        sub_1D5C82CD8(v71);
        v72 = v94;
        sub_1D5BEB9F4(v94, v81, v68, v91);
        sub_1D5C92A8C(v104);
        swift_beginAccess();
        v73 = *(v8 + 48);

        v97 = sub_1D618EFB4(v72, v73);

        v74 = swift_allocObject();
        v130 = 0;
        v75 = v83;
        v76 = v84;
        *(v74 + 16) = v81;
        *(v74 + 24) = v75;
        *(v74 + 32) = v72;
        *(v74 + 40) = v8;
        *(v74 + 48) = v76;
        v77 = v129[0];
        *(v74 + 56) = v128;
        *(v74 + 72) = v77;
        *(v74 + 81) = *(v129 + 9);
        v86(0);
        v87();

        v78 = v91;
        sub_1D7259B1C();

        sub_1D5E443C8(v93);
        (*(v88 + 8))(v78, v90);
        return sub_1D6FFCA9C(v92, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
      }
    }
  }
}
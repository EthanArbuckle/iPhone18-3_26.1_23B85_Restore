uint64_t _s8NewsFeed14FormatSlotNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (v6 || (sub_1D72646CC()) && (swift_beginAccess(), v7 = *(a1 + 32), swift_beginAccess(), v7 == *(a2 + 32)) && (swift_beginAccess(), v8 = *(a1 + 40), swift_beginAccess(), v9 = *(a2 + 40), , , v10 = sub_1D633E44C(v8, v9), , , (v10) && (swift_beginAccess(), v11 = *(a1 + 48), swift_beginAccess(), v12 = *(a2 + 48), , , v13 = sub_1D5BFC390(v11, v12), , , (v13))
  {
    swift_beginAccess();
    v14 = *(a1 + 56);
    swift_beginAccess();
    v15 = *(a2 + 56);

    v16 = sub_1D635B244(v14, v15, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _s8NewsFeed16FormatSwitchNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (sub_1D634E5D0(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    swift_beginAccess();
    v9 = *(v7 + 16);
    swift_beginAccess();
    v10 = *(v8 + 16);

    v11 = sub_1D633E44C(v9, v10);

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v8)
  {
    goto LABEL_13;
  }

  swift_beginAccess();
  v12 = *(a1 + 48);
  swift_beginAccess();
  if (v12 == *(a2 + 48))
  {
    swift_beginAccess();
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    swift_beginAccess();
    v17 = *(a2 + 64);
    if (v16)
    {
      if (!v17 || (v15 != *(a2 + 56) || v16 != v17) && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (v17)
    {
      goto LABEL_13;
    }

    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    v20 = *(a1 + 88);
    v21 = *(a1 + 96);
    v23 = *(a1 + 104);
    v22 = *(a1 + 112);
    v25 = *(a2 + 72);
    v24 = *(a2 + 80);
    v26 = *(a2 + 88);
    v38 = *(a2 + 96);
    v27 = *(a2 + 104);
    v28 = *(a2 + 112);
    if (v19)
    {
      v42[0] = v19;
      v42[1] = v18;
      v42[2] = v20;
      v42[3] = v21;
      v43 = v23;
      v44 = v22;
      if (v25)
      {
        v39[0] = v25;
        v39[1] = v24;
        v39[2] = v26;
        v39[3] = v38;
        v40 = v27;
        v41 = v28;
        v29 = v21;
        v36 = v26;
        v30 = v21;
        v31 = v23;
        v32 = v27;
        sub_1D5EB1D80(v19, v18, v20, v29, v31);
        sub_1D5EB1D80(v25, v24, v36, v38, v32);
        sub_1D5EB1D80(v19, v18, v20, v30, v31);
        v13 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v42, v39);
        v33 = v40;

        sub_1D5CBF568(v33);

        v34 = v43;

        sub_1D5CBF568(v34);

        sub_1D5EB2398(v19, v18, v20, v30, v31);
        return v13 & 1;
      }

      v35 = v27;
      sub_1D5EB1D80(v19, v18, v20, v21, v23);
      v37 = v35;
      sub_1D5EB1D80(0, v24, v26, v38, v35);
      sub_1D5EB1D80(v19, v18, v20, v21, v23);

      sub_1D5CBF568(v23);
    }

    else
    {
      v37 = v27;
      sub_1D5EB1D80(0, v18, v20, v21, v23);
      if (!v25)
      {
        sub_1D5EB1D80(0, v24, v26, v38, v37);
        sub_1D5EB2398(0, v18, v20, v21, v23);
        v13 = 1;
        return v13 & 1;
      }

      sub_1D5EB1D80(v25, v24, v26, v38, v37);
    }

    sub_1D5EB2398(v19, v18, v20, v21, v23);
    sub_1D5EB2398(v25, v24, v26, v38, v37);
  }

LABEL_13:
  v13 = 0;
  return v13 & 1;
}

uint64_t _s8NewsFeed23FormatSupplementaryNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_35;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_35;
  }

  v59[0] = *(a1 + 48);
  v56[0] = *(a2 + 48);
  sub_1D5C82CD8(v59[0]);
  sub_1D5C82CD8(v56[0]);
  v8 = static FormatSize.== infix(_:_:)(v59, v56);
  sub_1D5C92A8C(v56[0]);
  sub_1D5C92A8C(v59[0]);
  if ((v8 & 1) == 0)
  {
    goto LABEL_35;
  }

  v9 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_35;
    }

    v11 = *(v9 + 16);
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v12 + 16);

    v15 = sub_1D5E1F5F0(v13, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if (v10)
  {
LABEL_35:
    v44 = 0;
    return v44 & 1;
  }

  swift_beginAccess();
  v16 = *(a1 + 64);
  swift_beginAccess();
  v17 = *(a2 + 64);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v19 = *(a1 + 72);
  swift_beginAccess();
  v20 = *(a2 + 72);

  v21 = sub_1D633E5BC(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v22 = *(a1 + 80);
  swift_beginAccess();
  v23 = *(a2 + 80);

  v24 = sub_1D5BFC390(v22, v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v25 = *(a1 + 88);
  swift_beginAccess();
  v26 = *(a2 + 88);

  v27 = sub_1D635B244(v25, v26, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);

  if ((v27 & 1) == 0)
  {
    goto LABEL_35;
  }

  swift_beginAccess();
  v28 = *(a1 + 96);
  swift_beginAccess();
  v29 = *(a2 + 96);

  v30 = sub_1D633E6D8(v28, v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_35;
  }

  v31 = *(a2 + 112);
  if (*(a1 + 112))
  {
    if (!*(a2 + 112))
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*(a1 + 104) != *(a2 + 104))
    {
      v31 = 1;
    }

    if (v31)
    {
      goto LABEL_35;
    }
  }

  v33 = *(a1 + 120);
  v32 = *(a1 + 128);
  v35 = *(a1 + 136);
  v34 = *(a1 + 144);
  v36 = *(a1 + 152);
  v37 = *(a1 + 160);
  v39 = *(a2 + 120);
  v38 = *(a2 + 128);
  v40 = *(a2 + 136);
  v55 = *(a2 + 144);
  v42 = *(a2 + 152);
  v41 = *(a2 + 160);
  if (!v33)
  {
    v54 = v36;
    sub_1D5EB1D80(0, v32, v35, v34, v36);
    if (!v39)
    {
      sub_1D5EB1D80(0, v38, v40, v55, v42);
      sub_1D5EB2398(0, v32, v35, v34, v54);
      v44 = 1;
      return v44 & 1;
    }

    sub_1D5EB1D80(v39, v38, v40, v55, v42);
    v48 = v34;
    v47 = v54;
    goto LABEL_34;
  }

  v59[0] = v33;
  v59[1] = v32;
  v59[2] = v35;
  v59[3] = v34;
  v60 = v36;
  v61 = v37;
  if (!v39)
  {
    v49 = v34;
    v52 = v34;
    v47 = v36;
    sub_1D5EB1D80(v33, v32, v35, v49, v36);
    v48 = v52;
    sub_1D5EB1D80(0, v38, v40, v55, v42);
    sub_1D5EB1D80(v33, v32, v35, v52, v47);

    sub_1D5CBF568(v47);

LABEL_34:
    sub_1D5EB2398(v33, v32, v35, v48, v47);
    sub_1D5EB2398(v39, v38, v40, v55, v42);
    goto LABEL_35;
  }

  v56[0] = v39;
  v56[1] = v38;
  v56[2] = v40;
  v56[3] = v55;
  v57 = v42;
  v58 = v41;
  v51 = v42;
  v43 = v36;
  v53 = v36;
  sub_1D5EB1D80(v33, v32, v35, v34, v36);
  sub_1D5EB1D80(v39, v38, v40, v55, v51);
  sub_1D5EB1D80(v33, v32, v35, v34, v43);
  v44 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v59, v56);
  v45 = v57;

  sub_1D5CBF568(v45);

  v46 = v60;

  sub_1D5CBF568(v46);

  sub_1D5EB2398(v33, v32, v35, v34, v53);
  return v44 & 1;
}

uint64_t _s8NewsFeed17FormatSnippetNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v7 = a1[4];
  v8 = a1[5];
  swift_beginAccess();
  if ((v7 != a2[4] || v8 != a2[5]) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v9 = a1[6];
  v10 = a1[7];
  swift_beginAccess();
  v11 = a2[7];
  if (v10)
  {
    if (!v11 || (v9 != a2[6] || v10 != v11) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v11)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v12 = a1[8];
  v13 = a1[9];
  swift_beginAccess();
  v14 = a2[9];
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_23;
    }

LABEL_26:
    v23 = 0;
    return v23 & 1;
  }

  if (!v14 || (v12 != a2[8] || v13 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  swift_beginAccess();
  v15 = a1[10];
  swift_beginAccess();
  v16 = a2[10];

  v17 = sub_1D5BFC390(v15, v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v18 = a1[11];
  swift_beginAccess();
  v19 = a2[11];

  v20 = sub_1D635B244(v18, v19, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);

  if ((v20 & 1) == 0)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v21 = a1[12];
  swift_beginAccess();
  v22 = a2[12];

  v23 = sub_1D633E6D8(v21, v22);

  return v23 & 1;
}

uint64_t _s8NewsFeed15FormatSpaceNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0 || (swift_beginAccess(), v37[0] = a1[4], swift_beginAccess(), v34[0] = a2[4], sub_1D5C82CD8(v37[0]), sub_1D5C82CD8(v34[0]), v7 = static FormatSize.== infix(_:_:)(v37, v34), sub_1D5C92A8C(v34[0]), sub_1D5C92A8C(v37[0]), (v7 & 1) == 0) || (swift_beginAccess(), v8 = a1[5], swift_beginAccess(), v9 = a2[5], , , v10 = sub_1D6344A40(v8, v9, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88), , , (v10 & 1) == 0))
  {
    v26 = 0;
    return v26 & 1;
  }

  v12 = a1[6];
  v11 = a1[7];
  v13 = a1[8];
  v14 = a1[9];
  v16 = a1[10];
  v15 = a1[11];
  v18 = a2[6];
  v17 = a2[7];
  v19 = a2[8];
  v33 = a2[9];
  v20 = a2[10];
  v21 = a2[11];
  if (!v12)
  {
    v32 = v20;
    sub_1D5EB1D80(0, v11, v13, v14, v16);
    if (!v18)
    {
      sub_1D5EB1D80(0, v17, v19, v33, v32);
      sub_1D5EB2398(0, v11, v13, v14, v16);
      v26 = 1;
      return v26 & 1;
    }

    sub_1D5EB1D80(v18, v17, v19, v33, v32);
    goto LABEL_16;
  }

  v37[0] = v12;
  v37[1] = v11;
  v37[2] = v13;
  v37[3] = v14;
  v38 = v16;
  v39 = v15;
  if (!v18)
  {
    v30 = v20;
    sub_1D5EB1D80(v12, v11, v13, v14, v16);
    v32 = v30;
    sub_1D5EB1D80(0, v17, v19, v33, v30);
    sub_1D5EB1D80(v12, v11, v13, v14, v16);

    sub_1D5CBF568(v16);

LABEL_16:
    sub_1D5EB2398(v12, v11, v13, v14, v16);
    sub_1D5EB2398(v18, v17, v19, v33, v32);
    v26 = 0;
    return v26 & 1;
  }

  v34[0] = v18;
  v34[1] = v17;
  v34[2] = v19;
  v34[3] = v33;
  v35 = v20;
  v36 = v21;
  v22 = v14;
  v31 = v19;
  v23 = v14;
  v24 = v16;
  v25 = v20;
  sub_1D5EB1D80(v12, v11, v13, v22, v24);
  sub_1D5EB1D80(v18, v17, v31, v33, v25);
  sub_1D5EB1D80(v12, v11, v13, v23, v24);
  v26 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v37, v34);
  v27 = v35;

  sub_1D5CBF568(v27);

  v28 = v38;

  sub_1D5CBF568(v28);

  sub_1D5EB2398(v12, v11, v13, v23, v24);
  return v26 & 1;
}

uint64_t sub_1D665108C(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  v12 = v10 == *(a2 + 16) && v11 == *(a2 + 24);
  if (!v12 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v13 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v13 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v14 = *(a1 + 48);
  swift_beginAccess();
  v15 = *(a2 + 48);

  v16 = sub_1D635170C(v14, v15, a3, a4, a5);

  if ((v16 & 1) == 0)
  {
    goto LABEL_24;
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_24;
    }

    v19 = sub_1D633A310(v17, v18);

    if ((v19 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_24;
    }
  }

  v20 = *(a1 + 64);
  v21 = *(a2 + 64);
  if ((~v20 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 64));
    sub_1D5D04BD4(v21);
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v20);
      goto LABEL_27;
    }

LABEL_23:
    sub_1D5C8500C(v20);
    sub_1D5C8500C(v21);
    goto LABEL_24;
  }

  *&v75 = *(a1 + 64);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v20);
    sub_1D5D04BD4(v21);
    sub_1D5D04BD4(v20);

    goto LABEL_23;
  }

  *v87 = v21;
  sub_1D5D04BD4(v20);
  sub_1D5D04BD4(v21);
  sub_1D5D04BD4(v20);
  v24 = static FormatBackground.== infix(_:_:)(&v75, v87);

  sub_1D5C8500C(v20);
  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v25 = *(a1 + 72);
  v26 = *(a2 + 72);
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_24;
    }

    v27 = sub_1D633C9E8(v25, v26);

    if ((v27 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v26)
  {
    goto LABEL_24;
  }

  v29 = *(a1 + 80);
  v28 = *(a1 + 88);
  v30 = *(a1 + 96);
  v32 = *(a2 + 80);
  v31 = *(a2 + 88);
  v33 = *(a2 + 96);
  if (v30 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 80), *(a1 + 88), *(a1 + 96));
    sub_1D5ED34B0(v32, v31, v33);
    if (v33 > 0xFD)
    {
      sub_1D5ED348C(v29, v28, v30);
      goto LABEL_39;
    }

LABEL_37:
    sub_1D5ED348C(v29, v28, v30);
    sub_1D5ED348C(v32, v31, v33);
    goto LABEL_24;
  }

  *&v75 = *(a1 + 80);
  *(&v75 + 1) = v28;
  LOBYTE(v76) = v30;
  if (v33 > 0xFD)
  {
    sub_1D5ED34B0(v29, v28, v30);
    sub_1D5ED34B0(v32, v31, v33);
    sub_1D5ED34B0(v29, v28, v30);
    sub_1D5ED34A0(v29, v28, v30);
    goto LABEL_37;
  }

  *v87 = v32;
  *&v87[8] = v31;
  v87[16] = v33;
  sub_1D5ED34B0(v29, v28, v30);
  sub_1D5ED34B0(v32, v31, v33);
  sub_1D5ED34B0(v29, v28, v30);
  v34 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v75, v87);
  sub_1D5ED34A0(*v87, *&v87[8], v87[16]);
  sub_1D5ED34A0(v75, *(&v75 + 1), v76);
  sub_1D5ED348C(v29, v28, v30);
  if ((v34 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_39:
  v35 = *(a1 + 152);
  v93[2] = *(a1 + 136);
  v93[3] = v35;
  v93[4] = *(a1 + 168);
  v94 = *(a1 + 184);
  v36 = *(a1 + 120);
  v93[0] = *(a1 + 104);
  v93[1] = v36;
  v37 = *(a2 + 152);
  v95[2] = *(a2 + 136);
  v95[3] = v37;
  v95[4] = *(a2 + 168);
  v96 = *(a2 + 184);
  v38 = *(a2 + 120);
  v95[0] = *(a2 + 104);
  v95[1] = v38;
  v39 = *(a1 + 120);
  v40 = *(a1 + 152);
  v90 = *(a1 + 136);
  v91 = v40;
  v92 = *(a1 + 168);
  v88 = *(a1 + 104);
  v89 = v39;
  v41 = v94;
  *&v87[23] = *(a2 + 120);
  *&v87[39] = *(a2 + 136);
  *&v87[55] = *(a2 + 152);
  *&v87[71] = *(a2 + 168);
  *&v87[7] = *(a2 + 104);
  v42 = v96;
  if (v94 == 254)
  {
    if (v96 == 254)
    {
      v43 = *(a1 + 120);
      v44 = *(a1 + 152);
      v77 = *(a1 + 136);
      v78 = v44;
      v79 = *(a1 + 168);
      v75 = *(a1 + 104);
      v76 = v43;
      v80 = -2;
      v45 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v93, &v69, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v95, &v69, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
      sub_1D66615F8(&v75, &qword_1EDF33718, &type metadata for FormatShadow, v45, sub_1D5C34D84);
      goto LABEL_47;
    }

    v49 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v93, &v75, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v95, &v75, &qword_1EDF33718, &type metadata for FormatShadow, v49, sub_1D5C34D84);
LABEL_45:
    v77 = v90;
    v78 = v91;
    v79 = v92;
    v75 = v88;
    v76 = v89;
    v83 = *&v87[32];
    v84 = *&v87[48];
    *v85 = *&v87[64];
    v81 = *v87;
    v80 = v41;
    *&v85[15] = *&v87[79];
    v82 = *&v87[16];
    v86 = v42;
    sub_1D5D35558(&v75, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    goto LABEL_24;
  }

  v46 = *(a1 + 120);
  v47 = *(a1 + 152);
  v77 = *(a1 + 136);
  v78 = v47;
  v79 = *(a1 + 168);
  v75 = *(a1 + 104);
  v76 = v46;
  v80 = v94;
  v74 = v94;
  v71 = v77;
  v72 = v47;
  v73 = v79;
  v69 = v75;
  v70 = v46;
  if (v96 == 254)
  {
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v68 = v80;
    v63 = v75;
    v64 = v76;
    v48 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v93, v61, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v95, v61, &qword_1EDF33718, &type metadata for FormatShadow, v48, sub_1D5C34D84);
    sub_1D5D355B8(&v75, v61, &qword_1EDF33718, &type metadata for FormatShadow, v48, sub_1D5C34D84);
    sub_1D601144C(&v63);
    goto LABEL_45;
  }

  v50 = *(a2 + 120);
  v51 = *(a2 + 152);
  v65 = *(a2 + 136);
  v66 = v51;
  v67 = *(a2 + 168);
  v63 = *(a2 + 104);
  v64 = v50;
  v68 = v96;
  v52 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v93, v61, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v95, v61, &qword_1EDF33718, &type metadata for FormatShadow, v52, sub_1D5C34D84);
  sub_1D5D355B8(&v75, v61, &qword_1EDF33718, &type metadata for FormatShadow, v52, sub_1D5C34D84);
  v53 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v69, &v63);
  v59[2] = v65;
  v59[3] = v66;
  v59[4] = v67;
  v60 = v68;
  v59[0] = v63;
  v59[1] = v64;
  sub_1D601144C(v59);
  v61[2] = v71;
  v61[3] = v72;
  v61[4] = v73;
  v62 = v74;
  v61[0] = v69;
  v61[1] = v70;
  sub_1D601144C(v61);
  v65 = v90;
  v66 = v91;
  v67 = v92;
  v63 = v88;
  v64 = v89;
  v68 = v41;
  sub_1D66615F8(&v63, &qword_1EDF33718, &type metadata for FormatShadow, v52, sub_1D5C34D84);
  if ((v53 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_47:
  v54 = *(a1 + 192);
  v55 = *(a2 + 192);
  if ((~v54 & 0xF000000000000007) != 0)
  {
    *&v75 = *(a1 + 192);
    if ((~v55 & 0xF000000000000007) != 0)
    {
      *v87 = v55;
      sub_1D5CFCFAC(v54);
      sub_1D5CFCFAC(v55);
      sub_1D5CFCFAC(v54);
      v56 = static FormatColor.== infix(_:_:)(&v75, v87);

      sub_1D5C84FF4(v54);
      if ((v56 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_54;
    }

    sub_1D5CFCFAC(v54);
    sub_1D5CFCFAC(v55);
    sub_1D5CFCFAC(v54);

LABEL_52:
    sub_1D5C84FF4(v54);
    sub_1D5C84FF4(v55);
    goto LABEL_24;
  }

  sub_1D5CFCFAC(*(a1 + 192));
  sub_1D5CFCFAC(v55);
  if ((~v55 & 0xF000000000000007) != 0)
  {
    goto LABEL_52;
  }

  sub_1D5C84FF4(v54);
LABEL_54:
  v57 = *(a1 + 200);
  v58 = *(a2 + 200);
  if (v57 == 2)
  {
    if (v58 == 2)
    {
      v22 = 1;
      return v22 & 1;
    }
  }

  else if (v58 != 2)
  {
    v22 = v58 ^ v57 ^ 1;
    return v22 & 1;
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

BOOL _s8NewsFeed27FormatLayeredMediaNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6351934(v8, v9);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = sub_1D633A310(v11, v12);

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v12)
    {
      return 0;
    }
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 64));
    sub_1D5D04BD4(v15);
    if ((~v15 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v14);
      goto LABEL_27;
    }

LABEL_23:
    sub_1D5C8500C(v14);
    sub_1D5C8500C(v15);
    return 0;
  }

  *&v76 = *(a1 + 64);
  if ((~v15 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v14);
    sub_1D5D04BD4(v15);
    sub_1D5D04BD4(v14);

    goto LABEL_23;
  }

  *v88 = v15;
  sub_1D5D04BD4(v14);
  sub_1D5D04BD4(v15);
  sub_1D5D04BD4(v14);
  v18 = static FormatBackground.== infix(_:_:)(&v76, v88);

  sub_1D5C8500C(v14);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = sub_1D633C9E8(v19, v20);

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v23 = *(a1 + 80);
  v22 = *(a1 + 88);
  v24 = *(a1 + 96);
  v26 = *(a2 + 80);
  v25 = *(a2 + 88);
  v27 = *(a2 + 96);
  if (v24 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 80), *(a1 + 88), *(a1 + 96));
    sub_1D5ED34B0(v26, v25, v27);
    if (v27 > 0xFD)
    {
      sub_1D5ED348C(v23, v22, v24);
      goto LABEL_39;
    }

LABEL_37:
    sub_1D5ED348C(v23, v22, v24);
    sub_1D5ED348C(v26, v25, v27);
    return 0;
  }

  *&v76 = *(a1 + 80);
  *(&v76 + 1) = v22;
  LOBYTE(v77) = v24;
  if (v27 > 0xFD)
  {
    sub_1D5ED34B0(v23, v22, v24);
    sub_1D5ED34B0(v26, v25, v27);
    sub_1D5ED34B0(v23, v22, v24);
    sub_1D5ED34A0(v23, v22, v24);
    goto LABEL_37;
  }

  *v88 = v26;
  *&v88[8] = v25;
  v88[16] = v27;
  sub_1D5ED34B0(v23, v22, v24);
  sub_1D5ED34B0(v26, v25, v27);
  sub_1D5ED34B0(v23, v22, v24);
  v28 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v76, v88);
  sub_1D5ED34A0(*v88, *&v88[8], v88[16]);
  sub_1D5ED34A0(v76, *(&v76 + 1), v77);
  sub_1D5ED348C(v23, v22, v24);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_39:
  v29 = *(a1 + 152);
  v94[2] = *(a1 + 136);
  v94[3] = v29;
  v94[4] = *(a1 + 168);
  v95 = *(a1 + 184);
  v30 = *(a1 + 120);
  v94[0] = *(a1 + 104);
  v94[1] = v30;
  v31 = *(a2 + 152);
  v96[2] = *(a2 + 136);
  v96[3] = v31;
  v96[4] = *(a2 + 168);
  v97 = *(a2 + 184);
  v32 = *(a2 + 120);
  v96[0] = *(a2 + 104);
  v96[1] = v32;
  v33 = *(a1 + 120);
  v34 = *(a1 + 152);
  v91 = *(a1 + 136);
  v92 = v34;
  v93 = *(a1 + 168);
  v89 = *(a1 + 104);
  v90 = v33;
  v35 = v95;
  *&v88[23] = *(a2 + 120);
  *&v88[39] = *(a2 + 136);
  *&v88[55] = *(a2 + 152);
  *&v88[71] = *(a2 + 168);
  *&v88[7] = *(a2 + 104);
  v36 = v97;
  if (v95 == 254)
  {
    if (v97 == 254)
    {
      v37 = *(a1 + 120);
      v38 = *(a1 + 152);
      v78 = *(a1 + 136);
      v79 = v38;
      v80 = *(a1 + 168);
      v76 = *(a1 + 104);
      v77 = v37;
      v81 = -2;
      v39 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v94, &v70, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v96, &v70, &qword_1EDF33718, &type metadata for FormatShadow, v39, sub_1D5C34D84);
      sub_1D66615F8(&v76, &qword_1EDF33718, &type metadata for FormatShadow, v39, sub_1D5C34D84);
      goto LABEL_47;
    }

    v43 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v94, &v76, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v96, &v76, &qword_1EDF33718, &type metadata for FormatShadow, v43, sub_1D5C34D84);
LABEL_45:
    v78 = v91;
    v79 = v92;
    v80 = v93;
    v76 = v89;
    v77 = v90;
    v84 = *&v88[32];
    v85 = *&v88[48];
    *v86 = *&v88[64];
    v82 = *v88;
    v81 = v35;
    *&v86[15] = *&v88[79];
    v83 = *&v88[16];
    v87 = v36;
    sub_1D5D35558(&v76, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    return 0;
  }

  v40 = *(a1 + 120);
  v41 = *(a1 + 152);
  v78 = *(a1 + 136);
  v79 = v41;
  v80 = *(a1 + 168);
  v76 = *(a1 + 104);
  v77 = v40;
  v81 = v95;
  v75 = v95;
  v72 = v78;
  v73 = v41;
  v74 = v80;
  v70 = v76;
  v71 = v40;
  if (v97 == 254)
  {
    v66 = v78;
    v67 = v79;
    v68 = v80;
    v69 = v81;
    v64 = v76;
    v65 = v77;
    v42 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v94, v62, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v96, v62, &qword_1EDF33718, &type metadata for FormatShadow, v42, sub_1D5C34D84);
    sub_1D5D355B8(&v76, v62, &qword_1EDF33718, &type metadata for FormatShadow, v42, sub_1D5C34D84);
    sub_1D601144C(&v64);
    goto LABEL_45;
  }

  v44 = *(a2 + 120);
  v45 = *(a2 + 152);
  v66 = *(a2 + 136);
  v67 = v45;
  v68 = *(a2 + 168);
  v64 = *(a2 + 104);
  v65 = v44;
  v69 = v97;
  v46 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v94, v62, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v96, v62, &qword_1EDF33718, &type metadata for FormatShadow, v46, sub_1D5C34D84);
  sub_1D5D355B8(&v76, v62, &qword_1EDF33718, &type metadata for FormatShadow, v46, sub_1D5C34D84);
  v47 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v70, &v64);
  v60[2] = v66;
  v60[3] = v67;
  v60[4] = v68;
  v61 = v69;
  v60[0] = v64;
  v60[1] = v65;
  sub_1D601144C(v60);
  v62[2] = v72;
  v62[3] = v73;
  v62[4] = v74;
  v63 = v75;
  v62[0] = v70;
  v62[1] = v71;
  sub_1D601144C(v62);
  v66 = v91;
  v67 = v92;
  v68 = v93;
  v64 = v89;
  v65 = v90;
  v69 = v35;
  sub_1D66615F8(&v64, &qword_1EDF33718, &type metadata for FormatShadow, v46, sub_1D5C34D84);
  if ((v47 & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  v49 = *(a1 + 192);
  v48 = *(a1 + 200);
  v50 = *(a1 + 208);
  v52 = *(a2 + 192);
  v51 = *(a2 + 200);
  v53 = *(a2 + 208);
  if (v50 == 255)
  {
    sub_1D6189668(*(a1 + 192), *(a1 + 200), 255);
    if (v53 != 255)
    {
      goto LABEL_59;
    }

    sub_1D6189668(v52, v51, 255);
    sub_1D60107F0(v49, v48, 255);
  }

  else
  {
    *&v76 = *(a1 + 192);
    *(&v76 + 1) = v48;
    LOBYTE(v77) = v50;
    if (v53 == 255)
    {
LABEL_57:
      sub_1D6189668(v49, v48, v50);
      sub_1D6189668(v52, v51, 255);
      sub_1D6189668(v49, v48, v50);
      sub_1D5D2F2C8(v49, v48, v50 & 1);
LABEL_60:
      sub_1D60107F0(v49, v48, v50);
      sub_1D60107F0(v52, v51, v53);
      return 0;
    }

    *v88 = v52;
    *&v88[8] = v51;
    v88[16] = v53 & 1;
    sub_1D6189668(v49, v48, v50);
    sub_1D6189668(v52, v51, v53);
    sub_1D6189668(v49, v48, v50);
    v54 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v76, v88);
    sub_1D5D2F2C8(*v88, *&v88[8], v88[16]);
    sub_1D5D2F2C8(v76, *(&v76 + 1), v77);
    sub_1D60107F0(v49, v48, v50);
    if ((v54 & 1) == 0)
    {
      return 0;
    }
  }

  v49 = *(a1 + 216);
  v48 = *(a1 + 224);
  v50 = *(a1 + 232);
  v52 = *(a2 + 216);
  v51 = *(a2 + 224);
  v53 = *(a2 + 232);
  if (v50 != 255)
  {
    *&v76 = *(a1 + 216);
    *(&v76 + 1) = v48;
    LOBYTE(v77) = v50;
    if (v53 != 255)
    {
      *v88 = v52;
      *&v88[8] = v51;
      v88[16] = v53 & 1;
      sub_1D6189668(v49, v48, v50);
      sub_1D6189668(v52, v51, v53);
      sub_1D6189668(v49, v48, v50);
      v55 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v76, v88);
      sub_1D5D2F2C8(*v88, *&v88[8], v88[16]);
      sub_1D5D2F2C8(v76, *(&v76 + 1), v77);
      sub_1D60107F0(v49, v48, v50);
      if ((v55 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_62;
    }

    goto LABEL_57;
  }

  sub_1D6189668(*(a1 + 216), *(a1 + 224), 255);
  if (v53 != 255)
  {
LABEL_59:
    sub_1D6189668(v52, v51, v53);
    goto LABEL_60;
  }

  sub_1D6189668(v52, v51, 255);
  sub_1D60107F0(v49, v48, 255);
LABEL_62:
  v56 = *(a1 + 233);
  v57 = *(a2 + 233);
  if (v56 == 2)
  {
    if (v57 != 2)
    {
      return 0;
    }
  }

  else if (v57 == 2 || ((v57 ^ v56) & 1) != 0)
  {
    return 0;
  }

  v58 = *(a1 + 240);
  v59 = *(a2 + 240);
  if (v58)
  {
    if (v59)
    {

      v16 = sub_1D633CB78(v58, v59);

      return v16;
    }
  }

  else if (!v59)
  {
    return 1;
  }

  return 0;
}

uint64_t _s8NewsFeed21FormatCustomNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_21;
  }

  v8 = *(a1 + 48);
  v9 = *(a2 + 48);
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      goto LABEL_21;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return v10 & 1;
    }
  }

  v11 = *(a1 + 56);
  v10 = *(a2 + 56);
  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  if (v10)
  {

    v12 = sub_1D635B244(v11, v10, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);

    if (v12)
    {
LABEL_19:
      swift_beginAccess();
      v13 = *(a1 + 64);
      swift_beginAccess();
      v14 = *(a2 + 64);

      sub_1D6351CF4(v13, v14);
      LOBYTE(v10) = v15;

      return v10 & 1;
    }

LABEL_21:
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t _s8NewsFeed19FormatItemNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatItemNodeAction();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5BF78(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v97 = &v94 - v11;
  sub_1D66F4EB8(0, &qword_1EC889B08, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v94 - v15;
  swift_beginAccess();
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  swift_beginAccess();
  if ((v17 != *(a2 + 16) || v18 != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_27;
  }

  v95 = v5;
  v96 = v4;
  v19 = *(a1 + 64);
  v20 = *(a1 + 96);
  v129 = *(a1 + 80);
  v130 = v20;
  v21 = *(a1 + 64);
  v128[0] = *(a1 + 48);
  v128[1] = v21;
  v22 = *(a2 + 64);
  v23 = *(a2 + 96);
  v133 = *(a2 + 80);
  v134 = v23;
  v24 = *(a2 + 64);
  v132[0] = *(a2 + 48);
  v132[1] = v24;
  v125 = v128[0];
  v126 = v19;
  v25 = *(a1 + 96);
  v127[0] = v129;
  v127[1] = v25;
  *&v124[7] = v132[0];
  *&v124[23] = v22;
  v131 = *(a1 + 112);
  v135 = *(a2 + 112);
  v26 = v131;
  *&v124[39] = v133;
  *&v124[55] = *(a2 + 96);
  v27 = v135;
  if ((v131 & 0xFE) == 0x7E)
  {
    if ((v135 & 0xFE) == 0x7E)
    {
      v94 = v8;
      v28 = *(a1 + 64);
      v120 = *(a1 + 48);
      v121 = v28;
      v29 = *(a1 + 96);
      *v122 = *(a1 + 80);
      *&v122[16] = v29;
      v122[32] = v131;
      v30 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v128, &v116, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v132, &v116, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v30, sub_1D5C34D84);
      sub_1D66615F8(&v120, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v30, sub_1D5C34D84);
      goto LABEL_15;
    }

    v34 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v128, &v120, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v132, &v120, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v34, sub_1D5C34D84);
LABEL_13:
    v120 = v125;
    v121 = v126;
    *v122 = v127[0];
    *&v122[16] = v127[1];
    *&v122[49] = *&v124[16];
    *&v122[65] = *&v124[32];
    *&v122[81] = *&v124[48];
    v122[32] = v26;
    *&v122[96] = *&v124[63];
    *&v122[33] = *v124;
    v123 = v27;
    v35 = &unk_1EC889B10;
    v36 = &qword_1EDF270D0;
    v37 = &type metadata for FormatPreviewParameters;
LABEL_26:
    sub_1D5D35558(&v120, v35, v36, v37, sub_1D66F49B8);
    goto LABEL_27;
  }

  v31 = *(a1 + 64);
  v120 = *(a1 + 48);
  v121 = v31;
  v32 = *(a1 + 96);
  *v122 = *(a1 + 80);
  *&v122[16] = v32;
  v122[32] = v131;
  v119 = v131;
  v118[0] = *v122;
  v118[1] = v32;
  v116 = v120;
  v117 = v31;
  if ((v135 & 0xFE) == 0x7E)
  {
    v108[0] = *v122;
    v108[1] = *&v122[16];
    v109 = v122[32];
    v106 = v120;
    v107 = v121;
    v33 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v128, &v102, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v132, &v102, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v33, sub_1D5C34D84);
    sub_1D5D355B8(&v120, &v102, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v33, sub_1D5C34D84);
    sub_1D669BE18(&v106);
    goto LABEL_13;
  }

  v94 = v8;
  v38 = *(a2 + 64);
  v106 = *(a2 + 48);
  v107 = v38;
  v39 = *(a2 + 96);
  v108[0] = *(a2 + 80);
  v108[1] = v39;
  v109 = v135;
  v40 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v128, &v102, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v132, &v102, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v40, sub_1D5C34D84);
  sub_1D5D355B8(&v120, &v102, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v40, sub_1D5C34D84);
  v41 = _s8NewsFeed23FormatPreviewParametersV2eeoiySbAC_ACtFZ_0(&v116, &v106);
  v100[0] = v108[0];
  v100[1] = v108[1];
  v101 = v109;
  v98 = v106;
  v99 = v107;
  sub_1D669BE18(&v98);
  v104[0] = v118[0];
  v104[1] = v118[1];
  v105 = v119;
  v102 = v116;
  v103 = v117;
  sub_1D669BE18(&v102);
  v106 = v125;
  v107 = v126;
  v108[0] = v127[0];
  v108[1] = v127[1];
  v109 = v26;
  sub_1D66615F8(&v106, &qword_1EDF270D0, &type metadata for FormatPreviewParameters, v40, sub_1D5C34D84);
  if (!v41)
  {
    goto LABEL_27;
  }

LABEL_15:
  v42 = *(a1 + 136);
  v106 = *(a1 + 120);
  v107 = v42;
  v108[0] = *(a1 + 152);
  *(v108 + 9) = *(a1 + 161);
  v43 = *(a2 + 136);
  v116 = *(a2 + 120);
  v117 = v43;
  v118[0] = *(a2 + 152);
  *(v118 + 9) = *(a2 + 161);
  v44 = *(a1 + 136);
  v112 = *(a1 + 120);
  v113 = v44;
  v114 = *(a1 + 152);
  v115 = *(a1 + 168);
  v45 = BYTE8(v108[1]);
  *&v124[7] = *(a2 + 120);
  *&v124[23] = *(a2 + 136);
  *&v124[39] = *(a2 + 152);
  *&v124[55] = *(a2 + 168);
  v46 = BYTE8(v118[1]);
  if (BYTE8(v108[1]) == 255)
  {
    if (BYTE8(v118[1]) != 255)
    {
      v59 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(&v106, &v120, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(&v116, &v120, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v59, sub_1D5C34D84);
      goto LABEL_25;
    }

    v50 = *(a1 + 136);
    v120 = *(a1 + 120);
    v121 = v50;
    *v122 = *(a1 + 152);
    *&v122[16] = *(a1 + 168);
    v122[24] = -1;
    v51 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v106, &v102, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v116, &v102, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v51, sub_1D5C34D84);
    sub_1D66615F8(&v120, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v51, sub_1D5C34D84);
LABEL_21:
    v55 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction;
    v56 = *(v13 + 48);
    sub_1D5CDE2EC(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    sub_1D5CDE2EC(a2 + v55, &v16[v56], qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    v57 = v96;
    v58 = *(v95 + 48);
    if (v58(v16, 1, v96) == 1)
    {
      if (v58(&v16[v56], 1, v57) == 1)
      {
        sub_1D5D35558(v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5B5BF78);
        goto LABEL_33;
      }
    }

    else
    {
      v62 = v97;
      sub_1D5CDE2EC(v16, v97, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
      if (v58(&v16[v56], 1, v57) != 1)
      {
        v63 = v94;
        sub_1D5C8F76C(&v16[v56], v94, type metadata accessor for FormatItemNodeAction);
        v64 = _s8NewsFeed20FormatItemNodeActionO2eeoiySbAC_ACtFZ_0(v62, v63);
        sub_1D5D2CFE8(v63, type metadata accessor for FormatItemNodeAction);
        sub_1D5D2CFE8(v62, type metadata accessor for FormatItemNodeAction);
        sub_1D5D35558(v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720], sub_1D5B5BF78);
        if ((v64 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_33:
        v65 = *(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
        v66 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_clipsToBounds);
        if (v65 == 2)
        {
          if (v66 != 2)
          {
            goto LABEL_27;
          }
        }

        else if (v66 == 2 || ((v66 ^ v65) & 1) != 0)
        {
          goto LABEL_27;
        }

        v67 = *(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
        v68 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_ignoresSmartInvertColors);
        if (v67 == 2)
        {
          if (v68 != 2)
          {
            goto LABEL_27;
          }
        }

        else if (v68 == 2 || ((v68 ^ v67) & 1) != 0)
        {
          goto LABEL_27;
        }

        v70 = *(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
        v69 = *(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
        v72 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
        v71 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
        if (v70 == 3)
        {
          sub_1D62B7E1C(3uLL);
          if (v72 == 3)
          {
            sub_1D62B7E1C(3uLL);
            sub_1D62B5E14(3uLL);
LABEL_51:
            v74 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
            swift_beginAccess();
            v75 = *(a1 + v74);
            v76 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
            swift_beginAccess();
            v77 = *(a2 + v76);

            v78 = sub_1D635B244(v75, v77, type metadata accessor for FormatItemNodeStyle.Selector, type metadata accessor for FormatItemNodeStyle.Selector, _s8NewsFeed19FormatItemNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0, type metadata accessor for FormatItemNodeStyle.Selector);

            if (v78)
            {
              v79 = (a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
              v80 = *(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
              v81 = (a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters);
              v82 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_focusParameters + 32);
              if ((v80 & 0xFF00) == 0x400)
              {
                if ((v82 & 0xFF00) != 0x400)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                v83 = *v81;
                v84 = v81[1];
                v85 = v79[1];
                v120 = *v79;
                v121 = v85;
                *v122 = v80;
                if ((v82 & 0xFF00) == 0x400)
                {
                  goto LABEL_27;
                }

                *v124 = v83;
                *&v124[16] = v84;
                *&v124[32] = v82 & 0xFF01;
                if ((_s8NewsFeed21FormatFocusParametersV2eeoiySbAC_ACtFZ_0(&v120, v124) & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

              v86 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
              swift_beginAccess();
              v87 = *(a1 + v86);
              v88 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelContextMenu;
              swift_beginAccess();
              v89 = *(a2 + v88);
              if (v87 == 2)
              {
                if (v89 != 2)
                {
                  goto LABEL_27;
                }
              }

              else if (v89 == 2 || ((v89 ^ v87) & 1) != 0)
              {
                goto LABEL_27;
              }

              v90 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
              swift_beginAccess();
              v91 = *(a1 + v90);
              v92 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_shouldCancelDrag;
              swift_beginAccess();
              v93 = *(a2 + v92);
              if (v91 == 2)
              {
                if (v93 == 2)
                {
                  v60 = 1;
                  return v60 & 1;
                }
              }

              else if (v93 != 2)
              {
                v60 = v93 ^ v91 ^ 1;
                return v60 & 1;
              }
            }

            goto LABEL_27;
          }

          sub_1D62B7E1C(v72);
        }

        else
        {
          *&v120 = *(a1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
          *(&v120 + 1) = v69;
          if (v72 != 3)
          {
            *v124 = v72;
            *&v124[8] = v71;
            sub_1D62B7E1C(v70);
            sub_1D62B7E1C(v72);
            sub_1D62B7E1C(v70);
            v73 = _s8NewsFeed30FormatItemNodeSwipeActionStyleO2eeoiySbAC_ACtFZ_0(&v120, v124);
            sub_1D62B5E24(*v124);
            sub_1D62B5E24(v120);
            sub_1D62B5E14(v70);
            if (!v73)
            {
              goto LABEL_27;
            }

            goto LABEL_51;
          }

          sub_1D62B7E1C(v70);
          sub_1D62B7E1C(3uLL);
          sub_1D62B7E1C(v70);
          sub_1D62B5E24(v70);
        }

        sub_1D62B5E14(v70);
        sub_1D62B5E14(v72);
        goto LABEL_27;
      }

      sub_1D5D2CFE8(v62, type metadata accessor for FormatItemNodeAction);
    }

    sub_1D66F4424(v16, &qword_1EC889B08, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    goto LABEL_27;
  }

  v47 = *(a1 + 152);
  *&v122[16] = *(a1 + 168);
  v48 = *(a1 + 136);
  v120 = *(a1 + 120);
  v121 = v48;
  *v122 = v47;
  v122[24] = BYTE8(v108[1]);
  v102 = v120;
  v103 = v48;
  v104[0] = v47;
  *(v104 + 9) = *&v122[9];
  if (BYTE8(v118[1]) == 255)
  {
    v98 = v120;
    v99 = v121;
    v100[0] = *v122;
    *(v100 + 9) = *&v122[9];
    v49 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(&v106, &v125, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(&v116, &v125, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v49, sub_1D5C34D84);
    sub_1D5D355B8(&v120, &v125, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v49, sub_1D5C34D84);
    sub_1D62B5EC4(&v98);
LABEL_25:
    v120 = v112;
    v121 = v113;
    *v122 = v114;
    *&v122[25] = *v124;
    *&v122[16] = v115;
    v122[24] = v45;
    *&v122[41] = *&v124[16];
    *&v122[57] = *&v124[32];
    *&v122[72] = *&v124[47];
    v122[88] = v46;
    v35 = &unk_1EC889B18;
    v36 = &qword_1EDF2CAB8;
    v37 = &type metadata for FormatCellSelection;
    goto LABEL_26;
  }

  v52 = *(a2 + 136);
  v98 = *(a2 + 120);
  v99 = v52;
  v100[0] = *(a2 + 152);
  *&v100[1] = *(a2 + 168);
  BYTE8(v100[1]) = BYTE8(v118[1]);
  v53 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(&v106, &v125, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(&v116, &v125, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v53, sub_1D5C34D84);
  sub_1D5D355B8(&v120, &v125, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v53, sub_1D5C34D84);
  v54 = _s8NewsFeed19FormatCellSelectionO2eeoiySbAC_ACtFZ_0(&v102, &v98);
  v110[0] = v98;
  v110[1] = v99;
  v111[0] = v100[0];
  *(v111 + 9) = *(v100 + 9);
  sub_1D62B5EC4(v110);
  v125 = v102;
  v126 = v103;
  v127[0] = v104[0];
  *(v127 + 9) = *(v104 + 9);
  sub_1D62B5EC4(&v125);
  v98 = v112;
  v99 = v113;
  v100[0] = v114;
  *&v100[1] = v115;
  BYTE8(v100[1]) = v45;
  sub_1D66615F8(&v98, &qword_1EDF2CAB8, &type metadata for FormatCellSelection, v53, sub_1D5C34D84);
  if (v54)
  {
    goto LABEL_21;
  }

LABEL_27:
  v60 = 0;
  return v60 & 1;
}

uint64_t _s8NewsFeed14FormatItemNodeC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v7 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v65[0] = a1[6];
  v62[0] = a2[6];
  sub_1D5C82CD8(v65[0]);
  sub_1D5C82CD8(v62[0]);
  v8 = static FormatSize.== infix(_:_:)(v65, v62);
  sub_1D5C92A8C(v62[0]);
  sub_1D5C92A8C(v65[0]);
  if ((v8 & 1) == 0)
  {
    goto LABEL_28;
  }

  v9 = a1[7];
  v10 = a2[7];
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_28;
    }

    v11 = *(v9 + 16);
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);
    swift_beginAccess();
    v14 = *(v12 + 16);

    v15 = sub_1D5E1F5F0(v13, v14);

    if ((v15 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v10)
  {
LABEL_28:
    v54 = 0;
    return v54 & 1;
  }

  swift_beginAccess();
  v16 = a1[8];
  swift_beginAccess();
  v17 = a2[8];

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v19 = a1[9];
  swift_beginAccess();
  v20 = a2[9];

  v21 = sub_1D633E5BC(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v22 = a1[10];
  swift_beginAccess();
  v23 = a2[10];

  v24 = sub_1D5BFC390(v22, v23);

  if ((v24 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v25 = a1[11];
  swift_beginAccess();
  v26 = a2[11];

  v27 = sub_1D635B244(v25, v26, type metadata accessor for FormatOption, type metadata accessor for FormatOption, _s8NewsFeed12FormatOptionV2eeoiySbAC_ACtFZ_0, type metadata accessor for FormatOption);

  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v28 = a1[12];
  swift_beginAccess();
  v29 = a2[12];

  v30 = sub_1D633E6D8(v28, v29);

  if ((v30 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v31 = a1[13];
  swift_beginAccess();
  if (v31 != a2[13])
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v65[0] = a1[14];
  v32 = v65[0];
  swift_beginAccess();
  v62[0] = a2[14];
  v33 = v62[0];
  sub_1D5EB1500(v32);
  sub_1D5EB1500(v33);
  LOBYTE(v32) = static FormatVisibility.== infix(_:_:)(v65, v62);
  sub_1D5EB15C4(v62[0]);
  sub_1D5EB15C4(v65[0]);
  if ((v32 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v34 = a1[15];
  swift_beginAccess();
  v35 = a2[15];

  v36 = sub_1D634EB4C(v34, v35);

  if ((v36 & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = a1[16];
  v37 = a1[17];
  v40 = a1[18];
  v39 = a1[19];
  v41 = a1[20];
  v42 = a1[21];
  v44 = a2[16];
  v43 = a2[17];
  v46 = a2[18];
  v45 = a2[19];
  v48 = a2[20];
  v47 = a2[21];
  if (!v38)
  {
    v61 = v41;
    sub_1D5EB1D80(0, v37, v40, v39, v41);
    if (!v44)
    {
      sub_1D5EB1D80(0, v43, v46, v45, v48);
      sub_1D5EB2398(0, v37, v40, v39, v61);
      v54 = 1;
      return v54 & 1;
    }

    sub_1D5EB1D80(v44, v43, v46, v45, v48);
    goto LABEL_33;
  }

  v65[0] = v38;
  v65[1] = v37;
  v65[2] = v40;
  v65[3] = v39;
  v66 = v41;
  v67 = v42;
  if (!v44)
  {
    v58 = v41;
    sub_1D5EB1D80(v38, v37, v40, v39, v41);
    sub_1D5EB1D80(0, v43, v46, v45, v48);
    sub_1D5EB1D80(v38, v37, v40, v39, v58);

    v61 = v58;
    sub_1D5CBF568(v58);

LABEL_33:
    sub_1D5EB2398(v38, v37, v40, v39, v61);
    sub_1D5EB2398(v44, v43, v46, v45, v48);
    v54 = 0;
    return v54 & 1;
  }

  v62[0] = v44;
  v62[1] = v43;
  v62[2] = v46;
  v62[3] = v45;
  v63 = v48;
  v64 = v47;
  v59 = v37;
  v60 = v45;
  v49 = v41;
  sub_1D5EB1D80(v38, v37, v40, v39, v41);
  sub_1D5EB1D80(v44, v43, v46, v60, v48);
  v50 = v37;
  v51 = v40;
  v52 = v40;
  v53 = v49;
  sub_1D5EB1D80(v38, v50, v51, v39, v49);
  v54 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(v65, v62);
  v55 = v63;

  sub_1D5CBF568(v55);

  v56 = v66;

  sub_1D5CBF568(v56);

  sub_1D5EB2398(v38, v59, v52, v39, v53);
  return v54 & 1;
}

uint64_t _s8NewsFeed15FormatImageNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

  v63 = *(a1 + 32);
  v57 = *(a2 + 32);
  sub_1D5C82CD8(v63);
  sub_1D5C82CD8(v57);
  v7 = static FormatSize.== infix(_:_:)(&v63, &v57);
  sub_1D5C92A8C(v57);
  sub_1D5C92A8C(v63);
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_28;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(a2 + 56);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_28;
      }

      type metadata accessor for FormatImageNodeStyle();

      v20 = _s8NewsFeed20FormatImageNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      goto LABEL_28;
    }

    v21 = *(a1 + 64);
    v22 = *(a2 + 64);
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_28;
      }

      v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v22)
    {
      goto LABEL_28;
    }

    v63 = *(a1 + 72);
    v57 = *(a2 + 72);

    v24 = static FormatAsyncImageContent.== infix(_:_:)(&v63, &v57);

    if ((v24 & 1) == 0)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v25 = *(a1 + 80);
    swift_beginAccess();
    if (v25 != *(a2 + 80))
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v63 = *(a1 + 88);
    v26 = v63;
    swift_beginAccess();
    v57 = *(a2 + 88);
    v27 = v57;
    sub_1D5EB1500(v26);
    sub_1D5EB1500(v27);
    LOBYTE(v26) = static FormatVisibility.== infix(_:_:)(&v63, &v57);
    sub_1D5EB15C4(v57);
    sub_1D5EB15C4(v63);
    if ((v26 & 1) == 0)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v28 = *(a1 + 96);
    swift_beginAccess();
    if (v28 != *(a2 + 96))
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v29 = *(a1 + 97);
    swift_beginAccess();
    if (v29 != *(a2 + 97))
    {
      goto LABEL_28;
    }

    v32 = *(a1 + 112);
    v33 = *(a2 + 112);
    if (v32 <= 0xFD)
    {
      v34 = *(a2 + 104);
      v63 = *(a1 + 104);
      LOBYTE(v64) = v32;
      if (v33 > 0xFD)
      {
        goto LABEL_28;
      }

      v57 = v34;
      LOBYTE(v58) = v33;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v63, &v57) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v33 <= 0xFD)
    {
      goto LABEL_28;
    }

    swift_beginAccess();
    v35 = *(a1 + 120);
    swift_beginAccess();
    v36 = *(a2 + 120);

    v37 = sub_1D5BFC390(v35, v36);

    if (v37)
    {
      swift_beginAccess();
      v38 = *(a1 + 128);
      v39 = *(a1 + 136);
      swift_beginAccess();
      v40 = *(a2 + 136);
      if (v39)
      {
        if (!v40 || (v38 != *(a2 + 128) || v39 != v40) && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else if (v40)
      {
        goto LABEL_28;
      }

      v41 = *(a1 + 144);
      v42 = *(a1 + 152);
      v43 = *(a1 + 160);
      v54 = *(a1 + 168);
      v55 = *(a1 + 176);
      v56 = *(a1 + 184);
      v44 = *(a2 + 144);
      v45 = *(a2 + 152);
      v46 = *(a2 + 160);
      v47 = *(a2 + 168);
      v52 = *(a2 + 176);
      v53 = *(a2 + 184);
      v48 = v41;
      if (v41)
      {
        v63 = v41;
        v64 = v42;
        v65 = v43;
        v66 = v54;
        v67 = v55;
        v68 = v56;
        v51 = v42;
        if (v44)
        {
          v57 = v44;
          v58 = v45;
          v59 = v46;
          v60 = v47;
          v61 = v52;
          v62 = v53;
          sub_1D5EB1D80(v41, v42, v43, v54, v55);
          sub_1D5EB1D80(v44, v45, v46, v47, v52);
          sub_1D5EB1D80(v48, v42, v43, v54, v55);
          v30 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v63, &v57);
          v49 = v61;

          sub_1D5CBF568(v49);

          v50 = v67;

          sub_1D5CBF568(v50);

          sub_1D5EB2398(v48, v51, v43, v54, v55);
          return v30 & 1;
        }

        sub_1D5EB1D80(v41, v42, v43, v54, v55);
        sub_1D5EB1D80(0, v45, v46, v47, v52);
        sub_1D5EB1D80(v48, v42, v43, v54, v55);

        sub_1D5CBF568(v55);
      }

      else
      {
        sub_1D5EB1D80(0, v42, v43, v54, v55);
        if (!v44)
        {
          sub_1D5EB1D80(0, v45, v46, v47, v52);
          sub_1D5EB2398(0, v42, v43, v54, v55);
          v30 = 1;
          return v30 & 1;
        }

        sub_1D5EB1D80(v44, v45, v46, v47, v52);
      }

      sub_1D5EB2398(v48, v42, v43, v54, v55);
      sub_1D5EB2398(v44, v45, v46, v47, v52);
    }
  }

LABEL_28:
  v30 = 0;
  return v30 & 1;
}

uint64_t _s8NewsFeed14FormatTextNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_34;
  }

  v117 = *(a1 + 32);
  v109 = *(a2 + 32);
  sub_1D5D085B4(v117);
  sub_1D5D085B4(v109);
  v7 = static FormatTextSize.== infix(_:_:)(&v117, &v109);
  sub_1D5D05694(v109);
  sub_1D5D05694(v117);
  if ((v7 & 1) == 0)
  {
    goto LABEL_34;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_34;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v9)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }

  v18 = *(a1 + 56);
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_34;
    }

    v20 = _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v19)
  {
    goto LABEL_34;
  }

  v21 = *(a1 + 64);
  v22 = *(a2 + 64);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_34;
    }

    v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

    if ((v23 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v22)
  {
    goto LABEL_34;
  }

  v117 = *(a1 + 72);
  v109 = *(a2 + 72);

  v24 = static FormatTextContent.== infix(_:_:)(&v117, &v109);

  if ((v24 & 1) == 0)
  {
    goto LABEL_34;
  }

  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  v27 = *(a1 + 96);
  v28 = *(a1 + 104);
  v29 = *(a1 + 112);
  v30 = *(a1 + 120);
  v31 = *(a1 + 128) | (*(a1 + 130) << 16);
  v33 = *(a2 + 80);
  v32 = *(a2 + 88);
  v35 = *(a2 + 96);
  v34 = *(a2 + 104);
  v36 = *(a2 + 128) | (*(a2 + 130) << 16);
  v37 = (v36 >> 17) & 0x7F;
  v39 = *(a2 + 112);
  v38 = *(a2 + 120);
  v101 = v25;
  v103 = v28;
  v105 = v30;
  v107 = v27;
  if ((*(a1 + 130) >> 1) <= 0x7Eu)
  {
    v117 = *(a1 + 80);
    v118 = v26;
    v119 = v27;
    v120 = v28;
    v121 = v29;
    v122 = v30;
    v123 = v31;
    v124 = BYTE2(v31);
    if (((v36 >> 17) & 0x7F) != 0x7F)
    {
      v109 = v33;
      v110 = v32;
      v111 = v35;
      v112 = v34;
      v113 = v39;
      v114 = v38;
      v115 = v36;
      v116 = BYTE2(v36);
      v95 = v34;
      v98 = v35;
      v54 = v26;
      v55 = v29;
      v56 = v32;
      v57 = v33;
      v58 = v38;
      v59 = v39;
      sub_1D6046038(v25, v26, v27, v28, v29, v30, v31);
      sub_1D6046038(v57, v56, v98, v95, v59, v58, v36);
      sub_1D6046038(v101, v54, v107, v103, v55, v105, v31);
      v60 = v55;
      LOBYTE(v55) = _s8NewsFeed022FormatProgressViewNodeD0O2eeoiySbAC_ACtFZ_0(&v117, &v109);
      sub_1D5D0A678(v109, v110, v111, v112, v113, v114, v115 | (v116 << 16));
      sub_1D5D0A678(v117, v118, v119, v120, v121, v122, v123 | (v124 << 16));
      sub_1D5C67600(v101, v54, v107, v103, v60, v105, v31);
      if ((v55 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    v47 = v25;
    v48 = v26;
    v99 = v29;
    v49 = v32;
    v50 = v33;
    v51 = v38;
    v52 = v39;
    sub_1D6046038(v25, v26, v27, v28, v29, v30, v31);
    v91 = v50;
    v92 = v49;
    v93 = v52;
    v94 = v51;
    sub_1D6046038(v50, v49, v35, v34, v52, v51, v36);
    sub_1D6046038(v47, v48, v107, v103, v99, v105, v31);
    v97 = v48;
    v53 = v48;
    v41 = v34;
    sub_1D5D0A678(v47, v53, v107, v103, v99, v105, v31);
LABEL_29:
    sub_1D5C67600(v101, v97, v107, v103, v99, v105, v31);
    sub_1D5C67600(v91, v92, v35, v41, v93, v94, v36);
    goto LABEL_34;
  }

  v90 = *(a2 + 128) | (*(a2 + 130) << 16);
  v40 = *(a2 + 96);
  v97 = *(a1 + 88);
  v99 = *(a1 + 112);
  v41 = *(a2 + 104);
  v42 = *(a2 + 88);
  v43 = *(a2 + 80);
  v44 = *(a2 + 120);
  v45 = *(a2 + 112);
  sub_1D6046038(v25, v26, v27, v28, v29, v30, v31);
  v91 = v43;
  v92 = v42;
  v46 = v43;
  v35 = v40;
  v36 = v90;
  v93 = v45;
  v94 = v44;
  sub_1D6046038(v46, v42, v35, v41, v45, v44, v90);
  if (v37 <= 0x7E)
  {
    goto LABEL_29;
  }

  sub_1D5C67600(v101, v97, v107, v103, v99, v105, v31);
LABEL_31:
  swift_beginAccess();
  v61 = *(a1 + 136);
  swift_beginAccess();
  if (v61 != *(a2 + 136))
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v117 = *(a1 + 144);
  v62 = v117;
  swift_beginAccess();
  v109 = *(a2 + 144);
  v63 = v109;
  sub_1D5EB1500(v62);
  sub_1D5EB1500(v63);
  LOBYTE(v62) = static FormatVisibility.== infix(_:_:)(&v117, &v109);
  sub_1D5EB15C4(v109);
  sub_1D5EB15C4(v117);
  if ((v62 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v64 = *(a1 + 152);
  swift_beginAccess();
  if (v64 != *(a2 + 152))
  {
    goto LABEL_34;
  }

  v67 = *(a1 + 153);
  v68 = *(a2 + 153);
  if (v67 == 7)
  {
    if (v68 != 7)
    {
      goto LABEL_34;
    }
  }

  else if (v68 == 7 || (sub_1D6DE269C(v67, v68) & 1) == 0)
  {
    goto LABEL_34;
  }

  v69 = *(a1 + 168);
  v70 = *(a2 + 168);
  if (v69 <= 0xFD)
  {
    v71 = *(a2 + 160);
    v117 = *(a1 + 160);
    LOBYTE(v118) = v69;
    if (v70 > 0xFD)
    {
      goto LABEL_34;
    }

    v109 = v71;
    LOBYTE(v110) = v70;
    if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v117, &v109) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v70 <= 0xFD)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v72 = *(a1 + 176);
  swift_beginAccess();
  v73 = *(a2 + 176);

  v74 = sub_1D5BFC390(v72, v73);

  if ((v74 & 1) == 0)
  {
    goto LABEL_34;
  }

  swift_beginAccess();
  v75 = *(a1 + 184);
  swift_beginAccess();
  v76 = *(a2 + 184);

  v77 = sub_1D634EB4C(v75, v76);

  if ((v77 & 1) == 0)
  {
    goto LABEL_34;
  }

  v78 = *(a1 + 200);
  v79 = *(a2 + 200);
  if (v78)
  {
    if (!v79 || (*(a1 + 192) != *(a2 + 192) || v78 != v79) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v79)
  {
    goto LABEL_34;
  }

  v80 = *(a1 + 208);
  v81 = *(a1 + 216);
  v82 = *(a1 + 224);
  v104 = *(a1 + 232);
  v106 = *(a1 + 240);
  v108 = *(a1 + 248);
  v83 = *(a2 + 208);
  v84 = *(a2 + 216);
  v85 = *(a2 + 224);
  v86 = *(a2 + 232);
  v100 = *(a2 + 240);
  v102 = *(a2 + 248);
  v87 = v80;
  if (v80)
  {
    v117 = v80;
    v118 = v81;
    v119 = v82;
    v120 = v104;
    v121 = v106;
    v122 = v108;
    v96 = v81;
    if (v83)
    {
      v109 = v83;
      v110 = v84;
      v111 = v85;
      v112 = v86;
      v113 = v100;
      v114 = v102;
      sub_1D5EB1D80(v80, v81, v82, v104, v106);
      sub_1D5EB1D80(v83, v84, v85, v86, v100);
      sub_1D5EB1D80(v87, v81, v82, v104, v106);
      v65 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v117, &v109);
      v88 = v113;

      sub_1D5CBF568(v88);

      v89 = v121;

      sub_1D5CBF568(v89);

      sub_1D5EB2398(v87, v96, v82, v104, v106);
      return v65 & 1;
    }

    sub_1D5EB1D80(v80, v81, v82, v104, v106);
    sub_1D5EB1D80(0, v84, v85, v86, v100);
    sub_1D5EB1D80(v87, v81, v82, v104, v106);

    sub_1D5CBF568(v106);
  }

  else
  {
    sub_1D5EB1D80(0, v81, v82, v104, v106);
    if (!v83)
    {
      sub_1D5EB1D80(0, v84, v85, v86, v100);
      sub_1D5EB2398(0, v81, v82, v104, v106);
      v65 = 1;
      return v65 & 1;
    }

    sub_1D5EB1D80(v83, v84, v85, v86, v100);
  }

  sub_1D5EB2398(v87, v81, v82, v104, v106);
  sub_1D5EB2398(v83, v84, v85, v86, v100);
LABEL_34:
  v65 = 0;
  return v65 & 1;
}

uint64_t _s8NewsFeed19FormatViewNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_24;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  v9 = *(a2 + 48);

  v10 = sub_1D6353814(v8, v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = *(a1 + 56);
  v12 = *(a2 + 56);
  if (v11)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

    v13 = sub_1D633A310(v11, v12);

    if ((v13 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_24;
    }
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 64));
    sub_1D5D04BD4(v15);
    if ((~v15 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v14);
      goto LABEL_27;
    }

LABEL_23:
    sub_1D5C8500C(v14);
    sub_1D5C8500C(v15);
    goto LABEL_24;
  }

  *&v66 = *(a1 + 64);
  if ((~v15 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v14);
    sub_1D5D04BD4(v15);
    sub_1D5D04BD4(v14);

    goto LABEL_23;
  }

  *v78 = v15;
  sub_1D5D04BD4(v14);
  sub_1D5D04BD4(v15);
  sub_1D5D04BD4(v14);
  v18 = static FormatBackground.== infix(_:_:)(&v66, v78);

  sub_1D5C8500C(v14);
  if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
  v19 = *(a1 + 72);
  v20 = *(a2 + 72);
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_24;
    }

    v21 = sub_1D633C9E8(v19, v20);

    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v20)
  {
    goto LABEL_24;
  }

  v23 = *(a1 + 80);
  v22 = *(a1 + 88);
  v24 = *(a1 + 96);
  v26 = *(a2 + 80);
  v25 = *(a2 + 88);
  v27 = *(a2 + 96);
  if (v24 > 0xFD)
  {
    sub_1D5ED34B0(*(a1 + 80), *(a1 + 88), *(a1 + 96));
    sub_1D5ED34B0(v26, v25, v27);
    if (v27 > 0xFD)
    {
      sub_1D5ED348C(v23, v22, v24);
      goto LABEL_39;
    }

LABEL_37:
    sub_1D5ED348C(v23, v22, v24);
    sub_1D5ED348C(v26, v25, v27);
    goto LABEL_24;
  }

  *&v66 = *(a1 + 80);
  *(&v66 + 1) = v22;
  LOBYTE(v67) = v24;
  if (v27 > 0xFD)
  {
    sub_1D5ED34B0(v23, v22, v24);
    sub_1D5ED34B0(v26, v25, v27);
    sub_1D5ED34B0(v23, v22, v24);
    sub_1D5ED34A0(v23, v22, v24);
    goto LABEL_37;
  }

  *v78 = v26;
  *&v78[8] = v25;
  v78[16] = v27;
  sub_1D5ED34B0(v23, v22, v24);
  sub_1D5ED34B0(v26, v25, v27);
  sub_1D5ED34B0(v23, v22, v24);
  v28 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v66, v78);
  sub_1D5ED34A0(*v78, *&v78[8], v78[16]);
  sub_1D5ED34A0(v66, *(&v66 + 1), v67);
  sub_1D5ED348C(v23, v22, v24);
  if ((v28 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_39:
  v29 = *(a1 + 152);
  v84[2] = *(a1 + 136);
  v84[3] = v29;
  v84[4] = *(a1 + 168);
  v85 = *(a1 + 184);
  v30 = *(a1 + 120);
  v84[0] = *(a1 + 104);
  v84[1] = v30;
  v31 = *(a2 + 152);
  v86[2] = *(a2 + 136);
  v86[3] = v31;
  v86[4] = *(a2 + 168);
  v87 = *(a2 + 184);
  v32 = *(a2 + 120);
  v86[0] = *(a2 + 104);
  v86[1] = v32;
  v33 = *(a1 + 120);
  v34 = *(a1 + 152);
  v81 = *(a1 + 136);
  v82 = v34;
  v83 = *(a1 + 168);
  v79 = *(a1 + 104);
  v80 = v33;
  v35 = v85;
  *&v78[23] = *(a2 + 120);
  *&v78[39] = *(a2 + 136);
  *&v78[55] = *(a2 + 152);
  *&v78[71] = *(a2 + 168);
  *&v78[7] = *(a2 + 104);
  v36 = v87;
  if (v85 != 254)
  {
    v40 = *(a1 + 120);
    v41 = *(a1 + 152);
    v68 = *(a1 + 136);
    v69 = v41;
    v70 = *(a1 + 168);
    v66 = *(a1 + 104);
    v67 = v40;
    v71 = v85;
    v65 = v85;
    v62 = v68;
    v63 = v41;
    v64 = v70;
    v60 = v66;
    v61 = v40;
    if (v87 != 254)
    {
      v44 = *(a2 + 120);
      v45 = *(a2 + 152);
      v56 = *(a2 + 136);
      v57 = v45;
      v58 = *(a2 + 168);
      v54 = *(a2 + 104);
      v55 = v44;
      v59 = v87;
      v46 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v84, v52, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v86, v52, &qword_1EDF33718, &type metadata for FormatShadow, v46, sub_1D5C34D84);
      sub_1D5D355B8(&v66, v52, &qword_1EDF33718, &type metadata for FormatShadow, v46, sub_1D5C34D84);
      v47 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v60, &v54);
      v50[2] = v56;
      v50[3] = v57;
      v50[4] = v58;
      v51 = v59;
      v50[0] = v54;
      v50[1] = v55;
      sub_1D601144C(v50);
      v52[2] = v62;
      v52[3] = v63;
      v52[4] = v64;
      v53 = v65;
      v52[0] = v60;
      v52[1] = v61;
      sub_1D601144C(v52);
      v56 = v81;
      v57 = v82;
      v58 = v83;
      v54 = v79;
      v55 = v80;
      v59 = v35;
      sub_1D66615F8(&v54, &qword_1EDF33718, &type metadata for FormatShadow, v46, sub_1D5C34D84);
      if ((v47 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_47;
    }

    v56 = v68;
    v57 = v69;
    v58 = v70;
    v59 = v71;
    v54 = v66;
    v55 = v67;
    v42 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v84, v52, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v86, v52, &qword_1EDF33718, &type metadata for FormatShadow, v42, sub_1D5C34D84);
    sub_1D5D355B8(&v66, v52, &qword_1EDF33718, &type metadata for FormatShadow, v42, sub_1D5C34D84);
    sub_1D601144C(&v54);
LABEL_45:
    v68 = v81;
    v69 = v82;
    v70 = v83;
    v66 = v79;
    v67 = v80;
    v74 = *&v78[32];
    v75 = *&v78[48];
    *v76 = *&v78[64];
    v72 = *v78;
    v71 = v35;
    *&v76[15] = *&v78[79];
    v73 = *&v78[16];
    v77 = v36;
    sub_1D5D35558(&v66, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    goto LABEL_24;
  }

  if (v87 != 254)
  {
    v43 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v84, &v66, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v86, &v66, &qword_1EDF33718, &type metadata for FormatShadow, v43, sub_1D5C34D84);
    goto LABEL_45;
  }

  v37 = *(a1 + 120);
  v38 = *(a1 + 152);
  v68 = *(a1 + 136);
  v69 = v38;
  v70 = *(a1 + 168);
  v66 = *(a1 + 104);
  v67 = v37;
  v71 = -2;
  v39 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v84, &v60, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v86, &v60, &qword_1EDF33718, &type metadata for FormatShadow, v39, sub_1D5C34D84);
  sub_1D66615F8(&v66, &qword_1EDF33718, &type metadata for FormatShadow, v39, sub_1D5C34D84);
LABEL_47:
  v48 = *(a1 + 185);
  v49 = *(a2 + 185);
  if (v48 == 2)
  {
    if (v49 == 2)
    {
      v16 = 1;
      return v16 & 1;
    }
  }

  else if (v49 != 2)
  {
    v16 = v49 ^ v48 ^ 1;
    return v16 & 1;
  }

LABEL_24:
  v16 = 0;
  return v16 & 1;
}

uint64_t _s8NewsFeed14FormatViewNodeC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v62 = *(a1 + 32);
  v56 = *(a2 + 32);
  sub_1D5C82CD8(v62);
  sub_1D5C82CD8(v56);
  v7 = static FormatSize.== infix(_:_:)(&v62, &v56);
  sub_1D5C92A8C(v56);
  sub_1D5C92A8C(v62);
  if ((v7 & 1) == 0)
  {
    goto LABEL_26;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_26;
    }

    v10 = *(v8 + 16);
    v11 = *(v9 + 16);
    swift_beginAccess();
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v11 + 16);

    v14 = sub_1D5E1F5F0(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v9)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v15 = *(a1 + 48);
  swift_beginAccess();
  v16 = *(a2 + 48);

  v17 = sub_1D6344A40(v15, v16, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(a2 + 56);
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_26;
      }

      v20 = _s8NewsFeed19FormatViewNodeStyleC2eeoiySbAC_ACtFZ_0(v18, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v19)
    {
      goto LABEL_26;
    }

    v21 = *(a1 + 64);
    v22 = *(a2 + 64);
    if (v21)
    {
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = _s8NewsFeed24FormatAnimationNodeStyleC2eeoiySbAC_ACtFZ_0(v21, v22);

      if ((v23 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v22)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v24 = *(a1 + 72);
    swift_beginAccess();
    if (v24 != *(a2 + 72))
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v62 = *(a1 + 80);
    v25 = v62;
    swift_beginAccess();
    v56 = *(a2 + 80);
    v26 = v56;
    sub_1D5EB1500(v25);
    sub_1D5EB1500(v26);
    LOBYTE(v25) = static FormatVisibility.== infix(_:_:)(&v62, &v56);
    sub_1D5EB15C4(v56);
    sub_1D5EB15C4(v62);
    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v27 = *(a1 + 88);
    swift_beginAccess();
    if (v27 != *(a2 + 88))
    {
      goto LABEL_26;
    }

    v30 = *(a1 + 104);
    v31 = *(a2 + 104);
    if (v30 <= 0xFD)
    {
      v32 = *(a2 + 96);
      v62 = *(a1 + 96);
      LOBYTE(v63) = v30;
      if (v31 > 0xFD)
      {
        goto LABEL_26;
      }

      v56 = v32;
      LOBYTE(v57) = v31;
      if ((_s8NewsFeed27FormatNodeAccessibilityRoleO2eeoiySbAC_ACtFZ_0(&v62, &v56) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v31 <= 0xFD)
    {
      goto LABEL_26;
    }

    swift_beginAccess();
    v33 = *(a1 + 112);
    swift_beginAccess();
    v34 = *(a2 + 112);

    v35 = sub_1D5BFC390(v33, v34);

    if (v35)
    {
      v36 = *(a1 + 128);
      v37 = *(a2 + 128);
      if (v36)
      {
        if (!v37 || (*(a1 + 120) != *(a2 + 120) || v36 != v37) && (sub_1D72646CC() & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (v37)
      {
        goto LABEL_26;
      }

      v39 = *(a1 + 136);
      v38 = *(a1 + 144);
      v40 = *(a1 + 152);
      v41 = *(a1 + 160);
      v42 = *(a1 + 168);
      v43 = *(a1 + 176);
      v45 = *(a2 + 136);
      v44 = *(a2 + 144);
      v47 = *(a2 + 152);
      v46 = *(a2 + 160);
      v49 = *(a2 + 168);
      v48 = *(a2 + 176);
      v54 = v41;
      v55 = v42;
      v52 = v38;
      v53 = v40;
      if (v39)
      {
        v62 = *(a1 + 136);
        v63 = v38;
        v64 = v40;
        v65 = v41;
        v66 = v42;
        v67 = v43;
        if (v45)
        {
          v56 = v45;
          v57 = v44;
          v58 = v47;
          v59 = v46;
          v60 = v49;
          v61 = v48;
          sub_1D5EB1D80(v39, v38, v40, v41, v42);
          sub_1D5EB1D80(v45, v44, v47, v46, v49);
          sub_1D5EB1D80(v39, v52, v53, v54, v55);
          v28 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v62, &v56);
          v50 = v60;

          sub_1D5CBF568(v50);

          v51 = v66;

          sub_1D5CBF568(v51);

          sub_1D5EB2398(v39, v52, v53, v54, v55);
          return v28 & 1;
        }

        sub_1D5EB1D80(v39, v38, v40, v41, v42);
        sub_1D5EB1D80(0, v44, v47, v46, v49);
        sub_1D5EB1D80(v39, v52, v53, v54, v55);

        sub_1D5CBF568(v55);
      }

      else
      {
        sub_1D5EB1D80(0, v38, v40, v41, v42);
        if (!v45)
        {
          sub_1D5EB1D80(0, v44, v47, v46, v49);
          sub_1D5EB2398(0, v52, v53, v54, v55);
          v28 = 1;
          return v28 & 1;
        }

        sub_1D5EB1D80(v45, v44, v47, v46, v49);
      }

      sub_1D5EB2398(v39, v52, v53, v54, v55);
      sub_1D5EB2398(v45, v44, v47, v46, v49);
    }
  }

LABEL_26:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1D6656130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

  v7 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  if ((sub_1D5BF1C0C(v8, *(a2 + 48)) & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  swift_beginAccess();
  v11 = *(a2 + 64);
  if (v10)
  {
    if (!v11 || (v9 != *(a2 + 56) || v10 != v11) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v11)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  swift_beginAccess();
  v14 = *(a2 + 80);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_26;
    }

LABEL_38:
    v41 = 0;
    return v41 & 1;
  }

  if (!v14 || (v12 != *(a2 + 72) || v13 != v14) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_26:
  swift_beginAccess();
  v59 = *(a1 + 88);
  swift_beginAccess();
  v53 = *(a2 + 88);
  sub_1D5C82CD8(v59);
  sub_1D5C82CD8(v53);
  v15 = static FormatSize.== infix(_:_:)(&v59, &v53);
  sub_1D5C92A8C(v53);
  sub_1D5C92A8C(v59);
  if ((v15 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v16 = *(a1 + 96);
  swift_beginAccess();
  v17 = *(a2 + 96);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v19 = *(a1 + 104);
  swift_beginAccess();
  v20 = *(a2 + 104);

  v21 = sub_1D633E44C(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v22 = *(a1 + 112);
  swift_beginAccess();
  if (v22 != *(a2 + 112))
  {
    goto LABEL_38;
  }

  swift_beginAccess();
  v24 = *(a1 + 128);
  v25 = *(a1 + 136);
  v59 = *(a1 + 120);
  v23 = v59;
  v60 = v24;
  LOBYTE(v61) = v25;
  swift_beginAccess();
  v27 = *(a2 + 128);
  v28 = *(a2 + 136);
  v53 = *(a2 + 120);
  v26 = v53;
  v54 = v27;
  LOBYTE(v55) = v28;
  sub_1D5C75A4C(v23, v24, v25);
  sub_1D5C75A4C(v26, v27, v28);
  LOBYTE(v23) = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v59, &v53);
  sub_1D5D2F2C8(v53, v54, v55);
  sub_1D5D2F2C8(v59, v60, v61);
  if ((v23 & 1) == 0)
  {
    goto LABEL_38;
  }

  v30 = *(a1 + 144);
  v29 = *(a1 + 152);
  v32 = *(a1 + 160);
  v31 = *(a1 + 168);
  v33 = *(a1 + 176);
  v34 = *(a1 + 184);
  v36 = *(a2 + 144);
  v35 = *(a2 + 152);
  v37 = *(a2 + 160);
  v52 = *(a2 + 168);
  v39 = *(a2 + 176);
  v38 = *(a2 + 184);
  if (!v30)
  {
    v51 = v33;
    sub_1D5EB1D80(0, v29, v32, v31, v33);
    if (!v36)
    {
      sub_1D5EB1D80(0, v35, v37, v52, v39);
      sub_1D5EB2398(0, v29, v32, v31, v51);
      v41 = 1;
      return v41 & 1;
    }

    sub_1D5EB1D80(v36, v35, v37, v52, v39);
    v45 = v31;
    v44 = v51;
    goto LABEL_37;
  }

  v59 = v30;
  v60 = v29;
  v61 = v32;
  v62 = v31;
  v63 = v33;
  v64 = v34;
  if (!v36)
  {
    v46 = v31;
    v49 = v31;
    v44 = v33;
    sub_1D5EB1D80(v30, v29, v32, v46, v33);
    v45 = v49;
    sub_1D5EB1D80(0, v35, v37, v52, v39);
    sub_1D5EB1D80(v30, v29, v32, v49, v44);

    sub_1D5CBF568(v44);

LABEL_37:
    sub_1D5EB2398(v30, v29, v32, v45, v44);
    sub_1D5EB2398(v36, v35, v37, v52, v39);
    goto LABEL_38;
  }

  v53 = v36;
  v54 = v35;
  v55 = v37;
  v56 = v52;
  v57 = v39;
  v58 = v38;
  v48 = v39;
  v40 = v33;
  v50 = v33;
  sub_1D5EB1D80(v30, v29, v32, v31, v33);
  sub_1D5EB1D80(v36, v35, v37, v52, v48);
  sub_1D5EB1D80(v30, v29, v32, v31, v40);
  v41 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v59, &v53);
  v42 = v57;

  sub_1D5CBF568(v42);

  v43 = v63;

  sub_1D5CBF568(v43);

  sub_1D5EB2398(v30, v29, v32, v31, v50);
  return v41 & 1;
}

uint64_t sub_1D66567E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (v7 != *(a2 + 32) || v8 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v9)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  swift_beginAccess();
  v12 = *(a2 + 56);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

LABEL_41:
    v41 = 0;
    return v41 & 1;
  }

  if (!v12 || (v10 != *(a2 + 48) || v11 != v12) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  swift_beginAccess();
  v59 = *(a1 + 64);
  swift_beginAccess();
  v53 = *(a2 + 64);
  sub_1D5C82CD8(v59);
  sub_1D5C82CD8(v53);
  v13 = static FormatSize.== infix(_:_:)(&v59, &v53);
  sub_1D5C92A8C(v53);
  sub_1D5C92A8C(v59);
  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

  v14 = *(a1 + 80);
  v15 = *(a2 + 80);
  if (!v14)
  {
    if (!v15)
    {

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (!v15)
  {
LABEL_28:

    goto LABEL_41;
  }

  if ((*(a1 + 72) != *(a2 + 72) || v14 != v15) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_30:
  swift_beginAccess();
  v16 = *(a1 + 88);
  swift_beginAccess();
  v17 = *(a2 + 88);

  v18 = sub_1D6344A40(v16, v17, sub_1D5CFEC98, _s8NewsFeed16FormatAdjustmentO2eeoiySbAC_ACtFZ_0, sub_1D5CFED88);

  if ((v18 & 1) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v19 = *(a1 + 96);
  swift_beginAccess();
  v20 = *(a2 + 96);

  v21 = sub_1D633E44C(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v22 = *(a1 + 104);
  swift_beginAccess();
  if (v22 != *(a2 + 104))
  {
    goto LABEL_41;
  }

  swift_beginAccess();
  v24 = *(a1 + 120);
  v25 = *(a1 + 128);
  v59 = *(a1 + 112);
  v23 = v59;
  v60 = v24;
  LOBYTE(v61) = v25;
  swift_beginAccess();
  v27 = *(a2 + 120);
  v28 = *(a2 + 128);
  v53 = *(a2 + 112);
  v26 = v53;
  v54 = v27;
  LOBYTE(v55) = v28;
  sub_1D5C75A4C(v23, v24, v25);
  sub_1D5C75A4C(v26, v27, v28);
  LOBYTE(v23) = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v59, &v53);
  sub_1D5D2F2C8(v53, v54, v55);
  sub_1D5D2F2C8(v59, v60, v61);
  if ((v23 & 1) == 0)
  {
    goto LABEL_41;
  }

  v30 = *(a1 + 136);
  v29 = *(a1 + 144);
  v32 = *(a1 + 152);
  v31 = *(a1 + 160);
  v33 = *(a1 + 168);
  v34 = *(a1 + 176);
  v36 = *(a2 + 136);
  v35 = *(a2 + 144);
  v37 = *(a2 + 152);
  v52 = *(a2 + 160);
  v39 = *(a2 + 168);
  v38 = *(a2 + 176);
  if (!v30)
  {
    v51 = v33;
    sub_1D5EB1D80(0, v29, v32, v31, v33);
    if (!v36)
    {
      sub_1D5EB1D80(0, v35, v37, v52, v39);
      sub_1D5EB2398(0, v29, v32, v31, v51);
      v41 = 1;
      return v41 & 1;
    }

    sub_1D5EB1D80(v36, v35, v37, v52, v39);
    v45 = v31;
    v44 = v51;
    goto LABEL_40;
  }

  v59 = v30;
  v60 = v29;
  v61 = v32;
  v62 = v31;
  v63 = v33;
  v64 = v34;
  if (!v36)
  {
    v46 = v31;
    v49 = v31;
    v44 = v33;
    sub_1D5EB1D80(v30, v29, v32, v46, v33);
    v45 = v49;
    sub_1D5EB1D80(0, v35, v37, v52, v39);
    sub_1D5EB1D80(v30, v29, v32, v49, v44);

    sub_1D5CBF568(v44);

LABEL_40:
    sub_1D5EB2398(v30, v29, v32, v45, v44);
    sub_1D5EB2398(v36, v35, v37, v52, v39);
    goto LABEL_41;
  }

  v53 = v36;
  v54 = v35;
  v55 = v37;
  v56 = v52;
  v57 = v39;
  v58 = v38;
  v48 = v39;
  v40 = v33;
  v50 = v33;
  sub_1D5EB1D80(v30, v29, v32, v31, v33);
  sub_1D5EB1D80(v36, v35, v37, v52, v48);
  sub_1D5EB1D80(v30, v29, v32, v31, v40);
  v41 = _s8NewsFeed21FormatFlexBoxNodeItemV2eeoiySbAC_ACtFZ_0(&v59, &v53);
  v42 = v57;

  sub_1D5CBF568(v42);

  v43 = v63;

  sub_1D5CBF568(v43);

  sub_1D5EB2398(v30, v29, v32, v31, v50);
  return v41 & 1;
}

uint64_t _s8NewsFeed20FormatImageNodeStyleC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725B76C();
  v103 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1E69D6A58];
  sub_1D5B5BF78(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v96[-v11];
  sub_1D66F4EB8(0, &qword_1EDF3BA98, &qword_1EDF45AD0, v8);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v96[-v16];
  swift_beginAccess();
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  if ((v18 != *(a2 + 16) || v19 != *(a2 + 24)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_25;
  }

  v102 = v4;
  swift_beginAccess();
  v20 = *(a1 + 48);
  swift_beginAccess();
  v21 = *(a2 + 48);

  v22 = sub_1D63535A4(v20, v21);

  if ((v22 & 1) == 0)
  {
    goto LABEL_25;
  }

  v23 = *(a1 + 56);
  v24 = *(a2 + 56);
  if (v23)
  {
    if (!v24)
    {
      goto LABEL_25;
    }

    v25 = sub_1D633A310(v23, v24);

    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v24)
    {
      goto LABEL_25;
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 64);
  swift_beginAccess();
  v27 = *(a2 + 64);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_25;
    }

    v29 = sub_1D6347044(v28, v27);

    if ((v29 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v27)
  {
    goto LABEL_25;
  }

  v30 = *(a1 + 72);
  v31 = *(a2 + 72);
  if ((~v30 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(*(a1 + 72));
    sub_1D5D04BD4(v31);
    if ((~v31 & 0xF000000000000007) == 0)
    {
      sub_1D5C8500C(v30);
      goto LABEL_28;
    }

LABEL_24:
    sub_1D5C8500C(v30);
    sub_1D5C8500C(v31);
    goto LABEL_25;
  }

  *&v120 = *(a1 + 72);
  if ((~v31 & 0xF000000000000007) == 0)
  {
    sub_1D5D04BD4(v30);
    sub_1D5D04BD4(v31);
    sub_1D5D04BD4(v30);

    goto LABEL_24;
  }

  *v132 = v31;
  sub_1D5D04BD4(v30);
  sub_1D5D04BD4(v31);
  sub_1D5D04BD4(v30);
  v34 = _s8NewsFeed16FormatBackgroundO2eeoiySbAC_ACtFZ_0(&v120, v132);

  sub_1D5C8500C(v30);
  if ((v34 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_28:
  v35 = *(a1 + 80);
  v36 = *(a2 + 80);
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_25;
    }

    v37 = sub_1D633C9E8(v35, v36);

    if ((v37 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v36)
  {
    goto LABEL_25;
  }

  v38 = *(a1 + 88);
  v39 = *(a2 + 88);
  if (v38 == 9)
  {
    if (v39 != 9)
    {
      goto LABEL_25;
    }
  }

  else if (v39 == 9 || (sub_1D6DDD2B8(v38, v39) & 1) == 0)
  {
    goto LABEL_25;
  }

  v40 = *(a1 + 96);
  v41 = *(a1 + 104);
  v100 = v40;
  v101 = v41;
  v42 = *(a1 + 112);
  v43 = *(a2 + 96);
  v44 = *(a2 + 104);
  v45 = *(a2 + 112);
  v98 = v43;
  v99 = v44;
  if (v42 > 0xFD)
  {
    v97 = v45;
    v46 = v43;
    sub_1D5ED34B0(v40, v101, v42);
    v47 = v46;
    v45 = v97;
    sub_1D5ED34B0(v47, v44, v97);
    if (v45 > 0xFD)
    {
      sub_1D5ED348C(v100, v101, v42);
      goto LABEL_45;
    }

LABEL_43:
    sub_1D5ED348C(v100, v101, v42);
    sub_1D5ED348C(v98, v99, v45);
    goto LABEL_25;
  }

  *&v120 = v40;
  *(&v120 + 1) = v101;
  LOBYTE(v121) = v42;
  if (v45 > 0xFD)
  {
    v48 = v40;
    v49 = v101;
    v50 = v43;
    sub_1D5ED34B0(v40, v101, v42);
    sub_1D5ED34B0(v50, v44, v45);
    sub_1D5ED34B0(v48, v49, v42);
    sub_1D5ED34A0(v48, v49, v42);
    goto LABEL_43;
  }

  *v132 = v43;
  *&v132[8] = v44;
  v132[16] = v45;
  v51 = v101;
  sub_1D5ED34B0(v40, v101, v42);
  sub_1D5ED34B0(v98, v99, v45);
  v52 = v100;
  sub_1D5ED34B0(v100, v51, v42);
  LODWORD(v99) = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(&v120, v132);
  sub_1D5ED34A0(*v132, *&v132[8], v132[16]);
  sub_1D5ED34A0(v120, *(&v120 + 1), v121);
  sub_1D5ED348C(v52, v51, v42);
  if ((v99 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_45:
  v53 = *(a1 + 120);
  v54 = *(a2 + 120);
  if (v53 == 3)
  {
    sub_1D5D0AF9C(3uLL);
    if (v54 == 3)
    {
      sub_1D5D0AF9C(3uLL);
      sub_1D5D0AFAC(3uLL);
      goto LABEL_53;
    }

    sub_1D5D0AF9C(v54);
LABEL_51:
    sub_1D5D0AFAC(v53);
    sub_1D5D0AFAC(v54);
    goto LABEL_25;
  }

  *&v120 = *(a1 + 120);
  if (v54 == 3)
  {
    sub_1D5D0AF9C(v53);
    sub_1D5D0AF9C(3uLL);
    sub_1D5D0AF9C(v53);
    sub_1D5D0AFCC(v53);
    goto LABEL_51;
  }

  *v132 = v54;
  sub_1D5D0AF9C(v53);
  sub_1D5D0AF9C(v54);
  sub_1D5D0AF9C(v53);
  v55 = static FormatImageRenderingMode.== infix(_:_:)(&v120, v132);
  sub_1D5D0AFCC(*v132);
  sub_1D5D0AFCC(v120);
  sub_1D5D0AFAC(v53);
  if (!v55)
  {
    goto LABEL_25;
  }

LABEL_53:
  v56 = *(a1 + 128);
  v57 = *(a2 + 128);
  if (v56 == 4)
  {
    if (v57 != 4)
    {
      goto LABEL_25;
    }
  }

  else if (v57 == 4 || (sub_1D6DDD190(v56, v57) & 1) == 0)
  {
    goto LABEL_25;
  }

  swift_beginAccess();
  v58 = *(a1 + 136);
  swift_beginAccess();
  v59 = *(a2 + 136);
  if (v58)
  {
    if (!v59 || (sub_1D6348EA4(v58, v59) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v59)
  {
    goto LABEL_25;
  }

  v60 = *(a1 + 160);
  v61 = *(a1 + 192);
  v139 = *(a1 + 176);
  v140 = v61;
  v62 = *(a1 + 192);
  v141 = *(a1 + 208);
  v63 = *(a1 + 160);
  v138[0] = *(a1 + 144);
  v138[1] = v63;
  v64 = *(a2 + 160);
  v65 = *(a2 + 192);
  v144 = *(a2 + 176);
  v145 = v65;
  v66 = *(a2 + 192);
  v146 = *(a2 + 208);
  v67 = *(a2 + 160);
  v143[0] = *(a2 + 144);
  v143[1] = v67;
  v135 = v139;
  v136 = v62;
  v137 = *(a1 + 208);
  v133 = v138[0];
  v134 = v60;
  *&v132[23] = v64;
  *&v132[39] = v144;
  *&v132[55] = v66;
  *&v132[71] = *(a2 + 208);
  v142 = *(a1 + 224);
  v147 = *(a2 + 224);
  v68 = v142;
  *&v132[7] = v143[0];
  v69 = v147;
  if (v142 == 254)
  {
    if (v147 == 254)
    {
      v70 = *(a1 + 192);
      v122 = *(a1 + 176);
      v123 = v70;
      v124 = *(a1 + 208);
      v71 = *(a1 + 160);
      v120 = *(a1 + 144);
      v121 = v71;
      v125 = -2;
      v72 = MEMORY[0x1E69E6720];
      sub_1D5D355B8(v138, &v114, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      sub_1D5D355B8(v143, &v114, &qword_1EDF33718, &type metadata for FormatShadow, v72, sub_1D5C34D84);
      sub_1D66615F8(&v120, &qword_1EDF33718, &type metadata for FormatShadow, v72, sub_1D5C34D84);
      goto LABEL_71;
    }

    v76 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v138, &v120, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v143, &v120, &qword_1EDF33718, &type metadata for FormatShadow, v76, sub_1D5C34D84);
LABEL_69:
    v122 = v135;
    v123 = v136;
    v124 = v137;
    v120 = v133;
    v121 = v134;
    v128 = *&v132[32];
    v129 = *&v132[48];
    *v130 = *&v132[64];
    v126 = *v132;
    v125 = v68;
    *&v130[15] = *&v132[79];
    v127 = *&v132[16];
    v131 = v69;
    sub_1D5D35558(&v120, &qword_1EC8822D8, &qword_1EDF33718, &type metadata for FormatShadow, sub_1D66F49B8);
    goto LABEL_25;
  }

  v73 = *(a1 + 192);
  v122 = *(a1 + 176);
  v123 = v73;
  v124 = *(a1 + 208);
  v74 = *(a1 + 160);
  v120 = *(a1 + 144);
  v121 = v74;
  v125 = v142;
  v119 = v142;
  v116 = v122;
  v117 = v73;
  v118 = v124;
  v114 = v120;
  v115 = v74;
  if (v147 == 254)
  {
    v110 = v122;
    v111 = v123;
    v112 = v124;
    v113 = v125;
    v108 = v120;
    v109 = v121;
    v75 = MEMORY[0x1E69E6720];
    sub_1D5D355B8(v138, v106, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
    sub_1D5D355B8(v143, v106, &qword_1EDF33718, &type metadata for FormatShadow, v75, sub_1D5C34D84);
    sub_1D5D355B8(&v120, v106, &qword_1EDF33718, &type metadata for FormatShadow, v75, sub_1D5C34D84);
    sub_1D601144C(&v108);
    goto LABEL_69;
  }

  v77 = *(a2 + 192);
  v110 = *(a2 + 176);
  v111 = v77;
  v112 = *(a2 + 208);
  v78 = *(a2 + 160);
  v108 = *(a2 + 144);
  v109 = v78;
  v113 = v147;
  v79 = MEMORY[0x1E69E6720];
  sub_1D5D355B8(v138, v106, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
  sub_1D5D355B8(v143, v106, &qword_1EDF33718, &type metadata for FormatShadow, v79, sub_1D5C34D84);
  sub_1D5D355B8(&v120, v106, &qword_1EDF33718, &type metadata for FormatShadow, v79, sub_1D5C34D84);
  v80 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v114, &v108);
  v104[2] = v110;
  v104[3] = v111;
  v104[4] = v112;
  v105 = v113;
  v104[0] = v108;
  v104[1] = v109;
  sub_1D601144C(v104);
  v106[2] = v116;
  v106[3] = v117;
  v106[4] = v118;
  v107 = v119;
  v106[0] = v114;
  v106[1] = v115;
  sub_1D601144C(v106);
  v110 = v135;
  v111 = v136;
  v112 = v137;
  v108 = v133;
  v109 = v134;
  v113 = v68;
  sub_1D66615F8(&v108, &qword_1EDF33718, &type metadata for FormatShadow, v79, sub_1D5C34D84);
  if ((v80 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_71:
  v81 = *(a1 + 232);
  v82 = *(a2 + 232);
  if ((~v81 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(*(a1 + 232));
    sub_1D5CFCFAC(v82);
    if ((~v82 & 0xF000000000000007) == 0)
    {
      sub_1D5C84FF4(v81);
      goto LABEL_78;
    }

LABEL_76:
    sub_1D5C84FF4(v81);
    sub_1D5C84FF4(v82);
    goto LABEL_25;
  }

  *&v120 = *(a1 + 232);
  if ((~v82 & 0xF000000000000007) == 0)
  {
    sub_1D5CFCFAC(v81);
    sub_1D5CFCFAC(v82);
    sub_1D5CFCFAC(v81);

    goto LABEL_76;
  }

  *v132 = v82;
  sub_1D5CFCFAC(v81);
  sub_1D5CFCFAC(v82);
  sub_1D5CFCFAC(v81);
  v83 = static FormatColor.== infix(_:_:)(&v120, v132);

  sub_1D5C84FF4(v81);
  if ((v83 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_78:
  v84 = *(a1 + 240);
  v85 = *(a2 + 240);
  if (v84 == 2)
  {
    if (v85 != 2)
    {
      goto LABEL_25;
    }
  }

  else if (v85 == 2 || ((v85 ^ v84) & 1) != 0)
  {
    goto LABEL_25;
  }

  v87 = *(a1 + 248);
  v86 = *(a1 + 256);
  v88 = *(a2 + 248);
  v101 = *(a2 + 256);
  if (v87 != 1)
  {
    *&v120 = v87;
    *(&v120 + 1) = v86;
    if (v88 != 1)
    {
      *v132 = v88;
      *&v132[8] = v101;
      sub_1D62B5D88(v87);
      sub_1D62B5D88(v88);
      sub_1D62B5D88(v87);
      LODWORD(v101) = _s8NewsFeed22FormatImageNodeRequestV2eeoiySbAC_ACtFZ_0(&v120, v132);

      sub_1D62B5D44(v87);
      if ((v101 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_91;
    }

    sub_1D62B5D88(v87);
    sub_1D62B5D88(1);
    sub_1D62B5D88(v87);

LABEL_89:
    sub_1D62B5D44(v87);
    sub_1D62B5D44(v88);
    goto LABEL_25;
  }

  sub_1D62B5D88(1);
  if (v88 != 1)
  {
    sub_1D62B5D88(v88);
    goto LABEL_89;
  }

  sub_1D62B5D88(1);
  sub_1D62B5D44(1);
LABEL_91:
  v89 = OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask;
  v90 = *(v14 + 48);
  v91 = MEMORY[0x1E69D6A58];
  sub_1D5CDE2EC(a1 + OBJC_IVAR____TtC8NewsFeed20FormatImageNodeStyle_imageMask, v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
  sub_1D5CDE2EC(a2 + v89, &v17[v90], &qword_1EDF45AD0, v91);
  v92 = *(v103 + 48);
  if (v92(v17, 1, v102) == 1)
  {
    if (v92(&v17[v90], 1, v102) == 1)
    {
      sub_1D5D35558(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      v32 = 1;
      return v32 & 1;
    }
  }

  else
  {
    sub_1D5CDE2EC(v17, v12, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    if (v92(&v17[v90], 1, v102) != 1)
    {
      v93 = v102;
      v94 = v103;
      (*(v103 + 32))(v7, &v17[v90], v102);
      sub_1D5B58B84(&qword_1EC881E90, MEMORY[0x1E69D6A58]);
      v32 = sub_1D7261FBC();
      v95 = *(v94 + 8);
      v95(v7, v93);
      v95(v12, v93);
      sub_1D5D35558(v17, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720], sub_1D5B5BF78);
      return v32 & 1;
    }

    (*(v103 + 8))(v12, v102);
  }

  sub_1D66F4424(v17, &qword_1EDF3BA98, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
LABEL_25:
  v32 = 0;
  return v32 & 1;
}

unint64_t sub_1D6657ED0()
{
  result = qword_1EDF296E8;
  if (!qword_1EDF296E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296E8);
  }

  return result;
}

void sub_1D6657F24()
{
  if (!qword_1EDF19FE8)
  {
    sub_1D6657FB8();
    sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19FE8);
    }
  }
}

void sub_1D6657FB8()
{
  if (!qword_1EDF251B0)
  {
    sub_1D665803C();
    sub_1D6658090();
    sub_1D66580E4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF251B0);
    }
  }
}

unint64_t sub_1D665803C()
{
  result = qword_1EDF27120;
  if (!qword_1EDF27120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27120);
  }

  return result;
}

unint64_t sub_1D6658090()
{
  result = qword_1EDF27128;
  if (!qword_1EDF27128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27128);
  }

  return result;
}

unint64_t sub_1D66580E4()
{
  result = qword_1EDF27130;
  if (!qword_1EDF27130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27130);
  }

  return result;
}

void sub_1D6658138()
{
  if (!qword_1EDF08BC8)
  {
    sub_1D66581CC();
    sub_1D5B58B84(&qword_1EDF03178, sub_1D66581CC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08BC8);
    }
  }
}

void sub_1D66581CC()
{
  if (!qword_1EDF03170)
  {
    sub_1D6657FB8();
    sub_1D5B58B84(&qword_1EDF251B8, sub_1D6657FB8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03170);
    }
  }
}

unint64_t sub_1D66582DC()
{
  result = qword_1EDF32868;
  if (!qword_1EDF32868)
  {
    sub_1D5C30060(255, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32868);
  }

  return result;
}

unint64_t sub_1D665836C()
{
  result = qword_1EDF25D00;
  if (!qword_1EDF25D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25D00);
  }

  return result;
}

void sub_1D66583C0()
{
  if (!qword_1EDF19F78)
  {
    sub_1D6658454();
    sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F78);
    }
  }
}

void sub_1D6658454()
{
  if (!qword_1EDF250D0)
  {
    sub_1D66584D8();
    sub_1D665852C();
    sub_1D6658580();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF250D0);
    }
  }
}

unint64_t sub_1D66584D8()
{
  result = qword_1EDF25CE0;
  if (!qword_1EDF25CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CE0);
  }

  return result;
}

unint64_t sub_1D665852C()
{
  result = qword_1EDF25CE8;
  if (!qword_1EDF25CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CE8);
  }

  return result;
}

unint64_t sub_1D6658580()
{
  result = qword_1EDF25CF0;
  if (!qword_1EDF25CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF25CF0);
  }

  return result;
}

void sub_1D66585D4()
{
  if (!qword_1EDF08B40)
  {
    sub_1D6658668();
    sub_1D5B58B84(&qword_1EDF03068, sub_1D6658668);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B40);
    }
  }
}

void sub_1D6658668()
{
  if (!qword_1EDF03060)
  {
    sub_1D6658454();
    sub_1D5B58B84(&qword_1EDF250D8, sub_1D6658454);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03060);
    }
  }
}

unint64_t sub_1D6658778()
{
  result = qword_1EDF3A3A8;
  if (!qword_1EDF3A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3A3A8);
  }

  return result;
}

void sub_1D66587CC()
{
  if (!qword_1EC885F98)
  {
    sub_1D5E1C94C();
    sub_1D5B58B84(&qword_1EC87FA18, sub_1D5E1C94C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885F98);
    }
  }
}

unint64_t sub_1D6658860()
{
  result = qword_1EC885FA8;
  if (!qword_1EC885FA8)
  {
    sub_1D5B5BF78(255, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EC885FB0, type metadata accessor for FormatWorkspaceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FA8);
  }

  return result;
}

unint64_t sub_1D6658938()
{
  result = qword_1EC885FB8;
  if (!qword_1EC885FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FB8);
  }

  return result;
}

unint64_t sub_1D665898C()
{
  result = qword_1EC885FC0;
  if (!qword_1EC885FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FC0);
  }

  return result;
}

unint64_t sub_1D66589E0()
{
  result = qword_1EC885FC8;
  if (!qword_1EC885FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FC8);
  }

  return result;
}

unint64_t sub_1D6658A34()
{
  result = qword_1EC885FD0;
  if (!qword_1EC885FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FD0);
  }

  return result;
}

unint64_t sub_1D6658A88()
{
  result = qword_1EC885FD8;
  if (!qword_1EC885FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FD8);
  }

  return result;
}

unint64_t sub_1D6658ADC()
{
  result = qword_1EC885FE0;
  if (!qword_1EC885FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FE0);
  }

  return result;
}

unint64_t sub_1D6658B30()
{
  result = qword_1EC885FE8;
  if (!qword_1EC885FE8)
  {
    sub_1D5C2E60C(255, &qword_1EC885F90, sub_1D60CEE3C, sub_1D60CEE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FE8);
  }

  return result;
}

void sub_1D6658BC0()
{
  if (!qword_1EC885FF0)
  {
    sub_1D5E1C910(255);
    sub_1D5B58B84(&qword_1EC87FA20, sub_1D5E1C910);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC885FF0);
    }
  }
}

unint64_t sub_1D6658CE4()
{
  result = qword_1EC885FF8;
  if (!qword_1EC885FF8)
  {
    sub_1D5B5BF78(255, &qword_1EC885FA0, type metadata accessor for FormatWorkspaceGroup, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EC886000, type metadata accessor for FormatWorkspaceGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885FF8);
  }

  return result;
}

unint64_t sub_1D6658DBC()
{
  result = qword_1EC886008;
  if (!qword_1EC886008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886008);
  }

  return result;
}

unint64_t sub_1D6658E10()
{
  result = qword_1EC886010;
  if (!qword_1EC886010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886010);
  }

  return result;
}

unint64_t sub_1D6658E64()
{
  result = qword_1EC886018;
  if (!qword_1EC886018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886018);
  }

  return result;
}

unint64_t sub_1D6658EB8()
{
  result = qword_1EC886020;
  if (!qword_1EC886020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886020);
  }

  return result;
}

unint64_t sub_1D6658F0C()
{
  result = qword_1EC886028;
  if (!qword_1EC886028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886028);
  }

  return result;
}

unint64_t sub_1D6658F60()
{
  result = qword_1EC886030;
  if (!qword_1EC886030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886030);
  }

  return result;
}

unint64_t sub_1D6658FB4()
{
  result = qword_1EC886040;
  if (!qword_1EC886040)
  {
    sub_1D5C34D84(255, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    sub_1D60CEE90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886040);
  }

  return result;
}

unint64_t sub_1D6659050()
{
  result = qword_1EDF07690;
  if (!qword_1EDF07690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07690);
  }

  return result;
}

unint64_t sub_1D66590A4()
{
  result = qword_1EDF07668;
  if (!qword_1EDF07668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07668);
  }

  return result;
}

unint64_t sub_1D66590F8()
{
  result = qword_1EDF07640;
  if (!qword_1EDF07640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07640);
  }

  return result;
}

unint64_t sub_1D665914C()
{
  result = qword_1EC886050;
  if (!qword_1EC886050)
  {
    sub_1D5C30060(255, &qword_1EC886048, sub_1D5C9B86C, &type metadata for FormatSyncImageContent, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886050);
  }

  return result;
}

unint64_t sub_1D665928C()
{
  result = qword_1EC886058;
  if (!qword_1EC886058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886058);
  }

  return result;
}

void sub_1D66592E0()
{
  if (!qword_1EDF088A8)
  {
    sub_1D5E1C8A0(255);
    sub_1D5B58B84(&qword_1EDF02B38, sub_1D5E1C8A0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF088A8);
    }
  }
}

unint64_t sub_1D6659404()
{
  result = qword_1EDF05178;
  if (!qword_1EDF05178)
  {
    sub_1D5C34D84(255, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
    sub_1D5B4C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05178);
  }

  return result;
}

unint64_t sub_1D66594A0()
{
  result = qword_1EDF04F08;
  if (!qword_1EDF04F08)
  {
    sub_1D5C34D84(255, &qword_1EDF04F10, &type metadata for FormatSourceMapNode, MEMORY[0x1E69E62F8]);
    sub_1D5C50B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F08);
  }

  return result;
}

void sub_1D665953C()
{
  if (!qword_1EDF08DB8)
  {
    sub_1D66595D0();
    sub_1D5B58B84(&qword_1EDF03558, sub_1D66595D0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08DB8);
    }
  }
}

void sub_1D66595D0()
{
  if (!qword_1EDF03550)
  {
    sub_1D5C57044();
    sub_1D5B58B84(&qword_1EDF25518, sub_1D5C57044);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03550);
    }
  }
}

unint64_t sub_1D66596F4()
{
  result = qword_1EDF113E0;
  if (!qword_1EDF113E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF113E0);
  }

  return result;
}

unint64_t sub_1D6659748()
{
  result = qword_1EC886060;
  if (!qword_1EC886060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886060);
  }

  return result;
}

unint64_t sub_1D665979C()
{
  result = qword_1EDF0A880;
  if (!qword_1EDF0A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A880);
  }

  return result;
}

unint64_t sub_1D66597F0()
{
  result = qword_1EDF29758;
  if (!qword_1EDF29758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29758);
  }

  return result;
}

unint64_t sub_1D6659844()
{
  result = qword_1EDF110F8;
  if (!qword_1EDF110F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110F8);
  }

  return result;
}

unint64_t sub_1D6659898()
{
  result = qword_1EDF0E428;
  if (!qword_1EDF0E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E428);
  }

  return result;
}

void sub_1D66598EC()
{
  if (!qword_1EDF08EE8)
  {
    sub_1D5E1C7DC(255);
    sub_1D5B58B84(&qword_1EDF037B8, sub_1D5E1C7DC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08EE8);
    }
  }
}

unint64_t sub_1D6659A24()
{
  result = qword_1EDF0E2C0;
  if (!qword_1EDF0E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E2C0);
  }

  return result;
}

unint64_t sub_1D6659A78()
{
  result = qword_1EDF04FC0;
  if (!qword_1EDF04FC0)
  {
    sub_1D5C34D84(255, &qword_1EDF04FC8, &type metadata for FormatSourceItem, MEMORY[0x1E69E62F8]);
    sub_1D5C65960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FC0);
  }

  return result;
}

unint64_t sub_1D6659B14()
{
  result = qword_1EC886070;
  if (!qword_1EC886070)
  {
    sub_1D5B5BF78(255, &qword_1EC886068, MEMORY[0x1E69D6A58], MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF3BAA8, MEMORY[0x1E69D6A58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886070);
  }

  return result;
}

unint64_t sub_1D6659BEC()
{
  result = qword_1EDF04CB0;
  if (!qword_1EDF04CB0)
  {
    sub_1D5C34D84(255, &qword_1EDF04CB8, &type metadata for FormatButtonNodeStateMask, MEMORY[0x1E69E62F8]);
    sub_1D5C65AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04CB0);
  }

  return result;
}

unint64_t sub_1D6659C88()
{
  result = qword_1EDF04FE0;
  if (!qword_1EDF04FE0)
  {
    sub_1D5C34D84(255, &qword_1EDF1B2C8, &type metadata for FormatAdjustment, MEMORY[0x1E69E62F8]);
    sub_1D5C624B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FE0);
  }

  return result;
}

unint64_t sub_1D6659D24()
{
  result = qword_1EDF122C0;
  if (!qword_1EDF122C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF122C0);
  }

  return result;
}

uint64_t sub_1D6659D78(void *a1)
{
  v2 = v1;
  sub_1D5C2E60C(0, &qword_1EDF3BC20, sub_1D5C588A4, sub_1D5C588F8);
  *&v41 = v4;
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v37 - v6;
  sub_1D670677C();
  v9 = v8;
  *&v42 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665A3A8();
  v14 = v13;
  sub_1D5B58B84(&qword_1EDF0C590, sub_1D665A3A8);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v14;
  }

  v40 = v7;
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_1D7264AFC();
  v17 = Dictionary<>.errorOnUnknownKeys.getter(v16);

  v18 = v41;
  v19 = v49;
  if (v17)
  {
    v20 = sub_1D726433C();
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 48);
      while (*v22 != 1)
      {
        v22 += 24;
        if (!--v21)
        {
          goto LABEL_7;
        }
      }

      v26 = a1;
      v27 = v12;
      v29 = *(v22 - 2);
      v28 = *(v22 - 1);

      v14 = sub_1D66130BC();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v30 = v29;
      *(v30 + 8) = v28;
      *(v30 + 16) = v14;
      *(v30 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      v31 = v27;
      a1 = v26;
      (*(v42 + 8))(v31, v15);
      goto LABEL_10;
    }

LABEL_7:
  }

  v38 = sub_1D5C31D18(v12, 0, 0, 0, sub_1D670677C);
  v39 = v23;
  v45 = xmmword_1D728CF30;
  LOBYTE(v46) = 0;
  sub_1D5C58CA0();
  v24 = v40;
  sub_1D726431C();
  v25 = v42;
  v37 = sub_1D725A74C();
  (*(v19 + 8))(v24, v18);
  v43 = xmmword_1D7297410;
  v44 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v25 + 8))(v12, v15);
  v33 = v47;
  v34 = v48;
  type metadata accessor for FormatVariableNode();
  v41 = v46;
  v42 = v45;
  v14 = swift_allocObject();
  swift_beginAccess();
  v35 = v39;
  *(v14 + 16) = v38;
  *(v14 + 24) = v35;
  swift_beginAccess();
  *(v14 + 32) = v37;
  v36 = v42;
  *(v14 + 56) = v41;
  *(v14 + 40) = v36;
  *(v14 + 72) = v33;
  *(v14 + 80) = v34;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

void sub_1D665A280()
{
  if (!qword_1EDF08DD0)
  {
    sub_1D665A314();
    sub_1D5B58B84(&qword_1EDF03588, sub_1D665A314);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08DD0);
    }
  }
}

void sub_1D665A314()
{
  if (!qword_1EDF03580)
  {
    sub_1D665A3A8();
    sub_1D5B58B84(&qword_1EDF0C590, sub_1D665A3A8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03580);
    }
  }
}

void sub_1D665A3A8()
{
  if (!qword_1EDF0C588)
  {
    sub_1D665A42C();
    sub_1D665A480();
    sub_1D665A4D4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C588);
    }
  }
}

unint64_t sub_1D665A42C()
{
  result = qword_1EDF10178;
  if (!qword_1EDF10178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10178);
  }

  return result;
}

unint64_t sub_1D665A480()
{
  result = qword_1EDF10180;
  if (!qword_1EDF10180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10180);
  }

  return result;
}

unint64_t sub_1D665A4D4()
{
  result = qword_1EDF10188;
  if (!qword_1EDF10188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10188);
  }

  return result;
}

unint64_t sub_1D665A5A4()
{
  result = qword_1EDF04C80;
  if (!qword_1EDF04C80)
  {
    sub_1D5C34D84(255, &qword_1EDF04C88, &type metadata for FormatOptionsNodeStatement, MEMORY[0x1E69E62F8]);
    sub_1D5C588F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04C80);
  }

  return result;
}

unint64_t sub_1D665A640()
{
  result = qword_1EDF0EA90;
  if (!qword_1EDF0EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EA90);
  }

  return result;
}

void sub_1D665A694()
{
  if (!qword_1EDF08B38)
  {
    sub_1D665A728();
    sub_1D5B58B84(&qword_1EDF03058, sub_1D665A728);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B38);
    }
  }
}

void sub_1D665A728()
{
  if (!qword_1EDF03050)
  {
    sub_1D5C5F6FC();
    sub_1D5B58B84(&qword_1EDF250C8, sub_1D5C5F6FC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03050);
    }
  }
}

void sub_1D665A838()
{
  if (!qword_1EDF19F40)
  {
    sub_1D665A8CC();
    sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19F40);
    }
  }
}

void sub_1D665A8CC()
{
  if (!qword_1EDF25060)
  {
    sub_1D665A950();
    sub_1D665A9A4();
    sub_1D665A9F8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25060);
    }
  }
}

unint64_t sub_1D665A950()
{
  result = qword_1EDF246F0;
  if (!qword_1EDF246F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF246F0);
  }

  return result;
}

unint64_t sub_1D665A9A4()
{
  result = qword_1EDF246F8;
  if (!qword_1EDF246F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF246F8);
  }

  return result;
}

unint64_t sub_1D665A9F8()
{
  result = qword_1EDF24700;
  if (!qword_1EDF24700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24700);
  }

  return result;
}

void sub_1D665AA4C()
{
  if (!qword_1EDF08B00)
  {
    sub_1D665AAE0();
    sub_1D5B58B84(&qword_1EDF02FE8, sub_1D665AAE0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08B00);
    }
  }
}

void sub_1D665AAE0()
{
  if (!qword_1EDF02FE0)
  {
    sub_1D665A8CC();
    sub_1D5B58B84(&qword_1EDF25068, sub_1D665A8CC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02FE0);
    }
  }
}

unint64_t sub_1D665ABF0()
{
  result = qword_1EC886078;
  if (!qword_1EC886078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886078);
  }

  return result;
}

unint64_t sub_1D665AC44()
{
  result = qword_1EC886088;
  if (!qword_1EC886088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886088);
  }

  return result;
}

unint64_t sub_1D665AC98()
{
  result = qword_1EC886090;
  if (!qword_1EC886090)
  {
    sub_1D5C30060(255, &qword_1EC886080, sub_1D665AC44, &type metadata for FormatTagBinding.Bool, type metadata accessor for FormatArraySubscript);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886090);
  }

  return result;
}

void sub_1D665AD28()
{
  if (!qword_1EDF08818)
  {
    sub_1D665ADBC();
    sub_1D5B58B84(&qword_1EDF02A18, sub_1D665ADBC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08818);
    }
  }
}

void sub_1D665ADBC()
{
  if (!qword_1EDF02A10)
  {
    sub_1D5C9EA4C();
    sub_1D5B58B84(&qword_1EDF24B68, sub_1D5C9EA4C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02A10);
    }
  }
}

unint64_t sub_1D665AEB4()
{
  result = qword_1EDF0D9B8;
  if (!qword_1EDF0D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9B8);
  }

  return result;
}

unint64_t sub_1D665AF08()
{
  result = qword_1EC8860A0;
  if (!qword_1EC8860A0)
  {
    sub_1D5C30060(255, &qword_1EC886098, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860A0);
  }

  return result;
}

unint64_t sub_1D665AF98()
{
  result = qword_1EC8860A8;
  if (!qword_1EC8860A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860A8);
  }

  return result;
}

unint64_t sub_1D665AFEC()
{
  result = qword_1EDF0CE60;
  if (!qword_1EDF0CE60)
  {
    sub_1D5C30060(255, &qword_1EDF0CE58, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatUserInterfaceValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0CE60);
  }

  return result;
}

unint64_t sub_1D665B07C()
{
  result = qword_1EC8860B8;
  if (!qword_1EC8860B8)
  {
    sub_1D5C30060(255, &qword_1EC8860B0, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatSwitchValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860B8);
  }

  return result;
}

unint64_t sub_1D665B10C()
{
  result = qword_1EDF10B70;
  if (!qword_1EDF10B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10B70);
  }

  return result;
}

unint64_t sub_1D665B160()
{
  result = qword_1EDF1E6A0;
  if (!qword_1EDF1E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1E6A0);
  }

  return result;
}

unint64_t sub_1D665B1B4()
{
  result = qword_1EDF2B488;
  if (!qword_1EDF2B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B488);
  }

  return result;
}

unint64_t sub_1D665B208()
{
  result = qword_1EDF24AF0;
  if (!qword_1EDF24AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24AF0);
  }

  return result;
}

unint64_t sub_1D665B25C()
{
  result = qword_1EDF09490;
  if (!qword_1EDF09490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09490);
  }

  return result;
}

uint64_t objectdestroy_682Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1D665B2F4()
{
  result = qword_1EDF071B0;
  if (!qword_1EDF071B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF071B0);
  }

  return result;
}

unint64_t sub_1D665B348()
{
  result = qword_1EDF1D958;
  if (!qword_1EDF1D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1D958);
  }

  return result;
}

void sub_1D665B39C()
{
  if (!qword_1EDF08CF8)
  {
    sub_1D665B430();
    sub_1D5B58B84(&qword_1EDF033D8, sub_1D665B430);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CF8);
    }
  }
}

void sub_1D665B430()
{
  if (!qword_1EDF033D0)
  {
    sub_1D5CA98C4();
    sub_1D5B58B84(&qword_1EDF253B8, sub_1D5CA98C4);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF033D0);
    }
  }
}

unint64_t sub_1D665B554()
{
  result = qword_1EDF0D478;
  if (!qword_1EDF0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D478);
  }

  return result;
}

unint64_t sub_1D665B5A8()
{
  result = qword_1EDF0D310;
  if (!qword_1EDF0D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D310);
  }

  return result;
}

unint64_t sub_1D665B5FC()
{
  result = qword_1EDF0F890;
  if (!qword_1EDF0F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F890);
  }

  return result;
}

unint64_t sub_1D665B650()
{
  result = qword_1EDF06628;
  if (!qword_1EDF06628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06628);
  }

  return result;
}

unint64_t sub_1D665B6A4()
{
  result = qword_1EDF05FF0;
  if (!qword_1EDF05FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05FF0);
  }

  return result;
}

unint64_t sub_1D665B6F8()
{
  result = qword_1EDF22600;
  if (!qword_1EDF22600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF22600);
  }

  return result;
}

unint64_t sub_1D665B74C()
{
  result = qword_1EDF127C0;
  if (!qword_1EDF127C0)
  {
    sub_1D5C30060(255, &qword_1EDF127B8, sub_1D5B577E4, MEMORY[0x1E69E7DE0], type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF127C0);
  }

  return result;
}

unint64_t sub_1D665B7DC()
{
  result = qword_1EDF27FD8;
  if (!qword_1EDF27FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27FD8);
  }

  return result;
}

unint64_t sub_1D665B830()
{
  result = qword_1EDF21260;
  if (!qword_1EDF21260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21260);
  }

  return result;
}

unint64_t sub_1D665B884()
{
  result = qword_1EDF10480;
  if (!qword_1EDF10480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10480);
  }

  return result;
}

unint64_t sub_1D665B8D8()
{
  result = qword_1EDF29818;
  if (!qword_1EDF29818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29818);
  }

  return result;
}

void sub_1D665B92C()
{
  if (!qword_1EDF03DB8)
  {
    sub_1D665B9C0();
    sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03DB8);
    }
  }
}

void sub_1D665B9C0()
{
  if (!qword_1EDF0C548)
  {
    sub_1D665BA44();
    sub_1D665BA98();
    sub_1D665BAEC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C548);
    }
  }
}

unint64_t sub_1D665BA44()
{
  result = qword_1EDF0ECD8;
  if (!qword_1EDF0ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECD8);
  }

  return result;
}

unint64_t sub_1D665BA98()
{
  result = qword_1EDF0ECE0;
  if (!qword_1EDF0ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECE0);
  }

  return result;
}

unint64_t sub_1D665BAEC()
{
  result = qword_1EDF0ECE8;
  if (!qword_1EDF0ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0ECE8);
  }

  return result;
}

unint64_t sub_1D665BB40()
{
  result = qword_1EDF124E8;
  if (!qword_1EDF124E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF124E8);
  }

  return result;
}

void sub_1D665BB94()
{
  if (!qword_1EDF08CD0)
  {
    sub_1D665BC28();
    sub_1D5B58B84(&qword_1EDF03388, sub_1D665BC28);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CD0);
    }
  }
}

void sub_1D665BC28()
{
  if (!qword_1EDF03380)
  {
    sub_1D665B9C0();
    sub_1D5B58B84(&qword_1EDF0C550, sub_1D665B9C0);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03380);
    }
  }
}

unint64_t sub_1D665BCBC()
{
  result = qword_1EDF124F0;
  if (!qword_1EDF124F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF124F0);
  }

  return result;
}

unint64_t sub_1D665BD8C()
{
  result = qword_1EDF08190;
  if (!qword_1EDF08190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08190);
  }

  return result;
}

unint64_t sub_1D665BDE0()
{
  result = qword_1EC8860C0;
  if (!qword_1EC8860C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860C0);
  }

  return result;
}

unint64_t sub_1D665BE34()
{
  result = qword_1EC8860C8;
  if (!qword_1EC8860C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860C8);
  }

  return result;
}

uint64_t objectdestroy_978Tm()
{
  sub_1D5F33D8C(*(v0 + 16));
  sub_1D5F33D8C(*(v0 + 24));

  return swift_deallocObject();
}

void sub_1D665BEC8()
{
  if (!qword_1EDF08DC0)
  {
    sub_1D665BF5C();
    sub_1D5B58B84(&qword_1EDF03568, sub_1D665BF5C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08DC0);
    }
  }
}

void sub_1D665BF5C()
{
  if (!qword_1EDF03560)
  {
    sub_1D5CC307C();
    sub_1D5B58B84(&qword_1EDF25528, sub_1D5CC307C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03560);
    }
  }
}

unint64_t sub_1D665C080()
{
  result = qword_1EDF0B9A0;
  if (!qword_1EDF0B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B9A0);
  }

  return result;
}

void sub_1D665C184()
{
  if (!qword_1EDF088E8)
  {
    sub_1D665C218();
    sub_1D5B58B84(&qword_1EDF02BB8, sub_1D665C218);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF088E8);
    }
  }
}

void sub_1D665C218()
{
  if (!qword_1EDF02BB0)
  {
    sub_1D5C8DA18();
    sub_1D5B58B84(&qword_1EDF24CD8, sub_1D5C8DA18);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02BB0);
    }
  }
}

void sub_1D665C310()
{
  if (!qword_1EDF08AF0)
  {
    sub_1D665C3A4();
    sub_1D5B58B84(&qword_1EDF02FC8, sub_1D665C3A4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08AF0);
    }
  }
}

void sub_1D665C3A4()
{
  if (!qword_1EDF02FC0)
  {
    sub_1D5CE5ECC();
    sub_1D5B58B84(&qword_1EDF25048, sub_1D5CE5ECC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02FC0);
    }
  }
}

unint64_t sub_1D665C4B4()
{
  result = qword_1EDF09AF8;
  if (!qword_1EDF09AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AF8);
  }

  return result;
}

unint64_t sub_1D665C508()
{
  result = qword_1EDF296D0;
  if (!qword_1EDF296D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296D0);
  }

  return result;
}

uint64_t sub_1D665C55C(uint64_t result)
{
  v1 = *(result + 128) & 0x8F | 0x40;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

unint64_t sub_1D665C57C()
{
  result = qword_1EDF23368;
  if (!qword_1EDF23368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23368);
  }

  return result;
}

unint64_t sub_1D665C5D0()
{
  result = qword_1EC8860D8;
  if (!qword_1EC8860D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860D8);
  }

  return result;
}

uint64_t sub_1D665C624(void *a1)
{
  sub_1D5C8CD38();
  v67 = v2;
  v66 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  *&v68 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D5C2E60C(0, &qword_1EDF3BD38, sub_1D5C62464, sub_1D5C624B8);
  v6 = v5;
  v69 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v53[-v8];
  sub_1D6705A9C();
  v11 = v10;
  *&v70 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C580();
  sub_1D5B58B84(&qword_1EDF0C560, sub_1D5E1C580);
  v16 = v78;
  sub_1D7264B0C();
  v17 = v16;
  if (v16)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v17);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v15;
  }

  v18 = v9;
  v78 = v6;
  v19 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1D7264AFC();
  v21 = Dictionary<>.errorOnUnknownKeys.getter(v20);

  if (v21)
  {
    v22 = sub_1D726433C();
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = (v22 + 48);
      while (*v24 != 1)
      {
        v24 += 24;
        if (!--v23)
        {
          goto LABEL_7;
        }
      }

      v27 = *(v24 - 2);
      v15 = *(v24 - 1);

      v28 = sub_1D66139DC();
      sub_1D5E2D970();
      v17 = swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v15;
      *(v29 + 16) = v28;
      *(v29 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v19 + 8))(v14, v11);
      goto LABEL_10;
    }

LABEL_7:
  }

  v25 = sub_1D5C31D18(v14, 0, 0, 0, sub_1D6705A9C);
  v65 = v26;
  v74 = xmmword_1D728CF30;
  LOBYTE(v75) = 0;
  sub_1D5C62940();
  sub_1D726431C();
  v30 = v72;
  v74 = xmmword_1D7297410;
  LOBYTE(v75) = 0;
  sub_1D5C6411C();
  sub_1D726427C();
  v64 = v72;
  v63 = xmmword_1D72BAA60;
  v74 = xmmword_1D72BAA60;
  LOBYTE(v75) = 0;
  if (sub_1D726434C())
  {
    v72 = v63;
    v73 = 0;
    sub_1D5C9EEC4();
    v61 = v18;
    v32 = v78;
    sub_1D726431C();
    v62 = v25;
    *&v63 = v30;
    v33 = v61;
    v34 = sub_1D725A74C();
    (*(v69 + 8))(v33, v32);
  }

  else
  {
    v62 = v25;
    *&v63 = v30;
    v34 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for FormatIssueCoverNodeStyle();
  v74 = xmmword_1D72BAA70;
  LOBYTE(v75) = 0;
  sub_1D5B58B84(&qword_1EDF0C2C8, type metadata accessor for FormatIssueCoverNodeStyle);
  sub_1D726427C();
  v35 = v72;
  type metadata accessor for FormatAnimationNodeStyle();
  v74 = xmmword_1D72BAA80;
  LOBYTE(v75) = 0;
  sub_1D5B58B84(&qword_1EDF26768, type metadata accessor for FormatAnimationNodeStyle);
  sub_1D726427C();
  v78 = v35;
  v36 = v72;
  v74 = xmmword_1D72BAA90;
  LOBYTE(v75) = 0;
  sub_1D6705B30();
  sub_1D726431C();
  v61 = v36;
  v69 = v34;
  v60 = v72;
  v59 = xmmword_1D72BAAA0;
  v74 = xmmword_1D72BAAA0;
  LOBYTE(v75) = 0;
  v37 = v14;
  if (sub_1D726434C())
  {
    v72 = v59;
    v73 = 0;
    sub_1D726431C();
    v38 = v71;
  }

  else
  {
    v38 = 0;
  }

  v59 = xmmword_1D72BAAB0;
  v74 = xmmword_1D72BAAB0;
  LOBYTE(v75) = 0;
  if (sub_1D726434C())
  {
    v72 = v59;
    v73 = 0;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v58 = v38;
    v39 = v71;
    sub_1D5EB1500(v71);
    v40 = v39;
    sub_1D5EB15C4(v39);
  }

  else
  {
    v58 = v38;
    v40 = 0x8000000000000000;
  }

  v59 = xmmword_1D72BAAC0;
  v74 = xmmword_1D72BAAC0;
  LOBYTE(v75) = 0;
  if (sub_1D726434C())
  {
    v72 = v59;
    v73 = 0;
    sub_1D726431C();
    v41 = v71;
  }

  else
  {
    v41 = 1;
  }

  v74 = xmmword_1D72BAAD0;
  LOBYTE(v75) = 0;
  sub_1D5C6F27C();
  sub_1D726427C();
  v56 = v41;
  *&v59 = a1;
  v55 = v72;
  v54 = BYTE8(v72);
  v57 = xmmword_1D72BAAE0;
  v74 = xmmword_1D72BAAE0;
  LOBYTE(v75) = 0;
  v42 = v11;
  if (sub_1D726434C())
  {
    v72 = v57;
    v73 = 0;
    sub_1D5B58B84(&qword_1EDF3BE00, sub_1D5C8CD38);
    sub_1D726431C();
    v43 = v67;
    v44 = v68;
    v45 = sub_1D725A74C();
    (*(v66 + 8))(v44, v43);
  }

  else
  {
    v45 = MEMORY[0x1E69E7CD0];
  }

  v74 = xmmword_1D72BAAF0;
  LOBYTE(v75) = 0;
  sub_1D61CF134();
  sub_1D726431C();
  v46 = v72;
  v72 = xmmword_1D7282A80;
  v73 = 0;
  sub_1D5C5C5C0();
  sub_1D726427C();
  (*(v19 + 8))(v37, v42);
  v48 = v76;
  v47 = v77;
  type metadata accessor for FormatIssueCoverNode();
  v70 = v74;
  v68 = v75;
  v15 = swift_allocObject();
  swift_beginAccess();
  v49 = v65;
  *(v15 + 16) = v62;
  *(v15 + 24) = v49;
  v50 = v64;
  *(v15 + 32) = v63;
  *(v15 + 40) = v50;
  swift_beginAccess();
  v51 = v78;
  *(v15 + 48) = v69;
  *(v15 + 56) = v51;
  v52 = v60;
  *(v15 + 64) = v61;
  *(v15 + 72) = v52;
  swift_beginAccess();
  *(v15 + 80) = v58;
  swift_beginAccess();
  *(v15 + 88) = v40;
  swift_beginAccess();
  *(v15 + 96) = v56;
  *(v15 + 104) = v55;
  *(v15 + 112) = v54;
  swift_beginAccess();
  *(v15 + 120) = v45;
  *(v15 + 128) = v46;
  *(v15 + 152) = v68;
  *(v15 + 136) = v70;
  *(v15 + 168) = v48;
  *(v15 + 176) = v47;
  __swift_destroy_boxed_opaque_existential_1(v59);
  return v15;
}

void sub_1D665D5DC()
{
  if (!qword_1EDF08D00)
  {
    sub_1D5E1C544(255);
    sub_1D5B58B84(&qword_1EDF033E8, sub_1D5E1C544);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D00);
    }
  }
}

unint64_t sub_1D665D700()
{
  result = qword_1EDF0D490;
  if (!qword_1EDF0D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D490);
  }

  return result;
}

void sub_1D665D754()
{
  if (!qword_1EC8860E0)
  {
    sub_1D665D7E8();
    sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8860E0);
    }
  }
}

void sub_1D665D7E8()
{
  if (!qword_1EC8860E8)
  {
    sub_1D665D86C();
    sub_1D665D8C0();
    sub_1D665D914();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8860E8);
    }
  }
}

unint64_t sub_1D665D86C()
{
  result = qword_1EC8860F0;
  if (!qword_1EC8860F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860F0);
  }

  return result;
}

unint64_t sub_1D665D8C0()
{
  result = qword_1EC8860F8;
  if (!qword_1EC8860F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8860F8);
  }

  return result;
}

unint64_t sub_1D665D914()
{
  result = qword_1EC886100;
  if (!qword_1EC886100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886100);
  }

  return result;
}

void sub_1D665D968()
{
  if (!qword_1EC886110)
  {
    sub_1D665D9FC();
    sub_1D5B58B84(&qword_1EC886120, sub_1D665D9FC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886110);
    }
  }
}

void sub_1D665D9FC()
{
  if (!qword_1EC886118)
  {
    sub_1D665D7E8();
    sub_1D5B58B84(&qword_1EC886108, sub_1D665D7E8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886118);
    }
  }
}

void sub_1D665DB0C()
{
  if (!qword_1EDF19EE0)
  {
    sub_1D665DBA0();
    sub_1D5B58B84(&qword_1EDF24FA8, sub_1D665DBA0);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19EE0);
    }
  }
}

void sub_1D665DBA0()
{
  if (!qword_1EDF24FA0)
  {
    sub_1D665DC24();
    sub_1D665DC78();
    sub_1D665DCCC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24FA0);
    }
  }
}

unint64_t sub_1D665DC24()
{
  result = qword_1EDF23190;
  if (!qword_1EDF23190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23190);
  }

  return result;
}

unint64_t sub_1D665DC78()
{
  result = qword_1EDF23198;
  if (!qword_1EDF23198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF23198);
  }

  return result;
}

unint64_t sub_1D665DCCC()
{
  result = qword_1EDF231A0;
  if (!qword_1EDF231A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF231A0);
  }

  return result;
}

void sub_1D665DD20()
{
  if (!qword_1EDF08AA0)
  {
    sub_1D665DDB4();
    sub_1D5B58B84(&qword_1EDF02F28, sub_1D665DDB4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08AA0);
    }
  }
}

void sub_1D665DDB4()
{
  if (!qword_1EDF02F20)
  {
    sub_1D665DBA0();
    sub_1D5B58B84(&qword_1EDF24FA8, sub_1D665DBA0);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02F20);
    }
  }
}

unint64_t sub_1D665DEC4()
{
  result = qword_1EDF304B8;
  if (!qword_1EDF304B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF304B8);
  }

  return result;
}

unint64_t sub_1D665DF18()
{
  result = qword_1EDF233B8;
  if (!qword_1EDF233B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF233B8);
  }

  return result;
}

void sub_1D665DF6C()
{
  if (!qword_1EDF08CE8)
  {
    sub_1D665E000();
    sub_1D5B58B84(&qword_1EDF033B8, sub_1D665E000);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CE8);
    }
  }
}

void sub_1D665E000()
{
  if (!qword_1EDF033B0)
  {
    sub_1D5C6BA68();
    sub_1D5B58B84(&qword_1EDF25398, sub_1D5C6BA68);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF033B0);
    }
  }
}

void sub_1D665E128()
{
  if (!qword_1EDF19DE0)
  {
    sub_1D665E1BC();
    sub_1D5B58B84(&qword_1EDF24DA8, sub_1D665E1BC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19DE0);
    }
  }
}

void sub_1D665E1BC()
{
  if (!qword_1EDF24DA0)
  {
    sub_1D665E240();
    sub_1D665E294();
    sub_1D665E2E8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24DA0);
    }
  }
}

unint64_t sub_1D665E240()
{
  result = qword_1EDF1DF30;
  if (!qword_1EDF1DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF30);
  }

  return result;
}

unint64_t sub_1D665E294()
{
  result = qword_1EDF1DF38;
  if (!qword_1EDF1DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF38);
  }

  return result;
}

unint64_t sub_1D665E2E8()
{
  result = qword_1EDF1DF40;
  if (!qword_1EDF1DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1DF40);
  }

  return result;
}

unint64_t sub_1D665E33C()
{
  result = qword_1EDF1EEB8;
  if (!qword_1EDF1EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EEB8);
  }

  return result;
}

void sub_1D665E390()
{
  if (!qword_1EDF08960)
  {
    sub_1D665E424();
    sub_1D5B58B84(&qword_1EDF02CA8, sub_1D665E424);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08960);
    }
  }
}

void sub_1D665E424()
{
  if (!qword_1EDF02CA0)
  {
    sub_1D665E1BC();
    sub_1D5B58B84(&qword_1EDF24DA8, sub_1D665E1BC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02CA0);
    }
  }
}

unint64_t sub_1D665E4B8()
{
  result = qword_1EDF08178;
  if (!qword_1EDF08178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF08178);
  }

  return result;
}

void sub_1D665E570()
{
  if (!qword_1EDF08E38)
  {
    sub_1D665E604();
    sub_1D5B58B84(&qword_1EDF03658, sub_1D665E604);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08E38);
    }
  }
}

void sub_1D665E604()
{
  if (!qword_1EDF03650)
  {
    sub_1D5C9420C();
    sub_1D5B58B84(&qword_1EDF255F8, sub_1D5C9420C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03650);
    }
  }
}

unint64_t sub_1D665E714()
{
  result = qword_1EDF101A8;
  if (!qword_1EDF101A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF101A8);
  }

  return result;
}

void sub_1D665E768()
{
  if (!qword_1EDF1A058)
  {
    sub_1D665E7FC();
    sub_1D5B58B84(&qword_1EDF25298, sub_1D665E7FC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A058);
    }
  }
}

void sub_1D665E7FC()
{
  if (!qword_1EDF25290)
  {
    sub_1D665E880();
    sub_1D665E8D4();
    sub_1D665E928();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25290);
    }
  }
}

unint64_t sub_1D665E880()
{
  result = qword_1EDF29118;
  if (!qword_1EDF29118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29118);
  }

  return result;
}

unint64_t sub_1D665E8D4()
{
  result = qword_1EDF29120;
  if (!qword_1EDF29120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29120);
  }

  return result;
}

unint64_t sub_1D665E928()
{
  result = qword_1EDF29128;
  if (!qword_1EDF29128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29128);
  }

  return result;
}

void sub_1D665E97C()
{
  if (!qword_1EDF08C40)
  {
    sub_1D665EA10();
    sub_1D5B58B84(&qword_1EDF03268, sub_1D665EA10);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08C40);
    }
  }
}

void sub_1D665EA10()
{
  if (!qword_1EDF03260)
  {
    sub_1D665E7FC();
    sub_1D5B58B84(&qword_1EDF25298, sub_1D665E7FC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03260);
    }
  }
}

unint64_t sub_1D665EB20()
{
  result = qword_1EDF0D9E0;
  if (!qword_1EDF0D9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9E0);
  }

  return result;
}

unint64_t sub_1D665EB74()
{
  result = qword_1EC886130;
  if (!qword_1EC886130)
  {
    sub_1D5C30060(255, &qword_1EC886128, sub_1D5FB9D00, &type metadata for FormatSymbolImageColor, type metadata accessor for FormatSelectorValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886130);
  }

  return result;
}

void sub_1D665EC04()
{
  if (!qword_1EDF08C90)
  {
    sub_1D665EC98();
    sub_1D5B58B84(&qword_1EDF03308, sub_1D665EC98);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08C90);
    }
  }
}

void sub_1D665EC98()
{
  if (!qword_1EDF03300)
  {
    sub_1D5C4FF14();
    sub_1D5B58B84(&qword_1EDF252F8, sub_1D5C4FF14);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03300);
    }
  }
}

void sub_1D665EDA8()
{
  if (!qword_1EDF08C98)
  {
    sub_1D665EE3C();
    sub_1D5B58B84(&qword_1EDF03318, sub_1D665EE3C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08C98);
    }
  }
}

void sub_1D665EE3C()
{
  if (!qword_1EDF03310)
  {
    sub_1D5C50108();
    sub_1D5B58B84(&qword_1EDF25308, sub_1D5C50108);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03310);
    }
  }
}

void sub_1D665EF34()
{
  if (!qword_1EDF08CA0)
  {
    sub_1D665EFC8();
    sub_1D5B58B84(&qword_1EDF03328, sub_1D665EFC8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CA0);
    }
  }
}

void sub_1D665EFC8()
{
  if (!qword_1EDF03320)
  {
    sub_1D5C7CB68();
    sub_1D5B58B84(&qword_1EDF25318, sub_1D5C7CB68);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03320);
    }
  }
}

void sub_1D665F0D8()
{
  if (!qword_1EDF08CA8)
  {
    sub_1D665F16C();
    sub_1D5B58B84(&qword_1EDF03338, sub_1D665F16C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08CA8);
    }
  }
}

void sub_1D665F16C()
{
  if (!qword_1EDF03330)
  {
    sub_1D5C4F794();
    sub_1D5B58B84(&qword_1EDF25328, sub_1D5C4F794);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03330);
    }
  }
}

uint64_t sub_1D665F27C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C30060(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_1D665F2F0()
{
  result = qword_1EDF04BC0;
  if (!qword_1EDF04BC0)
  {
    sub_1D5B5BF78(255, &qword_1EDF1AFD8, type metadata accessor for FormatCompilerSlotDefinition, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF44528, type metadata accessor for FormatCompilerSlotDefinition);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04BC0);
  }

  return result;
}

unint64_t sub_1D665F3C8()
{
  result = qword_1EDF04DD8;
  if (!qword_1EDF04DD8)
  {
    sub_1D5B5BF78(255, &qword_1EDF1B098, type metadata accessor for FormatCompilerProperty, MEMORY[0x1E69E62F8]);
    sub_1D5B58B84(&qword_1EDF44BF8, type metadata accessor for FormatCompilerProperty);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04DD8);
  }

  return result;
}

unint64_t sub_1D665F4A0()
{
  result = qword_1EDF2FBD0;
  if (!qword_1EDF2FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2FBD0);
  }

  return result;
}

uint64_t sub_1D665F4F4(void *a1)
{
  v2 = v1;
  sub_1D670570C();
  v5 = v4;
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D665FA88();
  sub_1D5B58B84(&qword_1EC886168, sub_1D665FA88);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1D7264AFC();
  v10 = Dictionary<>.errorOnUnknownKeys.getter(v9);

  v11 = v51;
  if (v10)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v19 = *(v14 - 2);
      v18 = *(v14 - 1);

      v20 = sub_1D6614500();
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20;
      *(v21 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v11 + 8))(v8, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  v15 = sub_1D5C31D18(v8, 0, 0, 0, sub_1D670570C);
  v17 = v16;
  v34 = v15;
  v44 = xmmword_1D728CF30;
  LOBYTE(v45) = 0;
  v33 = sub_1D72642FC();
  v44 = xmmword_1D7297410;
  LOBYTE(v45) = 0;
  v32 = sub_1D72642FC();
  v44 = xmmword_1D72BAA60;
  LOBYTE(v45) = 0;
  v30 = sub_1D72642BC();
  v31 = v23;
  v42 = xmmword_1D72BAA70;
  v43 = 0;
  sub_1D5C91044();
  sub_1D726431C();
  (*(v11 + 8))(v8, v5);
  v39 = v48;
  v40 = v49;
  v41 = v50;
  v35 = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  type metadata accessor for FormatBreakpointNode();
  v5 = swift_allocObject();
  swift_beginAccess();
  v24 = v33;
  *(v5 + 16) = v34;
  *(v5 + 24) = v17;
  v25 = v32;
  *(v5 + 32) = v24;
  *(v5 + 40) = v25;
  v26 = v31;
  *(v5 + 48) = v30;
  *(v5 + 56) = v26;
  v27 = v40;
  *(v5 + 128) = v39;
  *(v5 + 144) = v27;
  *(v5 + 160) = v41;
  v28 = v36;
  *(v5 + 64) = v35;
  *(v5 + 80) = v28;
  v29 = v38;
  *(v5 + 96) = v37;
  *(v5 + 112) = v29;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D665F960()
{
  if (!qword_1EC886138)
  {
    sub_1D665F9F4();
    sub_1D5B58B84(&qword_1EC886170, sub_1D665F9F4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886138);
    }
  }
}

void sub_1D665F9F4()
{
  if (!qword_1EC886140)
  {
    sub_1D665FA88();
    sub_1D5B58B84(&qword_1EC886168, sub_1D665FA88);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886140);
    }
  }
}

void sub_1D665FA88()
{
  if (!qword_1EC886148)
  {
    sub_1D665FB0C();
    sub_1D665FB60();
    sub_1D665FBB4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886148);
    }
  }
}

unint64_t sub_1D665FB0C()
{
  result = qword_1EC886150;
  if (!qword_1EC886150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886150);
  }

  return result;
}

unint64_t sub_1D665FB60()
{
  result = qword_1EC886158;
  if (!qword_1EC886158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886158);
  }

  return result;
}

unint64_t sub_1D665FBB4()
{
  result = qword_1EC886160;
  if (!qword_1EC886160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886160);
  }

  return result;
}

unint64_t sub_1D665FC84()
{
  result = qword_1EDF2C130;
  if (!qword_1EDF2C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C130);
  }

  return result;
}

unint64_t sub_1D665FCD8()
{
  result = qword_1EDF2AD90;
  if (!qword_1EDF2AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2AD90);
  }

  return result;
}

unint64_t sub_1D665FD2C()
{
  result = qword_1EC886178;
  if (!qword_1EC886178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886178);
  }

  return result;
}

unint64_t sub_1D665FD80()
{
  result = qword_1EC886180;
  if (!qword_1EC886180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886180);
  }

  return result;
}

unint64_t sub_1D665FDD4()
{
  result = qword_1EDF0A8A8;
  if (!qword_1EDF0A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A8A8);
  }

  return result;
}

unint64_t sub_1D665FE28()
{
  result = qword_1EDF27088;
  if (!qword_1EDF27088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF27088);
  }

  return result;
}

unint64_t sub_1D665FE7C()
{
  result = qword_1EDF2C190;
  if (!qword_1EDF2C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C190);
  }

  return result;
}

unint64_t sub_1D665FED0()
{
  result = qword_1EDF0DE18;
  if (!qword_1EDF0DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DE18);
  }

  return result;
}

unint64_t sub_1D665FF24()
{
  result = qword_1EDF0D628;
  if (!qword_1EDF0D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D628);
  }

  return result;
}

void sub_1D665FF78()
{
  if (!qword_1EDF03DF8)
  {
    sub_1D666000C();
    sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03DF8);
    }
  }
}

void sub_1D666000C()
{
  if (!qword_1EDF0C5C8)
  {
    sub_1D6660090();
    sub_1D66600E4();
    sub_1D6660138();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0C5C8);
    }
  }
}

unint64_t sub_1D6660090()
{
  result = qword_1EDF111B0;
  if (!qword_1EDF111B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111B0);
  }

  return result;
}

unint64_t sub_1D66600E4()
{
  result = qword_1EDF111B8;
  if (!qword_1EDF111B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111B8);
  }

  return result;
}

unint64_t sub_1D6660138()
{
  result = qword_1EDF111C0;
  if (!qword_1EDF111C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF111C0);
  }

  return result;
}

void sub_1D666018C()
{
  if (!qword_1EDF08EA8)
  {
    sub_1D6660220();
    sub_1D5B58B84(&qword_1EDF03738, sub_1D6660220);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08EA8);
    }
  }
}

void sub_1D6660220()
{
  if (!qword_1EDF03730)
  {
    sub_1D666000C();
    sub_1D5B58B84(&qword_1EDF0C5D0, sub_1D666000C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03730);
    }
  }
}

unint64_t sub_1D6660330()
{
  result = qword_1EDF0EFD8;
  if (!qword_1EDF0EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EFD8);
  }

  return result;
}

unint64_t sub_1D6660384()
{
  result = qword_1EC886188;
  if (!qword_1EC886188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886188);
  }

  return result;
}

uint64_t sub_1D66603D8(void *a1)
{
  sub_1D5C2E60C(0, &qword_1EDF3BCD0, sub_1D600FE24, sub_1D600FE78);
  v55 = *(v2 - 8);
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v47 - v4;
  sub_1D67053A0();
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6660FA0();
  sub_1D5B58B84(&qword_1EDF253E8, sub_1D6660FA0);
  v11 = v96;
  sub_1D7264B0C();
  v12 = v11;
  if (v11)
  {
LABEL_14:
    sub_1D61E4FBC(a1, v12);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v7;
  }

  v96 = v5;
  v13 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1D7264AFC();
  v15 = Dictionary<>.errorOnUnknownKeys.getter(v14);

  if (v15)
  {
    v16 = sub_1D726433C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = (v16 + 48);
      while (*v18 != 1)
      {
        v18 += 24;
        if (!--v17)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v18 - 2);
      v23 = *(v18 - 1);

      v25 = sub_1D661487C();
      sub_1D5E2D970();
      v12 = swift_allocError();
      *v26 = v24;
      *(v26 + 8) = v23;
      *(v26 + 16) = v25;
      *(v26 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v57 + 8))(v10, v7);
      goto LABEL_14;
    }

LABEL_7:
  }

  v19 = a1;
  v20 = sub_1D5C31D18(v10, 0, 0, 0, sub_1D67053A0);
  v54 = v21;
  v71 = xmmword_1D728CF30;
  LOBYTE(v72) = 0;
  v22 = v7;
  v51 = sub_1D72642BC();
  v53 = v27;
  v52 = xmmword_1D7297410;
  v71 = xmmword_1D7297410;
  LOBYTE(v72) = 0;
  v28 = sub_1D726434C();
  v29 = v57;
  if (v28)
  {
    v58 = v52;
    LOBYTE(v59) = 0;
    sub_1D6705434();
    v30 = v96;
    sub_1D726431C();
    *&v52 = sub_1D725A74C();
    (*(v55 + 8))(v30, v13);
    v29 = v57;
  }

  else
  {
    *&v52 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
  v71 = xmmword_1D72BAA60;
  LOBYTE(v72) = 0;
  sub_1D5C35368();
  sub_1D726427C();
  v32 = v58;
  sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
  v71 = xmmword_1D72BAA70;
  LOBYTE(v72) = 0;
  sub_1D5C34DD4();
  sub_1D726427C();
  v96 = v32;
  v33 = v58;
  v58 = xmmword_1D72BAA80;
  LOBYTE(v59) = 0;
  sub_1D5C8C780();
  sub_1D726427C();
  v55 = *(&v71 + 1);
  v50 = v71;
  LODWORD(v56) = v72;
  v88 = xmmword_1D72BAA90;
  v89 = 0;
  sub_1D5C34EC4();
  sub_1D726427C();
  v84 = v92;
  v85 = v93;
  v86 = v94;
  v87 = v95;
  v82 = v90;
  v83 = v91;
  v71 = xmmword_1D72BAAA0;
  LOBYTE(v72) = 0;
  v34 = sub_1D726423C();
  v49 = v33;
  v35 = v52;
  v48 = v34;
  v71 = xmmword_1D72BAAB0;
  LOBYTE(v72) = 0;
  v47 = sub_1D726423C();
  v69 = xmmword_1D72BAAC0;
  v70 = 0;
  sub_1D6661658();
  sub_1D726427C();
  (*(v29 + 8))(v10, v22);
  v66 = v79;
  v67 = v80;
  v68 = v81;
  v62 = v75;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  v58 = v71;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  type metadata accessor for FormatGroupNodeStyle();
  v7 = swift_allocObject();
  swift_beginAccess();
  v36 = v54;
  *(v7 + 16) = v20;
  *(v7 + 24) = v36;
  v37 = v53;
  *(v7 + 32) = v51;
  *(v7 + 40) = v37;
  swift_beginAccess();
  v38 = v67;
  *(v7 + 312) = v66;
  *(v7 + 328) = v38;
  v39 = v65;
  *(v7 + 280) = v64;
  *(v7 + 296) = v39;
  v40 = v62;
  *(v7 + 264) = v63;
  v41 = v85;
  *(v7 + 128) = v84;
  *(v7 + 144) = v41;
  *(v7 + 160) = v86;
  v42 = v83;
  *(v7 + 96) = v82;
  *(v7 + 112) = v42;
  *(v7 + 248) = v40;
  v43 = v60;
  *(v7 + 232) = v61;
  *(v7 + 216) = v43;
  v44 = v58;
  *(v7 + 200) = v59;
  v45 = v96;
  *(v7 + 48) = v35;
  *(v7 + 56) = v45;
  v46 = v50;
  *(v7 + 64) = v49;
  *(v7 + 72) = v46;
  *(v7 + 80) = v55;
  *(v7 + 88) = v56;
  *(v7 + 176) = v87;
  LOBYTE(v46) = v47;
  *(v7 + 177) = v48;
  *(v7 + 178) = v46;
  *(v7 + 344) = v68;
  *(v7 + 184) = v44;
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v7;
}

void sub_1D6660E78()
{
  if (!qword_1EDF08D18)
  {
    sub_1D6660F0C();
    sub_1D5B58B84(&qword_1EDF03418, sub_1D6660F0C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D18);
    }
  }
}

void sub_1D6660F0C()
{
  if (!qword_1EDF03410)
  {
    sub_1D6660FA0();
    sub_1D5B58B84(&qword_1EDF253E8, sub_1D6660FA0);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03410);
    }
  }
}

void sub_1D6660FA0()
{
  if (!qword_1EDF253E0)
  {
    sub_1D6661024();
    sub_1D6661078();
    sub_1D66610CC();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF253E0);
    }
  }
}

unint64_t sub_1D6661024()
{
  result = qword_1EDF2B268;
  if (!qword_1EDF2B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B268);
  }

  return result;
}

unint64_t sub_1D6661078()
{
  result = qword_1EDF2B270;
  if (!qword_1EDF2B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B270);
  }

  return result;
}

unint64_t sub_1D66610CC()
{
  result = qword_1EDF2B278;
  if (!qword_1EDF2B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B278);
  }

  return result;
}

unint64_t sub_1D66611B0()
{
  result = qword_1EDF10090;
  if (!qword_1EDF10090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10090);
  }

  return result;
}

unint64_t sub_1D6661204()
{
  result = qword_1EDF12208;
  if (!qword_1EDF12208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12208);
  }

  return result;
}

unint64_t sub_1D6661258()
{
  result = qword_1EDF10638;
  if (!qword_1EDF10638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10638);
  }

  return result;
}

unint64_t sub_1D66612AC()
{
  result = qword_1EDF05148;
  if (!qword_1EDF05148)
  {
    sub_1D5C34D84(255, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
    sub_1D618221C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF05148);
  }

  return result;
}

unint64_t sub_1D6661348()
{
  result = qword_1EC886198;
  if (!qword_1EC886198)
  {
    sub_1D5C34D84(255, &qword_1EC886190, &type metadata for FormatGroupNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D600FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886198);
  }

  return result;
}

void sub_1D66613E4()
{
  if (!qword_1EC8861A0)
  {
    sub_1D6661478();
    sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861A0);
    }
  }
}

void sub_1D6661478()
{
  if (!qword_1EC8861A8)
  {
    sub_1D66614FC();
    sub_1D6661550();
    sub_1D66615A4();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861A8);
    }
  }
}

unint64_t sub_1D66614FC()
{
  result = qword_1EC8861B0;
  if (!qword_1EC8861B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8861B0);
  }

  return result;
}

unint64_t sub_1D6661550()
{
  result = qword_1EC8861B8;
  if (!qword_1EC8861B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8861B8);
  }

  return result;
}

unint64_t sub_1D66615A4()
{
  result = qword_1EC8861C0;
  if (!qword_1EC8861C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8861C0);
  }

  return result;
}

uint64_t sub_1D66615F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_1D6661658()
{
  result = qword_1EDF2D868;
  if (!qword_1EDF2D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2D868);
  }

  return result;
}

void sub_1D66616AC()
{
  if (!qword_1EC8861D0)
  {
    sub_1D6661740();
    sub_1D5B58B84(&qword_1EC8861E0, sub_1D6661740);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861D0);
    }
  }
}

void sub_1D6661740()
{
  if (!qword_1EC8861D8)
  {
    sub_1D6661478();
    sub_1D5B58B84(&qword_1EC8861C8, sub_1D6661478);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861D8);
    }
  }
}

unint64_t sub_1D6661864()
{
  result = qword_1EDF3BD10;
  if (!qword_1EDF3BD10)
  {
    sub_1D5C2E60C(255, &qword_1EDF3BD08, sub_1D5B57DEC, sub_1D5B56404);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3BD10);
  }

  return result;
}

void sub_1D66618F4()
{
  if (!qword_1EDF08A38)
  {
    sub_1D6661988();
    sub_1D5B58B84(&qword_1EDF02E58, sub_1D6661988);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08A38);
    }
  }
}

void sub_1D6661988()
{
  if (!qword_1EDF02E50)
  {
    sub_1D5CB2A80();
    sub_1D5B58B84(&qword_1EDF24EF8, sub_1D5CB2A80);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02E50);
    }
  }
}

unint64_t sub_1D6661AAC()
{
  result = qword_1EDF04F18;
  if (!qword_1EDF04F18)
  {
    sub_1D5C34D84(255, &qword_1EDF3C8E0, &type metadata for FormatSlotTransform, MEMORY[0x1E69E62F8]);
    sub_1D5B56404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04F18);
  }

  return result;
}

unint64_t sub_1D6661B48()
{
  result = qword_1EDF32900;
  if (!qword_1EDF32900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32900);
  }

  return result;
}

unint64_t sub_1D6661B9C()
{
  result = qword_1EDF29928;
  if (!qword_1EDF29928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29928);
  }

  return result;
}

uint64_t objectdestroy_1104Tm(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

void sub_1D6661C38()
{
  if (!qword_1EDF1A110)
  {
    sub_1D6661CCC();
    sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A110);
    }
  }
}

void sub_1D6661CCC()
{
  if (!qword_1EDF25400)
  {
    sub_1D6661D50();
    sub_1D6661DA4();
    sub_1D6661DF8();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF25400);
    }
  }
}

unint64_t sub_1D6661D50()
{
  result = qword_1EDF2B370;
  if (!qword_1EDF2B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B370);
  }

  return result;
}

unint64_t sub_1D6661DA4()
{
  result = qword_1EDF2B378;
  if (!qword_1EDF2B378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B378);
  }

  return result;
}

unint64_t sub_1D6661DF8()
{
  result = qword_1EDF2B380;
  if (!qword_1EDF2B380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B380);
  }

  return result;
}

void sub_1D6661E4C()
{
  if (!qword_1EDF08D30)
  {
    sub_1D6661EE0();
    sub_1D5B58B84(&qword_1EDF03448, sub_1D6661EE0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D30);
    }
  }
}

void sub_1D6661EE0()
{
  if (!qword_1EDF03440)
  {
    sub_1D6661CCC();
    sub_1D5B58B84(&qword_1EDF25408, sub_1D6661CCC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03440);
    }
  }
}

void sub_1D6661FF0()
{
  if (!qword_1EDF08BE8)
  {
    sub_1D6662084();
    sub_1D5B58B84(&qword_1EDF031B8, sub_1D6662084);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08BE8);
    }
  }
}

void sub_1D6662084()
{
  if (!qword_1EDF031B0)
  {
    sub_1D5C66670();
    sub_1D5B58B84(&qword_1EDF251F8, sub_1D5C66670);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF031B0);
    }
  }
}

unint64_t sub_1D6662194()
{
  result = qword_1EDF0B0A0;
  if (!qword_1EDF0B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B0A0);
  }

  return result;
}

unint64_t sub_1D66621E8()
{
  result = qword_1EDF0B730;
  if (!qword_1EDF0B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B730);
  }

  return result;
}

uint64_t sub_1D666223C(void *a1)
{
  v2 = v1;
  sub_1D6705290();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D666274C();
  sub_1D5B58B84(&qword_1EC886218, sub_1D666274C);
  sub_1D7264B0C();
  if (v1)
  {
LABEL_10:
    sub_1D61E4FBC(a1, v2);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v5;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1D7264AFC();
  v11 = Dictionary<>.errorOnUnknownKeys.getter(v10);

  if (v11)
  {
    v12 = sub_1D726433C();
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 48);
      while (*v14 != 1)
      {
        v14 += 24;
        if (!--v13)
        {
          goto LABEL_7;
        }
      }

      v17 = *(v14 - 2);
      v16 = *(v14 - 1);

      v18 = sub_1D6627E68(0x6F6974616D696E61, 0xEA0000000000736ELL, 0x6D6954616964656DLL, 0xEB00000000676E69);
      sub_1D5E2D970();
      v2 = swift_allocError();
      *v19 = v17;
      *(v19 + 8) = v16;
      *(v19 + 16) = v18;
      *(v19 + 24) = xmmword_1D72874E0;
      swift_willThrow();
      (*(v6 + 8))(v9, v5);
      goto LABEL_10;
    }

LABEL_7:
  }

  sub_1D5C34D84(0, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
  sub_1D667443C();
  v27 = 0uLL;
  LOBYTE(v28) = 0;
  sub_1D726431C();
  v15 = v25;
  v25 = xmmword_1D728CF30;
  v26 = 0;
  sub_1D66A0918();
  sub_1D726427C();
  (*(v6 + 8))(v9, v5);
  type metadata accessor for FormatAnimationNodeGroupAnimation();
  v5 = swift_allocObject();
  v21 = v31;
  *(v5 + 104) = v32;
  v22 = v34[0];
  *(v5 + 120) = v33;
  *(v5 + 136) = v22;
  *(v5 + 145) = *(v34 + 9);
  v23 = v27;
  *(v5 + 40) = v28;
  v24 = v30;
  *(v5 + 56) = v29;
  *(v5 + 72) = v24;
  *(v5 + 88) = v21;
  *(v5 + 16) = v15;
  *(v5 + 24) = v23;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v5;
}

void sub_1D6662624()
{
  if (!qword_1EC8861E8)
  {
    sub_1D66626B8();
    sub_1D5B58B84(&qword_1EC886220, sub_1D66626B8);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861E8);
    }
  }
}

void sub_1D66626B8()
{
  if (!qword_1EC8861F0)
  {
    sub_1D666274C();
    sub_1D5B58B84(&qword_1EC886218, sub_1D666274C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861F0);
    }
  }
}

void sub_1D666274C()
{
  if (!qword_1EC8861F8)
  {
    sub_1D66627D0();
    sub_1D6662824();
    sub_1D6662878();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8861F8);
    }
  }
}

unint64_t sub_1D66627D0()
{
  result = qword_1EC886200;
  if (!qword_1EC886200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886200);
  }

  return result;
}

unint64_t sub_1D6662824()
{
  result = qword_1EC886208;
  if (!qword_1EC886208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886208);
  }

  return result;
}

unint64_t sub_1D6662878()
{
  result = qword_1EC886210;
  if (!qword_1EC886210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886210);
  }

  return result;
}

unint64_t sub_1D66628CC()
{
  result = qword_1EDF052E8;
  if (!qword_1EDF052E8)
  {
    sub_1D5C34D84(255, &qword_1EDF052F0, &type metadata for FormatAnimationNodeAnimation, MEMORY[0x1E69E62F8]);
    sub_1D6662968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF052E8);
  }

  return result;
}

unint64_t sub_1D6662968()
{
  result = qword_1EDF16460;
  if (!qword_1EDF16460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF16460);
  }

  return result;
}

unint64_t sub_1D6662A38()
{
  result = qword_1EDF10C00;
  if (!qword_1EDF10C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10C00);
  }

  return result;
}

void sub_1D6662A8C()
{
  if (!qword_1EDF08C08)
  {
    sub_1D6662B20();
    sub_1D5B58B84(&qword_1EDF031F8, sub_1D6662B20);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08C08);
    }
  }
}

void sub_1D6662B20()
{
  if (!qword_1EDF031F0)
  {
    sub_1D5C60A9C();
    sub_1D5B58B84(&qword_1EDF25238, sub_1D5C60A9C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF031F0);
    }
  }
}

unint64_t sub_1D6662C30()
{
  result = qword_1EDF11300;
  if (!qword_1EDF11300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11300);
  }

  return result;
}

unint64_t sub_1D6662C84()
{
  result = qword_1EDF0B558;
  if (!qword_1EDF0B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0B558);
  }

  return result;
}

unint64_t sub_1D6662CD8()
{
  result = qword_1EC886228;
  if (!qword_1EC886228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886228);
  }

  return result;
}

unint64_t sub_1D6662D2C()
{
  result = qword_1EDF07E58;
  if (!qword_1EDF07E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF07E58);
  }

  return result;
}

unint64_t sub_1D6662D80()
{
  result = qword_1EDF0EAA8;
  if (!qword_1EDF0EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EAA8);
  }

  return result;
}

void sub_1D6662DD4()
{
  if (!qword_1EDF19E28)
  {
    sub_1D6662E68();
    sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF19E28);
    }
  }
}

void sub_1D6662E68()
{
  if (!qword_1EDF24E30)
  {
    sub_1D6662EEC();
    sub_1D6662F40();
    sub_1D6662F94();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF24E30);
    }
  }
}

unint64_t sub_1D6662EEC()
{
  result = qword_1EDF1EFA0;
  if (!qword_1EDF1EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EFA0);
  }

  return result;
}

unint64_t sub_1D6662F40()
{
  result = qword_1EDF1EFA8;
  if (!qword_1EDF1EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EFA8);
  }

  return result;
}

unint64_t sub_1D6662F94()
{
  result = qword_1EDF1EFB0;
  if (!qword_1EDF1EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1EFB0);
  }

  return result;
}

void sub_1D6662FE8()
{
  if (!qword_1EDF089C0)
  {
    sub_1D666307C();
    sub_1D5B58B84(&qword_1EDF02D68, sub_1D666307C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF089C0);
    }
  }
}

void sub_1D666307C()
{
  if (!qword_1EDF02D60)
  {
    sub_1D6662E68();
    sub_1D5B58B84(&qword_1EDF24E38, sub_1D6662E68);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02D60);
    }
  }
}

void sub_1D666318C()
{
  if (!qword_1EC886230)
  {
    sub_1D6663220();
    sub_1D5B58B84(&qword_1EC886258, sub_1D6663220);
    v0 = sub_1D726435C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886230);
    }
  }
}

void sub_1D6663220()
{
  if (!qword_1EC886238)
  {
    sub_1D66632A4();
    sub_1D66632F8();
    sub_1D666334C();
    v0 = type metadata accessor for FormatCodingKeysContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886238);
    }
  }
}

unint64_t sub_1D66632A4()
{
  result = qword_1EC886240;
  if (!qword_1EC886240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886240);
  }

  return result;
}

unint64_t sub_1D66632F8()
{
  result = qword_1EC886248;
  if (!qword_1EC886248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886248);
  }

  return result;
}

unint64_t sub_1D666334C()
{
  result = qword_1EC886250;
  if (!qword_1EC886250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC886250);
  }

  return result;
}

void sub_1D66633A0()
{
  if (!qword_1EC886268)
  {
    sub_1D6663434();
    sub_1D5B58B84(&qword_1EC886278, sub_1D6663434);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886268);
    }
  }
}

void sub_1D6663434()
{
  if (!qword_1EC886270)
  {
    sub_1D6663220();
    sub_1D5B58B84(&qword_1EC886258, sub_1D6663220);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC886270);
    }
  }
}

uint64_t sub_1D6663544()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663590()
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

uint64_t sub_1D66635DC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663628()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663674()
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

uint64_t sub_1D66636C0()
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

uint64_t sub_1D666370C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663758()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66637A4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66637F0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D666383C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663888()
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

uint64_t sub_1D66638D4()
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

uint64_t sub_1D6663920()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D666396C()
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

uint64_t sub_1D66639B8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663A04()
{
  v0 = sub_1D72641CC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663A50()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663A9C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663AE8()
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

uint64_t sub_1D6663B34()
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

uint64_t sub_1D6663B80()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663BCC()
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

uint64_t sub_1D6663C18()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663C64()
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

uint64_t sub_1D6663CB0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663CFC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663D48()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663D94()
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

uint64_t sub_1D6663DE0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663E2C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663E78()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663EC4()
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

uint64_t sub_1D6663F10()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663F5C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663FA8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6663FF4()
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

uint64_t sub_1D6664040()
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

uint64_t sub_1D666408C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66640D8()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664124()
{
  v0 = sub_1D72641CC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664170()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66641BC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664208()
{
  v0 = sub_1D72641CC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664254()
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

uint64_t sub_1D66642A0()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D66642EC()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664338()
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

uint64_t sub_1D6664384()
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

uint64_t sub_1D66643D0()
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

uint64_t sub_1D666441C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664468()
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

uint64_t sub_1D66644B4()
{
  v0 = sub_1D72641CC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D6664500()
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

uint64_t sub_1D666454C()
{
  v0 = sub_1D72641CC();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}
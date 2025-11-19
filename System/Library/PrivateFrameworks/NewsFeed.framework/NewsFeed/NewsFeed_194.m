uint64_t sub_1D6D038E8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v90 = a5;
  v94 = a1;
  v95 = a3;
  v96 = type metadata accessor for FeedRecipe();
  v93 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v9);
  v89 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v86 - v13;
  sub_1D6D0A0C0(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v91 = (&v86 - v23);
  sub_1D5C144C0(0, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v86 - v30);
  sub_1D6D09F58(0);
  MEMORY[0x1EEE9AC00](a2, v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v33[2])
  {
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
LABEL_39:
    sub_1D6D0A444(v35, sub_1D6D09F58);
    v85 = 1;
    return (*(v93 + 56))(a6, v85, 1, v96);
  }

  v36 = v33[2];
  v37 = *v94;
  v87 = a6;
  v88 = v35;
  v86 = v18;
  if ((v37 & 1) != 0 || !a4)
  {
  }

  else
  {
    v38 = sub_1D62F1174(v33);
    v36 = *(v38 + 16);
  }

  v40 = (v21 + 56);
  v41 = (v21 + 48);
  v92 = v38;

  v43 = 0;
  while (1)
  {
    if (v43 == v36)
    {
      v44 = 1;
      v43 = v36;
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      if (v43 >= *(v92 + 16))
      {
        goto LABEL_43;
      }

      v45 = v92 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v43;
      v46 = *(v20 + 48);
      v47 = v91;
      *v91 = v43;
      sub_1D6D09934(v45, v47 + v46, type metadata accessor for FeedRecipe);
      sub_1D6D0A3D8(v47, v27, &unk_1EDF04740, type metadata accessor for FeedRecipe);
      v44 = 0;
      ++v43;
    }

    (*v40)(v27, v44, 1, v20);
    sub_1D6D09B18(v27, v31, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
    if ((*v41)(v31, 1, v20) == 1)
    {
      break;
    }

    v48 = v36;
    v94 = *v31;
    sub_1D6D0A058(v31 + *(v20 + 48), v14, type metadata accessor for FeedRecipe);
    v49 = *(v14 + 7);
    v50 = [v49 thumbnailExtraLarge];
    if (v50 || (v50 = [v49 thumbnailLarge]) != 0 || (v50 = objc_msgSend(v49, sel_thumbnailMedium)) != 0 || (v50 = objc_msgSend(v49, sel_thumbnailSmall)) != 0)
    {
      v51 = v50;
      [v50 thumbnailSize];
      v53 = v52;
      v55 = v54;

      v56 = v53 / v55;
      v57 = 0x4000000000104;
      if (v53 / v55 > 0.9)
      {
        v58 = v56 > 1.1 || v56 <= 0.9;
        v59 = 256;
        if (!v58)
        {
          v59 = 768;
        }

        v57 = v59 + 0x4000000000104;
      }
    }

    else
    {
      v57 = 0x4000000000000;
    }

    v60 = &v14[*(v96 + 36)];
    if (*v60 - 1 >= 2)
    {
      v61 = v57;
    }

    else
    {
      v61 = v57 | 0x1000;
    }

    v62 = type metadata accessor for FeedRecipe.State();
    v63 = 0x80000000;
    if (!v60[*(v62 + 24)])
    {
      v63 = 0x100000000;
    }

    if ((v95 & ~(v63 | v61)) == 0)
    {
      v68 = v92;

      v97 = v68;
      v69 = v89;
      sub_1D5EC1EA0(v94, v89);
      sub_1D6D0A444(v14, type metadata accessor for FeedRecipe);
      sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
      v71 = v70;
      v72 = *(v70 + 48);
      v73 = v69;
      v35 = v88;
      sub_1D6D0A058(v73, v88, type metadata accessor for FeedRecipe);
      *&v35[v72] = v97;
      goto LABEL_38;
    }

    result = sub_1D6D0A444(v14, type metadata accessor for FeedRecipe);
    v36 = v48;
  }

  v64 = v92;

  if (v90)
  {

    sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    v66 = v86;
    (*(*(v65 - 8) + 56))(v86, 1, 1, v65);
    sub_1D6D0A444(v66, sub_1D6D0A0C0);
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    v35 = v88;
    (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
    a6 = v87;
    goto LABEL_39;
  }

  v74 = *(v64 + 16);
  v35 = v88;
  if (!v74)
  {
    goto LABEL_44;
  }

  v75 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v76 = v86;
  sub_1D6D09934(v64 + v75, v86, type metadata accessor for FeedRecipe);
  sub_1D5EC2E2C(v64, v64 + v75, 1, (2 * v74) | 1);
  v78 = v77;

  sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v80 = v79;
  *(v76 + *(v79 + 48)) = v78;
  (*(*(v79 - 8) + 56))(v76, 0, 1, v79);
  v81 = *(v76 + *(v80 + 48));
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v71 = v82;
  v83 = *(v82 + 48);
  sub_1D6D0A058(v76, v35, type metadata accessor for FeedRecipe);
  *&v35[v83] = v81;
LABEL_38:
  (*(*(v71 - 8) + 56))(v35, 0, 1, v71);
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v84 = (*(*(v71 - 8) + 48))(v35, 1, v71);
  a6 = v87;
  if (v84 == 1)
  {
    goto LABEL_39;
  }

  sub_1D6D0A058(v35, a6, type metadata accessor for FeedRecipe);
  v85 = 0;
  return (*(v93 + 56))(a6, v85, 1, v96);
}

uint64_t sub_1D6D04354@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v96 = a3;
  v97 = a1;
  v98 = type metadata accessor for FeedRecipe();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v9);
  v90 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v86 - v13;
  sub_1D6D0A0C0(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v92 = (&v86 - v23);
  sub_1D5C144C0(0, &qword_1EDF04738, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = (&v86 - v30);
  sub_1D6D09F58(0);
  MEMORY[0x1EEE9AC00](a2, v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v33[2];
  if (!v36)
  {
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
LABEL_39:
    sub_1D6D0A444(v35, sub_1D6D09F58);
    v85 = 1;
    return (*(v94 + 56))(a6, v85, 1, v98);
  }

  v37 = *v97;
  v88 = a6;
  v89 = v35;
  v87 = v18;
  if ((v37 & 1) != 0 || !a4)
  {
    v97 = v36;
  }

  else
  {
    v38 = sub_1D62F1174(v33);
    v97 = *(v38 + 16);
  }

  v96 |= 0x1000uLL;
  v40 = (v21 + 56);
  v41 = (v21 + 48);
  v93 = v38;

  v43 = 0;
  for (i = &unk_1EDF04740; ; i = v49)
  {
    if (v43 == v97)
    {
      v45 = 1;
      v43 = v97;
    }

    else
    {
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

      if (v43 >= *(v93 + 16))
      {
        goto LABEL_43;
      }

      v46 = v93 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v43;
      v47 = *(v20 + 48);
      v48 = v92;
      *v92 = v43;
      sub_1D6D09934(v46, v48 + v47, type metadata accessor for FeedRecipe);
      sub_1D6D0A3D8(v48, v27, i, type metadata accessor for FeedRecipe);
      v45 = 0;
      ++v43;
    }

    (*v40)(v27, v45, 1, v20);
    sub_1D6D09B18(v27, v31, &qword_1EDF04738, i, type metadata accessor for FeedRecipe);
    if ((*v41)(v31, 1, v20) == 1)
    {
      break;
    }

    v49 = i;
    v95 = *v31;
    sub_1D6D0A058(v31 + *(v20 + 48), v14, type metadata accessor for FeedRecipe);
    v50 = *(v14 + 7);
    v51 = [v50 thumbnailExtraLarge];
    if (v51 || (v51 = [v50 thumbnailLarge]) != 0 || (v51 = objc_msgSend(v50, sel_thumbnailMedium)) != 0 || (v51 = objc_msgSend(v50, sel_thumbnailSmall)) != 0)
    {
      v52 = v51;
      [v51 thumbnailSize];
      v54 = v53;
      v56 = v55;

      v57 = v54 / v56;
      v58 = 0x4000000000104;
      if (v54 / v56 > 0.9)
      {
        v59 = v57 > 1.1 || v57 <= 0.9;
        v60 = 256;
        if (!v59)
        {
          v60 = 768;
        }

        v58 = v60 + 0x4000000000104;
      }
    }

    else
    {
      v58 = 0x4000000000000;
    }

    v61 = &v14[*(v98 + 36)];
    if (*v61 - 1 >= 2)
    {
      v62 = v58;
    }

    else
    {
      v62 = v58 | 0x1000;
    }

    v63 = type metadata accessor for FeedRecipe.State();
    v64 = 0x80000000;
    if (!v61[*(v63 + 24)])
    {
      v64 = 0x100000000;
    }

    if ((v96 & ~(v64 | v62)) == 0)
    {
      v69 = v93;

      v99 = v69;
      v70 = v90;
      sub_1D5EC1EA0(v95, v90);
      sub_1D6D0A444(v14, type metadata accessor for FeedRecipe);
      sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
      v72 = v71;
      v73 = *(v71 + 48);
      v35 = v89;
      sub_1D6D0A058(v70, v89, type metadata accessor for FeedRecipe);
      *&v35[v73] = v99;
      goto LABEL_38;
    }

    result = sub_1D6D0A444(v14, type metadata accessor for FeedRecipe);
  }

  v65 = v93;

  if (v91)
  {

    sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    v67 = v87;
    (*(*(v66 - 8) + 56))(v87, 1, 1, v66);
    sub_1D6D0A444(v67, sub_1D6D0A0C0);
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    v35 = v89;
    (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
    a6 = v88;
    goto LABEL_39;
  }

  v74 = *(v65 + 16);
  v35 = v89;
  v75 = v87;
  if (!v74)
  {
    goto LABEL_44;
  }

  v76 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  sub_1D6D09934(v65 + v76, v87, type metadata accessor for FeedRecipe);
  sub_1D5EC2E2C(v65, v65 + v76, 1, (2 * v74) | 1);
  v78 = v77;

  sub_1D6D0A264(0, &qword_1EDF12DF8, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v80 = v79;
  *(v75 + *(v79 + 48)) = v78;
  (*(*(v79 - 8) + 56))(v75, 0, 1, v79);
  v81 = *(v75 + *(v80 + 48));
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v72 = v82;
  v83 = *(v82 + 48);
  sub_1D6D0A058(v75, v35, type metadata accessor for FeedRecipe);
  *&v35[v83] = v81;
LABEL_38:
  (*(*(v72 - 8) + 56))(v35, 0, 1, v72);
  sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
  v84 = (*(*(v72 - 8) + 48))(v35, 1, v72);
  a6 = v88;
  if (v84 == 1)
  {
    goto LABEL_39;
  }

  sub_1D6D0A058(v35, a6, type metadata accessor for FeedRecipe);
  v85 = 0;
  return (*(v94 + 56))(a6, v85, 1, v98);
}

uint64_t sub_1D6D04DCC(uint64_t a1, uint64_t a2)
{
  v946 = a2;
  v933 = a1;
  sub_1D6D09328(0);
  v920 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v907 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v907 - v9;
  sub_1D6D0935C(0);
  v919 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v917 = &v907 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v930 = &v907 - v16;
  sub_1D6D093F4(0);
  v918 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v916 = &v907 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v928 = &v907 - v22;
  sub_1D6D09428(0);
  v931 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v915 = &v907 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v929 = &v907 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v914 = &v907 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v927 = &v907 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v913 = &v907 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v926 = &v907 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v912 = &v907 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v925 = &v907 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v911 = &v907 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v924 = &v907 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v910 = &v907 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v923 = &v907 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v907 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v922 = &v907 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v907 - v68;
  MEMORY[0x1EEE9AC00](v70, v71);
  v921 = &v907 - v72;
  sub_1D6D0945C(0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = &v907 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77, v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  v82 = &v907 - v81;
  MEMORY[0x1EEE9AC00](v83, v84);
  v88 = *(v2 + 64);
  switch(v88)
  {
    case 0uLL:
      v89 = v946;
      v90 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v91 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v91 != 255)
      {
        if ((v91 & 1) == 0)
        {
          goto LABEL_106;
        }

        v908 = &v907 - v86;
        v931 = v85;
        v93 = *v90;
        v92 = v90[1];
        v94 = v90[4];
        v928 = v90[5];
        v929 = v94;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v926 = *(v2 + 136);
        v927 = *&v944[0];
        v95 = v89;
        v96 = *(v2 + 144);
        v930 = v2;
        v97 = *v2;
        v98 = v95[2];
        v99 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v100 = v933;
        swift_beginAccess();
        v101 = *(v100 + v99);
        if (*(v101 + 16))
        {
          v102 = sub_1D5B69D90(v93, v92);
          if (v103)
          {
            v104 = *(*(v101 + 56) + 8 * v102);
            swift_endAccess();
            v105 = *(v104 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v106 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v107 = v932;
            sub_1D6CFBBC4((v104 + v106), v105, 0, 0, v927, v926, v96, v929, v82, v928, v97, v98);
            v946 = v107;
            if (v107)
            {
              goto LABEL_7;
            }

            swift_endAccess();

            sub_1D6D0A058(v82, v908, sub_1D6D0945C);
            goto LABEL_256;
          }
        }

        goto LABEL_107;
      }

      v908 = &v907 - v86;
      v930 = v2;
      v931 = v85;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v501 = *(*&v945[0] + 16);
      if (v501)
      {
        v502 = 0;
        v503 = (*&v945[0] + 32);
        do
        {
          v504 = *v503++;
          LOBYTE(v944[0]) = v504;
          sub_1D6FA308C(v945);
          v505 = *&v945[0];
          if ((*&v945[0] & ~v502) == 0)
          {
            v505 = 0;
          }

          v502 |= v505;
          --v501;
        }

        while (v501);
      }

      else
      {
        v502 = 0;
      }

      v712 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v712;
      v713 = v89[4];
      v714 = v89[5];
      v715 = *v930;
      v716 = v89[2];
      v717 = v933;
      v718 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v719 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v720 = v932;
      sub_1D6CFBBC4((v717 + v719), v718, 0, 0, v502, v929, v928, v713, v908, v714, v715, v716);
      if (!v720)
      {
        v946 = 0;
        swift_endAccess();
LABEL_256:
        v817 = v931;
        v818 = v908;

        v563 = v930;
        sub_1D5B886D0(v819);

        sub_1D6985C44(v820);
        v821 = (v818 + v817[9]);
        v822 = *v821;
        v823 = v821[1];
        v824 = v821[2];
        v825 = v821[3];
        v826 = v821[4];
        v827 = v821[5];
        v828 = v563[26];
        v829 = v563[27];
        v830 = v563[29];
        v932 = v563[28];
        v933 = v828;
        v931 = v830;
        v831 = v563[30];
        v928 = v563[31];
        v929 = v831;
        sub_1D67F5880(v822, v823);
        sub_1D67F58E4(v933, v829);
        v563[26] = v822;
        v563[27] = v823;
        v563[28] = v824;
        v563[29] = v825;
        v563[30] = v826;
        v563[31] = v827;
        *(&v945[1] + 1) = type metadata accessor for FeedHeadline(0);
        *&v945[2] = sub_1D6D098EC(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v908;
        goto LABEL_257;
      }

      return swift_endAccess();
    case 1uLL:
      v277 = v946;
      v278 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v279 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v279 != 255)
      {
        if ((v279 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v278;
        v92 = v278[1];
        v281 = v278[4];
        v280 = v278[5];
        v931 = v281;
        v929 = v280;
        *&v944[0] = *(v2 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v944[0], v934);

        v928 = v934[0];
        v282 = *(v2 + 136);
        v283 = *(v2 + 144);
        v930 = v2;
        v284 = *v2;
        v285 = v277[2];
        v286 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v287 = v933;
        swift_beginAccess();
        v288 = *(v287 + v286);
        if (*(v288 + 16))
        {
          v289 = sub_1D5B69D90(v93, v92);
          if (v290)
          {
            v291 = *(*(v288 + 56) + 8 * v289);
            swift_endAccess();
            v292 = *(v291 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v293 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v294 = v932;
            sub_1D6CF7EAC((v291 + v293), v292, 0, 0, v928, v282, v283, v931, v944, v929, v284, v285);
            if (v294)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v945[10] = v944[10];
            v945[11] = v944[11];
            v945[12] = v944[12];
            v945[6] = v944[6];
            v945[7] = v944[7];
            v945[8] = v944[8];
            v945[9] = v944[9];
            v945[2] = v944[2];
            v945[3] = v944[3];
            v945[4] = v944[4];
            v945[5] = v944[5];
            v945[0] = v944[0];
            v945[1] = v944[1];
            goto LABEL_238;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v944[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v506 = *(*&v944[0] + 16);
      if (v506)
      {
        v507 = 0;
        v508 = (*&v944[0] + 32);
        do
        {
          v509 = *v508++;
          v510 = qword_1D7349118[v509];
          if ((v510 & ~v507) == 0)
          {
            v510 = 0;
          }

          v507 |= v510;
          --v506;
        }

        while (v506);
      }

      else
      {
        v507 = 0;
      }

      v721 = *(v930 + 144);
      v931 = *(v930 + 136);
      v929 = v721;
      v722 = v277[4];
      v723 = v277[5];
      v724 = *v930;
      v725 = v277[2];
      v726 = v933;
      v727 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v728 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v729 = v932;
      sub_1D6CF7EAC((v726 + v728), v727, 0, 0, v507, v931, v929, v722, v945, v723, v724, v725);
      if (!v729)
      {
        v946 = 0;
        swift_endAccess();
LABEL_238:

        v563 = v930;
        sub_1D5B886D0(v730);

        sub_1D6985C44(v731);
        v732 = v945[10];
        v733 = v945[11];
        v734 = v945[12];
        v735 = v563[26];
        v736 = v563[27];
        v737 = v563[29];
        v932 = v563[28];
        v933 = v735;
        v931 = v737;
        v738 = v563[30];
        v928 = v563[31];
        v929 = v738;
        sub_1D67F5880(*&v945[10], *(&v945[10] + 1));
        sub_1D67F58E4(v933, v736);
        *(v563 + 13) = v732;
        *(v563 + 14) = v733;
        *(v563 + 15) = v734;
        v935[3] = &type metadata for FeedIssue;
        v935[4] = sub_1D5EE5AA4();
        v739 = swift_allocObject();
        v942 = v945[6];
        v943[0] = v945[7];
        *(v943 + 9) = *(&v945[7] + 9);
        v740 = v945[1];
        v741 = v945[2];
        v938 = v945[2];
        v939 = v945[3];
        v742 = v945[3];
        v940 = v945[4];
        v941 = v945[5];
        v936 = v945[0];
        v937 = v945[1];
        v743 = v945[5];
        v745 = v945[6];
        v744 = v945[7];
        v739[7] = v945[6];
        v739[8] = v744;
        *(v739 + 137) = *(&v945[7] + 9);
        v747 = v945[0];
        v746 = v945[1];
        v748 = v945[3];
        v739[3] = v945[2];
        v739[4] = v748;
        v749 = v945[5];
        v750 = v945[4];
        v739[5] = v945[4];
        v739[6] = v749;
        v739[1] = v945[0];
        v739[2] = v746;
        v944[10] = v945[10];
        v944[11] = v945[11];
        v944[12] = v945[12];
        v944[6] = v745;
        v944[7] = v945[7];
        v944[8] = v945[8];
        v944[9] = v945[9];
        v944[2] = v741;
        v944[3] = v742;
        v944[4] = v750;
        v944[5] = v743;
        v935[0] = v739;
        v944[0] = v747;
        v944[1] = v740;
        sub_1D5ECF2C4(&v936, v934);
        sub_1D6D09524(v944, &qword_1EC891EB0, &type metadata for FeedIssue, type metadata accessor for FormatNodeBindingItem);
        v488 = v935;
        goto LABEL_266;
      }

      return swift_endAccess();
    case 2uLL:
      v203 = v946;
      v204 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v205 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v205 != 255)
      {
        if ((v205 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v204;
        v92 = v204[1];
        v206 = v204[4];
        v928 = v204[5];
        v929 = v206;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v207 = *(v2 + 144);
        v926 = *(v2 + 136);
        v927 = *&v944[0];
        v930 = v2;
        v208 = *v2;
        v209 = v203[2];
        v210 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v211 = v933;
        swift_beginAccess();
        v212 = *(v211 + v210);
        if (*(v212 + 16))
        {
          v213 = sub_1D5B69D90(v93, v92);
          if (v214)
          {
            v215 = *(*(v212 + 56) + 8 * v213);
            swift_endAccess();
            v216 = *(v215 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v217 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v218 = v932;
            sub_1D6CF0260((v215 + v217), v216, 0, 0, v927, v926, v207, v929, v69, v928, v208, v209);
            if (v218)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v219 = v69;
            v220 = v921;
            sub_1D6D0A058(v219, v921, sub_1D6D09428);
            goto LABEL_222;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v458 = *(*&v945[0] + 16);
      if (v458)
      {
        v459 = 0;
        v460 = (*&v945[0] + 32);
        do
        {
          v461 = *v460++;
          v462 = qword_1D7349118[v461];
          if ((v462 & ~v459) == 0)
          {
            v462 = 0;
          }

          v459 |= v462;
          --v458;
        }

        while (v458);
      }

      else
      {
        v459 = 0;
      }

      v641 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v641;
      v642 = v203[4];
      v643 = v203[5];
      v644 = *v930;
      v645 = v203[2];
      v646 = v933;
      v647 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v648 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v893 = v643;
      v220 = v921;
      v649 = v932;
      sub_1D6CF0260((v646 + v648), v647, 0, 0, v459, v929, v928, v642, v921, v893, v644, v645);
      if (!v649)
      {
        v946 = 0;
        swift_endAccess();
LABEL_222:
        v650 = v931;

        v563 = v930;
        sub_1D5B886D0(v651);

        sub_1D6985C44(v652);
        v653 = (v220 + v650[9]);
        v654 = *v653;
        v655 = v653[1];
        v656 = v653[2];
        v657 = v653[3];
        v658 = v653[4];
        v659 = v653[5];
        v660 = v563[26];
        v661 = v563[27];
        v662 = v563[29];
        v932 = v563[28];
        v933 = v660;
        v931 = v662;
        v663 = v563[30];
        v928 = v563[31];
        v929 = v663;
        sub_1D67F5880(v654, v655);
        sub_1D67F58E4(v933, v661);
        v563[26] = v654;
        v563[27] = v655;
        v563[28] = v656;
        v563[29] = v657;
        v563[30] = v658;
        v563[31] = v659;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v921;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 3uLL:
      v241 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v242 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v242 == 255)
      {
        v909 = v87;
        v930 = v2;
        v931 = v85;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6D30);
        v490 = *(*&v945[0] + 16);
        if (v490)
        {
          v491 = 0;
          v492 = (*&v945[0] + 32);
          v493 = v946;
          do
          {
            v494 = *v492++;
            v495 = qword_1D7349118[v494];
            if ((v495 & ~v491) == 0)
            {
              v495 = 0;
            }

            v491 |= v495;
            --v490;
          }

          while (v490);
        }

        else
        {
          v491 = 0;
          v493 = v946;
        }

        v664 = *(v930 + 144);
        v946 = *(v930 + 136);
        v929 = v664;
        v665 = v493[4];
        v666 = v493[5];
        v667 = *v930;
        v668 = v493[2];
        v669 = v933;
        v670 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v671 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v672 = v932;
        sub_1D6CFBBC4((v669 + v671), v670, 0, 0, v491, v946, v929, v665, v909, v666, v667, v668);
        if (v672)
        {
          return swift_endAccess();
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_226;
      }

      if ((v242 & 1) == 0)
      {
        goto LABEL_106;
      }

      v909 = v87;
      v931 = v85;
      v93 = *v241;
      v92 = v241[1];
      v243 = v241[4];
      v928 = v241[5];
      v929 = v243;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6D30);
      sub_1D6FA2770(*&v945[0], v944);

      v244 = *(v2 + 144);
      v926 = *(v2 + 136);
      v927 = *&v944[0];
      v930 = v2;
      v245 = *v2;
      v246 = v946[2];
      v247 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v248 = v933;
      swift_beginAccess();
      v249 = *(v248 + v247);
      if (*(v249 + 16))
      {
        v250 = sub_1D5B69D90(v93, v92);
        if (v251)
        {
          v252 = *(*(v249 + 56) + 8 * v250);
          swift_endAccess();
          v253 = *(v252 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v254 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v255 = v932;
          sub_1D6CFBBC4((v252 + v254), v253, 0, 0, v927, v926, v244, v929, v76, v928, v245, v246);
          if (v255)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          sub_1D6D0A058(v76, v909, sub_1D6D0945C);
LABEL_226:
          v673 = v931;
          v674 = v909;

          v563 = v930;
          sub_1D5B886D0(v675);

          sub_1D6985C44(v676);
          v677 = (v674 + v673[9]);
          v678 = *v677;
          v679 = v677[1];
          v680 = v677[2];
          v681 = v677[3];
          v682 = v677[4];
          v683 = v677[5];
          v684 = v563[26];
          v685 = v563[27];
          v686 = v563[29];
          v932 = v563[28];
          v933 = v684;
          v931 = v686;
          v687 = v563[30];
          v928 = v563[31];
          v929 = v687;
          sub_1D67F5880(v678, v679);
          sub_1D67F58E4(v933, v685);
          v563[26] = v678;
          v563[27] = v679;
          v563[28] = v680;
          v563[29] = v681;
          v563[30] = v682;
          v563[31] = v683;
          *(&v945[1] + 1) = type metadata accessor for FeedHeadline(0);
          *&v945[2] = sub_1D6D098EC(&qword_1EDF34AD0, type metadata accessor for FeedHeadline);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v945);
          v577 = v909;
LABEL_257:
          sub_1D6D09934(v577, boxed_opaque_existential_1, type metadata accessor for FeedHeadline);
          v832 = sub_1D6D0945C;
          goto LABEL_265;
        }
      }

      goto LABEL_107;
    case 4uLL:
      v148 = v946;
      v149 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v150 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v150 != 255)
      {
        if ((v150 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v149;
        v92 = v149[1];
        v152 = v149[4];
        v151 = v149[5];
        v931 = v152;
        v929 = v151;
        *&v944[0] = *(v2 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v944[0], v934);

        v928 = v934[0];
        v153 = *(v2 + 136);
        v154 = *(v2 + 144);
        v930 = v2;
        v155 = *v2;
        v156 = v148[2];
        v157 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v158 = v933;
        swift_beginAccess();
        v159 = *(v158 + v157);
        if (*(v159 + 16))
        {
          v160 = sub_1D5B69D90(v93, v92);
          if (v161)
          {
            v162 = *(*(v159 + 56) + 8 * v160);
            swift_endAccess();
            v163 = *(v162 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v164 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v165 = v932;
            sub_1D6CF4AD0((v162 + v164), v163, 0, 0, v928, v153, v154, v931, v944, v929, v155, v156);
            if (v165)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v945[10] = v944[10];
            v945[11] = v944[11];
            v945[12] = v944[12];
            *&v945[13] = *&v944[13];
            v945[6] = v944[6];
            v945[7] = v944[7];
            v945[8] = v944[8];
            v945[9] = v944[9];
            v945[2] = v944[2];
            v945[3] = v944[3];
            v945[4] = v944[4];
            v945[5] = v944[5];
            v945[0] = v944[0];
            v945[1] = v944[1];
            goto LABEL_209;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v944[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      v443 = *(*&v944[0] + 16);
      if (v443)
      {
        v444 = 0;
        v445 = (*&v944[0] + 32);
        do
        {
          v446 = *v445++;
          v447 = qword_1D7349118[v446];
          if ((v447 & ~v444) == 0)
          {
            v447 = 0;
          }

          v444 |= v447;
          --v443;
        }

        while (v443);
      }

      else
      {
        v444 = 0;
      }

      v578 = *(v930 + 144);
      v931 = *(v930 + 136);
      v929 = v578;
      v579 = v148[4];
      v580 = v148[5];
      v581 = *v930;
      v582 = v148[2];
      v583 = v933;
      v584 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v585 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v586 = v932;
      sub_1D6CF4AD0((v583 + v585), v584, 0, 0, v444, v931, v929, v579, v945, v580, v581, v582);
      if (!v586)
      {
        v946 = 0;
        swift_endAccess();
LABEL_209:

        v563 = v930;
        sub_1D5B886D0(v587);

        sub_1D6985C44(v588);
        v589 = *(&v945[10] + 1);
        v590 = v945[11];
        v591 = v945[12];
        v592 = *&v945[13];
        v593 = v563[26];
        v594 = v563[27];
        v595 = v563[29];
        v932 = v563[28];
        v933 = v593;
        v931 = v595;
        v596 = v563[30];
        v928 = v563[31];
        v929 = v596;
        sub_1D67F5880(*(&v945[10] + 1), *&v945[11]);
        sub_1D67F58E4(v933, v594);
        v563[26] = v589;
        *(v563 + 27) = v590;
        *(v563 + 29) = v591;
        v563[31] = v592;
        v597 = &type metadata for FeedTag;
        *(&v944[1] + 1) = &type metadata for FeedTag;
        *&v944[2] = sub_1D5EE5BA8();
        *&v944[0] = swift_allocObject();
        sub_1D5EE5AF8(v945, *&v944[0] + 16);
        v598 = &unk_1EDF0E100;
        goto LABEL_214;
      }

      return swift_endAccess();
    case 5uLL:
      v295 = v946;
      v296 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v297 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v297 != 255)
      {
        if ((v297 & 1) == 0)
        {
          goto LABEL_106;
        }

        v299 = *v296;
        v298 = v296[1];
        v300 = v296[4];
        v928 = v296[5];
        v929 = v300;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6D58);
        sub_1D6FA2770(*&v945[0], v944);

        v926 = *(v2 + 136);
        v927 = *&v944[0];
        v301 = v295;
        v302 = *(v2 + 144);
        v930 = v2;
        v303 = *v2;
        v304 = v301[2];
        v305 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v306 = v933;
        swift_beginAccess();
        v307 = *(v306 + v305);
        if (!*(v307 + 16) || (v308 = sub_1D5B69D90(v299, v298), (v309 & 1) == 0))
        {
          swift_endAccess();
          type metadata accessor for FormatLayoutError();
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v551 = v299;
          goto LABEL_201;
        }

        v310 = *(*(v307 + 56) + 8 * v308);
        swift_endAccess();
        v311 = *(v310 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
        v312 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();

        v313 = v932;
        sub_1D6CF0260((v310 + v312), v311, 0, 0, v927, v926, v302, v929, v62, v928, v303, v304);
        if (v313)
        {
          swift_endAccess();
        }

        v946 = 0;
        swift_endAccess();

        v759 = v922;
        sub_1D6D0A058(v62, v922, sub_1D6D09428);
        goto LABEL_259;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6D58);
      v511 = *(*&v945[0] + 16);
      if (v511)
      {
        v512 = 0;
        v513 = (*&v945[0] + 32);
        do
        {
          v514 = *v513++;
          v515 = qword_1D7349118[v514];
          if ((v515 & ~v512) == 0)
          {
            v515 = 0;
          }

          v512 |= v515;
          --v511;
        }

        while (v511);
      }

      else
      {
        v512 = 0;
      }

      v751 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v751;
      v752 = v295[4];
      v753 = v295[5];
      v754 = *v930;
      v755 = v295[2];
      v756 = v933;
      v757 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v758 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v895 = v753;
      v759 = v922;
      v760 = v932;
      sub_1D6CF0260((v756 + v758), v757, 0, 0, v512, v929, v928, v752, v922, v895, v754, v755);
      if (!v760)
      {
        v946 = 0;
        swift_endAccess();
LABEL_259:
        v833 = v931;

        v563 = v930;
        sub_1D5B886D0(v834);

        sub_1D6985C44(v835);
        v836 = (v759 + v833[9]);
        v837 = *v836;
        v838 = v836[1];
        v839 = v836[2];
        v840 = v836[3];
        v841 = v836[4];
        v842 = v836[5];
        v843 = v563[26];
        v844 = v563[27];
        v845 = v563[29];
        v932 = v563[28];
        v933 = v843;
        v931 = v845;
        v846 = v563[30];
        v928 = v563[31];
        v929 = v846;
        sub_1D67F5880(v837, v838);
        sub_1D67F58E4(v933, v844);
        v563[26] = v837;
        v563[27] = v838;
        v563[28] = v839;
        v563[29] = v840;
        v563[30] = v841;
        v563[31] = v842;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v922;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 6uLL:
      v332 = v946;
      v333 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v334 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v334 != 255)
      {
        if ((v334 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v333;
        v92 = v333[1];
        v335 = v333[4];
        v929 = v333[5];
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6D80);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *(v2 + 136);
        v928 = *&v944[0];
        v336 = v332;
        v337 = *(v2 + 144);
        v930 = v2;
        v338 = *v2;
        v339 = v336[2];
        v340 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v341 = v933;
        swift_beginAccess();
        v342 = *(v341 + v340);
        if (*(v342 + 16))
        {
          v343 = sub_1D5B69D90(v93, v92);
          if (v344)
          {
            v345 = *(*(v342 + 56) + 8 * v343);
            swift_endAccess();
            v346 = *(v345 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v347 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v903 = v338;
            v348 = v910;
            v349 = v932;
            sub_1D6CF0260((v345 + v347), v346, 0, 0, v928, v927, v337, v335, v910, v929, v903, v339);
            if (v349)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v350 = v923;
            sub_1D6D0A058(v348, v923, sub_1D6D09428);
            goto LABEL_245;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6D80);
      v526 = *(*&v945[0] + 16);
      if (v526)
      {
        v527 = 0;
        v528 = (*&v945[0] + 32);
        do
        {
          v529 = *v528++;
          v530 = qword_1D7349118[v529];
          if ((v530 & ~v527) == 0)
          {
            v530 = 0;
          }

          v527 |= v530;
          --v526;
        }

        while (v526);
      }

      else
      {
        v527 = 0;
      }

      v761 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v761;
      v762 = v332[4];
      v763 = v332[5];
      v764 = *v930;
      v765 = v332[2];
      v766 = v933;
      v767 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v768 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v896 = v763;
      v350 = v923;
      v769 = v932;
      sub_1D6CF0260((v766 + v768), v767, 0, 0, v527, v929, v928, v762, v923, v896, v764, v765);
      if (!v769)
      {
        v946 = 0;
        swift_endAccess();
LABEL_245:
        v770 = v931;

        v563 = v930;
        sub_1D5B886D0(v771);

        sub_1D6985C44(v772);
        v773 = (v350 + v770[9]);
        v774 = *v773;
        v775 = v773[1];
        v776 = v773[2];
        v777 = v773[3];
        v778 = v773[4];
        v779 = v773[5];
        v780 = v563[26];
        v781 = v563[27];
        v782 = v563[29];
        v932 = v563[28];
        v933 = v780;
        v931 = v782;
        v783 = v563[30];
        v928 = v563[31];
        v929 = v783;
        sub_1D67F5880(v774, v775);
        sub_1D67F58E4(v933, v781);
        v563[26] = v774;
        v563[27] = v775;
        v563[28] = v776;
        v563[29] = v777;
        v563[30] = v778;
        v563[31] = v779;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v923;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 7uLL:
      v256 = v946;
      v257 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v258 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v258 != 255)
      {
        if ((v258 & 1) == 0)
        {
          goto LABEL_106;
        }

        v259 = *v257;
        v92 = v257[1];
        v260 = v257[4];
        v929 = v257[5];
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6DA8);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *(v2 + 136);
        v928 = *&v944[0];
        v261 = v256;
        v262 = *(v2 + 144);
        v930 = v2;
        v263 = *v2;
        v264 = v261[2];
        v265 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v266 = v933;
        swift_beginAccess();
        v267 = *(v266 + v265);
        if (!*(v267 + 16) || (v268 = sub_1D5B69D90(v259, v92), (v269 & 1) == 0))
        {
          swift_endAccess();
          type metadata accessor for FormatLayoutError();
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v410 = v259;
          goto LABEL_108;
        }

        v270 = *(*(v267 + 56) + 8 * v268);
        swift_endAccess();
        v271 = *(v270 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
        v272 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();

        v273 = v260;
        v274 = v911;
        v275 = v932;
        sub_1D6CF0260((v270 + v272), v271, 0, 0, v928, v927, v262, v273, v911, v929, v263, v264);
        if (v275)
        {
          goto LABEL_7;
        }

        v946 = 0;
        swift_endAccess();

        v276 = v924;
        sub_1D6D0A058(v274, v924, sub_1D6D09428);
        goto LABEL_230;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6DA8);
      v496 = *(*&v945[0] + 16);
      if (v496)
      {
        v497 = 0;
        v498 = (*&v945[0] + 32);
        do
        {
          v499 = *v498++;
          v500 = qword_1D7349118[v499];
          if ((v500 & ~v497) == 0)
          {
            v500 = 0;
          }

          v497 |= v500;
          --v496;
        }

        while (v496);
      }

      else
      {
        v497 = 0;
      }

      v689 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v689;
      v690 = v256[4];
      v691 = v256[5];
      v692 = *v930;
      v693 = v256[2];
      v694 = v933;
      v695 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v696 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v894 = v691;
      v276 = v924;
      v697 = v932;
      sub_1D6CF0260((v694 + v696), v695, 0, 0, v497, v929, v928, v690, v924, v894, v692, v693);
      if (!v697)
      {
        v946 = 0;
        swift_endAccess();
LABEL_230:
        v698 = v931;

        v563 = v930;
        sub_1D5B886D0(v699);

        sub_1D6985C44(v700);
        v701 = (v276 + v698[9]);
        v702 = *v701;
        v703 = v701[1];
        v704 = v701[2];
        v705 = v701[3];
        v706 = v701[4];
        v707 = v701[5];
        v708 = v563[26];
        v709 = v563[27];
        v710 = v563[29];
        v932 = v563[28];
        v933 = v708;
        v931 = v710;
        v711 = v563[30];
        v928 = v563[31];
        v929 = v711;
        sub_1D67F5880(v702, v703);
        sub_1D67F58E4(v933, v709);
        v563[26] = v702;
        v563[27] = v703;
        v563[28] = v704;
        v563[29] = v705;
        v563[30] = v706;
        v563[31] = v707;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v924;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 8uLL:
      v370 = v946;
      v371 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v372 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v372 != 255)
      {
        if ((v372 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v371;
        v92 = v371[1];
        v373 = v371[4];
        v928 = v371[5];
        v929 = v373;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6DD0);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *&v944[0];
        v374 = *(v2 + 136);
        v375 = *(v2 + 144);
        v930 = v2;
        v376 = *v2;
        v377 = v370[2];
        v378 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v379 = v933;
        swift_beginAccess();
        v380 = *(v379 + v378);
        if (*(v380 + 16))
        {
          v381 = sub_1D5B69D90(v93, v92);
          if (v382)
          {
            v383 = *(*(v380 + 56) + 8 * v381);
            swift_endAccess();
            v384 = *(v383 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v385 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v905 = v376;
            v386 = v912;
            v387 = v932;
            sub_1D6CF0260((v383 + v385), v384, 0, 0, v927, v374, v375, v929, v912, v928, v905, v377);
            if (v387)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v815 = v925;
            sub_1D6D0A058(v386, v925, sub_1D6D09428);
            goto LABEL_263;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6DD0);
      v536 = *(*&v945[0] + 16);
      if (v536)
      {
        v537 = 0;
        v538 = (*&v945[0] + 32);
        do
        {
          v539 = *v538++;
          v540 = qword_1D7349118[v539];
          if ((v540 & ~v537) == 0)
          {
            v540 = 0;
          }

          v537 |= v540;
          --v536;
        }

        while (v536);
      }

      else
      {
        v537 = 0;
      }

      v807 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v807;
      v808 = v370[4];
      v809 = v370[5];
      v810 = *v930;
      v811 = v370[2];
      v812 = v933;
      v813 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v814 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v898 = v809;
      v815 = v925;
      v816 = v932;
      sub_1D6CF0260((v812 + v814), v813, 0, 0, v537, v929, v928, v808, v925, v898, v810, v811);
      if (!v816)
      {
        v946 = 0;
        swift_endAccess();
LABEL_263:
        v861 = v931;

        v563 = v930;
        sub_1D5B886D0(v862);

        sub_1D6985C44(v863);
        v864 = (v815 + v861[9]);
        v865 = *v864;
        v866 = v864[1];
        v867 = v864[2];
        v868 = v864[3];
        v869 = v864[4];
        v870 = v864[5];
        v871 = v563[26];
        v872 = v563[27];
        v873 = v563[29];
        v932 = v563[28];
        v933 = v871;
        v931 = v873;
        v874 = v563[30];
        v928 = v563[31];
        v929 = v874;
        sub_1D67F5880(v865, v866);
        sub_1D67F58E4(v933, v872);
        v563[26] = v865;
        v563[27] = v866;
        v563[28] = v867;
        v563[29] = v868;
        v563[30] = v869;
        v563[31] = v870;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v925;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 9uLL:
      v184 = v946;
      v185 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v186 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v186 != 255)
      {
        if ((v186 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v185;
        v92 = v185[1];
        v187 = v185[4];
        v928 = v185[5];
        v929 = v187;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6DF8);
        sub_1D6FA2770(*&v945[0], v944);

        v927 = *&v944[0];
        v188 = *(v2 + 136);
        v189 = *(v2 + 144);
        v930 = v2;
        v190 = *v2;
        v191 = v184[2];
        v192 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v193 = v933;
        swift_beginAccess();
        v194 = *(v193 + v192);
        if (*(v194 + 16))
        {
          v195 = sub_1D5B69D90(v93, v92);
          if (v196)
          {
            v197 = *(*(v194 + 56) + 8 * v195);
            swift_endAccess();
            v198 = *(v197 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v199 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v901 = v190;
            v200 = v913;
            v201 = v932;
            sub_1D6CF0260((v197 + v199), v198, 0, 0, v927, v188, v189, v929, v913, v928, v901, v191);
            if (v201)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v202 = v926;
            sub_1D6D0A058(v200, v926, sub_1D6D09428);
            goto LABEL_218;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6DF8);
      v453 = *(*&v945[0] + 16);
      if (v453)
      {
        v454 = 0;
        v455 = (*&v945[0] + 32);
        do
        {
          v456 = *v455++;
          v457 = qword_1D7349118[v456];
          if ((v457 & ~v454) == 0)
          {
            v457 = 0;
          }

          v454 |= v457;
          --v453;
        }

        while (v453);
      }

      else
      {
        v454 = 0;
      }

      v618 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v618;
      v619 = v184[4];
      v620 = v184[5];
      v621 = *v930;
      v622 = v184[2];
      v623 = v933;
      v624 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v625 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v892 = v620;
      v202 = v926;
      v626 = v932;
      sub_1D6CF0260((v623 + v625), v624, 0, 0, v454, v929, v928, v619, v926, v892, v621, v622);
      if (!v626)
      {
        v946 = 0;
        swift_endAccess();
LABEL_218:
        v627 = v931;

        v563 = v930;
        sub_1D5B886D0(v628);

        sub_1D6985C44(v629);
        v630 = (v202 + v627[9]);
        v631 = *v630;
        v632 = v630[1];
        v633 = v630[2];
        v634 = v630[3];
        v635 = v630[4];
        v636 = v630[5];
        v637 = v563[26];
        v638 = v563[27];
        v639 = v563[29];
        v932 = v563[28];
        v933 = v637;
        v931 = v639;
        v640 = v563[30];
        v928 = v563[31];
        v929 = v640;
        sub_1D67F5880(v631, v632);
        sub_1D67F58E4(v933, v638);
        v563[26] = v631;
        v563[27] = v632;
        v563[28] = v633;
        v563[29] = v634;
        v563[30] = v635;
        v563[31] = v636;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v926;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 0xAuLL:
      v351 = v946;
      v352 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v353 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v353 != 255)
      {
        if ((v353 & 1) == 0)
        {
          goto LABEL_106;
        }

        v93 = *v352;
        v92 = v352[1];
        v354 = v352[4];
        v928 = v352[5];
        v929 = v354;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6E20);
        sub_1D6FA2770(*&v945[0], v944);

        v926 = *&v944[0];
        v355 = *(v2 + 136);
        v356 = *(v2 + 144);
        v930 = v2;
        v357 = *v2;
        v358 = v351[2];
        v359 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v360 = v933;
        swift_beginAccess();
        v361 = *(v360 + v359);
        if (*(v361 + 16))
        {
          v362 = sub_1D5B69D90(v93, v92);
          if (v363)
          {
            v364 = *(*(v361 + 56) + 8 * v362);
            swift_endAccess();
            v365 = *(v364 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
            v366 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
            swift_beginAccess();

            v904 = v357;
            v367 = v914;
            v368 = v932;
            sub_1D6CF0260((v364 + v366), v365, 0, 0, v926, v355, v356, v929, v914, v928, v904, v358);
            if (v368)
            {
              goto LABEL_7;
            }

            v946 = 0;
            swift_endAccess();

            v369 = v927;
            sub_1D6D0A058(v367, v927, sub_1D6D09428);
            goto LABEL_249;
          }
        }

        goto LABEL_107;
      }

      v930 = v2;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6E20);
      v531 = *(*&v945[0] + 16);
      if (v531)
      {
        v532 = 0;
        v533 = (*&v945[0] + 32);
        do
        {
          v534 = *v533++;
          v535 = qword_1D7349118[v534];
          if ((v535 & ~v532) == 0)
          {
            v535 = 0;
          }

          v532 |= v535;
          --v531;
        }

        while (v531);
      }

      else
      {
        v532 = 0;
      }

      v784 = *(v930 + 136);
      v928 = *(v930 + 144);
      v929 = v784;
      v785 = v351[4];
      v786 = v351[5];
      v787 = *v930;
      v788 = v351[2];
      v789 = v933;
      v790 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
      v791 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
      swift_beginAccess();
      v897 = v786;
      v369 = v927;
      v792 = v932;
      sub_1D6CF0260((v789 + v791), v790, 0, 0, v532, v929, v928, v785, v927, v897, v787, v788);
      if (!v792)
      {
        v946 = 0;
        swift_endAccess();
LABEL_249:
        v793 = v931;

        v563 = v930;
        sub_1D5B886D0(v794);

        sub_1D6985C44(v795);
        v796 = &v369[v793[9]];
        v797 = *v796;
        v798 = v796[1];
        v799 = v796[2];
        v800 = v796[3];
        v801 = v796[4];
        v802 = v796[5];
        v803 = v563[26];
        v804 = v563[27];
        v805 = v563[29];
        v932 = v563[28];
        v933 = v803;
        v931 = v805;
        v806 = v563[30];
        v928 = v563[31];
        v929 = v806;
        sub_1D67F5880(v797, v798);
        sub_1D67F58E4(v933, v804);
        v563[26] = v797;
        v563[27] = v798;
        v563[28] = v799;
        v563[29] = v800;
        v563[30] = v801;
        v563[31] = v802;
        *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
        *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
        v576 = __swift_allocate_boxed_opaque_existential_1(v945);
        v577 = v927;
        goto LABEL_264;
      }

      return swift_endAccess();
    case 0xBuLL:
      v129 = v946;
      v130 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v131 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v131 == 255)
      {
        v930 = v2;
        *&v945[0] = *(v2 + 72);

        sub_1D69869F4(&unk_1F50F6E48);
        v438 = *(*&v945[0] + 16);
        if (v438)
        {
          v439 = 0;
          v440 = (*&v945[0] + 32);
          do
          {
            v441 = *v440++;
            v442 = qword_1D7349118[v441];
            if ((v442 & ~v439) == 0)
            {
              v442 = 0;
            }

            v439 |= v442;
            --v438;
          }

          while (v438);
        }

        else
        {
          v439 = 0;
        }

        v552 = *(v930 + 136);
        v927 = *(v930 + 144);
        v928 = v552;
        v553 = v129[4];
        v554 = v129[5];
        v555 = *v930;
        v556 = v129[2];
        v557 = v933;
        v558 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v559 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v891 = v554;
        v147 = v929;
        v560 = v932;
        sub_1D6CF0260((v557 + v559), v558, 0, 0, v439, v928, v927, v553, v929, v891, v555, v556);
        if (v560)
        {
          return swift_endAccess();
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_205;
      }

      if ((v131 & 1) == 0)
      {
        goto LABEL_106;
      }

      v93 = *v130;
      v92 = v130[1];
      v132 = v130[4];
      v927 = v130[5];
      v928 = v132;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(&unk_1F50F6E48);
      sub_1D6FA2770(*&v945[0], v944);

      v926 = *&v944[0];
      v133 = *(v2 + 136);
      v134 = *(v2 + 144);
      v930 = v2;
      v135 = *v2;
      v136 = v129[2];
      v137 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v138 = v933;
      swift_beginAccess();
      v139 = *(v138 + v137);
      if (*(v139 + 16))
      {
        v140 = sub_1D5B69D90(v93, v92);
        if (v141)
        {
          v142 = *(*(v139 + 56) + 8 * v140);
          swift_endAccess();
          v143 = *(v142 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v144 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v900 = v135;
          v145 = v915;
          v146 = v932;
          sub_1D6CF0260((v142 + v144), v143, 0, 0, v926, v133, v134, v928, v915, v927, v900, v136);
          if (v146)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          v147 = v929;
          sub_1D6D0A058(v145, v929, sub_1D6D09428);
LABEL_205:
          v561 = v931;

          v563 = v930;
          sub_1D5B886D0(v562);

          sub_1D6985C44(v564);
          v565 = &v147[v561[9]];
          v566 = *v565;
          v567 = v565[1];
          v568 = v565[2];
          v569 = v565[3];
          v570 = v565[4];
          v571 = v565[5];
          v572 = v563[26];
          v573 = v563[27];
          v574 = v563[29];
          v932 = v563[28];
          v933 = v572;
          v931 = v574;
          v575 = v563[30];
          v927 = v563[31];
          v928 = v575;
          sub_1D67F5880(v566, v567);
          sub_1D67F58E4(v933, v573);
          v563[26] = v566;
          v563[27] = v567;
          v563[28] = v568;
          v563[29] = v569;
          v563[30] = v570;
          v563[31] = v571;
          *(&v945[1] + 1) = type metadata accessor for FeedWebEmbed();
          *&v945[2] = sub_1D6D098EC(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed);
          v576 = __swift_allocate_boxed_opaque_existential_1(v945);
          v577 = v929;
LABEL_264:
          sub_1D6D09934(v577, v576, type metadata accessor for FeedWebEmbed);
          v832 = sub_1D6D09428;
          goto LABEL_265;
        }
      }

      goto LABEL_107;
    case 0xCuLL:
      v166 = v946;
      v167 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v168 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v168 == 255)
      {
        v930 = v2;
        *&v944[0] = *(v2 + 72);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        v448 = *(*&v944[0] + 16);
        if (v448)
        {
          v449 = 0;
          v450 = (*&v944[0] + 32);
          do
          {
            v451 = *v450++;
            v452 = qword_1D7349118[v451];
            if ((v452 & ~v449) == 0)
            {
              v452 = 0;
            }

            v449 |= v452;
            --v448;
          }

          while (v448);
        }

        else
        {
          v449 = 0;
        }

        v599 = *(v930 + 144);
        v931 = *(v930 + 136);
        v929 = v599;
        v600 = v166[4];
        v601 = v166[5];
        v602 = *v930;
        v603 = v166[2];
        v604 = v933;
        v605 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v606 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v607 = v932;
        sub_1D6CECE98((v604 + v606), v605, 0, 0, v449, v931, v929, v600, v945, v601, v602, v603);
        if (v607)
        {
          return swift_endAccess();
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_213;
      }

      if ((v168 & 1) == 0)
      {
        goto LABEL_106;
      }

      v93 = *v167;
      v92 = v167[1];
      v170 = v167[4];
      v169 = v167[5];
      v931 = v170;
      v929 = v169;
      *&v944[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v944[0], v934);

      v928 = v934[0];
      v171 = *(v2 + 136);
      v172 = *(v2 + 144);
      v930 = v2;
      v173 = *v2;
      v174 = v166[2];
      v175 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v176 = v933;
      swift_beginAccess();
      v177 = *(v176 + v175);
      if (*(v177 + 16))
      {
        v178 = sub_1D5B69D90(v93, v92);
        if (v179)
        {
          v180 = *(*(v177 + 56) + 8 * v178);
          swift_endAccess();
          v181 = *(v180 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v182 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v183 = v932;
          sub_1D6CECE98((v180 + v182), v181, 0, 0, v928, v171, v172, v931, v944, v929, v173, v174);
          if (v183)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          memcpy(v945, v944, 0x110uLL);
LABEL_213:

          v563 = v930;
          sub_1D5B886D0(v608);

          sub_1D6985C44(v609);
          v611 = *(&v945[14] + 1);
          v610 = *&v945[14];
          v612 = v945[15];
          v613 = v945[16];
          v614 = v563[26];
          v615 = v563[27];
          v616 = v563[29];
          v932 = v563[28];
          v933 = v614;
          v931 = v616;
          v617 = v563[30];
          v928 = v563[31];
          v929 = v617;
          sub_1D67F5880(*&v945[14], *(&v945[14] + 1));
          sub_1D67F58E4(v933, v615);
          *(v563 + 13) = __PAIR128__(v611, v610);
          *(v563 + 14) = v612;
          *(v563 + 15) = v613;
          v597 = &type metadata for FeedPuzzle;
          *(&v944[1] + 1) = &type metadata for FeedPuzzle;
          *&v944[2] = sub_1D63071A0();
          *&v944[0] = swift_allocObject();
          sub_1D5F2DEAC(v945, *&v944[0] + 16);
          v598 = &unk_1EDF0E0F8;
LABEL_214:
          sub_1D6D09524(v945, v598, v597, type metadata accessor for FormatNodeBindingItem);
          v488 = v944;
          goto LABEL_266;
        }
      }

      goto LABEL_107;
    case 0xDuLL:
      v314 = v946;
      v315 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v316 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v316 == 255)
      {
        *&v944[0] = *(v2 + 72);

        v516 = v2;
        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v944[0], &v936);

        v517 = *(v2 + 144);
        v930 = *(v2 + 136);
        v931 = v936;
        v929 = v517;
        v518 = v314[4];
        v519 = v314[5];
        v520 = *v2;
        v521 = v314[2];
        v522 = v933;
        v523 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v524 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v525 = v932;
        sub_1D6CE97DC((v522 + v524), v523, 0, 0, v931, v930, v929, v518, v945, v519, v520, v521);
        if (v525)
        {
          return swift_endAccess();
        }

        v946 = 0;
        v930 = v516;
        swift_endAccess();
        goto LABEL_261;
      }

      if ((v316 & 1) == 0)
      {
        goto LABEL_106;
      }

      v93 = *v315;
      v92 = v315[1];
      v318 = v315[4];
      v317 = v315[5];
      v931 = v318;
      v929 = v317;
      *&v944[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v944[0], v934);

      v928 = v934[0];
      v319 = *(v2 + 136);
      v320 = *(v2 + 144);
      v930 = v2;
      v321 = *v2;
      v322 = v314[2];
      v323 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v324 = v933;
      swift_beginAccess();
      v325 = *(v324 + v323);
      if (*(v325 + 16))
      {
        v326 = sub_1D5B69D90(v93, v92);
        if (v327)
        {
          v328 = *(*(v325 + 56) + 8 * v326);
          swift_endAccess();
          v329 = *(v328 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v330 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v331 = v932;
          sub_1D6CE97DC((v328 + v330), v329, 0, 0, v928, v319, v320, v931, v944, v929, v321, v322);
          if (v331)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          v945[4] = v944[4];
          v945[5] = v944[5];
          v945[6] = v944[6];
          v945[7] = v944[7];
          v945[0] = v944[0];
          v945[1] = v944[1];
          v945[2] = v944[2];
          v945[3] = v944[3];
LABEL_261:

          v848 = v930;
          sub_1D5B886D0(v847);

          sub_1D6985C44(v849);
          v850 = v945[5];
          v851 = v945[6];
          v852 = v945[7];
          v853 = v848[26];
          v854 = v848[27];
          v855 = v848[29];
          v932 = v848[28];
          v933 = v853;
          v931 = v855;
          v856 = v848[30];
          v928 = v848[31];
          v929 = v856;
          sub_1D67F5880(*&v945[5], *(&v945[5] + 1));
          sub_1D67F58E4(v933, v854);
          *(v848 + 13) = v850;
          *(v848 + 14) = v851;
          *(v848 + 15) = v852;
          v934[3] = &type metadata for FeedPuzzleType;
          v934[4] = sub_1D6307250();
          v857 = swift_allocObject();
          v934[0] = v857;
          v858 = v945[1];
          v936 = v945[0];
          v937 = v945[1];
          v859 = v945[2];
          v860 = v945[3];
          v938 = v945[2];
          v939 = v945[3];
          v857[1] = v945[0];
          v857[2] = v858;
          v857[3] = v859;
          v857[4] = v860;
          sub_1D63071F4(&v936, v944);
          sub_1D6D09490(v934, (v848 + 19));
          v944[4] = v945[4];
          v944[5] = v945[5];
          v944[6] = v945[6];
          v944[7] = v945[7];
          v944[0] = v945[0];
          v944[1] = v945[1];
          v944[2] = v945[2];
          v944[3] = v945[3];
          return sub_1D6D09524(v944, &qword_1EC891EA8, &type metadata for FeedPuzzleType, type metadata accessor for FormatNodeBindingItem);
        }
      }

      goto LABEL_107;
    case 0xEuLL:
      v109 = v946;
      v110 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v111 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v111 == 255)
      {
        *&v945[0] = *(v2 + 72);

        v114 = v2;
        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v411 = *(v2 + 144);
        v930 = *(v2 + 136);
        v931 = *&v944[0];
        v929 = v411;
        v412 = v109[4];
        v413 = v109[5];
        v414 = *v2;
        v415 = v109[2];
        v416 = v933;
        v417 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v418 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v419 = (v416 + v418);
        v128 = v928;
        v420 = v932;
        sub_1D6CE4CF8(v419, v417, 0, 0, v931, v930, v929, v412, v928, v413, v414, v415);
        if (v420)
        {
          return swift_endAccess();
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_111;
      }

      if ((v111 & 1) == 0)
      {
        goto LABEL_106;
      }

      v93 = *v110;
      v92 = v110[1];
      v112 = v110[4];
      v930 = v110[5];
      v931 = v112;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v945[0], v944);

      v929 = *&v944[0];
      v113 = *(v2 + 144);
      v927 = *(v2 + 136);
      v114 = v2;
      v115 = *v2;
      v116 = v109[2];
      v117 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v118 = v933;
      swift_beginAccess();
      v119 = *(v118 + v117);
      if (*(v119 + 16))
      {
        v120 = sub_1D5B69D90(v93, v92);
        if (v121)
        {
          v122 = *(*(v119 + 56) + 8 * v120);
          swift_endAccess();
          v123 = *(v122 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v124 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v899 = v115;
          v125 = v916;
          v126 = v932;
          sub_1D6CE4CF8((v122 + v124), v123, 0, 0, v929, v927, v113, v931, v916, v930, v899, v116);
          if (v126)
          {
            goto LABEL_7;
          }

          v946 = 0;
          swift_endAccess();

          v127 = v125;
          v128 = v928;
          sub_1D6D0A058(v127, v928, sub_1D6D093F4);
LABEL_111:
          v421 = v918;

          sub_1D5B886D0(v422);

          sub_1D6985C44(v423);
          v424 = &v128[*(v421 + 36)];
          v425 = *v424;
          v426 = v424[1];
          v427 = v424[2];
          v428 = v424[3];
          v430 = v424[4];
          v429 = v424[5];
          v431 = v114[26];
          v432 = v114[27];
          v433 = v114[29];
          v932 = v114[28];
          v933 = v431;
          v434 = v114[31];
          v930 = v114[30];
          v931 = v433;
          v929 = v434;
          sub_1D67F5880(v425, v426);
          sub_1D67F58E4(v933, v432);
          v114[26] = v425;
          v114[27] = v426;
          v114[28] = v427;
          v114[29] = v428;
          v114[30] = v430;
          v114[31] = v429;
          *(&v945[1] + 1) = type metadata accessor for FeedPuzzleStatistic();
          *&v945[2] = sub_1D6D098EC(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic);
          v435 = __swift_allocate_boxed_opaque_existential_1(v945);
          v436 = v928;
          sub_1D6D09934(v928, v435, type metadata accessor for FeedPuzzleStatistic);
          v437 = sub_1D6D093F4;
          goto LABEL_145;
        }
      }

      goto LABEL_107;
    case 0xFuLL:
      v221 = v946;
      v222 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v223 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v223 == 255)
      {
        *&v945[0] = *(v2 + 72);

        v114 = v2;
        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v931 = *&v944[0];
        v463 = *(v2 + 136);
        v928 = *(v2 + 144);
        v929 = v463;
        v464 = v221[4];
        v465 = v221[5];
        v466 = *v2;
        v467 = v221[2];
        v468 = v933;
        v469 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v470 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v471 = (v468 + v470);
        v240 = v930;
        v472 = v932;
        sub_1D6CE1A94(v471, v469, 0, 0, v931, v929, v928, v464, v930, v465, v466, v467);
        if (v472)
        {
          return swift_endAccess();
        }

        v946 = 0;
        swift_endAccess();
        goto LABEL_144;
      }

      if ((v223 & 1) == 0)
      {
        goto LABEL_106;
      }

      v93 = *v222;
      v92 = v222[1];
      v225 = v222[4];
      v224 = v222[5];
      v931 = v225;
      v929 = v224;
      *&v945[0] = *(v2 + 72);

      sub_1D69869F4(MEMORY[0x1E69E7CC0]);
      sub_1D6FA2770(*&v945[0], v944);

      v226 = *(v2 + 144);
      v927 = *(v2 + 136);
      v928 = *&v944[0];
      v114 = v2;
      v227 = *v2;
      v228 = v221[2];
      v229 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
      v230 = v933;
      swift_beginAccess();
      v231 = *(v230 + v229);
      if (*(v231 + 16))
      {
        v232 = sub_1D5B69D90(v93, v92);
        if (v233)
        {
          v234 = *(*(v231 + 56) + 8 * v232);
          swift_endAccess();
          v235 = *(v234 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
          v236 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
          swift_beginAccess();

          v902 = v227;
          v237 = v917;
          v238 = v932;
          sub_1D6CE1A94((v234 + v236), v235, 0, 0, v928, v927, v226, v931, v917, v929, v902, v228);
          if (v238)
          {
LABEL_7:
            swift_endAccess();
          }

          v946 = 0;
          swift_endAccess();

          v239 = v237;
          v240 = v930;
          sub_1D6D0A058(v239, v930, sub_1D6D0935C);
LABEL_144:
          v473 = v919;

          sub_1D5B886D0(v474);

          sub_1D6985C44(v475);
          v476 = (v240 + *(v473 + 36));
          v477 = *v476;
          v478 = v476[1];
          v479 = v476[2];
          v480 = v476[3];
          v482 = v476[4];
          v481 = v476[5];
          v483 = v114[26];
          v484 = v114[27];
          v485 = v114[29];
          v932 = v114[28];
          v933 = v483;
          v931 = v485;
          v486 = v114[30];
          v928 = v114[31];
          v929 = v486;
          sub_1D67F5880(v477, v478);
          sub_1D67F58E4(v933, v484);
          v114[26] = v477;
          v114[27] = v478;
          v114[28] = v479;
          v114[29] = v480;
          v114[30] = v482;
          v114[31] = v481;
          *(&v945[1] + 1) = type metadata accessor for FeedRecipe();
          *&v945[2] = sub_1D6D098EC(&qword_1EDF12E00, type metadata accessor for FeedRecipe);
          v487 = __swift_allocate_boxed_opaque_existential_1(v945);
          v436 = v930;
          sub_1D6D09934(v930, v487, type metadata accessor for FeedRecipe);
          v437 = sub_1D6D0935C;
LABEL_145:
          sub_1D6D0A444(v436, v437);
          v488 = v945;
          v489 = (v114 + 19);
          return sub_1D6D09490(v488, v489);
        }
      }

LABEL_107:
      swift_endAccess();
      type metadata accessor for FormatLayoutError();
      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v410 = v93;
LABEL_108:
      v410[1] = v92;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

    default:
      v907 = v10;
      v388 = *(v2 + 56);
      v389 = v946;
      v390 = (v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
      v391 = *(v946 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
      if (v391 == 255)
      {
        v541 = v2;
        *&v945[0] = *(v2 + 72);
        sub_1D5CBA110(v388, v88);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v542 = *(v2 + 144);
        v930 = *(v2 + 136);
        v931 = *&v944[0];
        v543 = v389[5];
        v928 = v389[4];
        v929 = v542;
        v927 = v543;
        v544 = *v2;
        v545 = v389[2];
        v546 = v933;
        v547 = *(v933 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_slots);
        v548 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_bindingContext;
        swift_beginAccess();
        v906 = v544;
        v549 = v907;
        v550 = v932;
        sub_1D6CDF148((v546 + v548), v547, v388, v88, v931, v930, v929, v928, v907, v927, v906, v545);
        if (v550)
        {
          swift_endAccess();
          return sub_1D5CBA0FC(v388, v88);
        }

        v946 = 0;
        v930 = v541;
        swift_endAccess();
        sub_1D5CBA0FC(v388, v88);
      }

      else
      {
        if ((v391 & 1) == 0)
        {
LABEL_106:
          type metadata accessor for FormatLayoutError();
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          return swift_willThrow();
        }

        v392 = *v390;
        v298 = v390[1];
        v393 = v390[4];
        v928 = v390[5];
        v929 = v393;
        *&v945[0] = *(v2 + 72);
        v931 = v388;
        sub_1D5CBA110(v388, v88);

        sub_1D69869F4(MEMORY[0x1E69E7CC0]);
        sub_1D6FA2770(*&v945[0], v944);

        v394 = *(v2 + 144);
        v926 = *(v2 + 136);
        v927 = *&v944[0];
        v925 = v394;
        v930 = v2;
        v395 = *v2;
        v396 = v389[2];
        v397 = OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_auxiliaryBinders;
        v398 = v933;
        swift_beginAccess();
        v399 = *(v398 + v397);
        if (!*(v399 + 16) || (v400 = sub_1D5B69D90(v392, v298), (v401 & 1) == 0))
        {
          swift_endAccess();
          sub_1D5CBA0FC(v931, v88);
          type metadata accessor for FormatLayoutError();
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          *v551 = v392;
LABEL_201:
          v551[1] = v298;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        v402 = *(*(v399 + 56) + 8 * v400);
        swift_endAccess();
        v403 = *(v402 + OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_slots);
        v404 = OBJC_IVAR____TtC8NewsFeedP33_BE1642F2E86A2E1BB283E4DD4F798E4125FormatNodeAuxiliaryBinder_bindingContext;
        swift_beginAccess();

        v405 = (v402 + v404);
        v406 = v6;
        v407 = v6;
        v409 = v931;
        v408 = v932;
        sub_1D6CDF148(v405, v403, v931, v88, v927, v926, v925, v929, v407, v928, v395, v396);
        if (v408)
        {
          swift_endAccess();
          sub_1D5CBA0FC(v409, v88);
        }

        v946 = 0;
        swift_endAccess();
        sub_1D5CBA0FC(v409, v88);

        v875 = v406;
        v549 = v907;
        sub_1D6D0A058(v875, v907, sub_1D6D09328);
      }

      v876 = v920;

      v563 = v930;
      sub_1D5B886D0(v877);

      sub_1D6985C44(v878);
      v879 = (v549 + *(v876 + 36));
      v880 = *v879;
      v881 = v879[1];
      v882 = v879[2];
      v883 = v879[3];
      v884 = v879[4];
      v885 = v879[5];
      v886 = v563[26];
      v887 = v563[27];
      v888 = v563[29];
      v932 = v563[28];
      v933 = v886;
      v931 = v888;
      v889 = v563[30];
      v928 = v563[31];
      v929 = v889;
      sub_1D67F5880(v880, v881);
      sub_1D67F58E4(v933, v887);
      v563[26] = v880;
      v563[27] = v881;
      v563[28] = v882;
      v563[29] = v883;
      v563[30] = v884;
      v563[31] = v885;
      *(&v945[1] + 1) = type metadata accessor for FeedCustomItem();
      *&v945[2] = sub_1D6D098EC(&qword_1EDF15710, type metadata accessor for FeedCustomItem);
      v890 = __swift_allocate_boxed_opaque_existential_1(v945);
      v577 = v907;
      sub_1D6D09934(v907, v890, type metadata accessor for FeedCustomItem);
      v832 = sub_1D6D09328;
LABEL_265:
      sub_1D6D0A444(v577, v832);
      v488 = v945;
LABEL_266:
      v489 = (v563 + 19);
      return sub_1D6D09490(v488, v489);
  }
}

void sub_1D6D09390(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6D09490(uint64_t a1, uint64_t a2)
{
  sub_1D6D09390(0, &qword_1EDF34AB8, sub_1D5EFF46C, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6D09524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D6D09E8C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D6D09580(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D725AA4C() == v2 && v4 == v3)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

uint64_t sub_1D6D09618(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1D725AA4C() == v2 && v4 == v3)
  {

    v7 = 0;
  }

  else
  {
    v6 = sub_1D72646CC();

    v7 = v6 ^ 1;
  }

  return v7 & 1;
}

BOOL sub_1D6D096B8(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v5 = *(v4 + 16);
  v6 = a2[7];
  v15[6] = a2[6];
  v16[0] = v6;
  *(v16 + 9) = *(a2 + 121);
  v7 = a2[3];
  v15[2] = a2[2];
  v15[3] = v7;
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  v10 = a4[7];
  v17[6] = a4[6];
  v18[0] = v10;
  *(v18 + 9) = *(a4 + 121);
  v11 = a4[3];
  v17[2] = a4[2];
  v17[3] = v11;
  v12 = a4[5];
  v17[4] = a4[4];
  v17[5] = v12;
  v13 = a4[1];
  v17[0] = *a4;
  v17[1] = v13;
  return sub_1D71EA090(a1, v15, a3, v17, v5);
}

uint64_t sub_1D6D09744@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v7[5] = *(a1 + 11);
  v7[6] = *(a1 + 13);
  v8[0] = *(a1 + 15);
  *(v8 + 9) = *(a1 + 129);
  v7[1] = *(a1 + 3);
  v7[2] = *(a1 + 5);
  v7[3] = *(a1 + 7);
  v7[4] = *(a1 + 9);
  v7[0] = *(a1 + 1);
  result = v4(v5, v7);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D6D0983C(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D6D09DA8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6D098EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6D09934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D6D099D0()
{
  if (!qword_1EC894E60)
  {
    sub_1D6D09E8C(255, &qword_1EC880BA0, &type metadata for FeedIssue, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC894E60);
    }
  }
}

double sub_1D6D09A5C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void sub_1D6D09A7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6D09B18(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1D5C144C0(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D6D09C2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

BOOL sub_1D6D09CC0(uint64_t a1, _OWORD *a2, uint64_t a3, __int128 *a4)
{
  v5 = *(v4 + 16);
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v8 = a4[1];
  v12[0] = *a4;
  v12[1] = v8;
  v9 = a4[3];
  v12[2] = a4[2];
  v12[3] = v9;
  return sub_1D71E9960(a1, v11, a3, v12, v5);
}

uint64_t sub_1D6D09D10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = *(a1 + 3);
  v9[0] = *(a1 + 1);
  v9[1] = v6;
  v7 = *(a1 + 7);
  v9[2] = *(a1 + 5);
  v9[3] = v7;
  result = v4(v5, v9);
  *a2 = result & 1;
  return result;
}

void sub_1D6D09DA8(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1D6D09E04(255, a3, a4, a5);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6D09E04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D6D09E8C(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6D09E8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D6D09F94(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D6D0A350(255, a3, a4, a5);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6D0A058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6D0A0FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1D6D0A264(255, a3, a4, a5);
    v6 = sub_1D726393C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6D0A1B4@<X0>(char *a1@<X0>, char *a2@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, _BYTE *a5@<X8>)
{
  v9 = *(v5 + 16);
  v10 = *a1;
  sub_1D6D09C2C(0, a3, a4);
  result = v9(v10, &a1[*(v11 + 48)], *a2, &a2[*(v11 + 48)]);
  *a5 = result & 1;
  return result;
}

void sub_1D6D0A264(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6D0A350(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6D0A3D8(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D6D09A7C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6D0A444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6D0A4B8()
{
  result = qword_1EC894EA0;
  if (!qword_1EC894EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894EA0);
  }

  return result;
}

double sub_1D6D0A5F8@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      *a3 = a1;
      *(a3 + 8) = a2;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      return result;
    }

    v4 = a3;

    a3 = v4;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double sub_1D6D0A65C@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *a1 & 0x1FFFFFFFFFFFFFFFLL;
  if (v3 >> 61 != 1)
  {
    goto LABEL_6;
  }

  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    *a2 = v6;
    *(a2 + 8) = v5;
    *(a2 + 24) = MEMORY[0x1E69E6158];
  }

  else
  {
LABEL_6:

    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D6D0A744(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v11 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v21 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            __break(1u);
            return result;
          }

          if (v21 >= v8)
          {

            return 1;
          }

          v7 = *(v4 + 8 * v21);
          ++v11;
        }

        while (!v7);
        v11 = v21;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return 0;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v12 = (*(v2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v14 = *v12;
      v13 = v12[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      v15 = sub_1D7264A5C();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v18 = ~v16;
      while (1)
      {
        v19 = (*(a1 + 48) + 16 * v17);
        v20 = *v19 == v14 && v19[1] == v13;
        if (v20 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }

  return 0;
}

uint64_t FormatSnippetNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v114 = a1;
  v5 = type metadata accessor for GroupLayoutContext();
  v110 = *(v5 - 8);
  v6 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v112 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatOption();
  v115 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatNodeBinderContext();
  *(&v121 + 1) = v12;
  *&v122 = &protocol witness table for FormatNodeBinderContext;
  *&v120 = a2;

  v13 = sub_1D6D0C3D8(&v120);
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(&v120);
  }

  v15 = v13;
  v117 = v8;
  v118 = v11;
  v102 = v6;
  v104 = v12;
  v108 = 0;
  v109 = a2;
  __swift_destroy_boxed_opaque_existential_1(&v120);
  swift_beginAccess();
  v16 = v2[3];
  v106 = v2[2];
  swift_beginAccess();
  v17 = *(v15 + 72);
  v18 = *(v17 + 16);
  v113 = v2;
  v111 = v15;
  v107 = v16;
  if (v18)
  {
    *&v120 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v18, 0);
    v19 = v120;
    v20 = *(v115 + 80);
    v105 = v17;
    v21 = v17 + ((v20 + 32) & ~v20);
    v116 = *(v115 + 72);
    do
    {
      v22 = v118;
      sub_1D5D2552C(v21, v118, type metadata accessor for FormatOption);
      v23 = swift_allocBox();
      sub_1D5D5E614(v22, v24, type metadata accessor for FormatOption);
      *&v120 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D5D24610((v25 > 1), v26 + 1, 1);
        v19 = v120;
      }

      *(v19 + 16) = v26 + 1;
      *(v19 + 8 * v26 + 32) = v23 | 0xA000000000000004;
      v21 += v116;
      --v18;
    }

    while (v18);

    v2 = v113;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v27 = v118;
  v28 = v115;
  swift_beginAccess();
  v29 = v2[11];
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  if (v30)
  {
    *&v120 = MEMORY[0x1E69E7CC0];

    sub_1D5D24610(0, v30, 0);
    v31 = v120;
    v32 = *(v28 + 80);
    v115 = v29;
    v33 = v29 + ((v32 + 32) & ~v32);
    v116 = *(v28 + 72);
    do
    {
      sub_1D5D2552C(v33, v27, type metadata accessor for FormatOption);
      v34 = swift_allocBox();
      sub_1D5D5E614(v27, v35, type metadata accessor for FormatOption);
      *&v120 = v31;
      v37 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D5D24610((v36 > 1), v37 + 1, 1);
        v31 = v120;
      }

      *(v31 + 16) = v37 + 1;
      *(v31 + 8 * v37 + 32) = v34 | 0x5000000000000004;
      v33 += v116;
      --v30;
      v27 = v118;
    }

    while (v30);
  }

  v38 = v111;
  *&v120 = v19;
  sub_1D6985C44(v31);
  v39 = v120;
  swift_beginAccess();
  v40 = *(v38 + 80);
  v41 = v113;
  swift_beginAccess();

  v43 = sub_1D5D6021C(v42, v40);
  swift_beginAccess();
  v44 = v41[12];
  v127 = 0;
  memset(v126, 0, sizeof(v126));
  v129 = 0;
  v45 = v109;

  v117 = sub_1D6E8DE74(v106, v107);

  swift_beginAccess();
  v129 = 1;

  v46 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors);
  if (*(v43 + 16) && (sub_1D6D0A744(*(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors), v43) & 1) == 0)
  {
    v47 = 1;
    v129 = 1;

    v46 = sub_1D5D6021C(v48, v46);
  }

  else
  {

    v47 = 0;
  }

  v115 = v46;
  v49 = *(v39 + 16);
  v118 = v43;
  if (v49)
  {
    v50 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
    v51 = sub_1D6F619D8(v39);

    if (v51)
    {
      v116 = v51;
      v128 = 1;
      v129 = 1;
    }

    else
    {
      v128 = v47;

      v116 = v50;
    }
  }

  else
  {
    v128 = v47;

    v116 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options);
  }

  v52 = *(v45 + 40);
  v103 = *(v45 + 32);
  v107 = v52;

  v106 = sub_1D6BEC5F4(v44, v45, &v129);

  v53 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary);
  v54 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 8);
  v56 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 16);
  v55 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 24);
  v57 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 32);
  v58 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 40);
  v59 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48);
  sub_1D62E312C(v53, v54, v56, v55, v57, v58, *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary + 48));
  v60 = sub_1D6BEC878(v126, v45, &v129);
  v62 = *(v45 + 96);
  v122 = *(v45 + 80);
  v123 = v62;
  v124 = *(v45 + 112);
  v125 = *(v45 + 128);
  v63 = *(v45 + 64);
  v120 = *(v45 + 48);
  v121 = v63;
  v105 = v53;
  if (v129 == 1)
  {
    v94 = v61;
    v95 = v60;
    v96 = v59;
    v97 = v58;
    v98 = v57;
    v99 = v55;
    v100 = v56;
    v101 = v54;
    if (v128)
    {
      sub_1D67C846C(0, &qword_1EDF3BDD0, type metadata accessor for FormatContextLayoutOptions, MEMORY[0x1E69D63A0]);
      v64 = v112;
      sub_1D5D2552C(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v112, type metadata accessor for GroupLayoutContext);
      v65 = (*(v110 + 80) + 16) & ~*(v110 + 80);
      v66 = (v102 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
      v68 = swift_allocObject();
      v69 = v68 + v65;
      v45 = v109;
      sub_1D5D5E614(v64, v69, type metadata accessor for GroupLayoutContext);
      v70 = v116;
      *(v68 + v66) = v116;
      v71 = v115;
      *(v68 + v67) = v115;
      sub_1D5CF6A5C(&v120, v119);

      v110 = sub_1D725A80C();
    }

    else
    {
      v72 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions);
      sub_1D5CF6A5C(&v120, v119);
      v110 = v72;

      v64 = v112;
      v71 = v115;
      v70 = v116;
    }

    v73 = *(v45 + 16);
    sub_1D5D2552C(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, v64, type metadata accessor for GroupLayoutContext);
    v74 = *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData);
    sub_1D5B68374(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger, v119);
    v45 = swift_allocObject();
    v75 = v117;
    *(v45 + 16) = v73;
    *(v45 + 24) = v75;
    v76 = v123;
    *(v45 + 80) = v122;
    *(v45 + 96) = v76;
    *(v45 + 112) = v124;
    *(v45 + 128) = v125;
    v77 = v121;
    *(v45 + 48) = v120;
    *(v45 + 64) = v77;
    *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options) = v70;
    *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_selectors) = v71;
    sub_1D5D2552C(v64, v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_layoutContext, type metadata accessor for GroupLayoutContext);
    v78 = v107;
    *(v45 + 32) = v103;
    *(v45 + 40) = v78;
    *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_blocks) = v106;
    *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_debugData) = v74;
    sub_1D5B68374(v119, v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_logger);
    v79 = v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_auxiliary;
    v80 = v100;
    v81 = v101;
    *v79 = v105;
    *(v79 + 8) = v81;
    *(v79 + 16) = v80;
    v82 = v98;
    *(v79 + 24) = v99;
    *(v79 + 32) = v82;
    *(v79 + 40) = v97;
    *(v79 + 48) = v96;
    v83 = (v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack);
    v84 = v94;
    *v83 = v95;
    v83[1] = v84;

    __swift_destroy_boxed_opaque_existential_1(v119);
    sub_1D5CF63C0(v64, type metadata accessor for GroupLayoutContext);
    sub_1D62E3214(v126);
    *(v45 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_lazyContextLayoutOptions) = v110;
  }

  else
  {

    sub_1D62E31A0(v105, v54, v56, v55, v57, v58, v59);

    sub_1D62E3214(v126);
  }

  v85 = v113;
  v86 = v111;
  v87 = *(v111 + 72);

  v88 = v114;
  v89 = v108;
  sub_1D6213004(v114, v45, v87);

  if (v89)
  {
  }

  else
  {
    swift_beginAccess();
    v90 = *(v86 + 88);

    sub_1D62212CC(v88, v45, v90);

    swift_beginAccess();
    v91 = *(v86 + 64);

    sub_1D6215F90(v88, v45, v91);

    v92 = v85[11];

    sub_1D6213004(v88, v45, v92);
  }
}

uint64_t sub_1D6D0B48C()
{
  v2 = v0;
  swift_beginAccess();
  v4 = v0[4];
  v3 = v0[5];
  swift_beginAccess();
  v5 = v0[2];
  v6 = v2[3];
  swift_beginAccess();
  v7 = v2[12];
  sub_1D5EB99F0();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = v6;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 48) = 0;
  *(v8 + 76) = 0x2000;
  *(v8 + 72) = 0;
  v72 = v8;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  v59 = v7;

  sub_1D6C4D418(v10);
  if (v1)
  {
  }

  else
  {
    v11 = v4;

    v12 = v2[11];

    sub_1D626DA28(&v72, v12);

    v14 = v7;
    if (v7 >> 62)
    {
LABEL_31:
      v49 = v14;
      v15 = sub_1D7263BFC();
      v14 = v49;
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v11;
    if (v15)
    {
      v17 = 0;
      v55 = v14 & 0xFFFFFFFFFFFFFF8;
      v56 = v14 & 0xC000000000000001;
      v52 = v14 + 32;
      v53 = v3;
      v54 = v6;
      v50 = v15;
      v51 = v11;
      do
      {
        if (v56)
        {
          v20 = MEMORY[0x1DA6FB460](v17, v14);
          v21 = __OFADD__(v17, 1);
          v22 = v17 + 1;
          if (v21)
          {
LABEL_28:
            __break(1u);
          }
        }

        else
        {
          if (v17 >= *(v55 + 16))
          {
            __break(1u);
            goto LABEL_31;
          }

          v20 = *(v52 + 8 * v17);

          v21 = __OFADD__(v17, 1);
          v22 = v17 + 1;
          if (v21)
          {
            goto LABEL_28;
          }
        }

        v57 = v22;
        v23 = swift_allocObject();
        v24 = MEMORY[0x1E69E7CC0];
        *(v23 + 16) = MEMORY[0x1E69E7CC0];
        *(v23 + 24) = v24;
        *(v23 + 32) = 0u;
        *(v23 + 48) = 0u;
        *(v23 + 64) = 0;
        *(v23 + 76) = -512;
        *(v23 + 72) = 0;
        v71 = v23;
        swift_beginAccess();
        v58 = v20;
        v25 = *(*(v20 + 32) + 16);

        if (v25)
        {
          v27 = (v26 + 72);
          do
          {
            v64 = v25;
            v28 = *(v27 - 5);
            v29 = *(v27 - 3);
            v31 = *v27;
            v30 = v27[1];
            v32 = v27[2];
            v33 = v27[3];
            v34 = v27[4];
            v66 = *v27;
            v67 = v27[5];
            v35 = v27[6];
            v65 = v35;
            if (v29)
            {
              v61 = *(v27 - 1);
              v60 = *(v27 - 4);

              v62 = v34;
              sub_1D5CFDAE4(v31, v30, v32, v33, v34, v67, v35);
              v36 = v29;

              v37 = v71;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = swift_allocObject();
                swift_beginAccess();
                v46 = v37[2];
                v69[0] = v37[1];
                v69[1] = v46;
                v70[0] = v37[3];
                *(v70 + 14) = *(v37 + 62);
                memmove((v45 + 16), v37 + 1, 0x3EuLL);
                sub_1D5EB9AB0(v69, v68);

                v71 = v45;
                v37 = v45;
              }

              v63 = v30;
              swift_beginAccess();
              v38 = *(v37 + 3);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v37 + 3) = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v38 = sub_1D698F85C(0, *(v38 + 2) + 1, 1, v38);
                *(v37 + 3) = v38;
              }

              v41 = *(v38 + 2);
              v40 = *(v38 + 3);
              if (v41 >= v40 >> 1)
              {
                v38 = sub_1D698F85C((v40 > 1), v41 + 1, 1, v38);
              }

              *(v38 + 2) = v41 + 1;
              v42 = &v38[32 * v41];
              *(v42 + 4) = v60;
              *(v42 + 5) = v36;
              *(v42 + 3) = v61;
              *(v37 + 3) = v38;
              swift_endAccess();
              v43 = v33;
              v44 = v62;
              v30 = v63;
            }

            else
            {

              sub_1D5CFDAE4(v66, v30, v32, v33, v34, v67, v35);
              v43 = v33;
              v44 = v34;
            }

            *&v69[0] = v28;

            sub_1D6299090(&v71);

            sub_1D5CFDD14(v66, v30, v32, v43, v44, v67, v65);
            v27 += 13;
            v25 = v64 - 1;
          }

          while (v64 != 1);
        }

        v18 = swift_allocObject();
        v19 = *(v58 + 24);
        v11 = v71;
        *(v18 + 16) = *(v58 + 16);
        *(v18 + 24) = v19;
        *(v18 + 32) = v11;

        sub_1D6C4D24C(v18 | 0x2000000000000000);

        v16 = v51;
        v17 = v57;
        v3 = v53;
        v6 = v54;
        v14 = v59;
      }

      while (v57 != v50);
    }

    v47 = swift_allocObject();
    *(v47 + 16) = v16;
    *(v47 + 24) = v3;
    *(v47 + 32) = 0;
    sub_1D6C4D24C(v47 | 0x5000000000000000);

    v48 = swift_allocObject();
    *(v48 + 16) = v72;

    sub_1D6C4D24C(v48);
  }
}

uint64_t FormatSnippetNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatSnippetNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatSnippetNode.description.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatSnippetNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t FormatSnippetNode.snippetIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatSnippetNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t FormatSnippetNode.description.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t FormatSnippetNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t FormatSnippetNode.options.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

uint64_t FormatSnippetNode.blocks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t FormatSnippetNode.__allocating_init(identifier:snippetIdentifier:name:description:selectors:options:blocks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 64) = 0u;
  *(v18 + 48) = 0u;
  swift_beginAccess();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  swift_beginAccess();
  *(v18 + 48) = a5;
  *(v18 + 56) = a6;

  swift_beginAccess();
  *(v18 + 64) = a7;
  *(v18 + 72) = a8;

  swift_beginAccess();
  *(v18 + 80) = a9;
  swift_beginAccess();
  *(v18 + 88) = a10;
  swift_beginAccess();
  *(v18 + 96) = a11;
  return v18;
}

uint64_t FormatSnippetNode.init(identifier:snippetIdentifier:name:description:selectors:options:blocks:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 64) = 0u;
  *(v11 + 48) = 0u;
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;

  swift_beginAccess();
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;

  swift_beginAccess();
  *(v11 + 80) = a9;
  swift_beginAccess();
  *(v11 + 88) = a10;
  swift_beginAccess();
  *(v11 + 96) = a11;
  return v11;
}

uint64_t FormatSnippetNode.deinit()
{

  return v0;
}

uint64_t FormatSnippetNode.__deallocating_deinit()
{
  FormatSnippetNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6D0C3D8(void *a1)
{
  v2 = v1;
  sub_1D5C2C40C(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-v11];
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 8))(v13, v14) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets;
  swift_beginAccess();
  v16 = *(v15 + 8);

  swift_beginAccess();
  if (*(v16 + 16) && (v17 = *(v2 + 32), v18 = *(v2 + 40), , v25 = sub_1D5B69D90(v17, v18), v20 = v19, , (v20 & 1) != 0))
  {
    sub_1D5D2552C(*(v16 + 56) + *(v5 + 72) * v25, v8, sub_1D5C2C40C);
    sub_1D5D5E614(v8, v12, sub_1D5C2C40C);

    v21 = *v12;

    sub_1D5CF63C0(v12, sub_1D5C2C40C);
  }

  else
  {

    v21 = type metadata accessor for FormatLayoutError();
    sub_1D6D0C878(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v22 = v2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v21;
}

uint64_t sub_1D6D0C6E0(uint64_t a1, uint64_t a2)
{
  result = sub_1D6D0C878(&qword_1EC894EA8, a2, type metadata accessor for FormatSnippetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D0C738(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6D0C878(&qword_1EDF2F1D8, a2, type metadata accessor for FormatSnippetNode);
  a1[2] = sub_1D6D0C878(&qword_1EDF10B68, v3, type metadata accessor for FormatSnippetNode);
  result = sub_1D6D0C878(&qword_1EC894EB0, v4, type metadata accessor for FormatSnippetNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6D0C7E4(uint64_t a1, uint64_t a2)
{
  result = sub_1D6D0C878(&qword_1EC894EB8, a2, type metadata accessor for FormatSnippetNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6D0C878(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t _s8NewsFeed27FormatAccessibilityPropertyO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*a1 >> 60) & 3 | v6;
  if (*(a2 + 8))
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = (v4 >> 60) & 3 | v8;
  if (v7 <= 2)
  {
    if (!v7)
    {
      if (v9)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }

    if (v7 == 1)
    {
      if (v9 == 1)
      {
LABEL_15:
        v16 = v4 & 0xCFFFFFFFFFFFFFFFLL;
        v17 = v2 & 0xCFFFFFFFFFFFFFFFLL;
LABEL_26:
        sub_1D5D07778(v4, v5);
        sub_1D5D07778(v2, v3);
        sub_1D5D07778(v2, v3);
        sub_1D5D07778(v4, v5);
        v10 = _s8NewsFeed26FormatAccessibilityContentO2eeoiySbAC_ACtFZ_0(&v17, &v16);
        sub_1D5D06D9C(v2, v3);
        sub_1D5D06D9C(v4, v5);
        sub_1D5D06D9C(v4, v5);
        sub_1D5D06D9C(v2, v3);
        return v10 & 1;
      }
    }

    else if (v9 == 2)
    {
      goto LABEL_15;
    }

LABEL_22:

LABEL_23:
    sub_1D5D07778(v4, v5);
    sub_1D5D06D9C(v2, v3);
    sub_1D5D06D9C(v4, v5);
    v10 = 0;
    return v10 & 1;
  }

  if (v7 <= 4)
  {
    if (v7 == 3)
    {
      if (v9 != 3)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

    if (v9 != 4)
    {
      goto LABEL_22;
    }

LABEL_25:
    v16 = *a2;
    v17 = v2;
    goto LABEL_26;
  }

  if (v7 == 5)
  {
    if (v9 != 5)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  if (v9 != 6)
  {
    goto LABEL_23;
  }

  LOBYTE(v17) = *a1;
  LOBYTE(v16) = v4;
  v12 = FormatAccessibilityTrait.rawValue.getter();
  v14 = v13;
  if (v12 == FormatAccessibilityTrait.rawValue.getter() && v14 == v15)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  sub_1D5D06D9C(v2, v3);
  sub_1D5D06D9C(v4, v5);

  return v10 & 1;
}

unint64_t sub_1D6D0CB04(uint64_t a1)
{
  result = sub_1D6D0CB2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6D0CB2C()
{
  result = qword_1EC894EC0;
  if (!qword_1EC894EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894EC0);
  }

  return result;
}

unint64_t sub_1D6D0CB80(void *a1)
{
  a1[1] = sub_1D5C66964();
  a1[2] = sub_1D6662194();
  result = sub_1D6D0CBB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6D0CBB8()
{
  result = qword_1EC894EC8[0];
  if (!qword_1EC894EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC894EC8);
  }

  return result;
}

uint64_t sub_1D6D0CC3C(uint64_t result, char a2)
{
  *result = *result & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *(result + 8) = (a2 & 4) != 0;
  return result;
}

uint64_t FeedBannerAdBlueprintModifier.init(updates:policyValidator:layoutCollection:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  sub_1D5B7DDE8(a2, (a4 + 8));
  v6 = *(type metadata accessor for FeedBannerAdBlueprintModifier() + 72);
  v7 = sub_1D725E9DC();
  return (*(*(v7 - 8) + 32))(&a4[v6], a3, v7);
}

void FeedBannerAdBlueprintModifier.modify(blueprint:completion:)(void (*a1)(void, void, void), void (*a2)(void), uint64_t a3, void *a4)
{
  v63 = a2;
  v64 = a3;
  v6 = a4[3];
  v7 = a4[4];
  v8 = a4[7];
  v70 = a4[2];
  v71 = v6;
  v72 = v7;
  v73 = v8;
  v9 = sub_1D725E50C();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v56 - v11;
  v65 = v70;
  v66 = v8;
  v71 = v6;
  v67 = v7;
  v68 = v6;
  v72 = v7;
  v73 = v8;
  v13 = sub_1D725FACC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v57 = &v56 - v16;
  v17 = swift_allocBox();
  v61 = a1;
  v62 = v17;
  v19 = v18;
  v56 = *(v14 + 16);
  v56(v18, a1, v13);
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  v21 = *v69;
  v22 = *(*v69 + 16);
  v23 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = MEMORY[0x1E69E6530];
  *(v20 + 64) = v23;
  *(v20 + 32) = v22;
  sub_1D7262EDC();
  sub_1D725C30C();

  if (*(v21 + 16))
  {
    MEMORY[0x1EEE9AC00](v24, v25);
    v26 = v67;
    v27 = v68;
    *(&v56 - 10) = v65;
    *(&v56 - 9) = v27;
    v29 = a4[5];
    v28 = a4[6];
    *(&v56 - 8) = v26;
    *(&v56 - 7) = v29;
    v58 = v28;
    v30 = v66;
    *(&v56 - 6) = v28;
    *(&v56 - 5) = v30;
    v31 = v69;
    *(&v56 - 4) = v19;
    *(&v56 - 3) = v31;
    v32 = v61;
    *(&v56 - 2) = v61;
    v33 = sub_1D5FBE4F0(sub_1D6D0F4B8, (&v56 - 12), v21);
    if (v33 >> 62)
    {
      v52 = v33;
      v53 = sub_1D7263BFC();
      v33 = v52;
      if (v53)
      {
        goto LABEL_6;
      }
    }

    else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      MEMORY[0x1EEE9AC00](v33, v34);
      *(&v56 - 2) = v35;
      sub_1D6D0F50C();
      v60 = sub_1D725BDCC();

      v36 = v57;
      v56(v57, v32, v13);
      v37 = (*(v14 + 80) + 88) & ~*(v14 + 80);
      v38 = swift_allocObject();
      v40 = v64;
      v39 = v65;
      v41 = v67;
      v42 = v68;
      *(v38 + 2) = v65;
      *(v38 + 3) = v42;
      *(v38 + 4) = v41;
      *(v38 + 5) = v29;
      v69 = v29;
      v43 = v66;
      *(v38 + 6) = v58;
      *(v38 + 7) = v43;
      v44 = v63;
      *(v38 + 8) = v62;
      *(v38 + 9) = v44;
      *(v38 + 10) = v40;
      (*(v14 + 32))(&v38[v37], v36, v13);
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1D6D0F640;
      *(v45 + 24) = v38;

      v46 = sub_1D725B92C();
      sub_1D725BA8C();

      v47 = swift_allocObject();
      v49 = v67;
      v48 = v68;
      v47[2] = v39;
      v47[3] = v48;
      v50 = v69;
      v47[4] = v49;
      v47[5] = v50;
      v47[6] = v58;
      v47[7] = v43;
      v47[8] = v44;
      v47[9] = v40;

      v51 = sub_1D725B92C();
      sub_1D725BACC();

      return;
    }
  }

  v55 = v59;
  v54 = v60;
  (*(v59 + 104))(v12, *MEMORY[0x1E69D7ED0], v60);
  v63(v12);
  (*(v55 + 8))(v12, v54);
}

uint64_t sub_1D6D0D2E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v56 = a8;
  v57 = a4;
  v58 = a3;
  v64 = a9;
  v16 = sub_1D7260DDC();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v60 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v59, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a5;
  v65 = a5;
  v66 = a6;
  v55 = a7;
  v67 = a7;
  v68 = a11;
  v22 = sub_1D725FACC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v48 - v25;
  v54 = a6;
  v52 = a11;
  v27 = sub_1D725CE8C();
  v50 = sub_1D726393C();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v28);
  v30 = &v48 - v29;
  v31 = *(v27 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v48 = (&v48 - v35);
  (*(v23 + 16))(v26, a2, v22, v34);
  sub_1D5BE1514();
  v51 = v36;
  v63 = a1;
  sub_1D726052C();

  sub_1D6AEF51C(v21);
  sub_1D725FA3C();

  (*(v23 + 8))(v26, v22);
  if ((*(v31 + 48))(v30, 1, v27) == 1)
  {
    (*(v49 + 8))(v30, v50);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7273AE0;
    sub_1D726052C();
    v38 = v60;
    v40 = v61;
    v39 = v62;
    (*(v61 + 16))(v60, &v21[*(v59 + 20)], v62);
    sub_1D6AEF51C(v21);
    v41 = sub_1D7260D7C();
    v43 = v42;
    (*(v40 + 8))(v38, v39);
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1D5B7E2C0();
    *(v37 + 32) = v41;
    *(v37 + 40) = v43;
    sub_1D725C30C();

    v45 = 0;
  }

  else
  {
    v46 = v48;
    (*(v31 + 32))(v48, v30, v27);
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v68 = v56;
    v69 = a10;
    v70 = v52;
    v47 = type metadata accessor for FeedBannerAdBlueprintModifier();
    v45 = sub_1D6D0D848(v46, v57, v63, v47);
    result = (*(v31 + 8))(v46, v27);
  }

  *v64 = v45;
  return result;
}

uint64_t sub_1D6D0D848(void (*a1)(uint64_t, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v99 = a1;
  v100 = a2;
  sub_1D5BE1514();
  v6 = v5;
  v91 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v89 = v8;
  v90 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D0F5DC(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v98 = &v86 - v11;
  v12 = sub_1D7258DBC();
  v102 = *(v12 - 8);
  v103 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v97 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D72604BC();
  v15 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v16);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7260DDC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v95 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v86 - v25;
  v27 = type metadata accessor for FeedBannerAd();
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v86 - v33;
  v106 = v6;
  v35 = a3;
  sub_1D726052C();
  v101 = v27;
  v36 = *(v27 + 20);
  v93 = *(v20 + 16);
  v93(v26, &v34[v36], v19);
  sub_1D6AEF51C(v34);
  sub_1D7260DBC();
  v37 = v105;
  v38 = *(v20 + 8);
  v96 = v19;
  v94 = v20 + 8;
  v38(v26, v19);
  if ((*(v15 + 88))(v18, v37) != *MEMORY[0x1E69B3ED8])
  {
    (*(v15 + 8))(v18, v37);
    sub_1D726052C();
    sub_1D6D0F5DC(0, &qword_1EDF3B9A0, type metadata accessor for FeedBannerAd, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  v39 = v35;
  (*(v15 + 96))(v18, v37);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v40 = v104;
  v41 = *(v104 + 24);
  v42 = *(v104 + 32);
  v43 = *(v104 + 56);
  v88 = *(v104 + 16);
  v107 = v88;
  v108 = v41;
  v87 = v41;
  v86 = v42;
  v109 = v42;
  *&v110 = v43;
  v105 = v43;
  sub_1D725FACC();
  v44 = v98;
  sub_1D725FABC();
  v46 = v102;
  v45 = v103;
  if ((*(v102 + 48))(v44, 1, v103) == 1)
  {
    sub_1D6BC6C94(v44);
  }

  else
  {
    v48 = v40;
    v49 = v97;
    (*(v46 + 32))(v97, v44, v45);
    v50 = v92;
    v51 = v48;
    v52 = sub_1D725E9AC();
    v53 = v39;
    if (v52)
    {
      v54 = v52;
      [v52 frame];
      v56 = v55;
      v58 = v57;
      v60 = v59;
      v62 = v61;

      MEMORY[0x1EEE9AC00](v63, v64);
      v65 = v87;
      *(&v86 - 12) = v88;
      *(&v86 - 11) = v65;
      *(&v86 - 10) = v86;
      *(&v86 - 9) = *(v51 + 40);
      *(&v86 - 7) = v105;
      *(&v86 - 6) = v53;
      *(&v86 - 5) = v56;
      *(&v86 - 4) = v58;
      *(&v86 - 3) = v60;
      *(&v86 - 2) = v62;
      *(&v86 - 1) = v50;
      v98 = sub_1D725BDCC();
      v66 = v91;
      v104 = *(v91 + 16);
      v67 = v90;
      v68 = v106;
      (v104)(v90, v53, v106);
      v69 = *(v66 + 80);
      v100 = v53;
      v70 = (v69 + 16) & ~v69;
      v105 = v70 + v89;
      v71 = (v70 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v72 = swift_allocObject();
      v99 = *(v66 + 32);
      v99(v72 + v70, v67, v68);
      v73 = (v72 + v71);
      *v73 = v56;
      v73[1] = v58;
      v73[2] = v60;
      v73[3] = v62;
      v74 = sub_1D725B92C();
      v101 = sub_1D725BA8C();

      (v104)(v67, v100, v68);
      v75 = swift_allocObject();
      v99(v75 + v70, v67, v68);
      v76 = sub_1D725B92C();
      v77 = sub_1D725BB6C();

      (*(v46 + 8))(v97, v103);
      return v77;
    }

    (*(v46 + 8))(v49, v45);
  }

  v78 = v30;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_1D7273AE0;
  sub_1D726052C();
  v80 = &v30[*(v101 + 20)];
  v81 = v95;
  v82 = v96;
  v93(v95, v80, v96);
  sub_1D6AEF51C(v78);
  v83 = sub_1D7260D7C();
  v85 = v84;
  v38(v81, v82);
  *(v79 + 56) = MEMORY[0x1E69E6158];
  *(v79 + 64) = sub_1D5B7E2C0();
  *(v79 + 32) = v83;
  *(v79 + 40) = v85;
  sub_1D725C30C();

  v107 = v88;
  v108 = v87;
  v109 = v86;
  v110 = *(v104 + 40);
  v111 = v105;
  type metadata accessor for FeedBannerAdBlueprintModifier.Errors();
  swift_getWitnessTable();
  swift_allocError();
  sub_1D6D0F5DC(0, &qword_1EDF3B9A0, type metadata accessor for FeedBannerAd, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D6D0E250()
{
  v0 = sub_1D725B92C();
  type metadata accessor for FeedBannerAd();
  v1 = sub_1D725BEFC();

  return v1;
}

uint64_t sub_1D6D0E2AC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v54 = a6;
  v55 = a5;
  v56 = a4;
  v15 = sub_1D725D85C();
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v51 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a7;
  v59 = a8;
  v60 = a9;
  v61 = a12;
  v18 = sub_1D725FACC();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v47 = a8;
  v48 = &v42 - v20;
  v58 = a7;
  v59 = a8;
  v60 = a9;
  v61 = a12;
  v52 = a12;
  v21 = sub_1D725E50C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = &v42 - v24;
  v26 = swift_projectBox();
  v27 = *(a1 + 16);
  if (v27)
  {
    v28 = v26;
    v43 = v25;
    v44 = v22;
    v45 = v21;
    v46 = v15;
    v57 = a9;
    v29 = *(type metadata accessor for FeedBannerAd() - 8);
    v30 = a1 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v31 = v47;
    v32 = *(v29 + 72);
    v33 = v52;
    do
    {
      sub_1D6D0E6A0(v30, v28, a7, v31, v57, a10, a11, v33);
      v30 += v32;
      --v27;
    }

    while (v27);
    swift_beginAccess();
    v35 = v48;
    v34 = v49;
    v36 = v50;
    (*(v49 + 16))(v48, v28, v50);
    v37 = v53;
    v38 = v51;
    v39 = v46;
    (*(v53 + 104))(v51, *MEMORY[0x1E69D7A38], v46);
    v40 = v43;
    sub_1D725E4AC();
    (*(v37 + 8))(v38, v39);
    (*(v34 + 8))(v35, v36);
    v56(v40);
    return (*(v44 + 8))(v40, v45);
  }

  else
  {
    (*(v22 + 104))(v25, *MEMORY[0x1E69D7ED0], v21);
    v56(v25);
    return (*(v22 + 8))(v25, v21);
  }
}

uint64_t sub_1D6D0E6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a6;
  v82 = a1;
  MEMORY[0x1EEE9AC00](a1, a2);
  v73 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D726090C();
  v71 = *(v14 - 8);
  v72 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v70 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D726031C();
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v67 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D726035C();
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v20);
  v63 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a3;
  v79 = a4;
  v80 = a5;
  v81 = a8;
  v22 = sub_1D725FACC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = v60 - v25;
  v75 = a4;
  v76 = a8;
  v27 = sub_1D725CE8C();
  v28 = sub_1D726393C();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = v60 - v31;
  v33 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v34, v35);
  v66 = v60 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v77 = v60 - v39;
  swift_beginAccess();
  (*(v23 + 16))(v26, a2, v22);
  sub_1D725FA3C();
  (*(v23 + 8))(v26, v22);
  if ((*(v33 + 48))(v32, 1, v27) == 1)
  {
    (*(v29 + 8))(v32, v28);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1D7273AE0;
    type metadata accessor for FeedBannerAd();
    v41 = sub_1D7260D7C();
    v43 = v42;
    *(v40 + 56) = MEMORY[0x1E69E6158];
    *(v40 + 64) = sub_1D5B7E2C0();
    *(v40 + 32) = v41;
    *(v40 + 40) = v43;
    sub_1D725C30C();
  }

  else
  {
    v62 = a2;
    (*(v33 + 32))(v77, v32, v27);
    v61 = v33;
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v60[1] = qword_1EDFFC830;
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1D7270C10;
    type metadata accessor for FeedBannerAd();
    v46 = v82;
    v47 = sub_1D7260D7C();
    v49 = v48;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    v50 = sub_1D5B7E2C0();
    *(v45 + 64) = v50;
    *(v45 + 32) = v47;
    *(v45 + 40) = v49;
    v51 = v63;
    sub_1D7260DCC();
    v52 = v67;
    sub_1D726033C();
    (*(v64 + 8))(v51, v65);
    v53 = v70;
    sub_1D726030C();
    (*(v68 + 8))(v52, v69);
    sub_1D72608FC();
    (*(v71 + 8))(v53, v72);
    v54 = sub_1D726210C();
    v56 = v55;

    *(v45 + 96) = MEMORY[0x1E69E6158];
    *(v45 + 104) = v50;
    *(v45 + 72) = v54;
    *(v45 + 80) = v56;
    sub_1D7262EDC();
    sub_1D725C30C();

    (*(v74 + 16))(v46, v75);
    v57 = v66;
    sub_1D725CE6C();
    swift_beginAccess();
    v58 = v77;
    sub_1D725FA6C();
    swift_endAccess();
    v59 = *(v61 + 8);
    v59(v57, v27);
    return (v59)(v58, v27);
  }
}

uint64_t sub_1D6D0EEA0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a9;
  v11 = sub_1D725E50C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v20 - v14;
  if (qword_1EDF1BB68 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7273AE0;
  v21 = 0;
  v22 = 0xE000000000000000;
  v20[1] = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  v17 = v21;
  v18 = v22;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D5B7E2C0();
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  sub_1D725C30C();

  (*(v12 + 104))(v15, *MEMORY[0x1E69D7ED0], v11);
  a2(v15);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D6D0F0E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE46F70](a1, WitnessTable);
}

uint64_t sub_1D6D0F13C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D7260DDC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeedBannerAd();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D726078C();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE1514();
  sub_1D726052C();
  (*(v4 + 16))(v7, &v12[*(v9 + 28)], v3);
  sub_1D6AEF51C(v12);
  sub_1D7260D7C();
  (*(v4 + 8))(v7, v3);
  sub_1D726077C();
  __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
  v17 = sub_1D7260C8C();
  (*(v13 + 8))(v16, v20);
  return v17;
}

uint64_t sub_1D6D0F398()
{
  v0 = sub_1D7260D6C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7260D5C();
  sub_1D5BE1514();
  sub_1D726054C();
  return (*(v1 + 8))(v4, v0);
}

void sub_1D6D0F50C()
{
  if (!qword_1EDF1B470)
  {
    sub_1D6D0F5DC(255, &qword_1EDF1B468, type metadata accessor for FeedBannerAd, MEMORY[0x1E69E62F8]);
    sub_1D5B67994(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B470);
    }
  }
}

void sub_1D6D0F5DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6D0F640(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(sub_1D725FACC() - 8);
  return sub_1D6D0E2AC(a1, a2, *(v2 + 64), *(v2 + 72), *(v2 + 80), v2 + ((*(v11 + 80) + 88) & ~*(v11 + 80)), v5, v6, v7, v8, v9, v10);
}

void sub_1D6D0F78C()
{
  sub_1D6D0F5DC(319, &qword_1EDF1B578, sub_1D5BE1514, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D5B49474(319, &qword_1EDF43908);
    if (v1 <= 0x3F)
    {
      sub_1D725E9DC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D6D0FA44()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1D725811C();

  return v2;
}

uint64_t sub_1D6D0FBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A7A0);
  result = sub_1D725AABC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5534C(0, &qword_1EDF1A770);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B483C4(0, &unk_1EDF3EE20);
  result = sub_1D725AACC();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1A830);
  result = sub_1D725AABC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AC30);
  result = sub_1D725AABC();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for PuzzleNotificationAutoEnableManager();
    v10 = swift_allocObject();
    v10[7] = v5;
    result = sub_1D5B63F14(&v11, (v10 + 2));
    v10[8] = v6;
    v10[9] = v7;
    v10[10] = v8;
    a2[3] = v9;
    a2[4] = &off_1F51A8098;
    *a2 = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1D6D0FDAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5B5A498(0, &qword_1EDF1AB10);
  result = sub_1D725AABC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for LocalRecipeManager();
    v6 = swift_allocObject();
    result = sub_1D605DC44(MEMORY[0x1E69E7CC0]);
    *(v6 + 16) = v4;
    *(v6 + 24) = result;
    a2[3] = v5;
    a2[4] = &protocol witness table for LocalRecipeManager;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OfflineManager.State.description.getter()
{
  if (*(v0 + 8))
  {
    return 0x656E696C66666FLL;
  }

  else
  {
    return 0x656E696C6E6FLL;
  }
}

BOOL static OfflineManager.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v14 = a2[4];
  v13 = a2[5];
  v15 = a2[6];
  if (!v3)
  {
    if (!v10)
    {
      v18 = *a2;
      sub_1D5C39354(*a1, 0);
      sub_1D5C39354(v18, 0);
      return 1;
    }

    goto LABEL_5;
  }

  if (!v10)
  {
LABEL_5:
    v20 = *a2;
    sub_1D6D10118(*a2, v10);
    sub_1D6D10118(v2, v3);
    sub_1D5C39354(v2, v3);
    sub_1D5C39354(v20, v10);
    return 0;
  }

  v22[0] = *a1;
  v22[1] = v3;
  v22[2] = v5;
  v22[3] = v4;
  v22[4] = v7;
  v22[5] = v6;
  v22[6] = v8;
  v21[0] = v9;
  v21[1] = v10;
  v21[2] = v12;
  v21[3] = v11;
  v21[4] = v14;
  v21[5] = v13;
  v21[6] = v15;
  v16 = v9;
  v17 = _s8NewsFeed12OfflineModelV2eeoiySbAC_ACtFZ_0(v22, v21);
  sub_1D6D10118(v16, v10);
  sub_1D6D10118(v2, v3);
  sub_1D5C39354(v2, v3);
  sub_1D5C39354(v16, v10);
  return v17;
}

uint64_t sub_1D6D10118(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

id OfflineManager.clear()()
{
  v1 = (v0 + qword_1EC894F50);
  v2 = *(v0 + qword_1EC894F50);
  *v1 = 0;
  v1[1] = 0;
  sub_1D5B74328(v2);

  return v4;
}

Swift::Void __swiftcall OfflineManager.triggerIfOffline()()
{
  OfflineManager.state.getter(v4);
  if (*(&v4[0] + 1))
  {
    sub_1D5C39354(*&v4[0], *(&v4[0] + 1));
    v1 = *(v0 + qword_1EC894F50);
    if (v1)
    {

      OfflineManager.state.getter(v4);
      v2[0] = v4[0];
      v2[1] = v4[1];
      v2[2] = v4[2];
      v3 = v5;
      v1(v2);
      sub_1D5B74328(v1);
      sub_1D5C39354(*&v2[0], *(&v2[0] + 1));
    }
  }
}

void sub_1D6D1028C(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  _s8NewsFeed14OfflineManagerC28networkReachabilityDidChangeyySo09FCNetworkF4Type_pSgF_0();
  swift_unknownObjectRelease();
}

id OfflineManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OfflineManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s8NewsFeed14OfflineManagerC28networkReachabilityDidChangeyySo09FCNetworkF4Type_pSgF_0()
{
  v1 = *(v0 + qword_1EC894F50);
  if (v1)
  {

    OfflineManager.state.getter(v5);
    v3[0] = v5[0];
    v3[1] = v5[1];
    v3[2] = v5[2];
    v4 = v6;
    v1(v3);
    sub_1D5B74328(v1);
    return sub_1D5C39354(*&v3[0], *(&v3[0] + 1));
  }

  return result;
}

uint64_t sub_1D6D104CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6D1051C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_1D6D1057C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_1D6D10728(void *a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v1 = [a1 sublayers];
  if (v1)
  {
    v2 = v1;
    sub_1D5B5A498(0, &unk_1EDF1A700);
    v3 = sub_1D726267C();

    if (v3 >> 62)
    {
      v4 = sub_1D7263BFC();
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        if (v4 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v4; ++i)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = MEMORY[0x1DA6FB460](i, v3);
          }

          else
          {
            v6 = *(v3 + 8 * i + 32);
          }

          v7 = v6;
          type metadata accessor for FormatBorderLayer();
          if (swift_dynamicCastClass())
          {
            v8 = v7;
            MEMORY[0x1DA6F9CE0]();
            if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
          }

          else
          {
          }
        }
      }
    }
  }
}

void sub_1D6D108BC(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = *a3;
  v4 = a3[1];
  v6 = *(a3 + 24);
  v7 = *(a3 + 25);
  v8 = a3[4];
  v9 = *a4;
  v10 = *(a4 + 8);
  v11 = *(a4 + 16);
  v132[0] = a3[2];
  sub_1D6013498();
  v13 = v12;
  v109 = v4;
  v113 = v6;
  v114 = v5;
  v115 = v11;
  if (v12 == 0.0)
  {
    return;
  }

  v108 = v9;
  v14 = v11;
  if (v11 <= 0xFFFFFFFD)
  {
    v16 = a1;
    v15 = v5;
    v17 = v10;
    v18 = v8;
    if ((v14 & 0x80000000) != 0)
    {
      goto LABEL_69;
    }

    v24 = *(v17 + 16);
    if (v24)
    {
      v25 = 0;
      v26 = (v17 + 32);
      v27 = (v17 + 32);
      v28 = *(v17 + 16);
      do
      {
        v29 = *v27++;
        v30 = qword_1D7349D08[v29];
        if ((v30 & ~v25) == 0)
        {
          v30 = 0;
        }

        v25 |= v30;
        --v28;
      }

      while (v28);
      if (v25 == -1)
      {
        goto LABEL_69;
      }

      v31 = 0;
      do
      {
        v32 = *v26++;
        v33 = qword_1D7349D08[v32];
        if ((v33 & ~v31) == 0)
        {
          v33 = 0;
        }

        v31 |= v33;
        --v24;
      }

      while (v24);
      if (v31 == 15)
      {
LABEL_69:
        if (*(v5 + 16) == 1)
        {

          sub_1D5FCFC4C(v34, v132);

          if (LOBYTE(v132[0]) == 4 && !*(v8 + 16))
          {
            [a1 bounds];
            if ((v14 & 0x80000000) != 0)
            {
              v95 = v90;
              v96 = v13;
              v97 = v91;
              v98 = v92;
              v99 = v93;
              Height = CGRectGetHeight(*&v90);
              v135.origin.x = v95;
              v135.origin.y = v97;
              v13 = v96;
              v135.size.width = v98;
              v135.size.height = v99;
              Width = CGRectGetWidth(v135);
              if (Width >= Height)
              {
                Width = Height;
              }

              v94 = Width * 0.5;
            }

            else
            {
              v94 = *&v108;
              sub_1D5ED34B0(v108, v17, v14);
            }

            v102 = [a1 setCornerRadius_];
            v132[0] = v4;
            v103 = FormatColor.color.getter(v102);
            v22 = [(objc_class *)v103 resolvedColorWithTraitCollection:a2];

            v23 = [v22 CGColor];
            goto LABEL_63;
          }
        }
      }
    }
  }

  else
  {
    v15 = v5;
    v16 = a1;
    v17 = v10;
    v18 = v8;
    if (*(v5 + 16) == 1)
    {

      sub_1D5FCFC4C(v19, v132);

      if (LOBYTE(v132[0]) == 4 && !*(v8 + 16))
      {
        v132[0] = v4;
        v21 = FormatColor.color.getter(v20);
        v22 = [(objc_class *)v21 resolvedColorWithTraitCollection:a2];

        v23 = [v22 CGColor];
LABEL_63:
        v104 = v23;

        [v16 setBorderColor_];

        [v16 setBorderWidth_];
        return;
      }
    }
  }

  v106 = v7;
  v107 = v17;
  Mutable = CGPathCreateMutable();
  v35 = v15 + 56;
  v36 = 1 << *(v15 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v15 + 56);
  v39 = (v36 + 63) >> 6;

  v40 = 0;
  v41 = &off_1E84D3000;
  v111 = v15 + 56;
  v112 = v18;
  v110 = v39;
  while (v38)
  {
LABEL_30:
    v125 = *(*(v15 + 48) + (__clz(__rbit64(v38)) | (v40 << 6)));
    [v16 v41[222]];
    v116 = v38;
    if (v14 <= 0xFFFFFFFD)
    {
      v118 = v46;
      v50 = v45;
      v51 = v44;
      v52 = v43;
      v48 = v107;
      sub_1D5ED34C4(v108, v107, v14);
      [v16 v41[222]];
      v57 = v14;
      v47 = *&v108;
      if ((v14 & 0x80000000) != 0)
      {
        v58 = v53;
        v105 = v13;
        v59 = v54;
        v60 = v55;
        v61 = v56;
        v62 = CGRectGetHeight(*&v53);
        v134.origin.x = v58;
        v134.origin.y = v59;
        v13 = v105;
        v134.size.width = v60;
        v134.size.height = v61;
        v63 = CGRectGetWidth(v134);
        if (v63 >= v62)
        {
          v63 = v62;
        }

        v47 = v63 * 0.5;
        v57 = v108;
        v48 = &unk_1F50F49C8;
      }

      v49 = v57 & 1;
      v43 = v52;
      v44 = v51;
      v45 = v50;
      v46 = v118;
    }

    else
    {
      v47 = 0.0;
      v48 = 0;
      v49 = 0;
    }

    *v123 = v47;
    v123[1] = v48;
    v124 = v49;
    v122 = v113;
    v64 = sub_1D7015C14(v123, &v122, v43, v44, v45, v46, v13);

    v65 = *(v64 + 2);
    if (v65)
    {
      v66 = (v64 + 64);
      do
      {
        v69 = *(v66 - 4);
        v68 = *(v66 - 3);
        v71 = *(v66 - 2);
        v70 = *(v66 - 1);
        v72 = *v66;
        if (*v66)
        {
          sub_1D6959FD8(*(v66 - 4), *(v66 - 3), *(v66 - 2), *(v66 - 1), *v66);
          v67 = [v69 CGPath];
          v132[1] = 0;
          v132[2] = 0;
          v132[0] = 0x3FF0000000000000;
          v132[3] = 0x3FF0000000000000;
          v132[4] = 0;
          v132[5] = 0;
          sub_1D7262EFC();
          sub_1D6959FF0(v69, v68, v71, v70, v72);
        }

        else
        {
          sub_1D620967C();
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_1D7270C10;
          *(v73 + 32) = v69;
          *(v73 + 40) = v68;
          *(v73 + 48) = v71;
          *(v73 + 56) = v70;
          v127 = 0;
          v128 = 0;
          v126 = 0x3FF0000000000000;
          v129 = 0x3FF0000000000000;
          v130 = 0;
          v131 = 0;
          sub_1D7262F3C();
        }

        v66 += 40;
        --v65;
      }

      while (v65);
    }

    v38 = (v116 - 1) & v116;

    v16 = a1;
    v35 = v111;
    v18 = v112;
    v41 = &off_1E84D3000;
    v14 = v115;
    v15 = v114;
    v39 = v110;
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return;
    }

    if (v42 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v42);
    ++v40;
    if (v38)
    {
      v40 = v42;
      goto LABEL_30;
    }
  }

  v74 = sub_1D6209084();
  if (!v74)
  {
    v74 = [objc_allocWithZone(type metadata accessor for FormatBorderLayer()) init];
  }

  v75 = v106;
  v76 = v74;
  [v76 setPath_];
  v77 = [objc_opt_self() clearColor];
  v78 = [v77 CGColor];

  [v76 setFillColor_];
  v123[0] = v109;
  v80 = FormatColor.color.getter(v79);
  v81 = [(objc_class *)v80 resolvedColorWithTraitCollection:a2];

  v82 = [v81 CGColor];
  [v76 setStrokeColor_];

  [v76 setLineWidth_];
  v123[0] = MEMORY[0x1E69E7CC0];
  v83 = *(v18 + 16);
  if (v83)
  {

    v84 = 32;
    do
    {
      v85 = *(v18 + v84);
      v86 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      LODWORD(v87) = v85;
      if ([v86 initWithFloat_])
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
          v41 = &off_1E84D3000;
        }

        sub_1D726278C();
      }

      v84 += 4;
      --v83;
    }

    while (v83);

    v75 = v106;
  }

  sub_1D5B5A498(0, &qword_1EDF1A660);
  v88 = sub_1D726265C();

  [v76 setLineDashPattern_];

  v89 = **(&unk_1E84D00C0 + v75);
  [v76 setLineCap_];

  v120 = v76;
  [v16 v41[222]];
  [v120 setFrame_];

  [v16 addSublayer_];
}

void sub_1D6D111F4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = *(a4 + 16);
  [a1 setBorderColor_];
  [a1 setBorderWidth_];
  sub_1D6D10728(a1);
  v15 = v14;
  v38 = v14;
  if (a3)
  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v31 = a5;
      v32 = a6;
      v30 = a2;
      v17 = a1;
      v18 = (a3 + 64);
      v19 = v11;
      v20 = v13;
      do
      {
        v22 = *(v18 - 4);
        v21 = *(v18 - 3);
        v23 = *(v18 - 2);
        v24 = *(v18 - 4);
        v25 = *v18;
        v18 += 5;
        v35[0] = v22;
        v35[1] = v21;
        v35[2] = v23;
        v36 = v24;
        v37 = v25;
        v33[0] = v12;
        v33[1] = v19;
        v34 = v20;

        sub_1D6D108BC(v17, v30, v35, v33);

        --v16;
      }

      while (v16);
      v15 = v38;
    }
  }

  if (v15 >> 62)
  {
    v26 = sub_1D7263BFC();
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_15;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v26; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1DA6FB460](i, v15);
    }

    else
    {
      v28 = *(v15 + 8 * i + 32);
    }

    v29 = v28;
    [v28 removeFromSuperlayer];
  }

LABEL_15:
}

uint64_t sub_1D6D113D4()
{
  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();

  sub_1D725C6FC();
  sub_1D725C77C();
}

void sub_1D6D114D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v6 + 80);
  v8[3] = *(v6 + 88);
  v8[4] = v7;
  v8[5] = a1;
  v8[6] = a2;
  sub_1D6D11CAC(0, &qword_1EDF17B98, MEMORY[0x1E69D6770]);
  v10 = objc_allocWithZone(v9);

  v11 = sub_1D725B3AC();
  [v3[9] addOperation_];
}

uint64_t sub_1D6D1160C()
{
  v0 = sub_1D725C59C();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69D6188], v0, v3);
  sub_1D725C84C();
  return (*(v1 + 8))(v5, v0);
}

void sub_1D6D11728()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 72);

    [v1 setSuspended_];
  }
}

uint64_t sub_1D6D117A0()
{
  sub_1D725C6BC();
  sub_1D725C66C();
  if (!v0)
  {

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();

    sub_1D725C6BC();
    sub_1D725C66C();

    sub_1D725C6EC();
    sub_1D725C76C();
  }
}

uint64_t sub_1D6D11988()
{
  v0 = sub_1D725C59C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B67AC4(0, &qword_1EDF16870, MEMORY[0x1E69E7FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v12 - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D7261ADC();
    v9 = sub_1D7261B2C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    (*(v1 + 104))(v4, *MEMORY[0x1E69D6188], v0);
    v10 = sub_1D725C7CC();
    (*(v1 + 8))(v4, v0);
    sub_1D5FD676C(v8);

    return v10;
  }

  else
  {
    sub_1D6D11CAC(0, &qword_1EDF3B8E0, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BB1C();
  }
}

uint64_t sub_1D6D11BCC()
{

  return v0;
}

uint64_t sub_1D6D11C24()
{
  sub_1D6D11BCC();

  return swift_deallocClassInstance();
}

void sub_1D6D11CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6D11D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a5;
  sub_1D6D165B0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D165E4(0);
  v56 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v55 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D17098(0);
  v59 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v57 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D17140();
  v63 = v19;
  v60 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v20);
  v58 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D17354();
  v64 = v22;
  v62 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v61 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D726290C();

  v25 = sub_1D72628FC();
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = a3;
  v26[7] = a4;

  v28 = sub_1D72628FC();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v27;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = a3;
  v29[7] = a4;
  sub_1D72619BC();
  v54 = aBlock;
  v53 = v71;
  v52[1] = v72;
  v30 = swift_allocObject();
  v30[2] = a1;
  v30[3] = a2;
  v30[4] = a3;
  v30[5] = a4;
  v66 = a1;
  v67 = a2;
  v68 = a3;
  v69 = a4;
  type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView();
  sub_1D6D16704(0);
  sub_1D6D18708(&qword_1EC8950D8, type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView);
  sub_1D6D18708(&qword_1EC8950E0, sub_1D6D16704);

  v31 = v55;
  sub_1D7260FFC();
  v32 = v31 + *(v56 + 44);
  *v32 = xmmword_1D7286690;
  *(v32 + 16) = xmmword_1D72866A0;
  *(v32 + 32) = 0;
  if (sub_1D6D13A54(a1, a2, a3, a4))
  {
    v33 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v74 = sub_1D6D17480;
    v75 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v71 = 1107296256;
    v72 = sub_1D6E0CD34;
    v73 = &block_descriptor_93;
    v34 = _Block_copy(&aBlock);
    [v33 initWithDynamicProvider_];
    _Block_release(v34);

    v35 = sub_1D726189C();
  }

  else
  {
    v35 = sub_1D726185C();
  }

  aBlock = v35;
  v36 = sub_1D726199C();
  v37 = v57;
  sub_1D6D174F0(v31, v57, sub_1D6D165E4);
  v38 = v59;
  *(v37 + *(v59 + 36)) = v36;
  sub_1D7260EDC();
  v39 = sub_1D6D171C4();
  v40 = v58;
  sub_1D72617DC();
  sub_1D6D18B48(v37, sub_1D6D17098);
  sub_1D72613DC();
  v41 = sub_1D72613EC();
  v42 = *(*(v41 - 8) + 56);
  v42(v12, 0, 1, v41);
  v43 = sub_1D726160C();
  aBlock = v38;
  v71 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v61;
  v46 = v63;
  MEMORY[0x1DA6F8EA0](v12, v43, v63, OpaqueTypeConformance2);
  sub_1D6D18B48(v12, sub_1D6D165B0);
  (*(v60 + 8))(v40, v46);
  sub_1D72613DC();
  v42(v12, 0, 1, v41);
  v47 = sub_1D72615FC();
  aBlock = v46;
  v71 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v47;
  v50 = v64;
  MEMORY[0x1DA6F8EA0](v12, v49, v64, v48);
  sub_1D6D18B48(v12, sub_1D6D165B0);
  return (*(v62 + 8))(v45, v50);
}

uint64_t sub_1D6D12478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v226 = a4;
  v191 = a5;
  v192 = a3;
  v215 = a2;
  v224 = a1;
  sub_1D6D16F24(0);
  v186 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v212 = &v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D16EF0(0);
  v188 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v214 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v187 = &v176 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v213 = &v176 - v18;
  sub_1D6D16CF4(0);
  v183 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v201 = &v176 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D16CC0(0);
  v185 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v190 = &v176 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v184 = &v176 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v220 = &v176 - v30;
  sub_1D6D16AC8(0);
  v176 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v179 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D16A94(0);
  KeyPath = v34;
  MEMORY[0x1EEE9AC00](v34, v35);
  v189 = &v176 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v177 = &v176 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v219 = &v176 - v42;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v176 - v45;
  v47 = type metadata accessor for DebugFormatWorkspace();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47, v50);
  v51 = &v176 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v176 - v54;
  v56 = *(a2 + 16);
  v193 = v57;
  v58 = (a4 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace + *(v57 + 20));
  v59 = v58[10];
  v216 = v58[9];
  v60 = v58[11];
  v225 = a4 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  sub_1D6D18C68(a4 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace, &v176 - v54, type metadata accessor for DebugFormatWorkspace);
  v205 = v55;
  sub_1D6D174F0(v55, v51, type metadata accessor for DebugFormatWorkspace);
  v61 = *(v48 + 80);
  v62 = (v61 + 16) & ~v61;
  v203 = v61;
  v63 = swift_allocObject();
  v204 = v62;
  *&v222 = v51;
  sub_1D6D174F0(v51, v63 + v62, type metadata accessor for DebugFormatWorkspace);
  v243 = 0;
  v242 = 0;
  LOBYTE(v244) = -1;
  sub_1D5B49DA8(0, &unk_1EC88AAB8, &type metadata for DebugFormatFeedViewDescriptor, MEMORY[0x1E69E6720]);
  v65 = v64;
  sub_1D72618EC();
  v209 = v258;
  v210 = v257;
  v208 = v259;
  v211 = v260;
  v66 = sub_1D726294C();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v199 = v67 + 56;
  v200 = v68;
  v68(v46, 1, 1, v66);
  sub_1D726290C();
  v221 = v60;

  v218 = v56;

  v217 = v59;

  v69 = sub_1D72628FC();
  v70 = swift_allocObject();
  v71 = MEMORY[0x1E69E85E0];
  v70[2] = v69;
  v70[3] = v71;
  v70[4] = &unk_1D7349F30;
  v70[5] = v63;
  *&v223 = v46;
  v207 = sub_1D6737878(0, 0, v46, &unk_1D7349F38, v70);

  v72 = v192;
  v73 = v226;
  if (sub_1D6D13A54(v224, v215, v192, v226))
  {
    v74 = [objc_opt_self() secondarySystemBackgroundColor];
    v75 = sub_1D726189C();
  }

  else
  {
    v75 = sub_1D726185C();
  }

  v257 = v75;
  v76 = sub_1D726199C();
  v206 = v76;
  if (v221 && (v78 = *(v221 + 48), v78 != 2) && (v78 & 1) != 0)
  {
    v79 = v205;
    sub_1D6D18C68(v225, v205, type metadata accessor for DebugFormatWorkspace);
    v80 = v222;
    sub_1D6D174F0(v79, v222, type metadata accessor for DebugFormatWorkspace);
    v205 = v65;
    v81 = v204;
    v82 = swift_allocObject();
    sub_1D6D174F0(v80, v82 + v81, type metadata accessor for DebugFormatWorkspace);
    v243 = 0;
    v242 = 0;
    LOBYTE(v244) = -1;
    sub_1D72618EC();
    v204 = v258;
    v205 = v257;
    v202 = v259;
    v203 = v260;
    v83 = v223;
    v200(v223, 1, 1, v66);

    v84 = sub_1D72628FC();
    v85 = swift_allocObject();
    v85[2] = v84;
    v85[3] = MEMORY[0x1E69E85E0];
    v85[4] = &unk_1D7349FB0;
    v85[5] = v82;
    v200 = sub_1D6737878(0, 0, v83, &unk_1D7349FB8, v85);

    LOBYTE(v257) = 0;
    v181 = 0;
    v86 = v72;
    v87 = v73;
    if (sub_1D6D13A54(v224, v215, v72, v73))
    {
      v88 = [objc_opt_self() secondarySystemBackgroundColor];
      v89 = sub_1D726189C();
    }

    else
    {
      v89 = sub_1D726185C();
    }

    v257 = v89;
    v76 = sub_1D726199C();
    v182 = v76;
    v180 = 65792;
    v198 = v216;
    v199 = v218;
    v196 = 0x4030000000000000;
    v197 = v217;
    v194 = 0xC038000000000000;
    v195 = v221;
  }

  else
  {
    v198 = 0;
    v199 = 0;
    v196 = 0;
    v197 = 0;
    v194 = 0;
    v195 = 0;
    v200 = 0;
    v204 = 0;
    v205 = 0;
    v202 = 0;
    v203 = 0;
    v181 = 0;
    v182 = 0;
    v180 = 0;
    v87 = v73;
    v86 = v72;
  }

  v90 = v215;
  MEMORY[0x1EEE9AC00](v76, v77);
  v91 = sub_1D5FBD7E0(sub_1D6D176F4, (&v176 - 4), &unk_1F5113478);
  v92 = sub_1D6302530(v91);

  v257 = v92;
  swift_getKeyPath();
  v93 = swift_allocObject();
  v94 = v224;
  v93[2] = v224;
  v93[3] = v90;
  v93[4] = v86;
  v93[5] = v87;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1D6D17710;
  *(v95 + 24) = v93;
  sub_1D6D16C20(0);
  sub_1D6D18708(&qword_1EC895058, sub_1D6D16C20);
  v96 = sub_1D6D17750();

  v175 = v96;
  v97 = v179;
  sub_1D72619DC();
  sub_1D6D16B30(0);
  v99 = v97 + *(v98 + 36);
  v222 = xmmword_1D72866A0;
  v223 = xmmword_1D7349E30;
  *v99 = xmmword_1D7349E30;
  *(v99 + 16) = xmmword_1D72866A0;
  *(v99 + 32) = 0;
  sub_1D6D16AFC(0);
  *(v97 + *(v100 + 36)) = 1;
  *(v97 + *(v176 + 36)) = 1;
  if (sub_1D6D13A54(v94, v90, v86, v87))
  {
    v101 = [objc_opt_self() secondarySystemBackgroundColor];
    v102 = sub_1D726189C();
  }

  else
  {
    v102 = sub_1D726185C();
  }

  v257 = v102;
  v103 = sub_1D726199C();
  v104 = v177;
  sub_1D6D174F0(v97, v177, sub_1D6D16AC8);
  *(v104 + *(KeyPath + 36)) = v103;
  sub_1D6D174F0(v104, v219, sub_1D6D16A94);
  v257 = *(v225 + *(v193 + 32));
  KeyPath = swift_getKeyPath();
  v105 = swift_allocObject();
  v106 = v224;
  v105[2] = v224;
  v105[3] = v90;
  v105[4] = v86;
  v105[5] = v87;
  sub_1D5EF3A64(0);
  sub_1D6D18708(&qword_1EC8848F0, sub_1D5EF3A64);
  v107 = v86;
  v108 = sub_1D68C37D4();

  v179 = v108;
  v175 = v108;
  v109 = v107;
  v110 = v201;
  sub_1D72619DC();
  v111 = swift_allocObject();
  v111[2] = v106;
  v111[3] = v90;
  v112 = v226;
  v111[4] = v109;
  v111[5] = v112;
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1D6D177B0;
  *(v113 + 24) = v111;
  sub_1D6D16DC4(0);
  v115 = (v110 + *(v114 + 36));
  *v115 = sub_1D6D177BC;
  v115[1] = v113;
  v116 = swift_allocObject();
  v116[2] = v106;
  v116[3] = v90;
  v117 = v226;
  v116[4] = v109;
  v116[5] = v117;
  v118 = swift_allocObject();
  *(v118 + 16) = sub_1D6D177C4;
  *(v118 + 24) = v116;
  sub_1D6D16D90(0);
  v120 = (v110 + *(v119 + 36));
  *v120 = sub_1D6D177D0;
  v120[1] = v118;
  swift_retain_n();
  swift_retain_n();
  sub_1D62D7C2C();
  LOBYTE(v118) = sub_1D61881BC(2);

  sub_1D6D16D5C(0);
  *(v110 + *(v121 + 36)) = (v118 & 1) == 0;
  sub_1D62D7C2C();
  LOBYTE(v118) = sub_1D61881BC(2);

  sub_1D6D16D28(0);
  *(v110 + *(v122 + 36)) = (v118 & 1) == 0;
  v123 = v110 + *(v183 + 36);
  v124 = v222;
  *v123 = v223;
  *(v123 + 16) = v124;
  *(v123 + 32) = 0;
  v125 = v90;
  if (sub_1D6D13A54(v106, v90, v109, v226))
  {
    v126 = [objc_opt_self() secondarySystemBackgroundColor];
    v127 = sub_1D726189C();
  }

  else
  {
    v127 = sub_1D726185C();
  }

  v257 = v127;
  v128 = sub_1D726199C();
  v129 = v184;
  sub_1D6D174F0(v201, v184, sub_1D6D16CF4);
  *(v129 + *(v185 + 36)) = v128;
  sub_1D6D174F0(v129, v220, sub_1D6D16CC0);
  v257 = *(v225 + *(v193 + 36));
  swift_getKeyPath();
  v130 = swift_allocObject();
  v131 = v224;
  v130[2] = v224;
  v130[3] = v90;
  v132 = v131;
  v133 = v226;
  v130[4] = v109;
  v130[5] = v133;
  sub_1D6D17064(0);
  sub_1D6D18708(&qword_1EC8950D0, sub_1D6D17064);

  v175 = v179;
  v134 = v212;
  sub_1D72619DC();
  v135 = swift_allocObject();
  v136 = v132;
  v135[2] = v132;
  v135[3] = v125;
  v137 = v192;
  v135[4] = v192;
  v135[5] = v133;
  v138 = swift_allocObject();
  *(v138 + 16) = sub_1D6D177E4;
  *(v138 + 24) = v135;
  sub_1D6D16FF4(0);
  v140 = (v134 + *(v139 + 36));
  *v140 = sub_1D6D18CD4;
  v140[1] = v138;
  v141 = swift_allocObject();
  v141[2] = v136;
  v141[3] = v125;
  v141[4] = v137;
  v141[5] = v133;
  v142 = swift_allocObject();
  *(v142 + 16) = sub_1D6D177F0;
  *(v142 + 24) = v141;
  sub_1D6D16FC0(0);
  v144 = (v134 + *(v143 + 36));
  *v144 = sub_1D6D18CE0;
  v144[1] = v142;
  swift_retain_n();
  swift_retain_n();
  sub_1D62D7C2C();
  LOBYTE(v142) = sub_1D61881BC(2);

  sub_1D6D16F8C(0);
  *(v134 + *(v145 + 36)) = (v142 & 1) == 0;
  sub_1D62D7C2C();
  LOBYTE(v142) = sub_1D61881BC(2);

  sub_1D6D16F58(0);
  *(v134 + *(v146 + 36)) = (v142 & 1) == 0;
  v147 = v134 + *(v186 + 36);
  v148 = v222;
  *v147 = v223;
  *(v147 + 16) = v148;
  *(v147 + 32) = 0;
  if (sub_1D6D13A54(v136, v125, v137, v133))
  {
    v149 = [objc_opt_self() secondarySystemBackgroundColor];
    v150 = sub_1D726189C();
  }

  else
  {
    v150 = sub_1D726185C();
  }

  v257 = v150;
  v151 = sub_1D726199C();
  v152 = v187;
  sub_1D6D174F0(v212, v187, sub_1D6D16F24);
  *(v152 + *(v188 + 36)) = v151;
  v153 = v213;
  sub_1D6D174F0(v152, v213, sub_1D6D16EF0);
  v154 = v180 | v181;
  v226 = v180 | v181;
  v155 = v189;
  sub_1D6D18C68(v219, v189, sub_1D6D16A94);
  v156 = v190;
  sub_1D6D18C68(v220, v190, sub_1D6D16CC0);
  sub_1D6D18C68(v153, v214, sub_1D6D16EF0);
  *&v227 = v218;
  *(&v227 + 1) = v216;
  *&v228 = v217;
  *(&v228 + 1) = v221;
  *&v229 = v207;
  *(&v229 + 1) = v210;
  *&v230 = v209;
  BYTE8(v230) = v208;
  HIDWORD(v230) = *(v274 + 3);
  *(&v230 + 9) = v274[0];
  *&v231[0] = v211;
  *(v231 + 8) = v223;
  *(&v231[1] + 8) = v222;
  WORD4(v231[2]) = 256;
  BYTE10(v231[2]) = 1;
  HIBYTE(v231[2]) = v276;
  *(&v231[2] + 11) = v275;
  v232 = v206;
  v158 = v231[0];
  v157 = v231[1];
  v159 = v231[2];
  v160 = v191;
  *(v191 + 112) = v206;
  *(v160 + 80) = v157;
  *(v160 + 96) = v159;
  v161 = v227;
  v162 = v228;
  v163 = v229;
  *(v160 + 48) = v230;
  *(v160 + 64) = v158;
  *(v160 + 16) = v162;
  *(v160 + 32) = v163;
  *v160 = v161;
  *&v233 = v199;
  *(&v233 + 1) = v198;
  *&v234 = v197;
  *(&v234 + 1) = v195;
  *&v235 = v200;
  *(&v235 + 1) = v205;
  *&v236 = v204;
  *(&v236 + 1) = v202;
  v237 = v203;
  v238 = 0;
  v239 = v194;
  *&v240 = v196;
  *(&v240 + 1) = v154;
  v164 = v182;
  v241 = v182;
  v165 = v233;
  v166 = v203;
  *(v160 + 168) = v236;
  v167 = v234;
  *(v160 + 152) = v235;
  *(v160 + 136) = v167;
  *(v160 + 120) = v165;
  v168 = v239;
  v169 = v240;
  *(v160 + 232) = v164;
  *(v160 + 216) = v169;
  *(v160 + 200) = v168;
  *(v160 + 184) = v166;
  sub_1D6D1679C();
  v171 = v170;
  sub_1D6D18C68(v155, v160 + *(v170 + 64), sub_1D6D16A94);
  sub_1D6D18C68(v156, v160 + *(v171 + 80), sub_1D6D16CC0);
  v172 = v160 + *(v171 + 96);
  v173 = v214;
  sub_1D6D18C68(v214, v172, sub_1D6D16EF0);
  sub_1D6D18C68(&v227, &v257, sub_1D6D1683C);
  sub_1D6D18C68(&v233, &v257, sub_1D6D16A60);
  sub_1D6D18B48(v213, sub_1D6D16EF0);
  sub_1D6D18B48(v220, sub_1D6D16CC0);
  sub_1D6D18B48(v219, sub_1D6D16A94);
  sub_1D6D18B48(v173, sub_1D6D16EF0);
  sub_1D6D18B48(v156, sub_1D6D16CC0);
  sub_1D6D18B48(v155, sub_1D6D16A94);
  v242 = v199;
  v243 = v198;
  v244 = v197;
  v245 = v195;
  v246 = v200;
  v247 = v205;
  v248 = v204;
  v249 = v202;
  v250 = v203;
  v251 = 0;
  v252 = v194;
  v253 = 0;
  v254 = v196;
  v255 = v226;
  v256 = v164;
  sub_1D6D18B48(&v242, sub_1D6D16A60);
  v257 = v218;
  v258 = v216;
  v259 = v217;
  v260 = v221;
  v261 = v207;
  v262 = v210;
  v263 = v209;
  v264 = v208;
  *v265 = v274[0];
  *&v265[3] = *(v274 + 3);
  v266 = v211;
  v267 = v223;
  v268 = v222;
  v269 = 256;
  v270 = 1;
  v272 = v276;
  v271 = v275;
  v273 = v206;
  return sub_1D6D18B48(&v257, sub_1D6D1683C);
}

uint64_t sub_1D6D13A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DebugFormatWorkspace();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a4 + *(v5 + 20) + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
  v15 = *v14;
  v16 = v14[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if ((*(v6 + 48))(v13, 1, v5))
  {
    sub_1D6D18B48(v13, sub_1D60CB67C);
    v17 = 0;
  }

  else
  {
    sub_1D6D18C68(v13, v9, type metadata accessor for DebugFormatWorkspace);
    sub_1D6D18B48(v13, sub_1D60CB67C);
    v18 = &v9[*(v5 + 20)];
    v20 = *v18;
    v19 = *(v18 + 1);

    sub_1D6D18B48(v9, type metadata accessor for DebugFormatWorkspace);
    if (v15 == v20 && v16 == v19)
    {

      v17 = 1;
    }

    else
    {
      v17 = sub_1D72646CC();
    }
  }

  return v17 & 1;
}

uint64_t sub_1D6D13CAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19[-v10 - 8];
  v12 = *(a3 + 16);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1D6D18C68(v20, v19, sub_1D630BB34);
  sub_1D630BB34();
  sub_1D72618EC();
  sub_1D6D18B48(v20, sub_1D630BB34);
  *a4 = v12;
  v13 = sub_1D726294C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  sub_1D726290C();

  v14 = sub_1D72628FC();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = a1;
  v15[5] = a2;
  result = sub_1D6737550(0, 0, v11, &unk_1D734A000, v15);
  a4[1] = result;
  return result;
}

uint64_t sub_1D6D13E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);

  sub_1D62D7C2C();
  v6 = sub_1D61881BC(2);

  v7 = *(v4 + 16);
  v8 = *(v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  v11 = (v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  if (!v13)
  {
    v12 = 0x64656C7469746E55;
  }

  v14 = 0xE800000000000000;
  v15 = MEMORY[0x1E69E7CC0];
  *a3 = v5;
  if (v13)
  {
    v14 = v13;
  }

  *(a3 + 8) = v8;
  if (v6)
  {
    v15 = &unk_1F51197A8;
  }

  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v12;
  *(a3 + 56) = v14;
  *(a3 + 64) = 0;
  *(a3 + 72) = v15;
}

uint64_t sub_1D6D13FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - v10;
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v14 = a5 + *(type metadata accessor for DebugFormatWorkspace() + 20) + v13;
  v15 = *(v14 + 144);
  v16 = *(v14 + 112);
  v43 = *(v14 + 128);
  v44 = v15;
  v17 = *(v14 + 144);
  v45[0] = *(v14 + 160);
  v18 = *(v14 + 80);
  v20 = *(v14 + 48);
  v39 = *(v14 + 64);
  v19 = v39;
  v40 = v18;
  v21 = *(v14 + 80);
  v22 = *(v14 + 112);
  v41 = *(v14 + 96);
  v23 = v41;
  v42 = v22;
  v24 = *(v14 + 16);
  v25 = *(v14 + 48);
  v37 = *(v14 + 32);
  v26 = v37;
  v38 = v25;
  v27 = *(v14 + 16);
  v36[0] = *v14;
  v28 = v36[0];
  v36[1] = v27;
  *(v12 + 144) = v43;
  *(v12 + 160) = v17;
  *(v12 + 176) = *(v14 + 160);
  *(v12 + 80) = v19;
  *(v12 + 96) = v21;
  *(v12 + 112) = v23;
  *(v12 + 128) = v16;
  *(v12 + 16) = v28;
  *(v12 + 32) = v24;
  *(v45 + 15) = *(v14 + 175);
  *(v12 + 191) = *(v14 + 175);
  *(v12 + 48) = v26;
  *(v12 + 64) = v20;
  sub_1D5ECF1C0(v36, &v35);
  sub_1D5B49DA8(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
  sub_1D6D188D8(&qword_1EC88DB08);
  sub_1D6D188D8(&qword_1EC88DB10);
  sub_1D7262D3C();
  v29 = sub_1D726294C();
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  sub_1D726290C();

  v30 = sub_1D72628FC();
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E85E0];
  v31[2] = v30;
  v31[3] = v32;
  v31[4] = a2;
  v31[5] = a3;
  v31[6] = v34;
  v31[7] = a5;
  v31[8] = v12;
  sub_1D6736BD4(0, 0, v11, &unk_1D7349FF8, v31);
}

uint64_t sub_1D6D1428C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a3;
  v43 = a5;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = sub_1D7258C9C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258C7C();
  sub_1D6D18708(&qword_1EC88DAF0, MEMORY[0x1E6969B50]);
  v17 = sub_1D7261FBC();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    v19 = swift_allocObject();
    v20 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
    v21 = a6 + *(type metadata accessor for DebugFormatWorkspace() + 20) + v20;
    v22 = *(v21 + 144);
    v23 = *(v21 + 112);
    v52 = *(v21 + 128);
    v53 = v22;
    v24 = *(v21 + 144);
    v54[0] = *(v21 + 160);
    v25 = *(v21 + 80);
    v27 = *(v21 + 48);
    v48 = *(v21 + 64);
    v26 = v48;
    v49 = v25;
    v28 = *(v21 + 80);
    v29 = *(v21 + 112);
    v50 = *(v21 + 96);
    v30 = v50;
    v51 = v29;
    v31 = *(v21 + 16);
    v32 = *(v21 + 48);
    v46 = *(v21 + 32);
    v33 = v46;
    v47 = v32;
    v34 = *(v21 + 16);
    v45[0] = *v21;
    v35 = v45[0];
    v45[1] = v34;
    *(v19 + 144) = v52;
    *(v19 + 160) = v24;
    *(v19 + 176) = *(v21 + 160);
    *(v19 + 80) = v26;
    *(v19 + 96) = v28;
    *(v19 + 112) = v30;
    *(v19 + 128) = v23;
    *(v19 + 16) = v35;
    *(v19 + 32) = v31;
    *(v54 + 15) = *(v21 + 175);
    *(v19 + 191) = *(v21 + 175);
    *(v19 + 48) = v33;
    *(v19 + 64) = v27;
    sub_1D5ECF1C0(v45, &v44);
    sub_1D5B49DA8(0, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    sub_1D6D188D8(&qword_1EC88DB08);
    sub_1D7261F8C();
    v36 = sub_1D726294C();
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
    sub_1D726290C();

    v37 = sub_1D72628FC();
    v38 = swift_allocObject();
    v39 = MEMORY[0x1E69E85E0];
    v38[2] = v37;
    v38[3] = v39;
    v40 = v43;
    v38[4] = v42;
    v38[5] = a4;
    v38[6] = v40;
    v38[7] = a6;
    v38[8] = v19;
    sub_1D6736BD4(0, 0, v11, &unk_1D7349FE8, v38);
  }

  return result;
}

uint64_t sub_1D6D1463C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = *(a1 + *(type metadata accessor for DebugFormatWorkspaceGroup() + 20));
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = *(v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    v11 = (v7 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__name);
    swift_beginAccess();
    v13 = *v11;
    v12 = v11[1];
  }

  else
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);

    v13 = 0;
    v12 = 0;
    v8 = 0;
  }

  sub_1D62D7C2C();
  v14 = sub_1D61881BC(2);

  v16 = MEMORY[0x1E69E7CC0];
  v17 = 0x64656C7469746E55;
  *a3 = v5;
  if (v12)
  {
    v17 = v13;
  }

  v18 = 0xE800000000000000;
  *(a3 + 8) = v8;
  if (v12)
  {
    v18 = v12;
  }

  *(a3 + 16) = v10;
  *(a3 + 24) = v9;
  if (v14)
  {
    v16 = &unk_1F51197D8;
  }

  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = 0;
  *(a3 + 72) = v16;
  return result;
}

uint64_t sub_1D6D14798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - v10;
  v12 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v13 = a5 + *(type metadata accessor for DebugFormatWorkspace() + 20) + v12;
  v14 = *(v13 + 144);
  v15 = *(v13 + 112);
  v56 = *(v13 + 128);
  v57 = v14;
  v16 = *(v13 + 144);
  v58[0] = *(v13 + 160);
  v17 = *(v13 + 80);
  v18 = *(v13 + 48);
  v52 = *(v13 + 64);
  v53 = v17;
  v19 = *(v13 + 80);
  v20 = *(v13 + 112);
  v54 = *(v13 + 96);
  v55 = v20;
  v21 = *(v13 + 16);
  v22 = *(v13 + 48);
  v50 = *(v13 + 32);
  v51 = v22;
  v23 = *(v13 + 16);
  v49[0] = *v13;
  v49[1] = v23;
  v44 = v56;
  v45 = v16;
  v46[0] = *(v13 + 160);
  v40 = v52;
  v41 = v19;
  v42 = v54;
  v43 = v15;
  v36 = v49[0];
  v37 = v21;
  *(v58 + 15) = *(v13 + 175);
  *(v46 + 15) = *(v13 + 175);
  v38 = v50;
  v39 = v18;
  sub_1D5ECF1C0(v49, v59);
  sub_1D6D185FC(0);
  sub_1D6D18708(&qword_1EC88DAE0, sub_1D6D185FC);
  sub_1D6D18708(&qword_1EC88DAE8, sub_1D6D185FC);
  sub_1D7262D3C();
  v24 = sub_1D726294C();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  sub_1D726290C();

  v25 = sub_1D72628FC();
  v47[8] = v44;
  v47[9] = v45;
  v48[0] = v46[0];
  *(v48 + 15) = *(v46 + 15);
  v47[4] = v40;
  v47[5] = v41;
  v47[6] = v42;
  v47[7] = v43;
  v47[0] = v36;
  v47[1] = v37;
  v47[2] = v38;
  v47[3] = v39;
  v26 = swift_allocObject();
  v27 = MEMORY[0x1E69E85E0];
  *(v26 + 16) = v25;
  *(v26 + 24) = v27;
  *(v26 + 32) = a2;
  *(v26 + 40) = a3;
  *(v26 + 48) = v35;
  *(v26 + 56) = a5;
  v28 = v45;
  *(v26 + 192) = v44;
  *(v26 + 208) = v28;
  *(v26 + 224) = v46[0];
  *(v26 + 239) = *(v46 + 15);
  v29 = v41;
  *(v26 + 128) = v40;
  *(v26 + 144) = v29;
  v30 = v43;
  *(v26 + 160) = v42;
  *(v26 + 176) = v30;
  v31 = v37;
  *(v26 + 64) = v36;
  *(v26 + 80) = v31;
  v32 = v39;
  *(v26 + 96) = v38;
  *(v26 + 112) = v32;
  sub_1D5ECF1C0(v47, v59);
  sub_1D6736BD4(0, 0, v11, &unk_1D7349FD8, v26);

  v59[8] = v44;
  v59[9] = v45;
  v60[0] = v46[0];
  *(v60 + 15) = *(v46 + 15);
  v59[4] = v40;
  v59[5] = v41;
  v59[6] = v42;
  v59[7] = v43;
  v59[0] = v36;
  v59[1] = v37;
  v59[2] = v38;
  v59[3] = v39;
  return sub_1D5ECF21C(v59);
}

uint64_t sub_1D6D14B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a3;
  v42 = a5;
  sub_1D6D16738(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v41 - v10;
  v12 = sub_1D7258C9C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258C7C();
  sub_1D6D18708(&qword_1EC88DAF0, MEMORY[0x1E6969B50]);
  v17 = sub_1D7261FBC();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    v19 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
    v20 = a6 + *(type metadata accessor for DebugFormatWorkspace() + 20) + v19;
    v21 = *(v20 + 144);
    v22 = *(v20 + 112);
    v61 = *(v20 + 128);
    v62 = v21;
    v23 = *(v20 + 144);
    v63[0] = *(v20 + 160);
    v24 = *(v20 + 80);
    v25 = *(v20 + 48);
    v57 = *(v20 + 64);
    v58 = v24;
    v26 = *(v20 + 80);
    v27 = *(v20 + 112);
    v59 = *(v20 + 96);
    v60 = v27;
    v28 = *(v20 + 16);
    v29 = *(v20 + 48);
    v55 = *(v20 + 32);
    v56 = v29;
    v30 = *(v20 + 16);
    v54[0] = *v20;
    v54[1] = v30;
    v51 = v61;
    v52 = v23;
    v53[0] = *(v20 + 160);
    v47 = v57;
    v48 = v26;
    v49 = v59;
    v50 = v22;
    v43 = v54[0];
    v44 = v28;
    *(v63 + 15) = *(v20 + 175);
    *(v53 + 15) = *(v20 + 175);
    v45 = v55;
    v46 = v25;
    sub_1D5ECF1C0(v54, v66);
    sub_1D6D185FC(0);
    sub_1D6D18708(&qword_1EC88DAE0, sub_1D6D185FC);
    sub_1D7261F8C();
    v31 = sub_1D726294C();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    sub_1D726290C();

    v32 = sub_1D72628FC();
    v66[8] = v51;
    v66[9] = v52;
    v67[0] = v53[0];
    *(v67 + 15) = *(v53 + 15);
    v66[4] = v47;
    v66[5] = v48;
    v66[6] = v49;
    v66[7] = v50;
    v66[0] = v43;
    v66[1] = v44;
    v66[2] = v45;
    v66[3] = v46;
    v33 = swift_allocObject();
    v34 = MEMORY[0x1E69E85E0];
    *(v33 + 16) = v32;
    *(v33 + 24) = v34;
    v35 = v42;
    *(v33 + 32) = v41;
    *(v33 + 40) = a4;
    *(v33 + 48) = v35;
    *(v33 + 56) = a6;
    v36 = v52;
    *(v33 + 192) = v51;
    *(v33 + 208) = v36;
    *(v33 + 224) = v53[0];
    *(v33 + 239) = *(v53 + 15);
    v37 = v48;
    *(v33 + 128) = v47;
    *(v33 + 144) = v37;
    v38 = v50;
    *(v33 + 160) = v49;
    *(v33 + 176) = v38;
    v39 = v44;
    *(v33 + 64) = v43;
    *(v33 + 80) = v39;
    v40 = v46;
    *(v33 + 96) = v45;
    *(v33 + 112) = v40;
    sub_1D5ECF1C0(v66, v64);
    sub_1D6736BD4(0, 0, v11, &unk_1D7349FC8, v33);

    v64[8] = v51;
    v64[9] = v52;
    v65[0] = v53[0];
    *(v65 + 15) = *(v53 + 15);
    v64[4] = v47;
    v64[5] = v48;
    v64[6] = v49;
    v64[7] = v50;
    v64[0] = v43;
    v64[1] = v44;
    v64[2] = v45;
    v64[3] = v46;
    return sub_1D5ECF21C(v64);
  }

  return result;
}

uint64_t sub_1D6D14F48@<X0>(uint64_t a1@<X5>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DebugFormatWorkspace();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if ((*(v5 + 48))(v12, 1, v4))
  {
    result = sub_1D6D18B48(v12, sub_1D60CB67C);
    v14 = 0;
  }

  else
  {
    sub_1D6D18C68(v12, v8, type metadata accessor for DebugFormatWorkspace);
    sub_1D6D18B48(v12, sub_1D60CB67C);
    v15 = &v8[*(v4 + 20)];
    v17 = *v15;
    v16 = *(v15 + 1);

    sub_1D6D18B48(v8, type metadata accessor for DebugFormatWorkspace);
    v18 = (a1 + *(v4 + 20) + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
    if (v17 == *v18 && v16 == v18[1])
    {

      v14 = 1;
    }

    else
    {
      v14 = sub_1D72646CC();
    }
  }

  *a2 = v14 & 1;
  return result;
}

uint64_t sub_1D6D151A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for DebugFormatWorkspace();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60CB67C(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v32 - v23;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if ((*(v9 + 48))(v24, 1, v8))
  {
    sub_1D6D18B48(v24, sub_1D60CB67C);
LABEL_3:
    sub_1D6D18C68(a7 + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace, v20, type metadata accessor for DebugFormatWorkspace);
    (*(v9 + 56))(v20, 0, 1, v8);
    sub_1D6D18C68(v20, v16, sub_1D60CB67C);

    sub_1D725B32C();

    return sub_1D6D18B48(v20, sub_1D60CB67C);
  }

  sub_1D6D18C68(v24, v12, type metadata accessor for DebugFormatWorkspace);
  sub_1D6D18B48(v24, sub_1D60CB67C);
  v26 = &v12[*(v8 + 20)];
  v28 = *v26;
  v27 = *(v26 + 1);

  sub_1D6D18B48(v12, type metadata accessor for DebugFormatWorkspace);
  v29 = (a7 + *(v8 + 20) + OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace);
  if (v28 == *v29 && v27 == v29[1])
  {
  }

  v31 = sub_1D72646CC();

  if ((v31 & 1) == 0)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1D6D154EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[122] = a8;
  v8[121] = a7;
  v8[120] = a5;
  sub_1D726290C();
  v8[123] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[124] = v10;
  v8[125] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D15590, v10, v9);
}

uint64_t sub_1D6D15590()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(*(v0 + 960) + 16);
  *(v0 + 1008) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 64);
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 64) = v7;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 128);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 128) = v10;
  *(v0 + 80) = v8;
  *(v0 + 96) = v9;
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  *(v0 + 191) = *(v1 + 191);
  *(v0 + 160) = v12;
  *(v0 + 176) = v13;
  *(v0 + 144) = v11;
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  *(v0 + 248) = *(v1 + 64);
  *(v0 + 232) = v16;
  *(v0 + 216) = v15;
  *(v0 + 200) = v14;
  v17 = *(v1 + 80);
  v18 = *(v1 + 96);
  v19 = *(v1 + 128);
  *(v0 + 296) = *(v1 + 112);
  *(v0 + 312) = v19;
  *(v0 + 264) = v17;
  *(v0 + 280) = v18;
  v20 = *(v1 + 144);
  v21 = *(v1 + 160);
  v22 = *(v1 + 176);
  *(v0 + 375) = *(v1 + 191);
  *(v0 + 344) = v21;
  *(v0 + 360) = v22;
  *(v0 + 328) = v20;

  sub_1D5ECF1C0(v0 + 16, v0 + 384);
  v23 = swift_task_alloc();
  *(v0 + 1016) = v23;
  *v23 = v0;
  v23[1] = sub_1D6D15714;

  return sub_1D60B4B58(v2 + v4, v0 + 200, v3);
}

uint64_t sub_1D6D15714()
{
  v2 = *v1;
  v3 = (*v1 + 200);
  *(*v1 + 1024) = v0;

  v4 = *v3;
  v5 = *(v2 + 216);
  v6 = *(v2 + 248);
  if (v0)
  {
    *(v2 + 600) = *(v2 + 232);
    *(v2 + 616) = v6;
    *(v2 + 568) = v4;
    *(v2 + 584) = v5;
    v7 = *(v2 + 264);
    v8 = *(v2 + 280);
    v9 = *(v2 + 312);
    *(v2 + 664) = *(v2 + 296);
    *(v2 + 680) = v9;
    *(v2 + 632) = v7;
    *(v2 + 648) = v8;
    v10 = *(v2 + 328);
    v11 = *(v2 + 344);
    v12 = *(v2 + 360);
    *(v2 + 743) = *(v2 + 375);
    *(v2 + 712) = v11;
    *(v2 + 728) = v12;
    *(v2 + 696) = v10;
    sub_1D5ECF21C(v2 + 568);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D1594C;
  }

  else
  {
    *(v2 + 784) = *(v2 + 232);
    *(v2 + 800) = v6;
    *(v2 + 752) = v4;
    *(v2 + 768) = v5;
    v16 = *(v2 + 264);
    v17 = *(v2 + 280);
    v18 = *(v2 + 312);
    *(v2 + 848) = *(v2 + 296);
    *(v2 + 864) = v18;
    *(v2 + 816) = v16;
    *(v2 + 832) = v17;
    v19 = *(v2 + 328);
    v20 = *(v2 + 344);
    v21 = *(v2 + 360);
    *(v2 + 927) = *(v2 + 375);
    *(v2 + 896) = v20;
    *(v2 + 912) = v21;
    *(v2 + 880) = v19;
    sub_1D5ECF21C(v2 + 752);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D158E8;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, v13);
}

uint64_t sub_1D6D158E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6D1594C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6D159B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[96] = a8;
  v8[95] = a7;
  v8[94] = a5;
  sub_1D726290C();
  v8[97] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[98] = v10;
  v8[99] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D15A54, v10, v9);
}

uint64_t sub_1D6D15A54()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(*(v0 + 752) + 16);
  *(v0 + 800) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v5 = *(v1 + 48);
  v7 = *v1;
  v6 = *(v1 + 16);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v1 + 112);
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v12 = *(v1 + 144);
  v11 = *(v1 + 160);
  v13 = *(v1 + 128);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;

  sub_1D5ECF1C0(v1, v0 + 200);
  v14 = swift_task_alloc();
  *(v0 + 808) = v14;
  *v14 = v0;
  v14[1] = sub_1D6D15B80;

  return sub_1D60B4B58(v2 + v4, v0 + 16, v3);
}

uint64_t sub_1D6D15B80()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  if (v0)
  {
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v5;
    *(v2 + 384) = v3;
    *(v2 + 400) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v8;
    *(v2 + 448) = v6;
    *(v2 + 464) = v7;
    v9 = *(v2 + 144);
    v10 = *(v2 + 160);
    v11 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v10;
    *(v2 + 544) = v11;
    *(v2 + 512) = v9;
    sub_1D5ECF21C(v2 + 384);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D18CD0;
  }

  else
  {
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v5;
    *(v2 + 568) = v3;
    *(v2 + 584) = v4;
    v15 = *(v2 + 80);
    v16 = *(v2 + 96);
    v17 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v17;
    *(v2 + 632) = v15;
    *(v2 + 648) = v16;
    v18 = *(v2 + 144);
    v19 = *(v2 + 160);
    v20 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v19;
    *(v2 + 728) = v20;
    *(v2 + 696) = v18;
    sub_1D5ECF21C(v2 + 568);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D18CDC;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, v12);
}

uint64_t sub_1D6D15D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[122] = a8;
  v8[121] = a7;
  v8[120] = a5;
  sub_1D726290C();
  v8[123] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[124] = v10;
  v8[125] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D15DEC, v10, v9);
}

uint64_t sub_1D6D15DEC()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 968);
  v3 = *(*(v0 + 960) + 16);
  *(v0 + 1008) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  v7 = *(v1 + 64);
  *(v0 + 48) = *(v1 + 48);
  *(v0 + 64) = v7;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  v8 = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 128);
  *(v0 + 112) = *(v1 + 112);
  *(v0 + 128) = v10;
  *(v0 + 80) = v8;
  *(v0 + 96) = v9;
  v11 = *(v1 + 144);
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  *(v0 + 191) = *(v1 + 191);
  *(v0 + 160) = v12;
  *(v0 + 176) = v13;
  *(v0 + 144) = v11;
  v14 = *(v1 + 16);
  v15 = *(v1 + 32);
  v16 = *(v1 + 48);
  *(v0 + 248) = *(v1 + 64);
  *(v0 + 232) = v16;
  *(v0 + 216) = v15;
  *(v0 + 200) = v14;
  v17 = *(v1 + 80);
  v18 = *(v1 + 96);
  v19 = *(v1 + 128);
  *(v0 + 296) = *(v1 + 112);
  *(v0 + 312) = v19;
  *(v0 + 264) = v17;
  *(v0 + 280) = v18;
  v20 = *(v1 + 144);
  v21 = *(v1 + 160);
  v22 = *(v1 + 176);
  *(v0 + 375) = *(v1 + 191);
  *(v0 + 344) = v21;
  *(v0 + 360) = v22;
  *(v0 + 328) = v20;

  sub_1D5ECF1C0(v0 + 16, v0 + 384);
  v23 = swift_task_alloc();
  *(v0 + 1016) = v23;
  *v23 = v0;
  v23[1] = sub_1D6D15F70;

  return sub_1D60B4B58(v2 + v4, v0 + 200, v3);
}

uint64_t sub_1D6D15F70()
{
  v2 = *v1;
  v3 = (*v1 + 200);
  *(*v1 + 1024) = v0;

  v4 = *v3;
  v5 = *(v2 + 216);
  v6 = *(v2 + 248);
  if (v0)
  {
    *(v2 + 600) = *(v2 + 232);
    *(v2 + 616) = v6;
    *(v2 + 568) = v4;
    *(v2 + 584) = v5;
    v7 = *(v2 + 264);
    v8 = *(v2 + 280);
    v9 = *(v2 + 312);
    *(v2 + 664) = *(v2 + 296);
    *(v2 + 680) = v9;
    *(v2 + 632) = v7;
    *(v2 + 648) = v8;
    v10 = *(v2 + 328);
    v11 = *(v2 + 344);
    v12 = *(v2 + 360);
    *(v2 + 743) = *(v2 + 375);
    *(v2 + 712) = v11;
    *(v2 + 728) = v12;
    *(v2 + 696) = v10;
    sub_1D5ECF21C(v2 + 568);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D18CD8;
  }

  else
  {
    *(v2 + 784) = *(v2 + 232);
    *(v2 + 800) = v6;
    *(v2 + 752) = v4;
    *(v2 + 768) = v5;
    v16 = *(v2 + 264);
    v17 = *(v2 + 280);
    v18 = *(v2 + 312);
    *(v2 + 848) = *(v2 + 296);
    *(v2 + 864) = v18;
    *(v2 + 816) = v16;
    *(v2 + 832) = v17;
    v19 = *(v2 + 328);
    v20 = *(v2 + 344);
    v21 = *(v2 + 360);
    *(v2 + 927) = *(v2 + 375);
    *(v2 + 896) = v20;
    *(v2 + 912) = v21;
    *(v2 + 880) = v19;
    sub_1D5ECF21C(v2 + 752);
    v13 = *(v2 + 1000);
    v14 = *(v2 + 992);
    v15 = sub_1D6D18CE4;
  }

  return MEMORY[0x1EEE6DFA0](v15, v14, v13);
}

uint64_t sub_1D6D16144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[96] = a8;
  v8[95] = a7;
  v8[94] = a5;
  sub_1D726290C();
  v8[97] = sub_1D72628FC();
  v10 = sub_1D726285C();
  v8[98] = v10;
  v8[99] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D6D161E8, v10, v9);
}

uint64_t sub_1D6D161E8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 760);
  v3 = *(*(v0 + 752) + 16);
  *(v0 + 800) = *(v3 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_workspaceManager);
  v4 = OBJC_IVAR____TtC8NewsFeed33DebugFormatWorkspaceTreeWorkspace_workspace;
  v5 = *(v1 + 48);
  v7 = *v1;
  v6 = *(v1 + 16);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 64) = v5;
  *(v0 + 16) = v7;
  *(v0 + 32) = v6;
  v8 = *(v1 + 112);
  v10 = *(v1 + 64);
  v9 = *(v1 + 80);
  *(v0 + 112) = *(v1 + 96);
  *(v0 + 128) = v8;
  *(v0 + 80) = v10;
  *(v0 + 96) = v9;
  v12 = *(v1 + 144);
  v11 = *(v1 + 160);
  v13 = *(v1 + 128);
  *(v0 + 191) = *(v1 + 175);
  *(v0 + 160) = v12;
  *(v0 + 176) = v11;
  *(v0 + 144) = v13;

  sub_1D5ECF1C0(v1, v0 + 200);
  v14 = swift_task_alloc();
  *(v0 + 808) = v14;
  *v14 = v0;
  v14[1] = sub_1D6D16314;

  return sub_1D60B4B58(v2 + v4, v0 + 16, v3);
}

uint64_t sub_1D6D16314()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  v5 = *(v2 + 64);
  if (v0)
  {
    *(v2 + 416) = *(v2 + 48);
    *(v2 + 432) = v5;
    *(v2 + 384) = v3;
    *(v2 + 400) = v4;
    v6 = *(v2 + 80);
    v7 = *(v2 + 96);
    v8 = *(v2 + 128);
    *(v2 + 480) = *(v2 + 112);
    *(v2 + 496) = v8;
    *(v2 + 448) = v6;
    *(v2 + 464) = v7;
    v9 = *(v2 + 144);
    v10 = *(v2 + 160);
    v11 = *(v2 + 176);
    *(v2 + 559) = *(v2 + 191);
    *(v2 + 528) = v10;
    *(v2 + 544) = v11;
    *(v2 + 512) = v9;
    sub_1D5ECF21C(v2 + 384);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D16540;
  }

  else
  {
    *(v2 + 600) = *(v2 + 48);
    *(v2 + 616) = v5;
    *(v2 + 568) = v3;
    *(v2 + 584) = v4;
    v15 = *(v2 + 80);
    v16 = *(v2 + 96);
    v17 = *(v2 + 128);
    *(v2 + 664) = *(v2 + 112);
    *(v2 + 680) = v17;
    *(v2 + 632) = v15;
    *(v2 + 648) = v16;
    v18 = *(v2 + 144);
    v19 = *(v2 + 160);
    v20 = *(v2 + 176);
    *(v2 + 743) = *(v2 + 191);
    *(v2 + 712) = v19;
    *(v2 + 728) = v20;
    *(v2 + 696) = v18;
    sub_1D5ECF21C(v2 + 568);
    v12 = *(v2 + 792);
    v13 = *(v2 + 784);
    v14 = sub_1D6D164DC;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, v12);
}

uint64_t sub_1D6D164DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6D16540()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D6D16618()
{
  if (!qword_1EC894FC8)
  {
    type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView();
    sub_1D6D16704(255);
    sub_1D6D18708(&qword_1EC8950D8, type metadata accessor for DebugFormatWorkspaceTreeWorkspaceHeaderView);
    sub_1D6D18708(&qword_1EC8950E0, sub_1D6D16704);
    v0 = sub_1D726100C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894FC8);
    }
  }
}

void sub_1D6D16738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6D1679C()
{
  if (!qword_1EC894FD8)
  {
    sub_1D6D1683C(255);
    sub_1D6D16A60(255);
    sub_1D6D16A94(255);
    sub_1D6D16CC0(255);
    sub_1D6D16EF0(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC894FD8);
    }
  }
}

void sub_1D6D168D8()
{
  if (!qword_1EC894FF8)
  {
    sub_1D5F7B9E4();
    v0 = sub_1D726101C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894FF8);
    }
  }
}

void sub_1D6D16938()
{
  if (!qword_1EC895000)
  {
    sub_1D726148C();
    sub_1D6D18708(&qword_1EC895008, MEMORY[0x1E697C918]);
    v0 = sub_1D726141C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895000);
    }
  }
}

void sub_1D6D169CC()
{
  if (!qword_1EC895010)
  {
    sub_1D726146C();
    sub_1D6D18708(&qword_1EC895018, MEMORY[0x1E697C800]);
    v0 = sub_1D726141C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895010);
    }
  }
}

void sub_1D6D16B64()
{
  if (!qword_1EC895048)
  {
    sub_1D6D16C20(255);
    sub_1D6D18708(&qword_1EC895058, sub_1D6D16C20);
    v0 = sub_1D72619FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC895048);
    }
  }
}

void sub_1D6D16C54()
{
  if (!qword_1EC8859B0)
  {
    sub_1D630BAE4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8859B0);
    }
  }
}

void sub_1D6D16E34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D6D18708(a4, a5);
    v8 = sub_1D72619FC();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D6D170CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1D726101C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6D17140()
{
  if (!qword_1EC8950F0)
  {
    sub_1D6D17098(255);
    sub_1D6D171C4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8950F0);
    }
  }
}

unint64_t sub_1D6D171C4()
{
  result = qword_1EC8950F8;
  if (!qword_1EC8950F8)
  {
    sub_1D6D17098(255);
    sub_1D6D17274();
    sub_1D6D18708(&qword_1EC8811A8, sub_1D5F260A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8950F8);
  }

  return result;
}

unint64_t sub_1D6D17274()
{
  result = qword_1EC895100;
  if (!qword_1EC895100)
  {
    sub_1D6D165E4(255);
    sub_1D6D18708(&qword_1EC895108, sub_1D6D16618);
    sub_1D6D18708(&qword_1EC8845E8, sub_1D5F7B9E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895100);
  }

  return result;
}

void sub_1D6D17354()
{
  if (!qword_1EC895110)
  {
    sub_1D6D17140();
    sub_1D6D17098(255);
    sub_1D6D171C4();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC895110);
    }
  }
}

id sub_1D6D17480(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  if (v1 > 2)
  {
    v2 = &selRef_systemGray4Color;
  }

  else
  {
    v2 = off_1E84D00D8[v1];
  }

  v3 = [objc_opt_self() *v2];

  return v3;
}

uint64_t sub_1D6D174F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D17558(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D8020(a1, v1 + v5);
}

uint64_t sub_1D6D17634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D6BB1B94(a1, v4, v5, v6);
}

unint64_t sub_1D6D17750()
{
  result = qword_1EC895118;
  if (!qword_1EC895118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895118);
  }

  return result;
}

uint64_t objectdestroy_12Tm_1()
{
  v1 = type metadata accessor for DebugFormatWorkspace();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for DebugFormatCacheFile();
    if ((*(*(v11 - 8) + 48))(v0 + v3, 1, v11))
    {
      goto LABEL_41;
    }

    v12 = v4 + *(v11 + 28);
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 8);
    v9(v12, v8);
    type metadata accessor for DebugFormatCacheFileMetadata();

    v10 = v4 + *(v11 + 32);
    type metadata accessor for FormatFile();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v13 = type metadata accessor for FormatContent(0);
        v14 = *(v13 + 20);
        v15 = sub_1D725891C();
        (*(*(v15 - 8) + 8))(v10 + v14, v15);

        v16 = *(v13 + 44);
        v17 = sub_1D72608BC();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v10 + v16, 1, v17))
        {
          (*(v18 + 8))(v10 + v16, v17);
        }

        goto LABEL_9;
      case 1u:
LABEL_23:

        if (*(v10 + 106) != 255)
        {
          v28 = *(v10 + 104) | (*(v10 + 106) << 16);
          sub_1D60CF684(*(v10 + 96), v28, SBYTE2(v28));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v10 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v10 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v10 + 168) >= 3uLL)
        {
        }

        v42 = type metadata accessor for FormatPackage();
        v29 = v10 + v42[23];

        v45 = type metadata accessor for FormatCompilerOptions(0);
        v46 = v29 + *(v45 + 24);
        if (*(v46 + 8) != 1)
        {
        }

        v41 = v29;
        v30 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v49 = sub_1D725B76C();
        v43 = *(v49 - 8);
        v44 = *(v43 + 48);
        if (!v44(v46 + v30, 1))
        {
          (*(v43 + 8))(v46 + v30, v49);
        }

        v47 = *(v45 + 28);
        if (!(v44)(v41 + v47, 1, v49))
        {
          (*(v43 + 8))(v41 + v47, v49);
        }

        v9(v10 + v42[24], v8);
        v31 = v42[25];
        if (!(v44)(v10 + v31, 1, v49))
        {
          (*(v43 + 8))(v10 + v31, v49);
        }

        goto LABEL_39;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 72), *(v10 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v19 = v10 + *(type metadata accessor for FormatBindingContent() + 28);

        v20 = type metadata accessor for FormatContent(0);
        v21 = *(v20 + 20);
        v22 = sub_1D725891C();
        (*(*(v22 - 8) + 8))(v19 + v21, v22);

        v23 = *(v20 + 44);
        v24 = sub_1D72608BC();
        v25 = *(v24 - 8);
        v48 = v23;
        v26 = v19 + v23;
        v27 = v24;
        if (!(*(v25 + 48))(v26, 1, v24))
        {
          (*(v25 + 8))(v19 + v48, v27);
        }

LABEL_9:

        goto LABEL_39;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = type metadata accessor for DebugFormatCacheFile();
    if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
    {

      v7 = v4 + *(v6 + 28);
      v8 = sub_1D725BD1C();
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      type metadata accessor for DebugFormatCacheFileMetadata();

      v10 = v4 + *(v6 + 32);
      type metadata accessor for FormatFile();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4();
      sub_1D5B952F8(*(v10 + *(v32 + 44)), *(v10 + *(v32 + 44) + 8));
    }
  }

LABEL_41:

  v33 = (v4 + *(v1 + 24));

  v34 = type metadata accessor for FeedContext();
  v35 = v33 + v34[5];
  v36 = type metadata accessor for BundleSession();
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v37 = *(v36 + 20);
    v38 = sub_1D725891C();
    v4 = v0 + v3;
    (*(*(v38 - 8) + 8))(&v35[v37], v38);
  }

  if (*(v33 + v34[12] + 8) - 1 >= 3)
  {
  }

  v39 = (v4 + *(v1 + 28));
  if (v39[1])
  {

    if (v39[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v39[30] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D6D18520(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D62D847C(a1, v1 + v5);
}

uint64_t sub_1D6D18630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6D16144(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1D6D18708(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_74Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6D18800(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64680;

  return sub_1D6D159B0(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1D6D188D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49DA8(255, &qword_1EC886038, &type metadata for FormatWorkspacePackage, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6D18940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64680;

  return sub_1D6D15D48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_90Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6D18A6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D5B64680;

  return sub_1D6D154EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D6D18B48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6D18BA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64684;

  return sub_1D6BB1B94(a1, v4, v5, v6);
}

uint64_t sub_1D6D18C68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6D18CE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(v8 + 48);
  v10 = ((4 * *(v8 + 50)) | (v9 >> 11) & 3);
  if (v10 > 3)
  {
    if (((4 * *(v8 + 50)) | (v9 >> 11) & 3) > 5u)
    {
      if (v10 != 6)
      {
        if (v10 != 7)
        {
          return sub_1D6D18CE8(result, a2, a3, a4, a5, a6, a7);
        }

        goto LABEL_5;
      }

      goto LABEL_15;
    }

    if (v10 != 4)
    {
      v11 = xmmword_1D7297410;
      goto LABEL_24;
    }

    v12 = v9 >> 13;
    if (v9 >> 13 > 1)
    {
      if (v12 != 2)
      {
        if (v12 == 3)
        {
LABEL_5:
          v11 = xmmword_1D72BAA90;
LABEL_24:
          *a8 = v11;
          goto LABEL_25;
        }

LABEL_15:
        v11 = xmmword_1D728CF30;
        goto LABEL_24;
      }

LABEL_10:
      v11 = xmmword_1D72BAA80;
      goto LABEL_24;
    }

    if (!v12)
    {
      *a8 = 0;
      *(a8 + 8) = 0;
LABEL_25:
      *(a8 + 16) = 0;
      return result;
    }

LABEL_23:
    v11 = xmmword_1D72BAA60;
    goto LABEL_24;
  }

  if (((4 * *(v8 + 50)) | (v9 >> 11) & 3) <= 1u)
  {
    if (!((4 * *(v8 + 50)) | (v9 >> 11) & 3))
    {
      v11 = xmmword_1D72BAA70;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v10 == 2)
  {
    goto LABEL_10;
  }

  v13 = *(v8 + 8);
  *a8 = *v8;
  *(a8 + 8) = v13;
  *(a8 + 16) = 1;
}

void sub_1D6D18E2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v136 = a1;
  v135 = a2;
  sub_1D5C5A148(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
  v126 = v3;
  v125 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v124 = &v123 - v5;
  v130 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v130, v6);
  v131 = (&v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D6D1C448(0, qword_1EDF1EF40, type metadata accessor for FormatOptionsNodeStatementResult);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v129 = (&v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v12);
  v127 = (&v123 - v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  v128 = (&v123 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v123 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v123 - v23);
  v133 = type metadata accessor for FormatOptionsNodeStatementEvaluation();
  v134 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133, v25);
  v132 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D1C448(0, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v123 - v33;
  v35 = type metadata accessor for FormatOptionsNodeStatementResult();
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = (&v123 - v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  v48 = (&v123 - v47);
  v49 = *v2;
  v50 = *(v2 + 8);
  v52 = *(v2 + 16);
  v51 = *(v2 + 24);
  v54 = *(v2 + 32);
  v53 = *(v2 + 40);
  v55 = *(v2 + 48);
  v56 = ((4 * *(v2 + 50)) | (v55 >> 11) & 3);
  if (v56 > 3)
  {
    if (((4 * *(v2 + 50)) | (v55 >> 11) & 3) <= 5u)
    {
      if (v56 != 4)
      {
        v97 = *(v45 + 24);
        v98 = v49;
        v99 = v54;
        v100 = v51;
        v101 = v50;
        v102 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v102 - 8) + 56))(v38 + v97, 1, 1, v102);
        v103 = swift_allocObject();
        *(v103 + 16) = v98;
        *(v103 + 24) = v101;
        *(v103 + 32) = v52;
        *(v103 + 39) = HIBYTE(v52);
        *(v103 + 37) = HIDWORD(v52) >> 8;
        *(v103 + 33) = v52 >> 8;
        *(v103 + 40) = v100;
        *(v103 + 48) = v99;
        *v38 = v103 | 0x1000000000000000;
        v38[1] = 1;
        v104 = v132;
        sub_1D6D1C514(v38, v132, type metadata accessor for FormatOptionsNodeStatementResult);
        v105 = v133;
        swift_storeEnumTagMultiPayload();
        v106 = v104;
        v107 = v135;
        sub_1D6D1C514(v106, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
        (*(v134 + 56))(v107, 0, 1, v105);

        return;
      }

      v77 = v46;
      v78 = v45;
      *&v140 = *v2;
      *(&v140 + 1) = v50;
      LOBYTE(v141) = v52;
      BYTE7(v141) = HIBYTE(v52);
      *(&v141 + 5) = HIDWORD(v52) >> 8;
      *(&v141 + 1) = v52 >> 8;
      *(&v141 + 1) = v51;
      *v142 = v54;
      *&v142[8] = v53;
      *&v142[16] = v55 & 0xE7FF;
      v79 = v128;
      v80 = v137;
      sub_1D7044CB4(v136, v128);
      if (v80)
      {
        return;
      }
    }

    else
    {
      if (v56 != 6)
      {
        v57 = v137;
        v58 = v136;
        if (v56 == 7)
        {
          v59 = v46;
          v60 = v45;
          *&v140 = *v2;
          v61 = v129;
          sub_1D60B1FD0(v136, v129);
          if (v57)
          {
            return;
          }

          if ((*(v59 + 48))(v61, 1, v60) == 1)
          {
            v62 = v61;
LABEL_32:
            sub_1D6D1C49C(v62);
            (*(v134 + 56))(v135, 1, 1, v133);
            return;
          }

          v110 = v61;
          goto LABEL_42;
        }

        v89 = v49[2];
        v145[0] = v49[1];
        v145[1] = v89;
        *v146 = v49[3];
        *&v146[11] = *(v49 + 59);
        v90 = v131;
        sub_1D606818C(v136, v131);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v91 = *v90;
          sub_1D5EB9920();
          v93 = v125;
          v94 = v124;
          v95 = v126;
          (*(v125 + 32))(v124, v90 + *(v92 + 48), v126);
          sub_1D6D1C57C(v145, &v140, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
          sub_1D6F7C7B8(v94, v91, v143);
          v140 = v143[0];
          v141 = v143[1];
          *v142 = *v144;
          *&v142[15] = *&v144[15];
          sub_1D6D18E2C(v58);
          (*(v93 + 8))(v94, v95);
          sub_1D6D1A3E8(v145, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);

          v96 = v143;
        }

        else
        {
          v109 = *v90;
          v108 = v90[1];
          sub_1D6D1C57C(v145, &v140, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
          sub_1D6D1A464(v108, v109, v138);
          if (v57)
          {

            sub_1D6D1A3E8(v145, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
            return;
          }

          v140 = v138[0];
          v141 = v138[1];
          *v142 = *v139;
          *&v142[15] = *&v139[15];
          sub_1D6D18E2C(v58);

          sub_1D6D1A3E8(v145, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
          v96 = &v140;
        }

        sub_1D5CF603C(v96);
        return;
      }

      v77 = v46;
      v78 = v45;
      *&v140 = *v2;
      v79 = v127;
      v81 = v137;
      sub_1D6033ABC(v136, v127);
      if (v81)
      {
        return;
      }
    }

    if ((*(v77 + 48))(v79, 1, v78) == 1)
    {
      v62 = v79;
      goto LABEL_32;
    }

    v110 = v79;
LABEL_42:
    v111 = v132;
    sub_1D6D1C514(v110, v132, type metadata accessor for FormatOptionsNodeStatementResult);
    v112 = v133;
    swift_storeEnumTagMultiPayload();
    v113 = v111;
    v114 = v135;
    sub_1D6D1C514(v113, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
    (*(v134 + 56))(v114, 0, 1, v112);
    return;
  }

  if (((4 * *(v2 + 50)) | (v55 >> 11) & 3) <= 1u)
  {
    v63 = *v2;
    v64 = v45;
    v65 = v137;
    if ((4 * *(v2 + 50)) | (v55 >> 11) & 3)
    {
      v82 = v30;
      v83 = sub_1D6C4356C();
      v84 = sub_1D5E02AFC(v83, v63);

      if (!v65)
      {
        v85 = type metadata accessor for FormatVersionRequirement(0);
        v86 = 1;
        (*(*(v85 - 8) + 56))(v82, 1, 1, v85);
        v87 = swift_allocObject();
        *(v87 + 16) = v84;
        *(v87 + 24) = MEMORY[0x1E69E7CC0];
        v88 = sub_1D6D1BABC(v63);
        if (v88)
        {
          if (*(v88 + 16))
          {
            v86 = sub_1D5B86020(v88);
          }

          else
          {

            v86 = 1;
          }
        }

        *v42 = v87 | 0x3000000000000000;
        v42[1] = v86;
        sub_1D5EA3AFC(v82, v42 + *(v64 + 24));
        v119 = v132;
        sub_1D6D1C514(v42, v132, type metadata accessor for FormatOptionsNodeStatementResult);
        v120 = v133;
        swift_storeEnumTagMultiPayload();
        v121 = v119;
        v122 = v135;
        sub_1D6D1C514(v121, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
        (*(v134 + 56))(v122, 0, 1, v120);
      }
    }

    else
    {
      v66 = sub_1D6C4356C();
      v67 = v65;
      v68 = sub_1D5E03020(v66, v63);

      if (!v67)
      {
        v69 = type metadata accessor for FormatVersionRequirement(0);
        v70 = 1;
        (*(*(v69 - 8) + 56))(v34, 1, 1, v69);
        v71 = swift_allocObject();
        v72 = MEMORY[0x1E69E7CC0];
        *(v71 + 16) = v68;
        *(v71 + 24) = v72;
        v73 = sub_1D6D1BC38(v63);
        if (v73)
        {
          if (*(v73 + 16))
          {
            v70 = sub_1D5B86020(v73);
          }

          else
          {

            v70 = 1;
          }
        }

        *v48 = v71 | 0x4000000000000000;
        v48[1] = v70;
        sub_1D5EA3AFC(v34, v48 + *(v64 + 24));
        v115 = v132;
        sub_1D6D1C514(v48, v132, type metadata accessor for FormatOptionsNodeStatementResult);
        v116 = v133;
        swift_storeEnumTagMultiPayload();
        v117 = v115;
        v118 = v135;
        sub_1D6D1C514(v117, v135, type metadata accessor for FormatOptionsNodeStatementEvaluation);
        (*(v134 + 56))(v118, 0, 1, v116);
      }
    }

    return;
  }

  v74 = v46;
  v75 = v45;
  v76 = v137;
  if (v56 == 2)
  {
    *&v140 = *v2;
    *(&v140 + 1) = v50;
    LOBYTE(v141) = v52;
    BYTE7(v141) = HIBYTE(v52);
    *(&v141 + 5) = HIDWORD(v52) >> 8;
    *(&v141 + 1) = v52 >> 8;
    *(&v141 + 1) = v51;
    *v142 = v54;
    *&v142[8] = v53;
    *&v142[16] = v55 & 0xE7FF;
    sub_1D690A6D4(v136, v24);
    if (v76)
    {
      return;
    }

    if ((*(v74 + 48))(v24, 1, v75) == 1)
    {
      v62 = v24;
      goto LABEL_32;
    }

    v110 = v24;
    goto LABEL_42;
  }

  *&v140 = *v2;
  *(&v140 + 1) = v50;
  LOBYTE(v141) = v52 & 1;
  sub_1D6067C78(v136, v20);
  if (!v76)
  {
    if ((*(v74 + 48))(v20, 1, v75) == 1)
    {
      v62 = v20;
      goto LABEL_32;
    }

    v110 = v20;
    goto LABEL_42;
  }
}

uint64_t static FormatOptionsNodeStatementValue.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v35 = *a1;
  v36 = v2;
  v3 = a2[1];
  v38 = *a2;
  v39 = v3;
  v5 = *a2;
  v4 = a2[1];
  *v40 = a2[2];
  *v37 = a1[2];
  v6 = *v37;
  *&v37[15] = *(a1 + 47);
  *&v40[15] = *(a2 + 47);
  v41[0] = v35;
  v41[1] = v2;
  *v42 = v6;
  *(&v42[1] + 7) = *&v37[15];
  *&v42[3] = v5;
  *&v42[5] = v4;
  *v43 = a2[2];
  *&v43[15] = *(a2 + 47);
  v7 = v35;
  v8 = v2;
  v9 = *(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v2) << 16)) << 32);
  v10 = *(&v2 + 1);
  v11 = *&v37[15] >> 8;
  v12 = ((4 * v37[18]) | (v11 >> 11) & 3);
  if (((4 * v37[18]) | (*&v37[16] >> 11) & 3) <= 3u)
  {
    if (((4 * v37[18]) | ((*&v37[15] >> 8) >> 11) & 3) <= 1u)
    {
      if ((4 * v37[18]) | ((*&v37[15] >> 8) >> 11) & 3)
      {
        if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 1)
        {
          v15 = v38;
          sub_1D5CF5DBC(&v38, v32);
          sub_1D5CF5DBC(&v35, v32);
          v13 = sub_1D633A310(v7, v15);
          goto LABEL_21;
        }
      }

      else if (!((4 * v40[18]) | (*&v40[16] >> 11) & 3))
      {
        v14 = v38;
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        v13 = sub_1D633D10C(v7, v14);
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    if (v12 == 2)
    {
      if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 2)
      {
        v29 = v35;
        LOBYTE(v30) = v2;
        *(&v30 + 1) = *(&v36 + 1);
        BYTE7(v30) = (*(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v2) << 16)) << 32)) >> 48;
        *(&v30 + 5) = *(&v36 + 5);
        *(&v30 + 1) = *(&v2 + 1);
        *v31 = *v37;
        *&v31[16] = v11 & 0xE7FF;
        v25 = v38;
        v26 = v39;
        v27 = *v40;
        v28 = *&v40[16] & 0xE7FF;
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        v13 = _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(&v29, &v25);
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 3)
    {
      v17 = v39;
      if (v35 == v38)
      {
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        sub_1D6D1C604(v41, sub_1D6D1A38C);
        if ((v8 ^ v17))
        {
LABEL_36:
          v16 = 0;
          return v16 & 1;
        }
      }

      else
      {
        v24 = sub_1D72646CC();
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        sub_1D6D1C604(v41, sub_1D6D1A38C);
        if (v24 & 1) == 0 || ((v8 ^ v17))
        {
          goto LABEL_36;
        }
      }

LABEL_44:
      v16 = 1;
      return v16 & 1;
    }

    goto LABEL_34;
  }

  if (((4 * v37[18]) | ((*&v37[15] >> 8) >> 11) & 3) <= 5u)
  {
    if (v12 == 4)
    {
      if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 4)
      {
        v29 = v35;
        LOBYTE(v30) = v2;
        *(&v30 + 1) = *(&v36 + 1);
        BYTE7(v30) = (*(&v36 + 1) | ((*(&v36 + 5) | (BYTE7(v2) << 16)) << 32)) >> 48;
        *(&v30 + 5) = *(&v36 + 5);
        *(&v30 + 1) = *(&v2 + 1);
        *v31 = *v37;
        *&v31[16] = v11 & 0xE7FF;
        v25 = v38;
        v26 = v39;
        v27 = *v40;
        v28 = *&v40[16] & 0xE7FF;
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        v13 = _s8NewsFeed33FormatOptionsNodeStatementBindingO2eeoiySbAC_ACtFZ_0(&v29, &v25);
        goto LABEL_21;
      }

      goto LABEL_34;
    }

    if ((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 5 && (v35 == v38 || (sub_1D72646CC()))
    {
      if (__PAIR128__(v10, v8 | (v9 << 8)) == v39)
      {
        sub_1D5CF5DBC(&v38, v32);
        sub_1D5CF5DBC(&v35, v32);
        sub_1D6D1C604(v41, sub_1D6D1A38C);
        v16 = 1;
        return v16 & 1;
      }

      v22 = sub_1D72646CC();
      sub_1D5CF5DBC(&v38, v32);
      sub_1D5CF5DBC(&v35, v32);
LABEL_43:
      sub_1D6D1C604(v41, sub_1D6D1A38C);
      if ((v22 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_44;
    }

LABEL_34:
    sub_1D5CF5DBC(&v38, v32);
    sub_1D5CF5DBC(&v35, v32);
LABEL_35:
    sub_1D6D1C604(v41, sub_1D6D1A38C);
    goto LABEL_36;
  }

  if (v12 == 6)
  {
    if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) == 6)
    {
      *&v29 = v35;
      *&v25 = v38;
      sub_1D5CF5DBC(&v38, v32);
      sub_1D5CF5DBC(&v35, v32);
      v13 = static FormatDateTime.== infix(_:_:)(&v29, &v25);
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  if (v12 != 7)
  {
    v18 = *(v35 + 16);
    v19 = *(v35 + 40);
    v33[0] = *(v35 + 24);
    v33[1] = v19;
    v34[0] = *(v35 + 56);
    *(v34 + 15) = *(v35 + 71);
    if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) != 8)
    {
      goto LABEL_34;
    }

    v20 = *(v38 + 32);
    *v32 = *(v38 + 16);
    *&v32[16] = v20;
    *&v32[32] = *(v38 + 48);
    *&v32[43] = *(v38 + 59);
    v21 = *v32;
    sub_1D5CF5DBC(&v38, &v29);
    sub_1D5CF5DBC(&v35, &v29);
    sub_1D6D1C57C(v32, &v29, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    if ((sub_1D633CF14(v18, v21) & 1) == 0)
    {
      sub_1D6D1A3E8(v32, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
      goto LABEL_35;
    }

    v29 = *&v32[8];
    v30 = *&v32[24];
    *v31 = *&v32[40];
    *&v31[15] = *&v32[55];
    v22 = static FormatOptionsNodeStatementValue.== infix(_:_:)(v33, &v29);
    sub_1D6D1A3E8(v32, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    goto LABEL_43;
  }

  if (((4 * v40[18]) | (*&v40[16] >> 11) & 3) != 7)
  {
    goto LABEL_34;
  }

  *&v29 = v35;
  *&v25 = v38;
  sub_1D5CF5DBC(&v38, v32);
  sub_1D5CF5DBC(&v35, v32);
  v13 = static FormatURL.== infix(_:_:)(&v29, &v25);
LABEL_21:
  v16 = v13;
  sub_1D6D1C604(v41, sub_1D6D1A38C);
  return v16 & 1;
}

void sub_1D6D1A38C()
{
  if (!qword_1EC895120)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC895120);
    }
  }
}

uint64_t sub_1D6D1A3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1D5C5A148(0, a2, sub_1D62B64C0, &type metadata for FormatOptionsNodeStatementValue, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6D1A464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v4;
  v33 = a3;
  v8 = sub_1D725BC7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v46 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - v14;
  v32 = v3;
  v45 = *v3;
  v16 = *(v45 + 16);

  if (!v16)
  {
LABEL_10:
    sub_1D6D1C604(&v45, sub_1D6D1C664);
    v25 = *(v32 + 3);
    v43[0] = *(v32 + 1);
    v43[1] = v25;
    *v44 = *(v32 + 5);
    v26 = *v44;
    *&v44[15] = *(v32 + 55);
    v27 = *&v44[15];
    v28 = v33;
    *v33 = v43[0];
    v28[1] = v25;
    v28[2] = v26;
    *(v28 + 47) = v27;
    return sub_1D6D1C57C(v43, v42, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
  }

  v18 = (v17 + 32);
  v38 = (v9 + 88);
  v37 = *MEMORY[0x1E69D6B20];
  v36 = *MEMORY[0x1E69D6B28];
  v34 = *MEMORY[0x1E69D6B30];
  v39 = (v9 + 8);
  while (1)
  {
    v20 = v18[1];
    v19 = v18[2];
    v21 = *v18;
    *&v42[43] = *(v18 + 43);
    *&v42[16] = v20;
    *&v42[32] = v19;
    *v42 = v21;
    v41 = v21;
    sub_1D6D1C57C(v42, v40, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);

    sub_1D71C3968(a1, a2, v15);

    if (v5)
    {
      sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
      return sub_1D6D1C604(&v45, sub_1D6D1C664);
    }

    v22 = v46;
    (*(v9 + 16))(v46, v15, v8);
    v23 = (*v38)(v22, v8);
    if (v23 == v37)
    {
      (*v39)(v15, v8);
      sub_1D6D1C604(&v45, sub_1D6D1C664);
      sub_1D5CF5DBC(&v42[8], v40);
      result = sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
      v30 = *&v42[24];
      v31 = v33;
      *v33 = *&v42[8];
      v31[1] = v30;
      v31[2] = *&v42[40];
      *(v31 + 47) = *&v42[55];
      return result;
    }

    if (v23 != v36)
    {
      break;
    }

    (*v39)(v15, v8);
    sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
LABEL_4:
    v18 += 4;
    if (!--v16)
    {
      goto LABEL_10;
    }
  }

  if (v23 != v34)
  {
    v35 = 0;
    v24 = *v39;
    (*v39)(v15, v8);
    sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
    v24(v46, v8);
    v5 = v35;
    goto LABEL_4;
  }

  sub_1D6D1C604(&v45, sub_1D6D1C664);
  type metadata accessor for FormatLayoutError();
  sub_1D5B57420(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_1D6D1A3E8(v42, qword_1EDF2F000, type metadata accessor for FormatSwitchValue.CaseValue);
  return (*v39)(v15, v8);
}

uint64_t sub_1D6D1A9C8()
{
  v1 = *(v0 + 24);
  v2 = ((4 * *(v0 + 50)) | (v1 >> 11) & 3);
  if (v2 <= 3)
  {
    if (((4 * *(v0 + 50)) | (v1 >> 11) & 3) > 1u)
    {
      if (v2 == 2)
      {
        v3 = &unk_1F5118A60;
      }

      else
      {
        v3 = &unk_1F5118A88;
      }
    }

    else if ((4 * *(v0 + 50)) | (v1 >> 11) & 3)
    {
      v3 = &unk_1F5118A38;
    }

    else
    {
      v3 = &unk_1F5118A10;
    }

LABEL_26:

    return sub_1D5E28D48(v3);
  }

  if (((4 * *(v0 + 50)) | (v1 >> 11) & 3) <= 5u)
  {
    if (v2 == 4)
    {
      v4 = v1 >> 13;
      if (v1 >> 13 <= 1)
      {
        if (v4)
        {
          v3 = &unk_1F5118AD8;
        }

        else
        {
          v3 = &unk_1F5118AB0;
        }
      }

      else if (v4 == 2)
      {
        v3 = &unk_1F5118B00;
      }

      else if (v4 == 3)
      {
        v3 = &unk_1F5118B28;
      }

      else
      {
        v3 = &unk_1F5118B50;
      }
    }

    else
    {
      v3 = &unk_1F5118B78;
    }

    goto LABEL_26;
  }

  if (v2 == 6)
  {
    v3 = &unk_1F5118BA0;
    goto LABEL_26;
  }

  if (v2 == 7)
  {
    v3 = &unk_1F5118BC8;
    goto LABEL_26;
  }

  v5 = *v0;
  v6 = *(*v0 + 32);
  v23[0] = *(*v0 + 16);
  v23[1] = v6;
  v24[0] = *(v5 + 48);
  *(v24 + 11) = *(v5 + 59);
  v7 = *(v5 + 40);
  v20 = *(v5 + 24);
  v21 = v7;
  v22[0] = *(v5 + 56);
  *(v22 + 15) = *(v5 + 71);
  v8 = sub_1D6D1C57C(v23, v18, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
  result = sub_1D6D1A9C8(v8);
  v10 = result;
  v11 = *&v23[0];
  v12 = MEMORY[0x1E69E7CC0];
  *&v20 = MEMORY[0x1E69E7CC0];
  v13 = *(*&v23[0] + 16);
  if (v13)
  {
    v14 = 0;
    v15 = *&v23[0] + 40;
    while (v14 < *(v11 + 16))
    {
      v18[0] = *v15;
      v18[1] = *(v15 + 16);
      v19[0] = *(v15 + 32);
      *(v19 + 15) = *(v15 + 47);
      ++v14;
      v16 = sub_1D6D1A9C8(result);
      result = sub_1D6988038(v16);
      v15 += 64;
      if (v13 == v14)
      {
        v12 = v20;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v17 = sub_1D5EEFD2C(v12, v10);

    sub_1D6D1A3E8(v23, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    return v17;
  }

  return result;
}
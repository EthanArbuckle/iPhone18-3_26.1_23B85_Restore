void sub_1D6EA4904(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v42 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v17 = (a2 - a1) / v15;
  v55 = a1;
  v54 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v19;
    if (v19 >= 1)
    {
      v28 = -v15;
      v29 = v27;
      v46 = a4;
      v47 = a1;
      v50 = v8;
      v45 = -v15;
      do
      {
        v43 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v48 = a2;
        v49 = a2 + v28;
        while (1)
        {
          if (v30 <= a1)
          {
            v55 = v30;
            v53 = v43;
            goto LABEL_60;
          }

          v33 = a3;
          v44 = v27;
          a3 += v28;
          v34 = v29 + v28;
          v35 = v51;
          sub_1D6EAAED4(v29 + v28, v51, type metadata accessor for PuzzleLeaderboardEntry);
          v36 = v52;
          sub_1D6EAAED4(v31, v52, type metadata accessor for PuzzleLeaderboardEntry);
          v37 = *(v8 + 28);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          sub_1D6EA2830(v36, type metadata accessor for PuzzleLeaderboardEntry);
          sub_1D6EA2830(v35, type metadata accessor for PuzzleLeaderboardEntry);
          if (v38 < v39)
          {
            break;
          }

          v27 = v34;
          if (v33 < v29 || a3 >= v29)
          {
            v32 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v31 = v49;
            v8 = v32;
            v28 = v45;
          }

          else
          {
            v31 = v49;
            v8 = v50;
            v28 = v45;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v34;
          a1 = v47;
          v30 = v48;
          if (v34 <= v46)
          {
            a2 = v48;
            goto LABEL_59;
          }
        }

        v40 = v46;
        if (v33 < v48 || a3 >= v48)
        {
          a2 = v49;
          v8 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v28 = v45;
        }

        else
        {
          v41 = v33 == v48;
          a2 = v49;
          v8 = v50;
          v27 = v44;
          v28 = v45;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v47;
      }

      while (v29 > v40);
    }

LABEL_59:
    v55 = a2;
    v53 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v53 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v48 = a3;
      v50 = v8;
      do
      {
        v21 = v51;
        sub_1D6EAAED4(a2, v51, type metadata accessor for PuzzleLeaderboardEntry);
        v22 = v52;
        sub_1D6EAAED4(a4, v52, type metadata accessor for PuzzleLeaderboardEntry);
        v23 = *(v8 + 28);
        v24 = *(v21 + v23);
        v25 = *(v22 + v23);
        sub_1D6EA2830(v22, type metadata accessor for PuzzleLeaderboardEntry);
        sub_1D6EA2830(v21, type metadata accessor for PuzzleLeaderboardEntry);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            v8 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v48;
          }

          else
          {
            v26 = v48;
            v8 = v50;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4 + v15;
          a4 += v15;
        }

        else if (a1 < a2 || a1 >= a2 + v15)
        {
          v8 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v15;
          v26 = v48;
        }

        else
        {
          v26 = v48;
          v8 = v50;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v55 = a1;
      }

      while (a4 < v49 && a2 < v26);
    }
  }

LABEL_60:
  sub_1D62FF538(&v55, &v54, &v53);
}

uint64_t _s8NewsFeed43PuzzleStatisticsGameCenterLeaderboardResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D72588AC())
  {
    v4 = type metadata accessor for PuzzleLeaderboardEntry();
    v5 = v4[5];
    v6 = *(a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v6 == *v8 && v7 == v8[1];
    if (v9 || (sub_1D72646CC() & 1) != 0)
    {
      v10 = (a1 + v4[6]);
      v11 = v10[1];
      v12 = v10[2];
      v13 = v10[3];
      v14 = v10[4];
      v15 = v10[5];
      v36[0] = *v10;
      v36[1] = v11;
      v36[2] = v12;
      v36[3] = v13;
      v37 = v14;
      v38 = v15;
      v16 = (a2 + v4[6]);
      v17 = v16[1];
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[4];
      v21 = v16[5];
      v33[0] = *v16;
      v33[1] = v17;
      v33[2] = v18;
      v33[3] = v19;
      v34 = v20;
      v35 = v21;

      sub_1D5F13DE4(v14, v15);

      sub_1D5F13DE4(v20, v21);
      LOBYTE(v13) = _s8NewsFeed12PuzzlePlayerV2eeoiySbAC_ACtFZ_0(v36, v33);
      v22 = v34;
      v23 = v35;

      sub_1D5B952E4(v22, v23);
      v24 = v37;
      v25 = v38;

      sub_1D5B952E4(v24, v25);
      if ((v13 & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]))
      {
        v26 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
        if (sub_1D635F84C(*(a1 + v26[5]), *(a2 + v26[5])) && *(a1 + v26[6]) == *(a2 + v26[6]))
        {
          v27 = v26[7];
          v28 = (a1 + v27);
          v29 = *(a1 + v27 + 8);
          v30 = (a2 + v27);
          v31 = v30[1];
          if (v29)
          {
            if (v31 && (*v28 == *v30 && v29 == v31 || (sub_1D72646CC() & 1) != 0))
            {
              return 1;
            }
          }

          else if (!v31)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

BOOL _s8NewsFeed28PuzzleStatisticsGroupedValueV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  v20 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v20 = 0.0;
  }

  if (*(a2 + 24))
  {
    if (v20 < 0.0)
    {
      return 1;
    }
  }

  else if (v20 < *(a2 + 16))
  {
    return 1;
  }

  if (*a1 < *a2 || *(a1 + 8) < *(a2 + 8))
  {
    return 1;
  }

  v22 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v23 = v22;
  v24 = v22[10];
  v25 = *(a1 + v24);
  if (*(a1 + v24 + 8))
  {
    v25 = 0.0;
  }

  v26 = a2 + v24;
  if (*(v26 + 8))
  {
    if (v25 < 0.0)
    {
      return 1;
    }
  }

  else if (v25 < *v26)
  {
    return 1;
  }

  v27 = v22[9];
  if (*(a1 + v27 + 8))
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + v27);
  }

  v29 = a2 + v27;
  if (*(v29 + 8))
  {
    if (v28 < 0)
    {
      return 1;
    }
  }

  else if (v28 < *v29)
  {
    return 1;
  }

  sub_1D6EA87B4(a1 + v22[8], v19, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v30 = type metadata accessor for PuzzleStreak();
  v36 = *(*(v30 - 8) + 48);
  if (v36(v19, 1, v30) == 1)
  {
    sub_1D6EA8744(v19, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    v31 = 0;
  }

  else
  {
    v31 = PuzzleStreak.days.getter();
    sub_1D6EA2830(v19, type metadata accessor for PuzzleStreak);
  }

  sub_1D6EA87B4(a2 + v23[8], v15, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v36(v15, 1, v30) != 1)
  {
    v32 = PuzzleStreak.days.getter();
    sub_1D6EA2830(v15, type metadata accessor for PuzzleStreak);
    if (v31 >= v32)
    {
      goto LABEL_31;
    }

    return 1;
  }

  sub_1D6EA8744(v15, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v31 < 0)
  {
    return 1;
  }

LABEL_31:
  sub_1D6EA87B4(a1 + v23[7], v11, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v36(v11, 1, v30) == 1)
  {
    sub_1D6EA8744(v11, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    v33 = 0;
  }

  else
  {
    v33 = PuzzleStreak.days.getter();
    sub_1D6EA2830(v11, type metadata accessor for PuzzleStreak);
  }

  sub_1D6EA87B4(a2 + v23[7], v7, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v36(v7, 1, v30) == 1)
  {
    sub_1D6EA8744(v7, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    v34 = 0;
  }

  else
  {
    v34 = PuzzleStreak.days.getter();
    sub_1D6EA2830(v7, type metadata accessor for PuzzleStreak);
  }

  return v33 < v34;
}

BOOL _s8NewsFeed23PuzzleStatisticCategoryO1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v3 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v70 = &v69 - v8;
  v75 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v75, v9);
  v74 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A644(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v73 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v69 = &v69 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v72 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v69 - v22;
  v24 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v69 - v30;
  v32 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v35 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v69 - v38;
  sub_1D6EAAE74(0, &qword_1EDF0D1A8, type metadata accessor for PuzzleStatisticCategory);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v43 = &v69 - v42;
  v45 = *(v44 + 56);
  sub_1D6EAAED4(a1, &v69 - v42, type metadata accessor for PuzzleStatisticCategory);
  sub_1D6EAAED4(v76, &v43[v45], type metadata accessor for PuzzleStatisticCategory);
  type metadata accessor for PuzzleStatisticCategory(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (v47 != 1)
      {
        v48 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
        goto LABEL_18;
      }

      sub_1D6EA8A74(v43, v31, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      sub_1D6EA8A74(&v43[v45], v27, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v54 = _s8NewsFeed20PuzzleStatisticValueO1loiySbAC_ACtFZ_0(v31, v27) && _s8NewsFeed20PuzzleStatisticValueO1loiySbAC_ACtFZ_0(&v31[*(v24 + 20)], &v27[*(v24 + 20)]) && _s8NewsFeed20PuzzleStatisticValueO1loiySbAC_ACtFZ_0(&v31[*(v24 + 24)], &v27[*(v24 + 24)]);
      sub_1D6EA2830(v27, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v58 = v31;
      v63 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
LABEL_28:
      sub_1D6EA2830(v58, v63);
      return v54;
    }

    if (v47)
    {
      v48 = type metadata accessor for PuzzleStatisticValue;
LABEL_18:
      sub_1D6EA2830(v43, v48);
      goto LABEL_19;
    }

    sub_1D6EA8A74(v43, v39, type metadata accessor for PuzzleStatisticValue);
    sub_1D6EA8A74(&v43[v45], v35, type metadata accessor for PuzzleStatisticValue);
    v54 = _s8NewsFeed20PuzzleStatisticValueO1loiySbAC_ACtFZ_0(v39, v35);
    v57 = type metadata accessor for PuzzleStatisticValue;
    sub_1D6EA2830(v35, type metadata accessor for PuzzleStatisticValue);
    v58 = v39;
LABEL_25:
    v63 = v57;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (v47 != 3)
    {
      v48 = type metadata accessor for PuzzleStatisticsGroupedValue;
      goto LABEL_18;
    }

    v55 = v70;
    sub_1D6EA8A74(v43, v70, type metadata accessor for PuzzleStatisticsGroupedValue);
    v56 = v71;
    sub_1D6EA8A74(&v43[v45], v71, type metadata accessor for PuzzleStatisticsGroupedValue);
    v54 = _s8NewsFeed28PuzzleStatisticsGroupedValueV1loiySbAC_ACtFZ_0(v55, v56);
    v57 = type metadata accessor for PuzzleStatisticsGroupedValue;
    sub_1D6EA2830(v56, type metadata accessor for PuzzleStatisticsGroupedValue);
    v58 = v55;
    goto LABEL_25;
  }

  if (v47 == 2)
  {
    sub_1D6EA86C4(v43, v23, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v49 = v72;
    sub_1D6EA86C4(&v43[v45], v72, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v50 = v69;
    sub_1D6EA86C4(v23, v69, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    v51 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
    v52 = *(*(v51 - 8) + 48);
    if (v52(v50, 1, v51) == 1)
    {
      sub_1D6EA8744(v50, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v53 = 0;
    }

    else
    {
      v64 = v74;
      sub_1D6EAAED4(v50, v74, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D6EA2830(v50, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v53 = *(v64 + *(v75 + 32));
      sub_1D6EA2830(v64, type metadata accessor for PuzzleLeaderboardEntry);
    }

    v65 = v73;
    sub_1D6EA86C4(v49, v73, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    if (v52(v65, 1, v51) == 1)
    {
      sub_1D6EA8744(v65, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v66 = 0;
    }

    else
    {
      v67 = v74;
      sub_1D6EAAED4(v65, v74, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D6EA2830(v65, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v66 = *(v67 + *(v75 + 32));
      sub_1D6EA2830(v67, type metadata accessor for PuzzleLeaderboardEntry);
    }

    return v53 < v66;
  }

  sub_1D6EA8744(v43, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_19:
  sub_1D6EA2830(&v43[v45], type metadata accessor for PuzzleStatisticCategory);
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v59 = sub_1D725C42C();
  __swift_project_value_buffer(v59, qword_1EDFFCFA8);
  v60 = sub_1D725C3FC();
  v61 = sub_1D7262EBC();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_1D5B42000, v60, v61, "Can't compare non-matching PuzzleStatisticCategory values", v62, 2u);
    MEMORY[0x1DA6FD500](v62, -1, -1);
  }

  return 0;
}

BOOL _s8NewsFeed20PuzzleStatisticValueO1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v61 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v61 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v63 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v61 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v61 - v31;
  sub_1D6EAAE74(0, &qword_1EC8979F0, type metadata accessor for PuzzleStatisticValue);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = (&v61 - v35);
  v38 = (&v61 + *(v37 + 56) - v35);
  sub_1D6EAAED4(a1, &v61 - v35, type metadata accessor for PuzzleStatisticValue);
  sub_1D6EAAED4(a2, v38, type metadata accessor for PuzzleStatisticValue);
  type metadata accessor for PuzzleStatisticValue(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v40 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (v40 == 3)
        {
LABEL_23:
          if (*(v36 + 8))
          {
            v45 = 0.0;
          }

          else
          {
            v45 = *v36;
          }

          if (*(v38 + 8))
          {
            v46 = 0.0;
          }

          else
          {
            v46 = *v38;
          }

          return *&v45 < *&v46;
        }

        goto LABEL_40;
      }

      if (v40 != 2)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        if (!v40)
        {
          goto LABEL_31;
        }

LABEL_40:
        sub_1D6EA2830(v38, type metadata accessor for PuzzleStatisticValue);
        if (qword_1EDF3B838 != -1)
        {
          swift_once();
        }

        v52 = sub_1D725C42C();
        __swift_project_value_buffer(v52, qword_1EDFFCFA8);
        v53 = sub_1D725C3FC();
        v54 = sub_1D7262EBC();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_1D5B42000, v53, v54, "Can't compare non-matching PuzzleStatisticValue values", v55, 2u);
          MEMORY[0x1DA6FD500](v55, -1, -1);
        }

        return 0;
      }

      if (v40 != 1)
      {
        goto LABEL_40;
      }
    }

    v45 = *v36;
    v46 = *v38;
    return *&v45 < *&v46;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (v40 != 4)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

    if (v40 == 5)
    {
      sub_1D6EA86C4(v36, v32, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA86C4(v38, v28, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA87B4(v32, v24, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v50 = type metadata accessor for PuzzleStreak();
      v51 = *(*(v50 - 8) + 48);
      if (v51(v24, 1, v50) == 1)
      {
        sub_1D6EA8744(v24, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v44 = 0;
      }

      else
      {
        v44 = PuzzleStreak.days.getter();
        sub_1D6EA2830(v24, type metadata accessor for PuzzleStreak);
      }

      v60 = v63;
      sub_1D6EA87B4(v28, v63, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      if (v51(v60, 1, v50) == 1)
      {
        sub_1D6EA8744(v28, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA8744(v32, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v57 = v60;
        goto LABEL_52;
      }

      v58 = PuzzleStreak.days.getter();
      sub_1D6EA8744(v28, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA8744(v32, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v59 = v60;
LABEL_54:
      sub_1D6EA2830(v59, type metadata accessor for PuzzleStreak);
      return v44 < v58;
    }

LABEL_39:
    sub_1D6EA8744(v36, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (v40 == 6)
    {
      v41 = v62;
      sub_1D6EA86C4(v36, v62, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA86C4(v38, v14, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA87B4(v41, v10, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v42 = type metadata accessor for PuzzleStreak();
      v43 = *(*(v42 - 8) + 48);
      if (v43(v10, 1, v42) == 1)
      {
        sub_1D6EA8744(v10, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v44 = 0;
      }

      else
      {
        v44 = PuzzleStreak.days.getter();
        sub_1D6EA2830(v10, type metadata accessor for PuzzleStreak);
      }

      v56 = v64;
      sub_1D6EA87B4(v14, v64, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      if (v43(v56, 1, v42) == 1)
      {
        sub_1D6EA8744(v14, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA8744(v41, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v57 = v56;
LABEL_52:
        sub_1D6EA8744(v57, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v58 = 0;
        return v44 < v58;
      }

      v58 = PuzzleStreak.days.getter();
      sub_1D6EA8744(v14, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      sub_1D6EA8744(v41, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      v59 = v56;
      goto LABEL_54;
    }

    goto LABEL_39;
  }

  if (EnumCaseMultiPayload == 7)
  {
    if (v40 != 7)
    {
      goto LABEL_40;
    }

    goto LABEL_23;
  }

  if (v40 != 8)
  {
    goto LABEL_40;
  }

LABEL_31:
  v48 = *v36;
  v49 = *v38;
  if (*(v36 + 8))
  {
    v48 = 0.0;
  }

  if (*(v38 + 8))
  {
    v49 = 0.0;
  }

  return v48 < v49;
}

BOOL _s8NewsFeed28PuzzleStatisticsGroupedValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PuzzleStreak();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v98 - v14;
  sub_1D6EAAF98(0, &qword_1EC8979F8, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v25 = &v98 - v24;
  if (*v23 != *a2 || *(v23 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v26 = *(a2 + 24);
  if (*(v23 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(v23 + 16) != *(a2 + 16))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v102 = v7;
  v27 = v22;
  v28 = v23;
  v29 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  v103 = a2;
  v99 = v27;
  v100 = v29;
  v30 = *(v29 + 28);
  v31 = *(v27 + 48);
  v101 = v28;
  v32 = v28 + v30;
  v33 = v31;
  sub_1D6EA87B4(v32, v25, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  sub_1D6EA87B4(v103 + v30, &v25[v33], &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v34 = *(v4 + 48);
  if (v34(v25, 1, v3) == 1)
  {
    v35 = v34(&v25[v33], 1, v3);
    v36 = v102;
    if (v35 == 1)
    {
      v98 = v34;
      sub_1D6EA8744(v25, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      goto LABEL_16;
    }

LABEL_14:
    v39 = v25;
LABEL_22:
    sub_1D6EAAF3C(v39, &qword_1EC8979F8, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    return 0;
  }

  sub_1D6EA87B4(v25, v15, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v37 = v33;
  v38 = v34(&v25[v33], 1, v3);
  v36 = v102;
  if (v38 == 1)
  {
    sub_1D6EA2830(v15, type metadata accessor for PuzzleStreak);
    goto LABEL_14;
  }

  v98 = v34;
  sub_1D6EA8A74(&v25[v37], v102, type metadata accessor for PuzzleStreak);
  v40 = PuzzleStreak.days.getter();
  v41 = PuzzleStreak.days.getter();
  sub_1D6EA2830(v36, type metadata accessor for PuzzleStreak);
  sub_1D6EA2830(v15, type metadata accessor for PuzzleStreak);
  sub_1D6EA8744(v25, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v40 != v41)
  {
    return 0;
  }

LABEL_16:
  v42 = v100;
  v43 = v100[8];
  v44 = *(v99 + 48);
  sub_1D6EA87B4(v101 + v43, v19, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v45 = v103 + v43;
  v46 = v103;
  sub_1D6EA87B4(v45, &v19[v44], &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v47 = v98;
  if (v98(v19, 1, v3) == 1)
  {
    if (v47(&v19[v44], 1, v3) == 1)
    {
      sub_1D6EA8744(v19, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
      goto LABEL_26;
    }

    goto LABEL_21;
  }

  sub_1D6EA87B4(v19, v11, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v47(&v19[v44], 1, v3) == 1)
  {
    sub_1D6EA2830(v11, type metadata accessor for PuzzleStreak);
LABEL_21:
    v39 = v19;
    goto LABEL_22;
  }

  sub_1D6EA8A74(&v19[v44], v36, type metadata accessor for PuzzleStreak);
  v49 = PuzzleStreak.days.getter();
  v50 = PuzzleStreak.days.getter();
  sub_1D6EA2830(v36, type metadata accessor for PuzzleStreak);
  sub_1D6EA2830(v11, type metadata accessor for PuzzleStreak);
  sub_1D6EA8744(v19, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  if (v49 != v50)
  {
    return 0;
  }

LABEL_26:
  v51 = v42[9];
  v52 = (v101 + v51);
  v53 = *(v101 + v51 + 8);
  v54 = *(v101 + v51 + 16);
  v55 = *(v101 + v51 + 24);
  v56 = *(v101 + v51 + 32);
  v57 = *(v101 + v51 + 40);
  v58 = v46 + v51;
  v59 = *(v46 + v51 + 8);
  v60 = *(v46 + v51 + 16);
  v61 = *(v46 + v51 + 24);
  v62 = *(v46 + v51 + 32);
  if (v53)
  {
    if ((v59 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v59 & 1) != 0 || *v52 != *v58)
    {
      return result;
    }
  }

  if (v55)
  {
    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v61 & 1) != 0 || v54 != v60)
    {
      return result;
    }
  }

  if (v57)
  {
    if ((*(v58 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(v58 + 40) & 1) != 0 || v56 != v62)
    {
      return result;
    }
  }

  v63 = v42[10];
  v64 = (v101 + v63);
  v65 = *(v101 + v63 + 8);
  v66 = *(v101 + v63 + 16);
  v67 = *(v101 + v63 + 24);
  v68 = *(v101 + v63 + 32);
  v69 = *(v101 + v63 + 40);
  v70 = (v46 + v63);
  v71 = *(v46 + v63 + 8);
  v72 = *(v46 + v63 + 16);
  v73 = *(v46 + v63 + 24);
  v74 = *(v46 + v63 + 32);
  v75 = *(v46 + v63 + 40);
  if (v65)
  {
    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v71 & 1) != 0 || *v64 != *v70)
    {
      return result;
    }
  }

  if (v67)
  {
    if ((v73 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v73 & 1) != 0 || v66 != v72)
    {
      return result;
    }
  }

  if (v69)
  {
    if ((v75 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v75 & 1) != 0 || v68 != v74)
    {
      return result;
    }
  }

  v76 = v42[11];
  v77 = (v101 + v76);
  v78 = *(v101 + v76 + 8);
  v79 = *(v101 + v76 + 16);
  v80 = *(v101 + v76 + 24);
  v81 = *(v101 + v76 + 32);
  v82 = *(v101 + v76 + 40);
  v83 = v46 + v76;
  v84 = *(v46 + v76 + 8);
  v85 = *(v46 + v76 + 16);
  v86 = *(v46 + v76 + 24);
  v87 = *(v46 + v76 + 32);
  if (v78)
  {
    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v84 & 1) != 0 || *v77 != *v83)
    {
      return result;
    }
  }

  if (v80)
  {
    if ((v86 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v86 & 1) != 0 || v79 != v85)
    {
      return result;
    }
  }

  if (v82)
  {
    v88 = v103;
    v89 = v100;
    v90 = v101;
    if ((*(v83 + 40) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (*(v83 + 40))
    {
      return result;
    }

    v91 = v81 == v87;
    v88 = v103;
    v89 = v100;
    v90 = v101;
    if (!v91)
    {
      return result;
    }
  }

  v92 = v89[12];
  v93 = v90 + v92;
  v94 = *(v90 + v92 + 8);
  v95 = *(v90 + v92 + 16);
  v96 = *(v90 + v92 + 24);
  v97 = v88 + v92;
  if (v94)
  {
    if ((*(v97 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((*(v97 + 8) & 1) != 0 || *v93 != *v97)
    {
      return result;
    }
  }

  if (v96)
  {
    if ((*(v97 + 24) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_82;
  }

  result = 0;
  if ((*(v97 + 24) & 1) == 0 && v95 == *(v97 + 16))
  {
LABEL_82:
    if ((*(v93 + 40) & 1) == 0)
    {
      return (*(v97 + 40) & 1) == 0 && *(v93 + 32) == *(v97 + 32);
    }

    return (*(v97 + 40) & 1) != 0;
  }

  return result;
}

uint64_t _s8NewsFeed20PuzzleStatisticValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleStreak();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAF98(0, &qword_1EC8979F8, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7, v9);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v70 = &v66 - v13;
  sub_1D5B7A644(0, &qword_1EDF41850, type metadata accessor for PuzzleStreak, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v69 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v68 = &v66 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v66 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v66 - v34;
  sub_1D6EAAE74(0, &qword_1EC8979F0, type metadata accessor for PuzzleStatisticValue);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v39 = (&v66 - v38);
  v41 = (&v66 + *(v40 + 56) - v38);
  sub_1D6EAAED4(a1, &v66 - v38, type metadata accessor for PuzzleStatisticValue);
  sub_1D6EAAED4(a2, v41, type metadata accessor for PuzzleStatisticValue);
  type metadata accessor for PuzzleStatisticValue(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v44 = *v39;
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_38;
        }

        goto LABEL_27;
      }

      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_1D6EA86C4(v39, v35, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA86C4(v41, v31, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v52 = *(v8 + 48);
        v46 = v70;
        sub_1D6EA87B4(v35, v70, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA87B4(v31, v46 + v52, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v53 = v73;
        v54 = *(v72 + 48);
        if (v54(v46, 1, v73) == 1)
        {
          sub_1D6EA8744(v31, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          sub_1D6EA8744(v35, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          if (v54(v46 + v52, 1, v53) == 1)
          {
            goto LABEL_36;
          }

LABEL_46:
          sub_1D6EAAF3C(v46, &qword_1EC8979F8, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          return 0;
        }

        v57 = v68;
        sub_1D6EA87B4(v46, v68, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        if (v54(v46 + v52, 1, v53) == 1)
        {
          sub_1D6EA8744(v31, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          sub_1D6EA8744(v35, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          v56 = v57;
          goto LABEL_45;
        }

        v63 = v67;
        sub_1D6EA8A74(v46 + v52, v67, type metadata accessor for PuzzleStreak);
        v64 = PuzzleStreak.days.getter();
        v65 = PuzzleStreak.days.getter();
        sub_1D6EA2830(v63, type metadata accessor for PuzzleStreak);
        sub_1D6EA8744(v31, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA8744(v35, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v61 = v64 == v65;
        sub_1D6EA2830(v57, type metadata accessor for PuzzleStreak);
        v62 = v46;
LABEL_49:
        sub_1D6EA8744(v62, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        return v61;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v43 = *v39;
          if (swift_getEnumCaseMultiPayload() != 7)
          {
            goto LABEL_38;
          }

          goto LABEL_24;
        }

        v44 = *v39;
        if (swift_getEnumCaseMultiPayload() == 8)
        {
LABEL_27:
          result = *(v41 + 8);
          if (v39[1])
          {
            return result;
          }

          v50 = v44 == *v41;
          goto LABEL_29;
        }

LABEL_38:
        sub_1D6EA2830(v41, type metadata accessor for PuzzleStatisticValue);
        return 0;
      }

      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1D6EA86C4(v39, v24, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA86C4(v41, v20, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v45 = *(v8 + 48);
        v46 = v71;
        sub_1D6EA87B4(v24, v71, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA87B4(v20, v46 + v45, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v47 = v73;
        v48 = *(v72 + 48);
        if (v48(v46, 1, v73) == 1)
        {
          sub_1D6EA8744(v20, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          sub_1D6EA8744(v24, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          if (v48(v46 + v45, 1, v47) != 1)
          {
            goto LABEL_46;
          }

LABEL_36:
          sub_1D6EA8744(v46, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          return 1;
        }

        v55 = v69;
        sub_1D6EA87B4(v46, v69, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        if (v48(v46 + v45, 1, v47) == 1)
        {
          sub_1D6EA8744(v20, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          sub_1D6EA8744(v24, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
          v56 = v55;
LABEL_45:
          sub_1D6EA2830(v56, type metadata accessor for PuzzleStreak);
          goto LABEL_46;
        }

        v58 = v67;
        sub_1D6EA8A74(v46 + v45, v67, type metadata accessor for PuzzleStreak);
        v59 = PuzzleStreak.days.getter();
        v60 = PuzzleStreak.days.getter();
        sub_1D6EA2830(v58, type metadata accessor for PuzzleStreak);
        sub_1D6EA8744(v20, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        sub_1D6EA8744(v24, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
        v61 = v59 == v60;
        sub_1D6EA2830(v55, type metadata accessor for PuzzleStreak);
        v62 = v46;
        goto LABEL_49;
      }
    }

    sub_1D6EA8744(v39, &qword_1EDF41850, type metadata accessor for PuzzleStreak);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v44 = *v39;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_27;
      }

      goto LABEL_38;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_38;
    }

    return *v39 == *v41;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_38;
    }

    return *v39 == *v41;
  }

  v43 = *v39;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_38;
  }

LABEL_24:
  result = *(v41 + 8);
  if (v39[1])
  {
    return result;
  }

  v50 = *&v43 == *v41;
LABEL_29:
  v51 = v50;
  return v51 & ~result;
}

uint64_t _s8NewsFeed23PuzzleStatisticCategoryO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  v3 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v72 = &v70 - v8;
  v9 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v70 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6EAAF98(0, &qword_1EC897A00, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12, v14);
  v77 = &v70 - v15;
  sub_1D5B7A644(0, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v71 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = &v70 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v74 = &v70 - v24;
  v25 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v70 - v31;
  v33 = type metadata accessor for PuzzleStatisticValue(0);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v70 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v70 - v39;
  sub_1D6EAAE74(0, &qword_1EDF0D1A8, type metadata accessor for PuzzleStatisticCategory);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v70 - v43;
  v46 = *(v45 + 56);
  sub_1D6EAAED4(a1, &v70 - v43, type metadata accessor for PuzzleStatisticCategory);
  sub_1D6EAAED4(v79, &v44[v46], type metadata accessor for PuzzleStatisticCategory);
  type metadata accessor for PuzzleStatisticCategory(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v48 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if (v48)
      {
        v49 = type metadata accessor for PuzzleStatisticValue;
LABEL_19:
        sub_1D6EA2830(v44, v49);
        goto LABEL_20;
      }

      sub_1D6EA8A74(v44, v40, type metadata accessor for PuzzleStatisticValue);
      sub_1D6EA8A74(&v44[v46], v36, type metadata accessor for PuzzleStatisticValue);
      v57 = _s8NewsFeed20PuzzleStatisticValueO2eeoiySbAC_ACtFZ_0(v40, v36);
      v62 = type metadata accessor for PuzzleStatisticValue;
      sub_1D6EA2830(v36, type metadata accessor for PuzzleStatisticValue);
      v58 = v40;
      goto LABEL_27;
    }

    if (v48 != 1)
    {
      v49 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
      goto LABEL_19;
    }

    sub_1D6EA8A74(v44, v32, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    sub_1D6EA8A74(&v44[v46], v28, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    if (_s8NewsFeed20PuzzleStatisticValueO2eeoiySbAC_ACtFZ_0(v32, v28) & 1) != 0 && (_s8NewsFeed20PuzzleStatisticValueO2eeoiySbAC_ACtFZ_0(&v32[*(v25 + 20)], &v28[*(v25 + 20)]))
    {
      v57 = _s8NewsFeed20PuzzleStatisticValueO2eeoiySbAC_ACtFZ_0(&v32[*(v25 + 24)], &v28[*(v25 + 24)]);
      sub_1D6EA2830(v28, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
      v58 = v32;
      v59 = type metadata accessor for PuzzleStatisticDifficultyLevelValue;
LABEL_28:
      sub_1D6EA2830(v58, v59);
      return v57 & 1;
    }

    sub_1D6EA2830(v28, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
    sub_1D6EA2830(v32, type metadata accessor for PuzzleStatisticDifficultyLevelValue);
LABEL_25:
    v57 = 0;
    return v57 & 1;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (v48 != 3)
    {
      v49 = type metadata accessor for PuzzleStatisticsGroupedValue;
      goto LABEL_19;
    }

    v60 = v72;
    sub_1D6EA8A74(v44, v72, type metadata accessor for PuzzleStatisticsGroupedValue);
    v61 = v73;
    sub_1D6EA8A74(&v44[v46], v73, type metadata accessor for PuzzleStatisticsGroupedValue);
    v57 = _s8NewsFeed28PuzzleStatisticsGroupedValueV2eeoiySbAC_ACtFZ_0(v60, v61);
    v62 = type metadata accessor for PuzzleStatisticsGroupedValue;
    sub_1D6EA2830(v61, type metadata accessor for PuzzleStatisticsGroupedValue);
    v58 = v60;
LABEL_27:
    v59 = v62;
    goto LABEL_28;
  }

  if (v48 != 2)
  {
    sub_1D6EA8744(v44, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
LABEL_20:
    sub_1D6EA2830(&v44[v46], type metadata accessor for PuzzleStatisticCategory);
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v63 = sub_1D725C42C();
    __swift_project_value_buffer(v63, qword_1EDFFCFA8);
    v64 = sub_1D725C3FC();
    v65 = sub_1D7262EBC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1D5B42000, v64, v65, "Can't equate non-matching PuzzleStatisticCategory values", v66, 2u);
      MEMORY[0x1DA6FD500](v66, -1, -1);
    }

    goto LABEL_25;
  }

  v50 = v74;
  sub_1D6EA86C4(v44, v74, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v51 = &v44[v46];
  v52 = v78;
  sub_1D6EA86C4(v51, v78, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v53 = *(v13 + 48);
  v54 = v77;
  sub_1D6EA87B4(v50, v77, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  sub_1D6EA87B4(v52, v54 + v53, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v55 = v76;
  v56 = *(v75 + 48);
  if (v56(v54, 1, v76) != 1)
  {
    v68 = v71;
    sub_1D6EA87B4(v54, v71, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    if (v56(v54 + v53, 1, v55) != 1)
    {
      v69 = v70;
      sub_1D6EA8A74(v54 + v53, v70, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      v57 = _s8NewsFeed43PuzzleStatisticsGameCenterLeaderboardResultV2eeoiySbAC_ACtFZ_0(v68, v69);
      sub_1D6EA2830(v69, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D6EA8744(v78, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D6EA8744(v50, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D6EA2830(v68, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      sub_1D6EA8744(v54, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
      return v57 & 1;
    }

    sub_1D6EA8744(v78, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    sub_1D6EA8744(v50, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    sub_1D6EA2830(v68, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    goto LABEL_33;
  }

  sub_1D6EA8744(v52, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  sub_1D6EA8744(v50, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  if (v56(v54 + v53, 1, v55) != 1)
  {
LABEL_33:
    sub_1D6EAAF3C(v54, &qword_1EC897A00, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    goto LABEL_25;
  }

  sub_1D6EA8744(v54, qword_1EDF3CB28, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
  v57 = 1;
  return v57 & 1;
}

unint64_t sub_1D6EA81D8()
{
  result = qword_1EDF0D1F8;
  if (!qword_1EDF0D1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1F8);
  }

  return result;
}

unint64_t sub_1D6EA822C()
{
  result = qword_1EDF0D1C8;
  if (!qword_1EDF0D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1C8);
  }

  return result;
}

unint64_t sub_1D6EA8280()
{
  result = qword_1EDF0D1E0;
  if (!qword_1EDF0D1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1E0);
  }

  return result;
}

unint64_t sub_1D6EA82D4()
{
  result = qword_1EDF0D210;
  if (!qword_1EDF0D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D210);
  }

  return result;
}

unint64_t sub_1D6EA8328()
{
  result = qword_1EDF0D228[0];
  if (!qword_1EDF0D228[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0D228);
  }

  return result;
}

unint64_t sub_1D6EA837C()
{
  result = qword_1EC897760;
  if (!qword_1EC897760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897760);
  }

  return result;
}

unint64_t sub_1D6EA83D0()
{
  result = qword_1EDF0E898;
  if (!qword_1EDF0E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E898);
  }

  return result;
}

unint64_t sub_1D6EA8424()
{
  result = qword_1EDF0E880;
  if (!qword_1EDF0E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E880);
  }

  return result;
}

unint64_t sub_1D6EA8478()
{
  result = qword_1EDF0E868;
  if (!qword_1EDF0E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E868);
  }

  return result;
}

unint64_t sub_1D6EA84CC()
{
  result = qword_1EDF0E8E0;
  if (!qword_1EDF0E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8E0);
  }

  return result;
}

unint64_t sub_1D6EA8520()
{
  result = qword_1EDF0E8C8;
  if (!qword_1EDF0E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8C8);
  }

  return result;
}

unint64_t sub_1D6EA8574()
{
  result = qword_1EC897770;
  if (!qword_1EC897770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897770);
  }

  return result;
}

unint64_t sub_1D6EA85C8()
{
  result = qword_1EDF0E8B0;
  if (!qword_1EDF0E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8B0);
  }

  return result;
}

unint64_t sub_1D6EA861C()
{
  result = qword_1EDF0E8F8;
  if (!qword_1EDF0E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8F8);
  }

  return result;
}

unint64_t sub_1D6EA8670()
{
  result = qword_1EDF0E910[0];
  if (!qword_1EDF0E910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0E910);
  }

  return result;
}

uint64_t sub_1D6EA86C4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B7A644(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6EA8744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B7A644(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6EA87B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B7A644(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D6EA8834()
{
  result = qword_1EC8977D0;
  if (!qword_1EC8977D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8977D0);
  }

  return result;
}

unint64_t sub_1D6EA88A0()
{
  result = qword_1EC8977E8;
  if (!qword_1EC8977E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8977E8);
  }

  return result;
}

unint64_t sub_1D6EA88F4()
{
  result = qword_1EC897820;
  if (!qword_1EC897820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897820);
  }

  return result;
}

void sub_1D6EA8948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6EA89B0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B7A644(255, &qword_1EDF3C898, type metadata accessor for PuzzleLeaderboardEntry, MEMORY[0x1E69E62F8]);
    sub_1D6EA8D1C(a2, type metadata accessor for PuzzleLeaderboardEntry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6EA8A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D6EA8AE0()
{
  result = qword_1EC897850;
  if (!qword_1EC897850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897850);
  }

  return result;
}

unint64_t sub_1D6EA8B38()
{
  result = qword_1EC897858;
  if (!qword_1EC897858)
  {
    sub_1D5B7A428(255, &qword_1EC897860, &type metadata for PuzzleDifficultyLevel, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897858);
  }

  return result;
}

uint64_t sub_1D6EA8D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6EA8D8C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80) + ((v6 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1D6EA8EE4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80) + ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80))) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1D6EA9288()
{
  result = qword_1EC897910;
  if (!qword_1EC897910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897910);
  }

  return result;
}

unint64_t sub_1D6EA92E0()
{
  result = qword_1EC897918;
  if (!qword_1EC897918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897918);
  }

  return result;
}

unint64_t sub_1D6EA9338()
{
  result = qword_1EC897920;
  if (!qword_1EC897920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897920);
  }

  return result;
}

unint64_t sub_1D6EA9390()
{
  result = qword_1EC897928;
  if (!qword_1EC897928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897928);
  }

  return result;
}

unint64_t sub_1D6EA93E8()
{
  result = qword_1EC897930;
  if (!qword_1EC897930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897930);
  }

  return result;
}

unint64_t sub_1D6EA9440()
{
  result = qword_1EC897938;
  if (!qword_1EC897938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897938);
  }

  return result;
}

unint64_t sub_1D6EA9498()
{
  result = qword_1EC897940;
  if (!qword_1EC897940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897940);
  }

  return result;
}

unint64_t sub_1D6EA94F0()
{
  result = qword_1EC897948;
  if (!qword_1EC897948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897948);
  }

  return result;
}

unint64_t sub_1D6EA9548()
{
  result = qword_1EC897950;
  if (!qword_1EC897950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897950);
  }

  return result;
}

unint64_t sub_1D6EA95A0()
{
  result = qword_1EC897958;
  if (!qword_1EC897958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897958);
  }

  return result;
}

unint64_t sub_1D6EA95F8()
{
  result = qword_1EC897960;
  if (!qword_1EC897960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897960);
  }

  return result;
}

unint64_t sub_1D6EA9650()
{
  result = qword_1EC897968;
  if (!qword_1EC897968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897968);
  }

  return result;
}

unint64_t sub_1D6EA96A8()
{
  result = qword_1EC897970;
  if (!qword_1EC897970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897970);
  }

  return result;
}

unint64_t sub_1D6EA9700()
{
  result = qword_1EC897978;
  if (!qword_1EC897978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897978);
  }

  return result;
}

unint64_t sub_1D6EA9758()
{
  result = qword_1EC897980;
  if (!qword_1EC897980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897980);
  }

  return result;
}

unint64_t sub_1D6EA97B0()
{
  result = qword_1EC897988;
  if (!qword_1EC897988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897988);
  }

  return result;
}

unint64_t sub_1D6EA9824()
{
  result = qword_1EC897990;
  if (!qword_1EC897990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897990);
  }

  return result;
}

unint64_t sub_1D6EA987C()
{
  result = qword_1EC897998;
  if (!qword_1EC897998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897998);
  }

  return result;
}

unint64_t sub_1D6EA98D4()
{
  result = qword_1EC8979A0;
  if (!qword_1EC8979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979A0);
  }

  return result;
}

unint64_t sub_1D6EA992C()
{
  result = qword_1EC8979A8;
  if (!qword_1EC8979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979A8);
  }

  return result;
}

unint64_t sub_1D6EA9984()
{
  result = qword_1EC8979B0;
  if (!qword_1EC8979B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979B0);
  }

  return result;
}

unint64_t sub_1D6EA99DC()
{
  result = qword_1EC8979B8;
  if (!qword_1EC8979B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979B8);
  }

  return result;
}

unint64_t sub_1D6EA9A6C()
{
  result = qword_1EC8979C0;
  if (!qword_1EC8979C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979C0);
  }

  return result;
}

unint64_t sub_1D6EA9AC4()
{
  result = qword_1EC8979C8;
  if (!qword_1EC8979C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979C8);
  }

  return result;
}

unint64_t sub_1D6EA9B1C()
{
  result = qword_1EDF0E900;
  if (!qword_1EDF0E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E900);
  }

  return result;
}

unint64_t sub_1D6EA9B74()
{
  result = qword_1EDF0E908;
  if (!qword_1EDF0E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E908);
  }

  return result;
}

unint64_t sub_1D6EA9BCC()
{
  result = qword_1EDF0E8E8;
  if (!qword_1EDF0E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8E8);
  }

  return result;
}

unint64_t sub_1D6EA9C24()
{
  result = qword_1EDF0E8F0;
  if (!qword_1EDF0E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8F0);
  }

  return result;
}

unint64_t sub_1D6EA9C7C()
{
  result = qword_1EDF0E8A0;
  if (!qword_1EDF0E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8A0);
  }

  return result;
}

unint64_t sub_1D6EA9CD4()
{
  result = qword_1EDF0E8A8;
  if (!qword_1EDF0E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8A8);
  }

  return result;
}

unint64_t sub_1D6EA9D2C()
{
  result = qword_1EC8979D0;
  if (!qword_1EC8979D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979D0);
  }

  return result;
}

unint64_t sub_1D6EA9D84()
{
  result = qword_1EC8979D8;
  if (!qword_1EC8979D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979D8);
  }

  return result;
}

unint64_t sub_1D6EA9DDC()
{
  result = qword_1EDF0E8B8;
  if (!qword_1EDF0E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8B8);
  }

  return result;
}

unint64_t sub_1D6EA9E34()
{
  result = qword_1EDF0E8C0;
  if (!qword_1EDF0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8C0);
  }

  return result;
}

unint64_t sub_1D6EA9E8C()
{
  result = qword_1EDF0E8D0;
  if (!qword_1EDF0E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8D0);
  }

  return result;
}

unint64_t sub_1D6EA9EE4()
{
  result = qword_1EDF0E8D8;
  if (!qword_1EDF0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E8D8);
  }

  return result;
}

unint64_t sub_1D6EA9F3C()
{
  result = qword_1EDF0E858;
  if (!qword_1EDF0E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E858);
  }

  return result;
}

unint64_t sub_1D6EA9F94()
{
  result = qword_1EDF0E860;
  if (!qword_1EDF0E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E860);
  }

  return result;
}

unint64_t sub_1D6EA9FEC()
{
  result = qword_1EDF0E870;
  if (!qword_1EDF0E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E870);
  }

  return result;
}

unint64_t sub_1D6EAA044()
{
  result = qword_1EDF0E878;
  if (!qword_1EDF0E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E878);
  }

  return result;
}

unint64_t sub_1D6EAA09C()
{
  result = qword_1EDF0E888;
  if (!qword_1EDF0E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E888);
  }

  return result;
}

unint64_t sub_1D6EAA0F4()
{
  result = qword_1EDF0E890;
  if (!qword_1EDF0E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E890);
  }

  return result;
}

unint64_t sub_1D6EAA14C()
{
  result = qword_1EC8979E0;
  if (!qword_1EC8979E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979E0);
  }

  return result;
}

unint64_t sub_1D6EAA1A4()
{
  result = qword_1EC8979E8;
  if (!qword_1EC8979E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8979E8);
  }

  return result;
}

unint64_t sub_1D6EAA1FC()
{
  result = qword_1EDF0D218;
  if (!qword_1EDF0D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D218);
  }

  return result;
}

unint64_t sub_1D6EAA254()
{
  result = qword_1EDF0D220;
  if (!qword_1EDF0D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D220);
  }

  return result;
}

unint64_t sub_1D6EAA2AC()
{
  result = qword_1EDF0D200;
  if (!qword_1EDF0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D200);
  }

  return result;
}

unint64_t sub_1D6EAA304()
{
  result = qword_1EDF0D208;
  if (!qword_1EDF0D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D208);
  }

  return result;
}

unint64_t sub_1D6EAA35C()
{
  result = qword_1EDF0D1D0;
  if (!qword_1EDF0D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1D0);
  }

  return result;
}

unint64_t sub_1D6EAA3B4()
{
  result = qword_1EDF0D1D8;
  if (!qword_1EDF0D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1D8);
  }

  return result;
}

unint64_t sub_1D6EAA40C()
{
  result = qword_1EDF0D1B8;
  if (!qword_1EDF0D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1B8);
  }

  return result;
}

unint64_t sub_1D6EAA464()
{
  result = qword_1EDF0D1C0;
  if (!qword_1EDF0D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1C0);
  }

  return result;
}

unint64_t sub_1D6EAA4BC()
{
  result = qword_1EDF0D1E8;
  if (!qword_1EDF0D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1E8);
  }

  return result;
}

unint64_t sub_1D6EAA514()
{
  result = qword_1EDF0D1F0;
  if (!qword_1EDF0D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D1F0);
  }

  return result;
}

uint64_t sub_1D6EAA568(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74615265766C6F73 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F536C61746F74 && a2 == 0xEB00000000646576 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5374636566726570 && a2 == 0xED00006465766C6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5474736574736166 && a2 == 0xEB00000000656D69 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5465676172657661 && a2 == 0xEB00000000656D69 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5374736568676968 && a2 == 0xEC00000065726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xEC00000065726F63)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D6EAA874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C676E6973 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C75636966666964 && a2 == 0xEF6C6576654C7974 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73B7480 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53646570756F7267 && a2 == 0xEC00000073746174)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D6EAA9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F536C61746F74 && a2 == 0xEB00000000646576;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5374636566726570 && a2 == 0xED00006465766C6FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74615265766C6F73 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5474736574736166 && a2 == 0xEB00000000656D69 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5465676172657661 && a2 == 0xEB00000000656D69 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5374736568676968 && a2 == 0xEC00000065726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xEC00000065726F63)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D6EAACF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73F5660 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73F5680 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEF656D614E647261)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1D6EAAE74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D6EAAED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EAAF3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D6EAAF98(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6EAAF98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D5B7A644(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t CoverIssueViewLayout.Context.init(key:model:secondaryModel:styler:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D725891C();
  v156 = v10;
  v158 = *(v10 - 8);
  v11 = v158;
  MEMORY[0x1EEE9AC00](v10, v12);
  v155 = v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B7B528(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v146[0] = v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v147 = v146 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v146 - v22;
  v151 = v146 - v22;
  v24 = a2[5];
  v25 = a2[7];
  v179 = a2[6];
  v26 = v179;
  v180[0] = v25;
  *(v180 + 9) = *(a2 + 121);
  v27 = a2[1];
  v28 = a2[3];
  v175 = a2[2];
  v29 = v175;
  v176 = v28;
  v30 = a2[3];
  v31 = a2[5];
  v177 = a2[4];
  v32 = v177;
  v178 = v31;
  v33 = a2[1];
  v173 = *a2;
  v34 = v173;
  v174 = v33;
  *(a5 + 88) = v24;
  *(a5 + 104) = v26;
  *(a5 + 120) = a2[7];
  *(a5 + 129) = *(a2 + 121);
  *(a5 + 24) = v27;
  *(a5 + 40) = v29;
  *(a5 + 56) = v30;
  *(a5 + 72) = v32;
  *(a5 + 8) = v34;
  v35 = a3[4];
  *(a5 + 232) = a3[5];
  v36 = a3[7];
  *(a5 + 248) = a3[6];
  *(a5 + 264) = v36;
  *(a5 + 273) = *(a3 + 121);
  v37 = *a3;
  *(a5 + 168) = a3[1];
  v38 = a3[3];
  *(a5 + 184) = a3[2];
  *(a5 + 200) = v38;
  *(a5 + 216) = v35;
  *a5 = a1;
  *(a5 + 152) = v37;
  v157 = a4;
  sub_1D5B68374(a4, a5 + 296);
  sub_1D5B68374(a4, v170);
  v153 = *(v11 + 56);
  v154 = v11 + 56;
  v153(v23, 1, 1, v10);
  v39 = swift_allocObject();
  v40 = v180[0];
  v39[7] = v179;
  v39[8] = v40;
  *(v39 + 137) = *(v180 + 9);
  v41 = v176;
  v39[3] = v175;
  v39[4] = v41;
  v42 = v178;
  v39[5] = v177;
  v39[6] = v42;
  v43 = v174;
  v39[1] = v173;
  v39[2] = v43;
  sub_1D5B7B528(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v45 = v44;
  v46 = swift_allocObject();
  *(v46 + 2) = 0xC04E000000000000;
  v47 = v172;
  __swift_project_boxed_opaque_existential_1(v170, v171);
  v168 = v179;
  v169[0] = v180[0];
  *(v169 + 9) = *(v180 + 9);
  v164 = v175;
  v165 = v176;
  v166 = v177;
  v167 = v178;
  v162 = v173;
  v163 = v174;
  sub_1D5ECF2C4(&v173, v159);
  sub_1D5ECF2C4(&v173, v159);
  v146[1] = a1;

  v48 = sub_1D6CAFA6C();
  v49 = (*(v47 + 80))(v48);

  *&v46[*(*v46 + 120)] = v49;
  *&v46[*(*v46 + 136)] = v49;
  v50 = v49;
  v51 = v155;
  sub_1D725890C();
  v52 = *(*v46 + 128);
  v53 = *(v158 + 32);
  v158 += 32;
  v150 = v53;
  v54 = v156;
  v53(&v46[v52], v51, v156);
  v152 = objc_opt_self();
  LOBYTE(v51) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v170);
  v46[qword_1EDF347F8] = v51;
  v55 = v151;
  sub_1D5DF42F8(v151, &v46[qword_1EDF347F0]);
  v56 = swift_allocObject();
  v56[2] = sub_1D5EF97AC;
  v56[3] = v39;
  v56[4] = v50;
  *(v46 + 3) = sub_1D6EADD38;
  *(v46 + 4) = v56;
  *(a5 + 336) = v46;
  sub_1D5B68374(v157, v170);
  v153(v55, 1, 1, v54);
  v57 = swift_allocObject();
  v58 = v180[0];
  v57[7] = v179;
  v57[8] = v58;
  *(v57 + 137) = *(v180 + 9);
  v59 = v176;
  v57[3] = v175;
  v57[4] = v59;
  v60 = v178;
  v57[5] = v177;
  v57[6] = v60;
  v61 = v174;
  v57[1] = v173;
  v57[2] = v61;
  v62 = swift_allocObject();
  *(v62 + 2) = 0xC04E000000000000;
  v63 = v172;
  __swift_project_boxed_opaque_existential_1(v170, v171);
  v168 = v179;
  v169[0] = v180[0];
  *(v169 + 9) = *(v180 + 9);
  v164 = v175;
  v165 = v176;
  v166 = v177;
  v167 = v178;
  v162 = v173;
  v163 = v174;
  sub_1D5ECF2C4(&v173, v159);
  v64 = sub_1D6CAFA6C();
  v65 = (*(v63 + 88))(v64);

  *&v62[*(*v62 + 120)] = v65;
  *&v62[*(*v62 + 136)] = v65;
  v66 = v65;
  v67 = v155;
  sub_1D725890C();
  v68 = v156;
  v150(&v62[*(*v62 + 128)], v67, v156);
  LOBYTE(v67) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v170);
  v62[qword_1EDF347F8] = v67;
  sub_1D5DF42F8(v151, &v62[qword_1EDF347F0]);
  v69 = swift_allocObject();
  v69[2] = sub_1D5EF97C0;
  v69[3] = v57;
  v69[4] = v66;
  *(v62 + 3) = sub_1D6EAE84C;
  *(v62 + 4) = v69;
  v149 = a5;
  *(a5 + 344) = v62;
  sub_1D5B68374(v157, v159);
  v153(v147, 1, 1, v68);
  v70 = swift_allocObject();
  v71 = v180[0];
  v70[7] = v179;
  v70[8] = v71;
  *(v70 + 137) = *(v180 + 9);
  v72 = v176;
  v70[3] = v175;
  v70[4] = v72;
  v73 = v178;
  v70[5] = v177;
  v70[6] = v73;
  v74 = v174;
  v70[1] = v173;
  v70[2] = v74;
  v148 = v45;
  v75 = swift_allocObject();
  *(v75 + 2) = 0xC04E000000000000;
  v77 = v160;
  v76 = v161;
  __swift_project_boxed_opaque_existential_1(v159, v160);
  if (v178 == 1 || !v179)
  {
    v78 = v173;
    sub_1D5ECF2C4(&v173, &v162);
    v79 = [v78 coverDate];
    sub_1D726207C();
  }

  else
  {
    sub_1D5ECF2C4(&v173, &v162);
  }

  v80 = sub_1D726213C();
  v82 = v81;

  v83 = (*(v76 + 96))(v80, v82, v77, v76);

  *&v75[*(*v75 + 120)] = v83;
  *&v75[*(*v75 + 136)] = v83;
  v84 = v83;
  v85 = v155;
  sub_1D725890C();
  v86 = v156;
  v150(&v75[*(*v75 + 128)], v85, v156);
  LOBYTE(v85) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v159);
  v75[qword_1EDF347F8] = v85;
  sub_1D5DF42F8(v147, &v75[qword_1EDF347F0]);
  v87 = swift_allocObject();
  v87[2] = sub_1D5EF97C8;
  v87[3] = v70;
  v87[4] = v84;
  *(v75 + 3) = sub_1D6EAE84C;
  *(v75 + 4) = v87;
  v149[44] = v75;
  sub_1D5B68374(v157, v159);
  v88 = v146[0];
  v153(v146[0], 1, 1, v86);
  v89 = swift_allocObject();
  v90 = v180[0];
  v89[7] = v179;
  v89[8] = v90;
  *(v89 + 137) = *(v180 + 9);
  v91 = v176;
  v89[3] = v175;
  v89[4] = v91;
  v92 = v178;
  v89[5] = v177;
  v89[6] = v92;
  v93 = v174;
  v89[1] = v173;
  v89[2] = v93;
  v94 = swift_allocObject();
  *(v94 + 2) = 0xC04E000000000000;
  v95 = BYTE8(v174);
  v96 = v161;
  __swift_project_boxed_opaque_existential_1(v159, v160);
  if (v95 == 2)
  {
    LOBYTE(v170[0]) = 2;
    sub_1D5ECF2C4(&v173, &v162);
    v97 = sub_1D6CAFB7C();
    v98 = (*(v96 + 96))(v97);
  }

  else
  {
    LOBYTE(v170[0]) = v95;
    sub_1D5ECF2C4(&v173, &v162);
    v99 = sub_1D6CAFB7C();
    v98 = (*(v96 + 104))(v99);
  }

  v100 = v98;

  *&v94[*(*v94 + 120)] = v100;
  *&v94[*(*v94 + 136)] = v100;
  v101 = v100;
  v102 = v155;
  sub_1D725890C();
  v103 = v156;
  v150(&v94[*(*v94 + 128)], v102, v156);
  LOBYTE(v102) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v159);
  v94[qword_1EDF347F8] = v102;
  sub_1D5DF42F8(v88, &v94[qword_1EDF347F0]);
  v104 = swift_allocObject();
  v104[2] = sub_1D5EF97D0;
  v104[3] = v89;
  v104[4] = v101;
  *(v94 + 3) = sub_1D6EAE84C;
  *(v94 + 4) = v104;
  v149[45] = v94;
  sub_1D5B68374(v157, &v162);
  v153(v151, 1, 1, v103);
  v105 = swift_allocObject();
  *(v105 + 2) = 0xC04E000000000000;
  v107 = *(&v163 + 1);
  v106 = v164;
  __swift_project_boxed_opaque_existential_1(&v162, *(&v163 + 1));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v147 = ObjCClassFromMetadata;
  v109 = objc_opt_self();
  v110 = [v109 bundleForClass_];
  sub_1D725811C();

  v111 = sub_1D726213C();
  v113 = v112;

  v114 = (*(v106 + 112))(v111, v113, v107, v106);

  *&v105[*(*v105 + 120)] = v114;
  *&v105[*(*v105 + 136)] = v114;
  v115 = v114;
  v116 = v155;
  sub_1D725890C();
  v117 = v156;
  v150(&v105[*(*v105 + 128)], v116, v156);
  LOBYTE(v116) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v162);
  v105[qword_1EDF347F8] = v116;
  v118 = v151;
  sub_1D5DF42F8(v151, &v105[qword_1EDF347F0]);
  v119 = swift_allocObject();
  v119[2] = sub_1D6EAD6D0;
  v119[3] = 0;
  v119[4] = v115;
  *(v105 + 3) = sub_1D6EAE84C;
  *(v105 + 4) = v119;
  v120 = v149;
  v149[46] = v105;
  sub_1D5B68374(v157, &v162);
  v153(v118, 1, 1, v117);
  v121 = swift_allocObject();
  *(v121 + 2) = 0xC04E000000000000;
  v122 = *(&v163 + 1);
  v123 = v164;
  __swift_project_boxed_opaque_existential_1(&v162, *(&v163 + 1));
  v124 = [v109 bundleForClass_];
  sub_1D725811C();

  v125 = sub_1D726213C();
  v127 = v126;

  v128 = (*(v123 + 120))(v125, v127, v122, v123);

  *&v121[*(*v121 + 120)] = v128;
  *&v121[*(*v121 + 136)] = v128;
  v129 = v128;
  v130 = v155;
  sub_1D725890C();
  v131 = v156;
  v132 = v150;
  v150(&v121[*(*v121 + 128)], v130, v156);
  LOBYTE(v125) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v162);
  v121[qword_1EDF347F8] = v125;
  v133 = v151;
  sub_1D5DF42F8(v151, &v121[qword_1EDF347F0]);
  v134 = swift_allocObject();
  v134[2] = sub_1D6EAD7F8;
  v134[3] = 0;
  v134[4] = v129;
  *(v121 + 3) = sub_1D6EAE84C;
  *(v121 + 4) = v134;
  v120[47] = v121;
  v135 = v157;
  sub_1D5B68374(v157, v159);
  v136 = v133;
  v153(v133, 1, 1, v131);
  v137 = swift_allocObject();
  v138 = v180[0];
  v137[7] = v179;
  v137[8] = v138;
  *(v137 + 137) = *(v180 + 9);
  v139 = v176;
  v137[3] = v175;
  v137[4] = v139;
  v140 = v178;
  v137[5] = v177;
  v137[6] = v140;
  v141 = v174;
  v137[1] = v173;
  v137[2] = v141;
  sub_1D6EADD6C(0, qword_1EDF34768, type metadata accessor for CachedText);
  v142 = swift_allocObject();
  *(v142 + 2) = 0xC04E000000000000;
  sub_1D5ECF2C4(&v173, &v162);
  sub_1D6EAD930(&v173, &v162);
  sub_1D5ECF320(&v173);
  v143 = v162;
  *&v142[*(*v142 + 120)] = v162;
  *&v142[*(*v142 + 136)] = v143;
  swift_bridgeObjectRetain_n();
  sub_1D725890C();
  v132(&v142[*(*v142 + 128)], v130, v131);
  LOBYTE(v130) = [v152 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(v159);
  v142[qword_1EDF347F8] = v130;
  sub_1D5DF42F8(v136, &v142[qword_1EDF347F0]);
  v144 = swift_allocObject();
  *(v144 + 16) = sub_1D5EF97D8;
  *(v144 + 24) = v137;
  *(v144 + 32) = v143;
  *(v142 + 3) = sub_1D6EADDDC;
  *(v142 + 4) = v144;

  result = __swift_destroy_boxed_opaque_existential_1(v135);
  v149[48] = v142;
  return result;
}

uint64_t CoverIssueViewLayout.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4();
  swift_allocObject();
  *a1 = sub_1D725996C();
  swift_allocObject();
  a1[1] = sub_1D725996C();
  swift_allocObject();
  a1[2] = sub_1D725996C();
  swift_allocObject();
  a1[3] = sub_1D725996C();
  swift_allocObject();
  a1[4] = sub_1D725996C();
  swift_allocObject();
  a1[5] = sub_1D725996C();
  swift_allocObject();
  a1[6] = sub_1D725996C();
  sub_1D6EADE60(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  swift_allocObject();
  a1[7] = sub_1D725996C();
  swift_allocObject();
  a1[8] = sub_1D725996C();
  swift_allocObject();
  result = sub_1D725996C();
  a1[9] = result;
  return result;
}

__n128 CoverIssueViewLayout.Attributes.issueCoverViewLayoutAttributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  *a1 = *(v1 + 224);
  *(a1 + 16) = v2;
  result = *(v1 + 256);
  v4 = *(v1 + 272);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 CoverIssueViewLayout.Attributes.secondaryIssueCoverViewLayoutAttributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 304);
  *a1 = *(v1 + 288);
  *(a1 + 16) = v2;
  result = *(v1 + 320);
  v4 = *(v1 + 336);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

unint64_t sub_1D6EAC548(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001ELL;
    v6 = 0xD000000000000027;
    if (a1 != 8)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1 != 5)
    {
      v7 = 0x6F634964756F6C63;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656D617266;
    v2 = 0x726F737365636361;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x62614C656C746974;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D6EAC6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6EAE4C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6EAC6EC(uint64_t a1)
{
  v2 = sub_1D6EADE0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6EAC728(uint64_t a1)
{
  v2 = sub_1D6EADE0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoverIssueViewLayout.Attributes.encode(to:)(void *a1)
{
  sub_1D6EADE60(0, &qword_1EC897A08, sub_1D6EADE0C, &type metadata for CoverIssueViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  v10 = v1[2];
  v36 = v1[3];
  v37 = v10;
  v11 = v1[4];
  v34 = v1[5];
  v35 = v11;
  v12 = v1[6];
  v32 = v1[7];
  v33 = v12;
  v13 = v1[8];
  v30 = v1[9];
  v31 = v13;
  v14 = v1[10];
  v28 = v1[11];
  v29 = v14;
  v15 = v1[12];
  v26 = v1[13];
  v27 = v15;
  v16 = v1[15];
  v42 = v1[14];
  v43 = v16;
  v17 = v1[17];
  v44 = v1[16];
  v45 = v17;
  v18 = v1[18];
  v19 = v1[19];
  v20 = v1[21];
  v48 = v1[20];
  v49 = v20;
  v46 = v18;
  v47 = v19;
  v21 = v1[22];
  v24 = v1[23];
  v25 = v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6EADE0C();
  sub_1D7264B5C();
  v22 = *v1;
  v39 = v1[1];
  v38 = v22;
  v50 = 0;
  type metadata accessor for CGRect(0);
  sub_1D5BEAAD4(&qword_1EC8801E8);
  sub_1D726443C();
  if (!v2)
  {
    v39 = v36;
    v38 = v37;
    v50 = 1;
    sub_1D726443C();
    v39 = v34;
    v38 = v35;
    v50 = 2;
    sub_1D726443C();
    v39 = v32;
    v38 = v33;
    v50 = 3;
    sub_1D726443C();
    v39 = v30;
    v38 = v31;
    v50 = 4;
    sub_1D726443C();
    v39 = v28;
    v38 = v29;
    v50 = 5;
    sub_1D726443C();
    v39 = v26;
    v38 = v27;
    v50 = 6;
    sub_1D726443C();
    v38 = v42;
    v39 = v43;
    v40 = v44;
    v41 = v45;
    v50 = 7;
    sub_1D5EA5368();
    sub_1D726443C();
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v50 = 8;
    sub_1D726443C();
    v39 = v24;
    v38 = v25;
    v50 = 9;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t CoverIssueViewLayout.Attributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6EADE60(0, &qword_1EDF03A38, sub_1D6EADE0C, &type metadata for CoverIssueViewLayout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v40 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - v8;
  v10 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D6EADE0C();
  sub_1D7264B0C();
  if (!v2)
  {
    type metadata accessor for CGRect(0);
    LOBYTE(v45) = 0;
    sub_1D5BEAAD4(&qword_1EDF1A740);
    sub_1D726431C();
    v38 = v51;
    v39 = v50;
    LOBYTE(v45) = 1;
    sub_1D726431C();
    v36 = v51;
    v37 = v50;
    LOBYTE(v45) = 2;
    sub_1D726431C();
    v34 = v51;
    v35 = v50;
    LOBYTE(v45) = 3;
    sub_1D726431C();
    v32 = v51;
    v33 = v50;
    LOBYTE(v45) = 4;
    sub_1D726431C();
    v30 = v51;
    v31 = v50;
    LOBYTE(v45) = 5;
    sub_1D726431C();
    v28 = v51;
    v29 = v50;
    LOBYTE(v45) = 6;
    sub_1D726431C();
    v25 = v51;
    v26 = v50;
    v49 = 7;
    v27 = sub_1D5EA5310();
    sub_1D726431C();
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v61 = v53;
    v44 = 8;
    sub_1D726431C();
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v41 = 9;
    sub_1D726431C();
    (*(v6 + 8))(v9, v40);
    v12 = v38;
    *a2 = v39;
    a2[1] = v12;
    v13 = v36;
    a2[2] = v37;
    a2[3] = v13;
    v14 = v34;
    a2[4] = v35;
    a2[5] = v14;
    v15 = v32;
    a2[6] = v33;
    a2[7] = v15;
    v16 = v30;
    a2[8] = v31;
    a2[9] = v16;
    v17 = v28;
    a2[10] = v29;
    a2[11] = v17;
    v18 = v25;
    a2[12] = v26;
    a2[13] = v18;
    v19 = v59;
    a2[14] = v58;
    a2[15] = v19;
    v20 = v61;
    a2[16] = v60;
    a2[17] = v20;
    v21 = v54;
    v22 = v55;
    v23 = v57;
    a2[20] = v56;
    a2[21] = v23;
    a2[18] = v21;
    a2[19] = v22;
    v24 = v43;
    a2[22] = v42;
    a2[23] = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_1D6EAD168(uint64_t a1)
{
  v2 = sub_1D6EAE7F8();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t sub_1D6EAD1D4()
{
  sub_1D5EF958C();

  return sub_1D725A24C();
}

uint64_t CoverIssueViewLayout.Context.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 120);
  v12[6] = *(v1 + 104);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 129);
  v4 = *(v1 + 24);
  v5 = *(v1 + 56);
  v12[2] = *(v1 + 40);
  v12[3] = v5;
  v12[4] = *(v1 + 72);
  v12[5] = v2;
  v12[0] = *(v1 + 8);
  v12[1] = v4;
  v6 = *(v1 + 88);
  v7 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 129);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v9;
  a1[4] = *(v1 + 72);
  a1[5] = v6;
  *a1 = *(v1 + 8);
  a1[1] = v8;
  return sub_1D5ECF2C4(v12, &v11);
}

uint64_t CoverIssueViewLayout.Context.secondaryModel.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 168);
  v5 = *(v1 + 200);
  v13[2] = *(v1 + 184);
  v13[3] = v5;
  v13[4] = *(v1 + 216);
  v13[5] = v2;
  v13[0] = *(v1 + 152);
  v13[1] = v4;
  v6 = *(v1 + 264);
  v13[6] = v3;
  v14[0] = v6;
  *(v14 + 9) = *(v1 + 273);
  v7 = *(v1 + 232);
  v8 = *(v1 + 264);
  a1[6] = *(v1 + 248);
  a1[7] = v8;
  *(a1 + 121) = *(v1 + 273);
  v9 = *(v1 + 168);
  v10 = *(v1 + 200);
  a1[2] = *(v1 + 184);
  a1[3] = v10;
  a1[4] = *(v1 + 216);
  a1[5] = v7;
  *a1 = *(v1 + 152);
  a1[1] = v9;
  return sub_1D6B63F2C(v13, &v12);
}

uint64_t sub_1D6EAD3B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D6CAFA6C();
  v5 = (*(v3 + 80))(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1D6EAD460@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D6CAFA6C();
  v5 = (*(v3 + 88))(v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1D6EAD510@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  if (*(a2 + 80) == 1 || *(a2 + 96) == 0)
  {
    v8 = [*a2 coverDate];
    sub_1D726207C();
  }

  else
  {
  }

  v9 = sub_1D726213C();
  v11 = v10;

  v12 = (*(v6 + 96))(v9, v11, v5, v6);

  *a3 = v12;
  return result;
}

uint64_t sub_1D6EAD604@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 24);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D6CAFB7C();
  if (v4 == 2)
  {
    v7 = (*(v5 + 96))(v6);
  }

  else
  {
    v7 = (*(v5 + 104))(v6);
  }

  v8 = v7;

  *a3 = v8;
  return result;
}

uint64_t sub_1D6EAD6D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v7 = sub_1D726213C();
  v9 = v8;

  v10 = (*(v4 + 112))(v7, v9, v3, v4);

  *a2 = v10;
  return result;
}

uint64_t sub_1D6EAD7F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v7 = sub_1D726213C();
  v9 = v8;

  v10 = (*(v4 + 120))(v7, v9, v3, v4);

  *a2 = v10;
  return result;
}

uint64_t sub_1D6EAD930@<X0>(id *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1D6EADA84(a1);
  v6 = v5;
  v7 = *a1;
  v8 = [*a1 coverDate];
  v9 = sub_1D726207C();
  v11 = v10;

  sub_1D5BF4D9C();
  LOBYTE(v8) = sub_1D7263A8C();

  if ((v8 & 1) == 0)
  {
    sub_1D6EADD6C(0, &qword_1EDF195A0, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7270C10;
    *(v13 + 32) = v4;
    *(v13 + 40) = v6;
    v14 = [v7 coverDate];
    v15 = sub_1D726207C();
    v17 = v16;

    *(v13 + 48) = v15;
    *(v13 + 56) = v17;
    v4 = sub_1D725CE4C();
    v6 = v18;
  }

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_1D6EADA84(id *a1)
{
  v1 = *a1;
  v2 = [*a1 title];
  sub_1D726207C();

  v3 = [objc_msgSend(v1 sourceChannel)];
  swift_unknownObjectRelease();
  v4 = sub_1D726207C();
  v6 = v5;

  v21 = v4;
  sub_1D5BF4D9C();
  LOBYTE(v4) = sub_1D7263A8C();

  if (v4)
  {
    v7 = [v1 title];
    v8 = sub_1D726207C();
  }

  else
  {
    sub_1D6EADD6C(0, &qword_1EDF195A0, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D7270C10;
    v10 = [objc_msgSend(v1 sourceChannel];
    swift_unknownObjectRelease();
    v11 = sub_1D726207C();
    v13 = v12;

    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    v14 = [v1 title];
    v15 = sub_1D726207C();
    v17 = v16;

    *(v9 + 48) = v15;
    *(v9 + 56) = v17;
    v8 = sub_1D725CE4C();
    v19 = v18;

    if (!v19)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1D6EADCDC@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _BYTE *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1D70DCED8(a1, a2, a3, *a4, a4[1]);
  *a5 = result;
  a5[1] = v7;
  return result;
}

id sub_1D6EADD0C@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, _BYTE *)@<X1>, uint64_t a3@<X2>, void **a4@<X3>, void *a5@<X8>)
{
  result = sub_1D70DD020(a1, a2, a3, *a4);
  *a5 = result;
  return result;
}

id sub_1D6EADD3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1D70DD020(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

void sub_1D6EADD6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D5B49CBC(255, &qword_1EDF43BE0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6EADDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D70DCED8(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t sub_1D6EADE0C()
{
  result = qword_1EDF0F358[0];
  if (!qword_1EDF0F358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0F358);
  }

  return result;
}

void sub_1D6EADE60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t _s8NewsFeed20CoverIssueViewLayoutV7ContextV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(v5 + 24);
  if (!v6 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v4 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) == *(v5 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier) && *(v4 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8) == *(v5 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier + 8);
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D6EADF9C()
{
  result = qword_1EC897A10;
  if (!qword_1EC897A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A10);
  }

  return result;
}

unint64_t sub_1D6EADFFC()
{
  result = qword_1EDF0F340;
  if (!qword_1EDF0F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F340);
  }

  return result;
}

unint64_t sub_1D6EAE054()
{
  result = qword_1EC897A18;
  if (!qword_1EC897A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A18);
  }

  return result;
}

unint64_t sub_1D6EAE0AC()
{
  result = qword_1EC897A20;
  if (!qword_1EC897A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A20);
  }

  return result;
}

unint64_t sub_1D6EAE104()
{
  result = qword_1EC897A28;
  if (!qword_1EC897A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A28);
  }

  return result;
}

unint64_t sub_1D6EAE15C()
{
  result = qword_1EC897A30;
  if (!qword_1EC897A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A30);
  }

  return result;
}

uint64_t sub_1D6EAE1C8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 384))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6EAE1E8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 384) = v3;
  return result;
}

uint64_t sub_1D6EAE290(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_1D6EAE2D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6EAE3C0()
{
  result = qword_1EC897A38;
  if (!qword_1EC897A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A38);
  }

  return result;
}

unint64_t sub_1D6EAE418()
{
  result = qword_1EDF0F348;
  if (!qword_1EDF0F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F348);
  }

  return result;
}

unint64_t sub_1D6EAE470()
{
  result = qword_1EDF0F350;
  if (!qword_1EDF0F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F350);
  }

  return result;
}

uint64_t sub_1D6EAE4C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x62614C656C746974 && a2 == 0xEF656D6172466C65 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEE00656D61724679 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C7BD0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73F56A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73F56C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F634964756F6C63 && a2 == 0xEE00656D6172466ELL || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D73C48C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000027 && 0x80000001D73F56E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D73F5710 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_1D6EAE7F8()
{
  result = qword_1EC897A40;
  if (!qword_1EC897A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A40);
  }

  return result;
}

uint64_t FormatStateMachineEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatStateMachineEvent.fromState.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t FormatStateMachineEvent.toState.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D6EAE910@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t FormatStateMachineEventValue.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatStateMachineEventValue.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t _s8NewsFeed23FormatStateMachineEventV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_1D72646CC() & 1) == 0 || (sub_1D5BFC390(v2, v6) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v7)
  {
    return 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D6EAEAA4(uint64_t a1)
{
  result = sub_1D6EAEACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6EAEACC()
{
  result = qword_1EC897A48;
  if (!qword_1EC897A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A48);
  }

  return result;
}

unint64_t sub_1D6EAEB24()
{
  result = qword_1EDF1B9D8;
  if (!qword_1EDF1B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF1B9D8);
  }

  return result;
}

unint64_t sub_1D6EAEBB8()
{
  result = qword_1EC897A50;
  if (!qword_1EC897A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A50);
  }

  return result;
}

unint64_t sub_1D6EAEC0C(uint64_t a1)
{
  result = sub_1D66BEE28();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EAEC74(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6EAECC8()
{
  result = qword_1EDF21770;
  if (!qword_1EDF21770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21770);
  }

  return result;
}

unint64_t sub_1D6EAED1C()
{
  result = qword_1EDF21780;
  if (!qword_1EDF21780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21780);
  }

  return result;
}

unint64_t sub_1D6EAED70()
{
  result = qword_1EDF21778;
  if (!qword_1EDF21778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF21778);
  }

  return result;
}

uint64_t sub_1D6EAEDE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D5C4E168();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8E028();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  switch(*v2 >> 60)
  {
    case 1uLL:
      v26 = (v13 & 0xFFFFFFFFFFFFFFFLL);
      v27 = v26[3];
      v28 = v26[4];
      v29 = v26[5];
      v36 = v26[2];
      v37 = v27;

      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v28, v29);

      v30 = v37;
      *a2 = v36;
      a2[1] = v30;
      v19 = type metadata accessor for FormatJson();
      goto LABEL_10;
    case 2uLL:
      v20 = swift_projectBox();
      sub_1D6EAF2D4(v20, v12, sub_1D5C8E028);
      sub_1D725889C();
      v22 = v21;
      sub_1D6EAF33C(v12, sub_1D5C8E028);
      *a2 = v22;
      v23 = type metadata accessor for FormatJson();
      goto LABEL_18;
    case 3uLL:
    case 4uLL:
      *a2 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = type metadata accessor for FormatJson();
      goto LABEL_10;
    case 5uLL:
      v31 = v13 & 0xFFFFFFFFFFFFFFFLL;
      v32 = *(v31 + 24);
      *a2 = *(v31 + 16);
      a2[1] = v32;
      v33 = type metadata accessor for FormatJson();
      swift_storeEnumTagMultiPayload();
      (*(*(v33 - 8) + 56))(a2, 0, 1, v33);

    case 6uLL:
      v34 = swift_projectBox();
      sub_1D6EAF2D4(v34, v8, sub_1D5C4E168);
      v35 = sub_1D72585BC();
      (*(*(v35 - 8) + 16))(a2, v8, v35);
      sub_1D6EAF33C(v8, sub_1D5C4E168);
      v23 = type metadata accessor for FormatJson();
LABEL_18:
      swift_storeEnumTagMultiPayload();
      return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
    case 7uLL:
      *a2 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v24 = type metadata accessor for FormatJson();
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a2, 0, 1, v24);

    case 8uLL:
      v36 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      sub_1D6EAEDE4(a1);

    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
      v14 = type metadata accessor for FormatJson();
      v15 = *(*(v14 - 8) + 56);
      v16 = v14;
      v17 = a2;
      v18 = 1;
      goto LABEL_11;
    default:
      *a2 = *(v13 + 16);
      v19 = type metadata accessor for FormatJson();
LABEL_10:
      swift_storeEnumTagMultiPayload();
      v15 = *(*(v19 - 8) + 56);
      v17 = a2;
      v18 = 0;
      v16 = v19;
LABEL_11:

      return v15(v17, v18, 1, v16);
  }
}

uint64_t sub_1D6EAF2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EAF33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6EAF39C(uint64_t a1, uint64_t a2)
{
  sub_1D680BDA0();

  if (swift_dynamicCast())
  {
    v4 = *(&v8 + 1);
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v5 + 8))(a1, a2, v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    return sub_1D6EB1ED4(&v7, &qword_1EDF329A0, sub_1D680BDA0);
  }
}

uint64_t sub_1D6EAF49C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      v5 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

      sub_1D6209D40(v4, a2, v5, v6, v7);
    }
  }

  else
  {
    v8 = *(a3 + 32);
    v16[0] = *(a3 + 16);
    v9 = *(a3 + 48);
    v16[1] = v8;
    v16[2] = v9;
    v17 = *(a3 + 64);
    v10 = *(a3 + 32);
    v12 = *(a3 + 16);
    v13 = v10;
    v14 = *(a3 + 48);
    v15 = *(a3 + 64);
    sub_1D5FD78CC(v16, v11);
    FormatTextNodeBinding.bind(binder:context:)(v4, a2);
    return sub_1D5FD7B18(v16);
  }

  return result;
}

void FormatStateViewNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v67 = a1;
  v6 = sub_1D725895C();
  v66 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CDEA50(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v53 - v12;
  v68 = a2;
  v14 = *(a2 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v15 = *(v14 + 8);
  v17 = *(v4 + 56);
  v16 = *(v4 + 64);
  if (!*(v15 + 16))
  {
    goto LABEL_9;
  }

  v64 = v4;

  v18 = sub_1D5B69D90(v17, v16);
  if ((v19 & 1) == 0)
  {

LABEL_9:
    type metadata accessor for FormatLayoutError();
    sub_1D5B57468(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v48 = v17;
    v48[1] = v16;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return;
  }

  v56 = v6;
  v58 = v17;
  v59 = v16;
  v57 = v3;
  sub_1D6E18DC8(*(v15 + 56) + *(v10 + 72) * v18, v13);
  v62 = *(v13 + 1);
  v20 = *(v13 + 4);
  v61 = *(v13 + 3);
  v60 = v20;
  v21 = *(v13 + 5);
  v22 = *(v13 + 6);
  v23 = *(v13 + 8);
  v63 = *(v13 + 7);
  v24 = *(v13 + 9);
  v25 = v13[80];

  v26 = v20;
  v27 = v22;
  v28 = v22;
  v29 = v63;
  sub_1D618EC0C(v26, v21, v27, v63, v23, v24, v25);
  sub_1D6E18E2C(v13);

  v30 = v28;
  v31 = v60;

  sub_1D618EC0C(v31, v21, v30, v29, v23, v24, v25);

  sub_1D60CF6F4(v31, v21, v30, v29, v23, v24, v25);
  if (v25 >> 6 != 1)
  {
    sub_1D60CF6F4(v31, v21, v30, v29, v23, v24, v25);
    v16 = v59;
    v17 = v58;
    goto LABEL_9;
  }

  v62 = v21;
  if (v25)
  {
    v32 = v31;
    v33 = v30;
    v61 = v23;
    v34 = v24;
LABEL_6:
    v35 = v64;
    swift_beginAccess();
    v36 = *(v35 + 16);
    v37 = *(v35 + 24);

    v55 = sub_1D6E8DD40(v36, v37);
    v54 = v38;

    v39 = v67;
    swift_beginAccess();
    v40 = v65;
    sub_1D725894C();
    v41 = sub_1D725893C();
    v43 = v42;
    (*(v66 + 8))(v40, v56);
    v75 = v25 & 1;
    v73[0] = v41;
    v73[1] = v43;
    v73[2] = v58;
    v73[3] = v59;
    v44 = v62;
    v73[4] = v32;
    v73[5] = v62;
    v53 = v33;
    v45 = v63;
    v73[6] = v33;
    v73[7] = v63;
    v46 = v61;
    v73[8] = v61;
    v73[9] = v34;
    v74 = v25 & 1;
    sub_1D618EC0C(v32, v62, v33, v63, v61, v34, v25);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = *(v39 + 72);
    *(v39 + 72) = 0x8000000000000000;
    sub_1D6D780BC(v73, v55, v54, isUniquelyReferenced_nonNull_native);

    *(v39 + 72) = v72;
    swift_endAccess();
    FormatStateViewNode.bindChildren(binder:context:)(v39, v68);
    sub_1D60CF6F4(v32, v44, v53, v45, v46, v34, v25);
    return;
  }

  v49 = *(v30 + 32);
  v69 = *(v30 + 16);
  v70 = v49;
  *v71 = *(v30 + 48);
  *&v71[15] = *(v30 + 63);

  v50 = v68;
  v51 = v57;
  FormatCommandBinding.bind(binder:context:)(v67, v68);
  if (!v51)
  {
    sub_1D620BE38(v67, v50, v29);
    sub_1D6EAF39C(v67, v50);
    v57 = 0;
    v32 = v31;
    v33 = v30;
    v52 = v29;
    v61 = v23;
    v34 = v24;
    sub_1D5E32940(v30, v52, v23, v24, 0);
    goto LABEL_6;
  }

  sub_1D60CF6F4(v31, v62, v30, v29, v23, v24, v25);
  sub_1D5E32940(v30, v29, v23, v24, 0);
}

unint64_t FormatStateViewNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

unint64_t FormatStateViewNode.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

uint64_t sub_1D6EAFDB0(uint64_t *a1)
{
  v2 = a1;
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[9];
  v6 = *(v5 + 16);
  if (v6)
  {
    v16 = v1[7];
    v18 = MEMORY[0x1E69E7CC0];

    sub_1D5BFC364(0, v6, 0);
    v7 = v18;
    v8 = (v5 + 56);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v12 = *(v18 + 16);
      v11 = *(v18 + 24);

      if (v12 >= v11 >> 1)
      {
        sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      }

      *(v18 + 16) = v12 + 1;
      v13 = v18 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 5;
      --v6;
    }

    while (v6);
    v2 = a1;
    v4 = v16;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v3;
  *(v14 + 32) = v7;
  sub_1D6C4D24C(v14 | 0xA000000000000000);

  return sub_1D62A0388(v2);
}

uint64_t FormatStateViewNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatStateViewNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatStateViewNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return sub_1D5C92A8C(v3);
}

uint64_t FormatStateViewNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t FormatStateViewNode.stateMachineName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t FormatStateViewNode.zIndex.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

unint64_t FormatStateViewNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  return sub_1D5EB15C4(v3);
}

uint64_t FormatStateViewNode.isUserInteractionEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t FormatStateViewNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

uint64_t FormatStateViewNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatStateViewNode.__allocating_init(identifier:size:resize:adjustments:stateMachineName:states:zIndex:visibility:isUserInteractionEnabled:animation:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12, uint64_t a13, __int128 *a14)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a4;
  v23 = *a10;
  v28 = *(a14 + 5);
  v29 = *(a14 + 4);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  swift_beginAccess();
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_beginAccess();
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  swift_beginAccess();
  *(v20 + 80) = a9;
  swift_beginAccess();
  *(v20 + 88) = v23;
  swift_beginAccess();
  *(v20 + 96) = a11;
  *(v20 + 104) = a12;
  swift_beginAccess();
  *(v20 + 112) = a13;
  v24 = *a14;
  *(v20 + 136) = a14[1];
  *(v20 + 120) = v24;
  *(v20 + 152) = v29;
  *(v20 + 160) = v28;
  return v20;
}

uint64_t FormatStateViewNode.init(identifier:size:resize:adjustments:stateMachineName:states:zIndex:visibility:isUserInteractionEnabled:animation:selectors:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, char a11, uint64_t a12, uint64_t a13, __int128 *a14)
{
  v20 = *a3;
  v21 = *a4;
  v25 = *a10;
  v26 = *(a14 + 5);
  v27 = *(a14 + 4);
  swift_beginAccess();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  swift_beginAccess();
  *(v14 + 32) = v20;
  *(v14 + 40) = v21;
  swift_beginAccess();
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  *(v14 + 72) = a8;
  swift_beginAccess();
  *(v14 + 80) = a9;
  swift_beginAccess();
  *(v14 + 88) = v25;
  swift_beginAccess();
  *(v14 + 96) = a11;
  *(v14 + 104) = a12;
  swift_beginAccess();
  *(v14 + 112) = a13;
  v22 = *a14;
  *(v14 + 136) = a14[1];
  *(v14 + 120) = v22;
  *(v14 + 152) = v27;
  *(v14 + 160) = v26;
  return v14;
}

uint64_t FormatStateViewNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 88));

  sub_1D5EB2398(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  return v0;
}

uint64_t FormatStateViewNode.__deallocating_deinit()
{
  FormatStateViewNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D6EB0818@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D66BF88C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D6EB0874@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v10 = *a1;
  v11 = (~*a2 & 0xF000000000000007) != 0 && ((*a2 >> 59) & 0x1E | (*a2 >> 2) & 1) == 9;
  if (!v11 || (v21 = *((*a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10), swift_beginAccess(), *(*(a3 + 16) + 16)))
  {
    swift_beginAccess();
    v12 = *(a3 + 16);
    v13 = *(a4 + 40);
    if (v13 && (v14 = *(v13 + 16), swift_beginAccess(), *(*(v14 + 16) + 16)))
    {
    }

    else
    {
      v14 = 0;
    }

    swift_beginAccess();
    v15 = *(a4 + 80);
    swift_beginAccess();
    v16 = *(a4 + 88);

    sub_1D5EB1500(v16);
    sub_1D615B4A8(a5, &v29);
    sub_1D5EB15C4(v16);
    v17 = v29;
    swift_beginAccess();
    v18 = *(a4 + 96);
    type metadata accessor for FormatStateViewNodeLayoutAttributes();
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    *(v19 + 24) = v12;
    *(v19 + 32) = v14;
    *(v19 + 40) = v15;
    *(v19 + 48) = v17;
    swift_beginAccess();
    *(v19 + 56) = v18;
    result = swift_allocObject();
    *(result + 16) = v19;
    *a6 = result | 0x4000000000000004;
  }

  else
  {
    v22 = *(v21 + 24);
    v23 = *(v21 + 32);
    v25 = *(v21 + 40);
    v24 = *(v21 + 48);
    swift_beginAccess();
    v26 = *(v21 + 56);
    type metadata accessor for FormatStateViewNodeLayoutAttributes();
    v27 = swift_allocObject();
    *(v27 + 16) = v10;
    *(v27 + 24) = v22;
    *(v27 + 32) = v23;
    *(v27 + 40) = v25;
    *(v27 + 48) = v24;
    swift_beginAccess();
    *(v27 + 56) = v26;
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *a6 = v28 | 0x4000000000000004;

    return sub_1D5EB1500(v24);
  }

  return result;
}

uint64_t sub_1D6EB0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v36 = a6;
  v37 = a7;
  sub_1D6EB2174(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v38 = v34 - v14;
  v39 = a1;
  swift_getKeyPath();
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69D74F0];
  v40 = a2;
  v41 = a3;
  sub_1D5EB5368(0);
  v16 = v15;
  v17 = sub_1D5B57468(&qword_1EDF3C040, 255, sub_1D5EB5368);
  sub_1D5B57468(&qword_1EDF3C168, 255, sub_1D5EB544C);

  v34[1] = v17;
  v34[2] = v16;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v34[0] = a1;
  v44 = a1;
  swift_getKeyPath();
  v35 = a4;
  v18 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a5 + 16);
  v20 = *(a5 + 24);
  v21 = *(v18 + 40);
  if (v21)
  {
    v40 = *(v18 + 32);
    v41 = v21;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v20);

    v19 = v40;
    v20 = v41;
  }

  else
  {
  }

  v22 = MEMORY[0x1E69E6158];
  v42 = MEMORY[0x1E69E6158];
  v23 = MEMORY[0x1E69D74F0];
  v43 = MEMORY[0x1E69D74F0];
  v40 = v19;
  v41 = v20;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v24 = v34[0];
  v44 = v34[0];
  swift_getKeyPath();
  v26 = *(a5 + 16);
  v25 = *(a5 + 24);
  v42 = v22;
  v43 = v23;
  v40 = v26;
  v41 = v25;

  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v40 = v24;
  v27 = sub_1D7259B8C();
  v28 = v38;
  (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
  v29 = swift_allocObject();
  v31 = v35;
  v30 = v36;
  v29[2] = a5;
  v29[3] = v31;
  v32 = v37;
  v29[4] = v30;
  v29[5] = v32;

  sub_1D7259AAC();
  sub_1D6EB1ED4(v28, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

void sub_1D6EB0EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v69 = a1;
  v70 = a5;
  v62 = type metadata accessor for FormatSourceMapContext();
  v60 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v10);
  v76 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v61 = (&v59 - v14);
  v72 = sub_1D725A36C();
  MEMORY[0x1EEE9AC00](v72, v15);
  v71 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 72);
  v68 = *(v18 + 16);
  if (!v68)
  {
    return;
  }

  v67 = a4;
  v19 = 0;
  v20 = *(a3 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v21 = (v18 + 32);
  v66 = *MEMORY[0x1E69D7378];
  v65 = (v16 + 104);
  v75 = v20;
  v64 = a3;
  v63 = v18;
  while (v19 < *(v18 + 16))
  {
    v25 = *(v21 + 4);
    v26 = *v21;
    v27 = v21[1];
    v77 = v21;
    v83 = v25;
    v81 = v26;
    v82 = v27;
    v28 = *(&v27 + 1);
    v29 = v27;
    v30 = v20[3];
    if (v30)
    {
      v78 = v20[2];
      v79 = v30;
      sub_1D6EB1F30(&v81, v80);

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v29, v28);
      v29 = v78;
      v28 = v79;
    }

    else
    {
      sub_1D6EB1F30(&v81, v80);
    }

    Strong = swift_weakLoadStrong();
    v84 = v29;
    if (Strong)
    {
      v32 = *(Strong + 32);
      v33 = v20[6];
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v32 + 16);
      *(v32 + 16) = 0x8000000000000000;
      sub_1D6D7741C(v33, v84, v28, isUniquelyReferenced_nonNull_native);

      *(v32 + 16) = v78;
      swift_endAccess();
      v29 = v84;
      v20 = v75;
    }

    v35 = sub_1D6B0B228(0, 0);
    v36 = (*v65)(v71, v66, v72);
    MEMORY[0x1EEE9AC00](v36, v37);
    *(&v59 - 6) = v29;
    *(&v59 - 5) = v28;
    *(&v59 - 4) = v35;
    *(&v59 - 3) = &v81;
    v38 = v67;
    *(&v59 - 2) = v67;
    sub_1D6EB1FB0(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
    swift_allocObject();
    v39 = sub_1D725A4EC();
    if (v6)
    {
      sub_1D6EB2074(&v81);

      return;
    }

    v40 = v39;
    v41 = *(*(v38 + 24) + 16);
    if (v41)
    {
      v73 = v19;
      v74 = 0;
      v42 = *(v41 + 32);
      v43 = v61;
      *v61 = v35;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_1D6D89234(v43, v76);

      v44 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v42 + 24);
      v45 = v78;
      *(v42 + 24) = 0x8000000000000000;
      v47 = sub_1D5B69D90(v84, v28);
      v48 = v45[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_28;
      }

      v51 = v46;
      if (v45[3] >= v50)
      {
        if (v44)
        {
          v54 = v78;
          if ((v46 & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          sub_1D6D7ED90();
          v54 = v78;
          if ((v51 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        sub_1D6D678D0(v50, v44);
        v52 = sub_1D5B69D90(v84, v28);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_30;
        }

        v47 = v52;
        v54 = v78;
        if ((v51 & 1) == 0)
        {
LABEL_21:
          v54[(v47 >> 6) + 8] |= 1 << v47;
          v55 = (v54[6] + 16 * v47);
          *v55 = v84;
          v55[1] = v28;
          sub_1D6D89234(v76, v54[7] + *(v60 + 72) * v47);
          v56 = v54[2];
          v57 = __OFADD__(v56, 1);
          v58 = v56 + 1;
          if (v57)
          {
            goto LABEL_29;
          }

          v54[2] = v58;

          goto LABEL_4;
        }
      }

      sub_1D6EB20F0(v76, v54[7] + *(v60 + 72) * v47);
LABEL_4:
      *(v42 + 24) = v54;

      swift_endAccess();

      v19 = v73;
      v6 = v74;
      v20 = v75;
    }

    ++v19;
    v22 = swift_allocObject();
    *(v22 + 16) = v84;
    *(v22 + 24) = v28;
    *(v22 + 32) = v40;
    v23 = v82;
    *(v22 + 40) = v81;
    *(v22 + 56) = v23;
    v24 = v70;
    *(v22 + 72) = v83;
    *(v22 + 80) = v24;

    sub_1D7259D4C();

    v21 = (v77 + 40);
    v18 = v63;
    if (v68 == v19)
    {
      return;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  sub_1D726493C();
  __break(1u);
}

uint64_t sub_1D6EB1598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[3] = a4;
  v24[1] = a2;
  v24[2] = a3;
  sub_1D5CDEA50(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v24 - v13;
  v15 = MEMORY[0x1E69D6FA0];
  sub_1D6EB2174(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v24 - v18;
  v26 = a1;
  v20 = sub_1D7259B8C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  swift_getKeyPath();
  (*(v11 + 104))(v14, *MEMORY[0x1E69D74A8], v10);
  v21 = swift_allocObject();
  v22 = *(a5 + 16);
  *(v21 + 16) = *a5;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a5 + 32);
  *(v21 + 56) = a6;
  sub_1D6EB1F30(a5, v25);
  sub_1D5EB563C(0);
  sub_1D5B57468(&qword_1EDF3C118, 255, sub_1D5EB563C);

  sub_1D7259AFC();

  (*(v11 + 8))(v14, v10);
  return sub_1D6EB1ED4(v19, &qword_1EDF3C120, v15);
}

uint64_t sub_1D6EB1888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  type metadata accessor for FormatStateViewNodeStateLayoutAttributes();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_1D6D7C620(v9, v8, v7, isUniquelyReferenced_nonNull_native);

  *(a3 + 16) = v12;
  swift_endAccess();

  *a4 = 0xA000000000000004;
  return result;
}

uint64_t sub_1D6EB1988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v36 = a1;
  swift_getKeyPath();
  v32 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69D74F0];
  v30 = a2;
  v31 = a3;
  sub_1D5EB5368(0);
  sub_1D5B57468(&qword_1EDF3C040, 255, sub_1D5EB5368);
  sub_1D5B57468(&qword_1EDF3C168, 255, sub_1D5EB544C);

  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v30);
  v36 = a1;
  swift_getKeyPath();
  v14 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  v29 = a5;
  v15 = *a5;
  v16 = a5[1];
  v17 = *(v14 + 40);
  v27 = v16;
  v28 = v15;
  if (v17)
  {
    v30 = *(v14 + 32);
    v31 = v17;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v15, v16);
    v15 = v30;
    v16 = v31;
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v32 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69D74F0];
  v30 = v15;
  v31 = v16;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v30);
  v36 = a1;
  swift_getKeyPath();
  v32 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69D74F0];
  v30 = v28;
  v31 = v27;
  sub_1D7259A0C();

  result = __swift_destroy_boxed_opaque_existential_1(&v30);
  v19 = v29[4];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 32);
    do
    {
      v22 = *v21;
      v23 = v21[2];
      v34[1] = v21[1];
      v34[2] = v23;
      v34[0] = v22;
      v24 = v21[3];
      v25 = v21[4];
      v26 = v21[5];
      v35 = *(v21 + 12);
      v34[4] = v25;
      v34[5] = v26;
      v34[3] = v24;
      sub_1D5C5C4CC(v34, &v30);
      sub_1D6FBF7BC(a1, a4, a6);
      result = sub_1D5C5C540(v34);
      if (v7)
      {
        break;
      }

      v21 = (v21 + 104);
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_1D6EB1CC4(uint64_t a1, uint64_t a2)
{
  result = sub_1D5B57468(&qword_1EC897A58, a2, type metadata accessor for FormatStateViewNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EB1D40(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5B57468(&qword_1EDF2BF40, a2, type metadata accessor for FormatStateViewNode);
  a1[2] = sub_1D5B57468(&qword_1EDF0F8A0, v3, type metadata accessor for FormatStateViewNode);
  result = sub_1D5B57468(&qword_1EC897A60, v4, type metadata accessor for FormatStateViewNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6EB1DEC(uint64_t a1, uint64_t a2)
{
  result = sub_1D5B57468(&qword_1EC897A68, a2, type metadata accessor for FormatStateViewNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EB1ED4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6EB2174(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6EB1FB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayout;
    v8[1] = type metadata accessor for FormatLayoutAttributes();
    v8[2] = sub_1D5EB5218();
    v8[3] = sub_1D5B57468(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6EB20F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSourceMapContext();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D6EB2174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D6EB21C8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t FeedItemLayoutAttributes.resizingIdentifier.getter()
{
  v1 = *v0 >> 60;
  result = 0;
  if (((1 << v1) & 0x77F) == 0)
  {
    if (v1 == 7)
    {
      sub_1D6CCCC8C();
      v4 = *(*(*(swift_projectBox() + *(v3 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 48);

      return v4;
    }

    else
    {
      return FeedItemLayoutAttributes.resizingIdentifier.getter(0, 0);
    }
  }

  return result;
}

uint64_t FeedItemLayoutAttributes.resizingGroupIdentifier.getter()
{
  v1 = *v0 >> 60;
  result = 0;
  if (((1 << v1) & 0x77F) == 0)
  {
    if (v1 == 7)
    {
      sub_1D6CCCC8C();
      v4 = *(*(swift_projectBox() + *(v3 + 48)) + 48);

      return v4;
    }

    else
    {
      return FeedItemLayoutAttributes.resizingGroupIdentifier.getter(0, 0);
    }
  }

  return result;
}

uint64_t FeedItemLayoutAttributes.dragBackgroundColor.getter()
{
  v1 = type metadata accessor for HeadlineViewLayout.Context(0);
  v4 = MEMORY[0x1EEE9AC00](v1, v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v8 = *v0;
  v9 = v8 >> 60;
  if ((v8 >> 60) > 0xB)
  {
LABEL_11:
    if (v9 >= 4)
    {
      v16 = v3;
      sub_1D5BE5E28();
      v17 = swift_projectBox();
      sub_1D6EB3C6C(v17, v6, type metadata accessor for HeadlineViewLayout.Context);
      v18 = &v6[*(v16 + 24)];
      v19 = *(v18 + 3);
      v20 = *(v18 + 4);
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v21 = (*(v20 + 32))(v19, v20);
      sub_1D6EB3CD4(v6, type metadata accessor for HeadlineViewLayout.Context);
      return v21;
    }

    return result;
  }

  if (((1 << v9) & 0x760) != 0)
  {
    return result;
  }

  if (v9 != 7)
  {
    if (v9 == 11)
    {
      *&v24[0] = *((v8 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      return FeedItemLayoutAttributes.dragBackgroundColor.getter(0, v4);
    }

    goto LABEL_11;
  }

  sub_1D6CCCC8C();
  v11 = *(*(swift_projectBox() + *(v10 + 48)) + 32);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 64);
  v24[0] = *(v11 + 48);
  v24[1] = v12;
  v13 = *(v11 + 96);
  v24[2] = *(v11 + 80);
  v24[3] = v13;
  v25 = *(v11 + 112);
  if ((v25 & 0xFE) == 0x7E)
  {
    return 0;
  }

  v14 = *&v24[0];
  swift_beginAccess();

  sub_1D6EB3C6C(v24, v23, sub_1D6EB3D90);
  v15 = sub_1D726327C();
  if ((~v14 & 0xF000000000000007) == 0)
  {
    sub_1D6EB3CD4(v24, sub_1D6EB3D90);

    return 0;
  }

  v23[0] = v14;
  v22 = FormatColor.color.getter(v15);
  sub_1D6EB3CD4(v24, sub_1D6EB3D90);

  return v22;
}

uint64_t FeedItemLayoutAttributes.dragPreviewClipping.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatItemNodeLayoutContext();
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1 >> 60;
  if (v8 <= 4)
  {
    if (v8 < 4)
    {
LABEL_7:
      v10 = MEMORY[0x1E69D7C08];
LABEL_15:
      v28 = *v10;
      v29 = sub_1D725DE2C();
      v30 = *(*(v29 - 8) + 104);

      return v30(a1, v28, v29);
    }

    sub_1D5BE5E28();
    v26 = *(swift_projectBox() + *(v25 + 48) + 264);
    __asm { FMOV            V1.2D, #-8.0 }

    *a1 = _Q1;
    *(a1 + 16) = _Q1;
    *(a1 + 32) = v26;
LABEL_14:
    v10 = MEMORY[0x1E69D7BF8];
    goto LABEL_15;
  }

  if (v8 > 7)
  {
    if ((v8 - 8) >= 2 && v8 != 10)
    {
      *&v39[0] = *((*v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      return FeedItemLayoutAttributes.dragPreviewClipping.getter(v5);
    }

    goto LABEL_7;
  }

  if ((v8 - 5) < 2)
  {
    __asm { FMOV            V0.2D, #-8.0 }

    *a1 = _Q0;
    *(a1 + 16) = _Q0;
    *(a1 + 32) = 0;
    goto LABEL_14;
  }

  sub_1D6CCCC8C();
  v17 = v16;
  v18 = swift_projectBox();
  v19 = *(v18 + *(v17 + 48));
  sub_1D6EB3C6C(v18, v7, type metadata accessor for FormatItemNodeLayoutContext);
  v20 = *(v19 + 32);
  if (v20 && (v21 = *(v20 + 64), v22 = *(v20 + 96), v39[2] = *(v20 + 80), v39[3] = v22, v40 = *(v20 + 112), v39[0] = *(v20 + 48), v39[1] = v21, (v40 & 0xFE) != 0x7E))
  {
    v31 = *(v20 + 64);
    v37[6] = *(v20 + 48);
    v37[7] = v31;
    v32 = *(v20 + 96);
    v37[8] = *(v20 + 80);
    v37[9] = v32;
    v38 = v40;
    swift_beginAccess();

    sub_1D6EB3C6C(v39, v37, sub_1D6EB3D90);
    sub_1D726327C();
    sub_1D67A54F0(a1, v33, v34, v35, v36);

    sub_1D6EB3CD4(v7, type metadata accessor for FormatItemNodeLayoutContext);
    return sub_1D6EB3CD4(v39, sub_1D6EB3D90);
  }

  else
  {
    sub_1D6EB3CD4(v7, type metadata accessor for FormatItemNodeLayoutContext);
    v23 = *MEMORY[0x1E69D7C08];
    v24 = sub_1D725DE2C();
    return (*(*(v24 - 8) + 104))(a1, v23, v24);
  }
}

uint64_t FeedItemLayoutAttributes.contextMenuItemOptions.getter()
{
  v1 = *v0 >> 60;
  result = MEMORY[0x1E69E7CD0];
  if (((1 << v1) & 0x77F) == 0)
  {
    if (v1 == 7)
    {
      sub_1D6CCCC8C();
      swift_projectBox();
    }

    else
    {
      return FeedItemLayoutAttributes.contextMenuItemOptions.getter(MEMORY[0x1E69E7CD0]);
    }
  }

  return result;
}

void FeedItemLayoutAttributes.adFrame.getter(uint64_t a1@<X8>)
{
  v3 = sub_1D7260C5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 60 == 3)
  {
    sub_1D5EF31B8();
    v9 = v8;
    v10 = swift_projectBox();
    (*(v4 + 16))(v7, v10 + *(v9 + 48), v3);
    sub_1D7260C2C();
    v14 = v16;
    v15 = v17;
    v11 = v18;
    (*(v4 + 8))(v7, v3);
    v12 = v14;
    v13 = v15;
  }

  else
  {
    v12 = 0uLL;
    v11 = 1;
    v13 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v11;
}

uint64_t FeedItemLayoutAttributes.prerollPlacements.getter()
{
  v1 = type metadata accessor for FormatVideoPlayerData();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BFFB80(0, &unk_1EDF3A9D8, MEMORY[0x1E69B4110], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v26 - v7;
  v9 = sub_1D726094C();
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v31 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 >> 60 != 7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D6CCCC8C();
  v13 = *(swift_projectBox() + *(v12 + 48));
  v14 = *(*(v13 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) + 96);
  v15 = *(v14 + 16);
  v26 = v13;

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_19:

    return v19;
  }

  v17 = 0;
  v18 = v14 + 32;
  v34 = (v27 + 56);
  v28 = (v27 + 32);
  v29 = (v27 + 48);
  v19 = MEMORY[0x1E69E7CC0];
  v32 = v9;
  v30 = v14 + 32;
  while (v17 < *(v14 + 16))
  {
    if (((*(v18 + 8 * v17) >> 59) & 0x1E | (*(v18 + 8 * v17) >> 2) & 1) == 0xE)
    {
      v33 = v19;
      sub_1D6EB3DE0();
      v20 = swift_projectBox();
      sub_1D6EB3C6C(v20, v4, type metadata accessor for FormatVideoPlayerData);
      if (!*(v4 + 5))
      {
      }

      swift_beginAccess();

      sub_1D726092C();
      sub_1D6EB3CD4(v4, type metadata accessor for FormatVideoPlayerData);
      v9 = v32;
      (*v34)(v8, 0, 1, v32);

      v21 = (*v29)(v8, 1, v9);
      v19 = v33;
      v18 = v30;
      if (v21 != 1)
      {
        v22 = *v28;
        (*v28)(v31, v8, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D69950B0(0, v19[2] + 1, 1, v19);
        }

        v24 = v19[2];
        v23 = v19[3];
        if (v24 >= v23 >> 1)
        {
          v19 = sub_1D69950B0(v23 > 1, v24 + 1, 1, v19);
        }

        v19[2] = v24 + 1;
        v25 = v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24;
        v9 = v32;
        result = (v22)(v25, v31, v32);
        goto LABEL_6;
      }
    }

    else
    {
      (*v34)(v8, 1, 1, v9);
    }

    result = sub_1D5C16B90(v8, &unk_1EDF3A9D8, MEMORY[0x1E69B4110]);
LABEL_6:
    if (v15 == ++v17)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t FeedItemLayoutAttributes.groupLayoutKey.getter()
{
  v1 = type metadata accessor for FormatItemNodeLayoutContext();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for HeadlineViewLayout.Context(0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = (&v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = 0;
  v11 = *v0;
  v12 = v11 >> 60;
  if ((v11 >> 60) > 5)
  {
    if (v12 > 8)
    {
      if ((v12 - 9) >= 2)
      {
        v17[0] = *((v11 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        return FeedItemLayoutAttributes.groupLayoutKey.getter(v7);
      }
    }

    else if (v12 == 6)
    {
      sub_1D6EB3D34((v11 & 0xFFFFFFFFFFFFFFFLL) + 16, v17);
      v10 = v17[0];

      sub_1D6CB9F0C(v17);
    }

    else if (v12 == 7)
    {
      sub_1D6CCCC8C();
      v14 = swift_projectBox();
      sub_1D6EB3C6C(v14, v4, type metadata accessor for FormatItemNodeLayoutContext);
      v10 = *v4;

      sub_1D6EB3CD4(v4, type metadata accessor for FormatItemNodeLayoutContext);
    }

    else
    {
      sub_1D6C561EC((v11 & 0xFFFFFFFFFFFFFFFLL) + 16, v17);
      v10 = v17[0];

      sub_1D6C92B8C(v17);
    }
  }

  else if (v12 >= 4)
  {
    if (v12 == 4)
    {
      sub_1D5BE5E28();
      v13 = swift_projectBox();
      sub_1D6EB3C6C(v13, v9, type metadata accessor for HeadlineViewLayout.Context);
      v10 = *v9;

      sub_1D6EB3CD4(v9, type metadata accessor for HeadlineViewLayout.Context);
    }

    else
    {
      sub_1D5EF92B8((v11 & 0xFFFFFFFFFFFFFFFLL) + 16, v17);
      v10 = v17[0];

      sub_1D5EF93F0(v17);
    }
  }

  return v10;
}

uint64_t FeedItemLayoutAttributes.formatImageRequests(options:)(uint64_t a1)
{
  v3 = type metadata accessor for FormatItemNodeLayoutContext();
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1 >> 60;
  result = 0;
  if (((1 << v8) & 0x77F) == 0)
  {
    if (v8 == 7)
    {
      sub_1D6CCCC8C();
      v10 = swift_projectBox();
      sub_1D6EB3C6C(v10, v7, type metadata accessor for FormatItemNodeLayoutContext);
      v11 = *(v7 + 1);

      v12 = sub_1D5EBC6B4(a1, v11);

      sub_1D6EB3CD4(v7, type metadata accessor for FormatItemNodeLayoutContext);
      return v12;
    }

    else
    {
      v13[1] = *((*v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      return FeedItemLayoutAttributes.formatImageRequests(options:)(a1, v5);
    }
  }

  return result;
}

uint64_t FeedItemLayoutAttributes.layoutSelectionStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatItemNodeAction();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1D5BFFB80(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v32 - v11;
  sub_1D5BFFB80(0, &qword_1EDF17070, MEMORY[0x1E69D7CE0], v8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = v32 - v16;
  v18 = *v1 >> 60;
  if (((1 << v18) & 0x77F) == 0)
  {
    if (v18 != 7)
    {
      v32[1] = *((*v1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      return FeedItemLayoutAttributes.layoutSelectionStyle.getter(v15);
    }

    sub_1D6CCCC8C();
    v24 = *(*(swift_projectBox() + *(v23 + 48)) + 32);
    if (!v24)
    {
LABEL_9:
      v25 = sub_1D725DFAC();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v17, 1, 1, v25);
      return (*(v26 + 104))(a1, *MEMORY[0x1E69D7CD0], v25);
    }

    sub_1D5BFFBE4(v24 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v12, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    if ((*(v4 + 48))(v12, 1, v3) == 1)
    {
      sub_1D5C16B90(v12, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
      goto LABEL_9;
    }

    sub_1D6EB3C6C(v12, v7, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v28 = *MEMORY[0x1E69D7CD8];
        v29 = sub_1D725DFAC();
        (*(*(v29 - 8) + 104))(v17, v28, v29);
LABEL_20:
        sub_1D6EB3CD4(v12, type metadata accessor for FormatItemNodeAction);
        sub_1D725DFAC();
        v31 = *(v29 - 8);
        (*(v31 + 56))(v17, 0, 1, v29);
        return (*(v31 + 32))(a1, v17, v29);
      }
    }

    else if (EnumCaseMultiPayload <= 1)
    {

      sub_1D6EB3CD4(v7, type metadata accessor for FormatItemNodeAction);
LABEL_19:
      v30 = *MEMORY[0x1E69D7CD0];
      v29 = sub_1D725DFAC();
      (*(*(v29 - 8) + 104))(v17, v30, v29);

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v19 = *MEMORY[0x1E69D7CD0];
  v20 = sub_1D725DFAC();
  v21 = *(*(v20 - 8) + 104);

  return v21(a1, v19, v20);
}

uint64_t FeedItemLayoutAttributes.supplementaryAttributes.getter()
{
  if (*v0 >> 60 != 11)
  {
    return 0;
  }

  v2 = sub_1D5F63784(v1);

  return v2;
}

uint64_t sub_1D6EB3914()
{
  if (*v0 >> 60 != 11)
  {
    return 0;
  }

  v2 = sub_1D5F63784(v1);

  return v2;
}

uint64_t sub_1D6EB3978(uint64_t a1)
{
  v2 = sub_1D6EB55BC();

  return MEMORY[0x1EEE47CC8](a1, v2);
}

uint64_t FeedItemLayoutAttributes.swipeActionInsets.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 >> 60;
  if (v3 == 7)
  {
    sub_1D6CCCC8C();
    v6 = *(*(swift_projectBox() + *(v5 + 48)) + 72);
    v7 = sub_1D725DB2C();
    v8 = *(*(v7 - 8) + 104);
    if (v6 == 1)
    {
      v9 = MEMORY[0x1E69D7AF8];
    }

    else
    {
      v9 = MEMORY[0x1E69D7B00];
    }

    v13 = *v9;
    v12 = a1;
  }

  else
  {
    if (v3 == 11)
    {
      return FeedItemLayoutAttributes.swipeActionInsets.getter();
    }

    v10 = *MEMORY[0x1E69D7AF8];
    v11 = sub_1D725DB2C();
    v8 = *(*(v11 - 8) + 104);
    v7 = v11;
    v12 = a1;
    v13 = v10;
  }

  return v8(v12, v13, v7);
}

uint64_t FeedItemLayoutAttributes.swipeActionStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 >> 60;
  if (v3 == 7)
  {
    sub_1D6CCCC8C();
    v6 = *(*(swift_projectBox() + *(v5 + 48)) + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes);
    v7 = *(*v6 + 136);
    v8 = v6 + *(type metadata accessor for FormatItemNodeData() + 28);
    v9 = sub_1D725D80C();
    v10 = *(*(v9 - 8) + 16);
    v11 = v8 + v7;
    v12 = v9;
    v13 = a1;
  }

  else
  {
    if (v3 == 11)
    {
      return FeedItemLayoutAttributes.swipeActionStyle.getter();
    }

    v14 = *MEMORY[0x1E69D79F8];
    v15 = sub_1D725D80C();
    v10 = *(*(v15 - 8) + 104);
    v12 = v15;
    v13 = a1;
    v11 = v14;
  }

  return v10(v13, v11, v12);
}

uint64_t sub_1D6EB3C6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6EB3CD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6EB3D90()
{
  if (!qword_1EDF270D0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF270D0);
    }
  }
}

void sub_1D6EB3DE0()
{
  if (!qword_1EC880340)
  {
    type metadata accessor for FormatVideoPlayerData();
    sub_1D5BFFB80(255, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC880340);
    }
  }
}

double FeedItemLayoutAttributes.thumnailImageProcessorRequest(options:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5BFFB80(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v27[-v7];
  v9 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *v2 >> 60;
  if (v18 > 4)
  {
    if ((v18 - 5) >= 5 && v18 != 10)
    {
      v29[0] = *((*v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      FeedItemLayoutAttributes.thumnailImageProcessorRequest(options:)(a1, v15);
      return result;
    }

    goto LABEL_6;
  }

  if (v18 < 4)
  {
LABEL_6:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_1D5BE5E28();
  v21 = v20;
  v22 = swift_projectBox();
  memcpy(v29, (v22 + *(v21 + 48)), sizeof(v29));
  sub_1D6EB3C6C(v22, v17, type metadata accessor for HeadlineViewLayout.Context);
  sub_1D6EB3C6C(a1, v12, type metadata accessor for ImageRequestOptions);
  v23 = sub_1D725CB5C();
  (*(*(v23 - 8) + 56))(v8, 1, 1, v23);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v24 = swift_unknownObjectRetain();
  v25 = sub_1D5BFF2C0(v24, v29, v12, v8, v27);
  if (v25)
  {
    v26 = v25;
    *(a2 + 24) = type metadata accessor for ThumbnailProcessorRequest();
    *(a2 + 32) = sub_1D5C169AC(qword_1EDF23E18, type metadata accessor for ThumbnailProcessorRequest);
    *a2 = v26;
    sub_1D6EB3CD4(v17, type metadata accessor for HeadlineViewLayout.Context);
  }

  else
  {
    sub_1D6EB3CD4(v17, type metadata accessor for HeadlineViewLayout.Context);
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  return result;
}

void FeedItemLayoutAttributes.publisherLogoImageProcessorRequest(options:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ImageRequestOptions();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = type metadata accessor for HeadlineViewLayout.Context(0);
  v12 = MEMORY[0x1EEE9AC00](v9, v10);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = *v2 >> 60;
  if (v15 > 4)
  {
    if ((v15 - 5) >= 5 && v15 != 10)
    {
      v38[0] = *((*v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      FeedItemLayoutAttributes.publisherLogoImageProcessorRequest(options:)(a1, v12);
      return;
    }

    goto LABEL_6;
  }

  if (v15 < 4)
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v16 = v11;
  sub_1D5BE5E28();
  v18 = v17;
  v19 = swift_projectBox();
  memcpy(v38, (v19 + *(v18 + 48)), sizeof(v38));
  sub_1D6EB3C6C(v19, v14, type metadata accessor for HeadlineViewLayout.Context);
  v36 = type metadata accessor for PublisherLogoProcessorRequest(0);
  v20 = &v14[*(v16 + 24)];
  v21 = v20[3];
  v22 = v20[4];
  v23 = __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_1D6EB3C6C(a1, v8, type metadata accessor for ImageRequestOptions);
  v24 = memcpy(v37, v38, sizeof(v37));
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  v28 = &v37[-v27 - 8];
  (*(v29 + 16))(&v37[-v27 - 8], v23, v21, v26);
  v30 = *(v22 + 8);
  v31 = swift_unknownObjectRetain();
  v35 = v30;
  v32 = v36;
  v33 = sub_1D5BFE7AC(v31, v37, v28, v8, v36, &type metadata for HeadlineViewLayout.Attributes, v21, &protocol witness table for HeadlineViewLayout.Attributes, v35);
  if (v33)
  {
    v34 = sub_1D5C169AC(&qword_1EDF20D90, type metadata accessor for PublisherLogoProcessorRequest);
    sub_1D6EB3CD4(v14, type metadata accessor for HeadlineViewLayout.Context);
  }

  else
  {
    sub_1D6EB3CD4(v14, type metadata accessor for HeadlineViewLayout.Context);
    v32 = 0;
    v34 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *a2 = v33;
  *(a2 + 24) = v32;
  *(a2 + 32) = v34;
}

uint64_t FeedItemLayoutAttributes.issueCoverImageRequests(options:)(double *a1)
{
  v3 = type metadata accessor for FormatItemNodeLayoutContext();
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v9 = *v1;
  v10 = *v1 >> 60;
  if (v10 > 5)
  {
    if (v10 <= 7)
    {
      if (v10 != 6)
      {
        sub_1D6CCCC8C();
        v14 = swift_projectBox();
        sub_1D6EB3C6C(v14, v7, type metadata accessor for FormatItemNodeLayoutContext);
        v15 = *(v7 + 1);

        v16 = sub_1D5EBC6B8(a1, v15);

        sub_1D6EB3CD4(v7, type metadata accessor for FormatItemNodeLayoutContext);
        return v16;
      }
    }

    else if ((v10 - 8) >= 3)
    {
      v35 = *((v9 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      return FeedItemLayoutAttributes.issueCoverImageRequests(options:)(a1, v5);
    }
  }

  else if (v10 >= 5)
  {
    memcpy(v48, ((v9 & 0xFFFFFFFFFFFFFFFLL) + 408), sizeof(v48));
    sub_1D5EF92B8((v9 & 0xFFFFFFFFFFFFFFFLL) + 16, &v35);
    v34 = MEMORY[0x1E69E7CC0];
    v11 = v36;
    if (v37 == 1 || !v38)
    {
      FCIssue.issueCoverModel.getter(&v31);
    }

    else
    {
      *&v31 = v36;
      *(&v31 + 1) = v39;
      *&v32 = v38;
      BYTE8(v33[1]) = 0;
      v12 = v38;
      v13 = v11;
    }

    sub_1D6EB47D8(&v31, &v34, v48, a1);
    v25[0] = v31;
    v25[1] = v32;
    v26[0] = v33[0];
    *(v26 + 9) = *(v33 + 9);
    sub_1D619CBDC(v25);
    v29 = v46;
    v30[0] = v47[0];
    *(v30 + 9) = *(v47 + 9);
    v27[2] = v42;
    v27[3] = v43;
    v27[4] = v44;
    v28 = v45;
    v27[0] = v40;
    v27[1] = v41;
    if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(v27) == 1)
    {
      sub_1D5EF93F0(&v35);
    }

    else
    {
      v17 = *&v27[0];
      if (v28 == 1 || !*(&v29 + 1))
      {
        FCIssue.issueCoverModel.getter(&v22);
      }

      else
      {
        *&v22 = *&v27[0];
        *(&v22 + 1) = *&v30[0];
        *&v23 = *(&v29 + 1);
        BYTE8(v24[1]) = 0;
        v18 = *(&v29 + 1);
        v19 = v17;
      }

      v20[0] = v22;
      v20[1] = v23;
      v21[0] = v24[0];
      *(v21 + 9) = *(v24 + 9);
      sub_1D6EB47D8(&v22, &v34, v48, a1);
      sub_1D5EF93F0(&v35);
      sub_1D619CBDC(v20);
    }

    return v34;
  }

  return result;
}

uint64_t sub_1D6EB47D8(uint64_t result, uint64_t *a2, uint64_t a3, double *a4)
{
  if (*(result + 56))
  {
    if (*(result + 56) != 1)
    {
      return result;
    }

    v7 = (result + 48);
    result += 32;
  }

  else
  {
    v7 = (result + 16);
  }

  v8 = *v7;
  v9 = *result;
  v10 = v8;
  v11 = *(a3 + 264);
  v12 = *(a3 + 272);
  v13 = *a4;
  v14 = v10;
  sub_1D726327C();
  if (v11 > 0.0)
  {
    v17 = *&v11;
  }

  else
  {
    v17 = 0;
  }

  if (v11 > 0.0)
  {
    v18 = v12;
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_1D5EBBF10(v14, v17, v18, v11 <= 0.0, v15, v16, v13);

  v20 = type metadata accessor for IssueCoverImageProcessorRequest();
  v32[3] = v20;
  v21 = sub_1D5C169AC(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest);
  v32[4] = v21;
  v32[0] = v19;
  v22 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_1D698F994(0, v22[2] + 1, 1, v22);
    *a2 = v22;
  }

  v25 = v22[2];
  v24 = v22[3];
  if (v25 >= v24 >> 1)
  {
    v22 = sub_1D698F994((v24 > 1), v25 + 1, 1, v22);
    *a2 = v22;
  }

  v26 = __swift_mutable_project_boxed_opaque_existential_1(v32, v20);
  v27 = MEMORY[0x1EEE9AC00](v26, v26);
  v29 = &v32[-1] - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29, v27);
  sub_1D6302700(v25, v29, a2, v20, v21);
  result = __swift_destroy_boxed_opaque_existential_1(v32);
  *a2 = v22;
  return result;
}

uint64_t FeedItemLayoutAttributes.canRestoreInViewport.getter()
{
  v1 = *v0 >> 60;
  if (v1 <= 8)
  {
    v2 = (v1 - 4) < 5;
  }

  else if (v1 == 9)
  {
    v2 = 0;
  }

  else if (v1 == 10)
  {
    v2 = 1;
  }

  else
  {
    v2 = FeedItemLayoutAttributes.canRestoreInViewport.getter();
  }

  return v2 & 1;
}

void sub_1D6EB4AF0(uint64_t a1@<X8>)
{
  v3 = sub_1D7260C5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 >> 60 == 3)
  {
    sub_1D5EF31B8();
    v9 = v8;
    v10 = swift_projectBox();
    (*(v4 + 16))(v7, v10 + *(v9 + 48), v3);
    sub_1D7260C2C();
    v14 = v16;
    v15 = v17;
    v11 = v18;
    (*(v4 + 8))(v7, v3);
    v12 = v14;
    v13 = v15;
  }

  else
  {
    v12 = 0uLL;
    v11 = 1;
    v13 = 0uLL;
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v11;
}

uint64_t FeedItemLayoutAttributes.isResizing.getter()
{
  v1 = *v0 >> 60;
  v2 = 0;
  if (((1 << v1) & 0x77F) == 0)
  {
    if (v1 == 7)
    {
      sub_1D6CCCC8C();
      swift_projectBox();

      sub_1D5EBBBE0();
      v5 = v4;

      return v5 & 1;
    }

    v2 = FeedItemLayoutAttributes.isResizing.getter(0);
  }

  return v2 & 1;
}

id sub_1D6EB4CF8(void *a1, double *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1D5BFFB80(0, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v74 - v20;
  v22 = *a2;
  v23 = a2[1];
  v25 = a2[2];
  v24 = a2[3];
  v26 = *a3;
  v27 = FCThumbnailForHeadlineMinimumSize();
  if (!v27)
  {
    sub_1D5BFFBE4(a5, &v85, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    if (v87 == 0.0)
    {
      swift_unknownObjectRelease();
      sub_1D5C16B90(a5, &qword_1EDF3B6B0, sub_1D5C0EEEC);
      sub_1D5C16B90(a4, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
      sub_1D6EB3CD4(a3, type metadata accessor for ImageRequestOptions);
      sub_1D5C16B90(&v85, &qword_1EDF3B6B0, sub_1D5C0EEEC);
      return 0;
    }

    v57 = type metadata accessor for ThumbnailProcessorRequest();
    v82 = a1;
    v58 = v57;
    sub_1D5B63F14(&v85, v89);
    sub_1D5B68374(v89, &v85);
    v59 = a5;
    v60 = *(a2 + 6);
    v61 = *(a2 + 5);
    v62 = type metadata accessor for ImageRequestOptions();
    v63 = MEMORY[0x1E69D75E8];
    sub_1D5BFFBE4(a3 + *(v62 + 24), v13, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
    v64 = *&v87;
    v65 = v88;
    v66 = __swift_mutable_project_boxed_opaque_existential_1(&v85, *&v87);
    v41 = sub_1D5F993F0(v66, v60, v13, v22, v23, v25, v24, 0.0, 0.0, 1.0, 1.0, v58, v64, v65, v67, v68, v26, v61);
    swift_unknownObjectRelease();
    sub_1D5C16B90(v59, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    sub_1D5C16B90(a4, &qword_1EDF3B7E8, v63);
    sub_1D6EB3CD4(a3, type metadata accessor for ImageRequestOptions);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v69 = &v85;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v69);
    return v41;
  }

  v77 = v26;
  v79 = v23;
  v80 = a5;
  v81 = a4;
  v78 = v27;
  result = [v27 thumbnailAssetHandle];
  if (result)
  {
    v29 = result;
    v82 = a1;
    [a1 thumbnailFocalFrame];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v75 = v36;
    v38 = *(a2 + 6);
    v83 = *(a2 + 5);
    v39 = *(type metadata accessor for ImageRequestOptions() + 24);
    v40 = MEMORY[0x1E69D75E8];
    v76 = a3;
    sub_1D5BFFBE4(a3 + v39, v21, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
    type metadata accessor for ThumbnailProcessorRequest();
    v41 = swift_allocObject();
    v89[3] = sub_1D5C169F4();
    v89[4] = sub_1D5C169AC(qword_1EDF1AB60, sub_1D5C169F4);
    v89[0] = v29;
    sub_1D5B68374(v89, v41 + 24);
    sub_1D5BFFB80(0, &qword_1EDF19590, sub_1D5C16B18, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = 0x69616E626D756874;
    *(inited + 40) = 0xE90000000000006CLL;
    sub_1D5B68374(v89, inited + 48);
    v43 = v29;
    v44 = sub_1D5BFFC64(inited);
    swift_setDeallocating();
    sub_1D6EB3CD4(inited + 32, sub_1D5C16B18);
    *(v41 + 16) = v44;
    v45 = v22;
    *(v41 + 80) = v22;
    v46 = v79;
    *(v41 + 88) = v79;
    *(v41 + 96) = v25;
    *(v41 + 104) = v24;
    *(v41 + 112) = v31;
    *(v41 + 120) = v33;
    *(v41 + 128) = v35;
    *(v41 + 136) = v37;
    *(v41 + 144) = v77;
    *(v41 + 152) = v38;
    *(v41 + 160) = v83;
    sub_1D5BFFBE4(v21, v41 + OBJC_IVAR____TtC8NewsFeed25ThumbnailProcessorRequest_border, &qword_1EDF3B7E8, v40);
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_1D7263D4C();
    v84 = v85;
    v47 = [v43 uniqueKey];
    v48 = sub_1D726207C();
    v50 = v49;

    MEMORY[0x1DA6F9910](v48, v50);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    *&v85 = v45;
    *(&v85 + 1) = v46;
    v86 = v25;
    v87 = v24;
    type metadata accessor for CGRect(0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    *&v85 = v31;
    *(&v85 + 1) = v33;
    v86 = v35;
    v87 = *&v75;
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v51 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v51);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    *&v85 = v38;
    type metadata accessor for UIRectCorner(0);
    sub_1D7263F9C();
    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    v52 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v52);

    MEMORY[0x1DA6F9910](45, 0xE100000000000000);
    sub_1D5BFFBE4(v21, v17, &qword_1EDF3B7E8, v40);
    v53 = sub_1D725CB5C();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v17, 1, v53) == 1)
    {
      sub_1D5C16B90(v17, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
      v55 = 0xE300000000000000;
      v56 = 7104878;
    }

    else
    {
      v70 = sub_1D725CB4C();
      v55 = v71;
      (*(v54 + 8))(v17, v53);
      v56 = v70;
    }

    MEMORY[0x1DA6F9910](v56, v55);

    swift_unknownObjectRelease();

    v72 = v84;
    sub_1D5C16B90(v80, &qword_1EDF3B6B0, sub_1D5C0EEEC);
    v73 = MEMORY[0x1E69D75E8];
    sub_1D5C16B90(v81, &qword_1EDF3B7E8, MEMORY[0x1E69D75E8]);
    sub_1D6EB3CD4(v76, type metadata accessor for ImageRequestOptions);
    sub_1D5C16B90(v21, &qword_1EDF3B7E8, v73);
    *(v41 + 64) = v72;
    v69 = v89;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D6EB55BC()
{
  result = qword_1EC897A70;
  if (!qword_1EC897A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A70);
  }

  return result;
}

unint64_t sub_1D6EB5614()
{
  result = qword_1EC897A78;
  if (!qword_1EC897A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC897A78);
  }

  return result;
}

uint64_t sub_1D6EB5678@<X0>(void *a1@<X8>)
{
  *a1 = 0xD000000000000026;
  a1[1] = 0x80000001D73F5850;
  type metadata accessor for FeedGroupEmitterOutput();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6EB56E0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v1, a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v9 + 32))(v13, v18, v3);
        v34 = 0x756F72477473616CLL;
        v35 = 0xEA00000000002870;
        v30 = sub_1D725AA4C();
        MEMORY[0x1DA6F9910](v30);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v29 = v34;
        (*(v9 + 8))(v13, v3);
        return v29;
      }

      sub_1D5BE1404();
      v24 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v9 + 32))(v13, v18, v3);
      v25 = 1819242352;
    }

    else
    {
      sub_1D5BE1404();
      v24 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v9 + 32))(v13, v18, v3);
      v25 = 1954047342;
    }

    v34 = v25 | 0x756F724700000000;
    v35 = 0xEA00000000002870;
    v28 = sub_1D725AA4C();
    MEMORY[0x1DA6F9910](v28);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    v29 = v34;
    (*(v9 + 8))(v13, v3);
    sub_1D5B88D70(v18 + v24, sub_1D5BE1404);
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_1D5B49474(255, qword_1EDF37D80);
        v31 = *(swift_getTupleTypeMetadata2() + 48);
        (*(v5 + 32))(v8, v18, v4);
        v34 = 0x6465646465626D65;
        v35 = 0xE900000000000028;
        v32 = sub_1D6EB61E4(v4);
        MEMORY[0x1DA6F9910](v32);

        v29 = v34;
        (*(v5 + 8))(v8, v4);
        __swift_destroy_boxed_opaque_existential_1(v18 + v31);
        return v29;
      }

      v21 = *v18;
      v22 = v18[1];
      v26 = 0x727465526C6F6F70;
      v27 = 0xEA00000000002879;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v21 = *v18;
        v22 = v18[1];
        v23 = 1701736302;
      }

      else
      {
        v21 = *v18;
        v22 = v18[1];
        v23 = 1885956979;
      }

      v26 = v23 & 0xFFFF0000FFFFFFFFLL | 0x2800000000;
      v27 = 0xE500000000000000;
    }

    v34 = v26;
    v35 = v27;
    MEMORY[0x1DA6F9910](v21, v22);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v34;
  }

  return v29;
}

uint64_t sub_1D6EB5BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FeedGroupEmitterCachedOutput();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v11 + 32))(a3, a1, a2);
      type metadata accessor for FeedGroupEmitterOutput();
    }

    else
    {
      sub_1D5B49474(255, qword_1EDF37D80);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v28 = *(TupleTypeMetadata2 + 48);
      v29 = *(v7 + 32);
      v29(v10, a1, v6);
      sub_1D5B63F14((a1 + v28), &v32);
      v30 = *(TupleTypeMetadata2 + 48);
      v29(a3, v10, v6);
      sub_1D5B63F14(&v32, &a3[v30]);
      type metadata accessor for FeedGroupEmitterOutput();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D5BE1404();
      v23 = swift_getTupleTypeMetadata2();
      v24 = (a1 + *(v23 + 48));
      v25 = *(v11 + 32);
      v25(v15, a1, a2);
      v26 = v24[1];
      v32 = *v24;
      v33 = v26;
      v21 = &a3[*(v23 + 48)];
      v25(a3, v15, a2);
    }

    else
    {
      sub_1D5BE1404();
      v17 = swift_getTupleTypeMetadata2();
      v18 = (a1 + *(v17 + 48));
      v19 = *(v11 + 32);
      v19(v15, a1, a2);
      v20 = v18[1];
      v32 = *v18;
      v33 = v20;
      v21 = &a3[*(v17 + 48)];
      v19(a3, v15, a2);
    }

    v22 = v33;
    *v21 = v32;
    *(v21 + 1) = v22;
    type metadata accessor for FeedGroupEmitterOutput();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6EB5F68(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, v2);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v11 = *(a1 + 16);
      sub_1D5BE1404();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5B88D70(v7 + *(TupleTypeMetadata2 + 48), sub_1D5BE1404);
      (*(*(v11 - 8) + 8))(v7, v11);
LABEL_14:
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload != 5)
    {
      v13 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
      sub_1D5B49474(255, qword_1EDF37D80);
      v14 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v13 - 8) + 8))(v7, v13);
      __swift_destroy_boxed_opaque_existential_1(v7 + v14);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_12:
    (*(v4 + 8))(v7, a1);
    goto LABEL_14;
  }

  if (*v7 == 0xD000000000000026 && v7[1] == 0x80000001D73F5850)
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

uint64_t sub_1D6EB61E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v10, v2);
      v20 = 0x756F72477473616CLL;
      v21 = 0xEA00000000002870;
      v13 = sub_1D725AA4C();
      MEMORY[0x1DA6F9910](v13);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      v14 = v20;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      v17 = *v10;
      v18 = v10[1];
      v20 = 0x28656E6F6ELL;
      v21 = 0xE500000000000000;
      MEMORY[0x1DA6F9910](v17, v18);

      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      return v20;
    }
  }

  else
  {
    sub_1D5BE1404();
    v15 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v3 + 32))(v5, v10, v2);
    v20 = 0x756F72477478656ELL;
    v21 = 0xEA00000000002870;
    v16 = sub_1D725AA4C();
    MEMORY[0x1DA6F9910](v16);

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    v14 = v20;
    (*(v3 + 8))(v5, v2);
    sub_1D5B88D70(v10 + v15, sub_1D5BE1404);
  }

  return v14;
}

uint64_t sub_1D6EB64E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, v2);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v10 = *(a1 + 16);
      sub_1D5BE1404();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      sub_1D5B88D70(&v8[*(TupleTypeMetadata2 + 48)], sub_1D5BE1404);
      result = (*(*(v10 - 8) + 8))(v8, v10);
LABEL_8:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

LABEL_7:
    result = (*(v5 + 8))(v8, a1);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload <= 4 || EnumCaseMultiPayload == 5)
  {
    goto LABEL_7;
  }

  v13 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  sub_1D5B49474(255, qword_1EDF37D80);
  v14 = swift_getTupleTypeMetadata2();
  sub_1D5B63F14(&v8[*(v14 + 48)], a2);
  return (*(*(v13 - 8) + 8))(v8, v13);
}

uint64_t sub_1D6EB66F8()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t static FeedGroupEmitterOutput.error(groupName:reason:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    if (qword_1EDF1BB50 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDFFC828;
  }

  sub_1D5C384A0();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D7270C10;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D5B7E2C0();
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  v12 = a3;

  sub_1D7263F9C();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_1D7262EDC();
  sub_1D725C30C();

  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000011, 0x80000001D73F5810);
  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](0xD000000000000010, 0x80000001D73F5830);
  sub_1D7263F9C();
  *a4 = 0;
  a4[1] = 0xE000000000000000;
  type metadata accessor for FeedGroupEmitterOutput();
  return swift_storeEnumTagMultiPayload();
}

uint64_t FeedGroupEmitterEmbeddedOutput.shortDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6EB6A28(v2, *(a1 + 16));
  type metadata accessor for FeedGroupEmitterOutput();
  a2[3] = sub_1D725B0DC();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_1D725B0CC();
}

unint64_t sub_1D6EB6A28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v27[-v10];
  (*(v12 + 16))(&v27[-v10], a1, v7, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D5BE1404();
    v17 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v4 + 32))(v6, v11, a2);
    sub_1D5C0BFF0();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = 0x6F7267207478656ELL;
    *(inited + 40) = 0xEA00000000007075;
    *(inited + 72) = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
    (*(v4 + 16))(boxed_opaque_existential_1, v6, a2);
    v16 = sub_1D5BE1168(inited);
    swift_setDeallocating();
    sub_1D5B88D70(inited + 32, sub_1D5BE1388);
    (*(v4 + 8))(v6, a2);
    v20 = sub_1D5BE1404;
    v21 = v11 + v17;
LABEL_6:
    sub_1D5B88D70(v21, v20);
    return v16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v23 = *v11;
    v22 = v11[1];
    sub_1D5C0BFF0();
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_1D7273AE0;
    *(v24 + 32) = 1701736302;
    v25 = v24 + 32;
    *(v24 + 72) = MEMORY[0x1E69E6158];
    *(v24 + 40) = 0xE400000000000000;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;
    v16 = sub_1D5BE1168(v24);
    swift_setDeallocating();
    v20 = sub_1D5BE1388;
    v21 = v25;
    goto LABEL_6;
  }

  (*(v4 + 32))(v6, v11, a2);
  sub_1D5C0BFF0();
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1D7273AE0;
  *(v14 + 32) = 0x6F7267207473616CLL;
  *(v14 + 40) = 0xEA00000000007075;
  *(v14 + 72) = a2;
  v15 = __swift_allocate_boxed_opaque_existential_1((v14 + 48));
  (*(v4 + 16))(v15, v6, a2);
  v16 = sub_1D5BE1168(v14);
  swift_setDeallocating();
  sub_1D5B88D70(v14 + 32, sub_1D5BE1388);
  (*(v4 + 8))(v6, a2);
  return v16;
}

uint64_t sub_1D6EB6DF4()
{
  swift_getWitnessTable();

  return sub_1D725B0BC();
}

uint64_t FeedGroupEmitterCachedOutput.group.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for FeedGroupEmitterEmbeddedOutput();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v3, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *(v6 - 8);
      (*(v22 + 32))(a2, v16, v6);
      return (*(v22 + 56))(a2, 0, 1, v6);
    }

    else
    {
      sub_1D5B49474(255, qword_1EDF37D80);
      v23 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v8 + 32))(v11, v16, v7);
      v24 = swift_getEnumCaseMultiPayload();
      if (v24)
      {
        if (v24 == 1)
        {
          v25 = *(v6 - 8);
          (*(v25 + 32))(a2, v11, v6);
          (*(v25 + 56))(a2, 0, 1, v6);
        }

        else
        {
          (*(v8 + 8))(v11, v7);
          (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
        }
      }

      else
      {
        sub_1D5BE1404();
        v26 = *(swift_getTupleTypeMetadata2() + 48);
        v27 = *(v6 - 8);
        (*(v27 + 32))(a2, v11, v6);
        (*(v27 + 56))(a2, 0, 1, v6);
        sub_1D5B88D70(&v11[v26], sub_1D5BE1404);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v16[v23]);
    }
  }

  else
  {
    sub_1D5BE1404();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    v20 = *(v6 - 8);
    (*(v20 + 32))(a2, v16, v6);
    (*(v20 + 56))(a2, 0, 1, v6);
    return sub_1D5B88D70(&v16[v19], sub_1D5BE1404);
  }
}

uint64_t sub_1D6EB72F0()
{
  sub_1D5BE1404();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1D6AE57F0();
      if (v3 <= 0x3F)
      {
        type metadata accessor for FeedGroupEmitterEmbeddedOutput();
        sub_1D5B49474(255, qword_1EDF37D80);
        result = swift_getTupleTypeMetadata2();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D6EB73F4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v3 <= 0x10)
  {
    v3 = 16;
  }

  v4 = (v3 & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v4 <= v3)
  {
    v4 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_29;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 249) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v9 < 2)
    {
LABEL_29:
      v11 = *(a1 + v4);
      if (v11 >= 7)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_29;
  }

LABEL_18:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 250;
}

void sub_1D6EB7530(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  if ((v5 & 0xFFFFFFFFFFFFFFF8) + 48 > v5)
  {
    v5 = (v5 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v6 = v5 + 1;
  if (a3 < 0xFA)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 249) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xF9)
  {
    v8 = a2 - 250;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_43:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v5] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_28;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_1D6EB770C()
{
  sub_1D5BE1404();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_1D6AE57F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6EB77B4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v4 = 16;
  if (v3 > 0x10)
  {
    v4 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1D6EB78E0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_41:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_41;
          }
        }

LABEL_38:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_1D6EB7AAC()
{
  sub_1D5BE1404();
  result = swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for FeedGroupEmitterEmbeddedOutput();
      sub_1D5B49474(255, qword_1EDF37D80);
      result = swift_getTupleTypeMetadata2();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6EB7B94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v3 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v4 = 16;
  if (v3 > 0x10)
  {
    v4 = v3;
  }

  v5 = (v4 & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v5 <= v3)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_29;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v10 < 2)
    {
LABEL_29:
      v12 = *(a1 + v5);
      if (v12 >= 4)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_29;
  }

LABEL_18:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 253;
}

void sub_1D6EB7CD0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v6 = 16;
  if (v5 > 0x10)
  {
    v6 = v5;
  }

  v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v7 > v5)
  {
    v5 = v7;
  }

  v8 = v5 + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v5 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_43:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v5] = -a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_28;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t dispatch thunk of FeedIntentItemSectionFactoryType.make()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64684;

  return v9(a1, a2, a3);
}

uint64_t SWLayoutGuide.init(view:)(void *a1)
{
  [a1 bounds];
  [a1 safeAreaInsets];
  sub_1D725E1FC();
  v3 = v2;
  v5 = v4;
  v6 = [a1 window];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 rootViewController];

    if (v8)
    {
      v9 = [v8 view];

      if (v9)
      {
        goto LABEL_16;
      }
    }
  }

  sub_1D5B5A498(0, &qword_1EC897A80);
  v10 = sub_1D7262E8C();
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 windows];

  sub_1D5B5A498(0, &unk_1EC896278);
  v13 = sub_1D726267C();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v9 = sub_1D726342C();
LABEL_16:
    v18 = [a1 traitCollection];
    [v9 layoutMargins];
    sub_1D725E12C();

    sub_1D7262DFC();
    sub_1D7262E0C();
    v20 = v19;
    v22 = v21;
    [a1 bounds];
    v67 = v24;
    v68 = v23;
    v65 = v26;
    v66 = v25;
    [a1 bounds];
    v31 = UIEdgeInsetsInsetRect(v27, v28, v29, v30, v20, v22);
    v63 = v32;
    v64 = v31;
    v61 = v34;
    v62 = v33;
    [a1 bounds];
    v39 = UIEdgeInsetsInsetRect(v35, v36, v37, v38, v3, v5);
    v41 = v40;
    v43 = v42;
    v45 = v44;
    [a1 bounds];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    [a1 safeAreaInsets];
    v56 = UIEdgeInsetsInsetRect(v47, v49, v51, v53, v54, v55);
    v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBounds:v68 contentFrame:v67 contentSafeAreaFrame:v66 systemSafeAreaFrame:{v65, v64, v63, v62, v61, *&v39, v41, v43, v45, *&v56, v57, v58, v59}];

    return v60;
  }

LABEL_7:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA6FB460](0, v13);
    goto LABEL_10;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_10:
    v16 = v15;

    v17 = [v16 rootViewController];

    if (v17)
    {
      v9 = [v17 view];

      if (v9)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t static FormatEquation.== infix(_:_:)()
{
  type metadata accessor for FormatEquationToken();
  swift_getWitnessTable();

  return sub_1D726280C();
}

uint64_t FormatEquation.value(contextLayoutOptions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v79 = a1;
  v66 = a3;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v71 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = sub_1D726393C();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v8);
  v70 = &v65 - v9;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v65 - v15;
  v89 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v6;
  v21 = type metadata accessor for FormatEquationToken();
  v86 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v85 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v91 = &v65 - v26;
  v27 = *v3;
  v81 = sub_1D725B8FC();
  v73 = swift_allocBox();
  v80 = v28;
  v82 = AssociatedTypeWitness;
  sub_1D725B8EC();
  sub_1D5C82110(0, &qword_1EDF3BA00, &type metadata for FormatEquationOperator, MEMORY[0x1E69D6AD8]);
  v90 = v29;
  v87 = swift_allocBox();
  sub_1D725B8EC();

  v30 = sub_1D726279C();
  v92 = v5;
  if (v30)
  {
    v78 = v16;
    v31 = 0;
    v32 = v86;
    v83 = (v86 + 32);
    v84 = (v86 + 16);
    v75 = v5 + 72;
    v76 = (v89 + 32);
    v74 = (v72 + 8);
    v77 = (v89 + 8);
    v33 = v88;
    v89 = v27;
    while (1)
    {
      v34 = sub_1D726277C();
      sub_1D726271C();
      if (v34)
      {
        result = (*(v32 + 16))(v91, v27 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31, v21);
      }

      else
      {
        result = sub_1D7263DBC();
        if (v65 != 8)
        {
          goto LABEL_52;
        }

        v93[0] = result;
        (*v84)(v91, v93, v21);
        result = swift_unknownObjectRelease();
      }

      v36 = __OFADD__(v31++, 1);
      v37 = v92;
      if (v36)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v38 = v85;
      (*v83)(v85, v91, v21);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v40 = v82;
        (*v76)(v20, v38, v33);
        v41 = v78;
        (*(v37 + 72))(v79, v33, v37);
        if (v4)
        {
          (*v77)(v20, v33);
LABEL_46:
        }

        swift_beginAccess();
        sub_1D725B8BC();
        swift_endAccess();
        (*v74)(v41, v40);
        (*v77)(v20, v33);
        v27 = v89;
        goto LABEL_31;
      }

      v39 = *v38;
      swift_beginAccess();
      sub_1D725B8AC();
      swift_endAccess();
      if (v94 == 6)
      {
        v94 = v39;
        swift_beginAccess();
        sub_1D725B8BC();
        swift_endAccess();
        v33 = v88;
LABEL_31:
        v32 = v86;
        goto LABEL_32;
      }

      if (v39 >= 4)
      {
        v32 = v86;
        if (v39 == 4)
        {
          v94 = 4;
          swift_beginAccess();
          sub_1D725B8BC();
          goto LABEL_29;
        }

        v42 = 1;
        if (v94 <= 3u)
        {
LABEL_13:
          v43 = qword_1D73693C8[v94];
          goto LABEL_18;
        }
      }

      else
      {
        v42 = 0;
        if (v94 <= 3u)
        {
          goto LABEL_13;
        }
      }

      v43 = 2;
LABEL_18:
      v44 = v73;
      if (v39 > 3)
      {
        v45 = 2;
      }

      else
      {
        v45 = qword_1D73693C8[v39];
      }

      if (((v43 >= v45) & ~v42) != 0)
      {
        goto LABEL_30;
      }

      while (1)
      {
        swift_beginAccess();
        sub_1D725B8AC();
        swift_endAccess();
        if (v94 > 3uLL || qword_1D73693C8[v94] >= v45)
        {
          break;
        }

        sub_1D6EB9A9C(v44, v89, v87, v88, v92);
        if (v4)
        {
          goto LABEL_46;
        }
      }

      if (v39 != 5)
      {
LABEL_30:
        v94 = v39;
        swift_beginAccess();
        sub_1D725B8BC();
        swift_endAccess();
        v33 = v88;
        v27 = v89;
        goto LABEL_31;
      }

      swift_beginAccess();
      sub_1D725B8AC();
      swift_endAccess();
      v27 = v89;
      v32 = v86;
      if (v94 != 4)
      {

        type metadata accessor for FormatLayoutError();
        sub_1D5D285FC();
        swift_allocError();
        v63 = v62;
        v93[0] = v27;
        *v62 = FormatEquation.description.getter(v71);
        v63[1] = v64;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      swift_beginAccess();
      sub_1D725B89C();
LABEL_29:
      swift_endAccess();
      v33 = v88;
LABEL_32:
      if (v31 == sub_1D726279C())
      {

        goto LABEL_37;
      }
    }
  }

  v33 = v88;
LABEL_37:
  v46 = v71;
  v47 = v87;
  v48 = v73;
  while (1)
  {
    swift_beginAccess();
    v49 = sub_1D725B8CC();
    swift_endAccess();
    if (v49)
    {
      break;
    }

    sub_1D6EB9A9C(v48, v27, v47, v33, v92);
    if (v4)
    {
      goto LABEL_48;
    }
  }

  swift_beginAccess();
  v50 = v70;
  sub_1D725B89C();
  swift_endAccess();
  v51 = v72;
  if ((*(v72 + 48))(v50, 1, v82) == 1)
  {
    (*(v67 + 8))(v50, v68);
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v53 = v52;
    v93[0] = v27;
    *v52 = FormatEquation.description.getter(v46);
    v53[1] = v54;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v55 = v50;
    v56 = *(v51 + 32);
    v57 = v69;
    v56(v69, v55, v82);
    swift_beginAccess();
    v58 = sub_1D725B8CC();
    swift_endAccess();
    if (v58)
    {
      v56(v66, v57, v82);
    }

    else
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      v60 = v59;
      v93[0] = v27;
      *v59 = FormatEquation.description.getter(v46);
      v60[1] = v61;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v51 + 8))(v57, v82);
    }
  }

LABEL_48:
}

uint64_t FormatEquation.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v10);
  v12 = &v23 - v11;
  v13 = *(a2 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, AssociatedTypeWitness, v16);
  (*(a3 + 64))(v12, a2, a3);
  type metadata accessor for FormatEquationToken();
  sub_1D72644CC();
  swift_allocObject();
  v19 = sub_1D726270C();
  (*(v13 + 16))(v20, v18, a2);
  swift_storeEnumTagMultiPayload();
  v21 = sub_1D5BFCB60(v19);
  (*(v9 + 8))(a1, AssociatedTypeWitness);
  result = (*(v13 + 8))(v18, a2);
  *a4 = v21;
  return result;
}

uint64_t FormatEquation.description.getter(uint64_t a1)
{
  v11 = *v1;
  v2 = *(a1 + 24);
  v10[2] = *(a1 + 16);
  v10[3] = v2;
  type metadata accessor for FormatEquationToken();
  v3 = sub_1D72627FC();

  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6158];
  v7 = sub_1D5B874E4(sub_1D6EBA374, v10, v3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v6);

  v11 = v7;
  sub_1D5C82110(0, &qword_1EDF43BA0, v5, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v8 = sub_1D7261F3C();

  return v8;
}

uint64_t FormatEquation.encode(to:)(void *a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v32 = *(a2 + 24);
  v7 = type metadata accessor for FormatEquationToken();
  v8 = sub_1D726393C();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v36 = &v30 - v10;
  v33 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1D725BD1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDFFCD30);
  (*(*(v21 - 8) + 16))(v17, v22, v21);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v17, sub_1D5B4AA6C, 0, v19, v20);
  sub_1D6079974(v17);
  if (!v3)
  {
    v23 = v18;
    if (sub_1D726279C() == 1)
    {
      v39 = v18;
      sub_1D72627FC();
      swift_getWitnessTable();
      v24 = v36;
      sub_1D7262C9C();
      v25 = *(v7 - 8);
      if ((*(v25 + 48))(v24, 1, v7) == 1)
      {
        (*(v34 + 8))(v24, v35);
      }

      else
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v28 = v30;
          v27 = v31;
          v29 = v33;
          (*(v31 + 32))(v30, v24, v33);
          __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
          sub_1D726476C();
          (*(v27 + 8))(v28, v29);
          return __swift_destroy_boxed_opaque_existential_1(v37);
        }

        (*(v25 + 8))(v24, v7);
      }
    }

    v39 = v23;
    FormatEquation.description.getter(a2);
    __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
    sub_1D726473C();
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t FormatEquation.optionIdentifiers.getter()
{
  type metadata accessor for FormatEquationToken();
  sub_1D72627FC();
  sub_1D5C82110(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);

  swift_getWitnessTable();
  sub_1D726248C();

  return v1;
}

uint64_t sub_1D6EB98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatEquationToken();
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v14 = v18 - v13;
  (*(v15 + 16))(v18 - v13, a2, v10, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v7 + 32))(v9, v14, a3);
    v17 = (*(a4 + 56))(a3, a4);
    if (v17)
    {
      sub_1D6985160(v17);
    }

    return (*(v7 + 8))(v9, a3);
  }

  return result;
}

uint64_t sub_1D6EB9A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v77 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = a4;
  v79 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = *(AssociatedConformanceWitness + 8);
  v68 = *(v69 + 16);
  v67 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v67, v8);
  v66 = v62 - v9;
  v10 = sub_1D726393C();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v74 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v62 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v65 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v70 = v62 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v73 = v62 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v62 - v29;
  v31 = sub_1D725B8FC();
  v32 = swift_projectBox();
  sub_1D5C82110(0, &qword_1EDF3BA00, &type metadata for FormatEquationOperator, MEMORY[0x1E69D6AD8]);
  v72 = v33;
  v71 = swift_projectBox();
  swift_beginAccess();
  sub_1D725B89C();
  swift_endAccess();
  v34 = *(v17 + 48);
  if (v34(v16, 1, AssociatedTypeWitness) == 1)
  {
    goto LABEL_4;
  }

  v63 = *(v17 + 32);
  v63(v30, v16, AssociatedTypeWitness);
  swift_beginAccess();
  v16 = v74;
  v62[1] = v32;
  sub_1D725B89C();
  swift_endAccess();
  if (v34(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v30, AssociatedTypeWitness);
LABEL_4:
    (*(v75 + 8))(v16, v76);
    type metadata accessor for FormatLayoutError();
    sub_1D5D285FC();
    swift_allocError();
    v36 = v35;
    v80 = v77;
    v37 = type metadata accessor for FormatEquation();
    *v36 = FormatEquation.description.getter(v37);
    v36[1] = v38;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v76 = v31;
  v40 = v30;
  v41 = v73;
  v63(v73, v16, AssociatedTypeWitness);
  swift_beginAccess();
  sub_1D725B89C();
  swift_endAccess();
  if (v81 > 2u)
  {
    if (v81 - 4 >= 2)
    {
      if (v81 == 3)
      {
        v79 = swift_getAssociatedConformanceWitness();
        sub_1D72648FC();
        v51 = v70;
        sub_1D726469C();
        v52 = sub_1D7261FBC();
        v53 = AssociatedTypeWitness;
        v54 = *(v17 + 8);
        v54(v51, v53);
        if (v52)
        {
          sub_1D72648FC();
          v55 = v65;
          sub_1D726469C();
          v56 = v73;
        }

        else
        {
          v55 = v65;
          v56 = v73;
          (*(AssociatedConformanceWitness + 16))(v73, v40, v53);
        }

        swift_beginAccess();
        sub_1D725B8BC();
        swift_endAccess();
        v54(v55, v53);
        v54(v56, v53);
        return (v54)(v40, v53);
      }

      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      v45 = AssociatedTypeWitness;
      v59 = v58;
      v80 = v77;
      v60 = type metadata accessor for FormatEquation();
      *v59 = FormatEquation.description.getter(v60);
      v59[1] = v61;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v50 = *(v17 + 8);
      v50(v73, v45);
    }

    else
    {
      type metadata accessor for FormatLayoutError();
      sub_1D5D285FC();
      swift_allocError();
      v44 = v41;
      v45 = AssociatedTypeWitness;
      v47 = v46;
      v80 = v77;
      v48 = type metadata accessor for FormatEquation();
      *v47 = FormatEquation.description.getter(v48);
      v47[1] = v49;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v50 = *(v17 + 8);
      v50(v44, v45);
    }

    return (v50)(v40, v45);
  }

  if (v81)
  {
    v42 = v17;
    v43 = v70;
    if (v81 == 1)
    {
      sub_1D726405C();
    }

    else
    {
      sub_1D7262BEC();
    }

    swift_beginAccess();
    sub_1D725B8BC();
    swift_endAccess();
  }

  else
  {
    v43 = v70;
    sub_1D726404C();
    swift_beginAccess();
    sub_1D725B8BC();
    swift_endAccess();
    v42 = v17;
  }

  v57 = *(v42 + 8);
  v57(v43, AssociatedTypeWitness);
  v57(v41, AssociatedTypeWitness);
  return (v57)(v40, AssociatedTypeWitness);
}

uint64_t sub_1D6EBA374@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for FormatEquationToken();
  result = FormatEquationToken.description.getter(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D6EBA3F8(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1D6EBA498(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6EBA4D4(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v52 = &v51 - v15;
  v55 = a5;
  v53 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v65 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v66 = &v51 - v21;
  v22 = sub_1D726393C();
  v56 = *(v22 - 8);
  v57 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v59 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v51 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v58 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v64 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v60 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v38);
  v40 = &v51 - v39;
  v41 = sub_1D72623FC();
  v72 = sub_1D7263F0C();
  v67 = sub_1D7263F1C();
  sub_1D7263EBC();
  (*(v64 + 2))(v37, v61, a3);
  v70 = v40;
  v64 = a3;
  result = sub_1D726238C();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v63 + 48);
    v44 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1D72639DC();
      result = (*v43)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v68(v28, v66);
      if (v9)
      {
        (*(v60 + 8))(v70, v71);

        (*(v53 + 32))(v54, v66, v55);
        return (*v44)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v28, AssociatedTypeWitness);
      sub_1D7263EFC();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = v59;
  sub_1D72639DC();
  v46 = v45;
  v47 = v63;
  v48 = *(v63 + 48);
  v66 = (v63 + 48);
  v64 = v48;
  if (v48(v45, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v60 + 8))(v70, v71);
    (*(v56 + 8))(v46, v57);
    return v72;
  }

  else
  {
    v63 = *(v47 + 32);
    v49 = (v47 + 8);
    v50 = v52;
    while (1)
    {
      (v63)(v50, v46, AssociatedTypeWitness);
      v68(v50, v65);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v49)(v50, AssociatedTypeWitness);
      sub_1D7263EFC();
      sub_1D72639DC();
      if (v64(v46, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v49)(v50, AssociatedTypeWitness);
    (*(v60 + 8))(v70, v71);

    return (*(v53 + 32))(v54, v65, v55);
  }
}

id FeedScoredItem.init(item:scoreProfile:feedContext:)@<X0>(id result@<X0>, id a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = result;
  if (!a2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    a2 = result;
  }

  *a4 = v5;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t FeedScoredItem.identifier.getter()
{
  v1 = [*v0 itemID];
  v2 = sub_1D726207C();

  return v2;
}

void *FeedScoredItem.feedContext.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t FeedScoredItem.publisherID.getter()
{
  v1 = [*v0 publisherID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

uint64_t FeedScoredItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publishDate];
  if (v3)
  {
    v4 = v3;
    sub_1D72588BC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D725891C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}
uint64_t sub_219569824()
{
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F625F8);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Checking Tip eligibility for 'Shortcuts' presentation...", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  if (qword_27CC088F8 != -1)
  {
    swift_once();
  }

  sub_21956B2B4();

  sub_219BDC7D4();

  if (v14 >= sub_219567FA4())
  {

    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = sub_219567FA4();

      _os_log_impl(&dword_2186C1000, v10, v11, "Number of tip presentations [%ld] reached limit [%ld]. Not eligible for 'Shortcuts' presentation.", v12, 0x16u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v4 = sub_21956B308(1uLL, 0, 7);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  v7 = os_log_type_enabled(v5, v6);
  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "Quiescence interval has not elapsed. Not eligible for 'Shortcuts' presentation.", v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    return 0;
  }

  if (v7)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "Tip is eligible for 'Shortcuts' presentation...", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return 1;
}

uint64_t sub_219569B58()
{
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F625F8);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2186C1000, v1, v2, "Checking Tip eligibility for 'Sports Scores' presentation...", v3, 2u);
    MEMORY[0x21CECF960](v3, -1, -1);
  }

  if (qword_280EE9998 != -1)
  {
    swift_once();
  }

  sub_21956B2B4();

  sub_219BDC7D4();

  if (v14 >= sub_2195680F4())
  {

    v10 = sub_219BE5414();
    v11 = sub_219BF6214();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = sub_2195680F4();

      _os_log_impl(&dword_2186C1000, v10, v11, "Number of tip presentations [%ld] reached limit [%ld]. Not eligible for 'Sports Scores' presentation.", v12, 0x16u);
      MEMORY[0x21CECF960](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v4 = sub_21956B308(2uLL, 0, 7);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  v7 = os_log_type_enabled(v5, v6);
  if ((v4 & 1) == 0)
  {
    if (v7)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "Quiescence interval has not elapsed. Not eligible for 'Sports Scores' presentation.", v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    return 0;
  }

  if (v7)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "Tip is eligible for 'Sports Scores' presentation...", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return 2;
}

id sub_219569E9C(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F625F8);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "Checking Tip eligibility for Puzzle Hub Info tooltip presentation...", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  if (v3 >> 61 != 3)
  {
    return 0;
  }

  v8 = *(v2 + 16);
  v9 = [v8 possiblyUnfetchedAppConfiguration];
  if ([v9 respondsToSelector_])
  {
    v10 = [v9 smarterMessagingConfig];
    swift_unknownObjectRelease();
    v11 = [v10 puzzleHubInfoBubbleTipTitle];
    if (v11)
    {
      v12 = v11;
      v13 = sub_219BF5414();
      v15 = v14;

      v16 = v13 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
      v15 = 0xE000000000000000;
    }

    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16;
    }

    if (!v17)
    {
      goto LABEL_37;
    }

    v18 = [v10 puzzleHubInfoBubbleTipBody];
    if (v18)
    {
      v19 = v18;
      v20 = sub_219BF5414();
      v22 = v21;

      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = 0;
      v22 = 0xE000000000000000;
    }

    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23;
    }

    if (!v24)
    {
      goto LABEL_37;
    }

    if ((sub_21956B308(v10, 0, 3) & 1) == 0)
    {
      v28 = sub_219BE5414();
      v29 = sub_219BF6214();
      if (!os_log_type_enabled(v28, v29))
      {
LABEL_36:

LABEL_37:
        return 0;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "Quiescence interval has not elapsed. Not eligible for Puzzle Hub Info Tooltip presentation.", v30, 2u);
      v31 = v30;
LABEL_35:
      MEMORY[0x21CECF960](v31, -1, -1);
      goto LABEL_36;
    }

    if (qword_27CC08908 != -1)
    {
      swift_once();
    }

    sub_21956B2B4();

    sub_219BDC7D4();

    v25 = [v8 possiblyUnfetchedAppConfiguration];
    if ([v25 respondsToSelector_])
    {
      v26 = [v25 smarterMessagingConfig];
      swift_unknownObjectRelease();
      v27 = [v26 maxPuzzleHubInfoBubbleTipPresentations];

      if (v38 < v27)
      {
        return v10;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (v38 < 0)
      {
        return v10;
      }
    }

    v28 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v28, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134218240;
      *(v33 + 4) = v38;
      *(v33 + 12) = 2048;
      v34 = [v8 possiblyUnfetchedAppConfiguration];
      if ([v34 respondsToSelector_])
      {
        v35 = [v34 smarterMessagingConfig];
        swift_unknownObjectRelease();
        v36 = [v35 maxPuzzleHubInfoBubbleTipPresentations];
      }

      else
      {
        swift_unknownObjectRelease();
        v36 = 0;
      }

      *(v33 + 14) = v36;

      _os_log_impl(&dword_2186C1000, v28, v32, "Number of tip presentations [%ld] reached limit [%ld]. Not eligible for Puzzle Hub Info Tooltip presentation.", v33, 0x16u);
      v31 = v33;
      goto LABEL_35;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_21956A380(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625F8);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Checking Tip eligibility for Puzzle Leaderboards Info tooltip presentation...", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  if (v1 >> 61 == 4)
  {
    if (qword_27CC08918 != -1)
    {
      swift_once();
    }

    sub_21956B2B4();

    sub_219BDC7D4();

    if (v10 < 1)
    {
      return v1 & 1;
    }

    v6 = sub_219BE5414();
    v7 = sub_219BF6214();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v10;
      *(v8 + 12) = 2048;
      *(v8 + 14) = 1;

      _os_log_impl(&dword_2186C1000, v6, v7, "Number of tip presentations [%ld] reached limit [%ld]. Not eligible for Puzzle Leaderboards Info Tooltip presentation.", v8, 0x16u);
      MEMORY[0x21CECF960](v8, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

id sub_21956A5E4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F625F8);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "Checking Tip eligibility for Discover News+ Label tooltip presentation...", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  if (v3 >> 61 != 5)
  {
    return 0;
  }

  v8 = [*(v2 + 16) possiblyUnfetchedAppConfiguration];
  if ([v8 respondsToSelector_])
  {
    v9 = [v8 smarterMessagingConfig];
    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_21956A754()
{
  v1 = v0;
  v41[1] = *v0;
  sub_2186DCF58();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v41 - v10;
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v12 = sub_219BE5434();
  __swift_project_value_buffer(v12, qword_280F625F8);
  v13 = sub_219BE5414();
  v14 = sub_219BF6214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2186C1000, v13, v14, "Checking Tip eligibility for 'News+ Stories' presentation...", v15, 2u);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  if (![v1[3] useWelcomeSeries])
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  sub_219BF4E24();
  v16 = v6;
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_218745A0C(v4, sub_2186DCF58);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "The user is not an eligible new subscriber. Not eligible for News+ Stories Tooltip presentation.", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    return 0;
  }

  (*(v6 + 32))(v11, v4, v5);
  v20 = [v1[2] possiblyUnfetchedAppConfiguration];
  if (([v20 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    v30 = sub_219BE5414();
    v31 = sub_219BF6214();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2186C1000, v30, v31, "An eligible presentation window could not be created; Not eligible for News+ Stories Tooltip presentation.", v32, 2u);
      MEMORY[0x21CECF960](v32, -1, -1);
    }

    (*(v16 + 8))(v11, v5);
    return 0;
  }

  v21 = [v20 maximumPremiumStoriesUnlockedTipTime];
  swift_unknownObjectRelease();
  sub_219BDBD24();
  sub_219BDBBE4();
  v23 = v22;
  v24 = v22;
  v25 = *(v6 + 8);
  v25(v9, v5);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_41;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_21;
  }

  if (v21 < v23)
  {
    v26 = sub_219BE5414();
    v27 = sub_219BF6214();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "The user is outside the eligible window to receive a News+ Stories tooltip. Not eligible for News+ Stories Tooltip presentation.";
LABEL_24:
      _os_log_impl(&dword_2186C1000, v26, v27, v29, v28, 2u);
      MEMORY[0x21CECF960](v28, -1, -1);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (qword_27CC08938 != -1)
  {
    goto LABEL_43;
  }

LABEL_21:
  sub_21956B2B4();
  sub_219BDC7D4();
  if (v42)
  {
    v26 = sub_219BE5414();
    v27 = sub_219BF6214();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "The user has previously explicitly closed a News+ Stories tooltip. Not eligible for News+ Stories Tooltip presentation.";
      goto LABEL_24;
    }

LABEL_25:

LABEL_26:
    v25(v11, v5);
    return 0;
  }

  if (qword_27CC08928 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();

  v34 = v41[2];
  if (v34 >= sub_219568244())
  {

    v38 = sub_219BE5414();
    v39 = sub_219BF6214();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134218240;
      *(v40 + 4) = v34;
      *(v40 + 12) = 2048;
      *(v40 + 14) = sub_219568244();

      _os_log_impl(&dword_2186C1000, v38, v39, "Number of tip presentations [%ld] reached limit [%ld]. Not eligible for 'News+ Stories' presentation.", v40, 0x16u);
      MEMORY[0x21CECF960](v40, -1, -1);
    }

    else
    {
    }

    goto LABEL_26;
  }

  v35 = sub_21956B308(3uLL, 0, 7);
  v26 = sub_219BE5414();
  v27 = sub_219BF6214();
  v36 = os_log_type_enabled(v26, v27);
  if ((v35 & 1) == 0)
  {
    if (!v36)
    {
      goto LABEL_25;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "Quiescence interval has not elapsed. Not eligible for 'News+ Stories' presentation.";
    goto LABEL_24;
  }

  if (v36)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2186C1000, v26, v27, "Tip is eligible for 'News+ Stories' presentation...", v37, 2u);
    MEMORY[0x21CECF960](v37, -1, -1);
  }

  v25(v11, v5);
  return 3;
}

unint64_t sub_21956AF10(char a1)
{
  if (qword_280EE5F90 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625F8);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Checking Tip eligibility for Recipe Chrome tooltip presentation...", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  if (qword_27CC08940 != -1)
  {
    swift_once();
  }

  sub_21956B2B4();

  sub_219BDC7D4();

  if (qword_27CC089A0 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (qword_27CC08980 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    if ((v12 & 0x8000000000000000) == 0)
    {
LABEL_13:
      v6 = sub_219BE5414();
      v7 = sub_219BF6214();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        v9 = "Recipe Chrome Tip has already been shown. Not eligible for Recipe Chrome Tooltip presentation.";
LABEL_19:
        _os_log_impl(&dword_2186C1000, v6, v7, v9, v8, 2u);
        MEMORY[0x21CECF960](v8, -1, -1);
        goto LABEL_20;
      }

      goto LABEL_20;
    }
  }

  else if (v12 >= 2)
  {
    goto LABEL_13;
  }

  v10 = a1 & 1;
  if ((sub_21956B308(v10, 0, 6) & 1) == 0)
  {
    v6 = sub_219BE5414();
    v7 = sub_219BF6214();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Quiescence interval has not elapsed. Not eligible for 'Recipe Chrome' presentation.";
      goto LABEL_19;
    }

LABEL_20:

    return 0;
  }

  return v10;
}

uint64_t sub_21956B248()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_21956B2B4()
{
  result = qword_280ED95A8[0];
  if (!qword_280ED95A8[0])
  {
    type metadata accessor for TipModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED95A8);
  }

  return result;
}

uint64_t sub_21956B308(unint64_t a1, uint64_t a2, int a3)
{
  v26 = a3;
  v25 = *v3;
  v24 = sub_219BDBD34();
  v6 = *(v24 - 8);
  v7 = MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = [v3[2] possiblyUnfetchedAppConfiguration];
  if ([v15 respondsToSelector_])
  {
    v16 = [v15 smarterMessagingConfig];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v16 = 0;
  }

  v17 = v26;
  sub_21956B6B8(a1, a2, v26, v16);
  if (v18)
  {

    v19 = 0;
  }

  else
  {
    sub_2198E18EC(a1, a2, v17);
    sub_21956B2B4();

    sub_219BDC7D4();

    sub_219BDBBF4();
    sub_219BDBCB4();
    v19 = sub_219BDBC24();

    v20 = *(v6 + 8);
    v21 = v24;
    v20(v9, v24);
    v20(v12, v21);
    v20(v14, v21);
  }

  return v19 & 1;
}

uint64_t sub_21956B57C()
{
  v1 = [objc_msgSend(*(v0 + 16) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = [*(v0 + 40) hasMutedSubscriptionForTagID_];
  }

  else
  {
    if (qword_280EE5F90 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F625F8);
    v1 = sub_219BE5414();
    v4 = sub_219BF6214();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2186C1000, v1, v4, "Could not determine mySports tag ID. Assuming blocked tag.", v5, 2u);
      MEMORY[0x21CECF960](v5, -1, -1);
    }

    v2 = 1;
  }

  return v2;
}

uint64_t sub_21956B6B8(unint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  result = 60;
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        return [a1 toolTipDisplayQuiescenceInterval];
      }

      if (a4)
      {
        v6 = sel_puzzleHubInfoBubbleTipPresentationsQuiescenceInterval;
        return [a4 v6];
      }
    }

    else
    {
      if (a3)
      {
        return result;
      }

      if (a4)
      {
        v6 = sel_notificationBubbleTipPresentationsQuiescenceInterval;
        return [a4 v6];
      }
    }

    return 0;
  }

  if (a3 > 5u)
  {
    if (a3 == 6)
    {
      return 86400;
    }

    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        return sub_21956864C();
      }

      else
      {
        return sub_2195684F0();
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        if (a4)
        {
          v6 = sel_sportsBubbleTipPresentationsQuiescenceInterval;
          return [a4 v6];
        }

        return 0;
      }

      return sub_219568394();
    }
  }

  else if (a3 != 4)
  {
    return 0;
  }

  return result;
}

uint64_t sub_21956B7F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21956BCF4(0, &qword_280E8C8E0, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21956BCA0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21956BA44(void *a1)
{
  sub_21956BCF4(0, &qword_27CC1BE48, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21956BCA0();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  if (!v1)
  {
    v9[14] = 1;
    sub_21956BD58();
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21956BBF8(uint64_t a1)
{
  v2 = sub_21956BCA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21956BC34(uint64_t a1)
{
  v2 = sub_21956BCA0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21956BCA0()
{
  result = qword_280E9E1C8;
  if (!qword_280E9E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E1C8);
  }

  return result;
}

void sub_21956BCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21956BCA0();
    v7 = a3(a1, &type metadata for ArticleListSavedFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21956BD58()
{
  result = qword_280ED2F38[0];
  if (!qword_280ED2F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED2F38);
  }

  return result;
}

unint64_t sub_21956BDC0()
{
  result = qword_27CC1BE50;
  if (!qword_27CC1BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE50);
  }

  return result;
}

unint64_t sub_21956BE18()
{
  result = qword_280E9E1B8;
  if (!qword_280E9E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E1B8);
  }

  return result;
}

unint64_t sub_21956BE70()
{
  result = qword_280E9E1C0;
  if (!qword_280E9E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9E1C0);
  }

  return result;
}

void sub_21956BEC4(void *a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_280F627F0);
    v5 = a2;
    v6 = sub_219BE5414();
    v7 = sub_219BF61F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_219BF7A04();
      v12 = sub_2186D1058(v10, v11, &v24);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2186C1000, v6, v7, "Promise for data enqueue finish with error: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CECF960](v9, -1, -1);
      MEMORY[0x21CECF960](v8, -1, -1);

      return;
    }

    v22 = a2;
  }

  else
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F627F0);
    v15 = a1;
    oslog = sub_219BE5414();
    v16 = sub_219BF61D4();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136315138;
      sub_21956C6BC(0, &qword_27CC1BE60, &unk_280E8DD88, 0x277CEE4A0, sub_2186C6148);
      v19 = sub_219BF6FA4();
      v21 = sub_2186D1058(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2186C1000, oslog, v16, "Promise for data enqueue did finish. %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x21CECF960](v18, -1, -1);
      MEMORY[0x21CECF960](v17, -1, -1);

      return;
    }

    v22 = oslog;
  }
}

uint64_t sub_21956C204()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21956C24C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    sub_219BE5274();
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v5 = sub_219BE5284();
    v6 = *(v5 + 16);
    if (v6)
    {
      v26 = v4;
      v7 = v5 + 32;
      v8 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_218718690(v7, v31);
        sub_2186CB1F0(v31, v30);
        sub_2186CFDE4(0, &qword_280EE60A8);
        sub_2186CFDE4(0, qword_280EC21E0);
        if (swift_dynamicCast())
        {
          if (*(&v28 + 1))
          {
            sub_2186CB1F0(&v27, v30);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_2191FAE30(0, v8[2] + 1, 1, v8);
            }

            v10 = v8[2];
            v9 = v8[3];
            if (v10 >= v9 >> 1)
            {
              v8 = sub_2191FAE30((v9 > 1), v10 + 1, 1, v8);
            }

            v8[2] = v10 + 1;
            sub_2186CB1F0(v30, &v8[5 * v10 + 4]);
            goto LABEL_6;
          }
        }

        else
        {
          v29 = 0;
          v27 = 0u;
          v28 = 0u;
        }

        sub_21956C634(&v27);
LABEL_6:
        v7 += 40;
        if (!--v6)
        {

          v4 = v26;
          goto LABEL_16;
        }
      }
    }

    v8 = MEMORY[0x277D84F90];
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v32);
    v11 = v8[2];
    if (v11)
    {
      v12 = (v8 + 4);
      do
      {
        sub_218718690(v12, v32);
        v13 = v33;
        v14 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        (*(v14 + 8))(a2, v13, v14);
        __swift_destroy_boxed_opaque_existential_1(v32);
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    swift_beginAccess();
    v15 = *(v4 + 56);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = v15 + 32;

      do
      {
        sub_218718690(v17, v32);
        v18 = v33;
        v19 = v34;
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v20 = (*(v19 + 8))(a2, v18, v19);
        if (v21)
        {
          v23 = v20;
          v24 = v21;
          v25 = v22;

          sub_21956C718(v23, v24, v25);

          swift_bridgeObjectRelease_n();
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21956C5D0()
{
  v1 = *(type metadata accessor for EngagementEvent() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_21956C24C(v2, v3);
}

uint64_t sub_21956C634(uint64_t a1)
{
  sub_21956C6BC(0, &qword_27CC1BE58, qword_280EC21E0, &protocol descriptor for EngagementEventProcessor, sub_2186CFDE4);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21956C6BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21956C718(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  sub_218751558(&aBlock, v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v6;
  sub_21948CB08(v30, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v8 = v29;
  v26 = v5;
  strcpy(&aBlock, "com.apple.news");
  HIBYTE(aBlock) = -18;
  sub_218751558(&aBlock, v30);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v8;
  sub_21948CB08(v30, 7368801, 0xE300000000000000, v9);
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v10 = sub_219BE5434();
  __swift_project_value_buffer(v10, qword_280F627F0);

  v11 = sub_219BE5414();
  v12 = sub_219BF6214();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&aBlock = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_2186D1058(a1, a2, &aBlock);
    *(v13 + 12) = 2080;

    v15 = sub_219BF5224();
    v17 = v16;

    v18 = sub_2186D1058(v15, v17, &aBlock);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_2186C1000, v11, v12, "Event %s enqueued with data: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v14, -1, -1);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CEE498]) init];

  sub_218E9B5CC(v20);

  v21 = sub_219BF5204();

  v22 = [v19 enqueueData_];

  v27 = sub_21956BEC4;
  v28 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v25 = sub_218846728;
  v26 = &block_descriptor_17_5;
  v23 = _Block_copy(&aBlock);
  [v22 addFinishBlock_];
  _Block_release(v23);
}

uint64_t sub_21956CAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[3] = a4;
  v38 = a3;
  v33 = a1;
  sub_218AB7640();
  v32 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF2A4();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v31 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF584();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEF974();
  v29 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioFeedLayoutModel();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E858();
  sub_219BE75E4();
  (*(v14 + 32))(v16, v19, v13);
  sub_21956CEDC();
  sub_219BEF574();
  v28[2] = *(v4 + 80);
  v28[1] = swift_getObjectType();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = v30;
  v22 = v32;
  (*(v6 + 16))(v30, v33, v32);
  v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v6 + 32))(v24 + v23, v21, v22);

  v25 = v31;
  sub_219BEECD4();

  v26 = sub_219BEF294();
  (*(v36 + 8))(v25, v37);
  (*(v34 + 8))(v12, v35);
  (*(v14 + 8))(v16, v29);
  return v26;
}

BOOL sub_21956CEDC()
{
  v1 = type metadata accessor for AudioFeedSectionDescriptor();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21956D608(0, &qword_280EE3690, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  sub_21929BEC4();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - v13;
  v20[1] = *(v0 + 88);
  sub_21898746C();
  sub_21956D51C(&unk_280EE54C0, sub_21898746C);
  sub_219BE7B94();
  sub_219BEB254();
  (*(v6 + 8))(v8, v5);
  sub_21956D6FC(v14, v12);
  sub_21956D608(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  v16 = v15;
  v17 = *(v15 - 8);
  if ((*(v17 + 48))(v12, 1, v15) == 1)
  {
    sub_21956D760(v14, sub_21929BEC4);
    v18 = 0;
    v14 = v12;
  }

  else
  {
    sub_219BE6934();
    (*(v17 + 8))(v12, v16);
    v18 = sub_218C17364();
    sub_21956D760(v3, type metadata accessor for AudioFeedSectionDescriptor);
  }

  sub_21956D760(v14, sub_21929BEC4);
  return v18;
}

uint64_t sub_21956D200()
{
  v0 = sub_219BF0894();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_219BEDF44();
    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D32F88])
    {
      (*(v1 + 96))(v3, v0);
      v5 = sub_219BF13B4();
      v6 = *(v5 - 8);
      if ((*(v6 + 88))(v3, v5) == *MEMORY[0x277D33328])
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_219038380();

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {

        return (*(v6 + 8))(v3, v5);
      }
    }

    else
    {

      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

uint64_t sub_21956D418()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21956D51C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21956D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_21956CAC8(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_21956D594()
{
  sub_218AB7640();

  return sub_21956D200();
}

void sub_21956D608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_21956D51C(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_21956D51C(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21956D6FC(uint64_t a1, uint64_t a2)
{
  sub_21929BEC4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21956D760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI234HistoryFeedLayoutSectionDescriptorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21956D7E8()
{
  if (*v0 < 2)
  {
    return 0;
  }

  v2 = v0[1];
  v3 = sub_21956E0B8(*v0, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Header, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Header);
  v4 = sub_21956E0B8(v2, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Footer, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v4);
  return v3;
}

uint64_t sub_21956D894(uint64_t a1)
{
  v2 = sub_21956E428();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21956D8D0(uint64_t a1)
{
  v2 = sub_218EECC84();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21956D914(uint64_t a1)
{
  v2 = type metadata accessor for HistoryFeedLayoutSectionDescriptor.Decoration(0);
  v67 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HistoryFeedLayoutSectionDescriptor.Footer(0);
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HistoryFeedLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *MEMORY[0x277D6E758];
  v60 = *(v13 + 104);
  v61 = v13 + 104;
  v60(v15, v16, v12);
  v17 = sub_219BEE054();
  v19 = *(v13 + 8);
  v18 = v13 + 8;
  v62 = v15;
  v59 = v19;
  v19(v15, v12);
  v20 = *(v17 + 16);
  v21 = MEMORY[0x277D84F90];
  v63 = v4;
  v64 = a1;
  if (v20)
  {
    v55 = v18;
    v56 = v12;
    v57 = v7;
    v68 = MEMORY[0x277D84F90];
    sub_218C36178(0, v20, 0);
    v22 = v17;
    v23 = v68;
    v66 = sub_219BF00D4();
    v24 = *(v66 - 8);
    v65 = *(v24 + 16);
    v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v26 = *(v24 + 72);
    do
    {
      v65(v11, v25, v66);
      v68 = v23;
      v28 = *(v23 + 16);
      v27 = *(v23 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C36178(v27 > 1, v28 + 1, 1);
        v23 = v68;
      }

      *(v23 + 16) = v28 + 1;
      sub_21956E050(v11, v23 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Header);
      v25 += v26;
      --v20;
    }

    while (v20);

    v4 = v63;
    a1 = v64;
    v12 = v56;
    v7 = v57;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v29 = v62;
  v60(v62, *MEMORY[0x277D6E750], v12);
  v30 = sub_219BEE054();
  v31 = v29;
  v32 = v30;
  v59(v31, v12);
  v33 = *(v32 + 16);
  if (v33)
  {
    v68 = v21;
    sub_218C36128(0, v33, 0);
    v34 = v68;
    v66 = sub_219BF00D4();
    v35 = *(v66 - 8);
    v65 = *(v35 + 16);
    v36 = *(v35 + 80);
    v62 = v32;
    v37 = v32 + ((v36 + 32) & ~v36);
    v38 = *(v35 + 72);
    v39 = v58;
    do
    {
      v65(v7, v37, v66);
      v68 = v34;
      v40 = v7;
      v42 = *(v34 + 16);
      v41 = *(v34 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_218C36128(v41 > 1, v42 + 1, 1);
        v39 = v58;
        v34 = v68;
      }

      *(v34 + 16) = v42 + 1;
      sub_21956E050(v40, v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v42, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Footer);
      v37 += v38;
      --v33;
      v7 = v40;
    }

    while (v33);

    v4 = v63;
    a1 = v64;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v43 = sub_219BEE044();
  v44 = *(v43 + 16);
  if (v44)
  {
    v68 = v21;
    sub_218C360D8(0, v44, 0);
    v45 = v68;
    v66 = sub_219BEE914();
    v46 = *(v66 - 8);
    v65 = *(v46 + 16);
    v47 = *(v46 + 80);
    v62 = v43;
    v48 = v43 + ((v47 + 32) & ~v47);
    v49 = *(v46 + 72);
    do
    {
      v65(v4, v48, v66);
      v68 = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_218C360D8(v50 > 1, v51 + 1, 1);
        v45 = v68;
      }

      *(v45 + 16) = v51 + 1;
      sub_21956E050(v4, v45 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v51, type metadata accessor for HistoryFeedLayoutSectionDescriptor.Decoration);
      v48 += v49;
      --v44;
    }

    while (v44);
    v52 = sub_219BEE074();
    (*(*(v52 - 8) + 8))(v64, v52);
  }

  else
  {

    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(a1, v53);
  }

  return v23;
}

uint64_t sub_21956E050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21956E0B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_21956E360(v16, v9, v29);
      v21 = v28;
      sub_21956E360(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_21956E3C8(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_21956E360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21956E3C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21956E428()
{
  result = qword_27CC1BE68;
  if (!qword_27CC1BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE68);
  }

  return result;
}

void sub_21956E48C()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  sub_219BDDFA4();
  v2 = *(v0 + 80);
  v3 = [*(v1 + 88) identifier];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = *(v1 + 32);
  v9[4] = sub_21956EFC0;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218B66540;
  v9[3] = &block_descriptor_138;
  v5 = _Block_copy(v9);

  v6 = [v2 viewingSessionForContentIdentifier:v3 object:v1 onEnd:v5];
  _Block_release(v5);

  sub_219BDCE04();
  sub_219BDD114();

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;

  v8 = v6;
  sub_219BDD154();

  sub_219BDFFC4();
  sub_21956EFD0(&qword_27CC1BE78, 255, MEMORY[0x277D2E2A0]);
  sub_219BDD214();
}

uint64_t sub_21956E6AC()
{
  sub_219BDCE04();
  sub_219BDD124();
}

uint64_t sub_21956E6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v31 = a1;
  v3 = sub_219BDBD64();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDFFB4();
  v6 = *(v5 - 8);
  v41 = v5;
  v42 = v6;
  MEMORY[0x28223BE20](v5);
  v37 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF5A4();
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x28223BE20](v8);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE1714();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21934C4BC();
  sub_2187F3258();
  v33 = v15;
  v29 = sub_219BDCD44();
  v16 = *(v29 - 8);
  v32 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v30 = xmmword_219C09BA0;
  *(v18 + 16) = xmmword_219C09BA0;
  v28 = *MEMORY[0x277CEAD08];
  v27 = *(v16 + 104);
  v27(v18 + v17);
  sub_21956EFD0(&unk_280EE7F60, 255, MEMORY[0x277D2F890]);
  sub_219BDCCC4();

  (*(v12 + 8))(v14, v11);
  sub_219BDCE04();
  v19 = v26;
  sub_219BDF594();
  sub_21956EFD0(&unk_280EE8740, 255, MEMORY[0x277D2DB78]);
  v20 = v34;
  sub_219BDCCC4();
  (*(v35 + 8))(v19, v20);
  v21 = v38;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v39 + 8))(v21, v40);
  v22 = v37;
  sub_219BDFFA4();
  v23 = swift_allocObject();
  *(v23 + 16) = v30;
  (v27)(v23 + v17, v28, v29);
  sub_21956EFD0(&unk_280EE84F0, 255, MEMORY[0x277D2E290]);
  v24 = v41;
  sub_219BDCCC4();

  return (*(v42 + 8))(v22, v24);
}

uint64_t sub_21956EC2C()
{
  sub_218774F78(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void (*sub_21956ECA8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

uint64_t sub_21956ED94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(*v3 + 64);
  v6 = *(*v3 + 72);
  __swift_project_boxed_opaque_existential_1((*v3 + 40), v5);
  return a3(v5, v6);
}

uint64_t sub_21956EDE8()
{
  v1 = *v0;
  sub_219BDFFC4();
  sub_21956EFD0(&qword_27CC1BE78, 255, MEMORY[0x277D2E2A0]);
  sub_219BDD234();
  __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
  return sub_219BDDF94();
}

uint64_t sub_21956EFD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_21956F03C(void *a1, char *a2)
{
  v3 = v2;
  v69 = a2;
  v65 = a1;
  v74 = sub_219BDEF94();
  v68 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v66 = v4;
  v67 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v54 - v6;
  sub_219571358(0, &unk_280EE8200, MEMORY[0x277D2EB90], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54 - v8;
  v73 = sub_219BDF184();
  v63 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = sub_219BE4914();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF194();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  v71 = sub_219BDF074();
  v60 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v58 = v25;
  v59 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v70 = &v54 - v27;
  v61 = v3;
  sub_21956F858(v3, &v54 - v27);
  (*(v15 + 16))(v17, v69, v14);
  v28 = (*(v15 + 88))(v17, v14);
  if (v28 == *MEMORY[0x277D353A0])
  {
    (*(v15 + 96))(v17, v14);
    (*(v19 + 104))(v24, *MEMORY[0x277D2D930], v18);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v29 = v28;
    if (v28 == *MEMORY[0x277D353B0])
    {
      (*(v15 + 8))(v17, v14);
      (*(v19 + 104))(v24, *MEMORY[0x277D2D938], v18);
    }

    else
    {
      LODWORD(v69) = *MEMORY[0x277D353A8];
      (*(v19 + 104))(v24, *MEMORY[0x277D2D940], v18);
      if (v29 != v69)
      {
        (*(v15 + 8))(v17, v14);
      }
    }
  }

  v56 = v19;
  v57 = v24;
  (*(v19 + 16))(v21, v24, v18);
  v30 = *MEMORY[0x277D2EB88];
  v31 = sub_219BE0BC4();
  v32 = *(v31 - 8);
  (*(v32 + 104))(v9, v30, v31);
  (*(v32 + 56))(v9, 0, 1, v31);
  sub_219BDF174();
  v33 = v61;
  v69 = v13;
  __swift_project_boxed_opaque_existential_1((v61 + 24), *(v61 + 48));
  v55 = v18;
  v34 = v65;
  swift_getObjectType();
  v35 = [v34 identifier];
  sub_219BF5414();

  v36 = sub_219BF3424();
  v54 = v36;

  v37 = v72;
  sub_2194CA7FC(v36, v72);
  v65 = *(v33 + 16);
  v38 = v59;
  v39 = v60;
  (*(v60 + 16))(v59, v70, v71);
  v40 = v67;
  v41 = v68;
  (*(v68 + 16))(v67, v37, v74);
  v42 = v63;
  v43 = v64;
  (*(v63 + 16))(v64, v69, v73);
  v44 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v45 = (v58 + *(v41 + 80) + v44) & ~*(v41 + 80);
  v46 = (v66 + *(v42 + 80) + v45) & ~*(v42 + 80);
  v47 = swift_allocObject();
  v48 = v47 + v44;
  v49 = v71;
  (*(v39 + 32))(v48, v38, v71);
  v50 = v40;
  v51 = v74;
  (*(v41 + 32))(v47 + v45, v50, v74);
  v52 = v73;
  (*(v42 + 32))(v47 + v46, v43, v73);
  sub_219BDD154();

  (*(v41 + 8))(v72, v51);
  (*(v42 + 8))(v69, v52);
  (*(v56 + 8))(v57, v55);
  return (*(v39 + 8))(v70, v49);
}

uint64_t sub_21956F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_219BDCD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a1 + 16);
  sub_219BDD184();
  sub_219571358(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  v8 = v7;
  v9 = sub_219BDD0A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v44 = v12 + 2 * v11;
  v45 = v8;
  v13 = swift_allocObject();
  v43 = xmmword_219C09EC0;
  *(v13 + 16) = xmmword_219C09EC0;
  v46 = v12;
  v14 = v13 + v12;
  v15 = *(v10 + 104);
  (v15)(v13 + v12, *MEMORY[0x277CEAE38], v9);
  v48 = v11;
  v16 = (v14 + v11);
  *v16 = 0x656C7A7A7570;
  v16[1] = 0xE600000000000000;
  v17 = *MEMORY[0x277CEAE50];
  v47 = v15;
  v15();
  LOBYTE(v14) = sub_219BDCD14();

  v18 = *(v4 + 8);
  v50 = v3;
  v18(v6, v3);
  if (v14)
  {
    v19 = *MEMORY[0x277D2D7F0];
    v20 = sub_219BDF074();
    return (*(*(v20 - 8) + 104))(v51, v19, v20);
  }

  else
  {
    v42 = v17;
    v22 = v51;
    sub_219BDD184();
    v23 = v46;
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    (v47)(v24 + v23, *MEMORY[0x277CEAE58], v9);
    LOBYTE(v23) = sub_219BDCD14();

    v18(v6, v50);
    if (v23)
    {
      v25 = *MEMORY[0x277D2D858];
      v26 = sub_219BDF074();
      return (*(*(v26 - 8) + 104))(v22, v25, v26);
    }

    else
    {
      sub_219BDD184();
      v27 = swift_allocObject();
      *(v27 + 16) = v43;
      v28 = v27 + v46;
      strcpy((v27 + v46), "puzzleTeaser");
      *(v28 + 13) = 0;
      *(v28 + 14) = -5120;
      v41 = *MEMORY[0x277CEAE48];
      v29 = v18;
      v30 = v47;
      (v47)(v28);
      v31 = (v28 + v48);
      *v31 = 0x656C7A7A7570;
      v31[1] = 0xE600000000000000;
      v30();
      LOBYTE(v28) = sub_219BDCD14();

      v29(v6, v50);
      if (v28)
      {
        v32 = *MEMORY[0x277D2D838];
        v33 = sub_219BDF074();
        return (*(*(v33 - 8) + 104))(v51, v32, v33);
      }

      else
      {
        sub_219BDD184();
        v34 = swift_allocObject();
        *(v34 + 16) = v43;
        v35 = v47;
        v36 = (v34 + v46);
        *v36 = 0x656C7A7A7570;
        v36[1] = 0xE600000000000000;
        (v35)(v36, v41, v9);
        v37 = (v36 + v48);
        *v37 = 0x656C7A7A7570;
        v37[1] = 0xE600000000000000;
        v35();
        LOBYTE(v36) = sub_219BDCD14();

        v29(v6, v50);
        v38 = sub_219BDF074();
        if (v36)
        {
          v39 = MEMORY[0x277D2D870];
        }

        else
        {
          v39 = MEMORY[0x277D2D850];
        }

        return (*(*(v38 - 8) + 104))(v51, *v39, v38);
      }
    }
  }
}

uint64_t sub_21956FDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v21 = a2;
  v22 = a1;
  v20 = sub_219BDF074();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE1544();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BE1524();
  v23 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3C8], v19);
  (*(v4 + 16))(v6, v21, v20);
  sub_219BE1514();
  sub_2195715FC(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  v16 = v18;
  sub_219BDCCC4();
  sub_219BDEF94();
  sub_2195715FC(&qword_280EE8910, MEMORY[0x277D2D788]);
  sub_219BDCCC4();
  sub_219BDF184();
  sub_2195715FC(&qword_280EE8860, MEMORY[0x277D2D928]);
  sub_219BDCCC4();
  sub_219BDF944();
  sub_2195715FC(&qword_280EE8628, MEMORY[0x277D2DE90]);
  sub_219BDCCD4();
  return (*(v23 + 8))(v15, v16);
}

uint64_t sub_219570214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_219BDF904();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v10 = sub_219BDFE14();
  v7[11] = v10;
  v7[12] = *(v10 - 8);
  v7[13] = swift_task_alloc();
  v11 = sub_219BF2934();
  v7[14] = v11;
  v7[15] = *(v11 - 8);
  v7[16] = swift_task_alloc();
  sub_219571358(0, &qword_280E905D8, MEMORY[0x277D335C8], MEMORY[0x277D83D88]);
  v7[17] = swift_task_alloc();
  v12 = sub_219BDFE04();
  v7[18] = v12;
  v13 = *(v12 - 8);
  v7[19] = v13;
  v7[20] = *(v13 + 64);
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v14 = sub_219BDEF94();
  v7[23] = v14;
  v15 = *(v14 - 8);
  v7[24] = v15;
  v7[25] = *(v15 + 64);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  sub_219BF5BD4();
  v7[28] = sub_219BF5BC4();
  v17 = sub_219BF5B44();
  v7[29] = v17;
  v7[30] = v16;

  return MEMORY[0x2822009F8](sub_219570514, v17, v16);
}

uint64_t sub_219570514()
{
  v1 = v0[27];
  v2 = v0[3];
  v32 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v0[31] = swift_getObjectType();
  v3 = [v2 identifier];
  sub_219BF5414();

  v4 = sub_219BF3424();
  v0[32] = v4;

  sub_2194CA7FC(v4, v1);
  v5 = *(v32 + 16);
  if (v5)
  {
    v6 = v0[12];
    v7 = v0[4];
    v34 = MEMORY[0x277D84F90];
    sub_218C37C10(0, v5, 0);
    v8 = (v7 + 32);
    v33 = *MEMORY[0x277D2E170];
    v31 = *(v6 + 104);
    v9 = *MEMORY[0x277D2E168];
    v10 = *MEMORY[0x277D2E160];
    do
    {
      v12 = *v8++;
      v11 = v12;
      v13 = v33;
      if (v12 == 1)
      {
        v13 = v9;
      }

      if (v11)
      {
        v14 = v13;
      }

      else
      {
        v14 = v10;
      }

      v31(v0[13], v14, v0[11]);
      v16 = *(v34 + 16);
      v15 = *(v34 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C37C10(v15 > 1, v16 + 1, 1);
      }

      v17 = v0[13];
      v18 = v0[11];
      *(v34 + 16) = v16 + 1;
      (*(v6 + 32))(v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v17, v18);
      --v5;
    }

    while (v5);
  }

  v20 = v0[15];
  v19 = v0[16];
  v21 = v0[14];
  v23 = v0[2];
  v22 = v0[3];
  sub_219BDFDF4();
  v24 = v23[16];
  v25 = v23[17];
  __swift_project_boxed_opaque_existential_1(v23 + 13, v24);
  (*(v20 + 104))(v19, *MEMORY[0x277D33A18], v21);
  v26 = [v22 puzzleType];
  v0[33] = v26;
  v27 = swift_task_alloc();
  v0[34] = v27;
  *v27 = v0;
  v27[1] = sub_2195707FC;
  v29 = v0[16];
  v28 = v0[17];

  return MEMORY[0x282192A38](v28, v29, v26, v24, v25);
}

uint64_t sub_2195707FC()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {

    swift_unknownObjectRelease();
    (*(v5 + 8))(v4, v6);
    v7 = v3[29];
    v8 = v3[30];
    v9 = sub_219570D28;
  }

  else
  {
    (*(v5 + 8))(v2[16], v2[14]);
    swift_unknownObjectRelease();
    v7 = v3[29];
    v8 = v3[30];
    v9 = sub_2195709BC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2195709BC()
{
  v1 = v0[32];
  v2 = v0[27];
  v21 = v2;
  v24 = v0[26];
  v20 = v0[25];
  v22 = v0[24];
  v16 = v0[23];
  v27 = v0[22];
  v17 = v0[21];
  v3 = v0[19];
  v19 = v0[20];
  v4 = v0[17];
  v26 = v0[18];
  v5 = v0[10];
  v23 = v0[9];
  v6 = v0[7];
  v25 = v0[6];

  v7 = sub_219BF1D54();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v18 = v5;
  sub_2194CAE70(v1, v4);
  (*(v22 + 16))(v24, v2, v16);
  v8 = v3;
  v15 = v3;
  (*(v3 + 16))(v17, v27, v26);
  (*(v6 + 16))(v23, v5, v25);
  v9 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v10 = (v20 + *(v8 + 80) + v9) & ~*(v8 + 80);
  v11 = (v19 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v22 + 32))(v12 + v9, v24, v16);
  (*(v15 + 32))(v12 + v10, v17, v26);
  (*(v6 + 32))(v12 + v11, v23, v25);
  sub_219BDD154();

  (*(v6 + 8))(v18, v25);
  sub_219571570(v4);
  (*(v15 + 8))(v27, v26);
  (*(v22 + 8))(v21, v16);

  v13 = v0[1];

  return v13();
}

uint64_t sub_219570D28()
{
  v1 = v0[32];
  v2 = v0[27];
  v21 = v2;
  v24 = v0[26];
  v20 = v0[25];
  v23 = v0[24];
  v16 = v0[23];
  v27 = v0[22];
  v17 = v0[21];
  v3 = v0[19];
  v19 = v0[20];
  v4 = v0[17];
  v26 = v0[18];
  v5 = v0[10];
  v22 = v0[9];
  v6 = v0[7];
  v25 = v0[6];

  v7 = sub_219BF1D54();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v18 = v5;
  sub_2194CAE70(v1, v4);
  (*(v23 + 16))(v24, v2, v16);
  v8 = v3;
  v15 = v3;
  (*(v3 + 16))(v17, v27, v26);
  (*(v6 + 16))(v22, v5, v25);
  v9 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v10 = (v20 + *(v8 + 80) + v9) & ~*(v8 + 80);
  v11 = (v19 + *(v6 + 80) + v10) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v23 + 32))(v12 + v9, v24, v16);
  (*(v15 + 32))(v12 + v10, v17, v26);
  (*(v6 + 32))(v12 + v11, v22, v25);
  sub_219BDD154();

  (*(v6 + 8))(v18, v25);
  sub_219571570(v4);
  (*(v15 + 8))(v27, v26);
  (*(v23 + 8))(v21, v16);

  v13 = v0[1];

  return v13();
}

uint64_t sub_219571094()
{
  sub_219BDEF94();
  sub_2195715FC(&qword_280EE8910, MEMORY[0x277D2D788]);
  sub_219BDCCC4();
  sub_219BDFE04();
  sub_2195715FC(&qword_27CC1BE80, MEMORY[0x277D2E158]);
  sub_219BDCCC4();
  sub_219BDF904();
  sub_2195715FC(&qword_27CC1BE88, MEMORY[0x277D2DE70]);
  sub_219BDCCC4();
  sub_219BDF944();
  sub_2195715FC(&qword_280EE8628, MEMORY[0x277D2DE90]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218806FD0(v1);
}

uint64_t sub_219571290()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);

  return swift_deallocClassInstance();
}

void sub_219571358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219571410(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v9 = *(a2(0) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(a3(0) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(a4(0) - 8);
  v16 = v5 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));

  return a5(a1, v5 + v10, v5 + v13, v16);
}

uint64_t sub_219571570(uint64_t a1)
{
  sub_219571358(0, &qword_280E905D8, MEMORY[0x277D335C8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2195715FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219571654()
{
  v1 = v0[1];
  v2 = sub_219571718(*v0);
  v3 = sub_219571AB0(v1);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_21957169C(uint64_t a1)
{
  v2 = sub_219571F9C();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2195716D8(uint64_t a1)
{
  v2 = sub_21878E7CC();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_219571718(uint64_t a1)
{
  v29 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0);
  v2 = *(v29 - 8);
  v3 = MEMORY[0x28223BE20](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v33;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_219571D98(v10, v7, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
      sub_219571D98(v7, v5, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes;
        sub_219571E80(0, &qword_27CC13328, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
        v14 = *(v13 + 48);
        v31 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes();
        v15 = &unk_27CC1BE98;
      }

      else
      {
        v16 = *(v5 + 6);

        v12 = type metadata accessor for TitleViewLayoutAttributes;
        sub_219571E80(0, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes);
        v14 = *(v17 + 48);
        v31 = type metadata accessor for TitleViewLayoutAttributes(0);
        v15 = &qword_280EBCC28;
      }

      v32 = sub_219571EEC(v15, v12);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      sub_219571F34(&v5[v14], boxed_opaque_existential_1, v12);
      sub_219571E00(v7, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
      v33 = v9;
      v20 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C34270((v19 > 1), v20 + 1, 1);
      }

      v21 = v31;
      v22 = v32;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      MEMORY[0x28223BE20](v23);
      v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_218DD76AC(v20, v25, &v33, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v30);
      v9 = v33;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_219571AB0(uint64_t a1)
{
  v2 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v21 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes();
  MEMORY[0x28223BE20](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v25 = MEMORY[0x277D84F90];
    sub_218C34270(0, v11, 0);
    v12 = v25;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_219571D98(v13, v8, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
      sub_219571D98(v8, v6, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);

      sub_219571E80(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      sub_219571F34(&v6[*(v15 + 48)], v10, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      sub_219571E00(v8, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
      v25 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_218C34270((v16 > 1), v17 + 1, 1);
        v12 = v25;
      }

      v23 = v21;
      v24 = sub_219571EEC(&qword_27CC1BE90, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_219571D98(v10, boxed_opaque_existential_1, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      *(v12 + 16) = v17 + 1;
      sub_2186CB1F0(&v22, v12 + 40 * v17 + 32);
      sub_219571E00(v10, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_219571D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219571E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219571E80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_219571EEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219571F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_219571F9C()
{
  result = qword_27CC1BEA0;
  if (!qword_27CC1BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BEA0);
  }

  return result;
}

uint64_t sub_219571FF0(uint64_t a1, uint64_t a2)
{
  sub_219571E80(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219572080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219571E80(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_219572120(uint64_t a1)
{
  sub_219571E80(319, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_219572218()
{
  sub_219571E80(319, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes);
  if (v0 <= 0x3F)
  {
    sub_219571E80(319, &qword_27CC13328, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for HeroSelectionStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 9))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for HeroSelectionStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_2195723C8(void *a1, uint64_t a2, char a3)
{
  v13 = a2;
  sub_219573F58(0, &qword_280E8C5C0, sub_2195736A4, &type metadata for HeroSelectionStrategy.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195736A4();
  sub_219BF7B44();
  if (a3 < 0)
  {
    LOBYTE(v14) = 1;
    v16 = 0;
    sub_2195737F4();
    sub_219BF7834();
    if (!v3)
    {
      v14 = v13;
      v15 = a3 & 1;
      v16 = 1;
      sub_219573848();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = 0;
    sub_2195737F4();
    sub_219BF7834();
    if (!v3)
    {
      v14 = v13;
      v15 = a3 & 1;
      v16 = 1;
      sub_21957389C();
LABEL_6:
      sub_219BF7834();
    }
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21957260C@<X0>(char *a1@<X8>)
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

uint64_t sub_219572670(uint64_t a1)
{
  v2 = sub_2195736A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195726AC(uint64_t a1)
{
  v2 = sub_2195736A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2195726E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6465746F6D6F7270;
  }

  else
  {
    v3 = 0x6C616E6F73726570;
  }

  if (v2)
  {
    v4 = 0xEF6E6F6974617A69;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6465746F6D6F7270;
  }

  else
  {
    v5 = 0x6C616E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEF6E6F6974617A69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21957279C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21957282C()
{
  sub_219BF5524();
}

uint64_t sub_2195728A8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_219572940(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E6F73726570;
  if (*v1)
  {
    v2 = 0x6465746F6D6F7270;
  }

  v3 = 0xEF6E6F6974617A69;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_219572A3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21957341C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_219572A8C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 < 0)
  {
    if (v5 < 0)
    {
      return (v2 == v4) & (v5 ^ v3 ^ 1u);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = (*&v2 == *&v4) & (v5 ^ v3 ^ 1);
    if (v5 < 0)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }
}

uint64_t sub_219572AEC(uint64_t a1, char a2)
{
  if (a2 < 0)
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000014, 0x8000000219D26770);
    sub_219BF5CB4();
  }

  else
  {
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000022, 0x8000000219D267B0);
    v3 = sub_219BF7894();
    MEMORY[0x21CECC330](v3);
  }

  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219D26790);
  if (a2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v4, v5);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_219572C7C(void *a1)
{
  sub_219573F58(0, &qword_280E8C3F8, sub_219573CC8, &type metadata for HeroSelectionStrategyPromoted.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219573CC8();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF7814();
  if (!v1)
  {
    v9[14] = 1;
    sub_219BF7804();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219572E18()
{
  result = sub_219BF5CE4();
  qword_280F61A90 = v1;
  byte_280F61A98 = 0;
  return result;
}

uint64_t sub_219572E40()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x694C6F54656D6974;
  }
}

uint64_t sub_219572E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219D267E0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_219572F70(uint64_t a1)
{
  v2 = sub_219573CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219572FAC(uint64_t a1)
{
  v2 = sub_219573CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219572FE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219573AE4(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v4 & 1;
  }
}

uint64_t sub_21957303C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21957306C(void *a1, uint64_t a2, int a3)
{
  v12 = a3;
  sub_219573F58(0, &qword_280E8C258, sub_219573F04, &type metadata for HeroSelectionStrategyPersonalization.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219573F04();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF7824();
  if (!v3)
  {
    v13 = 1;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219573200()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_21957323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219D26800 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219D267E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_219573320(uint64_t a1)
{
  v2 = sub_219573F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21957335C(uint64_t a1)
{
  v2 = sub_219573F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219573398@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_219573D1C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_2195733EC(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 8) ^ *(a1 + 8) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21957341C(void *a1)
{
  sub_219573F58(0, &qword_280E8CE90, sub_2195736A4, &type metadata for HeroSelectionStrategy.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195736A4();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    v13 = 0;
    sub_2195736F8();
    sub_219BF7734();
    if (v11)
    {
      v13 = 1;
      sub_21957374C();
      sub_219BF7734();
      (*(v5 + 8))(v7, v4);
      v9 = v11;
    }

    else
    {
      v13 = 1;
      sub_2195737A0();
      sub_219BF76E4();
      if (v12 == 2)
      {
        v9 = 5;
      }

      else
      {
        v9 = v11;
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2195736A4()
{
  result = qword_280ECAE00;
  if (!qword_280ECAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECAE00);
  }

  return result;
}

unint64_t sub_2195736F8()
{
  result = qword_280ECADD8;
  if (!qword_280ECADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADD8);
  }

  return result;
}

unint64_t sub_21957374C()
{
  result = qword_280EB0600;
  if (!qword_280EB0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0600);
  }

  return result;
}

unint64_t sub_2195737A0()
{
  result = qword_280E9B628;
  if (!qword_280E9B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B628);
  }

  return result;
}

unint64_t sub_2195737F4()
{
  result = qword_280ECADE8;
  if (!qword_280ECADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADE8);
  }

  return result;
}

unint64_t sub_219573848()
{
  result = qword_280EB0608;
  if (!qword_280EB0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0608);
  }

  return result;
}

unint64_t sub_21957389C()
{
  result = qword_280E9B630;
  if (!qword_280E9B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B630);
  }

  return result;
}

unint64_t sub_219573934()
{
  result = qword_27CC1BEC8;
  if (!qword_27CC1BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BEC8);
  }

  return result;
}

unint64_t sub_21957398C()
{
  result = qword_27CC1BED0;
  if (!qword_27CC1BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BED0);
  }

  return result;
}

unint64_t sub_2195739E4()
{
  result = qword_280ECADF0;
  if (!qword_280ECADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADF0);
  }

  return result;
}

unint64_t sub_219573A3C()
{
  result = qword_280ECADF8;
  if (!qword_280ECADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADF8);
  }

  return result;
}

unint64_t sub_219573A90()
{
  result = qword_280ECADE0;
  if (!qword_280ECADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADE0);
  }

  return result;
}

double sub_219573AE4(void *a1)
{
  sub_219573F58(0, &qword_280E8CBA8, sub_219573CC8, &type metadata for HeroSelectionStrategyPromoted.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219573CC8();
  sub_219BF7B34();
  if (!v1)
  {
    v11[15] = 0;
    sub_219BF7714();
    v2 = v9;
    v11[14] = 1;
    sub_219BF76A4();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_219573CC8()
{
  result = qword_280EB0628[0];
  if (!qword_280EB0628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB0628);
  }

  return result;
}

uint64_t sub_219573D1C(void *a1)
{
  sub_219573F58(0, &qword_280E8C868, sub_219573F04, &type metadata for HeroSelectionStrategyPersonalization.CodingKeys, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219573F04();
  v9 = v8;
  sub_219BF7B34();
  if (!v1)
  {
    v16 = 0;
    sub_219BF7674();
    v10 = v13;
    v11 = v14;
    v15 = 1;
    sub_219BF7674();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v9 = 5;
    }

    else
    {
      v9 = v10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_219573F04()
{
  result = qword_280E9B648[0];
  if (!qword_280E9B648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9B648);
  }

  return result;
}

void sub_219573F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_219573FE4()
{
  result = qword_27CC1BED8;
  if (!qword_27CC1BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BED8);
  }

  return result;
}

unint64_t sub_21957403C()
{
  result = qword_27CC1BEE0;
  if (!qword_27CC1BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BEE0);
  }

  return result;
}

unint64_t sub_219574094()
{
  result = qword_280E9B638;
  if (!qword_280E9B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B638);
  }

  return result;
}

unint64_t sub_2195740EC()
{
  result = qword_280E9B640;
  if (!qword_280E9B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B640);
  }

  return result;
}

unint64_t sub_219574144()
{
  result = qword_280EB0618;
  if (!qword_280EB0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0618);
  }

  return result;
}

unint64_t sub_21957419C()
{
  result = qword_280EB0620;
  if (!qword_280EB0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB0620);
  }

  return result;
}

uint64_t sub_2195741F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219574240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219574290(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v56 = a8;
  v55 = a7;
  v53 = a5;
  v54 = a6;
  v50 = a4;
  v51 = a3;
  v52 = a1;
  v49 = sub_219BE6DF4();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195761E4(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v41 - v11;
  sub_218951DB0();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  sub_218D75F00();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v42 = v26;
  v28 = *(v26 + 16);
  v57 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28();
  (v28)(v23, a2, v25);
  v29 = *(v21 + 44);
  sub_2186EC0C8(&unk_280EE3610, sub_218951F54);
  v48 = a2;
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v23[v29] != v58[0])
  {
    v30 = v14;
    v31 = (v14 + 16);
    v32 = (v30 + 8);
    do
    {
      v33 = sub_219BF5EC4();
      (*v31)(v19);
      v33(v58, 0);
      sub_219BF5E94();
      sub_219574888(v19, v52, v56, v17);
      sub_219BEB234();
      v34 = *v32;
      (*v32)(v19, v13);
      v34(v17, v13);
      sub_219BF5E84();
    }

    while (*&v23[v29] != v58[0]);
  }

  sub_219576384(v23, sub_218D75F00);
  v36 = v46;
  v35 = v47;
  v37 = v49;
  (*(v47 + 104))(v46, *MEMORY[0x277D6D868], v49);
  type metadata accessor for MagazineFeedSectionDescriptor();
  type metadata accessor for MagazineFeedModel(0);
  sub_2186EC0C8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_2186EC0C8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
  sub_2186EC0C8(&unk_280EB0340, type metadata accessor for MagazineFeedSectionDescriptor);
  v38 = v43;
  v39 = v57;
  sub_219BE85E4();
  (*(v35 + 8))(v36, v37);
  v51(v38);
  (*(v44 + 8))(v38, v45);
  return (*(v42 + 8))(v39, v25);
}

uint64_t sub_219574888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, char *a4@<X8>)
{
  v125 = a3;
  v128 = a2;
  sub_218951DB0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191FD540();
  v146 = v11;
  v129 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v118 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v119 = &v104 - v15;
  MEMORY[0x28223BE20](v14);
  v132 = &v104 - v16;
  sub_218A12968(0);
  MEMORY[0x28223BE20](v17 - 8);
  v124 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF0BD4();
  v139 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v131 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BF07A4();
  v120 = *(v134 - 8);
  v20 = MEMORY[0x28223BE20](v134);
  v122 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v127 = &v104 - v22;
  sub_2186FACE4();
  v138 = v23;
  v117 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v137 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for MagazineFeedModel(0);
  v25 = MEMORY[0x28223BE20](v135);
  v121 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v136 = &v104 - v28;
  MEMORY[0x28223BE20](v27);
  v148 = &v104 - v29;
  sub_218953870();
  v140 = v30;
  v126 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v130 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v147 = &v104 - v34;
  MEMORY[0x28223BE20](v33);
  v144 = &v104 - v35;
  sub_2195762F0();
  v37 = v36;
  MEMORY[0x28223BE20](v36);
  v39 = &v104 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MagazineFeedSectionDescriptor();
  v41 = MEMORY[0x28223BE20](v40);
  v115 = &v104 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v104 - v43;
  sub_219BE6934();
  v133 = v44;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v46 = *(v8 + 16);
  if (EnumCaseMultiPayload == 8)
  {
    v145 = v10;
    v113 = v8;
    v114 = a4;
    v112 = v8 + 16;
    v111 = v46;
    v46(v39, a1, v7);
    v47 = *(v37 + 36);
    sub_2186EC0C8(&qword_280EE5938, sub_218951DB0);
    sub_219BF5DF4();
    sub_219BF5E84();
    v48 = *&v39[v47] == v151[0];
    v116 = a1;
    if (!v48)
    {
      v142 = (v126 + 32);
      v143 = (v126 + 16);
      v141 = (v126 + 8);
      v108 = (v117 + 16);
      v60 = v120 + 8;
      v107 = (v117 + 8);
      v105 = (v139 + 1);
      v139 = MEMORY[0x277D84F90];
      v61 = v140;
      v106 = v120 + 8;
      while (2)
      {
        v66 = sub_219BF5EC4();
        v67 = v144;
        v68 = *v143;
        (*v143)(v144);
        v66(v151, 0);
        sub_219BF5E94();
        (*v142)(v147, v67, v61);
        sub_219BE5FC4();
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            (*v141)(v147, v61);
            v79 = sub_219BF1584();
            (*(*(v79 - 8) + 8))(v148, v79);
            goto LABEL_13;
          case 2u:
          case 3u:
          case 5u:
          case 6u:
          case 7u:
          case 8u:
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0xCu:
            (*v141)(v147, v61);
            v64 = type metadata accessor for MagazineFeedModel;
            v65 = v148;
            goto LABEL_12;
          case 4u:
            (*v108)(v137, v148, v138);
            v69 = v127;
            sub_219BF07D4();
            v70 = sub_219BF06B4();
            v117 = *v60;
            (v117)(v69, v134);
            v71 = [v70 sourceChannel];

            v72 = [v71 identifier];
            swift_unknownObjectRelease();
            v120 = sub_219BF5414();
            v74 = v73;

            v75 = [*(v128 + 16) identifier];
            v76 = sub_219BF5414();
            v78 = v77;

            if (v120 == v76 && v74 == v78)
            {
            }

            else
            {
              v80 = sub_219BF78F4();

              if ((v80 & 1) == 0)
              {
                v102 = *v107;
                v103 = v138;
                (*v107)(v137, v138);
                v61 = v140;
                (*v141)(v147, v140);
                v102(v148, v103);
                goto LABEL_13;
              }
            }

            v81 = v122;
            sub_219BF07D4();
            v110 = sub_219BF06B4();
            (v117)(v81, v134);
            sub_219BF07F4();
            v82 = v151[1];
            v120 = v151[0];
            sub_219BF07E4();
            sub_219BF0804();
            if (v83)
            {
              v117 = v83;
            }

            else
            {
              v84 = v115;
              sub_219BE6934();
              sub_2193AF1CC();
              v117 = v85;
              sub_219576384(v84, type metadata accessor for MagazineFeedSectionDescriptor);
            }

            v109 = v82;
            v149 = v120;
            v150 = v82;
            v86 = sub_219BF0744();
            v87 = v124;
            (*(*(v86 - 8) + 56))(v124, 1, 1, v86);
            sub_2195763E4();
            v88 = v110;
            v89 = v131;
            sub_219BEE1A4();

            sub_219576384(v87, sub_218A12968);
            (*v105)(v89, v123);

            v90 = v136;
            swift_storeEnumTagMultiPayload();
            sub_21957649C(v90, v121, type metadata accessor for MagazineFeedModel);
            sub_2186EC0C8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
            v91 = v130;
            sub_219BE5FB4();
            v92 = *(v146 + 48);
            v93 = v132;
            v94 = v140;
            (v68)(v132, v147, v140);
            (v68)(v93 + v92, v91, v94);
            v95 = v139;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = sub_2191FAE4C(0, v95[2] + 1, 1, v95);
            }

            v97 = v95[2];
            v96 = v95[3];
            v139 = v95;
            v120 = (v97 + 1);
            if (v97 >= v96 >> 1)
            {
              v139 = sub_2191FAE4C(v96 > 1, v97 + 1, 1, v139);
            }

            v98 = *v141;
            (*v141)(v130, v94);
            sub_219576384(v136, type metadata accessor for MagazineFeedModel);
            v99 = *v107;
            v100 = v138;
            (*v107)(v137, v138);
            v98(v147, v140);
            v101 = v139;
            v139[2] = v120;
            sub_219576438(v132, v101 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v97);
            v99(v148, v100);
            v61 = v140;
            v60 = v106;
LABEL_13:
            sub_219BF5E84();
            if (*&v39[v47] != v151[0])
            {
              continue;
            }

            goto LABEL_5;
          default:
            (*v141)(v147, v61);
            v62 = v148;

            sub_2186F6F00();
            v64 = type metadata accessor for MagazineFeedGapLocation;
            v65 = v62 + *(v63 + 48);
LABEL_12:
            sub_219576384(v65, v64);
            goto LABEL_13;
        }
      }
    }

    v139 = MEMORY[0x277D84F90];
    v61 = v140;
LABEL_5:
    sub_219576384(v39, sub_2195762F0);
    v49 = v145;
    v111(v145, v116, v7);
    v50 = v139[2];
    if (v50)
    {
      v148 = *(v146 + 48);
      v51 = v139 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
      v147 = *(v129 + 72);
      v52 = (v126 + 32);
      v53 = v118;
      v54 = v61;
      v55 = v119;
      do
      {
        sub_21957649C(v51, v55, sub_2191FD540);
        v56 = v7;
        v57 = *(v146 + 48);
        v58 = *v52;
        (*v52)(v53, v55, v54);
        v58(v53 + v57, v55 + v148, v54);
        v49 = v145;
        v7 = v56;
        sub_219BE69E4();
        sub_219576384(v53, sub_2191FD540);
        v51 += v147;
        --v50;
      }

      while (v50);
    }

    (*(v113 + 32))(v114, v49, v7);
  }

  else
  {
    v46(a4, a1, v7);
  }

  return sub_219576384(v133, type metadata accessor for MagazineFeedSectionDescriptor);
}

unint64_t sub_2195758F4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if ((*v3 & 0x8000000000000000) != 0)
  {

    sub_219574290(v7 & 0x3FFFFFFFFFFFFFFFLL, a1, a2, a3, v7, v8, v9, v10);
  }

  else
  {
    sub_2189F5084(*v3);
    sub_219575AD4(a1, a2, a3, v7, v8, v9, v10);
  }

  return sub_2189F50B4(v7);
}

uint64_t sub_2195759B0(uint64_t a1)
{
  v2 = sub_218BB7A98();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2195759F0()
{
  result = qword_280EA6018;
  if (!qword_280EA6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6018);
  }

  return result;
}

uint64_t sub_219575AD4(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, void *a5, int a6, uint64_t a7)
{
  v62 = a4;
  v63 = a7;
  v65 = a5;
  v59 = a2;
  v60 = a3;
  v58 = a1;
  v64 = a6;
  v7 = ~a6;
  v8 = sub_219BE6DF4();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195761E4(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  sub_218951DB0();
  v16 = v15;
  v51 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v49 - v20;
  sub_218D75F00();
  v23 = v22;
  MEMORY[0x28223BE20](v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v27 = v26;
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v52 = v14;
    v53 = v12;
    v54 = v11;
    v31 = v64;
    if (v64)
    {
      v32 = v65;
      v34 = v52;
      v33 = v53;
      *v52 = v65;
      v35 = v54;
      (*(v33 + 104))(v34, *MEMORY[0x277D6DF68], v54);
      sub_218B88080(v32, 1);
      sub_218B88080(v32, 1);
      v59(v34);
      sub_2195762D8(v32, v31);
      return (*(v33 + 8))(v34, v35);
    }

    else
    {
      v50 = v28;
      v37 = *(v28 + 16);
      v61 = v30;
      v38 = v58;
      v37(v30, v58, v27);
      v37(v25, v38, v27);
      v39 = *(v23 + 36);
      sub_218B88080(v65, 0);
      sub_2186EC0C8(&unk_280EE3610, sub_218951F54);
      sub_219BF5DF4();
      sub_219BF5E84();
      if (*&v25[v39] != v66[0])
      {
        v40 = (v51 + 16);
        v41 = (v51 + 8);
        do
        {
          v42 = sub_219BF5EC4();
          (*v40)(v21);
          v42(v66, 0);
          sub_219BF5E94();
          sub_219574888(v21, v65, v63, v19);
          sub_219BEB234();
          v43 = *v41;
          (*v41)(v21, v16);
          v43(v19, v16);
          sub_219BF5E84();
        }

        while (*&v25[v39] != v66[0]);
      }

      sub_219576384(v25, sub_218D75F00);
      v45 = v55;
      v44 = v56;
      v46 = v57;
      (*(v56 + 104))(v55, *MEMORY[0x277D6D868], v57);
      type metadata accessor for MagazineFeedSectionDescriptor();
      type metadata accessor for MagazineFeedModel(0);
      sub_2186EC0C8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
      sub_2186EC0C8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
      sub_2186EC0C8(&unk_280EB0340, type metadata accessor for MagazineFeedSectionDescriptor);
      v47 = v52;
      v48 = v61;
      sub_219BE85E4();
      (*(v44 + 8))(v45, v46);
      v59(v47);
      sub_2195762D8(v65, v64);
      (*(v53 + 8))(v47, v54);
      return (*(v50 + 8))(v48, v27);
    }
  }

  else
  {
    (*(v12 + 104))(v14, *MEMORY[0x277D6DF80], v11);
    v59(v14);
    return (*(v12 + 8))(v14, v11);
  }
}

void sub_2195761E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor();
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EC0C8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    v8[3] = sub_2186EC0C8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2195762D8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_218BFF748(a1, a2 & 1);
  }
}

void sub_2195762F0()
{
  if (!qword_280E8D500)
  {
    sub_218951DB0();
    sub_2186EC0C8(&qword_280EE5938, sub_218951DB0);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D500);
    }
  }
}

uint64_t sub_219576384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2195763E4()
{
  result = qword_280ED5CF8;
  if (!qword_280ED5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED5CF8);
  }

  return result;
}

uint64_t sub_219576438(uint64_t a1, uint64_t a2)
{
  sub_2191FD540();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21957649C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219576520(void *a1)
{
  sub_21876FEB0(0, &qword_280E8C480, sub_219578FA8, &type metadata for SportsRecommendationManager.StoreRecommendation.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219578FA8();
  sub_219BF7B44();
  v11 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for SportsRecommendationManager.StoreRecommendation();
    v10 = 1;
    sub_219BDC1D4();
    sub_219578FFC(&qword_280EE9B88, 255, MEMORY[0x277D7E9F8]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21957670C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_219BDC1D4();
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876FEB0(0, &qword_280E8CC88, sub_219578FA8, &type metadata for SportsRecommendationManager.StoreRecommendation.CodingKeys, MEMORY[0x277D844C8]);
  v23 = v5;
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v8 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219578FA8();
  v11 = v24;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v13 = v21;
  v12 = v22;
  v26 = 0;
  *v10 = sub_219BF76F4();
  v10[1] = v14;
  v18[0] = v10;
  v18[1] = v14;
  v25 = 1;
  sub_219578FFC(&unk_280EE9B78, 255, MEMORY[0x277D7E9F8]);
  sub_219BF7734();
  (*(v13 + 8))(v7, v23);
  v15 = *(v8 + 20);
  v16 = v18[0];
  (*(v19 + 32))(v18[0] + v15, v4, v12);
  sub_219578DDC(v16, v20);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_219578E40(v16);
}

uint64_t sub_219576A60()
{
  if (*v0)
  {
    return 0x6F725065726F6373;
  }

  else
  {
    return 0x4449676174;
  }
}

uint64_t sub_219576AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449676174 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F725065726F6373 && a2 == 0xEC000000656C6966)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_219BF78F4();

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

uint64_t sub_219576B7C(uint64_t a1)
{
  v2 = sub_219578FA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219576BB8(uint64_t a1)
{
  v2 = sub_219578FA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219576C24@<X0>(uint64_t *a1@<X8>)
{
  sub_219BE2CF4();
  sub_21876FEB0(0, &unk_280EE5E30, sub_21876FF80, &type metadata for SportsRecommendationManager.StoreDescriptor, MEMORY[0x277D6C8E8]);
  swift_allocObject();
  result = sub_219BE5694();
  *a1 = result;
  return result;
}

uint64_t sub_219576CEC()
{
  sub_219BE4F14();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_219BE2F74();

  v1 = sub_219BE2E54();
  v2 = sub_219BE3054();

  return v2;
}

uint64_t sub_219576DD8()
{
  sub_2186DDED0(0, &qword_280EE6158, MEMORY[0x277D34B78], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_219BE4F14();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;

  sub_219BE2E84();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_219578C04(v3, &qword_280EE6158, MEMORY[0x277D34B78]);
    sub_219BE2CF4();
    sub_2186DDED0(0, &qword_280E8F0A0, type metadata accessor for SportsRecommendationManager.StoreRecommendation, MEMORY[0x277D83940]);
    sub_219578B38(&unk_280E8F088, &unk_280EB6AB0);
    sub_219578B38(&qword_280E8F098, &qword_280EB6AC0);
    sub_219BE56B4();

    v12 = v19;
    if (v19)
    {
      MEMORY[0x28223BE20](v11);
      *(&v18 - 2) = v0;
      *(&v18 - 1) = v12;
      sub_2186DDED0(0, &qword_280E8ED00, sub_2186D8870, MEMORY[0x277D83940]);
      sub_219BE3204();
      *(swift_allocObject() + 16) = v12;
      v13 = sub_219BE2E54();
      sub_219BE2F74();

      v14 = sub_219BE2E54();
      v15 = sub_219BE2F74();
    }

    else
    {
      sub_219578C74();
      swift_allocError();
      *v16 = 0;
      sub_2186DDED0(0, &qword_280EE6FF0, MEMORY[0x277D34B78], MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    (*(v5 + 16))(v8, v10, v4);
    sub_2186DDED0(0, &qword_280EE6FF0, MEMORY[0x277D34B78], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v15 = sub_219BE3014();
    (*(v5 + 8))(v10, v4);
  }

  return v15;
}

uint64_t sub_2195772EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BE2024();

  v4 = sub_219BE4F14();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_21957737C()
{
  sub_219BE4F14();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  v1 = sub_219BE2F74();

  return v1;
}

uint64_t sub_219577434(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218718690(a1 + 56, v24);
  v9 = v25;
  v10 = v26;
  v11 = __swift_project_boxed_opaque_existential_1(v24, v25);
  v12 = *(a2 + 16);
  if (v12)
  {
    v23[1] = v11;
    v23[2] = v10;
    v23[3] = v9;
    v23[4] = v2;
    v27 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v12, 0);
    v13 = v27;
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    do
    {
      sub_219578DDC(v14, v8);
      v17 = *v8;
      v16 = v8[1];

      sub_219578E40(v8);
      v27 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v19 + 1;
      v20 = v13 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v21 = sub_219BF1C34();

  __swift_destroy_boxed_opaque_existential_1(v24);
  return v21;
}

uint64_t sub_219577608@<X0>(unint64_t *a1@<X0>, uint64_t isUniquelyReferenced_nonNull_native@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v49 = sub_219BDC1D4();
  v43 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BE4F54();
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  v42 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = sub_2194AE5A0(MEMORY[0x277D84F90]);
  if (v9 >> 62)
  {
LABEL_41:
    v11 = sub_219BF7214();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = isUniquelyReferenced_nonNull_native;
  v55 = v8;
  if (v11)
  {
    v12 = 0;
    v53 = v9 & 0xFFFFFFFFFFFFFF8;
    v54 = v9 & 0xC000000000000001;
    v52 = v9;
    do
    {
      if (v54)
      {
        v15 = MEMORY[0x21CECE0F0](v12, v9);
        v16 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v12 >= *(v53 + 16))
        {
          goto LABEL_38;
        }

        v15 = *(v9 + 8 * v12 + 32);
        swift_unknownObjectRetain();
        v16 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      v56 = v16;
      v8 = v11;
      v17 = [v15 identifier];
      v18 = sub_219BF5414();
      v20 = v19;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v10;
      v22 = sub_21870F700(v18, v20);
      v23 = v10[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_39;
      }

      v9 = v21;
      if (v10[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v21)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_21949321C();
          if (v9)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_219482A24(v25, isUniquelyReferenced_nonNull_native);
        v26 = sub_21870F700(v18, v20);
        if ((v9 & 1) != (v27 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v22 = v26;
        if (v9)
        {
LABEL_5:

          v10 = v57;
          v13 = v57[7];
          isUniquelyReferenced_nonNull_native = *(v13 + 8 * v22);
          *(v13 + 8 * v22) = v15;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_6;
        }
      }

      v10 = v57;
      v57[(v22 >> 6) + 8] |= 1 << v22;
      v28 = (v10[6] + 16 * v22);
      *v28 = v18;
      v28[1] = v20;
      *(v10[7] + 8 * v22) = v15;
      swift_unknownObjectRelease();
      v29 = v10[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_40;
      }

      v10[2] = v31;
LABEL_6:
      ++v12;
      v11 = v8;
      v14 = v56 == v8;
      v8 = v55;
      v9 = v52;
    }

    while (!v14);
  }

  v32 = *(v44 + 16);
  if (v32)
  {
    v33 = v44 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v34 = *(v42 + 72);
    v35 = (v43 + 16);
    v36 = MEMORY[0x277D84F90];
    do
    {
      sub_219578DDC(v33, v8);
      if (v10[2] && (v37 = sub_21870F700(*v8, v8[1]), (v38 & 1) != 0) && [*(v10[7] + 8 * v37) asSports])
      {
        (*v35)(v48, v8 + *(v46 + 20), v49);
        sub_219BE4F34();
        sub_219578E40(v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_2191FAE80(0, v36[2] + 1, 1, v36);
        }

        v40 = v36[2];
        v39 = v36[3];
        if (v40 >= v39 >> 1)
        {
          v36 = sub_2191FAE80(v39 > 1, v40 + 1, 1, v36);
        }

        v36[2] = v40 + 1;
        (*(v50 + 32))(v36 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v40, v51, v47);
        v8 = v55;
      }

      else
      {
        sub_219578E40(v8);
      }

      v33 += v34;
      --v32;
    }

    while (v32);
  }

  return sub_219BE4EE4();
}

uint64_t sub_219577B90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = MEMORY[0x277D34B78];
  sub_2186DDED0(0, &qword_280EE6158, MEMORY[0x277D34B78], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = sub_219BE4F14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_219578A40(v9, v7);

  sub_219BE2E94();

  sub_219578C04(v9, &qword_280EE6158, v3);
  return (v12)(v15, a1, v10);
}

uint64_t sub_219577D48(uint64_t a1)
{
  v2 = v1;
  v53 = sub_219BE4F54();
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x277D83D88];
  sub_2186DDED0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v45 - v10;
  v12 = MEMORY[0x277D34B78];
  sub_2186DDED0(0, &qword_280EE6158, MEMORY[0x277D34B78], v8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v45 - v17;
  v19 = sub_219BE4F14();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v18, a1, v19);
  (*(v20 + 56))(v18, 0, 1, v19);
  sub_219578A40(v18, v16);

  sub_219BE2E94();

  sub_219578C04(v18, &qword_280EE6158, v12);
  v21 = *(v2 + 128);
  sub_219BE2CF4();
  v22 = v54;
  v23 = sub_219BE4EF4();
  v24 = *(v23 + 16);
  if (v24)
  {
    v45[1] = v22;
    v45[2] = v21;
    v46 = v11;
    v54 = MEMORY[0x277D84F90];
    sub_218C37C60(0, v24, 0);
    v25 = v54;
    v26 = v49 + 16;
    v27 = *(v49 + 16);
    v28 = *(v49 + 80);
    v45[0] = v23;
    v29 = v23 + ((v28 + 32) & ~v28);
    v48 = *(v49 + 72);
    v49 = v27;
    v47 = (v26 - 8);
    v30 = v26;
    do
    {
      v31 = v7;
      v33 = v52;
      v32 = v53;
      v34 = v30;
      (v49)(v52, v29, v53);
      v35 = [sub_219BE4F44() identifier];
      swift_unknownObjectRelease();
      v36 = sub_219BF5414();
      v38 = v37;

      sub_219BE4F24();
      v39 = v33;
      v7 = v31;
      (*v47)(v39, v32);
      *v31 = v36;
      v31[1] = v38;
      v54 = v25;
      v41 = *(v25 + 16);
      v40 = *(v25 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_218C37C60(v40 > 1, v41 + 1, 1);
        v25 = v54;
      }

      *(v25 + 16) = v41 + 1;
      sub_219578AD4(v31, v25 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41);
      v29 += v48;
      --v24;
      v30 = v34;
    }

    while (v24);

    v11 = v46;
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v54 = v25;
  sub_2186DDED0(0, &qword_280E8F0A0, type metadata accessor for SportsRecommendationManager.StoreRecommendation, MEMORY[0x277D83940]);
  sub_219578B38(&unk_280E8F088, &unk_280EB6AB0);
  sub_219578B38(&qword_280E8F098, &qword_280EB6AC0);
  sub_219BE56C4();

  sub_219BE2CF4();
  sub_219BDBD24();
  v42 = sub_219BDBD34();
  (*(*(v42 - 8) + 56))(v11, 0, 1, v42);
  v43 = MEMORY[0x277CC9578];
  sub_219578FFC(&unk_280EE9C70, 255, MEMORY[0x277CC9578]);
  sub_219578FFC(&qword_280EE9CA0, 255, v43);
  sub_219BE56C4();
}

uint64_t sub_2195783E0()
{
  sub_2186DDED0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18[-v1];
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BE1CC4();
  if (sub_219BE1CB4())
  {
    sub_219BDC4E4();
    sub_219BDC4D4();
    sub_219578FFC(&unk_280EB69F8, v7, type metadata accessor for SportsRecommendationManager);
    sub_219BDC7D4();

    if (v18[7] == 1)
    {
      sub_219BE4F14();
      sub_219BE3204();

      v8 = sub_219BE2E54();
      v9 = sub_219BE2F74();

      return v9;
    }
  }

  sub_219BE2CF4();
  v11 = MEMORY[0x277CC9578];
  sub_219578FFC(&unk_280EE9C70, 255, MEMORY[0x277CC9578]);
  sub_219578FFC(&qword_280EE9CA0, 255, v11);
  sub_219BE56B4();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_219578C04(v2, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_219BDBC64();
    v13 = fabs(v12);
    sub_219BF5CE4();
    if (v14 < v13)
    {
      sub_219BE4F14();
      sub_219BE3204();

      v15 = sub_219BE2E54();
      v16 = sub_219BE2F74();

      (*(v4 + 8))(v6, v3);
      return v16;
    }

    (*(v4 + 8))(v6, v3);
  }

  sub_219578C74();
  swift_allocError();
  *v17 = 1;
  sub_2186DDED0(0, &qword_280EE6FF0, MEMORY[0x277D34B78], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_2195788A8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsRecommendationManager.StoreRecommendation()
{
  result = qword_280EB6A78;
  if (!qword_280EB6A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219578A40(uint64_t a1, uint64_t a2)
{
  sub_2186DDED0(0, &qword_280EE6158, MEMORY[0x277D34B78], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219578AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219578B38(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186DDED0(255, &qword_280E8F0A0, type metadata accessor for SportsRecommendationManager.StoreRecommendation, MEMORY[0x277D83940]);
    sub_219578FFC(a2, 255, type metadata accessor for SportsRecommendationManager.StoreRecommendation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219578C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DDED0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_219578C74()
{
  result = qword_280EB6A08;
  if (!qword_280EB6A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6A08);
  }

  return result;
}

uint64_t sub_219578D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219577D48(a1);
  v4 = sub_219BE4F14();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_219578DDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219578E40(uint64_t a1)
{
  v2 = type metadata accessor for SportsRecommendationManager.StoreRecommendation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219578ED4()
{
  result = sub_219BDC1D4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_219578F54()
{
  result = qword_27CC1BEF0;
  if (!qword_27CC1BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BEF0);
  }

  return result;
}

unint64_t sub_219578FA8()
{
  result = qword_280EB6AE0;
  if (!qword_280EB6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6AE0);
  }

  return result;
}

uint64_t sub_219578FFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_219579058()
{
  result = qword_27CC1BF00;
  if (!qword_27CC1BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BF00);
  }

  return result;
}

unint64_t sub_2195790B0()
{
  result = qword_280EB6AC8;
  if (!qword_280EB6AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6AC8);
  }

  return result;
}

unint64_t sub_219579108()
{
  result = qword_280EB6AD0;
  if (!qword_280EB6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6AD0);
  }

  return result;
}

uint64_t sub_21957918C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2195791EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v33 = *v2;
  v6 = sub_219BED224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v9 = sub_219BF66A4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_219BED254();
  v12 = *(v7 + 8);
  v11 = v7 + 8;
  v12(v9, v6);
  if (v10)
  {
    v13 = sub_219579760(a1, a2);
    swift_beginAccess();
    v3[3] = v13;

    result = swift_beginAccess();
    v11 = v3[2];
    if (!(v11 >> 62))
    {
      v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_43:
    __break(1u);
  }

  result = sub_219BF7214();
  v15 = result;
LABEL_4:
  v29 = a1;
  if (v15)
  {
    if (v15 >= 1)
    {
      v28 = a2;
      v16 = v11 & 0xC000000000000001;

      a1 = 0;
      v32 = v11;
      v31 = v15;
      v30 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v16)
        {
          v17 = MEMORY[0x21CECE0F0](a1, v11);
        }

        else
        {
          v17 = *(v11 + 8 * a1 + 32);
        }

        if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
        {
          v37 = *(v17 + 24);
          v39[3] = v33;
          v39[4] = &off_282A79210;
          v39[0] = v3;
          v18 = v3[3];
          v19 = *(v18 + 16);
          if (v19)
          {
            sub_21957B290();
            v20 = swift_allocObject();
            v21 = _swift_stdlib_malloc_size_0(v20);
            v22 = v21 - 32;
            if (v21 < 32)
            {
              v22 = v21 - 17;
            }

            v20[2] = v19;
            v20[3] = 2 * (v22 >> 4);
            v36 = sub_2194AC128(v38, (v20 + 4), v19, v18);
            a2 = v38[0];
            v11 = v38[3];
            v34 = v38[4];
            v35 = v38[2];

            sub_21892DE98();
            if (v36 != v19)
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            v11 = v32;
            v15 = v31;
            v16 = v30;
          }

          else
          {

            v20 = MEMORY[0x277D84F90];
          }

          ObjectType = swift_getObjectType();
          (v37[1])(v39, v20, ObjectType);

          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v39);
        }

        else
        {
        }

        if (v15 == ++a1)
        {

          a2 = v28;
          a1 = v29;
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v24 = v3[2];
    v39[0] = MEMORY[0x277D84F90];
    if (v24 >> 62)
    {
      v25 = sub_219BF7214();
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      v37 = v3;
      v3 = a2;
      a2 = 0;
      v11 = v24 & 0xC000000000000001;
      a1 = v24 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v11)
        {
          MEMORY[0x21CECE0F0](a2, v24);
          v26 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            v27 = v39[0];
            a2 = v3;
            a1 = v29;
            v3 = v37;
            goto LABEL_38;
          }
        }

        else
        {
          if (a2 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_42;
          }

          v26 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_35;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++a2;
        if (v26 == v25)
        {
          goto LABEL_36;
        }
      }
    }

    v27 = MEMORY[0x277D84F90];
LABEL_38:

    v3[2] = v27;

    swift_getObjectType();
    if (qword_280EE3880 != -1)
    {
      swift_once();
    }

    v39[0] = a1;
    v39[1] = a2;

    sub_219BE7094();
  }

  return result;
}

id sub_219579760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 64);
  if (*(v6 + 16))
  {
    v7 = sub_21870F700(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 8 * v7);
      swift_endAccess();

      return v9;
    }
  }

  swift_endAccess();
  result = [*(v3 + 56) configuration];
  if (result)
  {
    v11 = [result puzzlesConfig];
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84FA0];
    sub_219686D3C(a1, a2, v11, &v15);
    v12 = v15;

    v9 = sub_2194B2070(&unk_282A225A8, v12);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 64);
    *(v3 + 64) = 0x8000000000000000;
    sub_21948C740(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 64) = v14;
    swift_endAccess();

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_2195798FC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = v2;
  v6 = sub_219BED224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v9 = sub_219BF66A4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_219BED254();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = type metadata accessor for DisposableFilterOptionsObserver();
  v9 = swift_allocObject();
  v9[3] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9[3] = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();

  MEMORY[0x21CECC690](v11);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_219BF5A14();
  }

  sub_219BF5A54();
  swift_endAccess();
  a2[3] = v6;
  result = sub_21957B238();
  a2[4] = result;
  *a2 = v9;
  return result;
}

uint64_t sub_219579B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a3;
  v44 = a2;
  v52 = *v3;
  v6 = sub_219BED224();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  LODWORD(v11) = *(a1 + 8);
  sub_2187D9028();
  *v9 = sub_219BF66A4();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(a1) = sub_219BED254();
  v13 = *(v7 + 8);
  v12 = v7 + 8;
  v13(v9, v6);
  if ((a1 & 1) == 0)
  {
    goto LABEL_78;
  }

  swift_beginAccess();
  result = sub_218C311F0(v10, v11, v3[3]);
  if (result)
  {
    return result;
  }

  v54 = v10;
  LOBYTE(v55) = v11;
  PuzzleArchiveFilterOption.groupType.getter(v58);
  if (LOBYTE(v58[0]) == 2)
  {
    goto LABEL_35;
  }

  if (v11)
  {
    v15 = v58[0] & 1;
LABEL_24:
    swift_beginAccess();
    v25 = v3[3];
    sub_219BF7AA4();
    MEMORY[0x21CECE850](0);
    MEMORY[0x21CECE850](v15);
    v26 = sub_219BF7AE4();
    v27 = -1 << *(v25 + 32);
    v6 = v26 & ~v27;
    if ((*(v25 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v28 = ~v27;
      do
      {
        v29 = *(v25 + 48) + 16 * v6;
        if (*(v29 + 8))
        {
          v30 = 0;
        }

        else
        {
          v30 = (*v29 & 1) == v15;
        }

        if (v30)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v3[3];
          v3[3] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_83;
          }

          goto LABEL_33;
        }

        v6 = (v6 + 1) & v28;
      }

      while (((*(v25 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

LABEL_34:
    swift_endAccess();
    goto LABEL_35;
  }

  v15 = v58[0] & 1;
  if ((v10 & 1) != v15)
  {
    goto LABEL_24;
  }

  v16 = v3[3];
  v17 = 1 << *(v16 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v6 = v18 & *(v16 + 56);
  swift_beginAccess();
  v12 = (v17 + 63) >> 6;

  v19 = 0;
  while (v6)
  {
LABEL_15:
    v21 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v22 = *(v16 + 48) + ((v19 << 10) | (16 * v21));
    v23 = *v22;
    v24 = *(v22 + 8);
    if ((v24 - 1) >= 3)
    {
      if (*(v22 + 8))
      {
        if (v23 >= 2 && !v15)
        {
LABEL_23:
          sub_218EB6634(v23, v24, v58);
        }
      }

      else if ((v23 & 1) == v15)
      {
        goto LABEL_23;
      }
    }

    else if (v15 == 1)
    {
      goto LABEL_23;
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_77;
    }

    if (v20 >= v12)
    {
      break;
    }

    v6 = *(v16 + 56 + 8 * v20);
    ++v19;
    if (v6)
    {
      v19 = v20;
      goto LABEL_15;
    }
  }

  swift_endAccess();

LABEL_35:
  swift_beginAccess();
  sub_219498C40(v58, v10, v11);
  swift_endAccess();
  swift_beginAccess();
  v12 = v4[2];
  if (v12 >> 62)
  {
    goto LABEL_79;
  }

  v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_37:
    if (v10 < 1)
    {
      __break(1u);
LABEL_83:
      sub_2194A6354();
LABEL_33:
      sub_218EB7C94(v6);
      v4[3] = v54;
      goto LABEL_34;
    }

    v32 = v12 & 0xC000000000000001;

    v33 = 0;
    v48 = v12;
    v47 = v10;
    v46 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v32)
      {
        v34 = MEMORY[0x21CECE0F0](v33, v12);
      }

      else
      {
        v34 = *(v12 + 8 * v33 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
      {
        v53 = *(v34 + 24);
        v56 = v52;
        v57 = &off_282A79210;
        v54 = v4;
        v35 = v4[3];
        v36 = *(v35 + 16);
        if (v36)
        {
          sub_21957B290();
          v6 = swift_allocObject();
          v37 = _swift_stdlib_malloc_size_0(v6);
          v38 = v37 - 32;
          if (v37 < 32)
          {
            v38 = v37 - 17;
          }

          *(v6 + 16) = v36;
          *(v6 + 24) = 2 * (v38 >> 4);
          v51 = sub_2194AC128(v58, v6 + 32, v36, v35);
          LOBYTE(v11) = v58[0];
          v12 = v58[3];
          v50 = v58[2];
          v49 = v58[4];

          sub_21892DE98();
          if (v51 != v36)
          {
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
LABEL_78:
            __break(1u);
LABEL_79:
            v10 = sub_219BF7214();
            if (!v10)
            {
              break;
            }

            goto LABEL_37;
          }

          v12 = v48;
          v10 = v47;
          v32 = v46;
        }

        else
        {

          v6 = MEMORY[0x277D84F90];
        }

        ObjectType = swift_getObjectType();
        (*(v53 + 8))(&v54, v6, ObjectType);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(&v54);
      }

      else
      {
      }

      if (v10 == ++v33)
      {

        break;
      }
    }
  }

  v40 = v4[2];
  v54 = MEMORY[0x277D84F90];
  if (v40 >> 62)
  {
    v41 = sub_219BF7214();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v41)
  {
    v11 = 0;
    v12 = v40 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        MEMORY[0x21CECE0F0](v11, v40);
        v42 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          v43 = v54;
          goto LABEL_70;
        }
      }

      else
      {
        if (v11 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_76;
        }

        v42 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_67;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_219BF73D4();
        v6 = *(v54 + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v11;
      if (v42 == v41)
      {
        goto LABEL_68;
      }
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_70:

  v4[2] = v43;

  swift_getObjectType();
  if (qword_280EE3880 != -1)
  {
    swift_once();
  }

  v54 = v44;
  v55 = v45;

  sub_219BE7094();
}

uint64_t sub_21957A2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v50 = a2;
  v57 = *v3;
  v7 = sub_219BED224();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v12 = *(a1 + 8);
  sub_2187D9028();
  *v10 = sub_219BF66A4();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  LOBYTE(a1) = sub_219BED254();
  v14 = *(v8 + 8);
  v13 = v8 + 8;
  v14(v10, v7);
  if (a1)
  {
    swift_beginAccess();
    result = sub_218C311F0(v11, v12, v3[3]);
    if ((result & 1) == 0)
    {
      return result;
    }

    swift_beginAccess();
    sub_218EB6634(v11, v12, v63);
    swift_endAccess();
    v59 = v11;
    LOBYTE(v60) = v12;
    PuzzleArchiveFilterOption.groupType.getter(v63);
    if (LOBYTE(v63[0]) != 2)
    {
      v16 = v63[0] & 1;
      if (sub_21957AAC4(v3, v63[0] & 1))
      {
        swift_beginAccess();
        v17 = v3[3];
        sub_219BF7AA4();
        MEMORY[0x21CECE850](0);
        MEMORY[0x21CECE850](v16);
        v18 = sub_219BF7AE4();
        v19 = -1 << *(v17 + 32);
        v20 = v18 & ~v19;
        if ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v21 = ~v19;
          while (1)
          {
            v22 = *(v17 + 48) + 16 * v20;
            if (!*(v22 + 8) && (*v22 & 1) == v16)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = v3[3];
          v25 = v64;
          v3[3] = 0x8000000000000000;
          if (*(v25 + 24) <= *(v25 + 16))
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              sub_21949D7E4();
            }

            else
            {
              sub_2194A80B8();
            }

            v25 = v64;
            sub_219BF7AA4();
            MEMORY[0x21CECE850](0);
            MEMORY[0x21CECE850](v16);
            v26 = sub_219BF7AE4();
            v27 = -1 << *(v25 + 32);
            v20 = v26 & ~v27;
            if ((*(v25 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
            {
              v28 = ~v27;
              do
              {
                v29 = *(v25 + 48) + 16 * v20;
                if (!*(v29 + 8) && (*v29 & 1) == v16)
                {
                  goto LABEL_75;
                }

                v20 = (v20 + 1) & v28;
              }

              while (((*(v25 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
            }
          }

          else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2194A6354();
            v25 = v64;
          }

          *(v25 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v20;
          v31 = *(v25 + 48) + 16 * v20;
          *v31 = v16;
          *(v31 + 8) = 0;
          v32 = *(v25 + 16);
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
LABEL_74:
            __break(1u);
LABEL_75:
            result = sub_219BF7994();
            __break(1u);
            return result;
          }

          *(v25 + 16) = v34;
          v3[3] = v25;
        }

        swift_endAccess();
      }
    }

    swift_beginAccess();
    v13 = v3[2];
    if (!(v13 >> 62))
    {
      v35 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_30:
        if (v35 >= 1)
        {
          v49 = a3;
          v36 = v13 & 0xC000000000000001;

          a3 = 0;
          v53 = v13;
          v52 = v35;
          v51 = v13 & 0xC000000000000001;
          while (1)
          {
            if (v36)
            {
              v37 = MEMORY[0x21CECE0F0](a3, v13);
            }

            else
            {
              v37 = *(v13 + 8 * a3 + 32);
            }

            if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
            {
              v58 = *(v37 + 24);
              v61 = v57;
              v62 = &off_282A79210;
              v59 = v4;
              v38 = v4[3];
              v39 = *(v38 + 16);
              if (v39)
              {
                sub_21957B290();
                v40 = swift_allocObject();
                v41 = _swift_stdlib_malloc_size_0(v40);
                v42 = v41 - 32;
                if (v41 < 32)
                {
                  v42 = v41 - 17;
                }

                v40[2] = v39;
                v40[3] = 2 * (v42 >> 4);
                v56 = sub_2194AC128(v63, (v40 + 4), v39, v38);
                v13 = v63[3];
                v55 = v63[2];
                v54 = v63[4];

                sub_21892DE98();
                if (v56 != v39)
                {
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }

                v13 = v53;
                v35 = v52;
                v36 = v51;
              }

              else
              {

                v40 = MEMORY[0x277D84F90];
              }

              ObjectType = swift_getObjectType();
              (v58[1])(&v59, v40, ObjectType);

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(&v59);
            }

            else
            {
            }

            if (v35 == ++a3)
            {

              a3 = v49;
              goto LABEL_47;
            }
          }
        }

        __break(1u);
        goto LABEL_74;
      }

      goto LABEL_47;
    }
  }

  else
  {
LABEL_69:
    __break(1u);
  }

  v35 = sub_219BF7214();
  if (v35)
  {
    goto LABEL_30;
  }

LABEL_47:
  v44 = v4[2];
  v59 = MEMORY[0x277D84F90];
  if (v44 >> 62)
  {
    v45 = sub_219BF7214();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v45)
  {
    v58 = v4;
    v4 = a3;
    v46 = 0;
    v13 = v44 & 0xC000000000000001;
    a3 = v44 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13)
      {
        MEMORY[0x21CECE0F0](v46, v44);
        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:
          v48 = v59;
          a3 = v4;
          v4 = v58;
          goto LABEL_63;
        }
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_68;
        }

        v47 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_60;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v46;
      if (v47 == v45)
      {
        goto LABEL_61;
      }
    }
  }

  v48 = MEMORY[0x277D84F90];
LABEL_63:

  v4[2] = v48;

  swift_getObjectType();
  if (qword_280EE3880 != -1)
  {
    swift_once();
  }

  v59 = v50;
  v60 = a3;

  sub_219BE7094();
}

uint64_t sub_21957AAC4(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  result = swift_beginAccess();
  v6 = 0;
  v7 = *(a1 + 24);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 & 1;
  while (v10)
  {
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(v7 + 48) + ((v6 << 10) | (16 * v14));
    v16 = *(v15 + 8);
    if ((v16 - 1) >= 3)
    {
      v18 = *v15;
      if (v16)
      {
        if (v18 >= 2)
        {
          v17 = 0;
          goto LABEL_11;
        }
      }

      else if (((v18 ^ v4) & 1) == 0 && (v18 & 1) != v12)
      {
        return 0;
      }
    }

    else
    {
      v17 = 1;
LABEL_11:
      if (v17 == v12)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      return 1;
    }

    v10 = *(v7 + 56 + 8 * v13);
    ++v6;
    if (v10)
    {
      v6 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21957ABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v36 = a3;
  v41 = *v5;
  v8 = sub_219BED224();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *a2;
  v15 = *(a2 + 8);
  sub_2187D9028();
  *v11 = sub_219BF66A4();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  LOBYTE(a2) = sub_219BED254();
  v17 = *(v9 + 8);
  v16 = v9 + 8;
  v17(v11, v8);
  if ((a2 & 1) == 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    result = sub_219BF7214();
    v21 = result;
    if (result)
    {
      goto LABEL_9;
    }

LABEL_26:
    v31 = v5[2];
    v47[0] = MEMORY[0x277D84F90];
    if (v31 >> 62)
    {
      v32 = sub_219BF7214();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v32)
    {
      v33 = 0;
      v16 = v31 & 0xC000000000000001;
      while (1)
      {
        if (v16)
        {
          MEMORY[0x21CECE0F0](v33, v31);
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            v35 = v47[0];
            goto LABEL_42;
          }
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_46;
          }

          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_39;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v33;
        if (v34 == v32)
        {
          goto LABEL_40;
        }
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_42:

    v5[2] = v35;

    swift_getObjectType();
    if (qword_280EE3880 != -1)
    {
      swift_once();
    }

    v47[0] = v36;
    v47[1] = v37;

    sub_219BE7094();
  }

  swift_beginAccess();
  v18 = sub_218C311F0(v12, v13, v5[3]);
  result = sub_218C311F0(v14, v15, v5[3]);
  v20 = result;
  if (v18)
  {
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    swift_beginAccess();
    sub_219498C40(v46, v12, v13);
    swift_endAccess();
    if ((v20 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  swift_beginAccess();
  sub_218EB6634(v14, v15, v46);
  swift_endAccess();
LABEL_7:
  result = swift_beginAccess();
  v16 = v5[2];
  if (v16 >> 62)
  {
    goto LABEL_48;
  }

  v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    goto LABEL_26;
  }

LABEL_9:
  if (v21 >= 1)
  {
    v22 = v16 & 0xC000000000000001;

    v23 = 0;
    v40 = v16;
    v39 = v21;
    v38 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v24 = MEMORY[0x21CECE0F0](v23, v16);
      }

      else
      {
        v24 = *(v16 + 8 * v23 + 32);
      }

      if (swift_unknownObjectWeakLoadStrong() && (swift_unknownObjectRelease(), swift_unknownObjectWeakLoadStrong()))
      {
        v45 = *(v24 + 24);
        v47[3] = v41;
        v47[4] = &off_282A79210;
        v47[0] = v5;
        v25 = v5[3];
        v26 = *(v25 + 16);
        if (v26)
        {
          sub_21957B290();
          v27 = swift_allocObject();
          v28 = _swift_stdlib_malloc_size_0(v27);
          v29 = v28 - 32;
          if (v28 < 32)
          {
            v29 = v28 - 17;
          }

          v27[2] = v26;
          v27[3] = 2 * (v29 >> 4);
          v44 = sub_2194AC128(v46, (v27 + 4), v26, v25);
          v16 = v46[3];
          v42 = v46[4];
          v43 = v46[2];

          sub_21892DE98();
          if (v44 != v26)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v16 = v40;
          v21 = v39;
          v22 = v38;
        }

        else
        {

          v27 = MEMORY[0x277D84F90];
        }

        ObjectType = swift_getObjectType();
        (*(v45 + 8))(v47, v27, ObjectType);

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_1(v47);
      }

      else
      {
      }

      if (v21 == ++v23)
      {

        goto LABEL_26;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21957B1D4()
{
  sub_218774F78(v0 + 16);
  sub_218774F78(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_21957B238()
{
  result = qword_27CC1BF08;
  if (!qword_27CC1BF08)
  {
    type metadata accessor for DisposableFilterOptionsObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BF08);
  }

  return result;
}

void sub_21957B290()
{
  if (!qword_280E8BA30[0])
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, qword_280E8BA30);
    }
  }
}

uint64_t sub_21957B2E0(void *a1, void *a2)
{
  result = [a1 level];
  if ((result - 5) < 3)
  {
    v11 = *a2;
    sub_219BF7AA4();
    MEMORY[0x21CECE850](0);
    MEMORY[0x21CECE850](1);
    result = sub_219BF7AE4();
    v12 = -1 << *(v11 + 32);
    v6 = result & ~v12;
    if (((*(v11 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
    {
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *a2;
      v10 = *a2;
      *a2 = 0x8000000000000000;
      if (v10[3] > v10[2])
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2194A6354();
          v10 = v30;
        }

        goto LABEL_33;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        sub_21949D7E4();
      }

      else
      {
        sub_2194A80B8();
      }

      v10 = v30;
      sub_219BF7AA4();
      MEMORY[0x21CECE850](0);
      MEMORY[0x21CECE850](1);
      v16 = sub_219BF7AE4();
      v17 = -1 << *(v30 + 32);
      v6 = v16 & ~v17;
      if (((*(v30 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
      {
        goto LABEL_33;
      }

      v18 = ~v17;
      while (1)
      {
        v19 = v30[6] + 16 * v6;
        if (!*(v19 + 8) && (*v19 & 1) != 0)
        {
          goto LABEL_32;
        }

        v6 = (v6 + 1) & v18;
        if (((*(v30 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    v13 = ~v12;
    while (1)
    {
      v14 = v11[6] + 16 * v6;
      if (!*(v14 + 8) && (*v14 & 1) != 0)
      {
        break;
      }

      v6 = (v6 + 1) & v13;
      if (((*(v11 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else if ((result - 2) <= 2)
  {
    v4 = *a2;
    sub_219BF7AA4();
    MEMORY[0x21CECE850](0);
    MEMORY[0x21CECE850](0);
    result = sub_219BF7AE4();
    v5 = -1 << *(v4 + 32);
    v6 = result & ~v5;
    if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6))
    {
      v7 = ~v5;
      while (1)
      {
        v8 = v4[6] + 16 * v6;
        if (!*(v8 + 8) && (*v8 & 1) == 0)
        {
          break;
        }

        v6 = (v6 + 1) & v7;
        if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      result = swift_isUniquelyReferenced_nonNull_native();
      v30 = *a2;
      v10 = *a2;
      *a2 = 0x8000000000000000;
      if (v10[3] <= v10[2])
      {
        if (!result)
        {
          goto LABEL_36;
        }

        sub_21949D7E4();
        while (1)
        {
          v10 = v30;
          sub_219BF7AA4();
          MEMORY[0x21CECE850](0);
          MEMORY[0x21CECE850](0);
          result = sub_219BF7AE4();
          v24 = -1 << *(v30 + 32);
          v6 = result & ~v24;
          if (((*(v30 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
          {
            break;
          }

          v25 = ~v24;
          while (1)
          {
            v26 = v30[6] + 16 * v6;
            if (!*(v26 + 8) && (*v26 & 1) == 0)
            {
              break;
            }

            v6 = (v6 + 1) & v25;
            if (((*(v30 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v6) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

LABEL_32:
          sub_219BF7994();
          __break(1u);
LABEL_33:
          *(v10 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
          v20 = v10[6] + 16 * v6;
          *v20 = 1;
          *(v20 + 8) = 0;
          v21 = v10[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (!v22)
          {
            goto LABEL_45;
          }

          __break(1u);
LABEL_36:
          sub_2194A80B8();
        }
      }

      else if ((result & 1) == 0)
      {
        result = sub_2194A6354();
        v10 = v30;
      }

LABEL_44:
      *(v10 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v6;
      v28 = v10[6] + 16 * v6;
      *v28 = 0;
      *(v28 + 8) = 0;
      v29 = v10[2];
      v22 = __OFADD__(v29, 1);
      v23 = v29 + 1;
      if (v22)
      {
        __break(1u);
      }

      else
      {
LABEL_45:
        v10[2] = v23;
        *a2 = v10;
      }
    }
  }

  return result;
}

uint64_t sub_21957B710(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = sub_219BE6134();

  v5 = a2();
  return v5;
}

uint64_t sub_21957B79C(uint64_t a1)
{
  if (*(*(a1 + *(type metadata accessor for SportsModel() + 20)) + 16))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_219BDB5E4();
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v2 = sub_219BE6134();

    v3 = sub_218EDB170();
  }

  v5 = v3;

  return v5;
}

uint64_t sub_21957B8C8(uint64_t a1)
{
  if (!*(*(a1 + *(type metadata accessor for SportsModel() + 20)) + 16))
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = sub_219BE6134();

    v4 = sub_218EDB43C();
    return v4;
  }

  return result;
}

double sub_21957B958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v4 = Strong;
  v5 = *(*(a2 + *(type metadata accessor for SportsModel() + 20)) + 16);
  v6 = sub_219BE6134();
  v7 = v6;
  if (!v5)
  {
    v8 = *(v6 + OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton);

    v7 = v8;
  }

  [v7 accessibilityFrame];

  sub_219BF6B44();
  v10 = v9;

  return v10;
}

uint64_t sub_21957BA58()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_219BE6134();
    v3 = sub_218EDB170();
    v5 = v4;

    if (v5)
    {
      v6 = sub_218840D24(0, 1, 1, MEMORY[0x277D84F90]);
      v8 = *(v6 + 2);
      v7 = *(v6 + 3);
      if (v8 >= v7 >> 1)
      {
        v6 = sub_218840D24((v7 > 1), v8 + 1, 1, v6);
      }

      *(v6 + 2) = v8 + 1;
      v9 = &v6[16 * v8];
      *(v9 + 4) = v3;
      *(v9 + 5) = v5;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    if ([v1 showsReorderControl])
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      v12 = sub_219BDB5E4();
      v14 = v13;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_218840D24(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v15 = *(v6 + 3);
      if (v16 >= v15 >> 1)
      {
        v6 = sub_218840D24((v15 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v16 + 1;
      v17 = &v6[16 * v16];
      *(v17 + 4) = v12;
      *(v17 + 5) = v14;
      goto LABEL_14;
    }

    if (*(v6 + 2))
    {
LABEL_14:
      sub_2186D0BA8();
      sub_2189DD328();
      v18 = sub_219BF5324();

      return v18;
    }

    return 0;
  }

  return result;
}

uint64_t sub_21957BCB8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_219BE6134();

    v3 = *&v2[OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton];
    [v3 accessibilityFrame];

    return sub_219BF6B44();
  }

  return result;
}

uint64_t type metadata accessor for RecipesSearchFeedGroup()
{
  result = qword_280EC7040;
  if (!qword_280EC7040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21957BDF4()
{
  sub_219BED8D4();
  if (v0 <= 0x3F)
  {
    sub_21879962C(319, &qword_280E8EB20, sub_218799788, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21879962C(319, &qword_280EC6990, sub_218B16F50, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21957BEF0(uint64_t a1)
{
  v2 = sub_21957BFE4(&qword_27CC1BF20);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21957BFE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RecipesSearchFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21957C050()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v4 += 4;
      v6 = v5;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_21957C0F8()
{
  v1 = *(v0 + 64);
  v2 = sub_2194AE6E8(MEMORY[0x277D84F90]);
  v30 = *(v1 + 16);
  if (!v30)
  {
    return v2;
  }

  v3 = 0;
  v4 = (v1 + 48);
  while (v3 < *(v1 + 16))
  {
    v8 = *v4;
    v9 = *(v4 - 2);
    v10 = v8;
    v11 = [v9 identifier];
    v12 = sub_219BF5414();
    v14 = v13;

    v15 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_21870F700(v12, v14);
    v19 = v2[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_18;
    }

    v23 = v18;
    if (v2[3] < v22)
    {
      sub_21947DE54(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_21870F700(v12, v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v28 = v17;
    sub_219490304();
    v17 = v28;
    if (v23)
    {
LABEL_3:
      v5 = v17;

      v6 = v2[7];
      v7 = *(v6 + 8 * v5);
      *(v6 + 8 * v5) = v15;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v2[6] + 16 * v17);
    *v25 = v12;
    v25[1] = v14;
    *(v2[7] + 8 * v17) = v15;

    v26 = v2[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v2[2] = v27;
LABEL_4:
    ++v3;
    v4 += 4;
    if (v30 == v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

void sub_21957C314(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {
    v5 = a1[8];
    v6 = a2[8];

    sub_218C0FAB8(v6, v5);
  }
}

uint64_t sub_21957C384(uint64_t a1)
{
  v2 = sub_21957C49C(&qword_280E9F630, type metadata accessor for RecommendedIssuesMagazineFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21957C49C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21957C52C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_219BEF554();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v84 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = v78 - v6;
  sub_21957DBD8();
  v86 = v7;
  v88 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5180(0, &qword_280E90908, MEMORY[0x277D332E8]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v89 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v78 - v12;
  sub_21957DD68(0, &qword_280E8C928, MEMORY[0x277D844C8]);
  v15 = v14;
  v92 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v78 - v16;
  v18 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  MEMORY[0x28223BE20](v18);
  v20 = (v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_219BDB5E4();
  v25 = v24;

  v20[2] = v23;
  v20[3] = v25;
  v93 = v25;
  v26 = a1[3];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_21957DC54();
  v27 = v94;
  sub_219BF7B34();
  if (v27)
  {
    __swift_destroy_boxed_opaque_existential_1(v95);

    return;
  }

  v28 = v92;
  v94 = v18;
  LOBYTE(v96) = 0;
  v29 = v15;
  v30 = v17;
  v31 = v20;
  *v20 = sub_219BF76F4();
  v20[1] = v32;
  LOBYTE(v96) = 4;
  v33 = sub_219BF7694();
  v81 = 0;
  v20[6] = v33;
  v20[7] = v34;
  v35 = sub_219BF1364();
  LOBYTE(v96) = 2;
  v36 = sub_21957C49C(&qword_280E90918, MEMORY[0x277D332E8]);
  v37 = v13;
  sub_219BF76E4();
  v82 = 0;
  v38 = v28;
  v78[1] = v36;
  v79 = v30;
  v80 = v29;
  v39 = *(v35 - 8);
  v40 = *(v39 + 48);
  v41 = v40(v37, 1, v35);
  v78[0] = v39;
  if (v41 == 1)
  {
    sub_2194F74D0(v37);
    v42 = 0;
  }

  else
  {
    v42 = sub_219BF1344();
    (*(v39 + 8))(v37, v35);
  }

  *(v31 + 32) = v42;
  LOBYTE(v96) = 3;
  v43 = v89;
  v44 = v79;
  v45 = v80;
  v46 = v82;
  sub_219BF76E4();
  v82 = v46;
  if (v46)
  {
    (*(v38 + 8))(v44, v45);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v52 = v38;
    if (v40(v43, 1, v35) == 1)
    {
      sub_2194F74D0(v43);
      v53 = 0;
    }

    else
    {
      v53 = sub_219BF1344();
      (*(v78[0] + 8))(v43, v35);
    }

    v54 = v80;
    v55 = v86;
    *(v31 + 40) = v53;
    LOBYTE(v96) = 5;
    sub_21957C49C(&qword_280EE6820, sub_21957DBD8);
    v56 = v87;
    v57 = v79;
    v58 = v82;
    sub_219BF7734();
    v82 = v58;
    v59 = v88;
    if (v58)
    {
      (*(v52 + 8))(v57, v54);
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v47 = 1;
    }

    else
    {
      sub_219BE3384();
      (*(v59 + 8))(v56, v55);
      *(v31 + 64) = v96;
      LOBYTE(v96) = 6;
      v60 = v82;
      v61 = sub_219BF7694();
      v82 = v60;
      if (v60)
      {
        (*(v52 + 8))(v57, v54);
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v47 = 1;
        v48 = 1;
      }

      else
      {
        *(v31 + 72) = v61;
        *(v31 + 80) = v62;
        LOBYTE(v96) = 7;
        sub_21957C49C(&unk_280E91390, MEMORY[0x277D32648]);
        v63 = v85;
        v64 = v91;
        v65 = v82;
        sub_219BF7734();
        v82 = v65;
        if (v65)
        {
          (*(v52 + 8))(v57, v54);
          v50 = 0;
          v51 = 0;
          v47 = 1;
          v48 = 1;
          v49 = 1;
        }

        else
        {
          v66 = v64;
          v67 = v54;
          v68 = v63;
          v69 = *(v90 + 32);
          v69(v31 + v94[11], v68, v66);
          LOBYTE(v96) = 8;
          v70 = v84;
          v71 = v82;
          sub_219BF7734();
          v82 = v71;
          if (v71)
          {
            (*(v52 + 8))(v57, v67);
            v51 = 0;
            v47 = 1;
            v48 = 1;
            v49 = 1;
            v50 = 1;
          }

          else
          {
            v69(v31 + v94[12], v70, v91);
            LOBYTE(v96) = 9;
            v72 = v82;
            sub_219BF7714();
            v82 = v72;
            if (!v72)
            {
              v77 = v73;
              (*(v52 + 8))(v57, v67);
              *(v31 + v94[13]) = v77;
              sub_21957DCA8(v31, v83);
              __swift_destroy_boxed_opaque_existential_1(v95);
              sub_21957DD0C(v31);
              return;
            }

            (*(v52 + 8))(v57, v67);
            v47 = 1;
            v48 = 1;
            v49 = 1;
            v50 = 1;
            v51 = 1;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v95);

  if (v47)
  {
  }

  if (v81)
  {
    if (v48)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (v48)
    {
LABEL_26:

      if ((v49 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }
  }

  if (!v49)
  {
LABEL_27:
    v74 = v94;
    if (v50)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

LABEL_32:

  v74 = v94;
  if (v50)
  {
LABEL_28:
    v75 = v91;
    v76 = *(v90 + 8);
    v76(v31 + v74[11], v91);
    if ((v51 & 1) == 0)
    {
      return;
    }

    goto LABEL_35;
  }

LABEL_33:
  if (!v51)
  {
    return;
  }

  v75 = v91;
  v76 = *(v90 + 8);
LABEL_35:
  v76(v31 + v74[12], v75);
}

uint64_t sub_21957CFE0(void *a1)
{
  v2 = v1;
  v50 = sub_219BE1EF4();
  v46 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21957DBD8();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5180(0, &qword_280E90908, MEMORY[0x277D332E8]);
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  sub_21957DD68(0, &qword_280E8C2B8, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v40 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21957DC54();
  sub_219BF7B44();
  LOBYTE(v53) = 0;
  v18 = v52;
  sub_219BF77F4();
  if (v18)
  {
    return (*(v15 + 8))(v17, v14);
  }

  v44 = v10;
  v52 = v15;
  v53 = *(v2 + 48);
  v54 = 4;
  sub_2186DEFE0(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v21 = v20;
  v22 = sub_21897A7C0();
  sub_219BF7834();
  v40[0] = v22;
  v40[1] = v21;
  v23 = *(v2 + 32);
  v42 = v14;
  v43 = v17;
  v41 = v2;
  if (v23)
  {
    v24 = v12;
    sub_219BF6D34();
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v24 = v12;
  }

  v26 = sub_219BF1364();
  v27 = *(*(v26 - 8) + 56);
  v27(v24, v25, 1, v26);
  LOBYTE(v53) = 2;
  sub_21957DDCC();
  sub_219BF7834();
  sub_2194F74D0(v24);
  if (*(v41 + 40))
  {
    v28 = v44;
    sub_219BF6D34();
    v29 = 0;
    v30 = v49;
  }

  else
  {
    v29 = 1;
    v30 = v49;
    v28 = v44;
  }

  v27(v28, v29, 1, v26);
  LOBYTE(v53) = 3;
  sub_219BF7834();
  v31 = v50;
  sub_2194F74D0(v28);
  v32 = v41;
  *&v53 = *(v41 + 64);
  v33 = qword_280EE7CB0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = __swift_project_value_buffer(v31, qword_280EE7CB8);
  (*(v46 + 16))(v30, v34, v31);
  swift_getKeyPath();
  sub_2186DEFE0(0, &unk_280E8F390, &type metadata for IssueModel, MEMORY[0x277D83940]);
  sub_21957DE90();
  v35 = v45;
  sub_219BE3464();
  LOBYTE(v53) = 5;
  sub_21957C49C(&qword_280EE6828, sub_21957DBD8);
  v36 = v42;
  v37 = v43;
  v38 = v48;
  sub_219BF7834();
  (*(v47 + 8))(v35, v38);
  v53 = *(v32 + 72);
  v54 = 6;
  sub_219BF7834();
  v39 = v52;
  type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  LOBYTE(v53) = 7;
  sub_219BEF554();
  sub_21957C49C(&qword_280E913A0, MEMORY[0x277D32648]);
  sub_219BF7834();
  LOBYTE(v53) = 8;
  sub_219BF7834();
  LOBYTE(v53) = 9;
  sub_219BF7814();
  return (*(v39 + 8))(v37, v36);
}

uint64_t sub_21957D76C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6973695664696170;
    v6 = 0xD000000000000016;
    if (a1 != 8)
    {
      v6 = 0x746C754D6B6E6172;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x736575737369;
    if (a1 != 5)
    {
      v7 = 0x6E656449646E696BLL;
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
    v1 = 0x696669746E656469;
    v2 = 0x74695470756F7267;
    v3 = 0xD000000000000018;
    if (a1 != 3)
    {
      v3 = 0x62755370756F7267;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x74695470756F7267;
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

uint64_t sub_21957D8F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_21957D76C(*a1);
  v5 = v4;
  if (v3 == sub_21957D76C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21957D978()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21957D76C(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21957D9DC()
{
  sub_21957D76C(*v0);
  sub_219BF5524();
}

uint64_t sub_21957DA30()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21957D76C(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21957DA90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21957E024();
  *a1 = result;
  return result;
}

uint64_t sub_21957DAC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21957D76C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21957DB08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21957E024();
  *a1 = result;
  return result;
}

uint64_t sub_21957DB30(uint64_t a1)
{
  v2 = sub_21957DC54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21957DB6C(uint64_t a1)
{
  v2 = sub_21957DC54();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21957DBD8()
{
  if (!qword_280EE6818)
  {
    sub_2186DEFE0(255, &unk_280E8F390, &type metadata for IssueModel, MEMORY[0x277D83940]);
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6818);
    }
  }
}

unint64_t sub_21957DC54()
{
  result = qword_280E9F648;
  if (!qword_280E9F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F648);
  }

  return result;
}

uint64_t sub_21957DCA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21957DD0C(uint64_t a1)
{
  v2 = type metadata accessor for RecommendedIssuesMagazineFeedGroup();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21957DD68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21957DC54();
    v7 = a3(a1, &type metadata for RecommendedIssuesMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21957DDCC()
{
  result = qword_280E908F8;
  if (!qword_280E908F8)
  {
    sub_2186E5180(255, &qword_280E90908, MEMORY[0x277D332E8]);
    sub_21957C49C(&unk_280E90928, MEMORY[0x277D332E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E908F8);
  }

  return result;
}

unint64_t sub_21957DE90()
{
  result = qword_280E8F388;
  if (!qword_280E8F388)
  {
    sub_2186DEFE0(255, &unk_280E8F390, &type metadata for IssueModel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F388);
  }

  return result;
}

unint64_t sub_21957DF20()
{
  result = qword_27CC1BF28;
  if (!qword_27CC1BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BF28);
  }

  return result;
}

unint64_t sub_21957DF78()
{
  result = qword_280E9F638;
  if (!qword_280E9F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F638);
  }

  return result;
}

unint64_t sub_21957DFD0()
{
  result = qword_280E9F640;
  if (!qword_280E9F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F640);
  }

  return result;
}

uint64_t sub_21957E024()
{
  v0 = sub_219BF7614();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21957E0B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    a4[3] = a2;
    result = a3();
    a4[4] = result;
    *a4 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21957E150@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CFDE4(0, &unk_280EE8B20);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for CookingKitExternalNavigationHandler();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      sub_2186CB1F0(&v8, v7 + 24);
      a2[3] = v6;
      result = sub_2187A5050(&qword_27CC1BF30, type metadata accessor for CookingKitExternalNavigationHandler);
      a2[4] = result;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21957E278()
{
  result = qword_27CC1BF40;
  if (!qword_27CC1BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BF40);
  }

  return result;
}

unint64_t sub_21957E2CC()
{
  result = qword_27CC1BF48;
  if (!qword_27CC1BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BF48);
  }

  return result;
}

uint64_t sub_21957E330()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21957E3F8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21957E4C0()
{
  v0 = sub_219BDBD64();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0);
  v36 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_219BE1544();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BE1524();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE9C04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF074();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v33 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  sub_219BE9934();
  v17 = (*(v8 + 88))(v10, v7);
  if (v17 == *MEMORY[0x277D6E830])
  {
    v18 = MEMORY[0x277D2D868];
LABEL_6:
    v19 = *v18;
    v32 = v12;
    v20 = *(v12 + 104);
    v28 = v16;
    v20(v16, v19, v11);
    v40 = *(v42 + 16);
    sub_219BE9924();
    v31 = *MEMORY[0x277D2F3A8];
    v30 = *(v3 + 104);
    v27[0] = v2;
    v30(v5);
    v41 = v11;
    v29 = *(v12 + 16);
    v21 = v33;
    v29(v33, v16, v11);
    v22 = v34;
    sub_219BE1514();
    v27[2] = "nagementTracker.swift";
    v27[1] = sub_21957FAC0(&qword_280EE7FE0, MEMORY[0x277D2F398]);
    v23 = v35;
    sub_219BDD1F4();
    v37 = *(v37 + 8);
    (v37)(v22, v23);
    v42 = *(v42 + 24);
    v24 = v36;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v38 + 8))(v24, v39);
    (v30)(v5, v31, v27[0]);
    v25 = v28;
    v29(v21, v28, v41);
    sub_219BE1514();
    sub_219BDD1F4();
    (v37)(v22, v23);
    sub_219BDD134();
    sub_219BDD134();
    return (*(v32 + 8))(v25, v41);
  }

  v18 = MEMORY[0x277D2D810];
  if (v17 == *MEMORY[0x277D6E840] || v17 == *MEMORY[0x277D6E848] || v17 == *MEMORY[0x277D6E838])
  {
    goto LABEL_6;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21957EAC8()
{
  sub_219BE17A4();
  sub_21957FAC0(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_218745A6C(v1, sub_21880702C);
}

uint64_t sub_21957EB74(uint64_t a1)
{
  sub_21957F9CC(0, &qword_27CC1BF50, MEMORY[0x277D6DA48]);
  v3 = v2;
  v21 = *(v2 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = type metadata accessor for SportsManagementModel();
  MEMORY[0x28223BE20](v7);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2189525B0();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v12 + 8))(v14, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_218745A6C(v9, type metadata accessor for SportsManagementModel);
  }

  v15 = *v9;
  if (*(v15 + 27) < 0)
  {
    v16 = v21;
    (*(v21 + 16))(v6, a1, v3);
    v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v18 = swift_allocObject();
    (*(v16 + 32))(v18 + v17, v6, v3);
    *(v18 + ((v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;

    sub_219BDD154();
  }
}

uint64_t sub_21957EE60(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v80 = a3;
  v87 = a1;
  v4 = sub_219BDBD34();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4);
  v77 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF1E4();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x28223BE20](v6);
  v74 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDFCE4();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x28223BE20](v8);
  v71 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE1444();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189525B0();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21957F9CC(0, &qword_27CC0AFB0, MEMORY[0x277D6EC60]);
  v18 = v17;
  v86 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v60 - v19;
  sub_218D1CD20();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21957F9CC(0, &qword_27CC0AF80, MEMORY[0x277D6D710]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v88 = v60 - v27;
  sub_21957F9CC(0, &qword_27CC1BF50, MEMORY[0x277D6DA48]);
  v29 = v28;
  sub_219BE7594();
  v84 = v29;
  v85 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v69 = *(v14 + 8);
  v70 = v13;
  v30 = v14 + 8;
  v31 = v18;
  v32 = v86;
  v68 = v30;
  v69(v16, v13);
  sub_219BEB244();
  v33 = v26;

  v34 = *(v32 + 8);
  v34(v20, v31);
  if ((*(v33 + 48))(v23, 1, v25) == 1)
  {
    return sub_218745A6C(v23, sub_218D1CD20);
  }

  v61 = v34;
  v64 = v33;
  v36 = *(v33 + 32);
  v86 = v25;
  v36(v88, v23, v25);
  v37 = [*(v80 + 16) identifier];
  sub_219BF5414();

  v38 = v81;
  sub_219BE1424();
  sub_2187F3258();
  v40 = v39;
  v41 = sub_219BDCD44();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = v43 + *(v42 + 72);
  v60[3] = *(v42 + 80);
  v62 = v40;
  v60[2] = v44;
  v45 = swift_allocObject();
  v65 = xmmword_219C09BA0;
  *(v45 + 16) = xmmword_219C09BA0;
  v46 = *MEMORY[0x277CEAD18];
  v48 = *(v42 + 104);
  v47 = v42 + 104;
  v80 = v43;
  v67 = v46;
  v63 = v41;
  v66 = v48;
  v48(v45 + v43);
  sub_21957FAC0(&unk_280EE8030, MEMORY[0x277D2F260]);
  v49 = v83;
  sub_219BDCCC4();

  (*(v82 + 8))(v38, v49);
  sub_219BE7594();
  sub_219BE7564();
  sub_21957FAC0(&qword_27CC1BF58, type metadata accessor for SportsManagementModel);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v50 = v71;
  sub_219BDFCD4();
  v69(v16, v70);
  v61(v20, v31);
  v60[1] = v47;
  v51 = swift_allocObject();
  *(v51 + 16) = v65;
  v52 = v63;
  v66(v51 + v80, v67, v63);
  sub_21957FAC0(&unk_280EE8590, MEMORY[0x277D2E058]);
  v53 = v73;
  sub_219BDCCC4();

  (*(v72 + 8))(v50, v53);
  sub_219BE6944();
  v54 = v74;
  sub_219BDF1C4();
  v55 = swift_allocObject();
  *(v55 + 16) = v65;
  v66(v55 + v80, v67, v52);
  sub_21957FAC0(&unk_280EE8840, MEMORY[0x277D2D970]);
  v56 = v76;
  sub_219BDCCC4();

  (*(v75 + 8))(v54, v56);
  sub_219BDFEC4();
  v57 = v77;
  sub_219BE75A4();
  sub_21957FAC0(&unk_280EE8520, MEMORY[0x277D2E1D0]);
  sub_219BDCC64();
  v58 = v79;
  v59 = *(v78 + 8);
  v59(v57, v79);
  sub_219BE7574();
  sub_219BDCC74();
  v59(v57, v58);
  return (*(v64 + 8))(v88, v86);
}

uint64_t sub_21957F914(uint64_t a1)
{
  sub_21957F9CC(0, &qword_27CC1BF50, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21957EE60(a1, v1 + v5, v6);
}

void sub_21957F9CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementSectionDescriptor();
    v8[1] = type metadata accessor for SportsManagementModel();
    v8[2] = sub_21957FAC0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    v8[3] = sub_21957FAC0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21957FAC0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21957FB2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
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

uint64_t sub_21957FB74(uint64_t result, int a2, int a3)
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
      *(result + 74) = 1;
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

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21957FBD8(void *a1)
{
  v3 = v1;
  sub_219580690(0, &qword_27CC1BF60, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958063C();
  sub_219BF7B44();
  LOBYTE(v11) = *v3;
  v12 = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_219BF77F4();
    v11 = *(v3 + 24);
    v12 = 2;
    sub_2186E3374();
    sub_21897A7C0();
    sub_219BF7834();
    v11 = *(v3 + 40);
    v12 = 3;
    sub_219BF7834();
    v11 = *(v3 + 56);
    v12 = 4;
    sub_219BF7834();
    LOBYTE(v11) = 5;
    sub_219BF7804();
    LOBYTE(v11) = 6;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21957FE68()
{
  sub_219BF5524();
}

uint64_t sub_21957FF98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21958080C();
  *a1 = result;
  return result;
}

void sub_21957FFC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE400000000000000;
    v9 = 0xEA0000000000656CLL;
    v10 = 0x74695470756F7267;
    if (v2 != 1)
    {
      v10 = 0x62755370756F7267;
      v9 = 0xED0000656C746974;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1701869940;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000219CD77A0;
    v4 = 0xD000000000000017;
    if (v2 == 5)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x8000000219CD7500;
    }

    v5 = 0xEF726F6C6F43656CLL;
    v6 = 0xD000000000000013;
    if (v2 == 3)
    {
      v6 = 0x74695470756F7267;
    }

    else
    {
      v5 = 0x8000000219CD83D0;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_2195800C4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x74695470756F7267;
    if (v1 != 1)
    {
      v5 = 0x62755370756F7267;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 1701869940;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000013;
    if (v1 == 3)
    {
      v3 = 0x74695470756F7267;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2195801B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21958080C();
  *a1 = result;
  return result;
}

uint64_t sub_2195801E0(uint64_t a1)
{
  v2 = sub_21958063C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21958021C(uint64_t a1)
{
  v2 = sub_21958063C();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_219580258@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result.n128_u64[0] = sub_2195802BC(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 58) = *(v7 + 10);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 sub_2195802BC@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_219580690(0, &qword_280E8C6E0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21958063C();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v28 = v7;
    LOBYTE(v32) = 1;
    sub_219BF7674();
    v11 = v35;
    v24 = v34;
    v31.n128_u8[0] = 2;
    sub_219BF7674();
    *&v12 = v32;
    v27 = v12;
    v26 = v33;
    LOBYTE(v29) = 3;
    sub_219BF7674();
    v25 = v31;
    v39 = 4;
    sub_219BF7674();
    v22 = v30;
    v23 = v29;
    v38 = 5;
    sub_219BF7674();
    v36 = v39;
    v37 = 6;
    sub_219BF7674();
    v13 = v38;
    if (v11)
    {
      v14 = v28;
      v15 = v24;
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass_];
      v15 = sub_219BDB5E4();
      v11 = v18;

      v14 = v28;
    }

    (*(v14 + 8))(v9, v6);
    v19 = v36 & 1;
    __swift_destroy_boxed_opaque_existential_1(a1);
    *a2 = 1;
    *(a2 + 8) = v15;
    *(a2 + 16) = v11;
    *&v20 = v27;
    *(&v20 + 1) = v26;
    result = v25;
    *(a2 + 40) = v25;
    *(a2 + 24) = v20;
    v21 = v22;
    *(a2 + 56) = v23;
    *(a2 + 64) = v21;
    *(a2 + 72) = v19;
    *(a2 + 73) = (v13 == 2) | v13 & 1;
  }

  return result;
}

unint64_t sub_21958063C()
{
  result = qword_280E94630;
  if (!qword_280E94630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94630);
  }

  return result;
}

void sub_219580690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21958063C();
    v7 = a3(a1, &type metadata for InlineCategoriesMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219580708()
{
  result = qword_27CC1BF68;
  if (!qword_27CC1BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BF68);
  }

  return result;
}

unint64_t sub_219580760()
{
  result = qword_280E94620;
  if (!qword_280E94620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94620);
  }

  return result;
}

unint64_t sub_2195807B8()
{
  result = qword_280E94628;
  if (!qword_280E94628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94628);
  }

  return result;
}

uint64_t sub_21958080C()
{
  v0 = sub_219BF7614();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t get_enum_tag_for_layout_string_7NewsUI225MagazineFeedReloadRequestO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_2195808B8()
{
  sub_219580E08();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC7NewsUI213WelcomeStatus__multicaster);
  sub_219BE1C24();
  *v6 = 0;
  sub_219580E58(0, &qword_280EE6500, MEMORY[0x277D85458]);
  v8 = *(v7 + 28);
  sub_219580E58(0, &qword_280EE64F8, MEMORY[0x277D85460]);
  bzero(&v6[v8], *(*(v9 - 8) + 64));
  (*(v3 + 32))(&v6[v8], v5, v2);
  if (qword_280EE9AD0 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_219580EB8();

  sub_219BDC7E4();

  if (qword_280EE9AB8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  sub_219BDC7E4();

  return v0;
}

uint64_t sub_219580B74()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (result + OBJC_IVAR____TtC7NewsUI213WelcomeStatus__multicaster);
    os_unfair_lock_lock((result + OBJC_IVAR____TtC7NewsUI213WelcomeStatus__multicaster));
    sub_219580E58(0, &qword_280EE6500, MEMORY[0x277D85458]);
    sub_219580F2C();
    sub_219580E08();
    sub_219BE1C14();
    os_unfair_lock_unlock(v1);
  }

  return result;
}

uint64_t sub_219580C38()
{
  v1 = v0 + OBJC_IVAR____TtC7NewsUI213WelcomeStatus__multicaster;
  sub_219580E58(0, &qword_280EE6500, MEMORY[0x277D85458]);
  v3 = *(v2 + 28);
  sub_219580E08();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WelcomeStatus()
{
  result = qword_280EDCDE8;
  if (!qword_280EDCDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219580D5C()
{
  sub_219580E58(319, &qword_280EE6500, MEMORY[0x277D85458]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_219580E08()
{
  if (!qword_280EE7E60)
  {
    v0 = sub_219BE1C34();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7E60);
    }
  }
}

void sub_219580E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_219580E08();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219580EB8()
{
  result = qword_280EDCDF8;
  if (!qword_280EDCDF8)
  {
    type metadata accessor for WelcomeStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDCDF8);
  }

  return result;
}

BOOL sub_219580F2C()
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9AB8 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  v0 = v2;
  if (v2 < 0)
  {
    sub_219BDC8B4();
    if (qword_280EE9AD0 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    v0 = v2;
  }

  return v0 < 5;
}

id sub_21958101C()
{
  sub_219581234();
  sub_219BE75E4();
  sub_218D56F34(v10, v13);
  sub_218D56F34(v13, &v14);
  v1 = v14;
  v2 = v15;
  v3 = v16;
  v11[8] = v25;
  v12[0] = v26[0];
  *(v12 + 9) = *(v26 + 9);
  v11[4] = v21;
  v11[5] = v22;
  v11[6] = v23;
  v11[7] = v24;
  v11[0] = v17;
  v11[1] = v18;
  v11[2] = v19;
  v11[3] = v20;
  sub_219581290();
  v4 = sub_219BF6434();
  __swift_project_boxed_opaque_existential_1((v0 + 32), *(v0 + 56));
  v5 = sub_219BE7314();
  sub_2195D5734(v1, *(&v1 + 1), v2, v3, v11, v5);

  v6 = objc_opt_self();
  v7 = v4;
  v8 = [v6 clearColor];
  [v7 setBackgroundColor_];

  return v7;
}

id sub_219581204@<X0>(void *a1@<X8>)
{
  result = sub_21958101C();
  *a1 = result;
  return result;
}

void sub_219581234()
{
  if (!qword_27CC0AE48)
  {
    sub_2189514C4();
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AE48);
    }
  }
}

void sub_219581290()
{
  if (!qword_280EE5218)
  {
    type metadata accessor for RecentSearchView();
    sub_2195812F4();
    v0 = sub_219BE7344();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5218);
    }
  }
}

unint64_t sub_2195812F4()
{
  result = qword_280ED80C8;
  if (!qword_280ED80C8)
  {
    type metadata accessor for RecentSearchView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED80C8);
  }

  return result;
}

id AnalyticsReferral.__allocating_init(userActivityType:creativeID:campaignID:campaignType:referringApplication:referringURL:widgetModeGroupID:widgetEngagement:appOpenedByUserActivity:appSessionStartMethod:appSessionStartNotificationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18)
{
  v25 = objc_allocWithZone(v18);
  v26 = &v25[OBJC_IVAR___TSAnalyticsReferral_userActivityType];
  *v26 = a1;
  v26[1] = a2;
  v27 = &v25[OBJC_IVAR___TSAnalyticsReferral_creativeID];
  *v27 = a3;
  v27[1] = a4;
  v28 = &v25[OBJC_IVAR___TSAnalyticsReferral_campaignID];
  *v28 = a5;
  v28[1] = a6;
  v29 = &v25[OBJC_IVAR___TSAnalyticsReferral_campaignType];
  *v29 = a7;
  v29[1] = a8;
  v30 = &v25[OBJC_IVAR___TSAnalyticsReferral_referringApplication];
  *v30 = a9;
  v30[1] = a10;
  v31 = &v25[OBJC_IVAR___TSAnalyticsReferral_referringURL];
  *v31 = a11;
  v31[1] = a12;
  v32 = &v25[OBJC_IVAR___TSAnalyticsReferral_widgetModeGroupID];
  *v32 = a13;
  v32[1] = a14;
  *&v25[OBJC_IVAR___TSAnalyticsReferral_widgetEngagement] = a15;
  v25[OBJC_IVAR___TSAnalyticsReferral_appOpenedByUserActivity] = a16;
  *&v25[OBJC_IVAR___TSAnalyticsReferral_appSessionStartMethod] = a17;
  *&v25[OBJC_IVAR___TSAnalyticsReferral_appSessionStartNotificationType] = a18;
  v37.receiver = v25;
  v37.super_class = v36;
  return objc_msgSendSuper2(&v37, sel_init);
}

uint64_t AnalyticsReferral.userActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_userActivityType);

  return v1;
}

uint64_t AnalyticsReferral.creativeID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_creativeID);

  return v1;
}

uint64_t AnalyticsReferral.campaignID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_campaignID);

  return v1;
}

uint64_t AnalyticsReferral.campaignType.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_campaignType);

  return v1;
}

uint64_t AnalyticsReferral.referringApplication.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_referringApplication);

  return v1;
}

uint64_t AnalyticsReferral.referringURL.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_referringURL);

  return v1;
}

uint64_t AnalyticsReferral.widgetModeGroupID.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_widgetModeGroupID);

  return v1;
}

void *AnalyticsReferral.widgetEngagement.getter()
{
  v1 = *(v0 + OBJC_IVAR___TSAnalyticsReferral_widgetEngagement);
  v2 = v1;
  return v1;
}

id AnalyticsReferral.init(userActivityType:creativeID:campaignID:campaignType:referringApplication:referringURL:widgetModeGroupID:widgetEngagement:appOpenedByUserActivity:appSessionStartMethod:appSessionStartNotificationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18)
{
  v19 = &v18[OBJC_IVAR___TSAnalyticsReferral_userActivityType];
  *v19 = a1;
  v19[1] = a2;
  v20 = &v18[OBJC_IVAR___TSAnalyticsReferral_creativeID];
  *v20 = a3;
  v20[1] = a4;
  v21 = &v18[OBJC_IVAR___TSAnalyticsReferral_campaignID];
  *v21 = a5;
  v21[1] = a6;
  v22 = &v18[OBJC_IVAR___TSAnalyticsReferral_campaignType];
  *v22 = a7;
  v22[1] = a8;
  v23 = &v18[OBJC_IVAR___TSAnalyticsReferral_referringApplication];
  *v23 = a9;
  v23[1] = a10;
  v24 = &v18[OBJC_IVAR___TSAnalyticsReferral_referringURL];
  *v24 = a11;
  v24[1] = a12;
  v25 = &v18[OBJC_IVAR___TSAnalyticsReferral_widgetModeGroupID];
  *v25 = a13;
  v25[1] = a14;
  *&v18[OBJC_IVAR___TSAnalyticsReferral_widgetEngagement] = a15;
  v18[OBJC_IVAR___TSAnalyticsReferral_appOpenedByUserActivity] = a16;
  *&v18[OBJC_IVAR___TSAnalyticsReferral_appSessionStartMethod] = a17;
  *&v18[OBJC_IVAR___TSAnalyticsReferral_appSessionStartNotificationType] = a18;
  v27.receiver = v18;
  v27.super_class = type metadata accessor for AnalyticsReferral();
  return objc_msgSendSuper2(&v27, sel_init);
}

id AnalyticsReferral.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsReferral.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReferral();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of AnalyticsReferral.__allocating_init(userActivityType:creativeID:campaignID:campaignType:referringApplication:referringURL:widgetModeGroupID:widgetEngagement:appOpenedByUserActivity:appSessionStartMethod:appSessionStartNotificationType:)()
{
  v2 = *(v0 + 168);

  return v2();
}

uint64_t sub_219581C44(uint64_t a1)
{
  sub_21875D3C8();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioFeedTrack(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (v33 - v12);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    (*(v4 + 16))(v6, a1, v3);
    if ((*(v4 + 88))(v6, v3) != *MEMORY[0x277D30130])
    {

      return (*(v4 + 8))(v6, v3);
    }

    (*(v4 + 96))(v6, v3);
    sub_218A6E5D0(0);
    v17 = *(v16 + 64);
    v18 = v6[*(v16 + 80)];
    sub_2195837C4(v6, v13, type metadata accessor for AudioFeedTrack);
    v19 = sub_219BDD9E4();
    (*(*(v19 - 8) + 8))(&v6[v17], v19);
    v20 = [*v13 articleID];
    if (v20)
    {
      v21 = v20;
      v22 = sub_219BF5414();
      v24 = v23;

      if (v18)
      {

        return sub_21875D7F0(v13, type metadata accessor for AudioFeedTrack);
      }

      if ((*(v13 + 25) & 2) != 0)
      {
        sub_219BDE994();
        v25 = [objc_opt_self() mainScreen];
        [v25 scale];

        sub_2187078D4(&unk_280EDCA20);
        sub_219BDE974();
        v26 = v15[9];
        v34 = v15[8];
        v35 = v26;
        v33[1] = __swift_project_boxed_opaque_existential_1(v15 + 5, v34);
        v27 = swift_allocObject();
        swift_weakInit();
        sub_21875D788(v13, v11, type metadata accessor for AudioFeedTrack);
        v28 = (*(v8 + 80) + 24) & ~*(v8 + 80);
        v29 = (v28 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
        v30 = (v28 + v9 + 31) & 0xFFFFFFFFFFFFFFF8;
        v31 = swift_allocObject();
        *(v31 + 16) = v27;
        sub_2195837C4(v11, v31 + v28, type metadata accessor for AudioFeedTrack);
        v32 = v31 + v29;
        *v32 = v22;
        *(v32 + 8) = v24;
        *(v32 + 16) = 1;
        *(v31 + v30) = vdupq_n_s64(0x4060000000000000uLL);

        sub_219BE6254();

        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      else
      {
      }
    }

    return sub_21875D7F0(v13, type metadata accessor for AudioFeedTrack);
  }

  return result;
}

uint64_t sub_2195820F4(uint64_t a1)
{
  sub_2187335C8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedTrack(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (v30 - v10);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    sub_21875D788(a1, v4, sub_2187335C8);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      v14 = sub_2187335C8;
      v15 = v4;
    }

    else
    {
      sub_2195837C4(v4, v11, type metadata accessor for AudioFeedTrack);
      v16 = [*v11 articleID];
      if (v16)
      {
        v17 = v16;
        v18 = sub_219BF5414();
        v20 = v19;

        if ((*(v11 + 25) & 2) != 0)
        {
          sub_219BDE994();
          v21 = [objc_opt_self() mainScreen];
          v31 = v18;
          v22 = v21;
          [v21 scale];

          sub_2187078D4(&unk_280EDCA20);
          sub_219BDE974();
          v23 = v13[8];
          v30[2] = v13[9];
          v30[1] = __swift_project_boxed_opaque_existential_1(v13 + 5, v23);
          v24 = swift_allocObject();
          swift_weakInit();
          sub_21875D788(v11, v9, type metadata accessor for AudioFeedTrack);
          v25 = (*(v6 + 80) + 24) & ~*(v6 + 80);
          v26 = (v25 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
          v27 = (v25 + v7 + 31) & 0xFFFFFFFFFFFFFFF8;
          v28 = swift_allocObject();
          *(v28 + 16) = v24;
          sub_2195837C4(v9, v28 + v25, type metadata accessor for AudioFeedTrack);
          v29 = v28 + v26;
          *v29 = v31;
          *(v29 + 8) = v20;
          *(v29 + 16) = 0;
          *(v28 + v27) = vdupq_n_s64(0x4060000000000000uLL);

          sub_219BE6254();

          __swift_destroy_boxed_opaque_existential_1(v32);
        }

        else
        {
        }
      }

      v14 = type metadata accessor for AudioFeedTrack;
      v15 = v11;
    }

    return sub_21875D7F0(v15, v14);
  }

  return result;
}

uint64_t sub_2195824F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = type metadata accessor for AudioFeedTrack(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v49 = a7;
    v48 = a5;
    if (a1)
    {
      v19 = a1;
      v20 = UIImagePNGRepresentation(v19);
      if (v20)
      {
        v21 = v14;
        v22 = v20;
        v23 = sub_219BDBA04();
        v25 = v24;

        sub_21875D788(a4, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
        v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
        v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        *(v28 + 16) = v18;
        sub_2195837C4(v16, v28 + v26, type metadata accessor for AudioFeedTrack);
        v29 = (v28 + v27);
        *v29 = v48;
        v29[1] = a6;
        v30 = v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v30 = v23;
        *(v30 + 8) = v25;
        *(v30 + 16) = v49 & 1;

        sub_218B87528(v23, v25);
        sub_219BE3494();

        sub_2186C6190(v23, v25);
      }
    }

    v46 = v14;
    sub_2186C6148(0, &qword_280E8D790);
    v31 = sub_219BF6F74();
    sub_219BF61F4();
    sub_21875D490(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_219C09BA0;
    v50 = 0;
    v51 = 0xE000000000000000;
    v47 = a4;
    if (a2)
    {
      swift_getErrorValue();
      v33 = sub_219BF7A04();
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v52 = v33;
    v53 = v34;
    v35 = MEMORY[0x277D837D0];
    sub_219583830(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v36 = sub_219BF5484();
    MEMORY[0x21CECC330](v36);

    v37 = v50;
    v38 = v51;
    *(v32 + 56) = v35;
    *(v32 + 64) = sub_2186FC3BC();
    *(v32 + 32) = v37;
    *(v32 + 40) = v38;
    sub_219BE5314();

    sub_219BDE994();
    v39 = [objc_opt_self() mainScreen];
    [v39 scale];

    sub_219BDE984();
    __swift_project_boxed_opaque_existential_1((v18 + 40), *(v18 + 64));
    v40 = swift_allocObject();
    swift_weakInit();
    sub_21875D788(v47, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedTrack);
    v41 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v42 = (v15 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    sub_2195837C4(v16, v43 + v41, type metadata accessor for AudioFeedTrack);
    v44 = v43 + v42;
    *v44 = v48;
    *(v44 + 8) = a6;
    *(v44 + 16) = v49 & 1;

    sub_219BE6254();

    __swift_destroy_boxed_opaque_existential_1(&v50);
  }

  return result;
}

uint64_t sub_219582A14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = type metadata accessor for AudioFeedTrack(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    if (a1)
    {
      v39 = a5;
      v18 = a1;
      v19 = UIImagePNGRepresentation(v18);
      if (v19)
      {
        v20 = v19;
        v21 = sub_219BDBA04();
        v38 = a7;
        v23 = v22;

        sub_21875D788(a4, &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AudioFeedTrack);
        v24 = (*(v14 + 80) + 24) & ~*(v14 + 80);
        v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
        v26 = swift_allocObject();
        *(v26 + 16) = v17;
        sub_2195837C4(&v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v26 + v24, type metadata accessor for AudioFeedTrack);
        v27 = (v26 + v25);
        *v27 = v39;
        v27[1] = a6;
        v28 = v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v28 = v21;
        *(v28 + 8) = v23;
        *(v28 + 16) = v38 & 1;

        sub_218B87528(v21, v23);
        sub_219BE3494();

        sub_2186C6190(v21, v23);
      }
    }

    sub_2186C6148(0, &qword_280E8D790);
    v29 = sub_219BF6F74();
    sub_219BF61F4();
    sub_21875D490(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09BA0;
    v42 = 0;
    v43 = 0xE000000000000000;
    if (a2)
    {
      swift_getErrorValue();
      v31 = sub_219BF7A04();
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v40 = v31;
    v41 = v32;
    v33 = MEMORY[0x277D837D0];
    sub_219583830(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v34 = sub_219BF5484();
    MEMORY[0x21CECC330](v34);

    v35 = v42;
    v36 = v43;
    *(v30 + 56) = v33;
    *(v30 + 64) = sub_2186FC3BC();
    *(v30 + 32) = v35;
    *(v30 + 40) = v36;
    sub_219BE5314();
  }

  return result;
}

uint64_t sub_219582D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_21875D45C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21875D788(a2, v13, type metadata accessor for AudioFeedTrack);

  v14 = sub_219BDB9E4();
  v15 = [objc_opt_self() imageWithImageData_];

  v16 = type metadata accessor for AudioIntentsData();
  v17 = &v13[v16[5]];
  *v17 = a3;
  *(v17 + 1) = a4;
  *&v13[v16[6]] = v15;
  v13[v16[7]] = a7;
  (*(*(v16 - 1) + 56))(v13, 0, 1, v16);
  sub_219BE20C4();
  return sub_21875D7F0(v13, sub_21875D45C);
}
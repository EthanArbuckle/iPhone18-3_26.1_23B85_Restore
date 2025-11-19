uint64_t sub_218997804()
{
  sub_2187733B4(&qword_280EDB790, type metadata accessor for TodayFeedGroup);

  return sub_219BF1174();
}

uint64_t sub_218997888(uint64_t a1)
{
  v2 = sub_2187733B4(&qword_280EDB790, type metadata accessor for TodayFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2189978F8()
{
  v1 = v0;
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED544();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v1, v16);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x657061707377654ELL;
    case 2u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x654E206C61636F4CLL;
    case 3u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x676E69646E657254;
    case 4u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x756F5920726F46;
    case 5u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      v22 = 0x64657373694DLL;
      return v22 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
    case 6u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      v22 = 0x74736574614CLL;
      return v22 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
    case 7u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x726F462065726F4DLL;
    case 8u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6369706F54;
    case 9u:
      sub_2187C58F8(v16, v10, type metadata accessor for MagazineFeedGroup);
      v17 = sub_218CDD694();
      v18 = type metadata accessor for MagazineFeedGroup;
      v19 = v10;
      goto LABEL_9;
    case 0xAu:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6C6C6F462077654ELL;
    case 0xBu:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x7069726373627553;
    case 0xCu:
      v21 = v27;
      (*(v27 + 32))(v7, v16, v5);
      v17 = sub_219BED524();
      (*(v21 + 8))(v7, v5);
      return v17;
    case 0xDu:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6867696C746F7053;
    case 0xEu:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6974736567677553;
    case 0xFu:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0xD000000000000011;
    case 0x10u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6957646572616853;
    case 0x11u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x656D656761676E45;
    case 0x12u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x74726F705320794DLL;
    case 0x13u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6F54206F72746E49;
    case 0x14u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x74756374726F6853;
    case 0x15u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6C656E6E616843;
    case 0x16u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 0x6F74536465766153;
    case 0x17u:
      sub_2187C58F8(v16, v4, type metadata accessor for ChannelPickerTodayFeedGroup);
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_219BF7314();

      v23 = &v4[*(v2 + 20)];
      v24 = v23[1];
      v28 = *v23;
      v29 = v24;

      MEMORY[0x21CECC330](0x6C656E6E61684320, 0xEE0072656B636950);
      v25 = v28;
      sub_2187C8338(v4, type metadata accessor for ChannelPickerTodayFeedGroup);
      return v25;
    case 0x18u:
      sub_2187C8338(v16, type metadata accessor for TodayFeedGroup);
      return 1685024582;
    default:
      sub_2187C58F8(v16, v13, type metadata accessor for CuratedTodayFeedGroup);
      v28 = 0x2064657461727543;
      v29 = 0xE900000000000028;
      MEMORY[0x21CECC330](*&v13[*(v11 + 20)], *&v13[*(v11 + 20) + 8]);
      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v17 = v28;
      v18 = type metadata accessor for CuratedTodayFeedGroup;
      v19 = v13;
LABEL_9:
      sub_2187C8338(v19, v18);
      return v17;
  }
}

uint64_t sub_218998180()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v94 = &v71 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v2 - 8);
  v93 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v6 - 8);
  v91 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v89 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v87);
  v86 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v84 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BED544();
  v82 = *(v19 - 8);
  v83 = v19;
  MEMORY[0x28223BE20](v19);
  v80 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF1904();
  v78 = *(v21 - 8);
  v79 = v21;
  MEMORY[0x28223BE20](v21);
  v77 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v81 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v25 - 8);
  v76 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v27 - 8);
  v75 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v74 = &v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v31 - 8);
  v73 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v33 - 8);
  v72 = &v71 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v44);
  v46 = &v71 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v47);
  v49 = &v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v71 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v53);
  v55 = &v71 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v95, v55);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v55, v49, type metadata accessor for NewspaperTodayFeedGroup);
      v67 = [*&v49[*(v47 + 20)] name];
      v56 = sub_219BF5414();

      v61 = type metadata accessor for NewspaperTodayFeedGroup;
      v62 = v49;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v55, v46, type metadata accessor for LocalNewsTodayFeedGroup);
      v66 = [*&v46[*(v44 + 20)] name];
      v56 = sub_219BF5414();

      v61 = type metadata accessor for LocalNewsTodayFeedGroup;
      v62 = v46;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v55, v43, type metadata accessor for TrendingTodayFeedGroup);
      v56 = sub_219BED774();
      v61 = type metadata accessor for TrendingTodayFeedGroup;
      v62 = v43;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v55, v40, type metadata accessor for ForYouTodayFeedGroup);
      v56 = sub_219BED774();
      v61 = type metadata accessor for ForYouTodayFeedGroup;
      v62 = v40;
      goto LABEL_28;
    case 5u:
      sub_2187C58F8(v55, v37, type metadata accessor for MissedStoriesTodayFeedGroup);
      v56 = sub_219BED774();
      v69 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_32;
    case 6u:
      v52 = v72;
      sub_2187C58F8(v55, v72, type metadata accessor for LatestStoriesTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_27;
    case 7u:
      v52 = v73;
      sub_2187C58F8(v55, v73, type metadata accessor for MoreForYouTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_27;
    case 8u:
      v52 = v74;
      sub_2187C58F8(v55, v74, type metadata accessor for TopicTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v52 = v75;
      sub_2187C58F8(v55, v75, type metadata accessor for MagazineFeedGroup);
      v56 = sub_218CDD908();
      v57 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v52 = v76;
      sub_2187C58F8(v55, v76, type metadata accessor for NewFollowTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v37 = v81;
      sub_2187C58F8(v55, v81, type metadata accessor for SubscriptionTodayFeedGroup);
      v58 = v77;
      sub_219BED874();
      v59 = sub_219BF1844();
      (*(v78 + 8))(v58, v79);
      if (v59)
      {
        v60 = [v59 name];
        swift_unknownObjectRelease();
        v56 = sub_219BF5414();
      }

      else
      {
        v56 = 0;
      }

      v69 = type metadata accessor for SubscriptionTodayFeedGroup;
LABEL_32:
      v61 = v69;
      v62 = v37;
      goto LABEL_28;
    case 0xCu:
      v64 = v82;
      v63 = v83;
      v65 = v80;
      (*(v82 + 32))(v80, v55, v83);
      v56 = sub_219BED4A4();
      (*(v64 + 8))(v65, v63);
      return v56;
    case 0xDu:
      v52 = v84;
      sub_2187C58F8(v55, v84, type metadata accessor for SpotlightTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v52 = v85;
      sub_2187C58F8(v55, v85, type metadata accessor for SuggestionTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
    case 0x11u:
      sub_2187C8338(v55, type metadata accessor for TodayFeedGroup);
      return 0;
    case 0x10u:
      v68 = v86;
      sub_2187C58F8(v55, v86, type metadata accessor for SharedWithYouTodayFeedGroup);
      v56 = sub_219BED774();
      v61 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v62 = v68;
      goto LABEL_28;
    case 0x12u:
      v52 = v88;
      sub_2187C58F8(v55, v88, type metadata accessor for MySportsTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v52 = v89;
      sub_2187C58F8(v55, v89, type metadata accessor for IntroToSportsTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v52 = v90;
      sub_2187C58F8(v55, v90, type metadata accessor for ShortcutsTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v52 = v91;
      sub_2187C58F8(v55, v91, type metadata accessor for ChannelTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v52 = v92;
      sub_2187C58F8(v55, v92, type metadata accessor for SavedStoriesTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v52 = v93;
      sub_2187C58F8(v55, v93, type metadata accessor for ChannelPickerTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v52 = v94;
      sub_2187C58F8(v55, v94, type metadata accessor for FoodTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v55, v52, type metadata accessor for CuratedTodayFeedGroup);
      v56 = sub_219BED774();
      v57 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v61 = v57;
      v62 = v52;
LABEL_28:
      sub_2187C8338(v62, v61);
      return v56;
  }
}

uint64_t sub_2189990D4()
{
  v0 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v0 - 8);
  v87 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v86);
  v85 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v84);
  v83 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v82);
  v81 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v80);
  v79 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v78);
  v77 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v75);
  v74 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v73);
  v72 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v71);
  v70 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v69);
  v68 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v67);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BED544();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v62);
  v61 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v17 - 8);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v57);
  v56 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v55);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v21 - 8);
  v53 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v32);
  v34 = &v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v35);
  v37 = &v52 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v52 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v41);
  v43 = &v52 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v88, v43);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2187C58F8(v43, v37, type metadata accessor for NewspaperTodayFeedGroup);
      sub_2187733B4(&unk_280EC44E0, type metadata accessor for NewspaperTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v46 = type metadata accessor for NewspaperTodayFeedGroup;
      v47 = v37;
      goto LABEL_28;
    case 2u:
      sub_2187C58F8(v43, v34, type metadata accessor for LocalNewsTodayFeedGroup);
      sub_2187733B4(&qword_280EE1910, type metadata accessor for LocalNewsTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v46 = type metadata accessor for LocalNewsTodayFeedGroup;
      v47 = v34;
      goto LABEL_28;
    case 3u:
      sub_2187C58F8(v43, v31, type metadata accessor for TrendingTodayFeedGroup);
      v44 = sub_219BED7D4();
      v46 = type metadata accessor for TrendingTodayFeedGroup;
      v47 = v31;
      goto LABEL_28;
    case 4u:
      sub_2187C58F8(v43, v28, type metadata accessor for ForYouTodayFeedGroup);
      v44 = sub_219BED7D4();
      v46 = type metadata accessor for ForYouTodayFeedGroup;
      v47 = v28;
      goto LABEL_28;
    case 5u:
      sub_2187C58F8(v43, v25, type metadata accessor for MissedStoriesTodayFeedGroup);
      v44 = sub_219BED7D4();
      v46 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v47 = v25;
      goto LABEL_28;
    case 6u:
      v40 = v53;
      sub_2187C58F8(v43, v53, type metadata accessor for LatestStoriesTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_27;
    case 7u:
      v40 = v54;
      sub_2187C58F8(v43, v54, type metadata accessor for MoreForYouTodayFeedGroup);
      sub_2187733B4(&qword_280EC0F88, type metadata accessor for MoreForYouTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_27;
    case 8u:
      v40 = v56;
      sub_2187C58F8(v43, v56, type metadata accessor for TopicTodayFeedGroup);
      sub_2187733B4(&qword_280ECFA30, type metadata accessor for TopicTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_27;
    case 9u:
      v40 = v58;
      sub_2187C58F8(v43, v58, type metadata accessor for MagazineFeedGroup);
      v44 = sub_218CDE404();
      v45 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_27;
    case 0xAu:
      v40 = v59;
      sub_2187C58F8(v43, v59, type metadata accessor for NewFollowTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA50, type metadata accessor for NewFollowTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_27;
    case 0xBu:
      v40 = v61;
      sub_2187C58F8(v43, v61, type metadata accessor for SubscriptionTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA48, type metadata accessor for SubscriptionTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_27;
    case 0xCu:
      v48 = v64;
      v49 = v63;
      v50 = v65;
      (*(v64 + 32))(v63, v43, v65);
      v44 = sub_219BEE8E4();
      (*(v48 + 8))(v49, v50);
      return v44;
    case 0xDu:
      v40 = v66;
      sub_2187C58F8(v43, v66, type metadata accessor for SpotlightTodayFeedGroup);
      sub_2187733B4(&qword_280EC31C0, type metadata accessor for SpotlightTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_27;
    case 0xEu:
      v40 = v68;
      sub_2187C58F8(v43, v68, type metadata accessor for SuggestionTodayFeedGroup);
      sub_2187733B4(&qword_280EBFFE8, type metadata accessor for SuggestionTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_27;
    case 0xFu:
      v40 = v70;
      sub_2187C58F8(v43, v70, type metadata accessor for SeenContentMarkTodayFeedGroup);
      sub_2187733B4(&qword_280EAEF50, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_27;
    case 0x10u:
      v40 = v72;
      sub_2187C58F8(v43, v72, type metadata accessor for SharedWithYouTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA40, type metadata accessor for SharedWithYouTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_27;
    case 0x11u:
      v40 = v74;
      sub_2187C58F8(v43, v74, type metadata accessor for EngagementTodayFeedGroup);
      sub_2187733B4(&qword_280EC21B0, type metadata accessor for EngagementTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_27;
    case 0x12u:
      v40 = v76;
      sub_2187C58F8(v43, v76, type metadata accessor for MySportsTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_27;
    case 0x13u:
      v40 = v77;
      sub_2187C58F8(v43, v77, type metadata accessor for IntroToSportsTodayFeedGroup);
      sub_2187733B4(&qword_280EB8660, type metadata accessor for IntroToSportsTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_27;
    case 0x14u:
      v40 = v79;
      sub_2187C58F8(v43, v79, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_2187733B4(&qword_280EC3400, type metadata accessor for ShortcutsTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_27;
    case 0x15u:
      v40 = v81;
      sub_2187C58F8(v43, v81, type metadata accessor for ChannelTodayFeedGroup);
      sub_2187733B4(&qword_280ECB9C0, type metadata accessor for ChannelTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_27;
    case 0x16u:
      v40 = v83;
      sub_2187C58F8(v43, v83, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA38, type metadata accessor for SavedStoriesTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_27;
    case 0x17u:
      v40 = v85;
      sub_2187C58F8(v43, v85, type metadata accessor for ChannelPickerTodayFeedGroup);
      sub_2187733B4(&qword_27CC0BA30, type metadata accessor for ChannelPickerTodayFeedGroup);
      v44 = sub_219BEE8E4();
      v45 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_27;
    case 0x18u:
      v40 = v87;
      sub_2187C58F8(v43, v87, type metadata accessor for FoodTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_27;
    default:
      sub_2187C58F8(v43, v40, type metadata accessor for CuratedTodayFeedGroup);
      v44 = sub_219BED7D4();
      v45 = type metadata accessor for CuratedTodayFeedGroup;
LABEL_27:
      v46 = v45;
      v47 = v40;
LABEL_28:
      sub_2187C8338(v47, v46);
      return v44;
  }
}

uint64_t sub_21899A40C@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v86 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v86);
  v87 = &v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v84);
  v85 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v82);
  v83 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v80);
  v81 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v78);
  v79 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v76);
  v77 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v74);
  v75 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v71);
  v72 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v69);
  v70 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v67);
  v68 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v65);
  v66 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v63);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v61);
  v62 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v59);
  v60 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v57);
  v58 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v55);
  v56 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v53);
  v54 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v51);
  v52 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v27);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v30);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v33);
  v35 = &v51 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v89, v35);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = type metadata accessor for NewspaperTodayFeedGroup;
      sub_2187C58F8(v35, v29, type metadata accessor for NewspaperTodayFeedGroup);
      v50 = v88;
      v88[3] = v27;
      v50[4] = sub_2187733B4(&qword_27CC0B9B8, type metadata accessor for NewspaperTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      v46 = v29;
      break;
    case 2u:
      v38 = type metadata accessor for LocalNewsTodayFeedGroup;
      sub_2187C58F8(v35, v26, type metadata accessor for LocalNewsTodayFeedGroup);
      v44 = v88;
      v88[3] = v24;
      v44[4] = sub_2187733B4(&unk_280EE18D0, type metadata accessor for LocalNewsTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
      v46 = v26;
      break;
    case 3u:
      sub_2187C58F8(v35, v23, type metadata accessor for TrendingTodayFeedGroup);
      v47 = v88;
      v88[3] = v21;
      v47[4] = sub_2187733B4(&qword_280EC6248, type metadata accessor for TrendingTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      v46 = v23;
      v48 = type metadata accessor for TrendingTodayFeedGroup;
      return sub_2187C58F8(v46, boxed_opaque_existential_1, v48);
    case 4u:
      v38 = type metadata accessor for ForYouTodayFeedGroup;
      v39 = v52;
      sub_2187C58F8(v35, v52, type metadata accessor for ForYouTodayFeedGroup);
      v40 = v88;
      v88[3] = v51;
      v41 = &qword_280ECE988;
      v42 = type metadata accessor for ForYouTodayFeedGroup;
      goto LABEL_26;
    case 5u:
      v38 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v39 = v54;
      sub_2187C58F8(v35, v54, type metadata accessor for MissedStoriesTodayFeedGroup);
      v40 = v88;
      v88[3] = v53;
      v41 = &qword_280EB7EE8;
      v42 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 6u:
      v38 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v39 = v56;
      sub_2187C58F8(v35, v56, type metadata accessor for LatestStoriesTodayFeedGroup);
      v40 = v88;
      v88[3] = v55;
      v41 = &qword_280EB8558;
      v42 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_26;
    case 7u:
      v38 = type metadata accessor for MoreForYouTodayFeedGroup;
      v39 = v58;
      sub_2187C58F8(v35, v58, type metadata accessor for MoreForYouTodayFeedGroup);
      v40 = v88;
      v88[3] = v57;
      v41 = &qword_27CC0B9B0;
      v42 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_26;
    case 8u:
      v38 = type metadata accessor for TopicTodayFeedGroup;
      v39 = v60;
      sub_2187C58F8(v35, v60, type metadata accessor for TopicTodayFeedGroup);
      v40 = v88;
      v88[3] = v59;
      v41 = &qword_280ECFA08;
      v42 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_26;
    case 9u:
      v43 = v73;
      sub_2187C58F8(v35, v73, type metadata accessor for MagazineFeedGroup);
      sub_218CDC7DC(v88);
      return sub_2187C8338(v43, type metadata accessor for MagazineFeedGroup);
    case 0xAu:
      v38 = type metadata accessor for NewFollowTodayFeedGroup;
      v39 = v62;
      sub_2187C58F8(v35, v62, type metadata accessor for NewFollowTodayFeedGroup);
      v40 = v88;
      v88[3] = v61;
      v41 = &qword_27CC0B9A8;
      v42 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_26;
    case 0xBu:
      v38 = type metadata accessor for SubscriptionTodayFeedGroup;
      v39 = v64;
      sub_2187C58F8(v35, v64, type metadata accessor for SubscriptionTodayFeedGroup);
      v40 = v88;
      v88[3] = v63;
      v41 = &qword_27CC0B9A0;
      v42 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_26;
    case 0xCu:
    case 0x11u:
      result = sub_2187C8338(v35, type metadata accessor for TodayFeedGroup);
      v37 = v88;
      *v88 = 0u;
      *(v37 + 1) = 0u;
      v37[4] = 0;
      return result;
    case 0xDu:
      v38 = type metadata accessor for SpotlightTodayFeedGroup;
      v39 = v66;
      sub_2187C58F8(v35, v66, type metadata accessor for SpotlightTodayFeedGroup);
      v40 = v88;
      v88[3] = v65;
      v41 = &qword_280EC3198;
      v42 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_26;
    case 0xEu:
      v38 = type metadata accessor for SuggestionTodayFeedGroup;
      v39 = v68;
      sub_2187C58F8(v35, v68, type metadata accessor for SuggestionTodayFeedGroup);
      v40 = v88;
      v88[3] = v67;
      v41 = &qword_280EBFFC0;
      v42 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_26;
    case 0xFu:
      v38 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      v39 = v70;
      sub_2187C58F8(v35, v70, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v40 = v88;
      v88[3] = v69;
      v41 = &qword_27CC0B998;
      v42 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_26;
    case 0x10u:
      v38 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v39 = v72;
      sub_2187C58F8(v35, v72, type metadata accessor for SharedWithYouTodayFeedGroup);
      v40 = v88;
      v88[3] = v71;
      v41 = &qword_27CC0B990;
      v42 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_26;
    case 0x12u:
      v38 = type metadata accessor for MySportsTodayFeedGroup;
      v39 = v75;
      sub_2187C58F8(v35, v75, type metadata accessor for MySportsTodayFeedGroup);
      v40 = v88;
      v88[3] = v74;
      v41 = &qword_27CC0B988;
      v42 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_26;
    case 0x13u:
      v38 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v39 = v77;
      sub_2187C58F8(v35, v77, type metadata accessor for IntroToSportsTodayFeedGroup);
      v40 = v88;
      v88[3] = v76;
      v41 = &qword_280EB8638;
      v42 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_26;
    case 0x14u:
      v38 = type metadata accessor for ShortcutsTodayFeedGroup;
      v39 = v79;
      sub_2187C58F8(v35, v79, type metadata accessor for ShortcutsTodayFeedGroup);
      v40 = v88;
      v88[3] = v78;
      v41 = &qword_280EC33D8;
      v42 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_26;
    case 0x15u:
      v38 = type metadata accessor for ChannelTodayFeedGroup;
      v39 = v81;
      sub_2187C58F8(v35, v81, type metadata accessor for ChannelTodayFeedGroup);
      v40 = v88;
      v88[3] = v80;
      v41 = &qword_280ECB998;
      v42 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_26;
    case 0x16u:
      v38 = type metadata accessor for SavedStoriesTodayFeedGroup;
      v39 = v83;
      sub_2187C58F8(v35, v83, type metadata accessor for SavedStoriesTodayFeedGroup);
      v40 = v88;
      v88[3] = v82;
      v41 = &qword_27CC0B980;
      v42 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_26;
    case 0x17u:
      v38 = type metadata accessor for ChannelPickerTodayFeedGroup;
      v39 = v85;
      sub_2187C58F8(v35, v85, type metadata accessor for ChannelPickerTodayFeedGroup);
      v40 = v88;
      v88[3] = v84;
      v41 = &qword_27CC0B978;
      v42 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_26;
    case 0x18u:
      v38 = type metadata accessor for FoodTodayFeedGroup;
      v39 = v87;
      sub_2187C58F8(v35, v87, type metadata accessor for FoodTodayFeedGroup);
      v40 = v88;
      v88[3] = v86;
      v41 = &qword_280ED3B28;
      v42 = type metadata accessor for FoodTodayFeedGroup;
LABEL_26:
      v40[4] = sub_2187733B4(v41, v42);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
      v46 = v39;
      break;
    default:
      v38 = type metadata accessor for CuratedTodayFeedGroup;
      sub_2187C58F8(v35, v32, type metadata accessor for CuratedTodayFeedGroup);
      v49 = v88;
      v88[3] = v30;
      v49[4] = sub_2187733B4(&qword_280ECB720, type metadata accessor for CuratedTodayFeedGroup);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
      v46 = v32;
      break;
  }

  v48 = v38;
  return sub_2187C58F8(v46, boxed_opaque_existential_1, v48);
}

uint64_t sub_21899B614@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C7E1C(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) < 0x11 || ((1 << EnumCaseMultiPayload) & 0x1F00000) != 0)
  {
    sub_2187C8338(v5, type metadata accessor for TodayFeedGroup);
    v7 = sub_219BF3584();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  else
  {
    sub_2187C8338(v5, type metadata accessor for TodayFeedGroup);
    v9 = *MEMORY[0x277D33EB0];
    v10 = sub_219BF3584();
    v11 = *(v10 - 8);
    (*(v11 + 104))(a1, v9, v10);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_21899B7B4(void *a1)
{
  v94 = type metadata accessor for FoodTodayFeedGroup();
  MEMORY[0x28223BE20](v94);
  v117 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ChannelPickerTodayFeedGroup();
  MEMORY[0x28223BE20](v93);
  v116 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for SavedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v92);
  v115 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ChannelTodayFeedGroup();
  MEMORY[0x28223BE20](v91);
  v114 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ShortcutsTodayFeedGroup();
  MEMORY[0x28223BE20](v90);
  v113 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for IntroToSportsTodayFeedGroup();
  MEMORY[0x28223BE20](v89);
  v112 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MySportsTodayFeedGroup();
  MEMORY[0x28223BE20](v88);
  v111 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EngagementTodayFeedGroup();
  MEMORY[0x28223BE20](v87);
  v110 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SharedWithYouTodayFeedGroup();
  MEMORY[0x28223BE20](v86);
  v109 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MagazineFeedGroup();
  MEMORY[0x28223BE20](v85);
  v108 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SeenContentMarkTodayFeedGroup();
  MEMORY[0x28223BE20](v84);
  v107 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for SuggestionTodayFeedGroup();
  MEMORY[0x28223BE20](v83);
  v106 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for SpotlightTodayFeedGroup();
  MEMORY[0x28223BE20](v82);
  v105 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SubscriptionTodayFeedGroup();
  MEMORY[0x28223BE20](v81);
  v104 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for NewFollowTodayFeedGroup();
  MEMORY[0x28223BE20](v80);
  v103 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for TopicTodayFeedGroup();
  MEMORY[0x28223BE20](v79);
  v102 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MoreForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v78);
  v101 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for LatestStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v77);
  v100 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for MissedStoriesTodayFeedGroup();
  MEMORY[0x28223BE20](v76);
  v99 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ForYouTodayFeedGroup();
  MEMORY[0x28223BE20](v75);
  v98 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for TrendingTodayFeedGroup();
  MEMORY[0x28223BE20](v74);
  v97 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for LocalNewsTodayFeedGroup();
  MEMORY[0x28223BE20](v73);
  v96 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for NewspaperTodayFeedGroup();
  MEMORY[0x28223BE20](v24);
  v95 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for CuratedTodayFeedGroup();
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TodayFeedGroup();
  MEMORY[0x28223BE20](v29);
  v31 = &v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187C22A4(0, &qword_280E8C660, MEMORY[0x277D84538]);
  v33 = *(v32 - 8);
  v120 = v32;
  v121 = v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v72 - v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187C2308();
  v119 = v35;
  sub_219BF7B44();
  sub_2187C7E1C(v122, v31);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = v95;
      sub_2187C58F8(v31, v95, type metadata accessor for NewspaperTodayFeedGroup);
      v123 = 256;
      sub_2189907F0();
      v57 = v119;
      v58 = v120;
      v59 = v118;
      sub_219BF7834();
      if (!v59)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC1B4C0, type metadata accessor for NewspaperTodayFeedGroup);
        sub_219BF7834();
      }

      sub_2187C8338(v56, type metadata accessor for NewspaperTodayFeedGroup);
      return (*(v121 + 8))(v57, v58);
    case 2u:
      v41 = v96;
      sub_2187C58F8(v31, v96, type metadata accessor for LocalNewsTodayFeedGroup);
      v123 = 512;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v52 = v118;
      sub_219BF7834();
      if (!v52)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&unk_280EE18F8, type metadata accessor for LocalNewsTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for LocalNewsTodayFeedGroup;
      goto LABEL_75;
    case 3u:
      v41 = v97;
      sub_2187C58F8(v31, v97, type metadata accessor for TrendingTodayFeedGroup);
      v123 = 768;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v54 = v118;
      sub_219BF7834();
      if (!v54)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC6260, type metadata accessor for TrendingTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for TrendingTodayFeedGroup;
      goto LABEL_75;
    case 4u:
      v41 = v98;
      sub_2187C58F8(v31, v98, type metadata accessor for ForYouTodayFeedGroup);
      v123 = 1024;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v46 = v118;
      sub_219BF7834();
      if (!v46)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECE9A0, type metadata accessor for ForYouTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ForYouTodayFeedGroup;
      goto LABEL_75;
    case 5u:
      v41 = v99;
      sub_2187C58F8(v31, v99, type metadata accessor for MissedStoriesTodayFeedGroup);
      v123 = 1536;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v62 = v118;
      sub_219BF7834();
      if (!v62)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EB7F00, type metadata accessor for MissedStoriesTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_75;
    case 6u:
      v41 = v100;
      sub_2187C58F8(v31, v100, type metadata accessor for LatestStoriesTodayFeedGroup);
      v123 = 1280;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v65 = v118;
      sub_219BF7834();
      if (!v65)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EB8570, type metadata accessor for LatestStoriesTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_75;
    case 7u:
      v41 = v101;
      sub_2187C58F8(v31, v101, type metadata accessor for MoreForYouTodayFeedGroup);
      v123 = 1792;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v55 = v118;
      sub_219BF7834();
      if (!v55)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC0F80, type metadata accessor for MoreForYouTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_75;
    case 8u:
      v41 = v102;
      sub_2187C58F8(v31, v102, type metadata accessor for TopicTodayFeedGroup);
      v123 = 2048;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v68 = v118;
      sub_219BF7834();
      if (!v68)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECFA20, type metadata accessor for TopicTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_75;
    case 9u:
      v41 = v108;
      sub_2187C58F8(v31, v108, type metadata accessor for MagazineFeedGroup);
      v123 = 2304;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v50 = v118;
      sub_219BF7834();
      if (!v50)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ED5DF0, type metadata accessor for MagazineFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MagazineFeedGroup;
      goto LABEL_75;
    case 0xAu:
      v41 = v103;
      sub_2187C58F8(v31, v103, type metadata accessor for NewFollowTodayFeedGroup);
      v123 = 2560;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v67 = v118;
      sub_219BF7834();
      if (!v67)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA28, type metadata accessor for NewFollowTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_75;
    case 0xBu:
      v41 = v104;
      sub_2187C58F8(v31, v104, type metadata accessor for SubscriptionTodayFeedGroup);
      v123 = 2816;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v45 = v118;
      sub_219BF7834();
      if (!v45)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA20, type metadata accessor for SubscriptionTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_75;
    case 0xCu:
      v47 = sub_219BEE394();
      sub_2187733B4(&qword_27CC0B9E0, MEMORY[0x277D31FD8]);
      swift_allocError();
      (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D31FD0], v47);
      swift_willThrow();
      (*(v121 + 8))(v119, v120);
      return sub_2187C8338(v31, type metadata accessor for TodayFeedGroup);
    case 0xDu:
      v41 = v105;
      sub_2187C58F8(v31, v105, type metadata accessor for SpotlightTodayFeedGroup);
      v123 = 3328;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v64 = v118;
      sub_219BF7834();
      if (!v64)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC31B0, type metadata accessor for SpotlightTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_75;
    case 0xEu:
      v41 = v106;
      sub_2187C58F8(v31, v106, type metadata accessor for SuggestionTodayFeedGroup);
      v123 = 3584;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v44 = v118;
      sub_219BF7834();
      if (!v44)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EBFFD8, type metadata accessor for SuggestionTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_75;
    case 0xFu:
      v41 = v107;
      sub_2187C58F8(v31, v107, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v123 = 3840;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v53 = v118;
      sub_219BF7834();
      if (!v53)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EAEF48, type metadata accessor for SeenContentMarkTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_75;
    case 0x10u:
      v41 = v109;
      sub_2187C58F8(v31, v109, type metadata accessor for SharedWithYouTodayFeedGroup);
      v123 = 4096;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v42 = v118;
      sub_219BF7834();
      if (!v42)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA18, type metadata accessor for SharedWithYouTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_75;
    case 0x11u:
      v41 = v110;
      sub_2187C58F8(v31, v110, type metadata accessor for EngagementTodayFeedGroup);
      v123 = 4352;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v60 = v118;
      sub_219BF7834();
      if (!v60)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC21A0, type metadata accessor for EngagementTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for EngagementTodayFeedGroup;
      goto LABEL_75;
    case 0x12u:
      v41 = v111;
      sub_2187C58F8(v31, v111, type metadata accessor for MySportsTodayFeedGroup);
      v123 = 4608;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v66 = v118;
      sub_219BF7834();
      if (!v66)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA10, type metadata accessor for MySportsTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_75;
    case 0x13u:
      v41 = v112;
      sub_2187C58F8(v31, v112, type metadata accessor for IntroToSportsTodayFeedGroup);
      v123 = 4864;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v70 = v118;
      sub_219BF7834();
      if (!v70)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EB8650, type metadata accessor for IntroToSportsTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_75;
    case 0x14u:
      v41 = v113;
      sub_2187C58F8(v31, v113, type metadata accessor for ShortcutsTodayFeedGroup);
      v123 = 5120;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v61 = v118;
      sub_219BF7834();
      if (!v61)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280EC33F0, type metadata accessor for ShortcutsTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_75;
    case 0x15u:
      v41 = v114;
      sub_2187C58F8(v31, v114, type metadata accessor for ChannelTodayFeedGroup);
      v123 = 5376;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v63 = v118;
      sub_219BF7834();
      if (!v63)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECB9B0, type metadata accessor for ChannelTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_75;
    case 0x16u:
      v41 = v115;
      sub_2187C58F8(v31, v115, type metadata accessor for SavedStoriesTodayFeedGroup);
      v123 = 5632;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v69 = v118;
      sub_219BF7834();
      if (!v69)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA08, type metadata accessor for SavedStoriesTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_75;
    case 0x17u:
      v41 = v116;
      sub_2187C58F8(v31, v116, type metadata accessor for ChannelPickerTodayFeedGroup);
      v123 = 5888;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v71 = v118;
      sub_219BF7834();
      if (!v71)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_27CC0BA00, type metadata accessor for ChannelPickerTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_75;
    case 0x18u:
      v41 = v117;
      sub_2187C58F8(v31, v117, type metadata accessor for FoodTodayFeedGroup);
      v123 = 6144;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v51 = v118;
      sub_219BF7834();
      if (!v51)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ED3B40, type metadata accessor for FoodTodayFeedGroup);
        sub_219BF7834();
      }

      v43 = type metadata accessor for FoodTodayFeedGroup;
LABEL_75:
      v39 = v43;
      v40 = v41;
      break;
    default:
      sub_2187C58F8(v31, v28, type metadata accessor for CuratedTodayFeedGroup);
      v123 = 0;
      sub_2189907F0();
      v37 = v119;
      v36 = v120;
      v38 = v118;
      sub_219BF7834();
      if (!v38)
      {
        HIBYTE(v123) = 1;
        sub_2187733B4(&qword_280ECB738, type metadata accessor for CuratedTodayFeedGroup);
        sub_219BF7834();
      }

      v39 = type metadata accessor for CuratedTodayFeedGroup;
      v40 = v28;
      break;
  }

  sub_2187C8338(v40, v39);
  return (*(v121 + 8))(v37, v36);
}

uint64_t sub_21899D648(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1635017060;
  }

  else
  {
    v2 = 1701869940;
  }

  if (*a2)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 1701869940;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_219BF78F4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21899D6C0()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21899D728()
{
  sub_219BF5524();
}

uint64_t sub_21899D774()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_21899D7D8@<X0>(char *a1@<X8>)
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

void sub_21899D838(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (*v1)
  {
    v2 = 1635017060;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_21899D860@<X0>(char *a1@<X8>)
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

uint64_t sub_21899D8C4(uint64_t a1)
{
  v2 = sub_2187C2308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21899D900(uint64_t a1)
{
  v2 = sub_2187C2308();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21899D954(char *a1)
{
  sub_21899DD44(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_219BF1904();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21882D12C(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_21899DD98(v4);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  result = sub_219BF18D4();
  v10 = result;
  v30 = v8;
  v31 = v5;
  v29 = v6;
  if (result >> 62)
  {
LABEL_26:
    result = sub_219BF7214();
    v11 = result;
    if (result)
    {
LABEL_5:
      v12 = 0;
      v32 = v10 & 0xC000000000000001;
      v13 = *&a1[OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16];
      v27 = v10 + 32;
      v28 = v10 & 0xFFFFFFFFFFFFFF8;
      v14 = v13 + 56;
      while (1)
      {
        if (v32)
        {
          a1 = MEMORY[0x21CECE0F0](v12, v10);
          v15 = __OFADD__(v12++, 1);
          if (v15)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v12 >= *(v28 + 16))
          {
            __break(1u);
            return result;
          }

          a1 = *(v27 + 8 * v12);
          swift_unknownObjectRetain();
          v15 = __OFADD__(v12++, 1);
          if (v15)
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v16 = [a1 identifier];
        v17 = sub_219BF5414();
        v19 = v18;

        if (*(v13 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v20 = sub_219BF7AE4();
          v21 = -1 << *(v13 + 32);
          v22 = v20 & ~v21;
          if ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
          {
            break;
          }
        }

LABEL_6:

        result = swift_unknownObjectRelease();
        if (v12 == v11)
        {
          goto LABEL_27;
        }
      }

      v23 = ~v21;
      while (1)
      {
        v24 = (*(v13 + 48) + 16 * v22);
        v25 = *v24 == v17 && v24[1] == v19;
        if (v25 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      swift_unknownObjectRelease();

      (*(v29 + 8))(v30, v31);
      return 0;
    }
  }

  else
  {
    v11 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }
  }

LABEL_27:

  (*(v29 + 8))(v30, v31);
  return 1;
}

void sub_21899DCD4()
{
  if (!qword_280E91218)
  {
    sub_219BEFBD4();
    sub_219BEF564();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E91218);
    }
  }
}

void sub_21899DD44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21899DD98(uint64_t a1)
{
  sub_21899DD44(0, &qword_280E90840, MEMORY[0x277D33470]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21899DE24()
{
  result = qword_27CC0BA58;
  if (!qword_27CC0BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BA58);
  }

  return result;
}

double sub_21899DE78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BE8004();
  v85 = v3;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = sub_2186C6148(0, &qword_280E8DB00);
  v9 = v7;
  v10 = sub_219BF6BD4();
  *(inited + 64) = v8;
  *(inited + 40) = v10;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_21899E5A8(inited + 32);
  v11 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v12 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_21899E604();
  v13 = sub_219BF5204();

  v14 = [v11 initWithString:v12 attributes:{v13, 0x8000000219CDC1B0}];

  sub_219BF6784();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v86.origin.x = v16;
  v86.origin.y = v18;
  v86.size.width = v20;
  v86.size.height = v22;
  v87 = CGRectIntegral(v86);
  width = v87.size.width;
  height = v87.size.height;
  sub_218DB9AA0(a1);
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  if (v26)
  {
    v27 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v27 setLineSpacing_];
    [v27 setAlignment_];
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_219C09EC0;
    v29 = v9;
    v30 = *MEMORY[0x277D74118];
    *(v28 + 32) = *MEMORY[0x277D74118];
    v31 = sub_2186C6148(0, &qword_280E8DED8);
    *(v28 + 40) = v27;
    *(v28 + 64) = v31;
    *(v28 + 72) = v29;
    v32 = v29;
    v33 = v30;
    v9 = v29;
    v34 = v27;
    v35 = sub_219BF6BD4();
    *(v28 + 104) = v8;
    *(v28 + 80) = v35;
    sub_2188195F4(v28);
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v37 = sub_219BF53D4();

    v38 = sub_219BF5204();

    v39 = [v36 initWithString:v37 attributes:v38];

    sub_219BF6784();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v88.origin.x = v41;
    v88.origin.y = v43;
    v88.size.width = v45;
    v88.size.height = v47;
    v89 = CGRectIntegral(v88);
    v24 = v89.size.width;
    v25 = v89.size.height;
  }

  sub_218DB9C18(a1);
  v48 = 0.0;
  if (v49)
  {
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_219C09BA0;
    *(v50 + 32) = v9;
    v51 = v9;
    v52 = sub_219BF6BD4();
    *(v50 + 64) = v8;
    *(v50 + 40) = v52;
    sub_2188195F4(v50);
    swift_setDeallocating();
    sub_21899E5A8(v50 + 32);
    v53 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v54 = sub_219BF53D4();

    v55 = sub_219BF5204();

    v56 = [v53 initWithString:v54 attributes:v55];

    sub_219BF6784();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v90.origin.x = v58;
    v90.origin.y = v60;
    v90.size.width = v62;
    v90.size.height = v64;
    v91 = CGRectIntegral(v90);
    v23 = v91.size.width;
    v48 = v91.size.height;
  }

  v65 = height + 80.0 + 18.0;
  v66 = v65 + v25 + 45.0;
  sub_219BE8154();
  v82 = (v67 - width) * 0.5;
  sub_219BE8154();
  v83 = v24;
  v69 = (v68 - v24) * 0.5;
  sub_219BE8154();
  v71 = (v70 - v23) * 0.5;
  v72 = *MEMORY[0x277D6E758];
  v73 = sub_219BE9834();
  (*(*(v73 - 8) + 104))(a2, v72, v73);
  v74 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes();
  v75 = a2 + v74[5];
  *v75 = 0;
  *(v75 + 8) = 0;
  *(v75 + 16) = v85;
  *(v75 + 24) = v66 + v48 + 68.0;
  v76 = a2 + v74[6];
  *v76 = v82;
  *(v76 + 8) = 0x4054000000000000;
  *(v76 + 16) = width;
  *(v76 + 24) = height;
  v77 = (a2 + v74[7]);
  *v77 = v69;
  v77[1] = v65;
  result = v83;
  v77[2] = v83;
  v77[3] = v25;
  v79 = (a2 + v74[8]);
  *v79 = v71;
  v79[1] = v66;
  v79[2] = v23;
  v79[3] = v48;
  return result;
}

void sub_21899E550()
{
  if (!qword_280E8B600)
  {
    sub_218819588();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B600);
    }
  }
}

uint64_t sub_21899E5A8(uint64_t a1)
{
  sub_218819588();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21899E604()
{
  result = qword_280E8E118;
  if (!qword_280E8E118)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E118);
  }

  return result;
}

uint64_t type metadata accessor for RecipeFilterTagCapsulesSectionView()
{
  result = qword_27CC0BA68;
  if (!qword_27CC0BA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21899E6D0()
{
  sub_2189A0B64(319, &qword_27CC0BA60, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_21899E7BC();
    if (v1 <= 0x3F)
    {
      sub_218788800();
      if (v2 <= 0x3F)
      {
        sub_219BECD44();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21899E7BC()
{
  if (!qword_27CC0BA78)
  {
    type metadata accessor for RecipeFilterTagCapsuleViewModel();
    v0 = type metadata accessor for RecipeFilterSectionViewModel();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BA78);
    }
  }
}

uint64_t sub_21899E838()
{
  v22 = sub_219BED094();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v3 = (&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BED0A4();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEC6E4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = *(v0 + *(type metadata accessor for RecipeFilterTagCapsulesSectionView() + 24));
  sub_2189A07FC(v13);
  (*(v8 + 104))(v11, *MEMORY[0x277CDFA10], v7);
  sub_2189A0BD8(&qword_27CC0BB50, MEMORY[0x277CDFA28]);
  v15 = sub_219BF5334();
  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  v17 = 1;
  if ((v15 & 1) == 0)
  {
    v17 = 2;
  }

  v18 = 2;
  if ((v15 & 1) == 0)
  {
    v18 = 3;
  }

  if (v14)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  *v3 = xmmword_219C0E3A0;
  (*(v1 + 104))(v3, *MEMORY[0x277CDF108], v22);
  sub_219BED0B4();
  return sub_2194FD224(v6, v19);
}

uint64_t sub_21899EB04()
{
  v1 = v0;
  v2 = MEMORY[0x277D83D88];
  sub_2189A0B64(0, &qword_27CC0BB58, MEMORY[0x277CE0BA0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v44 - v4;
  sub_2189A0B64(0, &qword_27CC0BB60, MEMORY[0x277CE0B10], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - v6;
  v7 = sub_219BECD24();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BECC84();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEC6E4();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v44 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  v21 = 1;
  if (*(v0 + *(v44 + 24)) == 1)
  {
    sub_2189A07FC(v18);
    (*(v13 + 104))(v16, *MEMORY[0x277CDFA10], v12);
    sub_2189A0BD8(&qword_27CC0BB50, MEMORY[0x277CDFA28]);
    v19 = sub_219BF5334();
    v20 = *(v13 + 8);
    v20(v16, v12);
    v20(v18, v12);
    if (v19)
    {
      v21 = 0;
    }
  }

  v51 = v1;
  result = sub_219502220(0x200A, 0xE200000000000000, v21);
  v23 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v25 = 0;
    v26 = (result + 40);
    v27 = 0xE100000000000000;
    v28 = 32;
    while (v25 < *(v23 + 16))
    {
      ++v25;
      v30 = *(v26 - 1);
      v29 = *v26;
      v52 = v28;
      v53 = v27;

      MEMORY[0x21CECC330](v30, v29);

      v28 = v52;
      v27 = v53;
      v26 += 2;
      if (v24 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = 0xE100000000000000;
    v28 = 32;
LABEL_11:

    v44 = *(v44 + 32);
    v52 = v28;
    v53 = v27;
    sub_2187F3BD4();
    v31 = sub_219BECDA4();
    v33 = v32;
    v35 = v34;
    sub_219BECCB4();
    sub_219BECC24();
    sub_219BECC74();

    v36 = v45;
    (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v45);
    sub_219BECC94();

    (*(v9 + 8))(v11, v36);
    v37 = sub_219BECD74();
    v39 = v38;
    LOBYTE(v36) = v40;

    sub_2189A0BC8(v31, v33, v35 & 1);

    v41 = sub_219BECCF4();
    (*(*(v41 - 8) + 56))(v46, 1, 1, v41);
    v42 = sub_219BECD84();
    (*(*(v42 - 8) + 56))(v48, 1, 1, v42);
    v43 = v47;
    sub_219BECD14();
    sub_219BECD04();
    sub_2189A0BC8(v37, v39, v36 & 1);

    return (*(v49 + 8))(v43, v50);
  }

  return result;
}

uint64_t sub_21899F138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BECA54();
  MEMORY[0x28223BE20](v3);
  v4 = *(v1 + *(type metadata accessor for RecipeFilterTagCapsulesSectionView() + 20));
  v6 = *(v4 + 32);
  v5 = *(v4 + 40);
  sub_21899FF08();
  *(a1 + *(v7 + 44)) = 0x4034000000000000;
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = 1;

  sub_21899E838();
  sub_219BEC964();
  sub_2189A0BD8(&qword_27CC0BB18, MEMORY[0x277CE0428]);
  sub_219BF7C64();
  sub_2189A0000();
  sub_2189A05A4();
  return sub_219BED114();
}

uint64_t sub_21899F2B8(uint64_t a1)
{
  v2 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_21899EB04();
  v7 = v6;
  v14[3] = *(*(a1 + *(v3 + 28)) + 48);
  sub_2189A0654(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  sub_2189A0A68(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RecipeFilterTagCapsulesSectionView);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_2189A0B64(0, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel, MEMORY[0x277D83940]);
  sub_2189A00FC();
  sub_2189A054C(&qword_27CC0BB00, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel);
  sub_2189A0180();
  v11 = v10;
  v12 = sub_2189A0364();

  v14[1] = v11;
  v14[2] = v12;
  swift_getOpaqueTypeConformance2();
  sub_2189A0BD8(&qword_27CC0BB28, type metadata accessor for RecipeFilterTagCapsuleViewModel);
  return sub_219BED064();
}

uint64_t sub_21899F528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v32 = a3;
  v7 = sub_219BEC954();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A01E8();
  v15 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A0180();
  v29 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_2189A0654(a2, v13);
  v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_2189A0A68(v13, v24 + v22, type metadata accessor for RecipeFilterTagCapsulesSectionView);
  *(v24 + v23) = v21;
  v33 = v21;
  v34 = a2;
  v35 = a4;
  type metadata accessor for RecipeFilterTagCapsuleView();
  sub_2189A0BD8(&qword_27CC0BAC0, type metadata accessor for RecipeFilterTagCapsuleView);

  sub_219BECFE4();
  v25 = sub_219BECF14();
  KeyPath = swift_getKeyPath();
  v27 = &v17[*(v15 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_21899FBF8(v21);
  sub_2189A0414();
  sub_219BECE84();
  (*(v30 + 8))(v9, v31);
  sub_2189A0A08(v17, sub_2189A01E8);
  sub_2189A0364();
  sub_219BECEA4();
  return sub_2189A0A08(v20, sub_2189A0180);
}

uint64_t sub_21899F8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  v5 = *(a1 + *(v4 + 28));
  v6 = *(a1 + *(v4 + 20));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);

  v5(v7, v8, v10, v9);
}

uint64_t sub_21899F934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_219BEC6E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v23[-v13];
  v15 = type metadata accessor for RecipeFilterTagCapsuleView();
  MEMORY[0x28223BE20](v15);
  v17 = &v23[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = *(a2 + *(type metadata accessor for RecipeFilterTagCapsulesSectionView() + 24));
  if (v18 == 1 && (sub_2189A07FC(v14), (*(v9 + 104))(v12, *MEMORY[0x277CDFA10], v8), sub_2189A0BD8(&qword_27CC0BB50, MEMORY[0x277CDFA28]), v24 = sub_219BF5334(), v19 = *(v9 + 8), v19(v12, v8), v19(v14, v8), (v24 & 1) != 0))
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  *v17 = a1;
  v17[8] = v18;
  *(v17 + 2) = v20;
  *(v17 + 3) = a4;
  v21 = *(v15 + 32);
  *&v17[v21] = swift_getKeyPath();
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  sub_2189A0A68(v17, a3, type metadata accessor for RecipeFilterTagCapsuleView);
}

uint64_t sub_21899FBF8(uint64_t a1)
{
  swift_getKeyPath();
  sub_2189A0BD8(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel);
  sub_219BDC204();

  if (*(a1 + 48) == 1)
  {
    v2 = MEMORY[0x277CE01F0];
    sub_2189A0B64(0, &qword_27CC0BB48, MEMORY[0x277CE01F0], MEMORY[0x277D84560]);
    sub_219BEC954();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    sub_219BEC934();
    sub_2189A0BD8(&qword_27CC0BB30, MEMORY[0x277CE01F0]);
    sub_2189A0B64(0, &qword_27CC0BB38, v2, MEMORY[0x277D83940]);
    sub_2189A054C(&qword_27CC0BB40, &qword_27CC0BB38, v2);
  }

  else
  {
    sub_219BEC954();
    sub_2189A0BD8(&qword_27CC0BB30, MEMORY[0x277CE01F0]);
    v3 = MEMORY[0x277CE01F0];
    sub_2189A0B64(0, &qword_27CC0BB38, MEMORY[0x277CE01F0], MEMORY[0x277D83940]);
    sub_2189A054C(&qword_27CC0BB40, &qword_27CC0BB38, v3);
  }

  return sub_219BF7164();
}

void sub_21899FF08()
{
  if (!qword_27CC0BA80)
  {
    sub_21899FF9C();
    sub_2189A0BD8(&qword_27CC0BB10, sub_21899FF9C);
    v0 = type metadata accessor for RecipeFilterSectionContainerView();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BA80);
    }
  }
}

void sub_21899FF9C()
{
  if (!qword_27CC0BA88)
  {
    sub_2189A0000();
    sub_2189A05A4();
    v0 = sub_219BED124();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BA88);
    }
  }
}

void sub_2189A0000()
{
  if (!qword_27CC0BA90)
  {
    sub_2189A0B64(255, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel, MEMORY[0x277D83940]);
    sub_2189A00FC();
    sub_2189A054C(&qword_27CC0BB00, &qword_27CC0BA98, type metadata accessor for RecipeFilterTagCapsuleViewModel);
    v0 = sub_219BED084();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BA90);
    }
  }
}

void sub_2189A00FC()
{
  if (!qword_27CC0BAA0)
  {
    sub_2189A0180();
    sub_2189A0364();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC0BAA0);
    }
  }
}

void sub_2189A0180()
{
  if (!qword_27CC0BAA8)
  {
    sub_2189A01E8();
    sub_219BECB24();
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BAA8);
    }
  }
}

void sub_2189A01E8()
{
  if (!qword_27CC0BAB0)
  {
    sub_2189A0280();
    sub_2189A0B64(255, &qword_27CC0BAC8, sub_2189A0314, MEMORY[0x277CE0860]);
    v0 = sub_219BEC724();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BAB0);
    }
  }
}

void sub_2189A0280()
{
  if (!qword_27CC0BAB8)
  {
    type metadata accessor for RecipeFilterTagCapsuleView();
    sub_2189A0BD8(&qword_27CC0BAC0, type metadata accessor for RecipeFilterTagCapsuleView);
    v0 = sub_219BED004();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BAB8);
    }
  }
}

void sub_2189A0314()
{
  if (!qword_27CC0BAD0)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BAD0);
    }
  }
}

unint64_t sub_2189A0364()
{
  result = qword_27CC0BAD8;
  if (!qword_27CC0BAD8)
  {
    sub_2189A0180();
    sub_2189A0414();
    sub_2189A0BD8(&qword_27CC0BAF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAD8);
  }

  return result;
}

unint64_t sub_2189A0414()
{
  result = qword_27CC0BAE0;
  if (!qword_27CC0BAE0)
  {
    sub_2189A01E8();
    sub_2189A0BD8(&qword_27CC0BAE8, sub_2189A0280);
    sub_2189A04C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAE0);
  }

  return result;
}

unint64_t sub_2189A04C4()
{
  result = qword_27CC0BAF0;
  if (!qword_27CC0BAF0)
  {
    sub_2189A0B64(255, &qword_27CC0BAC8, sub_2189A0314, MEMORY[0x277CE0860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BAF0);
  }

  return result;
}

uint64_t sub_2189A054C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2189A0B64(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2189A05A4()
{
  result = qword_27CC0BB08;
  if (!qword_27CC0BB08)
  {
    sub_2189A0000();
    sub_2189A0180();
    sub_2189A0364();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BB08);
  }

  return result;
}

uint64_t sub_2189A0654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeFilterTagCapsulesSectionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189A06B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecipeFilterTagCapsulesSectionView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21899F528(a1, v2 + v6, a2, v7);
}

uint64_t sub_2189A0764()
{
  v1 = *(type metadata accessor for RecipeFilterTagCapsulesSectionView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21899F8A8(v0 + v2, v3);
}

uint64_t sub_2189A07FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_219BEC864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_2189A0AD0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_219BEC6E4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_219BF6204();
    v13 = sub_219BECB54();
    sub_219BE5324();

    sub_219BEC854();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2189A0A08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189A0A68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189A0AD0(uint64_t a1, uint64_t a2)
{
  sub_2189A0B64(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189A0B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2189A0BC8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2189A0BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189A0C20(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v3 = MEMORY[0x277D32028];
  sub_2186DD004(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = MEMORY[0x277CC9578];
  sub_2186DD004(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_21872A89C(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &v16 - v9, &qword_280EE9C40, v7);
  v11 = *(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background);
  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme);
  sub_21872A89C(v2 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata, v6, &qword_280E91B80, v3);
  v13 = swift_allocObject();
  sub_21872A89C(v10, v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, v7);

  v14 = v17;

  sub_218710154(v10, &qword_280EE9C40, v7);
  *(v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups) = v14;
  *(v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background) = v11;
  *(v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme) = v12;
  sub_2189A1E30(v6, v13 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata);
  return v13;
}

uint64_t sub_2189A0E40()
{
  v1 = *v0;
  v2 = 0x446873696C627570;
  v3 = 0x756F72676B636162;
  v4 = 0x656D656874;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7370756F7267;
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

uint64_t sub_2189A0EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2189A21CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2189A0F14(uint64_t a1)
{
  v2 = sub_2189A1DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189A0F50(uint64_t a1)
{
  v2 = sub_2189A1DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189A0F8C()
{
  sub_218710154(v0 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, MEMORY[0x277CC9578]);

  sub_218710154(v0 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata, &qword_280E91B80, MEMORY[0x277D32028]);

  return swift_deallocClassInstance();
}

uint64_t sub_2189A1070(void *a1)
{
  v3 = v1;
  sub_2189A1EB0(0, &qword_27CC0BB70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A1DDC();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BDBD34();
  sub_2189A1FDC(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups);
    HIBYTE(v11) = 1;
    sub_2189A1F14();
    sub_2189A1F64();
    sub_219BF7834();
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background);
    HIBYTE(v11) = 2;
    sub_219BF3354();
    sub_2189A1FDC(&qword_27CC0BB88, MEMORY[0x277D33D78]);
    sub_219BF77E4();
    v12 = *(v3 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme);
    HIBYTE(v11) = 3;
    sub_219BF2424();
    sub_2189A1FDC(&qword_27CC0BB90, MEMORY[0x277D33840]);
    sub_219BF77E4();
    LOBYTE(v12) = 4;
    sub_219BEE5B4();
    sub_2189A1FDC(&unk_280E91B90, MEMORY[0x277D32028]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2189A13D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2189A15A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2189A14C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2189A0C20(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2189A150C()
{
  result = qword_280ED2880;
  if (!qword_280ED2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2880);
  }

  return result;
}

uint64_t sub_2189A15A8(void *a1)
{
  sub_2186DD004(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v30 - v3;
  sub_2186DD004(0, &qword_280EE7D98, sub_2189A1CCC);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_2186DD004(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  sub_2189A1EB0(0, &qword_280EE72F0, MEMORY[0x277D6CE98]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A1DDC();
  v16 = v15;
  v17 = v36;
  sub_219BF7B04();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v18 = v6;
    v36 = a1;
    sub_219BDBD34();
    LOBYTE(v38) = 0;
    sub_2189A1FDC(&unk_280EE9C70, MEMORY[0x277CC9578]);
    sub_219BE2C94();
    v19 = v14;
    sub_2189A1CCC();
    v21 = v20;
    LOBYTE(v38) = 1;
    sub_2189A1FDC(&qword_280EE7DA8, sub_2189A1CCC);
    sub_219BE2C94();
    v33 = v9;
    v34 = v19;
    v23 = *(v21 - 8);
    if ((*(v23 + 48))(v18, 1, v21) == 1)
    {
      sub_218710154(v18, &qword_280EE7D98, sub_2189A1CCC);
      v32 = 0;
    }

    else
    {
      v32 = sub_219BE1E44();
      (*(v23 + 8))(v18, v21);
    }

    sub_219BF3354();
    v37 = 2;
    sub_2189A1FDC(&qword_280E901A8, MEMORY[0x277D33D78]);
    v24 = v11;
    sub_219BE2C94();
    v31 = v38;
    v25 = v36;
    sub_219BF2424();
    v37 = 3;
    sub_2189A1FDC(&qword_280E904F8, MEMORY[0x277D33840]);
    sub_219BE2C94();
    v36 = v38;
    sub_219BEE5B4();
    LOBYTE(v38) = 4;
    sub_2189A1FDC(&qword_280E91B88, MEMORY[0x277D32028]);
    sub_219BE2C94();
    type metadata accessor for TagFeedConfig();
    v16 = swift_allocObject();
    v26 = MEMORY[0x277CC9578];
    v27 = v33;
    sub_21872A89C(v33, v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_publishDate, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (v32)
    {
      v28 = v32;
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
    }

    sub_218710154(v27, &qword_280EE9C40, v26);
    (*(v12 + 8))(v34, v24);
    *(v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_groups) = v28;
    *(v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_background) = v31;
    v29 = v35;
    *(v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_theme) = v36;
    sub_2189A1E30(v29, v16 + OBJC_IVAR____TtC7NewsUI213TagFeedConfig_metadata);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  return v16;
}

void sub_2189A1CCC()
{
  if (!qword_280EE7DA0)
  {
    sub_2189A1D34();
    sub_2189A1D88();
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7DA0);
    }
  }
}

unint64_t sub_2189A1D34()
{
  result = qword_280ED2860;
  if (!qword_280ED2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2860);
  }

  return result;
}

unint64_t sub_2189A1D88()
{
  result = qword_280ED2870;
  if (!qword_280ED2870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2870);
  }

  return result;
}

unint64_t sub_2189A1DDC()
{
  result = qword_280EDD778[0];
  if (!qword_280EDD778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDD778);
  }

  return result;
}

uint64_t sub_2189A1E30(uint64_t a1, uint64_t a2)
{
  sub_2186DD004(0, &qword_280E91B80, MEMORY[0x277D32028]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2189A1EB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189A1DDC();
    v7 = a3(a1, &type metadata for TagFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2189A1F14()
{
  if (!qword_27CC0BB78)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BB78);
    }
  }
}

unint64_t sub_2189A1F64()
{
  result = qword_27CC0BB80;
  if (!qword_27CC0BB80)
  {
    sub_2189A1F14();
    sub_2189A1D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BB80);
  }

  return result;
}

uint64_t sub_2189A1FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MagazineGridModelEdit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_2189A20C8()
{
  result = qword_27CC0BB98;
  if (!qword_27CC0BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BB98);
  }

  return result;
}

unint64_t sub_2189A2120()
{
  result = qword_280EDD768;
  if (!qword_280EDD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDD768);
  }

  return result;
}

unint64_t sub_2189A2178()
{
  result = qword_280EDD770;
  if (!qword_280EDD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDD770);
  }

  return result;
}

uint64_t sub_2189A21CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x446873696C627570 && a2 == 0xEB00000000657461;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370756F7267 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_2189A2380(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v24 = sub_219BE0154();
  v23[0] = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A26FC();
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDCC14();
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(v23 - v14, a1, v13);
  if (swift_dynamicCast())
  {
    (*(v10 + 8))(v12, v9);
    v16 = sub_219BDCC04();
    v17 = sub_219BDD084();
    v19 = v18;

    if (!v3)
    {
      sub_2189A2790(&qword_280EE84A0, MEMORY[0x277D2E368]);
      v20 = v24;
      sub_219BE1974();
      sub_2186C6190(v17, v19);
      (*(v23[0] + 32))(a3, v7, v20);
      v21 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  else
  {
    v22 = type metadata accessor for EngagementEvent();
    (*(*(v22 - 8) + 56))(a3, 1, 1, v22);
  }
}

void sub_2189A26FC()
{
  if (!qword_280EE8F60)
  {
    sub_219BE0164();
    sub_2189A2790(&qword_280EE8498, MEMORY[0x277D2E378]);
    v0 = sub_219BDCC14();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE8F60);
    }
  }
}

uint64_t sub_2189A2790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189A2800@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A2CA0(0, &qword_280E8C730, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A2C4C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189A2A48(uint64_t a1)
{
  v2 = sub_2189A2C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189A2A84(uint64_t a1)
{
  v2 = sub_2189A2C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189A2AD8(void *a1)
{
  sub_2189A2CA0(0, &qword_280E8C1D8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189A2C4C();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2189A2C4C()
{
  result = qword_280E96A78[0];
  if (!qword_280E96A78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E96A78);
  }

  return result;
}

void sub_2189A2CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189A2C4C();
    v7 = a3(a1, &type metadata for SeenContentMarkTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189A2D18()
{
  result = qword_27CC0BBA0;
  if (!qword_27CC0BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BBA0);
  }

  return result;
}

unint64_t sub_2189A2D70()
{
  result = qword_280E96A68;
  if (!qword_280E96A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96A68);
  }

  return result;
}

unint64_t sub_2189A2DC8()
{
  result = qword_280E96A70;
  if (!qword_280E96A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96A70);
  }

  return result;
}

uint64_t sub_2189A2E1C(uint64_t a1)
{
  sub_2187335C8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([*(a1 + 24) useOfflineMode] && (__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)), (sub_219BEED44() & 1) != 0))
  {

    sub_219BE20E4();

    v5 = type metadata accessor for AudioFeedTrack(0);
    if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
    {
      sub_2189A3090(v4, sub_2187335C8);
      v6 = 0;
    }

    else
    {
      v8 = [*v4 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      sub_2189A3090(v4, type metadata accessor for AudioFeedTrack);
      v12 = [*(a1 + 72) listenableArticleIDs];
      v13 = sub_219BF5D44();

      v6 = sub_2188537B8(v9, v11, v13);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_2189A3014()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189A3090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189A30F0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2189A3130(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_280EE9A88 != -1)
  {
    swift_once();
  }

  sub_2189A3378(&unk_280E95818);
  sub_219BDC7D4();
  v4 = *(v3 + OBJC_IVAR___TSNotificationSettings_scheduledDeliverySetting);
  if (v6 != v4)
  {
    [*(a2 + 16) deviceDigestModeDidUpdateToDigestMode_];
  }

  sub_2189A3378(&qword_280E95810);
  return sub_219BDCA54();
}

uint64_t sub_2189A3378(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NotificationScheduledDeliveryModeReporter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2189A33DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2189A3424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189A3484(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v70 = a3;
  v71 = a2;
  sub_2189A3EF0(0, &qword_27CC0BBB8, MEMORY[0x277D6DF88]);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = v57 - v5;
  sub_2189A3E04();
  MEMORY[0x28223BE20](v6 - 8);
  v61 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3EF0(0, &qword_27CC0BBE0, MEMORY[0x277D6EC60]);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x28223BE20](v8);
  v64 = v57 - v9;
  sub_2189A3FB0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3ED0(0);
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x28223BE20](v13);
  v60 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SportsFavoritesModel();
  MEMORY[0x28223BE20](v81);
  v79 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218972E2C();
  v78 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v77 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A407C();
  v80 = v19;
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v3 + 64);
  v24 = sub_219A011EC(*(v3 + 56), v23);
  v25 = *(v24 + 16);
  if (v25)
  {
    v58 = v23;
    v59 = v12;
    v82 = MEMORY[0x277D84F90];
    sub_218C342F8(0, v25, 0);
    v26 = v82;
    v28 = *(v17 + 16);
    v27 = v17 + 16;
    v76 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v57[1] = v24;
    v30 = v24 + v29;
    v31 = *(v27 + 56);
    v73 = (v27 - 8);
    v74 = v31;
    v72 = v20 + 32;
    v75 = v27;
    v32 = v28;
    do
    {
      v33 = v77;
      v34 = v78;
      v32(v77, v30, v78);
      v32(v79, v33, v34);
      sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
      sub_219BE5FB4();
      (*v73)(v33, v34);
      v82 = v26;
      v36 = *(v26 + 16);
      v35 = *(v26 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_218C342F8(v35 > 1, v36 + 1, 1);
        v26 = v82;
      }

      *(v26 + 16) = v36 + 1;
      (*(v20 + 32))(v26 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v36, v22, v80);
      v30 += v74;
      --v25;
    }

    while (v25);

    v23 = v58;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  v82 = v23;
  v37 = sub_2189A4110(&qword_27CC0BBF8, sub_2189A407C);
  v38 = sub_2189A4110(&qword_27CC0BC00, sub_2189A407C);

  MEMORY[0x21CEB9170](v26, v80, v37, v38);
  sub_2189A3D68();
  sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
  v39 = v60;
  sub_219BE6924();
  sub_2189A4158();
  v40 = v62;
  v41 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_219C09BA0;
  v43 = v63;
  (*(v40 + 16))(v42 + v41, v39, v63);
  v44 = sub_2189A4110(&qword_27CC0BBD0, sub_2189A3ED0);
  v45 = sub_2189A4110(&qword_27CC0BBD8, sub_2189A3ED0);
  MEMORY[0x21CEB9150](v42, v43, v44, v45);
  v46 = v64;
  sub_219BEB2D4();
  sub_2189A41B0();
  v48 = *(v47 + 48);
  v50 = v65;
  v49 = v66;
  v51 = v67;
  (*(v65 + 16))(v67, v46, v66);
  v52 = *MEMORY[0x277D6D868];
  v53 = sub_219BE6DF4();
  (*(*(v53 - 8) + 104))(&v51[v48], v52, v53);
  v55 = v68;
  v54 = v69;
  (*(v68 + 104))(v51, *MEMORY[0x277D6DF70], v69);
  v71(v51);
  (*(v55 + 8))(v51, v54);
  (*(v50 + 8))(v46, v49);
  return (*(v40 + 8))(v39, v43);
}

unint64_t sub_2189A3D10()
{
  result = qword_27CC0BBA8;
  if (!qword_27CC0BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BBA8);
  }

  return result;
}

unint64_t sub_2189A3D68()
{
  result = qword_27CC0BBB0;
  if (!qword_27CC0BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BBB0);
  }

  return result;
}

void sub_2189A3E04()
{
  if (!qword_27CC0BBC0)
  {
    sub_2189A3ED0(255);
    sub_2189A4110(&qword_27CC0BBD0, sub_2189A3ED0);
    sub_2189A4110(&qword_27CC0BBD8, sub_2189A3ED0);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BBC0);
    }
  }
}

void sub_2189A3EF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SportsFavoritesSectionDescriptor;
    v8[1] = type metadata accessor for SportsFavoritesModel();
    v8[2] = sub_2189A3D68();
    v8[3] = sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189A3FB0()
{
  if (!qword_27CC0BBE8)
  {
    sub_2189A407C();
    sub_2189A4110(&qword_27CC0BBF8, sub_2189A407C);
    sub_2189A4110(&qword_27CC0BC00, sub_2189A407C);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BBE8);
    }
  }
}

void sub_2189A407C()
{
  if (!qword_27CC0BBF0)
  {
    type metadata accessor for SportsFavoritesModel();
    sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BBF0);
    }
  }
}

uint64_t sub_2189A4110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2189A4158()
{
  if (!qword_27CC0BC08)
  {
    sub_2189A3ED0(255);
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BC08);
    }
  }
}

void sub_2189A41B0()
{
  if (!qword_27CC0BC10)
  {
    sub_2189A3EF0(255, &qword_27CC0BBE0, MEMORY[0x277D6EC60]);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0BC10);
    }
  }
}

void sub_2189A4310(void *a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_219BF53D4();

  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v12, &v13);
    type metadata accessor for TagFeedViewController();
    swift_dynamicCast();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    v9[2] = v11;
    v9[3] = sub_2189A4488;
    v9[4] = v8;

    v10 = v11;

    sub_219BE3494();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189A44C0(uint64_t a1)
{
  sub_2189A4F8C(0, &qword_280E907A8, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_219BF1584();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(v1 + 168) useOfflineMode];
  if (result)
  {
    sub_219BF1B74();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_2189A4FF4(v5);
      return 0;
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      __swift_project_boxed_opaque_existential_1((v1 + 128), *(v1 + 152));
      v12 = sub_219BF4994();
      sub_2189A46C0(a1, v12);

      (*(v7 + 8))(v10, v6);
      return 1;
    }
  }

  return result;
}

void sub_2189A46C0(uint64_t a1, void *a2)
{
  sub_2187C4270(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_219BE92E4();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = sub_219BE9EC4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v2 + 56);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = [Strong presentedViewController], v18, !v19) || (objc_opt_self(), v20 = swift_dynamicCastObjCClass(), v19, !v20))
  {
    v48[0] = a2;
    v49 = 2;
    v21 = a2;
    v22 = sub_218CF86B0(a1, v48);
    sub_2189A4E34(v48);
    if (v22)
    {
      v39 = v22;
      v40 = v16;
      v41 = v14;
      v42 = v7;
      if (qword_280E8D928 != -1)
      {
        swift_once();
      }

      sub_2187C4270(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C09BA0;
      sub_2189A4F8C(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
      sub_219BEA7A4();
      v24 = v48[0];
      v47 = v48[0];
      v25 = NewsActivity2.identifier.getter();
      v27 = v26;
      *(v23 + 56) = MEMORY[0x277D837D0];
      *(v23 + 64) = sub_2186FC3BC();
      *(v23 + 32) = v25;
      *(v23 + 40) = v27;
      sub_218932F9C(v24);
      sub_219BF6214();
      sub_219BE5314();

      v28 = *MEMORY[0x277D6E528];
      v29 = sub_219BE92D4();
      v30 = *(*(v29 - 8) + 104);
      v30(v13, v28, v29);
      v31 = *MEMORY[0x277D6E518];
      v32 = v45;
      v33 = *(v44 + 104);
      v33(v13, v31, v45);
      v30(v11, v28, v29);
      v33(v11, v31, v32);
      v34 = v40;
      sub_219BE9EB4();
      v35 = sub_219BE94F4();
      v36 = v42;
      (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
      v37 = v39;
      sub_21909BA64(v39, v34, v36);

      sub_2189A4F1C(v36, &unk_280EE4470, MEMORY[0x277D6E658]);
      (*(v46 + 8))(v34, v41);
    }
  }
}

uint64_t sub_2189A4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2187C4270(0, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_219BF2CB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A4E88(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2189A4F1C(v8, &qword_280E902A0, MEMORY[0x277D33BC8]);
    v13 = *MEMORY[0x277D33988];
    v14 = sub_219BF2624();
    (*(*(v14 - 8) + 104))(a3, v13, v14);
    v15 = *MEMORY[0x277D33980];
    v16 = sub_219BF2634();
    return (*(*(v16 - 8) + 104))(a3, v15, v16);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_project_boxed_opaque_existential_1((a2 + 488), *(a2 + 512));
    sub_219BF4794();
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_2189A4E88(uint64_t a1, uint64_t a2)
{
  sub_2187C4270(0, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189A4F1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187C4270(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2189A4F8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_2189A4FF4(uint64_t a1)
{
  sub_2189A4F8C(0, &qword_280E907A8, sub_2186FB77C, &type metadata for ContentUnavailableOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189A5088()
{
  v1 = OBJC_IVAR____TtC7NewsUI225SportsScoreSortingContext_nowDate;
  v2 = sub_219BDBD34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsScoreSortingContext()
{
  result = qword_280EBCEE0;
  if (!qword_280EBCEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189A51A8()
{
  result = sub_219BDBD34();
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

uint64_t sub_2189A5248@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE60E0);
  result = sub_219BE1E34();
  if (v9)
  {
    v4 = type metadata accessor for LiveActivityWebEmbedAttributesProvider();
    v5 = objc_allocWithZone(v4);
    sub_218718690(v8, v5 + OBJC_IVAR____TtC7NewsUI238LiveActivityWebEmbedAttributesProvider_liveActivityManager);
    v7.receiver = v5;
    v7.super_class = v4;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
    a2[1] = &off_282A41DA8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189A5318(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E94D90);
  sub_219BE1E34();
  result = v2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2189A5390()
{
  type metadata accessor for LiveActivityWebEmbedMessageHandler();
  sub_219BE2904();
}

uint64_t sub_2189A53F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE60E0);
  result = sub_219BE1E34();
  if (v7)
  {
    v2 = type metadata accessor for LiveActivityWebEmbedMessageHandler();
    v3 = objc_allocWithZone(v2);
    sub_218718690(v6, v3 + OBJC_IVAR____TtC7NewsUI234LiveActivityWebEmbedMessageHandler_liveActivityManager);
    v5.receiver = v3;
    v5.super_class = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2189A54B4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for LiveActivityWebEmbedMessageHandler();
  v3 = sub_219BE1E24();
  if (v3 && (v4 = v3, v5 = sub_219BF53D4(), , [a1 addMessageHandler:v4 name:v5], v4, v5, __swift_project_boxed_opaque_existential_1(a2, a2[3]), (v6 = sub_219BE1E24()) != 0))
  {
    v7 = v6;
    v8 = sub_219BF53D4();

    [a1 addMessageHandler:v7 name:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189A562C(uint64_t a1)
{
  sub_2189A5688();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189A5688()
{
  if (!qword_27CC0BDC8)
  {
    sub_2186C709C(255, &qword_280EE05D0);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BDC8);
    }
  }
}

id keypath_getTm@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 respondsToSelector_];
  if (v6)
  {
    result = [v5 *a2];
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  *(a3 + 8) = (v6 & 1) == 0;
  return result;
}

uint64_t sub_2189A5788(uint64_t a1)
{
  v2 = v1;
  v44 = sub_219BDBD34();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v44);
  v45 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v50 = v41 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v48 = v41 - v10;
  MEMORY[0x28223BE20](v9);
  v47 = v41 - v11;
  v12 = sub_219BE12A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BE1294();
  v46 = *(v43 - 8);
  v16 = *(v46 + 64);
  v17 = MEMORY[0x28223BE20](v43);
  v49 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v41 - v18;
  v20 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  (*(v13 + 16))(v15, a1, v12);
  v21 = v19;
  v42 = v19;
  sub_219BE1284();
  v22 = OBJC_IVAR____TtC7NewsUI220OnboardingInteractor_personalizedAdsExposureStart;
  swift_beginAccess();
  v23 = *(v4 + 16);
  v24 = v2 + v22;
  v25 = v47;
  v26 = v44;
  v23(v47, v24, v44);
  v27 = v48;
  sub_219BDBD24();
  v41[1] = *(*v20 + 16);
  v23(v50, v25, v26);
  v28 = v45;
  v23(v45, v27, v26);
  v29 = v46;
  v30 = v21;
  v31 = v43;
  (*(v46 + 16))(v49, v30, v43);
  v32 = *(v4 + 80);
  v33 = (v32 + 16) & ~v32;
  v34 = (v5 + v32 + v33) & ~v32;
  v35 = (v5 + *(v29 + 80) + v34) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v37 = *(v4 + 32);
  v37(v36 + v33, v50, v26);
  v37(v36 + v34, v28, v26);
  v38 = v46;
  (*(v46 + 32))(v36 + v35, v49, v31);
  sub_219BDD154();

  v39 = *(v4 + 8);
  v39(v48, v26);
  v39(v47, v26);
  return (*(v38 + 8))(v42, v31);
}

uint64_t sub_2189A5BDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC7NewsUI220OnboardingInteractor_personalizedAdsExposureStart;
  v2 = sub_219BDBD34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnboardingInteractor()
{
  result = qword_280ECE270;
  if (!qword_280ECE270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2189A5CD4()
{
  result = sub_219BDBD34();
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

uint64_t sub_2189A5D70(uint64_t a1)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_218718690(a1, v10);
  sub_21878A704();
  type metadata accessor for OnboardingPersonalizedAdsStep();
  result = swift_dynamicCast();
  if (result)
  {

    sub_219BDBD24();
    v8 = OBJC_IVAR____TtC7NewsUI220OnboardingInteractor_personalizedAdsExposureStart;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v8, v6, v3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2189A5EAC(uint64_t a1)
{
  v2 = sub_219BE12A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7 - 8];
  sub_218718690(a1, v14);
  sub_21878A704();
  type metadata accessor for OnboardingPersonalizedAdsStep();
  result = swift_dynamicCast();
  if (result)
  {
    v10 = *(v13 + 56);
    v11 = *(v3 + 104);
    if (v10 == 2)
    {
      v11(v6, *MEMORY[0x277D2F0E8], v2);
      sub_2189A5788(v6);

      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      if (v10)
      {
        v12 = MEMORY[0x277D2F0E0];
      }

      else
      {
        v12 = MEMORY[0x277D2F0F0];
      }

      v11(v8, *v12, v2);
      sub_2189A5788(v8);

      return (*(v3 + 8))(v8, v2);
    }
  }

  return result;
}

unint64_t sub_2189A606C(uint64_t a1)
{
  result = sub_2189A6094();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2189A6094()
{
  result = qword_280ECE288;
  if (!qword_280ECE288)
  {
    type metadata accessor for OnboardingInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE288);
  }

  return result;
}

uint64_t sub_2189A60EC(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = *(sub_219BE1294() - 8);
  v9 = v1 + ((v7 + v6 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_219A659C0(a1, v1 + v5, v1 + v7, v9);
}

unint64_t sub_2189A61F0()
{
  v1 = v0;
  sub_219BF7314();

  v2 = [v0 _identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x3A656C746974202CLL, 0xE900000000000020);
  v6 = [v1 title];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_2189A632C()
{
  v1 = v0;
  sub_219BF7314();

  v2 = [v0 _identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x3A656C746974202CLL, 0xE900000000000020);
  v6 = [v1 title];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](0x72646C696863202CLL, 0xEC000000203A6E65);
  v10 = [v1 _children];
  v11 = sub_2187C0264();
  v12 = sub_219BF5924();

  v13 = MEMORY[0x21CECC6D0](v12, v11);
  v15 = v14;

  MEMORY[0x21CECC330](v13, v15);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000014;
}

id sub_2189A6514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabGroup();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2189A6548(void *a1, void (*a2)(uint64_t))
{
  type metadata accessor for FloatingTabAction();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    if (*(v4 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled) == 1)
    {
      v5 = v4;
      v6 = a1;
      a2(v5);
    }
  }

  else
  {
    a2(a1);
  }
}

id sub_2189A660C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_219BF53D4();

  return v5;
}

unint64_t sub_2189A667C()
{
  v1 = v0;
  sub_219BF7314();

  v2 = [v0 _identifier];
  v3 = sub_219BF5414();
  v5 = v4;

  MEMORY[0x21CECC330](v3, v5);

  MEMORY[0x21CECC330](0x3A656C746974202CLL, 0xE900000000000020);
  v6 = [v1 title];
  v7 = sub_219BF5414();
  v9 = v8;

  MEMORY[0x21CECC330](v7, v9);

  MEMORY[0x21CECC330](0x62616E457369202CLL, 0xED0000203A64656CLL);
  if (*(v1 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v10, v11);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0xD000000000000015;
}

id sub_2189A6810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v8[OBJC_IVAR____TtC7NewsUI217FloatingTabAction__isEnabled] = 1;
  v13 = sub_219BF53D4();

  v14 = sub_219BF53D4();

  aBlock[4] = a6;
  aBlock[5] = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218B66540;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  v18.receiver = v8;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithIdentifier_title_image_handler_, v13, v14, a5, v15);

  _Block_release(v15);

  return v16;
}

uint64_t sub_2189A6A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a2;
  v31 = a1;
  v32 = a3;
  v5 = sub_219BEB084();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A717C(0, &qword_280EE5B08, MEMORY[0x277D6D478]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - v9;
  v29 = sub_219BE7C84();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF3874();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MagazineSectionBarLayoutOptions();
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A71D0(v30, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v29;
    (*(v11 + 32))(v13, v20, v29);
    sub_219BF0DA4();
    v22 = sub_2189A6E68(v10);
    *v7 = MEMORY[0x21CECCDE0](v22);
    *(v7 + 1) = v23;
    *(v7 + 2) = v24;
    *(v7 + 3) = v25;
    (*(v27 + 104))(v7, *MEMORY[0x277D6EC30], v28);
    sub_219BE6064();
    swift_allocObject();
    sub_219BE6044();
    __swift_project_boxed_opaque_existential_1(v4 + 7, v4[10]);
    sub_219BEA174();

    (*(v11 + 8))(v13, v21);
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    __swift_project_boxed_opaque_existential_1(v4 + 2, v4[5]);
    sub_219BF4ED4();
    (*(v15 + 8))(v17, v14);
  }

  type metadata accessor for MagazineSectionBarLayoutAttributes();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2189A6E68@<X0>(uint64_t a1@<X8>)
{
  sub_219BF0DB4();
  if (v15)
  {
    sub_2186CB1F0(&v14, v16);
    sub_219BF0DC4();
    if (v13)
    {
      sub_2186CB1F0(&v12, &v14);
      sub_219BF0DD4();
      if (v11)
      {
        sub_2186CB1F0(&v10, &v12);
        sub_218718690(v16, &v10);
        sub_218718690(&v14, v9);
        sub_218718690(&v12, &v8);
        sub_219BE79C4();
        __swift_destroy_boxed_opaque_existential_1(&v12);
        __swift_destroy_boxed_opaque_existential_1(&v14);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v2 = *MEMORY[0x277D6D468];
        v3 = sub_219BE6034();
        v4 = *(v3 - 8);
        (*(v4 + 104))(a1, v2, v3);
        return (*(v4 + 56))(a1, 0, 1, v3);
      }

      __swift_destroy_boxed_opaque_existential_1(&v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v6 = &v10;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v16);
      v6 = &v12;
    }
  }

  else
  {
    v6 = &v14;
  }

  sub_2189A70A0(v6);
  v7 = sub_219BE6034();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_2189A703C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_2189A70A0(uint64_t a1)
{
  sub_2189A717C(0, &qword_280EE5A68, sub_2189A7118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2189A7118()
{
  result = qword_280EE5A70;
  if (!qword_280EE5A70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5A70);
  }

  return result;
}

void sub_2189A717C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2189A71D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutOptions();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189A7234()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9070);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0BDE0 = result;
  return result;
}

uint64_t sub_2189A7490()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[1] = 0;
  sub_2186C6588(0, &qword_280EE9060);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9A90 = result;
  return result;
}

uint64_t sub_2189A76A4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9A30 = result;
  return result;
}

uint64_t sub_2189A7894()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0BDE8 = result;
  return result;
}

uint64_t sub_2189A7AAC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060);
  sub_219BF5414();
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294();
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0EE20;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 300;
  sub_219BDC954();
  v10[0] = 3600;
  sub_219BDC954();
  v10[0] = 0x7FFFFFFFLL;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC0BDF0 = result;
  return result;
}

uint64_t sub_2189A7E18()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060);
  v11[1] = v8;
  sub_219BF5414();
  v13 = 0;
  *v7 = sub_219BF5414();
  v7[1] = v9;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294();
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0EE30;
  v12 = 0;
  sub_219BDC954();
  v12 = 60;
  sub_219BDC954();
  v12 = 300;
  sub_219BDC954();
  v12 = 1800;
  sub_219BDC954();
  v12 = 3600;
  sub_219BDC954();
  v12 = 21600;
  sub_219BDC954();
  v12 = 0x7FFFFFFFLL;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC0BDF8 = result;
  return result;
}

uint64_t sub_2189A8224(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

void sub_2189A8294()
{
  if (!qword_27CC0BE00)
  {
    sub_2189A82EC();
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BE00);
    }
  }
}

void sub_2189A82EC()
{
  if (!qword_27CC0BE08)
  {
    v0 = sub_219BDC964();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BE08);
    }
  }
}

void *sub_2189A833C()
{
  v1 = v0;
  sub_2188422B8(0, &unk_27CC0BE30, type metadata accessor for Shortcut);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v26 = type metadata accessor for Shortcut();
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v21 = &v20 - v8;
  if (qword_27CC084B0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    sub_2189AD370(&qword_27CC0BE10, v7, type metadata accessor for CachedShortcutsManager);
    sub_219BDC7D4();
    v9 = v27;
    if (qword_27CC084B8 != -1)
    {
      swift_once();
    }

    sub_219BDC7D4();
    v10 = *(v9 + 16);
    if (!v10 || !*(v27 + 16))
    {
      break;
    }

    v23 = v28;
    v24 = v27;
    v11 = 0;
    v12 = (v22 + 48);
    v13 = (v9 + 40);
    v14 = MEMORY[0x277D84F90];
    v20 = v1;
    while (v11 < *(v9 + 16))
    {
      v15 = *v13;
      v27 = *(v13 - 1);
      v28 = v15;

      sub_2189A875C(v23, v1, v4);

      if ((*v12)(v4, 1, v26) == 1)
      {
        sub_218864AB4(v4, &unk_27CC0BE30, type metadata accessor for Shortcut);
      }

      else
      {
        v16 = v21;
        sub_2189AD42C(v4, v21, type metadata accessor for Shortcut);
        sub_2189AD42C(v16, v25, type metadata accessor for Shortcut);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2191F6B2C(0, v14[2] + 1, 1, v14);
        }

        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17 >> 1)
        {
          v14 = sub_2191F6B2C(v17 > 1, v18 + 1, 1, v14);
        }

        v14[2] = v18 + 1;
        sub_2189AD42C(v25, v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, type metadata accessor for Shortcut);
        v1 = v20;
      }

      ++v11;
      v13 += 2;
      if (v10 == v11)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_18:

  return v14;
}

uint64_t sub_2189A875C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v295 = a1;
  v287 = a2;
  v296 = a3;
  v277 = _s14PuzzleFeedDataVMa(0);
  MEMORY[0x28223BE20](v277);
  v284 = &v258 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = _s10PuzzleDataVMa(0);
  MEMORY[0x28223BE20](v276);
  v283 = &v258 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s7URLDataVMa();
  MEMORY[0x28223BE20](v5 - 8);
  v286 = &v258 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v293 = &v258 - v8;
  sub_2188422B8(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8);
  v274 = &v258 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v273 = &v258 - v12;
  MEMORY[0x28223BE20](v13);
  v271 = &v258 - v14;
  MEMORY[0x28223BE20](v15);
  v270 = &v258 - v16;
  v294 = sub_219BDB954();
  v290 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v266 = &v258 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v275 = &v258 - v19;
  MEMORY[0x28223BE20](v20);
  v265 = &v258 - v21;
  MEMORY[0x28223BE20](v22);
  v262 = &v258 - v23;
  MEMORY[0x28223BE20](v24);
  v264 = &v258 - v25;
  MEMORY[0x28223BE20](v26);
  v272 = &v258 - v27;
  MEMORY[0x28223BE20](v28);
  v263 = &v258 - v29;
  MEMORY[0x28223BE20](v30);
  v261 = &v258 - v31;
  v269 = _s9IssueDataVMa(0);
  MEMORY[0x28223BE20](v269);
  v282 = &v258 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = _s7TagDataVMa(0);
  MEMORY[0x28223BE20](v268);
  v281 = &v258 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v285 = (&v258 - v35);
  v36 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v36 - 8);
  v291 = (&v258 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2188422B8(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  MEMORY[0x28223BE20](v38 - 8);
  v267 = &v258 - v39;
  v40 = _s12HeadlineDataVMa(0);
  MEMORY[0x28223BE20](v40 - 8);
  v280 = &v258 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s5ModelOMa();
  MEMORY[0x28223BE20](v42);
  v44 = &v258 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ShortcutCategory();
  v292 = *(v45 - 8);
  MEMORY[0x28223BE20](v45 - 8);
  v288 = &v258 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v279 = &v258 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v258 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v258 - v53;
  sub_2188422B8(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v258 - v56;
  v58 = type metadata accessor for CuratedShortcut(0);
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v289 = &v258 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v278 = &v258 - v62;
  MEMORY[0x28223BE20](v63);
  v65 = (&v258 - v64);

  sub_21993538C(v57);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_218864AB4(v57, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v66 = sub_219BE5434();
    __swift_project_value_buffer(v66, qword_280F62538);
    v67 = sub_219BE5414();
    v68 = sub_219BF61E4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2186C1000, v67, v68, "Unable to convert cached string data to curation shortcut", v69, 2u);
      MEMORY[0x21CECF960](v69, -1, -1);
    }

    goto LABEL_21;
  }

  sub_2189AD42C(v57, v65, type metadata accessor for CuratedShortcut);
  v70 = v295;
  v71 = v65;
  if (!*(v295 + 16) || (v72 = sub_21870F700(*v65, v65[1]), (v73 & 1) == 0))
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v97 = sub_219BE5434();
    __swift_project_value_buffer(v97, qword_280F62538);
    v98 = sub_219BE5414();
    v99 = sub_219BF61E4();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 0;
      _os_log_impl(&dword_2186C1000, v98, v99, "Unable to determine category for shortcut from cached config resource", v100, 2u);
      MEMORY[0x21CECF960](v100, -1, -1);
    }

    goto LABEL_20;
  }

  sub_2189AD308(*(v70 + 56) + *(v292 + 72) * v72, v51, type metadata accessor for ShortcutCategory);
  sub_2189AD42C(v51, v54, type metadata accessor for ShortcutCategory);
  sub_2189AD308(v65 + *(v58 + 20), v44, _s5ModelOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v260 = v65;
    v259 = v54;
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v178 = v293;
        sub_2189AD42C(v44, v293, _s7URLDataVMa);
        v179 = v289;
        sub_2189AD308(v65, v289, type metadata accessor for CuratedShortcut);
        v180 = v288;
        sub_2189AD308(v54, v288, type metadata accessor for ShortcutCategory);
        v181 = v290;
        (*(v290 + 16))(v286, v178, v294);
        v88 = v296;
        sub_2189AD308(v180, v296, type metadata accessor for ShortcutCategory);
        v182 = v291;
        sub_21993568C(v291);
        v183 = sub_21993639C();
        v185 = v184;
        sub_2189AD2A8(v182, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v180, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v179, type metadata accessor for CuratedShortcut);
        sub_2189AD2A8(v178, _s7URLDataVMa);
        sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
        v186 = _s8ResolvedVMa();
        v187 = (v88 + *(v186 + 24));
        *v187 = v183;
        v187[1] = v185;
        (*(v181 + 32))(v88 + *(v186 + 20), v286, v294);
        _s13ResolvedModelOMa();
        swift_storeEnumTagMultiPayload();
        goto LABEL_46;
      }

      v78 = v283;
      sub_2189AD42C(v44, v283, _s10PuzzleDataVMa);
      v123 = v273;
      sub_2188383F8(v78 + *(v276 + 20), v273);
      v124 = v290;
      v125 = v294;
      if ((*(v290 + 48))(v123, 1, v294) != 1)
      {
        v217 = v71;
        v292 = *(v124 + 32);
        v295 = v124 + 32;
        v218 = v262;
        (v292)(v262, v123, v125);
        v219 = v289;
        sub_2189AD308(v217, v289, type metadata accessor for CuratedShortcut);
        v220 = v288;
        sub_2189AD308(v54, v288, type metadata accessor for ShortcutCategory);
        (*(v124 + 16))(v293, v218, v125);
        v221 = v296;
        sub_2189AD308(v220, v296, type metadata accessor for ShortcutCategory);
        v222 = v291;
        sub_21993568C(v291);
        v223 = sub_21993639C();
        v287 = v224;
        sub_2189AD2A8(v222, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v220, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v219, type metadata accessor for CuratedShortcut);
        v225 = v218;
        v226 = v294;
        (*(v124 + 8))(v225, v294);
        sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
        v227 = _s8ResolvedVMa();
        v228 = (v221 + *(v227 + 24));
        v229 = v287;
        *v228 = v223;
        v228[1] = v229;
        (v292)(v221 + *(v227 + 20), v293, v226);
        _s13ResolvedModelOMa();
        swift_storeEnumTagMultiPayload();
        sub_2189AD2A8(v283, _s10PuzzleDataVMa);
        sub_2189AD2A8(v260, type metadata accessor for CuratedShortcut);
        v188 = type metadata accessor for Shortcut();
        swift_storeEnumTagMultiPayload();
        v102 = *(*(v188 - 8) + 56);
        v103 = v221;
        goto LABEL_52;
      }

      sub_218864AB4(v123, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v126 = objc_opt_self();
      v127 = sub_219BF53D4();
      v128 = [v126 fc:v127 NewsURLForTagID:?];

      if (v128)
      {
        v129 = v265;
        sub_219BDB8B4();

        v130 = v289;
        sub_2189AD308(v71, v289, type metadata accessor for CuratedShortcut);
        v131 = v288;
        sub_2189AD308(v54, v288, type metadata accessor for ShortcutCategory);
        (*(v124 + 16))(v293, v129, v125);
        v88 = v296;
        sub_2189AD308(v131, v296, type metadata accessor for ShortcutCategory);
        v132 = v291;
        sub_21993568C(v291);
        v133 = sub_21993639C();
        v135 = v134;
        sub_2189AD2A8(v132, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v131, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v130, type metadata accessor for CuratedShortcut);
        v136 = v294;
        (*(v124 + 8))(v265, v294);
        sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
        v137 = _s8ResolvedVMa();
        v138 = (v88 + *(v137 + 24));
        *v138 = v133;
        v138[1] = v135;
        (*(v124 + 32))(v88 + *(v137 + 20), v293, v136);
        _s13ResolvedModelOMa();
        swift_storeEnumTagMultiPayload();
        v95 = _s10PuzzleDataVMa;
        v96 = v283;
        goto LABEL_44;
      }

      sub_2189AD2A8(v54, type metadata accessor for ShortcutCategory);
      v257 = _s10PuzzleDataVMa;
      goto LABEL_61;
    }

    v75 = v54;
    v76 = v294;
    v77 = v290;
    if (EnumCaseMultiPayload == 3)
    {
      v78 = v281;
      sub_2189AD42C(v44, v281, _s7TagDataVMa);
      v79 = v271;
      sub_2188383F8(v78 + *(v268 + 20), v271);
      if ((*(v77 + 48))(v79, 1, v76) == 1)
      {
        sub_218864AB4(v79, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v80 = objc_opt_self();
        v81 = sub_219BF53D4();
        v82 = [v80 fc:v81 NewsURLForTagID:?];

        if (v82)
        {
          v83 = v264;
          sub_219BDB8B4();

          v84 = v289;
          sub_2189AD308(v71, v289, type metadata accessor for CuratedShortcut);
          v85 = v75;
          v86 = v288;
          sub_2189AD308(v85, v288, type metadata accessor for ShortcutCategory);
          v87 = v76;
          (*(v77 + 16))(v293, v83, v76);
          v88 = v296;
          sub_2189AD308(v86, v296, type metadata accessor for ShortcutCategory);
          v89 = v291;
          sub_21993568C(v291);
          v90 = sub_21993639C();
          v92 = v91;
          sub_2189AD2A8(v89, type metadata accessor for CuratedShortcut.Identifier);
          sub_2189AD2A8(v86, type metadata accessor for ShortcutCategory);
          sub_2189AD2A8(v84, type metadata accessor for CuratedShortcut);
          (*(v77 + 8))(v264, v87);
          sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
          v93 = _s8ResolvedVMa();
          v94 = (v88 + *(v93 + 24));
          *v94 = v90;
          v94[1] = v92;
          (*(v77 + 32))(v88 + *(v93 + 20), v293, v87);
          _s13ResolvedModelOMa();
          swift_storeEnumTagMultiPayload();
          v95 = _s7TagDataVMa;
          v96 = v281;
LABEL_44:
          sub_2189AD2A8(v96, v95);
LABEL_46:
          sub_2189AD2A8(v260, type metadata accessor for CuratedShortcut);
          v188 = type metadata accessor for Shortcut();
          swift_storeEnumTagMultiPayload();
          v102 = *(*(v188 - 8) + 56);
          v103 = v88;
LABEL_52:
          v104 = 0;
          v101 = v188;
          return v102(v103, v104, 1, v101);
        }

        sub_2189AD2A8(v75, type metadata accessor for ShortcutCategory);
        v257 = _s7TagDataVMa;
        goto LABEL_61;
      }

      v203 = *(v77 + 32);
      v292 = v77 + 32;
      v295 = v203;
      v204 = v272;
      v203(v272, v79, v76);
      v205 = v289;
      sub_2189AD308(v71, v289, type metadata accessor for CuratedShortcut);
      v206 = v288;
      sub_2189AD308(v75, v288, type metadata accessor for ShortcutCategory);
      (*(v77 + 16))(v293, v204, v76);
      v207 = v296;
      sub_2189AD308(v206, v296, type metadata accessor for ShortcutCategory);
      v208 = v291;
      sub_21993568C(v291);
      v209 = sub_21993639C();
      v211 = v210;
      sub_2189AD2A8(v208, type metadata accessor for CuratedShortcut.Identifier);
      sub_2189AD2A8(v206, type metadata accessor for ShortcutCategory);
      sub_2189AD2A8(v205, type metadata accessor for CuratedShortcut);
      v212 = v294;
      (*(v77 + 8))(v272, v294);
      sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
      v213 = _s8ResolvedVMa();
      v214 = (v207 + *(v213 + 24));
      *v214 = v209;
      v214[1] = v211;
      (v295)(v207 + *(v213 + 20), v293, v212);
      _s13ResolvedModelOMa();
      swift_storeEnumTagMultiPayload();
      v215 = _s7TagDataVMa;
      v216 = v281;
    }

    else
    {
      v78 = v284;
      sub_2189AD42C(v44, v284, _s14PuzzleFeedDataVMa);
      v163 = v274;
      sub_2188383F8(v78 + *(v277 + 20), v274);
      if ((*(v77 + 48))(v163, 1, v76) == 1)
      {
        sub_218864AB4(v163, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v164 = objc_opt_self();
        v165 = sub_219BF53D4();
        v166 = [v164 fc:v165 NewsURLForTagID:?];

        if (v166)
        {
          v167 = v266;
          sub_219BDB8B4();

          v168 = v289;
          sub_2189AD308(v71, v289, type metadata accessor for CuratedShortcut);
          v169 = v75;
          v170 = v288;
          sub_2189AD308(v169, v288, type metadata accessor for ShortcutCategory);
          v171 = v76;
          (*(v77 + 16))(v293, v167, v76);
          v88 = v296;
          sub_2189AD308(v170, v296, type metadata accessor for ShortcutCategory);
          v172 = v291;
          sub_21993568C(v291);
          v173 = sub_21993639C();
          v175 = v174;
          sub_2189AD2A8(v172, type metadata accessor for CuratedShortcut.Identifier);
          sub_2189AD2A8(v170, type metadata accessor for ShortcutCategory);
          sub_2189AD2A8(v168, type metadata accessor for CuratedShortcut);
          (*(v77 + 8))(v266, v171);
          sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
          v176 = _s8ResolvedVMa();
          v177 = (v88 + *(v176 + 24));
          *v177 = v173;
          v177[1] = v175;
          (*(v77 + 32))(v88 + *(v176 + 20), v293, v171);
          _s13ResolvedModelOMa();
          swift_storeEnumTagMultiPayload();
          v95 = _s14PuzzleFeedDataVMa;
          v96 = v284;
          goto LABEL_44;
        }

        sub_2189AD2A8(v75, type metadata accessor for ShortcutCategory);
        v257 = _s14PuzzleFeedDataVMa;
LABEL_61:
        v255 = v257;
        v256 = v78;
LABEL_62:
        sub_2189AD2A8(v256, v255);
LABEL_20:
        sub_2189AD2A8(v71, type metadata accessor for CuratedShortcut);
LABEL_21:
        v101 = type metadata accessor for Shortcut();
        v102 = *(*(v101 - 8) + 56);
        v103 = v296;
        v104 = 1;
        return v102(v103, v104, 1, v101);
      }

      v230 = *(v77 + 32);
      v292 = v77 + 32;
      v295 = v230;
      v231 = v275;
      v230(v275, v163, v76);
      v232 = v289;
      sub_2189AD308(v71, v289, type metadata accessor for CuratedShortcut);
      v233 = v288;
      sub_2189AD308(v75, v288, type metadata accessor for ShortcutCategory);
      (*(v77 + 16))(v293, v231, v76);
      v207 = v296;
      sub_2189AD308(v233, v296, type metadata accessor for ShortcutCategory);
      v234 = v291;
      sub_21993568C(v291);
      v235 = sub_21993639C();
      v237 = v236;
      sub_2189AD2A8(v234, type metadata accessor for CuratedShortcut.Identifier);
      sub_2189AD2A8(v233, type metadata accessor for ShortcutCategory);
      sub_2189AD2A8(v232, type metadata accessor for CuratedShortcut);
      v238 = v294;
      (*(v77 + 8))(v275, v294);
      sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
      v239 = _s8ResolvedVMa();
      v240 = (v207 + *(v239 + 24));
      *v240 = v235;
      v240[1] = v237;
      (v295)(v207 + *(v239 + 20), v293, v238);
      _s13ResolvedModelOMa();
      swift_storeEnumTagMultiPayload();
      v215 = _s14PuzzleFeedDataVMa;
      v216 = v284;
    }

    sub_2189AD2A8(v216, v215);
    sub_2189AD2A8(v260, type metadata accessor for CuratedShortcut);
    v188 = type metadata accessor for Shortcut();
    swift_storeEnumTagMultiPayload();
    v102 = *(*(v188 - 8) + 56);
    v103 = v207;
    goto LABEL_52;
  }

  if (!EnumCaseMultiPayload)
  {
    v139 = v280;
    sub_2189AD42C(v44, v280, _s12HeadlineDataVMa);
    v140 = v287;
    __swift_project_boxed_opaque_existential_1((v287 + 16), *(v287 + 40));
    v141 = sub_219BF27E4();
    if (v141)
    {
      v142 = v141;
      v260 = v71;
      sub_2189AD308(v71, v278, type metadata accessor for CuratedShortcut);
      sub_2189AD308(v54, v279, type metadata accessor for ShortcutCategory);
      __swift_project_boxed_opaque_existential_1((v140 + 56), *(v140 + 80));
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v143 = v267;
        sub_219BEEFB4();
        swift_unknownObjectRelease();
        v144 = 0;
      }

      else
      {
        v144 = 1;
        v143 = v267;
      }

      v243 = sub_219BF0BD4();
      (*(*(v243 - 8) + 56))(v143, v144, 1, v243);
      v295 = sub_21983F764(v142, v143);
      sub_218864AB4(v143, &unk_280E90C60, MEMORY[0x277D32FE0]);
      v244 = v279;
      v245 = v296;
      sub_2189AD308(v279, v296, type metadata accessor for ShortcutCategory);
      v246 = v291;
      v247 = v278;
      sub_21993568C(v291);
      v248 = sub_21993639C();
      v250 = v249;
      sub_2189AD2A8(v246, type metadata accessor for CuratedShortcut.Identifier);
      v251 = _s8ResolvedVMa();
      v252 = (v245 + *(v251 + 24));
      *v252 = v248;
      v252[1] = v250;
      v253 = (v245 + *(v251 + 20));
      v254 = _s8HeadlineVMa(0);
      sub_21992EE60(v253 + *(v254 + 20));
      swift_unknownObjectRelease();
      sub_2189AD2A8(v244, type metadata accessor for ShortcutCategory);
      sub_2189AD2A8(v247, type metadata accessor for CuratedShortcut);
      sub_2189AD2A8(v54, type metadata accessor for ShortcutCategory);
      *v253 = v295;
      _s13ResolvedModelOMa();
      swift_storeEnumTagMultiPayload();
      sub_2189AD2A8(v280, _s12HeadlineDataVMa);
      sub_2189AD2A8(v260, type metadata accessor for CuratedShortcut);
      v122 = type metadata accessor for Shortcut();
      swift_storeEnumTagMultiPayload();
      v102 = *(*(v122 - 8) + 56);
      v103 = v245;
      goto LABEL_56;
    }

    sub_2189AD2A8(v54, type metadata accessor for ShortcutCategory);
    v241 = _s12HeadlineDataVMa;
    v242 = v139;
LABEL_65:
    sub_2189AD2A8(v242, v241);
    sub_2189AD2A8(v71, type metadata accessor for CuratedShortcut);
    v101 = type metadata accessor for Shortcut();
    v102 = *(*(v101 - 8) + 56);
    v103 = v296;
    v104 = 1;
    return v102(v103, v104, 1, v101);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v145 = v282;
    sub_2189AD42C(v44, v282, _s9IssueDataVMa);
    v146 = v270;
    sub_2188383F8(v145 + *(v269 + 20), v270);
    v147 = v290;
    v148 = v294;
    if ((*(v290 + 48))(v146, 1, v294) == 1)
    {
      sub_218864AB4(v146, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v149 = objc_opt_self();
      v150 = sub_219BF53D4();
      v151 = [v149 fc:v150 NewsURLForTagID:?];

      if (v151)
      {
        v152 = v263;
        sub_219BDB8B4();

        v153 = v289;
        sub_2189AD308(v71, v289, type metadata accessor for CuratedShortcut);
        v154 = v288;
        sub_2189AD308(v54, v288, type metadata accessor for ShortcutCategory);
        v155 = *(v147 + 16);
        v259 = v54;
        v156 = v147;
        v155(v293, v152, v148);
        v260 = v71;
        v88 = v296;
        sub_2189AD308(v154, v296, type metadata accessor for ShortcutCategory);
        v157 = v291;
        sub_21993568C(v291);
        v158 = sub_21993639C();
        v160 = v159;
        sub_2189AD2A8(v157, type metadata accessor for CuratedShortcut.Identifier);
        sub_2189AD2A8(v154, type metadata accessor for ShortcutCategory);
        sub_2189AD2A8(v153, type metadata accessor for CuratedShortcut);
        (*(v156 + 8))(v263, v148);
        sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
        v161 = _s8ResolvedVMa();
        v162 = (v88 + *(v161 + 24));
        *v162 = v158;
        v162[1] = v160;
        (*(v156 + 32))(v88 + *(v161 + 20), v293, v148);
        _s13ResolvedModelOMa();
        swift_storeEnumTagMultiPayload();
        v95 = _s9IssueDataVMa;
        v96 = v282;
        goto LABEL_44;
      }

      sub_2189AD2A8(v54, type metadata accessor for ShortcutCategory);
      v255 = _s9IssueDataVMa;
      v256 = v145;
      goto LABEL_62;
    }

    v189 = v147;
    v190 = v54;
    v259 = v54;
    v191 = v71;
    v260 = v71;
    v192 = *(v189 + 32);
    v292 = v189 + 32;
    v295 = v192;
    v193 = v261;
    v192(v261, v146, v148);
    v194 = v289;
    sub_2189AD308(v191, v289, type metadata accessor for CuratedShortcut);
    v195 = v288;
    sub_2189AD308(v190, v288, type metadata accessor for ShortcutCategory);
    (*(v189 + 16))(v293, v193, v148);
    v196 = v296;
    sub_2189AD308(v195, v296, type metadata accessor for ShortcutCategory);
    v197 = v291;
    sub_21993568C(v291);
    v198 = sub_21993639C();
    v200 = v199;
    sub_2189AD2A8(v197, type metadata accessor for CuratedShortcut.Identifier);
    sub_2189AD2A8(v195, type metadata accessor for ShortcutCategory);
    sub_2189AD2A8(v194, type metadata accessor for CuratedShortcut);
    (*(v189 + 8))(v193, v148);
    sub_2189AD2A8(v259, type metadata accessor for ShortcutCategory);
    v201 = _s8ResolvedVMa();
    v202 = (v196 + *(v201 + 24));
    *v202 = v198;
    v202[1] = v200;
    (v295)(v196 + *(v201 + 20), v293, v148);
    _s13ResolvedModelOMa();
    swift_storeEnumTagMultiPayload();
    sub_2189AD2A8(v282, _s9IssueDataVMa);
    sub_2189AD2A8(v260, type metadata accessor for CuratedShortcut);
    v122 = type metadata accessor for Shortcut();
    swift_storeEnumTagMultiPayload();
    v102 = *(*(v122 - 8) + 56);
    v103 = v196;
LABEL_56:
    v104 = 0;
    v101 = v122;
    return v102(v103, v104, 1, v101);
  }

  v106 = v285;
  sub_2189AD42C(v44, v285, _s7TagDataVMa);
  sub_21871D24C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v108 = v106[1];
  *(inited + 32) = *v106;
  *(inited + 40) = v108;

  v109 = sub_218E96058(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  if (!(v109 >> 62))
  {
    result = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_27;
    }

    goto LABEL_64;
  }

  result = sub_219BF7214();
  if (!result)
  {
LABEL_64:

    sub_2189AD2A8(v285, _s7TagDataVMa);
    v241 = type metadata accessor for ShortcutCategory;
    v242 = v54;
    goto LABEL_65;
  }

LABEL_27:
  if ((v109 & 0xC000000000000001) != 0)
  {
    v110 = MEMORY[0x21CECE0F0](0, v109);
    goto LABEL_30;
  }

  if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v110 = *(v109 + 32);

LABEL_30:

    v111 = v289;
    sub_2189AD308(v65, v289, type metadata accessor for CuratedShortcut);
    v112 = v288;
    sub_2189AD308(v54, v288, type metadata accessor for ShortcutCategory);
    v260 = v65;
    v113 = v296;
    sub_2189AD308(v112, v296, type metadata accessor for ShortcutCategory);
    v114 = v291;
    sub_21993568C(v291);
    v115 = sub_21993639C();
    v117 = v116;
    sub_2189AD2A8(v114, type metadata accessor for CuratedShortcut.Identifier);
    v118 = _s8ResolvedVMa();
    v119 = (v113 + *(v118 + 24));
    *v119 = v115;
    v119[1] = v117;
    v120 = (v113 + *(v118 + 20));
    v121 = _s3TagVMa(0);
    sub_21992EE60(v120 + *(v121 + 20));
    sub_2189AD2A8(v112, type metadata accessor for ShortcutCategory);
    sub_2189AD2A8(v111, type metadata accessor for CuratedShortcut);
    sub_2189AD2A8(v285, _s7TagDataVMa);
    sub_2189AD2A8(v54, type metadata accessor for ShortcutCategory);
    *v120 = v110;
    _s13ResolvedModelOMa();
    swift_storeEnumTagMultiPayload();
    sub_2189AD2A8(v260, type metadata accessor for CuratedShortcut);
    v122 = type metadata accessor for Shortcut();
    swift_storeEnumTagMultiPayload();
    v102 = *(*(v122 - 8) + 56);
    v103 = v113;
    goto LABEL_56;
  }

  __break(1u);
  return result;
}

uint64_t sub_2189AAE40()
{
  v1 = v0;
  v2 = type metadata accessor for Shortcut();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  v6 = sub_218C54F50();
  if (v6 >> 62)
  {
    v36 = v6;
    v7 = sub_219BF7214();
    v6 = v36;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {

    v11 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

LABEL_25:

    if (qword_280EE5F18 == -1)
    {
LABEL_26:
      v32 = sub_219BE5434();
      __swift_project_value_buffer(v32, qword_280F62538);
      v33 = sub_219BE5414();
      v34 = sub_219BF6214();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_2186C1000, v33, v34, "No cached favorited shortcuts", v35, 2u);
        MEMORY[0x21CECF960](v35, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

  v9 = v6;
  v42 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v7 & ~(v7 >> 63), 0);
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v40 = v2;
  v41 = v7;
  v38[1] = v1;
  v39 = v3;
  v10 = 0;
  v11 = v42;
  v12 = v9;
  v13 = v9 & 0xC000000000000001;
  v14 = v5;
  v15 = v9;
  do
  {
    if (v13)
    {
      v16 = MEMORY[0x21CECE0F0](v10, v12);
    }

    else
    {
      v16 = *(v12 + 8 * v10 + 32);
    }

    v17 = v16;
    v18 = [v16 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    v42 = v11;
    v23 = *(v11 + 16);
    v22 = *(v11 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_21870B65C((v22 > 1), v23 + 1, 1);
      v11 = v42;
    }

    ++v10;
    *(v11 + 16) = v23 + 1;
    v24 = v11 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v12 = v15;
  }

  while (v41 != v10);
  v5 = v14;

  v3 = v39;
  v8 = MEMORY[0x277D84F90];
  if (!*(v11 + 16))
  {
    goto LABEL_25;
  }

LABEL_13:
  v9 = sub_218E96058(v11);

  if (!(v9 >> 62))
  {
    v25 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_15;
    }

LABEL_32:

    return MEMORY[0x277D84F90];
  }

LABEL_31:
  v25 = sub_219BF7214();
  if (!v25)
  {
    goto LABEL_32;
  }

LABEL_15:
  v42 = v8;
  sub_218C34348(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v26 = 0;
  v27 = v42;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x21CECE0F0](v26, v9);
    }

    else
    {
      v28 = *(v9 + 8 * v26 + 32);
    }

    v29 = *(v28 + 16);
    swift_unknownObjectRetain();

    *v5 = v29;
    swift_storeEnumTagMultiPayload();
    v42 = v27;
    v31 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_218C34348(v30 > 1, v31 + 1, 1);
      v27 = v42;
    }

    ++v26;
    *(v27 + 16) = v31 + 1;
    sub_2189AD42C(v5, v27 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v31, type metadata accessor for Shortcut);
  }

  while (v25 != v26);

  return v27;
}

uint64_t sub_2189AB28C()
{
  v0 = type metadata accessor for Shortcut();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27CC084C0 != -1)
  {
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE10, v2, type metadata accessor for CachedShortcutsManager);
  sub_219BDC7D4();
  if (!*(v19 + 16))
  {

    if (qword_280EE5F18 == -1)
    {
LABEL_16:
      v13 = sub_219BE5434();
      __swift_project_value_buffer(v13, qword_280F62538);
      v14 = sub_219BE5414();
      v15 = sub_219BF6214();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_2186C1000, v14, v15, "No cached suggested shortcuts", v16, 2u);
        MEMORY[0x21CECF960](v16, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_24:
    swift_once();
    goto LABEL_16;
  }

  v5 = sub_218E96058(v19);

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_20:

    return MEMORY[0x277D84F90];
  }

  v6 = sub_219BF7214();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_6:
  v19 = MEMORY[0x277D84F90];
  sub_218C34348(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = 0;
  v8 = v19;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CECE0F0](v7, v5);
    }

    else
    {
      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = *(v9 + 16);
    swift_unknownObjectRetain();

    *v4 = v10;
    swift_storeEnumTagMultiPayload();
    v19 = v8;
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_218C34348(v11 > 1, v12 + 1, 1);
      v8 = v19;
    }

    ++v7;
    *(v8 + 16) = v12 + 1;
    sub_2189AD42C(v4, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, type metadata accessor for Shortcut);
  }

  while (v6 != v7);

  return v8;
}

uint64_t sub_2189AB620(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v2 = sub_219BDB954();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2188422B8(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for CuratedShortcut(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_21993538C(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_218864AB4(v10, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
    v15 = 0;
  }

  else
  {
    sub_2189AD42C(v10, v14, type metadata accessor for CuratedShortcut);
    sub_21993568C(v7);
    if (swift_getEnumCaseMultiPayload() > 5)
    {
      v22 = v28;
      (*(v28 + 32))(v4, v7, v2);
      v23 = sub_219BDB804();
      v25 = v24;
      v26 = (v29 + *(_s8ResolvedVMa() + 24));
      if (v23 == *v26 && v25 == v26[1])
      {

        v15 = 0;
      }

      else
      {
        v27 = sub_219BF78F4();

        v15 = v27 ^ 1;
      }

      (*(v22 + 8))(v4, v2);
    }

    else
    {
      v17 = *v7;
      v16 = v7[1];
      v18 = (v29 + *(_s8ResolvedVMa() + 24));
      if (v17 == *v18 && v16 == v18[1])
      {

        v15 = 0;
      }

      else
      {
        v20 = sub_219BF78F4();

        v15 = v20 ^ 1;
      }
    }

    sub_2189AD2A8(v14, type metadata accessor for CuratedShortcut);
  }

  return v15 & 1;
}

uint64_t sub_2189ABA08(uint64_t a1)
{
  v3 = *v1;
  v82 = sub_219BDB954();
  v4 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for CuratedShortcut.Identifier(0);
  MEMORY[0x28223BE20](v87);
  v91 = (v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2188422B8(0, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v78 - v8;
  v10 = type metadata accessor for CuratedShortcut(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v90 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC084B0 != -1)
  {
LABEL_96:
    swift_once();
  }

  v14 = qword_27CC18300;
  sub_2189AD370(&qword_27CC0BE10, v12, type metadata accessor for CachedShortcutsManager);
  v78[0] = v14;
  v78[1] = v3;
  v78[2] = v1;
  sub_219BDC7D4();
  v1 = v94;
  v15 = v94[2];
  if (v15)
  {
    v3 = 0;
    v88 = (v11 + 48);
    v89 = v94 + 4;
    v80 = (v4 + 32);
    v16 = a1 + 56;
    v79 = (v4 + 8);
    v83 = MEMORY[0x277D84F90];
    v84 = v15;
    v85 = v94;
    v86 = v10;
    while (1)
    {
      while (1)
      {
        if (v3 >= v1[2])
        {
          __break(1u);
          goto LABEL_96;
        }

        v17 = &v89[2 * v3];
        v18 = *v17;
        v11 = v17[1];
        ++v3;
        swift_bridgeObjectRetain_n();
        sub_21993538C(v9);
        if ((*v88)(v9, 1, v10) != 1)
        {
          break;
        }

        sub_218864AB4(v9, &qword_27CC0BE20, type metadata accessor for CuratedShortcut);
LABEL_5:

        if (v3 == v15)
        {
          goto LABEL_94;
        }
      }

      sub_2189AD42C(v9, v90, type metadata accessor for CuratedShortcut);
      sub_21993568C(v91);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v27 = v91[1];
            if (*(a1 + 16))
            {
              v4 = *v91;
              sub_219BF7AA4();
              sub_219BF5524();
              v28 = sub_219BF7AE4();
              v29 = -1 << *(a1 + 32);
              v30 = v28 & ~v29;
              if ((*(v16 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
              {
                v31 = ~v29;
                while (1)
                {
                  v32 = (*(a1 + 48) + 16 * v30);
                  v33 = *v32 == v4 && v32[1] == v27;
                  if (v33 || (sub_219BF78F4() & 1) != 0)
                  {
                    goto LABEL_75;
                  }

                  v30 = (v30 + 1) & v31;
                  if (((*(v16 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }
              }
            }
          }

          else
          {
            v48 = v91[1];
            if (*(a1 + 16))
            {
              v4 = *v91;
              sub_219BF7AA4();
              sub_219BF5524();
              v49 = sub_219BF7AE4();
              v50 = -1 << *(a1 + 32);
              v51 = v49 & ~v50;
              if ((*(v16 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
              {
                v52 = ~v50;
                while (1)
                {
                  v53 = (*(a1 + 48) + 16 * v51);
                  v54 = *v53 == v4 && v53[1] == v48;
                  if (v54 || (sub_219BF78F4() & 1) != 0)
                  {
                    goto LABEL_75;
                  }

                  v51 = (v51 + 1) & v52;
                  if (((*(v16 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }
              }
            }
          }
        }

        else
        {
          v41 = v91[1];
          if (*(a1 + 16))
          {
            v4 = *v91;
            sub_219BF7AA4();
            sub_219BF5524();
            v42 = sub_219BF7AE4();
            v43 = -1 << *(a1 + 32);
            v44 = v42 & ~v43;
            if ((*(v16 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
            {
              v45 = ~v43;
              while (1)
              {
                v46 = (*(a1 + 48) + 16 * v44);
                v47 = *v46 == v4 && v46[1] == v41;
                if (v47 || (sub_219BF78F4() & 1) != 0)
                {
                  goto LABEL_75;
                }

                v44 = (v44 + 1) & v45;
                if (((*(v16 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                {
                  goto LABEL_73;
                }
              }
            }
          }
        }

        goto LABEL_73;
      }

      if (EnumCaseMultiPayload > 4)
      {
        break;
      }

      if (EnumCaseMultiPayload != 3)
      {
        v55 = v91[1];
        if (*(a1 + 16))
        {
          v4 = *v91;
          sub_219BF7AA4();
          sub_219BF5524();
          v56 = sub_219BF7AE4();
          v57 = -1 << *(a1 + 32);
          v58 = v56 & ~v57;
          if ((*(v16 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
          {
            v59 = ~v57;
            do
            {
              v60 = (*(a1 + 48) + 16 * v58);
              v61 = *v60 == v4 && v60[1] == v55;
              if (v61 || (sub_219BF78F4() & 1) != 0)
              {
                goto LABEL_75;
              }

              v58 = (v58 + 1) & v59;
            }

            while (((*(v16 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
          }
        }

LABEL_73:

        goto LABEL_74;
      }

      v20 = v91[1];
      if (!*(a1 + 16))
      {
        goto LABEL_73;
      }

      v4 = *v91;
      sub_219BF7AA4();
      sub_219BF5524();
      v21 = sub_219BF7AE4();
      v22 = -1 << *(a1 + 32);
      v23 = v21 & ~v22;
      if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_73;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = (*(a1 + 48) + 16 * v23);
        v26 = *v25 == v4 && v25[1] == v20;
        if (v26 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

LABEL_75:

LABEL_76:
      sub_2189AD2A8(v90, type metadata accessor for CuratedShortcut);
      v62 = v83;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v62;
      v10 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21870B65C(0, *(v62 + 16) + 1, 1);
        v62 = v93;
      }

      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      v4 = v65 + 1;
      if (v65 >= v64 >> 1)
      {
        sub_21870B65C((v64 > 1), v65 + 1, 1);
        v62 = v93;
      }

      *(v62 + 16) = v4;
      v83 = v62;
      v66 = v62 + 16 * v65;
      *(v66 + 32) = v18;
      *(v66 + 40) = v11;
      v15 = v84;
      v1 = v85;
      if (v3 == v84)
      {
        goto LABEL_94;
      }
    }

    if (EnumCaseMultiPayload == 5)
    {
      v34 = v91[1];
      if (*(a1 + 16))
      {
        v4 = *v91;
        sub_219BF7AA4();
        sub_219BF5524();
        v35 = sub_219BF7AE4();
        v36 = -1 << *(a1 + 32);
        v37 = v35 & ~v36;
        if ((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
        {
          v38 = ~v36;
          while (1)
          {
            v39 = (*(a1 + 48) + 16 * v37);
            v40 = *v39 == v4 && v39[1] == v34;
            if (v40 || (sub_219BF78F4() & 1) != 0)
            {
              goto LABEL_75;
            }

            v37 = (v37 + 1) & v38;
            if (((*(v16 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
            {
              goto LABEL_73;
            }
          }
        }
      }

      goto LABEL_73;
    }

    (*v80)(v81, v91, v82);
    v67 = sub_219BDB804();
    v69 = v68;
    if (*(a1 + 16))
    {
      v4 = v67;
      sub_219BF7AA4();
      sub_219BF5524();
      v70 = sub_219BF7AE4();
      v71 = -1 << *(a1 + 32);
      v72 = v70 & ~v71;
      if ((*(v16 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
      {
        v73 = ~v71;
        while (1)
        {
          v74 = (*(a1 + 48) + 16 * v72);
          v75 = *v74 == v4 && v74[1] == v69;
          if (v75 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v72 = (v72 + 1) & v73;
          if (((*(v16 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        (*v79)(v81, v82);
        goto LABEL_76;
      }
    }

LABEL_91:

    (*v79)(v81, v82);
LABEL_74:
    sub_2189AD2A8(v90, type metadata accessor for CuratedShortcut);
    v1 = v85;
    v10 = v86;
    v15 = v84;
    goto LABEL_5;
  }

  v83 = MEMORY[0x277D84F90];
LABEL_94:

  v92 = v83;
  sub_2189AD370(&qword_27CC0BE18, v76, type metadata accessor for CachedShortcutsManager);
  sub_219BDCA54();
}

uint64_t sub_2189AC4A8(uint64_t a1, uint64_t a2)
{
  if (qword_27CC084C0 != -1)
  {
LABEL_24:
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE10, a2, type metadata accessor for CachedShortcutsManager);
  sub_219BDC7D4();
  v3 = *(v22 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = a1 + 56;
    v6 = MEMORY[0x277D84F90];
    v21 = *(v22 + 16);
    while (1)
    {
      if (v4 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }

      v7 = (v22 + 32 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      ++v4;
      if (!*(a1 + 16))
      {
        break;
      }

      sub_219BF7AA4();

      sub_219BF5524();
      v10 = sub_219BF7AE4();
      v11 = -1 << *(a1 + 32);
      v12 = v10 & ~v11;
      if ((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
      {
        v13 = ~v11;
        while (1)
        {
          v14 = (*(a1 + 48) + 16 * v12);
          v15 = *v14 == v9 && v14[1] == v8;
          if (v15 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v12 = (v12 + 1) & v13;
          if (((*(v5 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v4 == v3)
        {
          goto LABEL_22;
        }
      }

      else
      {
LABEL_15:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v6 + 16) + 1, 1);
        }

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_21870B65C((v16 > 1), v17 + 1, 1);
        }

        *(v6 + 16) = v17 + 1;
        v18 = v6 + 16 * v17;
        *(v18 + 32) = v9;
        *(v18 + 40) = v8;
        v3 = v21;
        if (v4 == v21)
        {
          goto LABEL_22;
        }
      }
    }

    goto LABEL_15;
  }

LABEL_22:

  sub_2189AD370(&qword_27CC0BE18, v19, type metadata accessor for CachedShortcutsManager);
  sub_219BDCA54();
}

uint64_t sub_2189AC788(uint64_t a1)
{
  v22[2] = *v1;
  v23 = v1;
  v3 = sub_219BF5474();
  MEMORY[0x28223BE20](v3 - 8);
  v26 = type metadata accessor for CuratedShortcut(0);
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CC084B0 != -1)
  {
    swift_once();
  }

  v22[1] = qword_27CC18300;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v25 = *(v4 + 72);
    v11 = MEMORY[0x277D84F90];
    *&v6 = 138412290;
    v24 = v6;
    do
    {
      sub_2189AD308(v10, v8, type metadata accessor for CuratedShortcut);
      sub_219BDB084();
      swift_allocObject();
      sub_219BDB074();
      sub_2189AD370(&qword_27CC0BE28, 255, type metadata accessor for CuratedShortcut);
      v13 = sub_219BDB064();
      v15 = v14;

      sub_219BF5464();
      v16 = sub_219BF5434();
      v18 = v17;
      sub_2186C6190(v13, v15);
      sub_2189AD2A8(v8, type metadata accessor for CuratedShortcut);
      if (v18)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        if (v20 >= v19 >> 1)
        {
          v11 = sub_218840D24((v19 > 1), v20 + 1, 1, v11);
        }

        *(v11 + 2) = v20 + 1;
        v12 = &v11[16 * v20];
        *(v12 + 4) = v16;
        *(v12 + 5) = v18;
      }

      v10 += v25;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v27 = v11;
  sub_2189AD370(&qword_27CC0BE18, v5, type metadata accessor for CachedShortcutsManager);
  sub_219BDCA54();
}

uint64_t sub_2189ACC3C(uint64_t a1)
{
  v26[2] = *v1;
  v28 = _s8ResolvedVMa();
  MEMORY[0x28223BE20](v28);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Shortcut();
  v4 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = v26 - v9;
  if (qword_27CC084C0 != -1)
  {
    swift_once();
  }

  v26[1] = qword_27CC18310;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v31 = MEMORY[0x277D84F90];
    v26[0] = v1;
    sub_21870B65C(0, v11, 0);
    v12 = v31;
    v13 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v29 = *(v4 + 72);
    do
    {
      sub_2189AD308(v13, v10, type metadata accessor for Shortcut);
      sub_2189AD308(v10, v7, type metadata accessor for Shortcut);
      if (swift_getEnumCaseMultiPayload())
      {
        v16 = [*v7 identifier];
        v17 = sub_219BF5414();
        v19 = v18;
        swift_unknownObjectRelease();

        v20 = type metadata accessor for Shortcut;
        v21 = v10;
      }

      else
      {
        sub_2189AD2A8(v10, type metadata accessor for Shortcut);
        v14 = v27;
        sub_2189AD42C(v7, v27, _s8ResolvedVMa);
        v15 = (v14 + *(v28 + 24));
        v17 = *v15;
        v19 = v15[1];

        v20 = _s8ResolvedVMa;
        v21 = v14;
      }

      sub_2189AD2A8(v21, v20);
      v31 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v12 = v31;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v17;
      *(v24 + 40) = v19;
      v13 += v29;
      --v11;
    }

    while (v11);
  }

  v31 = v12;
  sub_2189AD370(&qword_27CC0BE18, v8, type metadata accessor for CachedShortcutsManager);
  sub_219BDCA54();
}

uint64_t sub_2189ACFF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189AD044(uint64_t a1, uint64_t a2)
{
  if (qword_27CC084B0 != -1)
  {
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE10, a2, type metadata accessor for CachedShortcutsManager);
  v3 = sub_219BDC7D4();
  MEMORY[0x28223BE20](v3);
  v7[2] = a1;
  v7[5] = sub_2195E6068(sub_2189AD3B8, v7, v4);
  sub_2189AD370(&qword_27CC0BE18, v5, type metadata accessor for CachedShortcutsManager);
  sub_219BDCA54();
}

uint64_t sub_2189AD19C(uint64_t a1, uint64_t a2)
{
  if (qword_27CC084B8 != -1)
  {
    swift_once();
  }

  sub_2189AD370(&qword_27CC0BE18, a2, type metadata accessor for CachedShortcutsManager);
  return sub_219BDCA54();
}

uint64_t sub_2189AD2A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189AD308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189AD370(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2189AD42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2189AD5C8()
{
  if (!qword_280E91A80)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    v0 = sub_219BEEA14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91A80);
    }
  }
}

uint64_t type metadata accessor for IssueListTagFeedGroupKnobs()
{
  result = qword_280EBB650;
  if (!qword_280EBB650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189AD6BC()
{
  sub_2189AD5C8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2189AD728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v6);
  v12 = *(v9 + 48);
  if (v12(v6, 1, v8) == 1)
  {
    type metadata accessor for TagFeedServiceConfig();
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig);
    sub_219BEE974();
    sub_2189ADEC8(a1);
    if (v12(v6, 1, v8) != 1)
    {
      sub_2189ADEC8(v6);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v9 + 32))(v11, v6, v8);
  }

  return (*(v9 + 32))(a2, v11, v8);
}

uint64_t sub_2189AD96C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADF78(0, &qword_27CC0BEB0, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189ADF24();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8();
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8);
    sub_219BF7674();
    sub_2189AD728(v6, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189ADB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2189ADBF4(uint64_t a1)
{
  v2 = sub_2189ADF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189ADC30(uint64_t a1)
{
  v2 = sub_2189ADF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189ADC84(void *a1)
{
  sub_2189ADF78(0, &qword_27CC0BEC0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189ADF24();
  sub_219BF7B44();
  sub_2189AD5C8();
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

void sub_2189ADE0C()
{
  if (!qword_280E91A70)
  {
    sub_2189AD5C8();
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91A70);
    }
  }
}

uint64_t sub_2189ADE64(uint64_t a1, uint64_t a2)
{
  sub_2189ADE0C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189ADEC8(uint64_t a1)
{
  sub_2189ADE0C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2189ADF24()
{
  result = qword_27CC0BEB8;
  if (!qword_27CC0BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BEB8);
  }

  return result;
}

void sub_2189ADF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189ADF24();
    v7 = a3(a1, &type metadata for IssueListTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189ADFF0()
{
  result = qword_27CC0BED0;
  if (!qword_27CC0BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BED0);
  }

  return result;
}

unint64_t sub_2189AE048()
{
  result = qword_27CC0BED8;
  if (!qword_27CC0BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BED8);
  }

  return result;
}

unint64_t sub_2189AE0A0()
{
  result = qword_27CC0BEE0;
  if (!qword_27CC0BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BEE0);
  }

  return result;
}

uint64_t sub_2189AE1E4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

uint64_t sub_2189AE258(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_2189AE2B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_2189AE374()
{
  v1 = v0 + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_2189AE3C0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

id AdContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AdContext.init()()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_qToken];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_previewID];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_previewSessionID];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID];
  *v4 = 0;
  v4[8] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AdContext();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AdContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm_0@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

void sub_2189AE9D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for SpotlightTodayFeedGroupKnobs()
{
  result = qword_280EB2390;
  if (!qword_280EB2390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189AEAD0()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2189AEB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  sub_2189AF794(a1, v14, sub_2189AF720);
  v20 = *(v17 + 48);
  if (v20(v14, 1, v16) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    v26 = v10;
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v10 = v26;
    sub_219BEE974();
    if (v20(v14, 1, v16) != 1)
    {
      sub_2189AF7FC(v14, sub_2189AF720);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v14, v16);
  }

  (*(v17 + 32))(a3, v19, v16);
  v21 = v27;
  sub_2189AF794(v27, v7, sub_2189AF700);
  v22 = *(v10 + 48);
  if (v22(v7, 1, v9) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF908(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v23 = v29;
    sub_219BEEC74();
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    if (v22(v7, 1, v9) != 1)
    {
      sub_2189AF7FC(v7, sub_2189AF700);
    }
  }

  else
  {
    sub_2189AF7FC(v21, sub_2189AF700);
    sub_2189AF7FC(v28, sub_2189AF720);
    v23 = v29;
    (*(v10 + 32))(v29, v7, v9);
  }

  v24 = type metadata accessor for SpotlightTodayFeedGroupKnobs();
  return (*(v10 + 32))(a3 + *(v24 + 20), v23, v9);
}

uint64_t sub_2189AF03C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF85C(0, &qword_280E8CBE8, MEMORY[0x277D844C8]);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189AF6AC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AE994(0);
    v18 = 0;
    sub_2186DF908(&qword_280E91A28, sub_2189AE994);
    sub_219BF7674();
    sub_2189AE9B4(0);
    v17 = 1;
    sub_2186DF908(&qword_280E91868, sub_2189AE9B4);
    sub_219BF7674();
    sub_2189AEB54(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2189AF2EC(void *a1)
{
  sub_2189AF85C(0, &qword_280E8C420, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189AF6AC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189AE994(0);
  sub_2186DF908(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SpotlightTodayFeedGroupKnobs();
    v9[14] = 1;
    sub_2189AE9B4(0);
    sub_2186DF908(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2189AF4FC()
{
  if (*v0)
  {
    return 0x6C6F6F706572;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_2189AF530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
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

uint64_t sub_2189AF604(uint64_t a1)
{
  v2 = sub_2189AF6AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189AF640(uint64_t a1)
{
  v2 = sub_2189AF6AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2189AF6AC()
{
  result = qword_280EB23C0;
  if (!qword_280EB23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB23C0);
  }

  return result;
}

void sub_2189AF740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2189AF794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189AF7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2189AF85C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189AF6AC();
    v7 = a3(a1, &type metadata for SpotlightTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2189AF8D4()
{
  result = qword_27CC0BF08;
  if (!qword_27CC0BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF08);
  }

  return result;
}

unint64_t sub_2189AF92C()
{
  result = qword_280EB23B0;
  if (!qword_280EB23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB23B0);
  }

  return result;
}

unint64_t sub_2189AF984()
{
  result = qword_280EB23B8;
  if (!qword_280EB23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB23B8);
  }

  return result;
}

void sub_2189AF9D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);

    swift_unknownObjectRetain();
    v11 = sub_219BF53D4();
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a4;
    v12[4] = sub_2187A913C;
    v12[5] = v8;
    aBlock[4] = sub_2189AFD08;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2189AFB90;
    aBlock[3] = &block_descriptor_2;
    v13 = _Block_copy(aBlock);

    [v10 prefetchArticleID:v11 headline:0 completion:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {

    a1(v14);
  }
}

void sub_2189AFB90(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_2189AFC1C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189AFC54()
{
  swift_allocObject();
  swift_weakInit();
  sub_21879D924();
  swift_allocObject();
  v0 = sub_219BE30B4();

  return v0;
}

void sub_2189AFD08(int a1, id a2)
{
  if (a2)
  {
    v4 = *(v2 + 16);
    v5 = a2;
    v4(a2);
  }

  else
  {
    (*(v2 + 32))();
  }
}

uint64_t sub_2189AFDA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v10 = v6;
    (*(v8 + 8))(&v10, a2, a3, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2189AFE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(a2, *(a3 + 8), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2189AFEE4(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  *(v1 + 16) = v3;
  v13 = v3;

  v4 = *(v1 + 24);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);

  os_unfair_lock_unlock((v4 + 24));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      ObjectType = swift_getObjectType();
      v14 = v13;
      v11 = *(v9 + 8);
      v12 = *(v11 + 8);
      swift_unknownObjectRetain();
      v12(&v14, v2, &off_282A2FD80, ObjectType, v11);
      swift_unknownObjectRelease();
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_2189B0028()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2189B0090()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v7 = 0;
  v8 = MEMORY[0x277D84FA0];
  if (v4)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      do
      {
LABEL_10:
        v4 &= v4 - 1;

        result = sub_219479BA4(v10, v8);
        v8 = result;
      }

      while (v4);
      continue;
    }
  }

  v11 = *(v8 + 16);
  if (!v11)
  {

    return MEMORY[0x277D84F90];
  }

  v12 = sub_21947D25C(*(v8 + 16), 0);
  v13 = *(type metadata accessor for SearchFilterItem() - 8);
  v14 = sub_2194ABB00(&v15, v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v11, v8);
  result = sub_21892DE98();
  if (v14 == v11)
  {

    return v12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2189B0248()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    LOBYTE(v1) = RecipeFilterSelection.isEmpty.getter() ^ 1;
  }

  return v1 & 1;
}

void sub_2189B0288()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_2189B089C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_2189B02F4()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_2189B0840(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_2189B0360(uint64_t a1, void *a2)
{
  result = *(v2 + 16);
  if (result)
  {
    v8 = *(v2 + 16);

    v6._countAndFlagsBits = a1;
    v6._object = a2;
    RecipeFilterSelection.removeAllTags(matching:)(v6);
    v7 = v8;
    sub_2189AFEE4(&v7);
  }

  return result;
}

void sub_2189B03D4()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
    if ((RecipeFilterSelection.isEmpty.getter() & 1) == 0)
    {
      v1 = sub_2194AE414(MEMORY[0x277D84F90]);
      sub_2189AFEE4(&v1);
    }
  }
}

uint64_t sub_2189B0444(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7)
  {
    v8 = 0;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v9 = v8;
      while (1)
      {
        if (v9 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        v24 = *(v6 + 32 + 16 * v9);
        v8 = (v9 + 1);
        v5 = *(v6 + 32 + 16 * v9);
        ObjectType = swift_getObjectType();
        v11 = *(*(&v24 + 1) + 16);
        swift_unknownObjectRetain();
        if (v11(ObjectType, *(&v24 + 1)))
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v9;
        if (v7 == v8)
        {
          goto LABEL_15;
        }
      }

      swift_unknownObjectRelease();
      v5 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C343E8(0, v23[2] + 1, 1);
        v5 = v23;
      }

      v12 = v24;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_218C343E8((v13 > 1), v14 + 1, 1);
        v12 = v24;
        v5 = v23;
      }

      *(v5 + 16) = v14 + 1;
      v23 = v5;
      *(v5 + 16 * v14 + 32) = v12;
    }

    while ((v7 - 1) != v9);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_15:

  a4(0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v9 = v23;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_20:
    result = sub_2191F6C88(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
  }

  v17 = *(v9 + 16);
  v16 = *(v9 + 24);
  if (v17 >= v16 >> 1)
  {
    result = sub_2191F6C88((v16 > 1), v17 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v17 + 1;
  v18 = (v9 + 16 * v17);
  v18[4] = v5;
  v18[5] = a5;
  *a1 = v9;
  return result;
}

uint64_t sub_2189B0688(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v15 = result;
    do
    {
      v8 = v6;
      while (1)
      {
        if (v8 >= *(v3 + 16))
        {
          __break(1u);
          return result;
        }

        v16 = *(v3 + 32 + 16 * v8);
        ObjectType = swift_getObjectType();
        v10 = *(*(&v16 + 1) + 16);
        swift_unknownObjectRetain();
        v11 = v10(ObjectType, *(&v16 + 1));
        if (v11)
        {
          v12 = v11;
          swift_unknownObjectRelease();
          if (v12 != a2)
          {
            break;
          }
        }

        ++v8;
        result = swift_unknownObjectRelease();
        if (v4 == v8)
        {
          v2 = v15;
          goto LABEL_16;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218C343E8(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_218C343E8((v13 > 1), v14 + 1, 1);
      }

      v6 = v8 + 1;
      *(v7 + 16) = v14 + 1;
      *(v7 + 16 * v14 + 32) = v16;
      v2 = v15;
    }

    while (v4 - 1 != v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_16:

  *v2 = v7;
  return result;
}

uint64_t sub_2189B0920(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_2189B099C();
  swift_allocObject();
  a4();

  return sub_219BE6E64();
}

void sub_2189B099C()
{
  if (!qword_27CC0BF10)
  {
    sub_2189528B0();
    sub_218952904();
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0BF10);
    }
  }
}

unint64_t sub_2189B0A18()
{
  result = qword_27CC0BF18;
  if (!qword_27CC0BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF18);
  }

  return result;
}

unint64_t sub_2189B0A6C()
{
  result = qword_27CC0BF20;
  if (!qword_27CC0BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF20);
  }

  return result;
}

uint64_t type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs()
{
  result = qword_280E976A0;
  if (!qword_280E976A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189B0B34()
{
  sub_2189AE994(319);
  if (v0 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v1 <= 0x3F)
    {
      sub_2186F9548();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2189B0BD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_2189AE9B4(0);
  v63 = v3;
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v65 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v68 = v5;
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  MEMORY[0x28223BE20](v61);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = &v52 - v13;
  sub_2189AF720(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v70 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v52 - v17;
  sub_2189B19B4(0, &qword_27CC0BF38, MEMORY[0x277D844C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189B1960();
  v23 = v71;
  sub_219BF7B34();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v56 = v12;
  v58 = 0;
  v59 = v20;
  v71 = v8;
  v60 = a1;
  v25 = v61;
  LOBYTE(v75) = 0;
  sub_2186DF950(&qword_280E91A28, sub_2189AE994);
  v26 = v68;
  v27 = v69;
  sub_219BF7674();
  LOBYTE(v75) = 1;
  sub_2186DF950(&qword_280E91868, sub_2189AE9B4);
  v28 = v63;
  sub_219BF7674();
  sub_2186F9548();
  v30 = v29;
  LOBYTE(v74) = 2;
  sub_2186DF950(&qword_280E913B8, sub_2186F9548);
  sub_219BF7674();
  v53 = v75;
  LOBYTE(v73) = 3;
  v52 = v30;
  sub_219BF7674();
  v55 = v74;
  v31 = v70;
  sub_2189AF794(v27, v70, sub_2189AF720);
  v32 = v62;
  v33 = *(v62 + 48);
  v34 = v33(v31, 1, v26);
  v35 = v28;
  v54 = v19;
  v57 = v22;
  if (v34 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v36 = v64;
    sub_219BEE974();
    v37 = v68;
    v38 = v33(v70, 1, v68);
    v39 = v67;
    if (v38 != 1)
    {
      sub_2189AF7FC(v70, sub_2189AF720);
    }
  }

  else
  {
    v36 = v64;
    v37 = v68;
    (*(v32 + 32))(v64, v70, v68);
    v39 = v67;
  }

  v40 = v71;
  (*(v32 + 32))(v71, v36, v37);
  v41 = v56;
  sub_2189AF794(v72, v56, sub_2189AF700);
  v42 = *(v39 + 48);
  if (v42(v41, 1, v35) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig();
    sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v43 = v65;
    v39 = v67;
    sub_219BEEC74();
    v44 = v42(v41, 1, v35);
    v45 = v66;
    v46 = v60;
    if (v44 != 1)
    {
      sub_2189AF7FC(v41, sub_2189AF700);
    }
  }

  else
  {
    v43 = v65;
    (*(v39 + 32))(v65, v41, v35);
    v45 = v66;
    v46 = v60;
  }

  (*(v39 + 32))(v40 + v25[5], v43, v35);
  v47 = v53;
  if (!v53)
  {
    v73 = 1;
    swift_allocObject();
    v47 = sub_219BEF534();
  }

  v48 = v72;
  v49 = v69;
  v50 = v59;
  *(v40 + v25[6]) = v47;
  v51 = v55;
  if (!v55)
  {
    v73 = 6;
    swift_allocObject();
    v51 = sub_219BEF534();
  }

  sub_2189AF7FC(v48, sub_2189AF700);
  sub_2189AF7FC(v49, sub_2189AF720);
  (*(v50 + 8))(v57, v54);
  *(v40 + v25[7]) = v51;
  sub_2189B1A18(v40, v45);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2189B1450(void *a1)
{
  v3 = v1;
  sub_2189B19B4(0, &qword_27CC0BF28, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189B1960();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DF950(&qword_280E91A30, sub_2189AE994);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
    LOBYTE(v14) = 1;
    sub_2189AE9B4(0);
    sub_2186DF950(&unk_280E91870, sub_2189AE9B4);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 24));
    v13 = 2;
    sub_2186F9548();
    sub_2186DF950(&qword_280E913C0, sub_2186F9548);
    sub_219BF7834();
    v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2189B1728()
{
  v1 = 0x73656C7572;
  if (*v0)
  {
    v1 = 0x6C6F6F706572;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2189B17A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2189B1B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2189B17CC(uint64_t a1)
{
  v2 = sub_2189B1960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2189B1808(uint64_t a1)
{
  v2 = sub_2189B1960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2189B1874()
{
  type metadata accessor for TodayFeedServiceConfig();
  sub_2186DF950(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
  if (sub_219BEE9F4() & 1) != 0 && (sub_219BEEC64() & 1) != 0 && (sub_2186F9548(), (sub_219BEF504()))
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2189B1960()
{
  result = qword_27CC0BF30;
  if (!qword_27CC0BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF30);
  }

  return result;
}

void sub_2189B19B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2189B1960();
    v7 = a3(a1, &type metadata for ChannelPickerTodayFeedGroupSubtypeKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2189B1A18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189B1A90()
{
  result = qword_27CC0BF40;
  if (!qword_27CC0BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF40);
  }

  return result;
}

unint64_t sub_2189B1AE8()
{
  result = qword_27CC0BF48;
  if (!qword_27CC0BF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF48);
  }

  return result;
}

unint64_t sub_2189B1B40()
{
  result = qword_27CC0BF50;
  if (!qword_27CC0BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0BF50);
  }

  return result;
}

uint64_t sub_2189B1B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2189B1D3C()
{
  swift_getObjectType();
  if (qword_27CC08270 != -1)
  {
    swift_once();
  }

  return sub_219BDCA44();
}

uint64_t sub_2189B1E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_219BDC854();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDC874();
  swift_allocObject();
  sub_219BDC884();
  (*(v7 + 104))(v9, *MEMORY[0x277D6D068], v6);
  v10 = sub_219BDC864();

  result = (*(v7 + 8))(v9, v6);
  *a5 = v10;
  return result;
}

uint64_t sub_2189B1F80()
{
  swift_getObjectType();
  sub_219BDC604();
  sub_219BDCA44();
}

uint64_t sub_2189B2018()
{
  sub_219BDC874();
  swift_allocObject();
  result = sub_219BDC884();
  qword_27CC0BF68 = result;
  return result;
}

void sub_2189B2088()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_219BF67B4();
  [v0 postNotificationName:v1 object:0];
}

uint64_t type metadata accessor for EngagementPresentationFailure()
{
  result = qword_280EB0E88;
  if (!qword_280EB0E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2189B21A0()
{
  sub_219BE3514();
  if (v0 <= 0x3F)
  {
    sub_2186E3374();
    if (v1 <= 0x3F)
    {
      sub_219BE3774();
      if (v2 <= 0x3F)
      {
        sub_219BE3794();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2189B225C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2189B22A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189B22FC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1(v0 + 72);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2189B2354()
{
  sub_2189B22FC();

  return swift_deallocClassInstance();
}

uint64_t sub_2189B2388(unint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 136);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_21895067C(0, *(v5 + 16));
  }

  else
  {
    *(v2 + 136) = sub_21947D1C0(0, *(v5 + 24) >> 1);
  }

  result = swift_endAccess();
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      v15 = v2;
      while ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, a1);
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_18;
        }

LABEL_12:
        v12 = *(v2 + 64);
        v13 = [v10 identifier];
        if (!v13)
        {
          sub_219BF5414();
          v13 = sub_219BF53D4();
          v2 = v15;
        }

        v14 = [v12 lastSeenPuzzleIDsForPuzzleTypeID_];

        if (v14)
        {
          v9 = sub_219BF5924();
        }

        else
        {
          v9 = MEMORY[0x277D84F90];
        }

        swift_beginAccess();
        sub_2191ED3E8(v9);
        swift_endAccess();
        result = swift_unknownObjectRelease();
        ++v8;
        if (v11 == v7)
        {
          return result;
        }
      }

      if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(a1 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      v11 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      result = sub_219BF7214();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2189B25A0()
{
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v12 = v1;
    v13 = v1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v4)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_20;
        }

        v5 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      v7 = [v5 latestPuzzleIDs];
      if (v7)
      {
        v8 = v7;
        v9 = *(v0 + 64);
        v10 = [v5 identifier];
        if (!v10)
        {
          sub_219BF5414();
          v10 = sub_219BF53D4();
          v1 = v12;
        }

        [v9 setLastSeenPuzzleIDs:v8 puzzleTypeID:v10];
      }

      swift_unknownObjectRelease();
      ++v3;
    }

    while (v6 != v2);
  }
}

uint64_t sub_2189B2738(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = sub_2189B3410;
  }

  else
  {
    *(v4 + 232) = a1;
    v5 = sub_2189B2860;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2189B2860()
{
  *(v0[18] + 128) = v0[29];

  v0[30] = sub_219BF5BD4();
  v0[31] = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B290C, v2, v1);
}

uint64_t sub_2189B290C()
{

  sub_2189B2388(v0);

  return MEMORY[0x2822009F8](sub_2189B2990, 0, 0);
}

uint64_t sub_2189B2990()
{
  v67 = v0;
  v1 = *(*(v0 + 144) + 128);
  if (v1 >> 62)
  {
    goto LABEL_58;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v1);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          v2 = sub_219BF7214();
          goto LABEL_3;
        }

        v5 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_25;
        }
      }

      v65 = v5;
      sub_2189B3584(&v65, v66);
      swift_unknownObjectRelease();
      v7 = v66[0];
      v8 = *(v66[0] + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_218840D24(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (!*(v7 + 16))
        {
LABEL_5:

          if (v8)
          {
            goto LABEL_55;
          }

          goto LABEL_6;
        }
      }

      if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      if (v8)
      {
        v13 = *(v4 + 2);
        v14 = __OFADD__(v13, v8);
        v15 = v13 + v8;
        if (v14)
        {
          goto LABEL_57;
        }

        *(v4 + 2) = v15;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        goto LABEL_27;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_27:
  v16 = v64;
  v17 = v64[25];
  v18 = v64[23];
  v19 = v64[20];
  v20 = v64[18];

  v21 = sub_218845F78(v4);

  __swift_project_boxed_opaque_existential_1((v20 + 72), *(v20 + 96));
  sub_219BDBBB4();
  v22 = sub_219BF3774();
  v17(v18, v19);
  v23 = sub_218845F78(v22);

  swift_beginAccess();

  v25 = sub_218845F78(v24);

  if (NFInternalBuild())
  {

    v26 = sub_219BE5414();
    v27 = sub_219BF6214();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v66[0] = v29;
      *v28 = 134218242;
      *(v28 + 4) = *(v21 + 16);

      *(v28 + 12) = 2080;
      v30 = sub_219BF5D54();
      v32 = sub_2186D1058(v30, v31, v66);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2186C1000, v26, v27, "PuzzleBadgingCoordinator: %ld Combined Fetched Latest Puzzle IDs: %s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x21CECF960](v29, -1, -1);
      v16 = v64;
      MEMORY[0x21CECF960](v28, -1, -1);
    }

    else
    {
    }

    v33 = sub_219BE5414();
    v34 = sub_219BF6214();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66[0] = v36;
      *v35 = 134218242;
      *(v35 + 4) = *(v23 + 16);

      *(v35 + 12) = 2080;
      v37 = sub_219BF5D54();
      v39 = sub_2186D1058(v37, v38, v66);

      *(v35 + 14) = v39;
      _os_log_impl(&dword_2186C1000, v33, v34, "PuzzleBadgingCoordinator: %ld History Puzzle IDs: %s", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x21CECF960](v36, -1, -1);
      v16 = v64;
      MEMORY[0x21CECF960](v35, -1, -1);
    }

    else
    {
    }

    v40 = sub_219BE5414();
    v41 = sub_219BF6214();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v66[0] = v43;
      *v42 = 134218242;
      *(v42 + 4) = *(v25 + 16);

      *(v42 + 12) = 2080;
      v44 = sub_219BF5D54();
      v46 = sub_2186D1058(v44, v45, v66);

      *(v42 + 14) = v46;
      _os_log_impl(&dword_2186C1000, v40, v41, "PuzzleBadgingCoordinator: %ld Previously Seen Puzzle IDs: %s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x21CECF960](v43, -1, -1);
      v16 = v64;
      MEMORY[0x21CECF960](v42, -1, -1);
    }

    else
    {
    }
  }

  if (*(v23 + 16) <= *(v21 + 16) >> 3)
  {
    v66[0] = v21;
    sub_218EB3B08(v23);

    v47 = v66[0];
  }

  else
  {
    v47 = sub_218EB4048(v23, v21);
  }

  if (*(v25 + 16) <= *(v47 + 16) >> 3)
  {
    v66[0] = v47;
    sub_218EB3B08(v25);

    v48 = v66[0];
  }

  else
  {
    v48 = sub_218EB4048(v25, v47);
  }

  v49 = sub_219BE5414();
  v50 = sub_219BF6214();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66[0] = v52;
    *v51 = 134218242;
    *(v51 + 4) = *(v48 + 16);

    *(v51 + 12) = 2080;
    v53 = sub_219BF5D54();
    v55 = sub_2186D1058(v53, v54, v66);

    *(v51 + 14) = v55;
    _os_log_impl(&dword_2186C1000, v49, v50, "PuzzleBadgingCoordinator: %ld New Puzzle IDs: %s", v51, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v52);
    v16 = v64;
    MEMORY[0x21CECF960](v52, -1, -1);
    MEMORY[0x21CECF960](v51, -1, -1);
  }

  else
  {
  }

  v56 = *(v48 + 16);
  v16[32] = v56;

  v57 = sub_219BF5BC4();
  if (v56)
  {
    v16[33] = v57;
    v58 = sub_219BF5B44();
    v60 = v59;
    v61 = sub_2189B318C;
  }

  else
  {
    v16[34] = v57;
    v58 = sub_219BF5B44();
    v60 = v62;
    v61 = sub_2189B3320;
  }

  return MEMORY[0x2822009F8](v61, v58, v60);
}

uint64_t sub_2189B318C()
{
  v1 = v0[32];

  v2 = sub_219BE20E4();
  v5 = v0[13];
  v6 = v5 + v1;
  if (__OFADD__(v5, v1))
  {
    __break(1u);
  }

  else
  {
    v0[14] = v6;
    sub_219BE2114();
    sub_219BDC6E4();
    v0[15] = v6;
    sub_2189B3EFC(&qword_280EC0BE0);
    sub_219BDCA54();

    sub_2189B25A0();
    v2 = sub_2189B3294;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2189B3294()
{
  *(v0 + 272) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B3320, v2, v1);
}

uint64_t sub_2189B3320()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];

  sub_219BDC754();
  sub_219BDBD24();
  sub_2189B3EFC(&qword_280EC0BE0);
  sub_219BDCA54();

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2189B3410()
{
  v1 = *(v0 + 224);
  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 224);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2186C1000, v3, v4, "PuzzleBadgingCoordinator: Failed to update puzzle badge count:  %@", v7, 0xCu);
    sub_218744870(v8, sub_2189B3F3C);
    MEMORY[0x21CECF960](v8, -1, -1);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

void sub_2189B3584(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 latestPuzzleIDs];
  if (v4)
  {
    v5 = v4;
    v6 = sub_219BF5924();

    if (!NFInternalBuild())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    if (!NFInternalBuild())
    {
      goto LABEL_10;
    }
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v7 = sub_219BE5434();
  __swift_project_value_buffer(v7, qword_280F625E0);

  swift_unknownObjectRetain();
  v8 = sub_219BE5414();
  v9 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 134218498;
    *(v10 + 4) = *(v6 + 16);

    *(v10 + 12) = 2080;
    v12 = [v3 name];
    v13 = sub_219BF5414();
    v15 = v14;

    v16 = sub_2186D1058(v13, v15, &v20);

    *(v10 + 14) = v16;
    *(v10 + 22) = 2080;
    v17 = MEMORY[0x21CECC6D0](v6, MEMORY[0x277D837D0]);
    v19 = sub_2186D1058(v17, v18, &v20);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_2186C1000, v8, v9, "PuzzleBadgingCoordinator: %ld Latest Puzzle IDs (%s): %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v10, -1, -1);
  }

  else
  {
  }

LABEL_10:
  *a2 = v6;
}

uint64_t sub_2189B3814()
{
  v1 = *(v0[2] + 128);
  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    sub_219BF5BD4();
    v0[6] = sub_219BF5BC4();
    v3 = sub_219BF5B44();

    return MEMORY[0x2822009F8](sub_2189B3B3C, v3, v2);
  }

  v4 = v0[2];
  v5 = v4[6];
  v6 = v4[7];
  __swift_project_boxed_opaque_existential_1(v4 + 3, v5);
  v7 = swift_task_alloc();
  v0[3] = v7;
  *v7 = v0;
  v7[1] = sub_2189B396C;

  return MEMORY[0x28218F9F0](v5, v6);
}

uint64_t sub_2189B396C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v5 = sub_2189B3BA4;
  }

  else
  {
    *(v4 + 40) = a1;
    v5 = sub_2189B3A94;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2189B3A94()
{
  *(v0[2] + 128) = v0[5];

  sub_219BF5BD4();
  v0[6] = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B3B3C, v2, v1);
}

uint64_t sub_2189B3B3C()
{

  sub_2189B25A0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2189B3BA4()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "PuzzleBadgingCoordinator: Failed update puzzle badging coordinator for initial puzzle play:  %@", v8, 0xCu);
    sub_218744870(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  sub_219BF5BD4();
  *(v0 + 48) = sub_219BF5BC4();
  v13 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_2189B3B3C, v13, v12);
}

uint64_t sub_2189B3D88()
{
  sub_219BE2114();
  sub_219BDC6E4();
  sub_219BE20E4();
  sub_2189B3EFC(&qword_280EC0BE0);
  sub_219BDCA54();
}

uint64_t sub_2189B3E34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187608D4;

  return sub_2189B37F4();
}

uint64_t sub_2189B3EFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PuzzleBadgingCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2189B3F3C()
{
  if (!qword_280E8D9F0)
  {
    sub_2186C6148(255, &qword_280E8DA00);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D9F0);
    }
  }
}

uint64_t sub_2189B3FA4()
{
  v1 = v0;
  sub_218760638();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (!*(v0[17] + 16))
  {
    __swift_project_boxed_opaque_existential_1(v0 + 9, v0[12]);
    result = sub_219BF3734();
    if ((result & 1) == 0)
    {
      v6 = sub_219BF5BF4();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v1;

      sub_218AB3D80(0, 0, v4, &unk_219C0F9A8, v7);
    }
  }

  return result;
}

uint64_t sub_2189B40F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187608D4;

  return sub_2189B3E34();
}

uint64_t sub_2189B41BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x53737265746C6966;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (v2)
  {
    v4 = 0x8000000219CD6770;
  }

  else
  {
    v4 = 0xEF64657463656C65;
  }

  if (*a2)
  {
    v5 = 0x53737265746C6966;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*a2)
  {
    v6 = 0xEF64657463656C65;
  }

  else
  {
    v6 = 0x8000000219CD6770;
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

uint64_t sub_2189B4274()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2189B4308()
{
  sub_219BF5524();
}

uint64_t sub_2189B4388()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_2189B4418@<X0>(char *a1@<X8>)
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

void sub_2189B4478(unint64_t *a1@<X8>)
{
  v2 = 0x8000000219CD6770;
  v3 = 0xD000000000000011;
  if (*v1)
  {
    v3 = 0x53737265746C6966;
    v2 = 0xEF64657463656C65;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_2189B44D0()
{
  result = qword_27CC16DD0;
  if (!qword_27CC16DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16DD0);
  }

  return result;
}

uint64_t sub_2189B4524(uint64_t a1)
{
  v2 = v1;
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = sub_218FA86C8(a1);
  v12 = sub_218DB24B0();
  v13 = *(v2 + 24);
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v36 = v14;
    v15 = v14 | 0x3000000000000006;
    v16 = sub_219BDFA44();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    memset(v45, 0, 40);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v42 = v13;
    sub_2187B14CC(v43, &v38, &unk_280EE7DB0, &qword_280EE7DC0);
    if (*(&v39 + 1))
    {
      sub_21875F93C(&v38, v40);
      v17 = qword_280ED32D0;
      v18 = v11;
      if (v17 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
      __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      v24 = v11;
      sub_2187448D0(&v38, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v19 = qword_280ED32E0;
      v21 = qword_280ED32E8;

      sub_2188202A8(v19);
    }

    v37 = v15;
    v39 = 0u;
    v38 = 0u;
    sub_2189B4E2C(v10, v8);
    sub_2187B14CC(v45, v40, &qword_280EE33A0, &qword_280EE33B0);
    v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v26 = (v6 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 47) & 0xFFFFFFFFFFFFFFF8;
    v35 = v10;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    sub_2189B4EAC(v8, v28 + v25);
    v29 = v28 + v26;
    v30 = v40[1];
    *v29 = v40[0];
    *(v29 + 16) = v30;
    *(v29 + 32) = v41;
    v31 = (v28 + v27);
    v32 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v31 = 0;
    v31[1] = 0;
    *v32 = v20;
    v32[1] = v19;
    v32[2] = v21;

    sub_2188202A8(v19);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v19);

    sub_2187448D0(v43, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v45, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2189B500C(v35, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187448D0(&v38, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  else
  {
    v45[0] = *(v2 + 24);
    v22 = swift_allocObject();
    *(v22 + 16) = v11;
    *&v43[0] = v22 | 0x3000000000000006;
    sub_2186CF94C();
    sub_2189B4DD4();
    v23 = v11;

    sub_219BEB484();

    sub_218932F9C(*&v43[0]);
  }

  return 1;
}

uint64_t sub_2189B4D34()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2189B4DD4()
{
  result = qword_280EE5A90;
  if (!qword_280EE5A90)
  {
    sub_2186CF94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5A90);
  }

  return result;
}

uint64_t sub_2189B4E2C(uint64_t a1, uint64_t a2)
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189B4EAC(uint64_t a1, uint64_t a2)
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189B4F2C(void *a1)
{
  sub_218747C10(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2189B500C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218747C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2189B5068(uint64_t *a1)
{
  v2 = v1;
  v39 = *v2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  MEMORY[0x28223BE20](v10);
  v40 = &v37 - v11;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  sub_2186C709C(0, qword_280E94970);
  sub_219BE1E34();
  v15 = v43[0];
  if (v43[0])
  {
    v16 = v40;
    if (v14)
    {
      if (v14 == 1)
      {
        *(v43[0] + 152) = v12 & 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      *(v43[0] + 136) = v12;
      *(v15 + 144) = v13;

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = v40;
  }

  v17 = v9;
  if (qword_280EE9AA0 != -1)
  {
    swift_once();
  }

  sub_2189B5BD4(&qword_27CC0C030, type metadata accessor for Router);
  sub_219BDC7D4();
  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F62670);
  (*(v5 + 16))(v9, v16, v4);
  v19 = sub_219BE5414();
  v20 = v4;
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v19, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v43[0] = v23;
    *v22 = 136315138;
    sub_2189B5BD4(&qword_280EE9C60, MEMORY[0x277CC9578]);
    v24 = sub_219BF7894();
    v25 = v17;
    v27 = v26;
    v37 = v2;
    v28 = *(v5 + 8);
    v28(v25, v20);
    v29 = sub_2186D1058(v24, v27, v43);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_2186C1000, v19, v21, "handleSystemNotifications: lastTCCPresentedDate = %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x21CECF960](v23, -1, -1);
    v30 = v22;
    v16 = v40;
    MEMORY[0x21CECF960](v30, -1, -1);

    v31 = v28;
    v2 = v37;
  }

  else
  {

    v31 = *(v5 + 8);
    v31(v17, v20);
  }

  v32 = v38;
  sub_219BDBBB4();
  v33 = sub_219BDBC14();
  v31(v32, v20);
  if ((v33 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    sub_2186C709C(0, &unk_280EC4290);
    sub_219BE1E34();
    if (v42)
    {
      v34 = sub_2186CB1F0(&v41, v43);
      MEMORY[0x28223BE20](v34);
      *(&v37 - 2) = v43;
      type metadata accessor for NotificationSettings();
      sub_219BE3204();
      sub_2187D9028();
      v35 = sub_219BF66A4();
      sub_219BE2F94();

      v31(v16, v20);
      return __swift_destroy_boxed_opaque_existential_1(v43);
    }

    sub_2189B5AB0(&v41);
  }

  [objc_opt_self() openNewsSystemNotificationSettings];
  return (v31)(v16, v20);
}
uint64_t sub_216BF64D0()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_216BF6658;

  return sub_216BF51CC(v3, v4, v0 + 24);
}

uint64_t sub_216BF658C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 256))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216BF65CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_216BF665C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1860);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v178 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v178 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v178 - v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  v178[52] = v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v178[53] = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v179 = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v180 = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v181 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v182 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v183 = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_4();
  v184 = v79;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_4();
  v185 = v81;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_4();
  v186 = v83;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_6_4();
  v187 = v85;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_4();
  v188 = v87;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_6_4();
  v189 = v89;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_6_4();
  v190 = v91;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_4();
  v191 = v93;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_6_4();
  v192 = v95;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_6_4();
  v193 = v97;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_6_4();
  v194 = v99;
  OUTLINED_FUNCTION_3_1();
  v101 = MEMORY[0x28223BE20](v100);
  v195 = v178 - v102;
  __swift_allocate_value_buffer(v101, qword_280E73D98);
  v196 = __swift_project_value_buffer(v0, qword_280E73D98);
  sub_2166F1194();
  sub_2166F1214();
  sub_21700CE74();
  type metadata accessor for AccountSignInAction();
  sub_216BF9930(qword_280E3E380, type metadata accessor for AccountSignInAction);
  sub_216BF9930(&qword_280E3E378, type metadata accessor for AccountSignInAction);
  OUTLINED_FUNCTION_5_101(1);
  sub_21700CE64();
  v103 = *(v1 + 8);
  v103(v4, v0);
  type metadata accessor for AddItemsToPlaylistAction();
  sub_216BF9930(qword_280E36FA0, type metadata accessor for AddItemsToPlaylistAction);
  sub_216BF9930(&qword_280E36F98, type metadata accessor for AddItemsToPlaylistAction);
  OUTLINED_FUNCTION_5_101(4);
  sub_21700CE64();
  v104 = OUTLINED_FUNCTION_45();
  (v103)(v104);
  type metadata accessor for ShowInAppleMusicAction();
  sub_216BF9930(&qword_280E48160, type metadata accessor for ShowInAppleMusicAction);
  sub_216BF9930(&qword_280E48158, type metadata accessor for ShowInAppleMusicAction);
  OUTLINED_FUNCTION_5_101(64);
  sub_21700CE64();
  v105 = OUTLINED_FUNCTION_82_1();
  (v103)(v105);
  type metadata accessor for ShowInLibraryAction();
  sub_216BF9930(&qword_280E3D110, type metadata accessor for ShowInLibraryAction);
  sub_216BF9930(&qword_280E3D108, type metadata accessor for ShowInLibraryAction);
  OUTLINED_FUNCTION_5_101(65);
  sub_21700CE64();
  v103(v9, v0);
  type metadata accessor for ShowIniTunesStoreAction();
  sub_216BF9930(qword_280E37500, type metadata accessor for ShowIniTunesStoreAction);
  OUTLINED_FUNCTION_10_75(&qword_280E374F8);
  OUTLINED_FUNCTION_5_101(66);
  v106 = v178[0];
  sub_21700CE64();
  v103(v12, v0);
  type metadata accessor for NewPlaylistAction();
  sub_216BF9930(qword_280E3FE68, type metadata accessor for NewPlaylistAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3FE60);
  v197 = 0;
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v103(v106, v0);
  type metadata accessor for ApproveAllFollowRequestsAction();
  sub_216BF9930(&qword_280E30E70, type metadata accessor for ApproveAllFollowRequestsAction);
  OUTLINED_FUNCTION_10_75(&qword_280E30E68);
  OUTLINED_FUNCTION_5_101(3);
  OUTLINED_FUNCTION_2_136();
  v107 = OUTLINED_FUNCTION_45();
  (v103)(v107);
  type metadata accessor for BlockUserAction();
  sub_216BF9930(&qword_280E42938, type metadata accessor for BlockUserAction);
  OUTLINED_FUNCTION_10_75(&qword_280E42930);
  OUTLINED_FUNCTION_5_101(7);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v108 = OUTLINED_FUNCTION_82_1();
  (v103)(v108);
  type metadata accessor for CompleteSocialOnboardingAction();
  sub_216BF9930(qword_280E30DD0, type metadata accessor for CompleteSocialOnboardingAction);
  OUTLINED_FUNCTION_10_75(&qword_280E30DC8);
  OUTLINED_FUNCTION_5_101(9);
  OUTLINED_FUNCTION_2_136();
  v109 = OUTLINED_FUNCTION_45();
  (v103)(v109);
  type metadata accessor for OpenContextualMenuAction();
  sub_216BF9930(&qword_280E36638, type metadata accessor for OpenContextualMenuAction);
  OUTLINED_FUNCTION_10_75(&qword_280E36630);
  OUTLINED_FUNCTION_5_101(28);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v110 = OUTLINED_FUNCTION_82_1();
  (v103)(v110);
  type metadata accessor for CreateArtistStationAction();
  sub_216BF9930(qword_280E35A98, type metadata accessor for CreateArtistStationAction);
  OUTLINED_FUNCTION_10_75(&qword_280E35A90);
  OUTLINED_FUNCTION_5_101(11);
  OUTLINED_FUNCTION_2_136();
  v111 = OUTLINED_FUNCTION_45();
  (v103)(v111);
  type metadata accessor for CreateStationAction();
  sub_216BF9930(qword_280E3E238, type metadata accessor for CreateStationAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3E230);
  OUTLINED_FUNCTION_5_101(12);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v112 = OUTLINED_FUNCTION_82_1();
  (v103)(v112);
  type metadata accessor for DismissArtistFavoritingTooltipAction();
  sub_216BF9930(qword_280E2E1D0, type metadata accessor for DismissArtistFavoritingTooltipAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2E1C8);
  OUTLINED_FUNCTION_5_101(14);
  OUTLINED_FUNCTION_2_136();
  v113 = OUTLINED_FUNCTION_45();
  (v103)(v113);
  type metadata accessor for DismissModalPresentationAction();
  sub_216BF9930(qword_280E30D30, type metadata accessor for DismissModalPresentationAction);
  OUTLINED_FUNCTION_10_75(&qword_280E30D28);
  OUTLINED_FUNCTION_5_101(15);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v114 = OUTLINED_FUNCTION_82_1();
  (v103)(v114);
  type metadata accessor for DismissSearchFocusAction();
  sub_216BF9930(qword_280E36AD0, type metadata accessor for DismissSearchFocusAction);
  OUTLINED_FUNCTION_10_75(&qword_280E36AC8);
  OUTLINED_FUNCTION_5_101(16);
  OUTLINED_FUNCTION_2_136();
  v115 = OUTLINED_FUNCTION_45();
  (v103)(v115);
  type metadata accessor for DownloadAction();
  sub_216BF9930(&qword_280E43758, type metadata accessor for DownloadAction);
  OUTLINED_FUNCTION_10_75(&qword_280E43750);
  OUTLINED_FUNCTION_5_101(17);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v116 = OUTLINED_FUNCTION_82_1();
  (v103)(v116);
  type metadata accessor for FindFriendsBatchFollowAction();
  sub_216BF9930(&qword_280E32468, type metadata accessor for FindFriendsBatchFollowAction);
  OUTLINED_FUNCTION_10_75(&qword_280E32460);
  OUTLINED_FUNCTION_5_101(19);
  OUTLINED_FUNCTION_2_136();
  v117 = OUTLINED_FUNCTION_45();
  (v103)(v117);
  type metadata accessor for FlowAction(0);
  sub_216BF9930(qword_280E45BB8, type metadata accessor for FlowAction);
  OUTLINED_FUNCTION_10_75(&qword_280E45BB0);
  OUTLINED_FUNCTION_5_101(20);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v118 = OUTLINED_FUNCTION_82_1();
  (v103)(v118);
  type metadata accessor for FollowUserAction();
  sub_216BF9930(qword_280E412C0, type metadata accessor for FollowUserAction);
  OUTLINED_FUNCTION_10_75(&qword_280E412B8);
  OUTLINED_FUNCTION_5_101(21);
  OUTLINED_FUNCTION_2_136();
  v119 = OUTLINED_FUNCTION_45();
  (v103)(v119);
  type metadata accessor for FollowRequestResponseAction();
  sub_216BF9930(&qword_280E33BB8, type metadata accessor for FollowRequestResponseAction);
  OUTLINED_FUNCTION_10_75(&qword_280E33BB0);
  OUTLINED_FUNCTION_5_101(22);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v120 = OUTLINED_FUNCTION_82_1();
  (v103)(v120);
  type metadata accessor for GetInfoAction();
  sub_216BF9930(&qword_280E43F58, type metadata accessor for GetInfoAction);
  OUTLINED_FUNCTION_10_75(&qword_280E43F50);
  OUTLINED_FUNCTION_5_101(23);
  OUTLINED_FUNCTION_2_136();
  v121 = OUTLINED_FUNCTION_45();
  (v103)(v121);
  type metadata accessor for HideAllPlaylistsAction();
  sub_216BF9930(qword_280E39410, type metadata accessor for HideAllPlaylistsAction);
  OUTLINED_FUNCTION_10_75(&qword_280E39408);
  OUTLINED_FUNCTION_5_101(24);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v122 = OUTLINED_FUNCTION_82_1();
  (v103)(v122);
  type metadata accessor for IntentAction();
  sub_216BF9930(qword_280E44C18, type metadata accessor for IntentAction);
  OUTLINED_FUNCTION_10_75(&qword_280E44C10);
  OUTLINED_FUNCTION_5_101(25);
  OUTLINED_FUNCTION_2_136();
  v123 = OUTLINED_FUNCTION_45();
  (v103)(v123);
  type metadata accessor for InvalidationAction();
  sub_216BF9930(qword_280E3EDC0, type metadata accessor for InvalidationAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3EDB8);
  OUTLINED_FUNCTION_5_101(26);
  v124 = v178[19];
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v125 = OUTLINED_FUNCTION_82_1();
  (v103)(v125);
  sub_21700D3B4();
  v197 = 10;
  v126 = v178[20];
  sub_21700CE64();
  v103(v124, v0);
  sub_21700CE94();
  v197 = 18;
  v127 = v178[21];
  sub_21700CE64();
  v103(v126, v0);
  sub_21700E084();
  v197 = 2;
  sub_21700CE64();
  v103(v127, v0);
  type metadata accessor for ModalFlowAction();
  sub_216BF9930(qword_280E426A8, type metadata accessor for ModalFlowAction);
  OUTLINED_FUNCTION_10_75(&qword_280E426A0);
  OUTLINED_FUNCTION_5_101(27);
  OUTLINED_FUNCTION_2_136();
  v128 = OUTLINED_FUNCTION_45();
  (v103)(v128);
  type metadata accessor for AllowDeviceNotificationSettingsAction();
  sub_216BF9930(qword_280E2DE90, type metadata accessor for AllowDeviceNotificationSettingsAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2DE88);
  OUTLINED_FUNCTION_5_101(29);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v129 = OUTLINED_FUNCTION_82_1();
  (v103)(v129);
  type metadata accessor for OpenExternalURLAction();
  sub_216BF9930(qword_280E3A6B0, type metadata accessor for OpenExternalURLAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3A6A8);
  OUTLINED_FUNCTION_5_101(30);
  OUTLINED_FUNCTION_2_136();
  v130 = OUTLINED_FUNCTION_45();
  (v103)(v130);
  type metadata accessor for OpenFinancePageAction(0);
  sub_216BF9930(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3A548);
  OUTLINED_FUNCTION_5_101(31);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v131 = OUTLINED_FUNCTION_82_1();
  (v103)(v131);
  type metadata accessor for OpenPurchaseStorePageAction();
  sub_216BF9930(qword_280E33728, type metadata accessor for OpenPurchaseStorePageAction);
  OUTLINED_FUNCTION_10_75(&qword_280E33720);
  OUTLINED_FUNCTION_5_101(32);
  OUTLINED_FUNCTION_2_136();
  v132 = OUTLINED_FUNCTION_45();
  (v103)(v132);
  type metadata accessor for EngagementEventAction();
  sub_216BF9930(qword_280E3A9B8, type metadata accessor for EngagementEventAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3A9B0);
  OUTLINED_FUNCTION_5_101(33);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v133 = OUTLINED_FUNCTION_82_1();
  (v103)(v133);
  type metadata accessor for OpenUnifiedMessagesSheetAction();
  sub_216BF9930(qword_280E30B28, type metadata accessor for OpenUnifiedMessagesSheetAction);
  OUTLINED_FUNCTION_10_75(&qword_280E30B20);
  OUTLINED_FUNCTION_5_101(34);
  OUTLINED_FUNCTION_2_136();
  v134 = OUTLINED_FUNCTION_45();
  (v103)(v134);
  type metadata accessor for UnifiedMessagesRequestAction();
  sub_216BF9930(qword_280E31D20, type metadata accessor for UnifiedMessagesRequestAction);
  OUTLINED_FUNCTION_10_75(&qword_280E31D18);
  OUTLINED_FUNCTION_5_101(35);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v135 = OUTLINED_FUNCTION_82_1();
  (v103)(v135);
  type metadata accessor for PausePlaybackAction();
  sub_216BF9930(qword_280E3D7E0, type metadata accessor for PausePlaybackAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3D7D8);
  OUTLINED_FUNCTION_5_101(36);
  OUTLINED_FUNCTION_2_136();
  v136 = OUTLINED_FUNCTION_45();
  (v103)(v136);
  type metadata accessor for PlayAction();
  sub_216BF9930(qword_280E45678, type metadata accessor for PlayAction);
  OUTLINED_FUNCTION_10_75(&qword_280E45670);
  OUTLINED_FUNCTION_5_101(38);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v137 = OUTLINED_FUNCTION_82_1();
  (v103)(v137);
  type metadata accessor for PlayLaterAction();
  sub_216BF9930(qword_280E42580, type metadata accessor for PlayLaterAction);
  OUTLINED_FUNCTION_10_75(&qword_280E42578);
  OUTLINED_FUNCTION_5_101(39);
  OUTLINED_FUNCTION_2_136();
  v138 = OUTLINED_FUNCTION_45();
  (v103)(v138);
  type metadata accessor for PlayNextAction();
  sub_216BF9930(qword_280E430E0, type metadata accessor for PlayNextAction);
  OUTLINED_FUNCTION_10_75(&qword_280E430D8);
  OUTLINED_FUNCTION_5_101(40);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v139 = OUTLINED_FUNCTION_82_1();
  (v103)(v139);
  type metadata accessor for PopAction();
  sub_216BF9930(&qword_280E2B650, type metadata accessor for PopAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2B648);
  OUTLINED_FUNCTION_5_101(42);
  OUTLINED_FUNCTION_2_136();
  v140 = OUTLINED_FUNCTION_45();
  (v103)(v140);
  type metadata accessor for PopToRootAction();
  sub_216BF9930(qword_280E424C0, type metadata accessor for PopToRootAction);
  OUTLINED_FUNCTION_10_75(&qword_280E424B8);
  OUTLINED_FUNCTION_5_101(41);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v141 = OUTLINED_FUNCTION_82_1();
  (v103)(v141);
  type metadata accessor for PresentAlertAction();
  sub_216BF9930(qword_280E3EB18, type metadata accessor for PresentAlertAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3EB10);
  OUTLINED_FUNCTION_5_101(43);
  OUTLINED_FUNCTION_2_136();
  v142 = OUTLINED_FUNCTION_45();
  (v103)(v142);
  type metadata accessor for ShareImageRequestAction();
  sub_216BF9930(&qword_280E37688, type metadata accessor for ShareImageRequestAction);
  OUTLINED_FUNCTION_10_75(&qword_280E37680);
  OUTLINED_FUNCTION_5_101(63);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v143 = OUTLINED_FUNCTION_82_1();
  (v103)(v143);
  type metadata accessor for PromptBlockUserAction();
  sub_216BF9930(qword_280E39F40, type metadata accessor for PromptBlockUserAction);
  OUTLINED_FUNCTION_10_75(&qword_280E39F38);
  OUTLINED_FUNCTION_5_101(44);
  OUTLINED_FUNCTION_2_136();
  v144 = OUTLINED_FUNCTION_45();
  (v103)(v144);
  type metadata accessor for PromptRemoveFollowerAction();
  sub_216BF9930(&qword_280E34220, type metadata accessor for PromptRemoveFollowerAction);
  OUTLINED_FUNCTION_10_75(&qword_280E34218);
  OUTLINED_FUNCTION_5_101(45);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v145 = OUTLINED_FUNCTION_82_1();
  (v103)(v145);
  type metadata accessor for RemoveAppWithAccessAction();
  sub_216BF9930(qword_280E35180, type metadata accessor for RemoveAppWithAccessAction);
  OUTLINED_FUNCTION_10_75(&qword_280E35178);
  OUTLINED_FUNCTION_5_101(46);
  OUTLINED_FUNCTION_2_136();
  v146 = OUTLINED_FUNCTION_45();
  (v103)(v146);
  type metadata accessor for RemoveDownloadAction();
  sub_216BF9930(&qword_280E3BAE0, type metadata accessor for RemoveDownloadAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3BAD8);
  OUTLINED_FUNCTION_5_101(47);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v147 = OUTLINED_FUNCTION_82_1();
  (v103)(v147);
  type metadata accessor for RemoveFollowerAction();
  sub_216BF9930(qword_280E3BA38, type metadata accessor for RemoveFollowerAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3BA30);
  OUTLINED_FUNCTION_5_101(48);
  OUTLINED_FUNCTION_2_136();
  v148 = OUTLINED_FUNCTION_45();
  (v103)(v148);
  type metadata accessor for RemoveItemAction();
  sub_216BF9930(qword_280E40948, type metadata accessor for RemoveItemAction);
  OUTLINED_FUNCTION_10_75(&qword_280E40940);
  OUTLINED_FUNCTION_5_101(49);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v149 = OUTLINED_FUNCTION_82_1();
  (v103)(v149);
  type metadata accessor for RemovePersistenceItemAction();
  sub_216BF9930(qword_280E332B0, type metadata accessor for RemovePersistenceItemAction);
  OUTLINED_FUNCTION_10_75(&qword_280E332A8);
  OUTLINED_FUNCTION_5_101(50);
  OUTLINED_FUNCTION_2_136();
  v150 = OUTLINED_FUNCTION_45();
  (v103)(v150);
  type metadata accessor for RemoveRecentLibrarySearchesAction();
  sub_216BF9930(qword_280E2F0B8, type metadata accessor for RemoveRecentLibrarySearchesAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2F0B0);
  OUTLINED_FUNCTION_5_101(51);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v151 = OUTLINED_FUNCTION_82_1();
  (v103)(v151);
  type metadata accessor for RemoveSectionAction();
  sub_216BF9930(&qword_280E3D438, type metadata accessor for RemoveSectionAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3D430);
  OUTLINED_FUNCTION_5_101(52);
  OUTLINED_FUNCTION_2_136();
  v152 = OUTLINED_FUNCTION_45();
  (v103)(v152);
  type metadata accessor for ResumePlaybackAction();
  sub_216BF9930(&qword_280E3B990, type metadata accessor for ResumePlaybackAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3B988);
  OUTLINED_FUNCTION_5_101(57);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v153 = OUTLINED_FUNCTION_82_1();
  (v103)(v153);
  type metadata accessor for CollaborationAction();
  sub_216BF9930(&qword_280E3E2D8, type metadata accessor for CollaborationAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3E2D0);
  OUTLINED_FUNCTION_5_101(8);
  OUTLINED_FUNCTION_2_136();
  v154 = OUTLINED_FUNCTION_45();
  (v103)(v154);
  type metadata accessor for PromptRemoveAppWithAccessAction();
  sub_216BF9930(qword_280E30098, type metadata accessor for PromptRemoveAppWithAccessAction);
  OUTLINED_FUNCTION_10_75(&qword_280E30090);
  OUTLINED_FUNCTION_5_101(37);
  OUTLINED_FUNCTION_0_198();
  sub_21700CE64();
  v155 = OUTLINED_FUNCTION_82_1();
  (v103)(v155);
  type metadata accessor for ReportMusicItemConcernAction();
  sub_216BF9930(&qword_280E47630, type metadata accessor for ReportMusicItemConcernAction);
  OUTLINED_FUNCTION_10_75(&qword_280E47628);
  OUTLINED_FUNCTION_5_101(54);
  OUTLINED_FUNCTION_2_136();
  v156 = OUTLINED_FUNCTION_45();
  (v103)(v156);
  type metadata accessor for SearchAction();
  sub_216BF9930(qword_280E44778, type metadata accessor for SearchAction);
  OUTLINED_FUNCTION_10_75(&qword_280E44770);
  OUTLINED_FUNCTION_5_101(58);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v157 = OUTLINED_FUNCTION_82_1();
  (v103)(v157);
  type metadata accessor for ToggleContactCheckAllowedAction(0);
  sub_216BF9930(qword_280E2FC48, type metadata accessor for ToggleContactCheckAllowedAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2FC40);
  OUTLINED_FUNCTION_5_101(75);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v158 = OUTLINED_FUNCTION_45();
  (v103)(v158);
  type metadata accessor for ToggleDiscoverableByContactAction(0);
  sub_216BF9930(&qword_280E2EDB0, type metadata accessor for ToggleDiscoverableByContactAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2EDB8);
  OUTLINED_FUNCTION_5_101(76);
  v159 = v179;
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v160 = OUTLINED_FUNCTION_82_1();
  (v103)(v160);
  type metadata accessor for SelectTabAction();
  sub_216BF9930(qword_280E42060, type metadata accessor for SelectTabAction);
  sub_216BF9930(&unk_280E42050, type metadata accessor for SelectTabAction);
  OUTLINED_FUNCTION_5_101(60);
  OUTLINED_FUNCTION_12_62();
  sub_21700CE64();
  v103(v159, v0);
  OUTLINED_FUNCTION_5_101(59);
  v161 = v181;
  OUTLINED_FUNCTION_12_62();
  sub_21700CE64();
  v162 = OUTLINED_FUNCTION_45();
  (v103)(v162);
  type metadata accessor for SetPersistenceItemAction();
  sub_216BF9930(&qword_280E36028, type metadata accessor for SetPersistenceItemAction);
  OUTLINED_FUNCTION_10_75(&qword_280E36020);
  OUTLINED_FUNCTION_5_101(61);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v103(v161, v0);
  type metadata accessor for SetSuggestionSearchTermAction();
  sub_216BF9930(qword_280E31290, type metadata accessor for SetSuggestionSearchTermAction);
  OUTLINED_FUNCTION_10_75(&qword_280E31288);
  OUTLINED_FUNCTION_5_101(62);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v163 = OUTLINED_FUNCTION_45();
  (v103)(v163);
  type metadata accessor for ShuffleAction();
  sub_216BF9930(qword_280E43910, type metadata accessor for ShuffleAction);
  OUTLINED_FUNCTION_10_75(&qword_280E43908);
  OUTLINED_FUNCTION_5_101(67);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v164 = OUTLINED_FUNCTION_82_1();
  (v103)(v164);
  type metadata accessor for SocialOnboardingUpdateUserAttributesAction();
  sub_216BF9930(qword_280E2D120, type metadata accessor for SocialOnboardingUpdateUserAttributesAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2D118);
  OUTLINED_FUNCTION_5_101(68);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v165 = OUTLINED_FUNCTION_45();
  (v103)(v165);
  type metadata accessor for SubscriptionPurchaseAction();
  sub_216BF9930(qword_280E33D00, type metadata accessor for SubscriptionPurchaseAction);
  OUTLINED_FUNCTION_10_75(&qword_280E33CF8);
  OUTLINED_FUNCTION_5_101(69);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v166 = OUTLINED_FUNCTION_82_1();
  (v103)(v166);
  type metadata accessor for ReplaySelectYearAction(0);
  sub_216BF9930(&qword_280E38E20, type metadata accessor for ReplaySelectYearAction);
  OUTLINED_FUNCTION_10_75(&qword_280E38E18);
  OUTLINED_FUNCTION_5_101(55);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v167 = OUTLINED_FUNCTION_45();
  (v103)(v167);
  type metadata accessor for ReplaySelectPeriodAction(0);
  sub_216BF9930(qword_280E36470, type metadata accessor for ReplaySelectPeriodAction);
  OUTLINED_FUNCTION_10_75(&qword_280E36468);
  OUTLINED_FUNCTION_5_101(56);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v168 = OUTLINED_FUNCTION_82_1();
  (v103)(v168);
  type metadata accessor for UnblockUserAction();
  sub_216BF9930(qword_280E3F590, type metadata accessor for UnblockUserAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3F588);
  OUTLINED_FUNCTION_5_101(70);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v169 = OUTLINED_FUNCTION_45();
  (v103)(v169);
  type metadata accessor for UnfollowUserAction();
  sub_216BF9930(qword_280E3E4B8, type metadata accessor for UnfollowUserAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3E4B0);
  OUTLINED_FUNCTION_5_101(71);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v170 = OUTLINED_FUNCTION_82_1();
  (v103)(v170);
  type metadata accessor for UpdateFindFriendsPrivacySettingsAction();
  sub_216BF9930(&qword_280E2DAA8, type metadata accessor for UpdateFindFriendsPrivacySettingsAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2DAA0);
  OUTLINED_FUNCTION_5_101(72);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v171 = OUTLINED_FUNCTION_45();
  (v103)(v171);
  type metadata accessor for UpdateNotificationSettingsAction();
  sub_216BF9930(&qword_280E2F580, type metadata accessor for UpdateNotificationSettingsAction);
  OUTLINED_FUNCTION_10_75(&unk_280E2F570);
  OUTLINED_FUNCTION_5_101(73);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v172 = OUTLINED_FUNCTION_82_1();
  (v103)(v172);
  type metadata accessor for PerformPlaylistCollaborationRequestAction();
  sub_216BF9930(&qword_280E2D340, type metadata accessor for PerformPlaylistCollaborationRequestAction);
  OUTLINED_FUNCTION_10_75(&qword_280E2D338);
  OUTLINED_FUNCTION_5_101(74);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v173 = OUTLINED_FUNCTION_45();
  (v103)(v173);
  type metadata accessor for AddRecentSearchAction();
  sub_216BF9930(qword_280E3AD18, type metadata accessor for AddRecentSearchAction);
  OUTLINED_FUNCTION_10_75(&qword_280E3AD10);
  OUTLINED_FUNCTION_5_101(5);
  OUTLINED_FUNCTION_1_169();
  sub_21700CE64();
  v174 = OUTLINED_FUNCTION_82_1();
  (v103)(v174);
  type metadata accessor for AddRecentSearchTermAction();
  sub_216BF9930(qword_280E35CE0, type metadata accessor for AddRecentSearchTermAction);
  OUTLINED_FUNCTION_10_75(&qword_280E35CD8);
  OUTLINED_FUNCTION_5_101(6);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v175 = OUTLINED_FUNCTION_45();
  (v103)(v175);
  type metadata accessor for ClearRecentSearchesAction();
  sub_216BF9930(&qword_280E35B38, type metadata accessor for ClearRecentSearchesAction);
  OUTLINED_FUNCTION_10_75(&qword_280E35B30);
  OUTLINED_FUNCTION_5_101(13);
  OUTLINED_FUNCTION_3_127();
  sub_21700CE64();
  v176 = OUTLINED_FUNCTION_82_1();
  return (v103)(v176);
}

uint64_t sub_216BF9930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ActionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xB4)
  {
    if (a2 + 76 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 76) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 77;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x4D;
  v5 = v6 - 77;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ActionKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 76 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 76) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xB4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xB3)
  {
    v6 = ((a2 - 180) >> 8) + 1;
    *result = a2 + 76;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 76;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_216BF9ACC()
{
  v0 = sub_21700F7F4();

  if (v0 >= 0x4D)
  {
    return 77;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_216BF9B44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216BF9ACC();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for VideosPageIntent()
{
  result = qword_27CAC5B68;
  if (!qword_27CAC5B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_216BF9C30(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for VideosPageIntent();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D38);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216BF9E30(uint64_t a1)
{
  result = sub_2166CE864(&qword_27CAC5B78, type metadata accessor for VideosPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216BF9ED0(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE864(&qword_27CAC5B78, type metadata accessor for VideosPageIntent);
  result = sub_2166CE864(qword_27CAC5B80, type metadata accessor for VideosPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216BF9F7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v85 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v74 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v74 - v21;
  sub_21700D7A4();
  OUTLINED_FUNCTION_3_128();
  sub_21700CE04();
  v76 = v6;
  v24 = *(v6 + 16);
  v23 = v6 + 16;
  v86 = v4;
  v79 = v24;
  v24(v9, v88, v4);
  v77 = v9;
  sub_21700D734();
  v82 = a1;
  sub_21700CE04();
  v25 = sub_21700CDB4();
  v27 = v26;
  v81 = *(v12 + 8);
  v83 = v12 + 8;
  v84 = v10;
  v81(v20, v10);
  if (v27)
  {
    v78 = type metadata accessor for PlaylistDetailHeaderLockup();
    *&v87 = v25;
    *(&v87 + 1) = v27;
    v28 = v85;
    sub_21700F364();
    type metadata accessor for ContentDescriptor();
    OUTLINED_FUNCTION_3_128();
    sub_21700CE04();
    v29 = v77;
    v30 = v86;
    v31 = v79;
    v79(v77, v88, v86);
    sub_2166D5520(qword_280E40390, type metadata accessor for ContentDescriptor);
    OUTLINED_FUNCTION_1_170();
    type metadata accessor for Artwork();
    sub_21700CE04();
    v31(v29, v88, v30);
    v32 = v78;
    sub_2166D5520(&qword_280E2BF60, type metadata accessor for Artwork);
    v80 = v23;
    v33 = v28;
    OUTLINED_FUNCTION_1_170();
    sub_21700CE04();
    v34 = sub_21700CDB4();
    v36 = v35;
    v81(v22, v84);
    v37 = (v28 + v32[6]);
    *v37 = v34;
    v37[1] = v36;
    sub_21700CE04();
    v38 = v88;
    v39 = v79;
    v79(v29, v88, v86);
    sub_216AC6598();
    *(v33 + v32[7]) = v40;
    v41 = v33;
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_128();
    sub_21700CE04();
    v42 = sub_21700CDB4();
    v44 = v43;
    v45 = v81;
    v81(v22, v84);
    v46 = (v41 + v32[8]);
    *v46 = v42;
    v46[1] = v44;
    type metadata accessor for ModalPresentationDescriptor();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_128();
    sub_21700CE04();
    v47 = v77;
    v48 = v38;
    v49 = v86;
    v39(v77, v48, v86);
    sub_2166D5520(&qword_27CAC1C70, type metadata accessor for ModalPresentationDescriptor);
    v50 = v85;
    OUTLINED_FUNCTION_1_170();
    v51 = v75;
    sub_21700CE04();
    LOBYTE(v42) = sub_21700CD44();
    v45(v51, v84);
    *(v50 + v32[10]) = v42 & 1;
    type metadata accessor for VideoArtwork();
    sub_21700CE04();
    v52 = v88;
    v53 = v49;
    v54 = v79;
    v79(v47, v88, v53);
    sub_2166D5520(qword_280E44448, type metadata accessor for VideoArtwork);
    OUTLINED_FUNCTION_1_170();
    type metadata accessor for LinkComponentModel();
    OUTLINED_FUNCTION_4_111(0x79616C70u);
    sub_21700CE04();
    v55 = v47;
    v54(v47, v52, v86);
    v75 = sub_2166D5520(&qword_280E3EC48, type metadata accessor for LinkComponentModel);
    sub_21700D734();
    sub_21700CE04();
    v56 = v86;
    v54(v55, v52, v86);
    sub_21700D734();
    OUTLINED_FUNCTION_4_111(0x676E6973u);
    sub_21700CE04();
    v57 = v88;
    v54(v55, v88, v56);
    v58 = v78;
    sub_21700D734();
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_3_128();
    v59 = v82;
    sub_21700CE04();
    v54(v55, v57, v56);
    sub_216AC7D00();
    sub_21700D734();
    v60 = v58;
    v61 = v85;
    *(v85 + *(v58 + 44)) = v87;
    OUTLINED_FUNCTION_11_0();
    v62 = v74;
    sub_21700CE04();
    v63 = sub_21700CD24();
    v65 = v64;
    (*(v76 + 8))(v57, v86);
    v66 = v84;
    v67 = v81;
    v81(v59, v84);
    result = v67(v62, v66);
    v69 = 10;
    if ((v65 & 1) == 0)
    {
      v69 = v63;
    }

    *(v61 + *(v60 + 72)) = v69;
  }

  else
  {
    v70 = sub_21700E2E4();
    sub_2166D5520(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v72 = v71;
    v73 = type metadata accessor for PlaylistDetailHeaderLockup();
    *v72 = 25705;
    v72[1] = 0xE200000000000000;
    v72[2] = v73;
    (*(*(v70 - 8) + 104))(v72, *MEMORY[0x277D22530], v70);
    swift_willThrow();
    (*(v76 + 8))(v88, v86);
    v81(v82, v84);
    return sub_2167B0250(v85);
  }

  return result;
}

uint64_t sub_216BFA9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

void sub_216BFAC2C()
{
  sub_216BFADB0();
  if (v0 <= 0x3F)
  {
    sub_2170071B4();
    if (v1 <= 0x3F)
    {
      sub_216C025EC(319, &qword_27CAC5C10, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216BFAE20();
        if (v3 <= 0x3F)
        {
          sub_216C025EC(319, &qword_280E2B460, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_216BFADB0()
{
  result = qword_27CAC5C08;
  if (!qword_27CAC5C08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CAC5C08);
  }

  return result;
}

void sub_216BFAE20()
{
  if (!qword_280E29AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC98);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29AA8);
    }
  }
}

uint64_t sub_216BFAEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v215 = a2;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5DB8);
  MEMORY[0x28223BE20](v214);
  v213 = &v179 - v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE608);
  MEMORY[0x28223BE20](v209);
  v210 = &v179 - v6;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5DC0);
  MEMORY[0x28223BE20](v212);
  v211 = &v179 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v8 - 8);
  v197 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v196 = &v179 - v11;
  MEMORY[0x28223BE20](v12);
  v195 = &v179 - v13;
  MEMORY[0x28223BE20](v14);
  v194 = &v179 - v15;
  v16 = sub_21700C444();
  v202 = *(v16 - 8);
  v203 = v16;
  MEMORY[0x28223BE20](v16);
  v193 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v192 = &v179 - v19;
  MEMORY[0x28223BE20](v20);
  v191 = &v179 - v21;
  MEMORY[0x28223BE20](v22);
  v190 = &v179 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v24 - 8);
  v189 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v179 - v27;
  MEMORY[0x28223BE20](v29);
  v187 = &v179 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v179 - v32;
  MEMORY[0x28223BE20](v34);
  v185 = &v179 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v179 - v37;
  MEMORY[0x28223BE20](v39);
  v183 = &v179 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v179 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v44 - 8);
  v181 = &v179 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v179 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v179 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v179 - v53;
  v55 = sub_217007474();
  v204 = *(v55 - 8);
  v205 = v55;
  MEMORY[0x28223BE20](v55);
  v201 = &v179 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v188 = &v179 - v58;
  MEMORY[0x28223BE20](v59);
  v200 = &v179 - v60;
  MEMORY[0x28223BE20](v61);
  v186 = &v179 - v62;
  MEMORY[0x28223BE20](v63);
  v199 = &v179 - v64;
  MEMORY[0x28223BE20](v65);
  v184 = &v179 - v66;
  MEMORY[0x28223BE20](v67);
  v198 = &v179 - v68;
  MEMORY[0x28223BE20](v69);
  v182 = &v179 - v70;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F8);
  v207 = *(v71 - 8);
  v208 = v71;
  MEMORY[0x28223BE20](v71);
  MEMORY[0x28223BE20](v72);
  MEMORY[0x28223BE20](v73);
  MEMORY[0x28223BE20](v74);
  v79 = &v179 - v78;
  v80 = *(a1 + 36);
  v81 = *(a1 + 40);
  v206 = a1;
  v82 = v3;
  v83 = *(v3 + v81 + 8);
  if (*(v3 + v80 + 8))
  {
    if (v83)
    {
      v79 = v75;
      sub_216683A80(v3, v28, &qword_27CAB6D60);
      v84 = type metadata accessor for Artwork();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v84);
      v86 = v207;
      if (EnumTagSinglePayload == 1)
      {
        sub_2166997CC(v28, &qword_27CAB6D60);
        v87 = sub_21700C4B4();
        v88 = v181;
        v89 = 1;
      }

      else
      {
        v109 = sub_21700C4B4();
        v110 = v181;
        (*(*(v109 - 8) + 16))(v181, v28, v109);
        sub_216C01F20(v28, type metadata accessor for Artwork);
        v88 = v110;
        v89 = 0;
        v87 = v109;
      }

      __swift_storeEnumTagSinglePayload(v88, v89, 1, v87);
      v111 = v193;
      v112 = v189;
      v113 = v202;
      sub_217007464();
      v114 = v82;
      sub_216683A80(v82, v112, &qword_27CAB6D60);
      if (__swift_getEnumTagSinglePayload(v112, 1, v84) == 1)
      {
        sub_2166997CC(v112, &qword_27CAB6D60);
        v115 = v197;
        v116 = v203;
        __swift_storeEnumTagSinglePayload(v197, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v115, 1, v116) != 1)
        {
          sub_2166997CC(v115, &qword_27CAB7530);
        }
      }

      else
      {
        v136 = v112 + *(v84 + 20);
        v137 = v197;
        v116 = v203;
        (*(v113 + 16))(v197, v136, v203);
        sub_216C01F20(v112, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v137, 0, 1, v116);
        (*(v113 + 32))(v111, v137, v116);
      }

      v138 = v188;
      v139 = v201;
      sub_2170073E4();
      (*(v113 + 8))(v111, v116);
      v140 = v205;
      v141 = *(v204 + 8);
      v141(v139, v205);
      v142 = (v114 + *(v206 + 44));
      v143 = *v142;
      v144 = v142[1];
      v145 = swift_allocObject();
      *(v145 + 16) = v143;
      *(v145 + 24) = v144;
      sub_2167B8890(v143, v144);
      v146 = sub_2167C505C();
      sub_2170073F4();

      v141(v138, v140);
      v99 = v208;
      (*(v86 + 16))(v210, v79, v208);
      swift_storeEnumTagMultiPayload();
      v216 = &type metadata for ArtworkPlaceholderView;
      v217 = v146;
      swift_getOpaqueTypeConformance2();
      v147 = v211;
      sub_217009554();
    }

    else
    {
      v79 = v76;
      sub_216683A80(v3, v33, &qword_27CAB6D60);
      v97 = type metadata accessor for Artwork();
      v98 = __swift_getEnumTagSinglePayload(v33, 1, v97);
      v99 = v208;
      if (v98 == 1)
      {
        sub_2166997CC(v33, &qword_27CAB6D60);
        v100 = sub_21700C4B4();
        v101 = v48;
        v102 = 1;
      }

      else
      {
        v123 = sub_21700C4B4();
        (*(*(v123 - 8) + 16))(v48, v33, v123);
        sub_216C01F20(v33, type metadata accessor for Artwork);
        v101 = v48;
        v102 = 0;
        v100 = v123;
      }

      __swift_storeEnumTagSinglePayload(v101, v102, 1, v100);
      v124 = v187;
      sub_217007454();
      sub_216683A80(v3, v124, &qword_27CAB6D60);
      v125 = __swift_getEnumTagSinglePayload(v124, 1, v97);
      v126 = v202;
      v127 = v192;
      if (v125 == 1)
      {
        sub_2166997CC(v124, &qword_27CAB6D60);
        v128 = v196;
        v129 = v203;
        __swift_storeEnumTagSinglePayload(v196, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v128, 1, v129) != 1)
        {
          sub_2166997CC(v128, &qword_27CAB7530);
        }
      }

      else
      {
        v158 = v124 + *(v97 + 20);
        v159 = v196;
        v129 = v203;
        (*(v202 + 16))(v196, v158, v203);
        sub_216C01F20(v124, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v159, 0, 1, v129);
        (*(v126 + 32))(v127, v159, v129);
      }

      v160 = v186;
      v161 = v200;
      sub_2170073E4();
      (*(v126 + 8))(v127, v129);
      v162 = v205;
      v163 = *(v204 + 8);
      v163(v161, v205);
      v164 = (v3 + *(v206 + 44));
      v165 = *v164;
      v166 = v164[1];
      v167 = swift_allocObject();
      *(v167 + 16) = v165;
      *(v167 + 24) = v166;
      sub_2167B8890(v165, v166);
      v168 = sub_2167C505C();
      sub_2170073F4();

      v163(v160, v162);
      v86 = v207;
      (*(v207 + 16))(v210, v79, v99);
      swift_storeEnumTagMultiPayload();
      v216 = &type metadata for ArtworkPlaceholderView;
      v217 = v168;
      swift_getOpaqueTypeConformance2();
      v147 = v211;
      sub_217009554();
    }
  }

  else
  {
    if (v83)
    {
      v201 = v77;
      v90 = v3;
      sub_216683A80(v3, v38, &qword_27CAB6D60);
      v91 = type metadata accessor for Artwork();
      v92 = __swift_getEnumTagSinglePayload(v38, 1, v91);
      v93 = v202;
      if (v92 == 1)
      {
        sub_2166997CC(v38, &qword_27CAB6D60);
        v94 = sub_21700C4B4();
        v95 = v51;
        v96 = 1;
      }

      else
      {
        v117 = sub_21700C4B4();
        (*(*(v117 - 8) + 16))(v51, v38, v117);
        sub_216C01F20(v38, type metadata accessor for Artwork);
        v95 = v51;
        v96 = 0;
        v94 = v117;
      }

      __swift_storeEnumTagSinglePayload(v95, v96, 1, v94);
      v86 = v207;
      v118 = v195;
      v119 = v191;
      v120 = v185;
      sub_217007444();
      sub_216683A80(v3, v120, &qword_27CAB6D60);
      v121 = __swift_getEnumTagSinglePayload(v120, 1, v91);
      v99 = v208;
      if (v121 == 1)
      {
        sub_2166997CC(v120, &qword_27CAB6D60);
        v122 = v203;
        __swift_storeEnumTagSinglePayload(v118, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v118, 1, v122) != 1)
        {
          sub_2166997CC(v118, &qword_27CAB7530);
        }
      }

      else
      {
        v148 = v120 + *(v91 + 20);
        v122 = v203;
        (*(v93 + 16))(v118, v148, v203);
        sub_216C01F20(v120, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v118, 0, 1, v122);
        (*(v93 + 32))(v119, v118, v122);
      }

      v149 = v184;
      v150 = v199;
      sub_2170073E4();
      (*(v93 + 8))(v119, v122);
      v151 = v205;
      v152 = *(v204 + 8);
      v152(v150, v205);
      v153 = (v90 + *(v206 + 44));
      v154 = *v153;
      v155 = v153[1];
      v156 = swift_allocObject();
      *(v156 + 16) = v154;
      *(v156 + 24) = v155;
      sub_2167B8890(v154, v155);
      v157 = sub_2167C505C();
      v79 = v201;
      sub_2170073F4();

      v152(v149, v151);
      (*(v86 + 16))(v210, v79, v99);
    }

    else
    {
      sub_216683A80(v3, v43, &qword_27CAB6D60);
      v103 = type metadata accessor for Artwork();
      v104 = __swift_getEnumTagSinglePayload(v43, 1, v103);
      v105 = v202;
      if (v104 == 1)
      {
        sub_2166997CC(v43, &qword_27CAB6D60);
        v106 = sub_21700C4B4();
        v107 = v54;
        v108 = 1;
      }

      else
      {
        v130 = sub_21700C4B4();
        (*(*(v130 - 8) + 16))(v54, v43, v130);
        sub_216C01F20(v43, type metadata accessor for Artwork);
        v107 = v54;
        v108 = 0;
        v106 = v130;
      }

      __swift_storeEnumTagSinglePayload(v107, v108, 1, v106);
      v99 = v208;
      v131 = v194;
      v132 = v190;
      sub_217007434();
      v133 = v183;
      sub_216683A80(v3, v183, &qword_27CAB6D60);
      v134 = __swift_getEnumTagSinglePayload(v133, 1, v103);
      v86 = v207;
      v180 = v3;
      if (v134 == 1)
      {
        sub_2166997CC(v133, &qword_27CAB6D60);
        v135 = v203;
        __swift_storeEnumTagSinglePayload(v131, 1, 1, v203);
        sub_21700C404();
        if (__swift_getEnumTagSinglePayload(v131, 1, v135) != 1)
        {
          sub_2166997CC(v131, &qword_27CAB7530);
        }
      }

      else
      {
        v169 = v133 + *(v103 + 20);
        v135 = v203;
        (*(v105 + 16))(v131, v169, v203);
        sub_216C01F20(v133, type metadata accessor for Artwork);
        __swift_storeEnumTagSinglePayload(v131, 0, 1, v135);
        (*(v105 + 32))(v132, v131, v135);
      }

      v170 = v182;
      v171 = v198;
      sub_2170073E4();
      (*(v105 + 8))(v132, v135);
      v172 = v205;
      v173 = *(v204 + 8);
      v173(v171, v205);
      v174 = (v180 + *(v206 + 44));
      v175 = *v174;
      v176 = v174[1];
      v177 = swift_allocObject();
      *(v177 + 16) = v175;
      *(v177 + 24) = v176;
      sub_2167B8890(v175, v176);
      v157 = sub_2167C505C();
      sub_2170073F4();

      v173(v170, v172);
      (*(v86 + 16))(v210, v79, v99);
    }

    swift_storeEnumTagMultiPayload();
    v216 = &type metadata for ArtworkPlaceholderView;
    v217 = v157;
    swift_getOpaqueTypeConformance2();
    v147 = v211;
    sub_217009554();
  }

  sub_21674C61C(v147, v213);
  swift_storeEnumTagMultiPayload();
  sub_216C026D8();
  sub_217009554();
  sub_21674C680(v147);
  return (*(v86 + 8))(v79, v99);
}

int *sub_216BFC540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_2167C5834(a1, a8, &qword_27CAB6D60);
  result = type metadata accessor for PosterArtworkView.StaticArtwork();
  v16 = a8 + result[9];
  *v16 = a2;
  *(v16 + 8) = a3 & 1;
  v17 = a8 + result[10];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  v18 = (a8 + result[11]);
  *v18 = a6;
  v18[1] = a7;
  return result;
}

uint64_t sub_216BFC600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v215 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  OUTLINED_FUNCTION_14_47();
  v5 = type metadata accessor for PosterArtworkView.StandardArtworkView();
  OUTLINED_FUNCTION_14_59();
  WitnessTable = swift_getWitnessTable();
  v235 = v5;
  v236 = WitnessTable;
  v225 = v5;
  v217 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v199 = v7;
  MEMORY[0x28223BE20](v8);
  v190 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_70(&v186 - v11);
  v214 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v213 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v15 - v14);
  v221 = a1;
  v16 = *(a1 - 8);
  v206 = a1 - 8;
  v198 = v16;
  MEMORY[0x28223BE20](v17);
  v196 = v18;
  OUTLINED_FUNCTION_70(&v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_2170089F4();
  v20 = sub_216BA9564();
  v224 = WitnessTable;
  v241 = WitnessTable;
  v242 = v20;
  OUTLINED_FUNCTION_0_9();
  v222 = v21;
  v22 = swift_getWitnessTable();
  v235 = v19;
  v236 = MEMORY[0x277CE0F78];
  v23 = MEMORY[0x277CE0F78];
  v237 = v3;
  v238 = v22;
  v24 = MEMORY[0x277CE0F70];
  v239 = MEMORY[0x277CE0F70];
  v240 = v4;
  swift_getOpaqueTypeMetadata2();
  v235 = v19;
  v236 = v23;
  v237 = v3;
  v238 = v22;
  v239 = v24;
  v240 = v4;
  OUTLINED_FUNCTION_13_61();
  v216 = v25;
  swift_getOpaqueTypeMetadata2();
  v210 = sub_217009564();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18);
  v27 = sub_216C01BF8();
  v235 = v26;
  v236 = v3;
  v237 = v27;
  v238 = v4;
  type metadata accessor for SimpleChinViewModifier();
  sub_2170089F4();
  v28 = sub_21700B344();
  v211 = sub_216C01C74();
  v235 = v19;
  v29 = MEMORY[0x277CE0F78];
  v236 = MEMORY[0x277CE0F78];
  v237 = v3;
  v238 = v22;
  v239 = v24;
  v240 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v235 = v19;
  v236 = v29;
  v220 = v3;
  v237 = v3;
  v238 = v22;
  v31 = v201;
  v239 = v24;
  v240 = v4;
  v219 = v4;
  v32 = swift_getOpaqueTypeConformance2();
  v233 = OpaqueTypeConformance2;
  v234 = v32;
  OUTLINED_FUNCTION_6_1();
  v33 = swift_getWitnessTable();
  OUTLINED_FUNCTION_16_54();
  v34 = swift_getWitnessTable();
  v231 = v22;
  v232 = v34;
  v35 = swift_getWitnessTable();
  v228 = v211;
  v229 = v33;
  v230 = v35;
  OUTLINED_FUNCTION_15_57();
  v36 = swift_getWitnessTable();
  v195 = v28;
  v192 = v36;
  v37 = sub_217007BB4();
  OUTLINED_FUNCTION_1();
  v194 = v38;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v40);
  OUTLINED_FUNCTION_12_63();
  v41 = swift_getWitnessTable();
  v222 = v37;
  v235 = v37;
  v236 = v41;
  v211 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v186 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v186 - v49;
  v204 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v203 = v51;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v54 - v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  OUTLINED_FUNCTION_36(v55);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v57);
  v200 = sub_2170080D4();
  OUTLINED_FUNCTION_1();
  v59 = v58;
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7();
  v63 = v62 - v61;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v64);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v65);
  v67 = &v186 - v66;
  v205 = *(v225 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v69);
  v218 = v19;
  v216 = *(v19 - 8);
  v70 = *(v216 + 64);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_70(&v186 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_70(&v186 - v73);
  v210 = v42;
  v209 = sub_217009564();
  OUTLINED_FUNCTION_1();
  v208 = v74;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v76);
  v77 = (v31 + *(v206 + 60));
  v78 = *v77;
  if (*v77)
  {
    v199 = v77[1];
    v189 = v50;
    v190 = v44;
    v80 = v31[3];
    v79 = v31[4];
    v206 = v78;
    __swift_project_boxed_opaque_existential_1(v31, v80);
    v188 = v47;
    v187 = v70;
    v81 = v221;

    sub_216C0C924(v82, v83, v84, v85, v86, v87, v88, v89, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
    sub_21698F5EC(v63, v80, v79, v67);
    (*(v59 + 8))(v63, v200);
    v90 = v31 + *(v81 + 40);
    v91 = *(v90 + 1);
    v200 = *v90;
    LOBYTE(v79) = v90[16];
    v92 = v31[3];
    v93 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31, v92);
    v94 = v202;
    (*(v93 + 8))(v92, v93);
    OUTLINED_FUNCTION_28_34();
    v96 = *(v95 - 256);
    v97(v96);
    v98 = (v31 + *(v81 + 44));
    v100 = *v98;
    v99 = v98[1];
    OUTLINED_FUNCTION_20_47();
    v102 = *(v101 - 256);
    sub_216BFD60C(v67, v200, v91, v79, v94, v96, v100, v99, v102);
    v103 = v31[3];
    v104 = v31[5];
    v105 = __swift_project_boxed_opaque_existential_1(v31, v103);
    v238 = v103;
    v239 = v104;
    v106 = __swift_allocate_boxed_opaque_existential_1(&v235);
    (*(*(v103 - 8) + 16))(v106, v105, v103);
    sub_2167B8890(v100, v99);
    v107 = v225;
    sub_216A09050(&v235, v225, v224);
    OUTLINED_FUNCTION_67();
    v108(v102, v107);
    __swift_destroy_boxed_opaque_existential_1Tm(&v235);
    v109 = v198;
    v110 = v197;
    v111 = v221;
    (*(v198 + 16))(v197, v31, v221);
    v112 = v216;
    v113 = v191;
    v114 = OUTLINED_FUNCTION_38_32();
    v115 = v218;
    v116(v114);
    v117 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v118 = (v196 + v117 + *(v112 + 80)) & ~*(v112 + 80);
    v119 = (v187 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
    v120 = swift_allocObject();
    v121 = v219;
    *(v120 + 16) = v220;
    *(v120 + 24) = v121;
    v122 = v111;
    v123 = v222;
    (*(v109 + 32))(v120 + v117, v110, v122);
    (*(v112 + 32))(v120 + v118, v113, v115);
    v124 = (v120 + v119);
    v125 = v199;
    *v124 = v206;
    v124[1] = v125;

    v126 = v193;
    sub_217007BA4();
    v127 = v212;
    sub_2170099B4();
    v128 = v188;
    v129 = v211;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v130(v127, v214);
    OUTLINED_FUNCTION_67();
    v131(v126, v123);
    v235 = v123;
    v236 = v129;
    OUTLINED_FUNCTION_5_102();
    swift_getOpaqueTypeConformance2();
    sub_2166C24DC(v128, v210);
    v132 = *(v190 + 8);
    v133 = OUTLINED_FUNCTION_38_32();
    v132(v133);
    v134 = OUTLINED_FUNCTION_10_53();
    sub_2166C24DC(v134, v135);
    v136 = v225;
    v235 = v225;
    v236 = v224;
    OUTLINED_FUNCTION_30_38();
    v137 = v207;
    OUTLINED_FUNCTION_38_32();
    sub_2166C2718();
    sub_21667E91C(v206);
    v138 = OUTLINED_FUNCTION_38_32();
    v132(v138);
    v139 = OUTLINED_FUNCTION_10_53();
    v132(v139);
    OUTLINED_FUNCTION_67();
    v140(v217, v218);
  }

  else
  {
    v141 = v31[3];
    v142 = v31[4];
    v143 = __swift_project_boxed_opaque_existential_1(v31, v141);
    v144 = v221;
    sub_216C0C924(v143, v145, v146, v147, v148, v149, v150, v151, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197);
    sub_21698F5EC(v63, v141, v142, v67);
    (*(v59 + 8))(v63, v200);
    LOBYTE(v141) = *(v31 + *(v144 + 40) + 16);
    v152 = v31[3];
    v153 = v31[6];
    __swift_project_boxed_opaque_existential_1(v31, v152);
    v154 = v202;
    (*(v153 + 8))(v152, v153);
    OUTLINED_FUNCTION_28_34();
    v156 = *(v155 - 256);
    v157(v156);
    v158 = (v31 + *(v144 + 44));
    v159 = *v158;
    v160 = v158[1];
    OUTLINED_FUNCTION_20_47();
    v162 = *(v161 - 256);
    OUTLINED_FUNCTION_51();
    sub_216BFD60C(v163, v164, v165, v141, v154, v156, v159, v160, v166);
    v167 = OUTLINED_FUNCTION_8();
    sub_2167B8890(v167, v168);
    v169 = v212;
    sub_2170099B4();
    v170 = v190;
    v171 = v224;
    v136 = v225;
    sub_21700A784();
    OUTLINED_FUNCTION_67();
    v172(v169, v214);
    OUTLINED_FUNCTION_67();
    v173(v162, v136);
    v235 = v136;
    v236 = v171;
    OUTLINED_FUNCTION_5_102();
    swift_getOpaqueTypeConformance2();
    v174 = v189;
    v175 = OpaqueTypeMetadata2;
    sub_2166C24DC(v170, OpaqueTypeMetadata2);
    v176 = *(v199 + 8);
    v177 = OUTLINED_FUNCTION_10_53();
    v176(v177);
    sub_2166C24DC(v174, v175);
    v129 = v211;
    v235 = v222;
    v236 = v211;
    OUTLINED_FUNCTION_30_38();
    v178 = v207;
    sub_2166C2CB0();
    v179 = OUTLINED_FUNCTION_10_53();
    v176(v179);
    v180 = v174;
    v137 = v178;
    (v176)(v180, v175);
  }

  v235 = v222;
  v236 = v129;
  OUTLINED_FUNCTION_5_102();
  v181 = swift_getOpaqueTypeConformance2();
  v235 = v136;
  v236 = v224;
  v182 = OUTLINED_FUNCTION_30_38();
  v226 = v181;
  v227 = v182;
  OUTLINED_FUNCTION_6_1();
  v183 = v209;
  swift_getWitnessTable();
  sub_2166C24DC(v137, v183);
  OUTLINED_FUNCTION_67();
  return v184(v137, v183);
}

uint64_t sub_216BFD60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_2167C5834(a1, a9, &qword_27CAB6D60);
  v17 = type metadata accessor for PosterArtworkView.StandardArtworkView();
  v18 = a9 + v17[9];
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a4 & 1;
  sub_2167C5834(a5, a9 + v17[10], &qword_27CABBEA8);
  v19 = v17[11];
  v20 = sub_2170071B4();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a6, v20);
  v22 = (a9 + v17[12]);
  *v22 = a7;
  v22[1] = a8;
  return result;
}

uint64_t sub_216BFD718@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v61 = a5;
  v59 = a4;
  v57 = a3;
  v56 = a1;
  v63 = a8;
  type metadata accessor for PosterArtworkView.StandardArtworkView();
  v11 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v78 = sub_216BA9564();
  v12 = swift_getWitnessTable();
  v13 = MEMORY[0x277CE0F78];
  v14 = MEMORY[0x277CE0F70];
  swift_getOpaqueTypeMetadata2();
  v62 = v12;
  v75 = v14;
  v76 = a7;
  swift_getOpaqueTypeMetadata2();
  v15 = sub_217009564();
  v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18);
  v72 = a6;
  v73 = sub_216C01BF8();
  v74 = a7;
  v52[3] = type metadata accessor for SimpleChinViewModifier();
  v60 = v15;
  v52[4] = sub_2170089F4();
  v54 = sub_21700B344();
  v58 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = v52 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v52 - v23;
  v25 = a2[3];
  v26 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2, v25);
  (*(v26 + 8))(v25, v26);
  v27 = type metadata accessor for VideoArtwork();
  if (__swift_getEnumTagSinglePayload(v21, 1, v27) == 1)
  {
    sub_2166997CC(v21, &qword_27CABBEA8);
    v28 = sub_217006EC4();
    v29 = __swift_storeEnumTagSinglePayload(v24, 1, 1, v28);
  }

  else
  {
    type metadata accessor for PosterArtworkView();
    sub_216DEE900(v24);
    v29 = sub_216C01F20(v21, type metadata accessor for VideoArtwork);
  }

  v52[2] = v52;
  MEMORY[0x28223BE20](v29);
  v52[1] = &v52[-10];
  v52[-8] = a6;
  v52[-7] = a7;
  v30 = v57;
  v52[-6] = v24;
  v52[-5] = v30;
  MEMORY[0x28223BE20](v31);
  v52[-8] = a6;
  v52[-7] = a7;
  v52[-6] = v32;
  v52[-5] = v33;
  v51 = v34;
  v35 = sub_216C01C74();
  v71 = v11;
  v72 = v13;
  v36 = v62;
  v73 = a6;
  v74 = v62;
  v37 = MEMORY[0x277CE0F70];
  v75 = MEMORY[0x277CE0F70];
  v76 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v11;
  v72 = v13;
  v73 = a6;
  v74 = v36;
  v75 = v37;
  v76 = a7;
  v39 = swift_getOpaqueTypeConformance2();
  v69 = OpaqueTypeConformance2;
  v70 = v39;
  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v67 = v36;
  v68 = v41;
  v42 = swift_getWitnessTable();
  v49 = v40;
  v50 = v42;
  v48 = v35;
  v43 = v53;
  sub_21700B324();
  v64 = v35;
  v65 = v40;
  v66 = v42;
  v44 = v54;
  swift_getWitnessTable();
  v45 = v55;
  sub_2166C24DC(v43, v44);
  v46 = *(v58 + 8);
  v46(v43, v44);
  sub_2166C24DC(v45, v44);
  v46(v45, v44);
  return sub_2166997CC(v24, &qword_27CABBF10);
}

uint64_t sub_216BFDD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v134 = a5;
  v135 = a6;
  v125 = a4;
  v122 = a3;
  v121 = a2;
  v119 = a1;
  v137 = a9;
  v130 = type metadata accessor for PosterArtworkView();
  v128 = *(v130 - 8);
  v126 = *(v128 + 64);
  MEMORY[0x28223BE20](v130);
  v127 = &v107 - v11;
  type metadata accessor for PosterArtworkView.StandardArtworkView();
  v12 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_216BA9564();
  v150 = WitnessTable;
  v151 = v14;
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x277CE0F78];
  v144 = v12;
  v145 = MEMORY[0x277CE0F78];
  v146 = a7;
  v147 = v15;
  v17 = MEMORY[0x277CE0F70];
  v148 = MEMORY[0x277CE0F70];
  v149 = a8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v117 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v116 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v114 = &v107 - v21;
  MEMORY[0x28223BE20](v22);
  v115 = &v107 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC5C30);
  MEMORY[0x28223BE20](v24 - 8);
  v109 = &v107 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v108 = &v107 - v27;
  v124 = sub_2170064D4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v120 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v118 = &v107 - v30;
  v144 = v12;
  v145 = v16;
  v140 = a8;
  v141 = a7;
  v146 = a7;
  v147 = v15;
  v139 = v15;
  v148 = v17;
  v149 = a8;
  v31 = swift_getOpaqueTypeMetadata2();
  v111 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v113 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v110 = &v107 - v34;
  MEMORY[0x28223BE20](v35);
  v112 = &v107 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v107 - v38;
  v40 = sub_217006EC4();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v107 - v45;
  v136 = OpaqueTypeMetadata2;
  v48 = v47;
  v133 = v31;
  v132 = sub_217009564();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = &v107 - v49;
  sub_216683A80(v119, v39, &qword_27CABBF10);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v48);
  v138 = v12;
  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v39, &qword_27CABBF10);
    v51 = v139;
    sub_21700A2A4();
    v52 = v108;
    sub_216683A80(v122, v108, qword_27CAC5C30);
    v53 = sub_217007424();
    if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
    {
      sub_2166997CC(v52, qword_27CAC5C30);
      v54 = 0;
    }

    else
    {
      v54 = sub_217007414();
      (*(*(v53 - 8) + 8))(v52, v53);
    }

    v59 = v140;
    v60 = v130;
    v61 = v128;
    v62 = v127;
    (*(v128 + 16))(v127);
    v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v64 = swift_allocObject();
    v65 = v141;
    *(v64 + 16) = v141;
    *(v64 + 24) = v59;
    (*(v61 + 32))(v64 + v63, v62, v60);
    v66 = v51;
    v67 = v110;
    v68 = v124;
    v69 = MEMORY[0x277CE0F78];
    v70 = v118;
    sub_217006444();

    (*(v123 + 8))(v70, v68);
    v71 = v138;
    v144 = v138;
    v145 = v69;
    v146 = v65;
    v147 = v66;
    v148 = MEMORY[0x277CE0F70];
    v149 = v59;
    swift_getOpaqueTypeConformance2();
    v72 = v112;
    v73 = v133;
    sub_2166C24DC(v67, v133);
    v74 = *(v111 + 8);
    v74(v67, v73);
    v75 = v113;
    sub_2166C24DC(v72, v73);
    v144 = v71;
    v145 = v69;
    v146 = v141;
    v147 = v66;
    v148 = MEMORY[0x277CE0F70];
    v149 = v59;
    swift_getOpaqueTypeConformance2();
    v76 = v129;
    sub_2166C2CB0();
    v74(v75, v73);
    v77 = v72;
    v78 = v138;
    v74(v77, v73);
  }

  else
  {
    v55 = *(v41 + 32);
    v119 = v46;
    v118 = v55;
    v113 = (v41 + 32);
    (v55)(v46, v39, v48);
    sub_21700A2A4();
    v56 = v109;
    sub_216683A80(v122, v109, qword_27CAC5C30);
    v57 = sub_217007424();
    v58 = v41;
    if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
    {
      sub_2166997CC(v56, qword_27CAC5C30);
      v122 = 0;
    }

    else
    {
      v122 = sub_217007414();
      (*(*(v57 - 8) + 8))(v56, v57);
    }

    v79 = v130;
    v80 = v128;
    v81 = v127;
    (*(v128 + 16))(v127);
    (*(v58 + 16))(v43, v119, v48);
    v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v83 = (v126 + *(v58 + 80) + v82) & ~*(v58 + 80);
    v84 = swift_allocObject();
    v85 = v48;
    v107 = v48;
    v86 = v84;
    v126 = v58;
    v87 = v140;
    v88 = v141;
    *(v84 + 16) = v141;
    *(v84 + 24) = v87;
    (*(v80 + 32))(v84 + v82, v81, v79);
    (v118)(v86 + v83, v43, v85);
    v89 = MEMORY[0x277CE0F70];
    v90 = v139;
    v91 = v114;
    v92 = v122;
    v93 = v124;
    v69 = MEMORY[0x277CE0F78];
    v94 = v120;
    sub_2170064B4();

    v95 = v88;
    (*(v123 + 8))(v94, v93);
    v78 = v138;
    v144 = v138;
    v145 = v69;
    v146 = v95;
    v147 = v90;
    v148 = v89;
    v149 = v140;
    swift_getOpaqueTypeConformance2();
    v96 = v115;
    v97 = v136;
    sub_2166C24DC(v91, v136);
    v98 = *(v117 + 8);
    v98(v91, v97);
    v99 = v116;
    sub_2166C24DC(v96, v97);
    v144 = v78;
    v145 = v69;
    v146 = v95;
    v147 = v90;
    v59 = v140;
    v148 = MEMORY[0x277CE0F70];
    v149 = v140;
    swift_getOpaqueTypeConformance2();
    v76 = v129;
    sub_2166C2718();
    v98(v99, v97);
    v100 = v96;
    v66 = v139;
    v98(v100, v97);
    (*(v126 + 8))(v119, v107);
  }

  v144 = v78;
  v145 = v69;
  v101 = v141;
  v146 = v141;
  v147 = v66;
  v102 = MEMORY[0x277CE0F70];
  v148 = MEMORY[0x277CE0F70];
  v149 = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v144 = v78;
  v145 = v69;
  v146 = v101;
  v147 = v66;
  v148 = v102;
  v149 = v59;
  v104 = swift_getOpaqueTypeConformance2();
  v142 = OpaqueTypeConformance2;
  v143 = v104;
  v105 = v132;
  swift_getWitnessTable();
  sub_2166C24DC(v76, v105);
  return (*(v131 + 8))(v76, v105);
}

uint64_t sub_216BFEC20@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PosterArtworkView();
  result = sub_216BFEC70();
  *a1 = result;
  return result;
}

uint64_t sub_216BFEC70()
{
  v0 = sub_21700C4B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006EA4();
  v4 = sub_21700C494();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_21700AC34();
  }

  else
  {
    return sub_216BFEDA0();
  }
}

uint64_t sub_216BFED6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PosterArtworkView();
  result = sub_216BFEDA0();
  *a1 = result;
  return result;
}

uint64_t sub_216BFEDA0()
{
  v1 = sub_21700C4B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = v0[3];
  v9 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v8);
  (*(*(v9 + 8) + 8))(v8);
  v10 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    sub_2166997CC(v7, &qword_27CAB6D60);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_216C01F20(v7, type metadata accessor for Artwork);
    v11 = sub_21700C494();
    (*(v2 + 8))(v4, v1);
    if (v11)
    {
      return sub_21700AC34();
    }
  }

  return sub_21700ACC4();
}

uint64_t sub_216BFEF80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a6;
  v64 = a5;
  v59 = a4;
  v61 = a3;
  v50[0] = a2;
  v65 = a1;
  v67 = a9;
  v11 = type metadata accessor for PosterArtworkView();
  v12 = *(v11 - 8);
  v60 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v53 = v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC5C30);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v50 - v19;
  v50[1] = type metadata accessor for PosterArtworkView.StandardArtworkView();
  v21 = sub_2170089F4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18);
  v23 = sub_216C01BF8();
  v56 = v22;
  v72 = v22;
  v73 = a7;
  v24 = a7;
  v52 = v23;
  v74 = v23;
  v75 = a8;
  v63 = a8;
  v25 = type metadata accessor for SimpleChinViewModifier();
  v58 = v21;
  v55 = v25;
  v26 = sub_2170089F4();
  v62 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v54 = v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v57 = v50 - v29;
  sub_216683A80(v50[0], v20, qword_27CAC5C30);
  v30 = sub_217007424();
  if (__swift_getEnumTagSinglePayload(v20, 1, v30) == 1)
  {
    sub_2166997CC(v20, qword_27CAC5C30);
    v50[0] = 0;
  }

  else
  {
    v50[0] = sub_217007414();
    (*(*(v30 - 8) + 8))(v20, v30);
  }

  v31 = v61;
  v32 = *(v61 + *(v11 + 48));
  v33 = v53;
  sub_216683A80(v59, v53, &qword_27CABBF10);
  (*(v12 + 16))(v14, v31, v11);
  v34 = v14;
  v35 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v36 = v11;
  v37 = (v16 + *(v12 + 80) + v35) & ~*(v12 + 80);
  v38 = swift_allocObject();
  v39 = v63;
  *(v38 + 16) = v24;
  *(v38 + 24) = v39;
  sub_2167C5834(v33, v38 + v35, &qword_27CABBF10);
  (*(v12 + 32))(v38 + v37, v34, v36);
  WitnessTable = swift_getWitnessTable();
  v41 = sub_216BA9564();
  v70 = WitnessTable;
  v71 = v41;
  v42 = v58;
  v43 = swift_getWitnessTable();
  v44 = v54;
  v45 = v50[0];
  sub_21693CC1C(v50[0], sub_216C01E4C, v38, v64, v66, v42, v32, v56, v24, v43);

  v46 = swift_getWitnessTable();
  v68 = v43;
  v69 = v46;
  swift_getWitnessTable();
  v47 = v57;
  sub_2166C24DC(v44, v26);
  v48 = *(v62 + 8);
  v48(v44, v26);
  sub_2166C24DC(v47, v26);
  return (v48)(v47, v26);
}

uint64_t sub_216BFF558@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_217006EC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216683A80(a1, v5, &qword_27CABBF10);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2166997CC(v5, &qword_27CABBF10);
    type metadata accessor for PosterArtworkView();
    v15 = sub_216BFEDA0();
    v16 = 1;
    result = sub_217009554();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    type metadata accessor for PosterArtworkView();
    v15 = sub_216BFEC70();
    v16 = 0;
    sub_217009554();
    result = (*(v7 + 8))(v9, v6);
  }

  v11 = v18;
  v12 = v14;
  *v14 = v17;
  *(v12 + 8) = v11;
  return result;
}

void sub_216BFF79C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = v58 - v4;
  v5 = *(a1 + 24);
  v102 = *(a1 + 16);
  v6 = v102;
  v103 = a1;
  v7 = v5;
  v101 = v5;
  type metadata accessor for PosterArtworkView.StaticArtwork();
  v8 = sub_2170089F4();
  WitnessTable = swift_getWitnessTable();
  v108 = WitnessTable;
  v109 = MEMORY[0x277CE03D0];
  v9 = swift_getWitnessTable();
  v104 = v8;
  v105 = v9;
  v10 = v9;
  v87 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = v8;
  v105 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v104 = OpaqueTypeMetadata2;
  v105 = OpaqueTypeConformance2;
  v13 = OpaqueTypeConformance2;
  v90 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeMetadata2();
  v104 = OpaqueTypeMetadata2;
  v105 = v13;
  v15 = swift_getOpaqueTypeConformance2();
  v104 = v6;
  v105 = v14;
  v106 = v7;
  v107 = v15;
  v97 = v15;
  v16 = type metadata accessor for PosterArtworkView.MotionView();
  v66 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v65 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v63 = v58 - v19;
  MEMORY[0x28223BE20](v20);
  v64 = v58 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBEA8);
  MEMORY[0x28223BE20](v22 - 8);
  v62 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v86 = v58 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  MEMORY[0x28223BE20](v26 - 8);
  v91 = v58 - v27;
  v99 = sub_217006EC4();
  v70 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v68 = v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v69 = v58 - v30;
  v95 = v16;
  v94 = sub_217009564();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = v58 - v31;
  v83 = sub_21700D864();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = v58 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21700D8E4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v80 = v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_2170099D4();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v76 = v58 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v58 - v36;
  v74 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v74);
  v39 = v58 - v38;
  v73 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v73);
  v75 = swift_checkMetadataState();
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v96 = v14;
  v100 = *(v14 - 8);
  MEMORY[0x28223BE20](v40);
  v72 = v58 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v71 = v58 - v43;
  MEMORY[0x28223BE20](v44);
  v58[1] = v58 - v45;
  v58[2] = v46;
  MEMORY[0x28223BE20](v47);
  v48 = v89;
  sub_216683A80(v89, v37, &qword_27CAB6D60);
  v49 = v48 + *(v103 + 36);
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = *(v49 + 16);
  v60 = v51;
  if (v52)
  {
    v53 = 0;
  }

  else
  {
    v53 = v51;
  }

  v61 = v50;
  if (v52)
  {
    v54 = 0;
  }

  else
  {
    v54 = v50;
  }

  v55 = (v48 + *(v103 + 48));
  v57 = *v55;
  v56 = v55[1];
  v59 = v52;
  sub_216BFC540(v37, v54, v52, v53, v52, v57, v56, v39);
  sub_2167B8890(v57, v56);
  sub_216BFAEC8();
}

uint64_t sub_216C0014C()
{
  (*(v3 + 8))(v1, v2);
  v9 = *(v8 - 336);
  v10 = *(v8 - 416);
  sub_2170099A4();
  v11 = *(v8 - 440);
  sub_21700A784();
  (*(*(v8 - 400) + 8))(v10, *(v8 - 392));
  v12 = v5;
  v13 = v0;
  (*(v6 + 8))(v12, v11);
  v14 = *(v8 - 368);
  v15 = *(v8 - 376);
  v16 = *(v8 - 360);
  (*(v14 + 104))(v15, *MEMORY[0x277D22060], v16);
  *(v8 - 144) = 0u;
  *(v8 - 128) = 0u;
  *(v8 - 176) = 0u;
  *(v8 - 160) = 0u;
  v17 = *(v8 - 384);
  sub_21700D874();
  sub_2166997CC(v8 - 176, &unk_27CABF7A0);
  sub_2166997CC(v8 - 144, &unk_27CABF7A0);
  (*(v14 + 8))(v15, v16);
  v18 = *(v8 - 424);
  sub_21700A204();
  v19 = *(v8 - 200);
  (*(*(v8 - 352) + 8))(v17, *(v8 - 344));
  (*(*(v8 - 408) + 8))(v7, v18);
  v20 = *(v19 + 40);
  sub_216683A80(v0 + v20, v9, &qword_27CABBEA8);
  v21 = type metadata accessor for VideoArtwork();
  if (__swift_getEnumTagSinglePayload(v9, 1, v21) == 1)
  {
    sub_2166997CC(v9, &qword_27CABBEA8);
    v22 = *(v8 - 296);
    __swift_storeEnumTagSinglePayload(v22, 1, 1, *(v8 - 232));
LABEL_4:
    sub_2166997CC(v22, &qword_27CABBF10);
    v24 = *(v8 - 456);
    v25 = *(v8 - 256);
    v26 = *(v8 - 248);
    sub_2166C24DC(v4, v25);
    v27 = *(v8 - 448);
    sub_2166C24DC(v24, v25);
    swift_getWitnessTable();
    v28 = *(v8 - 288);
    sub_2166C2CB0();
    v29 = *(*(v8 - 224) + 8);
    v29(v27, v25);
    v29(v24, v25);
    v29(v4, v25);
    goto LABEL_9;
  }

  v22 = *(v8 - 296);
  sub_216DEE900(v22);
  sub_216C01F20(v9, type metadata accessor for VideoArtwork);
  v23 = *(v8 - 232);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    goto LABEL_4;
  }

  v30 = *(v8 - 464);
  v31 = *(v8 - 472);
  (*(v30 + 32))(v31, v22, v23);
  (*(v30 + 16))(*(v8 - 480), v31, v23);
  v32 = *(v8 - 224);
  v33 = *(v32 + 16);
  v34 = *(v8 - 568);
  *(v8 - 200) = v4;
  v35 = *(v8 - 256);
  v33(v34, v4, v35);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v37 = swift_allocObject();
  v38 = *(v8 - 216);
  *(v37 + 16) = *(v8 - 208);
  *(v37 + 24) = v38;
  (*(v32 + 32))(v37 + v36, v34, v35);
  v39 = *(v8 - 528);
  sub_216683A80(v13 + v20, v39, &qword_27CABBEA8);
  if (__swift_getEnumTagSinglePayload(v39, 1, v21) == 1)
  {
    sub_2166997CC(v39, &qword_27CABBEA8);
    v40 = sub_21700C444();
    v41 = *(v8 - 488);
    v42 = v41;
    v43 = 1;
  }

  else
  {
    v44 = *(v21 + 20);
    v45 = sub_21700C444();
    v41 = *(v8 - 488);
    (*(*(v45 - 8) + 16))(v41, v39 + v44, v45);
    sub_216C01F20(v39, type metadata accessor for VideoArtwork);
    v42 = v41;
    v43 = 0;
    v40 = v45;
  }

  __swift_storeEnumTagSinglePayload(v42, v43, 1, v40);
  v46 = *(v8 - 264);
  v26 = *(v8 - 248);
  v47 = *(v8 - 520);
  sub_216C009D8(*(v8 - 480), sub_216C022A0, v37, v41, *(v8 - 536), *(v8 - 544), *(v8 - 548), v47);
  swift_getWitnessTable();
  v48 = *(v8 - 512);
  sub_2166C24DC(v47, v46);
  v49 = *(*(v8 - 496) + 8);
  v49(v47, v46);
  v50 = *(v8 - 504);
  sub_2166C24DC(v48, v46);
  v28 = *(v8 - 288);
  sub_2166C2718();
  v49(v50, v46);
  v49(v48, v46);
  (*(*(v8 - 464) + 8))(*(v8 - 472), *(v8 - 232));
  (*(*(v8 - 224) + 8))(*(v8 - 200), v35);
LABEL_9:
  *(v8 - 192) = swift_getWitnessTable();
  *(v8 - 184) = v26;
  v51 = *(v8 - 272);
  swift_getWitnessTable();
  sub_2166C24DC(v28, v51);
  return (*(*(v8 - 280) + 8))(v28, v51);
}

uint64_t sub_216C0088C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PosterArtworkView.StaticArtwork();
  sub_2170089F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  return (*(*(OpaqueTypeMetadata2 - 8) + 16))(a2, a1, OpaqueTypeMetadata2);
}

uint64_t sub_216C009D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v16 = sub_217006EC4();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for PosterArtworkView.MotionView();
  v18 = (a8 + v17[13]);
  *v18 = a2;
  v18[1] = a3;
  result = sub_2167C5834(a4, a8 + v17[14], &qword_27CAB7530);
  v20 = a8 + v17[15];
  *v20 = a5;
  *(v20 + 8) = a6;
  *(v20 + 16) = a7 & 1;
  return result;
}

uint64_t sub_216C00AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB76F8);
  *&v134 = &type metadata for ArtworkPlaceholderView;
  *(&v134 + 1) = sub_2167C505C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v117 = a1;
  v3 = *(a1 + 40);
  v102 = *(a1 + 24);
  v103 = v3;
  *&v135 = OpaqueTypeConformance2;
  *(&v135 + 1) = v3;
  v4 = sub_2170063D4();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v105 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v118 = swift_getOpaqueTypeConformance2();
  *&v134 = OpaqueTypeMetadata2;
  *(&v134 + 1) = v118;
  v6 = swift_getOpaqueTypeMetadata2();
  v7 = sub_2170089F4();
  v81 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v80 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v77 - v10;
  v113 = v11;
  v12 = sub_217009564();
  v111 = *(v12 - 8);
  v112 = v12;
  MEMORY[0x28223BE20](v12);
  v110 = &v77 - v13;
  v14 = sub_21700D864();
  v97 = *(v14 - 8);
  v98 = v14;
  MEMORY[0x28223BE20](v14);
  v96 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21700D8E4();
  v100 = *(v16 - 8);
  v101 = v16;
  MEMORY[0x28223BE20](v16);
  v95 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2170099D4();
  v93 = *(v18 - 8);
  v94 = v18;
  MEMORY[0x28223BE20](v18);
  v92 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v20 - 8);
  v89 = &v77 - v21;
  v22 = sub_2170063E4();
  v90 = *(v22 - 8);
  v91 = v22;
  MEMORY[0x28223BE20](v22);
  v84 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2170064D4();
  v25 = *(v24 - 8);
  v86 = v24;
  v87 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v77 - v26;
  v28 = sub_217005EF4();
  MEMORY[0x28223BE20](v28 - 8);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v77 - v31;
  v83 = swift_checkMetadataState();
  v85 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v34 = &v77 - v33;
  v116 = swift_checkMetadataState();
  v88 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v82 = &v77 - v35;
  v109 = v6;
  v99 = *(v6 - 8);
  MEMORY[0x28223BE20](v36);
  v78 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v77 = &v77 - v39;
  MEMORY[0x28223BE20](v40);
  v115 = &v77 - v41;
  v42 = v106;
  sub_217006EB4();
  v43 = v117;
  *&v44 = *(v117 + 16);
  *(&v44 + 1) = v102;
  *&v45 = *(v117 + 32);
  *(&v45 + 1) = v103;
  v122 = v44;
  v123 = v45;
  v124 = v42;
  v119 = v44;
  v120 = v45;
  v121 = v42;
  sub_2170063C4();
  sub_21700A2A4();
  (*(v29 + 8))(v32, v4);
  v46 = v89;
  sub_216683A80(v42 + *(v43 + 56), v89, &qword_27CAB7530);
  v47 = v84;
  sub_216B50CD4(v46, v84);
  v48 = v86;
  sub_217006454();
  (*(v90 + 8))(v47, v91);
  v49 = v27;
  v50 = v116;
  (*(v87 + 8))(v49, v48);
  v51 = v92;
  sub_2170099A4();
  v53 = v82;
  v52 = v83;
  sub_21700A784();
  (*(v93 + 8))(v51, v94);
  (*(v85 + 8))(v34, v52);
  v55 = v96;
  v54 = v97;
  v56 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x277D22058], v98);
  v134 = 0u;
  v135 = 0u;
  memset(v133, 0, sizeof(v133));
  v57 = v95;
  sub_21700D874();
  sub_2166997CC(v133, &unk_27CABF7A0);
  sub_2166997CC(&v134, &unk_27CABF7A0);
  v58 = v55;
  v59 = v115;
  (*(v54 + 8))(v58, v56);
  sub_21700A204();
  (*(v100 + 8))(v57, v101);
  (*(v88 + 8))(v53, v50);
  v60 = MEMORY[0x277CDF678];
  if (*(v42 + *(v117 + 60) + 16))
  {
    *&v134 = v50;
    *(&v134 + 1) = v118;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v77;
    v63 = v109;
    sub_2166C24DC(v59, v109);
    v64 = v78;
    sub_2166C24DC(v62, v63);
    v131 = v61;
    v132 = v60;
    swift_getWitnessTable();
    v65 = v110;
    sub_2166C2CB0();
    v66 = *(v99 + 8);
    v66(v64, v63);
    v66(v62, v63);
    v66(v59, v63);
  }

  else
  {
    *&v134 = v50;
    *(&v134 + 1) = v118;
    v67 = swift_getOpaqueTypeConformance2();
    v68 = v109;
    sub_2166BF464();
    v69 = v80;
    sub_21700A9C4();
    v125 = v67;
    v126 = v60;
    v70 = v113;
    swift_getWitnessTable();
    v71 = v79;
    sub_2166C24DC(v69, v70);
    v72 = *(v81 + 8);
    v72(v69, v70);
    sub_2166C24DC(v71, v70);
    v65 = v110;
    sub_2166C2718();
    v73 = v69;
    v50 = v116;
    v72(v73, v70);
    v72(v71, v70);
    (*(v99 + 8))(v115, v68);
  }

  *&v134 = v50;
  *(&v134 + 1) = v118;
  v74 = swift_getOpaqueTypeConformance2();
  v129 = v74;
  v130 = MEMORY[0x277CDF678];
  v127 = swift_getWitnessTable();
  v128 = v74;
  v75 = v112;
  swift_getWitnessTable();
  sub_2166C24DC(v65, v75);
  return (*(v111 + 8))(v65, v75);
}

uint64_t sub_216C01850@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v29 = a5;
  v24 = sub_21700C444();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_217007474();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v24 - v19;
  sub_217006EA4();
  v21 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v21);
  sub_217007464();
  sub_21700C404();
  sub_2170073E4();
  (*(v5 + 8))(v7, v24);
  v22 = *(v12 + 8);
  v22(v14, v11);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  type metadata accessor for PosterArtworkView.MotionView();
  sub_217007404();
  v22(v17, v11);
  *(swift_allocObject() + 16) = xmmword_217016ED0;
  sub_2167C505C();
  sub_2170073F4();

  return (v22)(v20, v11);
}

unint64_t sub_216C01BF8()
{
  result = qword_27CAC5C20;
  if (!qword_27CAC5C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5C20);
  }

  return result;
}

unint64_t sub_216C01C74()
{
  result = qword_27CAC5C28;
  if (!qword_27CAC5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5C28);
  }

  return result;
}

uint64_t sub_216C01CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = type metadata accessor for PosterArtworkView();
  OUTLINED_FUNCTION_2(v7);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_47();
  type metadata accessor for PosterArtworkView.StandardArtworkView();
  v12 = sub_2170089F4();
  OUTLINED_FUNCTION_2(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v9 + v11 + *(v14 + 80)) & ~*(v14 + 80);
  v18 = (v2 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = *v18;
  v20 = v18[1];

  return sub_216BFD718(a1, (v2 + v9), v2 + v17, v19, v20, v5, v6, a2);
}

uint64_t sub_216C01E4C()
{
  OUTLINED_FUNCTION_37_36();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  OUTLINED_FUNCTION_2(v0);
  OUTLINED_FUNCTION_51();
  v1 = type metadata accessor for PosterArtworkView();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_25_39();

  return sub_216BFF558(v2, v3);
}

uint64_t sub_216C01F20(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216C01F74()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_51();
  v0 = type metadata accessor for PosterArtworkView();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_51();

  return sub_216BFED6C(v1);
}

uint64_t sub_216C01FF0()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_51();
  v0 = type metadata accessor for PosterArtworkView();
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_217006EC4();
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_25_39();

  return sub_216BFEC20(v2);
}

void sub_216C020B8()
{
  sub_216C025EC(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216C025EC(319, &qword_27CAC5C10, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_216C025EC(319, qword_280E44408, type metadata accessor for VideoArtwork, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2170071B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216C022A0()
{
  OUTLINED_FUNCTION_37_36();
  OUTLINED_FUNCTION_51();
  type metadata accessor for PosterArtworkView.StaticArtwork();
  OUTLINED_FUNCTION_36_33();
  sub_2170089F4();
  OUTLINED_FUNCTION_6_89();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v0 = OUTLINED_FUNCTION_11_72();
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_51();

  return sub_216C0088C(v1, v2);
}

void sub_216C023C4()
{
  sub_216C025EC(319, &qword_280E2BF20, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_216927B20();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_216C024B0()
{
  sub_217006EC4();
  if (v0 <= 0x3F)
  {
    sub_2166B0B84();
    if (v1 <= 0x3F)
    {
      sub_216C025EC(319, &unk_280E2A3A0, MEMORY[0x277D2B220], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_216C025EC(319, &qword_27CAC5C10, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_216C025EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_216C026D8()
{
  result = qword_27CAC5DC8;
  if (!qword_27CAC5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5DC0);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5DC8);
  }

  return result;
}

unint64_t sub_216C027D0()
{
  result = qword_27CAC5DD0;
  if (!qword_27CAC5DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5DD8);
    sub_216C026D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5DD0);
  }

  return result;
}

uint64_t sub_216C02858@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v44 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v42 = v19;
  v43 = v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v12 + 16);
  v47 = a1;
  v25 = a1;
  v26 = v4;
  v27 = v46;
  v24(v18, v25, v10, v21);
  (*(v6 + 16))(v9, v27, v26);
  v28 = v45;
  sub_21700D224();
  if (v28)
  {
    (*(v6 + 8))(v27, v26);
    return (*(v12 + 8))(v47, v10);
  }

  else
  {
    v45 = v26;
    v30 = v44;
    v31 = v42;
    (*(v43 + 32))(v44, v23, v42);
    sub_21700CE04();
    v41 = sub_21700CDB4();
    v33 = v32;
    v34 = v15;
    v35 = *(v12 + 8);
    v35(v34, v10);
    if (v33)
    {
      (*(v6 + 8))(v46, v45);
      v35(v47, v10);
      result = type metadata accessor for RemoveSectionAction();
      v36 = (v30 + *(result + 20));
      *v36 = v41;
      v36[1] = v33;
    }

    else
    {
      v37 = sub_21700E2E4();
      sub_2167B1EA4();
      swift_allocError();
      v39 = v38;
      v40 = type metadata accessor for RemoveSectionAction();
      *v39 = 0xD000000000000011;
      v39[1] = 0x8000000217083540;
      v39[2] = v40;
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D22530], v37);
      swift_willThrow();
      (*(v6 + 8))(v46, v45);
      v35(v47, v10);
      return (*(v43 + 8))(v44, v31);
    }
  }

  return result;
}

uint64_t type metadata accessor for RemoveSectionAction()
{
  result = qword_280E3D420;
  if (!qword_280E3D420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C02D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v72 = a1;
  v73 = a2;
  v70 = type metadata accessor for MusicMetrics.ClickFields(0);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v71 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  v74 = &v67 - v10;
  v75 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v69 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v68 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  v16 = OUTLINED_FUNCTION_36(v15);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA5A0);
  v23 = OUTLINED_FUNCTION_36(v22);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v67 - v28;
  v30 = *(*a4 + 112);
  v31 = *a4 + 112;
  v30(v77, v27);
  v32 = type metadata accessor for SearchResultsListSection();
  v33 = swift_dynamicCast();
  v34 = __swift_storeEnumTagSinglePayload(v29, v33 ^ 1u, 1, v32);
  v30(v77, v34);
  v35 = sub_2170068C4();
  v36 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v21, v36 ^ 1u, 1, v35);
  sub_2166A6EFC(v29, v26, &qword_27CABA5A0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v32) == 1)
  {
    sub_2166997CC(v26, &qword_27CABA5A0);
    sub_2166A6EFC(v21, v19, &qword_27CABA4E0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v35) == 1)
    {
      sub_2166997CC(v19, &qword_27CABA4E0);
      if (qword_27CAB5FA8 != -1)
      {
        OUTLINED_FUNCTION_1_171();
      }

      v37 = sub_217007CA4();
      __swift_project_value_buffer(v37, qword_27CAC5DE0);
      v38 = sub_217007C84();
      v39 = sub_21700ED84();
      if (!OUTLINED_FUNCTION_8_64(v39))
      {
        goto LABEL_18;
      }

      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "Unable to report click event because no identifier was found for facet bar item";
      goto LABEL_17;
    }

    v42 = sub_217006894();
    v43 = v44;
    OUTLINED_FUNCTION_50();
    (*(v45 + 8))(v19, v35);
  }

  else
  {
    v42 = *v26;
    v43 = v26[1];
    sub_21700DF14();
    sub_216C0673C(v26, type metadata accessor for SearchResultsListSection);
  }

  type metadata accessor for MusicPageMetricsProvider();
  sub_21700D4B4();
  v46 = v77[0];
  if (!v77[0])
  {
LABEL_13:

    if (qword_27CAB5FA8 != -1)
    {
      OUTLINED_FUNCTION_1_171();
    }

    v49 = sub_217007CA4();
    __swift_project_value_buffer(v49, qword_27CAC5DE0);
    v38 = sub_217007C84();
    v50 = sub_21700ED84();
    if (!OUTLINED_FUNCTION_8_64(v50))
    {
      goto LABEL_18;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "Unable to report click event because no page fields were found";
LABEL_17:
    _os_log_impl(&dword_216679000, v38, v31, v41, v40, 2u);
    MEMORY[0x21CEA1440](v40, -1, -1);
    goto LABEL_18;
  }

  v47 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v48 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v46 + v47, 1, v48))
  {
    swift_endAccess();
LABEL_12:

    goto LABEL_13;
  }

  v52 = sub_21700D0F4();
  swift_endAccess();
  if (!v52)
  {
    goto LABEL_12;
  }

  v53 = v75;
  v54 = v74;
  sub_21700D4B4();
  if (__swift_getEnumTagSinglePayload(v54, 1, v53) != 1)
  {
    v58 = v69;
    v59 = *(v69 + 32);
    v76 = v42;
    v60 = v68;
    v59(v68, v54, v53);
    v61 = v21;
    v62 = v70;
    v63 = *(v70 + 36);
    v64 = sub_217005EF4();
    v65 = v71;
    v66 = v71 + v63;
    v21 = v61;
    __swift_storeEnumTagSinglePayload(v66, 1, 1, v64);
    *v65 = v76;
    *(v65 + 8) = v43;
    *(v65 + 16) = 3848;
    *(v65 + 24) = xmmword_217029BA0;
    *(v65 + 40) = 0;
    *(v65 + *(v62 + 44)) = 8;
    *(v65 + *(v62 + 40)) = 0;
    sub_216C949EC(v65, v52, v60, v72, v73, 0x686372616553, 0xE600000000000000);

    sub_216C0673C(v65, type metadata accessor for MusicMetrics.ClickFields);
    (*(v58 + 8))(v60, v75);
    goto LABEL_19;
  }

  sub_2166997CC(v54, &unk_27CABFB50);
  if (qword_27CAB5FA8 != -1)
  {
    OUTLINED_FUNCTION_1_171();
  }

  v55 = sub_217007CA4();
  __swift_project_value_buffer(v55, qword_27CAC5DE0);
  v38 = sub_217007C84();
  v56 = sub_21700ED84();
  if (OUTLINED_FUNCTION_8_64(v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_216679000, v38, v53, "Unable to report click event because no metrics pipeline was found", v57, 2u);
    MEMORY[0x21CEA1440](v57, -1, -1);
  }

LABEL_18:

LABEL_19:
  sub_2166997CC(v21, &qword_27CABA4E0);
  return sub_2166997CC(v29, &qword_27CABA5A0);
}

uint64_t sub_216C03494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionOfExistingItem;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA610);
  swift_allocObject();
  *(v5 + v12) = sub_217007D84();
  v13 = OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar;
  sub_217006704();
  if (*(a1 + 16))
  {
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v14 = (v6 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionHandler);
    *v14 = a3;
    v14[1] = a4;
    sub_216C066CC(a5, v6 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_pageAppearancePublisher);
  }

  else
  {
    sub_2166997CC(a5, &qword_27CABA558);

    sub_217006714();
    OUTLINED_FUNCTION_9_0();
    (*(v15 + 8))(v6 + v13);
    type metadata accessor for FacetBarState.Data(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

uint64_t sub_216C03604(uint64_t a1)
{
  v3 = sub_21700DF14();
  v4 = sub_216E214E4(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_152();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_216C03E6C(v8, sub_2166C1A48, v9, &OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar, &qword_280E44300, type metadata accessor for FacetBarState.Data);
  }
}

uint64_t sub_216C03728(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for FacetBarItemBox();

  v5 = sub_216C05D68(v4, a1);

  if (v5)
  {

    return sub_216C0390C(a1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_152();
    *(v8 - 16) = v2;
    *(v8 - 8) = a1;
    sub_216C03E6C(v9, sub_216C0661C, v10, &OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar, &qword_280E44300, type metadata accessor for FacetBarState.Data);
  }
}

uint64_t sub_216C0385C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_129();
  sub_216C065D4(v0, v1);
  OUTLINED_FUNCTION_116_0();

  return sub_21700DF14();
}

uint64_t sub_216C0390C(uint64_t a1)
{
  *(v1 + 24) = a1;

  v2 = *(v1 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionHandler);
  sub_216C03990();
  v2();
}

uint64_t sub_216C03990()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_129();
  sub_216C065D4(v0, v1);
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_216C03A7C()
{

  sub_2166997CC(v0 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_pageAppearancePublisher, &qword_27CABA558);

  v1 = OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_216C03B24()
{
  sub_216C03A7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216C03B7C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_112();
  sub_216C065D4(v0, v1);
  OUTLINED_FUNCTION_116_0();
}

uint64_t sub_216C03C2C(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_216C03E6C(KeyPath, sub_216C06648, &v5, &OBJC_IVAR____TtC7MusicUI13FacetBarState___observationRegistrar, qword_280E44190, type metadata accessor for FacetBarState);
}

uint64_t sub_216C03CD8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
}

uint64_t sub_216C03D14()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_112();
  sub_216C065D4(v1, v2);
  OUTLINED_FUNCTION_116_0();

  return *(v0 + 24);
}

uint64_t sub_216C03D94(uint64_t result)
{
  v2 = result & 1;
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_1_152();
    *(v4 - 16) = v1;
    *(v4 - 8) = v2;
    sub_216C03E6C(v5, sub_216C06638, v6, &OBJC_IVAR____TtC7MusicUI13FacetBarState___observationRegistrar, qword_280E44190, type metadata accessor for FacetBarState);
  }

  return result;
}

uint64_t sub_216C03EFC()
{

  v1 = OBJC_IVAR____TtC7MusicUI13FacetBarState___observationRegistrar;
  sub_217006714();
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_216C03FC4()
{
  sub_216C040B8();
  if (v0 <= 0x3F)
  {
    sub_217006714();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_216C040B8()
{
  if (!qword_280E48498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9E80);
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E48498);
    }
  }
}

uint64_t sub_216C0411C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_217006704();
  return v0;
}

id sub_216C0414C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30);
  sub_217009A04();

  sub_21700DB24();

  v0 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E38)) init];
  v1 = objc_allocWithZone(type metadata accessor for FacetBarUIKit.ContainerView());
  return sub_216C0556C(v0);
}

uint64_t sub_216C041F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = sub_21700DAF4();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  sub_21700DB34();
  sub_21700DAE4();
  swift_unknownObjectRetain();
  v8 = sub_21700DB04();
  sub_2166A6EFC(a1 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_pageAppearancePublisher, v5, &qword_27CABA558);
  type metadata accessor for FacetBarUIKit.Coordinator(0);
  v9 = swift_allocObject();
  sub_216C050AC(v8, v5);
  return v9;
}

id sub_216C0433C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *, uint64_t))
{
  v39 = a1;
  v40 = a5;
  v46 = a2;
  sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v44 = v10;
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v43 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v41 = *(v16 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;

  v21 = a4;
  swift_unknownObjectRetain();
  sub_216C04810(sub_216C067EC, v20);
  v42 = *(v15 + 16);
  v42(v19, a2, v13);
  v22 = *(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a3;
  *(v23 + 3) = v21;
  *(v23 + 4) = v40;
  v40 = *(v15 + 32);
  v40(&v23[(v22 + 40) & ~v22], v19, v13);
  v24 = v39;

  swift_unknownObjectRetain();
  sub_217006674();
  v42(v19, v46, v13);
  v25 = swift_allocObject();
  v40((v25 + ((v22 + 16) & ~v22)), v19, v13);
  v26 = &v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
  v27 = *&v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
  *v26 = sub_216C06888;
  v26[1] = v25;
  sub_21667E91C(v27);
  v28 = sub_2170066A4();
  v29 = sub_216C0385C();
  LOBYTE(v13) = sub_216E214E4(v28, v29);

  if ((v13 & 1) == 0)
  {
    sub_216C0385C();
    sub_2170066B4();
  }

  v30 = *&v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope];

  v31 = sub_216C03990();
  if (v30)
  {
    type metadata accessor for FacetBarItemBox();
    v32 = sub_216C05D68(v30, v31);

    if (v32)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v33 = sub_216C03990();
  sub_216C04F40(v33);
LABEL_8:
  v34 = v43;
  sub_217009A14();
  sub_2169274D4();
  sub_217009104();
  (*(v44 + 8))(v34, v45);
  v35 = v47;
  v36 = v48;
  v37 = &v24[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset];
  *v37 = 0;
  *(v37 + 1) = v35;
  *(v37 + 2) = 0;
  *(v37 + 3) = v36;
  return [v24 setNeedsLayout];
}

uint64_t sub_216C0474C(uint64_t a1, uint64_t a2)
{
  v3 = sub_216C03990();
  type metadata accessor for FacetBarItemBox();
  v4 = sub_216C05D68(a2, v3);

  if (v4)
  {
    sub_217007D74();
  }

  return sub_216C03728(v5);
}

uint64_t sub_216C04810(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_2167759F4(a1);
  sub_217006694();

  return sub_21667E91C(a1);
}

uint64_t sub_216C048C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 2) = a2;
  *(v9 + 3) = a3;
  *(v9 + 4) = a4;
  *(v9 + 5) = a5;

  swift_unknownObjectRetain();
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30);
  sub_217009A04();
  v10 = (v14 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
  v11 = *(v14 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
  *v10 = sub_216C06920;
  v10[1] = v9;

  sub_21667E91C(v11);

  sub_217009A04();
  v12 = *(v14 + 16);

  sub_216C04A00(v12, a2, a3);
}

void sub_216C04A00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v35 = a1;
  v5 = sub_21700D704();
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700D774();
  MEMORY[0x28223BE20](v7 - 8);
  v33 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21700D7A4();
  v9 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
LABEL_13:
    v25 = sub_21700F2B4();
    if (v25 < 0)
    {
      __break(1u);
    }

    v12 = v25;
    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v30 = a2 & 0xC000000000000001;
      v29 = (v9 + 8);
      v13 = 4;
      v28 = xmmword_217015230;
      v31 = a3;
      v27 = a2;
      do
      {
        v9 = *(sub_216C0385C() + 16);

        if (v13 - 4 < v9)
        {
          v14 = sub_216C0385C();
          if ((v13 - 4) >= *(v14 + 16))
          {
            __break(1u);
            goto LABEL_13;
          }

          v36 = v13 - 4;
          v15 = *(v14 + 8 * v13);

          v17 = *(*v15 + 96);
          (v17)(v16);
          v17();
          sub_21700D764();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
          inited = swift_initStackObject();
          *(inited + 16) = v28;
          strcpy((inited + 32), "impressionType");
          *(inited + 47) = -18;
          *(inited + 48) = 0x7265746C6966;
          *(inited + 56) = 0xE600000000000000;
          v19 = MEMORY[0x277D837D0];
          *(inited + 72) = MEMORY[0x277D837D0];
          *(inited + 80) = 25705;
          *(inited + 88) = 0xE200000000000000;
          *(inited + 96) = (v17)();
          *(inited + 104) = v20;
          *(inited + 120) = v19;
          *(inited + 128) = 0x656C746974;
          *(inited + 136) = 0xE500000000000000;
          v21 = (v17)();
          *(inited + 168) = v19;
          *(inited + 144) = v21;
          *(inited + 152) = v22;
          sub_21700E384();
          sub_21700D6F4();
          v23 = MEMORY[0x277D84F90];
          a2 = sub_216C5570C(MEMORY[0x277D84F90]);
          sub_216C5570C(v23);
          sub_21700D784();
          if (v30)
          {
            v24 = MEMORY[0x21CEA0220](v36, v27);
          }

          else
          {
            a2 = v27;
            v24 = *(v27 + 8 * v13);
          }

          [v24 frame];

          sub_21700DAC4();

          (*v29)(v11, v32);
          a3 = v31;
        }

        ++v13;
        --v12;
      }

      while (v12);
    }
  }
}

uint64_t sub_216C04EA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30);
  sub_217009A04();

  sub_21700DAD4();
}

uint64_t sub_216C04F40(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope] = a1;

  [v1 setNeedsLayout];
}

id sub_216C04FA8(double a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset];
  *v5 = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [v4 setNeedsLayout];
}

double sub_216C04FF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    [*(a5 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar) intrinsicContentSize];
  }

  else
  {
    v7 = *(a5 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar);
    [v7 intrinsicContentSize];
    [v7 sizeThatFits_];
  }

  return result;
}

uint64_t sub_216C050AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558);
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v10 = (v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_observation);
  *v11 = 0u;
  v11[1] = 0u;
  *(v3 + 16) = a1;
  sub_2166A6EFC(a2, v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_pageAppearancePublisher, &qword_27CABA558);
  sub_2166A6EFC(a2, v9, &qword_27CABA558);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
  {
    sub_2166997CC(a2, &qword_27CABA558);
    sub_2166997CC(v9, &qword_27CABA558);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    OUTLINED_FUNCTION_143();
    swift_allocObject();
    swift_weakInit();
    sub_21696CC48();

    v13 = sub_217007E84();

    OUTLINED_FUNCTION_50();
    (*(v14 + 8))(v9, v12);
    *(&v19 + 1) = sub_217007D44();

    *&v18 = v13;
    sub_2166997CC(a2, &qword_27CABA558);
  }

  v15 = OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_observation;
  swift_beginAccess();
  sub_216697EC4(&v18, v3 + v15);
  swift_endAccess();
  return v3;
}

uint64_t sub_216C052F4(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (v1)
    {

      sub_21700DB14();

      v4 = *(v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems);
      if (v4)
      {
        sub_2167759F4(*(v3 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems));

        v4(v5);
        sub_21667E91C(v4);
      }
    }
  }

  return result;
}

uint64_t sub_216C053C4()
{

  sub_2166997CC(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_pageAppearancePublisher, &qword_27CABA558);
  sub_21667E91C(*(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_addImpressedItems));
  sub_2166997CC(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit11Coordinator_observation, &unk_27CABF7A0);
  return v0;
}

uint64_t sub_216C05438()
{
  sub_216C053C4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_216C054B8()
{
  sub_216C040B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_216C0556C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentOffsetObservation];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v5 = &v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope] = 0;
  v6 = &v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset];
  v7 = *(MEMORY[0x277D768C8] + 16);
  *v6 = *MEMORY[0x277D768C8];
  *(v6 + 1) = v7;
  *&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 addSubview_];
  swift_getKeyPath();
  OUTLINED_FUNCTION_143();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_217005D64();

  v13[3] = sub_217005D14();

  v13[0] = v10;
  v11 = OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentOffsetObservation;
  swift_beginAccess();
  sub_216697EC4(v13, v9 + v11);
  swift_endAccess();

  return v9;
}

void sub_216C0570C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
    if (v4)
    {
      sub_2167759F4(*&Strong[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange]);

      v4([v1 bounds]);
      sub_21667E91C(v4);
    }

    else
    {
    }
  }
}

void sub_216C057BC()
{
  v1 = (v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentOffsetObservation);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = (v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_selectedScope) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_contentInset);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  sub_21700F584();
  __break(1u);
}

void sub_216C0587C()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  [v0 bounds];
  if (CGRectGetWidth(v8) > 0.0)
  {
    OUTLINED_FUNCTION_13_62();
    if (CGRectGetHeight(v9) > 0.0)
    {
      OUTLINED_FUNCTION_13_62();
      Width = CGRectGetWidth(v10);
      OUTLINED_FUNCTION_13_62();
      Height = CGRectGetHeight(v11);
      v4 = *&v0[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_onScopeBarBoundsChange];
      if (v4)
      {

        v5 = OUTLINED_FUNCTION_13_62();
        v4(v5);
        sub_21667E91C(v4);
      }

      v6 = *&v0[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar];
      [*&v1[OBJC_IVAR____TtCV7MusicUI13FacetBarUIKit13ContainerView_scopeBar] setFrame_];

      sub_217006684();

      [v6 setContentInset_];
    }
  }
}

uint64_t sub_216C05B5C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_216C05C0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216C041F4(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_216C05C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C06790();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_216C05CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_216C06790();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_216C05D40()
{
  sub_216C06790();
  sub_2170094F4();
  __break(1u);
}

uint64_t sub_216C05D68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v5[3] = type metadata accessor for FacetBarItemBox();
  v5[0] = a2;

  LOBYTE(a2) = v3(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return a2 & 1;
}

uint64_t sub_216C05E14(uint64_t a1)
{
  sub_21700F8F4();
  (*(*a1 + 104))(v3);
  return sub_21700F944();
}

uint64_t sub_216C05E88()
{
  v1 = *v0;
  sub_21700F8F4();
  (*(*v1 + 104))(v3);
  return sub_21700F944();
}

uint64_t sub_216C05EF4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5DE0);
  __swift_project_value_buffer(v0, qword_27CAC5DE0);
  return sub_217007C94();
}

uint64_t sub_216C05F78@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 128);
  a1[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v5 = *(*(v3 - 8) + 16);

  return v5(boxed_opaque_existential_1, v1 + v2, v3);
}

uint64_t *sub_216C06134()
{
  v1 = *v0;

  (*(*(*(v1 + 128) - 8) + 8))(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_216C061B4()
{
  v0 = sub_216C06134();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_216C06220()
{
  sub_21700F8F4();
  (*(*v0 + 104))(v2);
  return sub_21700F944();
}

uint64_t sub_216C06364()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_216C063D4()
{
  result = qword_280E42950;
  if (!qword_280E42950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E42950);
  }

  return result;
}

uint64_t sub_216C064D4()
{
  sub_21700F8F4();
  (*(**v0 + 104))(v2);
  return sub_21700F944();
}

uint64_t sub_216C065D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_216C06678()
{
  result = qword_280E43F60;
  if (!qword_280E43F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E43F60);
  }

  return result;
}

uint64_t sub_216C066CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C0673C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216C06790()
{
  result = qword_280E43F68[0];
  if (!qword_280E43F68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E43F68);
  }

  return result;
}

uint64_t sub_216C067F8(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30);
  OUTLINED_FUNCTION_36(v5);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];

  return sub_216C048C0(a1, a2, v6, v7, v8);
}

uint64_t sub_216C06888()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E30);
  OUTLINED_FUNCTION_36(v0);

  return sub_216C04EA8();
}

void sub_216C069C0()
{
  sub_216C06B18();
  if (v0 <= 0x3F)
  {
    sub_216820E14();
    if (v1 <= 0x3F)
    {
      sub_216C06BAC(319, qword_280E46950, type metadata accessor for MusicPageMetricsProvider);
      if (v2 <= 0x3F)
      {
        sub_216C06BAC(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext);
        if (v3 <= 0x3F)
        {
          sub_216C06BAC(319, qword_280E3DDE0, type metadata accessor for JSSearchResultsPage.NoResultsContent);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ObjectGraph();
            if (v5 <= 0x3F)
            {
              type metadata accessor for FacetBarState(319);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216C06B18()
{
  if (!qword_280E3C7E0)
  {
    type metadata accessor for JSSearchResultsPage(255);
    sub_216C08DD0(&qword_280E3DCA0, type metadata accessor for JSSearchResultsPage);
    v0 = type metadata accessor for CatalogPagePresenter();
    if (!v1)
    {
      atomic_store(v0, &qword_280E3C7E0);
    }
  }
}

void sub_216C06BAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_216C06C1C@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v155 = type metadata accessor for SearchResultsPageView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v4 - v3);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E48);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105();
  v151 = v6;
  v7 = _s14descr28290C1A9V11ContentViewVMa(0);
  OUTLINED_FUNCTION_1();
  v146 = v8;
  MEMORY[0x28223BE20](v9);
  v147 = v10;
  v148 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC1E28);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v13);
  v134 = sub_21700D574();
  OUTLINED_FUNCTION_1();
  v132 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v17 - v16);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E50);
  OUTLINED_FUNCTION_1();
  v129 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E58);
  OUTLINED_FUNCTION_1();
  v135 = v21;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v25 = OUTLINED_FUNCTION_36(v24);
  MEMORY[0x28223BE20](v25);
  v124 = v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v120 - v28;
  MEMORY[0x28223BE20](v30);
  v149 = v120 - v31;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E60);
  OUTLINED_FUNCTION_1();
  v140 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v39);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E78);
  OUTLINED_FUNCTION_1();
  v145 = v40;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_105();
  v144 = v42;
  v43 = _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7();
  v47 = v46 - v45;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40);
  OUTLINED_FUNCTION_36(v48);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v49);
  v51 = v120 - v50;
  v52 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_1();
  v125 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_70(v120 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = v56;
  MEMORY[0x28223BE20](v57);
  v150 = v120 - v58;
  v156 = v1;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v51, 1, v52) == 1)
  {
    sub_216697664(v51, &qword_27CAC5E40);
    v60 = v156[3];
    v59 = v156[4];
    v61 = *v156;
    v62 = v156[1];
    v63 = v156[2];

    sub_21700DF14();

    swift_unknownObjectRetain();
    v64 = v127;
    sub_216C88D60(v61, v60, v59, v62, v63, v127);
    sub_216C08E18();
    swift_storeEnumTagMultiPayload();
    v65 = type metadata accessor for ObjectGraph();
    v66 = sub_216C08BAC();
    v160 = v37;
    v161 = v65;
    v162 = v66;
    OUTLINED_FUNCTION_5_103();
    OUTLINED_FUNCTION_4_113();
    sub_216C08DD0(v67, v68);
    sub_217009554();
    v69 = type metadata accessor for SearchResultsPageView;
    v70 = v64;
  }

  else
  {
    v127 = v37;
    OUTLINED_FUNCTION_3_130();
    v71 = v150;
    sub_216C08E70();
    v72 = type metadata accessor for MenuBuilder();
    v73 = v156;
    v74 = *(v156 + *(v7 + 40));
    v75 = sub_216C65C14();
    v122 = v72;
    v123 = swift_allocObject();
    *(v123 + 16) = v75;
    sub_2166A6EA4();
    v76 = v43[5];
    OUTLINED_FUNCTION_2_137();
    sub_216C08E18();
    __swift_storeEnumTagSinglePayload(v47 + v76, 0, 1, v52);
    v77 = v73[4];
    v78 = (v47 + v43[6]);
    *v78 = v73[3];
    v78[1] = v77;
    *(v47 + v43[7]) = v74;
    v79 = v47 + v43[8];
    *v79 = swift_getKeyPath();
    *(v79 + 8) = 0;
    *(v79 + 16) = 0;
    *(v79 + 24) = 0;
    *(v79 + 32) = 0;
    v80 = *(v52 + 20);
    v81 = v74;
    v82 = sub_21700D194();
    OUTLINED_FUNCTION_34();
    v84 = &v71[v80];
    v85 = v149;
    (*(v83 + 16))(v149, v84, v82);
    __swift_storeEnumTagSinglePayload(v85, 0, 1, v82);
    v86 = v73[2];
    v120[2] = v73[1];
    v120[1] = v86;
    sub_2166A6EA4();
    LODWORD(v82) = __swift_getEnumTagSinglePayload(v29, 1, v82);
    sub_21700DF14();

    v87 = v47;
    v88 = v29;
    if (!v82)
    {
      v89 = sub_21700D0E4();
      if (*v90)
      {
        v159 = MEMORY[0x277D837D0];
        v157 = 0x686372616553;
        v158 = 0xE600000000000000;
        sub_2166EF928();
      }

      v89(&v160, 0);
    }

    v91 = sub_216C08DD0(qword_280E38D80, _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa);
    v92 = v128;
    sub_21700A224();
    v93 = v124;
    sub_2166A6EA4();
    v94 = v130;
    v95 = v134;
    sub_21700D444();
    v121 = v87;
    v120[0] = v88;
    v96 = v133;
    sub_217007584();
    v97 = sub_217007594();
    __swift_storeEnumTagSinglePayload(v96, 0, 1, v97);
    v160 = v43;
    v161 = v91;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v120[3] = v81;
    v99 = v131;
    v100 = v137;
    sub_21700A194();
    sub_216697664(v96, &qword_27CAC1E28);
    (*(v132 + 8))(v94, v95);
    sub_216697664(v93, &qword_27CAB8DF8);
    (*(v129 + 8))(v92, v100);
    sub_21700D844();
    sub_21700D444();
    v160 = v100;
    v161 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v101 = v139;
    v102 = v138;
    sub_21700A1F4();

    (*(v135 + 8))(v99, v102);
    sub_216697664(v149, &qword_27CAB8DF8);
    sub_216697664(v120[0], &qword_27CAB8DF8);
    sub_216C08E18();
    OUTLINED_FUNCTION_2_137();
    v103 = v150;
    sub_216C08E18();
    v104 = swift_allocObject();
    sub_216C08E70();
    OUTLINED_FUNCTION_3_130();
    sub_216C08E70();
    v105 = v141;
    (*(v140 + 32))(v141, v101, v142);
    v106 = (v105 + *(v136 + 36));
    *v106 = sub_216C08EC8;
    v106[1] = v104;
    sub_216C08DD0(qword_280E45220, type metadata accessor for MenuBuilder);
    v106[2] = 0;
    v106[3] = 0;
    v107 = sub_217007D54();
    v108 = v143;
    sub_21674D200();
    v109 = v127;
    v110 = (v108 + *(v127 + 36));
    v111 = v123;
    *v110 = v107;
    v110[1] = v111;
    v112 = type metadata accessor for ObjectGraph();
    v113 = sub_216C08BAC();

    v114 = v144;
    sub_21700A1E4();
    sub_21674D260(v108);
    v115 = v145;
    v116 = v152;
    (*(v145 + 16))(v151, v114, v152);
    swift_storeEnumTagMultiPayload();
    v160 = v109;
    v161 = v112;
    v162 = v113;
    OUTLINED_FUNCTION_5_103();
    OUTLINED_FUNCTION_4_113();
    sub_216C08DD0(v117, v118);
    sub_217009554();

    (*(v115 + 8))(v114, v116);
    sub_216C08F90(v121, _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa);
    v69 = type metadata accessor for JSSearchResultsPage.NoResultsContent;
    v70 = v103;
  }

  return sub_216C08F90(v70, v69);
}

uint64_t sub_216C07AE4(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    v3 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
    return sub_216F0D524(a2 + *(v3 + 20));
  }

  return result;
}

uint64_t sub_216C07B20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA540);
  v105 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v104 = &v92 - v3;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E88);
  MEMORY[0x28223BE20](v112);
  v114 = &v92 - v4;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E90);
  v107 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v106 = &v92 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E40);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v92 - v7;
  v109 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  MEMORY[0x28223BE20](v109);
  v103 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5E98);
  MEMORY[0x28223BE20](v9 - 8);
  v116 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = &v92 - v12;
  v102 = sub_2170090F4();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContextView = type metadata accessor for SearchResultsQueryContextView(0);
  MEMORY[0x28223BE20](ContextView);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EA0);
  MEMORY[0x28223BE20](v96);
  v99 = &v92 - v17;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EA8);
  MEMORY[0x28223BE20](v108);
  v98 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = &v92 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD58);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v92 - v22;
  Context = type metadata accessor for JSSearchResultsPage.QueryContext(0);
  MEMORY[0x28223BE20](Context);
  MEMORY[0x28223BE20](v25);
  v27 = &v92 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EB0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v111 = &v92 - v32;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v23, 1, Context) == 1)
  {
    sub_216697664(v23, &qword_27CABFD58);
    v33 = 1;
    v34 = v111;
    v35 = v108;
  }

  else
  {
    v95 = v30;
    sub_216C08E70();
    sub_216C08E18();
    v36 = _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(0);
    v37 = v36;
    v38 = (v2 + *(v36 + 24));
    if (v38[1])
    {
      v39 = *v38;
      v40 = v38[1];
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v41 = *(v2 + *(v36 + 28));
    sub_216C08E70();
    v42 = &v16[ContextView[5]];
    *v42 = v39;
    *(v42 + 1) = v40;
    *&v16[ContextView[6]] = v41;
    v43 = ContextView[7];
    *&v16[v43] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
    swift_storeEnumTagMultiPayload();
    v44 = &v16[ContextView[8]];
    *v44 = swift_getKeyPath();
    *(v44 + 1) = 0;
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    v44[32] = 0;
    v45 = &v16[ContextView[9]];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    sub_21700DF14();

    v46 = sub_217009CB4();
    v47 = *(v37 + 32);
    v94 = v2;
    v48 = v2 + v47;
    v50 = *v48;
    v49 = *(v48 + 8);
    v52 = *(v48 + 16);
    v51 = *(v48 + 24);
    v53 = *(v48 + 32);
    v93 = v52;
    if (v53 != 1)
    {

      sub_21700ED94();
      v54 = sub_217009C34();
      sub_217007BC4();

      v55 = v100;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v50, v49, v52, v51, 0);
      (*(v101 + 8))(v55, v102);
    }

    v30 = v95;
    v56 = v99;
    sub_217007F24();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_216C08E70();
    v65 = &v56[*(v96 + 36)];
    *v65 = v46;
    *(v65 + 1) = v58;
    *(v65 + 2) = v60;
    *(v65 + 3) = v62;
    *(v65 + 4) = v64;
    v65[40] = 0;
    v66 = sub_217009CD4();
    if (!v53)
    {

      sub_21700ED94();
      v67 = v49;
      v68 = sub_217009C34();
      sub_217007BC4();

      v69 = v100;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_21680E444(v50, v67, v93, v51, 0);
      (*(v101 + 8))(v69, v102);
    }

    sub_217007F24();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    sub_216C08F90(v27, type metadata accessor for JSSearchResultsPage.QueryContext);
    v78 = v98;
    sub_2167A4788();
    v35 = v108;
    v79 = &v78[*(v108 + 36)];
    *v79 = v66;
    *(v79 + 1) = v71;
    *(v79 + 2) = v73;
    *(v79 + 3) = v75;
    *(v79 + 4) = v77;
    v79[40] = 0;
    sub_2167A4788();
    v34 = v111;
    sub_2167A4788();
    v33 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34, v33, 1, v35);
  _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(0);
  v80 = v110;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v80, 1, v109) == 1)
  {
    sub_216697664(v80, &qword_27CAC5E40);
    v81 = v104;
    sub_2170097E4();
    v82 = v105;
    v83 = v117;
    (*(v105 + 16))(v114, v81, v117);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC5EB8, &qword_27CAC5E90);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
    v84 = v113;
    sub_217009554();
    (*(v82 + 8))(v81, v83);
  }

  else
  {
    v85 = v103;
    v86 = sub_216C08E70();
    MEMORY[0x28223BE20](v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5ED0);
    sub_216C09290();
    sub_2166D9530(&qword_27CAC5EE0, &qword_27CAC5ED0);
    v87 = v106;
    sub_2170097D4();
    v88 = v107;
    v89 = v115;
    (*(v107 + 16))(v114, v87, v115);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(&qword_27CAC5EB8, &qword_27CAC5E90);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
    v84 = v113;
    sub_217009554();
    (*(v88 + 8))(v87, v89);
    sub_216C08F90(v85, type metadata accessor for JSSearchResultsPage.NoResultsContent);
  }

  sub_2166A6EA4();
  v90 = v116;
  sub_2166A6EA4();
  sub_2166A6EA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EC0);
  sub_2166A6EA4();
  sub_216697664(v84, &qword_27CAC5E98);
  sub_216697664(v34, &qword_27CAC5EB0);
  sub_216697664(v90, &qword_27CAC5E98);
  return sub_216697664(v30, &qword_27CAC5EB0);
}

uint64_t sub_216C08998@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_217006274();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_21700E4C4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21700E4B4();
  sub_217006264();
  sub_21700E584();
  sub_2167B2E14();
  sub_21700AE34();
  v4 = sub_217009E24();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5EC8);
  v7 = (a1 + *(result + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  return result;
}

uint64_t sub_216C08B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170093B4();
  v5 = a1[1];
  if (v5)
  {
    v6 = *a1;
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = v7;

  return sub_21700DF14();
}

unint64_t sub_216C08BAC()
{
  result = qword_280E2AFE8;
  if (!qword_280E2AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E70);
    sub_216C08C64();
    sub_2166D9530(&qword_280E2A7E8, &qword_27CABBA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AFE8);
  }

  return result;
}

unint64_t sub_216C08C64()
{
  result = qword_280E2B1B8;
  if (!qword_280E2B1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E50);
    _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa(255);
    sub_216C08DD0(qword_280E38D80, _s14descr28290C1A9V11ContentViewV13NoResultsViewVMa);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1B8);
  }

  return result;
}

uint64_t sub_216C08DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216C08E18()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C08E70()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216C08EC8()
{
  v1 = *(_s14descr28290C1A9V11ContentViewVMa(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for JSSearchResultsPage.NoResultsContent(0);
  OUTLINED_FUNCTION_36(v4);
  v6 = v0 + ((v2 + v3 + *(v5 + 80)) & ~*(v5 + 80));

  return sub_216C07AE4(v0 + v2, v6);
}

uint64_t sub_216C08F90(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216C09010()
{
  sub_216C06BAC(319, qword_280E3DD30, type metadata accessor for JSSearchResultsPage.QueryContext);
  if (v0 <= 0x3F)
  {
    sub_216C06BAC(319, qword_280E3DDE0, type metadata accessor for JSSearchResultsPage.NoResultsContent);
    if (v1 <= 0x3F)
    {
      sub_2166D9E00(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObjectGraph();
        if (v3 <= 0x3F)
        {
          sub_2166D9E00(319, &qword_280E2B468, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_216C0915C()
{
  result = qword_280E2AA30;
  if (!qword_280E2AA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5E70);
    type metadata accessor for ObjectGraph();
    sub_216C08BAC();
    swift_getOpaqueTypeConformance2();
    sub_216C08DD0(qword_280E39BB0, type metadata accessor for SearchResultsPageView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA30);
  }

  return result;
}

unint64_t sub_216C09290()
{
  result = qword_27CAC5ED8;
  if (!qword_27CAC5ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5EC8);
    sub_2166D9530(&qword_280E2A5E0, &qword_27CABA420);
    sub_2166D9530(&qword_280E2A720, &qword_27CAB7670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5ED8);
  }

  return result;
}

uint64_t sub_216C09374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008FC4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_216C093A4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F08);
  OUTLINED_FUNCTION_16();
  v4 = v3;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_2166A6EFC(v1, &v16 - v10, &qword_27CABB9E8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2166997CC(v11, &qword_27CABB9E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC0660);
    sub_217007D94();
    sub_2166D9530(&qword_27CAC5F10, &qword_27CAC5F08);
    v13 = sub_217007E24();
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    sub_2166D9530(&qword_280E484D8, &qword_27CABBA38);
    v13 = sub_217007E24();
    OUTLINED_FUNCTION_50();
    (*(v14 + 8))(v11, v12);
  }

  return v13;
}

void sub_216C09600(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v70 = a7;
  v73 = a6;
  v74 = a5;
  v75 = a4;
  v72 = a3;
  v56 = a1;
  v67 = a10;
  v69 = a9;
  v64 = a15;
  v65 = a16;
  v63 = a14;
  v61 = a12;
  v60 = a11;
  v19 = *a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
  v21 = OUTLINED_FUNCTION_2(v20);
  v66 = v22;
  v58 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_70(&v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v71 = &v54 - v26;
  v68 = a2;
  v59 = *(v19 + 80);
  v62 = *(v19 + 88);
  v76[0] = a11;
  v76[1] = a12;
  v76[2] = v59;
  v76[3] = a14;
  v76[4] = a15;
  v76[5] = a16;
  v76[6] = v62;
  v27 = *(type metadata accessor for PaginatingGridView() + 104);
  *(a8 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for MappedSection(0);
  v29 = *(a17 + 16);
  v30 = v72;
  v31 = *(v72 + v28[8]);
  v32 = v72 + v28[6];
  v33 = v56;
  v55 = a17;
  v29(v56, v31, v32, a13, a17);
  *(a8 + 104) = (*(a17 + 24))(v33, v31, a13, a17);
  *(a8 + 112) = v34;
  *(a8 + 120) = v35;
  *(a8 + 128) = v36;
  *(a8 + 136) = v33;
  v37 = v71;
  sub_2166A6EFC(v30 + v28[10], v71, &qword_27CABFD18);
  v38 = v74;
  v39 = v75;
  *(a8 + 160) = v67;
  *(a8 + 168) = v39;
  *(a8 + 176) = v38;
  OUTLINED_FUNCTION_13_63(v73);
  v40 = v69;
  *(a8 + 144) = v70;
  *(a8 + 152) = v40;
  v41 = v57;
  sub_2166A6EFC(v37, v57, &qword_27CABFD18);
  v42 = (*(v66 + 80) + 88) & ~*(v66 + 80);
  v43 = (v58 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v61;
  v44[2] = v60;
  v44[3] = v45;
  v44[4] = v59;
  v44[5] = a13;
  v46 = v64;
  v44[6] = v63;
  v44[7] = v46;
  v47 = v62;
  v44[8] = v65;
  v44[9] = v47;
  v44[10] = v55;
  sub_216C09F24(v41, v44 + v42);
  *(v44 + v43) = v68;
  v48 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v49 = v73;
  v48[32] = *(v73 + 32);
  v50 = v49[1];
  *v48 = *v49;
  *(v48 + 1) = v50;
  v51 = (v44 + ((v43 + 55) & 0xFFFFFFFFFFFFFFF8));
  v52 = v74;
  *v51 = v75;
  v51[1] = v52;
  swift_unknownObjectRetain();
  sub_2168387D4(v49, v76);
  type metadata accessor for ShelvesPaginatedPresenter();
  OUTLINED_FUNCTION_10_76();
  sub_2170081A4();
  OUTLINED_FUNCTION_3_131();
  sub_216C0B82C(v72, v53);
  sub_2166997CC(v71, &qword_27CABFD18);
  OUTLINED_FUNCTION_18_49();
}

void sub_216C099F8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v66 = a8;
  v67 = a7;
  v70 = a6;
  v71 = a4;
  v65 = a5;
  v69 = a3;
  v63 = a10;
  v59 = a11;
  v60 = a14;
  v61 = a13;
  v18 = *a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
  v20 = OUTLINED_FUNCTION_2(v19);
  v62 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_70(&v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v68 = &v54 - v25;
  v64 = a2;
  v58 = *(v18 + 80);
  v26 = *(*(a15 + 8) + 8);
  v57 = *(v18 + 88);
  v72[0] = a11;
  v72[1] = a12;
  v72[2] = v58;
  v72[3] = a13;
  v72[4] = a14;
  v72[5] = v26;
  v72[6] = v57;
  v27 = *(type metadata accessor for PaginatingGridView() + 104);
  *(a9 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0);
  swift_storeEnumTagMultiPayload();
  v28 = type metadata accessor for MappedSection(0);
  v29 = *(a15 + 16);
  v30 = v69;
  v31 = *(v69 + v28[8]);
  v32 = v69 + v28[6];
  v55 = a15;
  v29(a1, v31, v32, a12, a15);
  *(a9 + 104) = (*(a15 + 24))(a1, v31, a12, a15);
  *(a9 + 112) = v33;
  *(a9 + 120) = v34;
  *(a9 + 128) = v35;
  *(a9 + 136) = a1;
  v36 = v68;
  sub_2166A6EFC(v30 + v28[10], v68, &qword_27CABFD18);
  OUTLINED_FUNCTION_13_63(v70);
  v37 = v71;
  *(a9 + 160) = v63;
  *(a9 + 168) = v37;
  v39 = v65;
  v38 = v66;
  *(a9 + 176) = v65;
  *(a9 + 144) = v67;
  *(a9 + 152) = v38;
  v40 = v36;
  v41 = v56;
  sub_2166A6EFC(v40, v56, &qword_27CABFD18);
  v42 = (*(v62 + 80) + 72) & ~*(v62 + 80);
  v43 = (v23 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v44[2] = v59;
  v44[3] = a12;
  v46 = v60;
  v45 = v61;
  v44[4] = v58;
  v44[5] = v45;
  v47 = v55;
  v44[6] = v46;
  v44[7] = v47;
  v44[8] = v57;
  sub_216C09F24(v41, v44 + v42);
  *(v44 + v43) = v64;
  v48 = v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
  v49 = v70;
  v50 = v71;
  v48[32] = *(v70 + 32);
  v51 = v49[1];
  *v48 = *v49;
  *(v48 + 1) = v51;
  v52 = (v44 + ((v43 + 55) & 0xFFFFFFFFFFFFFFF8));
  *v52 = v50;
  v52[1] = v39;
  sub_2168387D4(v49, v72);
  type metadata accessor for ShelvesPaginatedPresenter();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_10_76();
  sub_2170081A4();
  OUTLINED_FUNCTION_3_131();
  sub_216C0B82C(v69, v53);
  sub_2166997CC(v68, &qword_27CABFD18);
  OUTLINED_FUNCTION_18_49();
}

uint64_t sub_216C09DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  MEMORY[0x28223BE20](v10);
  v12 = &v16[-v11 - 8];
  type metadata accessor for ShelvesPaginatedPresenter();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3600) + 48);
  sub_2166A6EFC(a1, v12, &qword_27CABFD18);
  *&v12[v13] = 0;
  swift_storeEnumTagMultiPayload();

  sub_2168387D4(a3, v16);
  swift_unknownObjectRetain();
  return sub_216B48558(v12, a2, a3, a4, a5);
}

uint64_t sub_216C09F24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C09F94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_6_90();
  return sub_216C09DC0(v0 + v2, v4, v0 + v3, v5, v6);
}

void sub_216C0A048()
{
  type metadata accessor for ShelvesPaginatedPresenter();
  swift_getWitnessTable();
  sub_2170081D4();
  if (v0 <= 0x3F)
  {
    sub_216C0A230(319, &qword_280E402C0);
    if (v1 <= 0x3F)
    {
      sub_216C0A1E0();
      if (v2 <= 0x3F)
      {
        sub_21700E984();
        if (v3 <= 0x3F)
        {
          sub_2166B0B84();
          if (v4 <= 0x3F)
          {
            sub_216C0A230(319, qword_280E2EAD8);
            if (v5 <= 0x3F)
            {
              sub_216C0A284();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_216C0A1E0()
{
  if (!qword_280E402C8)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E402C8);
    }
  }
}

uint64_t sub_216C0A230(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_216C0A284()
{
  if (!qword_280E2B478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB9E8);
    v0 = sub_2170080E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B478);
    }
  }
}

uint64_t sub_216C0A33C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v91 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB9E8);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  v88 = &v59[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA8);
  v83 = v8;
  OUTLINED_FUNCTION_16();
  v90 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v89 = &v59[-v11];
  OUTLINED_FUNCTION_16();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v69 = v15;
  v92 = &v59[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v78 = a1[2];
  v16 = sub_21700E984();
  v77 = a1[3];
  v17 = sub_2170089F4();
  OUTLINED_FUNCTION_5_104();
  v76 = v16;
  WitnessTable = swift_getWitnessTable();
  v74 = WitnessTable;
  v93 = a1[7];
  v100 = v93;
  v101 = MEMORY[0x277CE0790];
  OUTLINED_FUNCTION_0_9();
  v75 = v17;
  v73 = swift_getWitnessTable();
  v19 = a1[5];
  v20 = a1[6];
  *&v95 = v16;
  *(&v95 + 1) = v17;
  v96 = WitnessTable;
  v97 = v73;
  v98 = v19;
  v99 = v20;
  v21 = v19;
  v22 = type metadata accessor for GridView();
  v80 = v22;
  OUTLINED_FUNCTION_16();
  v87 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_70(&v59[-v25]);
  OUTLINED_FUNCTION_9_79();
  v27 = sub_2166D9530(v26, &qword_27CABCCA8);
  v84 = v27;
  OUTLINED_FUNCTION_8_87();
  v81 = swift_getWitnessTable();
  *&v95 = v8;
  *(&v95 + 1) = v22;
  v96 = v27;
  v97 = v81;
  v85 = sub_217008B74();
  OUTLINED_FUNCTION_16();
  v86 = v28;
  MEMORY[0x28223BE20](v29);
  v79 = &v59[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_70(&v59[-v32]);
  v65 = *(v3 + 136);
  v94 = v65;
  sub_2167B7D58(v3 + 64, &v95);
  v33 = *(v3 + 112);
  v64 = *(v3 + 104);
  v63 = v33;
  v62 = *(v3 + 120);
  v34 = *(v3 + 40);
  v102[0] = *(v3 + 24);
  v102[1] = v34;
  v103 = *(v3 + 56);
  v61 = *(v3 + 144);
  v35 = *(v13 + 16);
  v70 = v13 + 16;
  v71 = v35;
  v60 = *(v3 + 128);
  v36 = v92;
  v35(v92, v3, a1);
  v66 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v37 = v66;
  v38 = swift_allocObject();
  *&v39 = a1[4];
  *(&v39 + 1) = v21;
  v68 = v39;
  *&v40 = v78;
  *(&v40 + 1) = v77;
  v78 = v40;
  *(v38 + 16) = v40;
  *(v38 + 32) = v39;
  v41 = v93;
  *(v38 + 48) = v20;
  *(v38 + 56) = v41;
  v77 = a1[8];
  *(v38 + 64) = v77;
  v67 = *(v13 + 32);
  v67(v38 + v37, v36, a1);
  v58 = v38;
  v42 = v72;
  sub_216830064(&v94, &v95, v64, v63, v62, v60, v102, v61, v72, sub_216C0B4DC, v58, v76);
  sub_21700DF14();
  sub_2168387D4(v102, &v95);
  v43 = v88;
  sub_216C0C94C();
  v44 = sub_216C093A4();
  sub_2166997CC(v43, &qword_27CABB9E8);
  *&v95 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCC0);
  sub_2166D9530(&qword_280E48520, &qword_27CABCCC0);
  v45 = v89;
  sub_217007E64();

  v46 = v92;
  v71(v92, v3, a1);
  v47 = v66;
  v48 = swift_allocObject();
  v49 = v68;
  *(v48 + 16) = v78;
  *(v48 + 32) = v49;
  v50 = v93;
  *(v48 + 48) = v20;
  *(v48 + 56) = v50;
  *(v48 + 64) = v77;
  v67(v48 + v47, v46, a1);
  v51 = v79;
  v52 = v80;
  v53 = v83;
  sub_21700ABE4();

  (*(v90 + 8))(v45, v53);
  (*(v87 + 8))(v42, v52);
  OUTLINED_FUNCTION_0_8();
  v54 = v85;
  swift_getWitnessTable();
  v55 = v82;
  sub_2166C24DC(v51, v54);
  v56 = *(v86 + 8);
  v56(v51, v54);
  sub_2166C24DC(v55, v54);
  return v56(v55, v54);
}

uint64_t sub_216C0AB08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v58 = a8;
  v60 = a5;
  v61 = a7;
  v52 = a2;
  v50 = a1;
  v62 = a9;
  v59 = a10;
  v65 = a3;
  v66 = a4;
  v53 = a3;
  v67 = a5;
  v68 = a6;
  v55 = a6;
  v69 = a7;
  v70 = a8;
  v71 = a10;
  v11 = type metadata accessor for PaginatingGridView();
  v12 = *(v11 - 8);
  v54 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v45 = &v43 - v13;
  v49 = type metadata accessor for GridItemDescriptor();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v49);
  v18 = &v43 - v17;
  v44 = &v43 - v17;
  v47 = a4;
  v56 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v46 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2170089F4();
  v57 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v48 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v51 = &v43 - v25;
  v26 = v52;
  v27 = v50;
  (*(v52 + 152))(v50, v24);
  v28 = v18;
  v29 = v49;
  (*(v15 + 16))(v28, v27, v49);
  v30 = v14;
  v31 = v11;
  (*(v12 + 16))(v30, v26, v11);
  v32 = (*(v15 + 80) + 72) & ~*(v15 + 80);
  v33 = (v16 + *(v12 + 80) + v32) & ~*(v12 + 80);
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 2) = v53;
  *(v34 + 3) = v35;
  v36 = v55;
  *(v34 + 4) = v60;
  *(v34 + 5) = v36;
  v37 = v58;
  *(v34 + 6) = v61;
  *(v34 + 7) = v37;
  *(v34 + 8) = v59;
  (*(v15 + 32))(&v34[v32], v44, v29);
  (*(v12 + 32))(&v34[v33], v45, v31);
  v38 = v48;
  v39 = v46;
  sub_21700AAF4();

  (*(v56 + 8))(v39, v35);
  v63 = v37;
  v64 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v40 = v51;
  sub_2166C24DC(v38, v21);
  v41 = *(v57 + 8);
  v41(v38, v21);
  sub_2166C24DC(v40, v21);
  return (v41)(v40, v21);
}

uint64_t sub_216C0AFD0(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for GridItemDescriptor() + 36));
  result = sub_21700E8D4();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if (v1 == result - 1)
  {
    v3 = type metadata accessor for ShelvesPaginatedPresenter();
    swift_getWitnessTable();
    sub_2170081B4();
    WitnessTable = swift_getWitnessTable();
    v5 = sub_21686D76C(v3, WitnessTable);

    if (!v5)
    {
      sub_2170081B4();
      v6 = sub_21686D8D0(v3, WitnessTable);

      if (v6)
      {
        sub_2170081B4();
        j__OUTLINED_FUNCTION_0_52(v3, WitnessTable);
      }
    }
  }

  return result;
}

void sub_216C0B170(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC35F8);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _s7SectionVMa(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) && (*a1 & 1) == 0)
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a2 + 24);
      v15 = *(a2 + 32);
      sub_21700DF14();
      sub_216935664(v14, v15, v13);

      if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
      {
        sub_216C0B7C8(v9, v12);
        type metadata accessor for ShelvesPaginatedPresenter();
        swift_getWitnessTable();
        sub_2170081B4();
        v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3600) + 48);
        sub_2166A6EFC(&v12[*(v10 + 48)], v6, &qword_27CABFD18);
        *&v6[v16] = 0;
        swift_storeEnumTagMultiPayload();
        sub_216B488C4(v6);

        sub_216C0B82C(v12, _s7SectionVMa);
        return;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    }

    sub_2166997CC(v9, &qword_27CAC5F00);
  }
}

uint64_t sub_216C0B414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFD18);
  OUTLINED_FUNCTION_2(v1);
  OUTLINED_FUNCTION_6_90();
  return sub_216C09DC0(v0 + v2, v4, v0 + v3, v5, v6);
}

uint64_t objectdestroy_5Tm_0()
{
  type metadata accessor for PaginatingGridView();
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 72) & ~*(v2 + 80));
  sub_2166B8588();
  sub_216838830(*(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 64);

  swift_unknownObjectRelease();
  v4 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABCCA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBA38);
    if (!__swift_getEnumTagSinglePayload(v3 + v4, 1, v5))
    {
      OUTLINED_FUNCTION_50();
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_216C0B718()
{
  OUTLINED_FUNCTION_38_6();
  v2 = v1;
  v3 = type metadata accessor for PaginatingGridView();
  OUTLINED_FUNCTION_36(v3);
  sub_216C0B170(v2, v0 + ((*(v4 + 80) + 72) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_37_8();
}

uint64_t sub_216C0B7C8(uint64_t a1, uint64_t a2)
{
  v4 = _s7SectionVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216C0B82C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_216C0B880()
{
  OUTLINED_FUNCTION_38_6();
  v1 = type metadata accessor for GridItemDescriptor();
  OUTLINED_FUNCTION_2(v1);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = type metadata accessor for PaginatingGridView();
  OUTLINED_FUNCTION_36(v4);
  sub_216C0AFD0(v0 + v3);
  OUTLINED_FUNCTION_37_8();
}

uint64_t sub_216C0BA2C()
{
  OUTLINED_FUNCTION_33();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  sub_21700EA34();
  v1[5] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v1[6] = v5;
  v1[7] = v4;

  return MEMORY[0x2822009F8](sub_216C0BAC4, v5, v4);
}

uint64_t sub_216C0BAC4()
{
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    type metadata accessor for RemoveItemAction();
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_216B950C8;

    return sub_216A44698();
  }

  else
  {

    v4 = v0[2];
    v5 = *MEMORY[0x277D21CA8];
    sub_21700D2A4();
    OUTLINED_FUNCTION_9();
    (*(v6 + 104))(v4, v5);
    OUTLINED_FUNCTION_3();

    return v7();
  }
}

unint64_t sub_216C0BC3C()
{
  result = qword_280E40948[0];
  if (!qword_280E40948[0])
  {
    type metadata accessor for RemoveItemAction();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E40948);
  }

  return result;
}

uint64_t sub_216C0BC94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2167C6580;

  return sub_216C0BA2C();
}

uint64_t sub_216C0BD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_216ED7B54(a1, a2, a3, WitnessTable);
}

uint64_t sub_216C0BDAC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ShowIniTunesStoreAction()
{
  result = qword_280E374E8;
  if (!qword_280E374E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216C0BE5C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v42 - v4;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v44 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v50 = v14;
  v51 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v46 = v18;
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for ShowIniTunesStoreAction() + 20);
  v22 = type metadata accessor for ContentDescriptor();
  v53 = a2;
  v49 = v21;
  __swift_storeEnumTagSinglePayload(a2 + v21, 1, 1, v22);
  sub_21700CE04();
  v23 = *(v7 + 16);
  v52 = v5;
  v23(v12, v54, v5);
  v24 = v48;
  sub_21700D224();
  if (v24)
  {
    (*(v7 + 8))(v54, v52);
    v25 = OUTLINED_FUNCTION_1_108();
    v26(v25);
    return sub_2168F3EB8(v53 + v49);
  }

  else
  {
    v42 = v22;
    v48 = v7;
    v27 = v53;
    (*(v46 + 32))(v53, v20, v47);
    v28 = v43;
    sub_21700CE04();
    v29 = v44;
    v23(v44, v54, v52);
    v30 = v45;
    ContentDescriptor.init(deserializing:using:)(v28, v29, v31, v32, v33, v34, v35, v36, v42, v43, SWORD2(v43), SBYTE6(v43), SHIBYTE(v43));
    v38 = OUTLINED_FUNCTION_2_117();
    v39(v38);
    v40 = OUTLINED_FUNCTION_1_108();
    v41(v40);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v42);
    return sub_216A765E0(v30, v27 + v49);
  }
}

uint64_t sub_216C0C28C()
{
  sub_216C0C2E8(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_216C0C2E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216C0C3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v7 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  result = sub_216683A80(v5, v14, a1);
  if (v16 == 1)
  {
    v12 = v14[1];
    *a2 = v14[0];
    *(a2 + 16) = v12;
    *(a2 + 32) = v15;
  }

  else
  {
    sub_21700ED94();
    v13 = sub_217009C34();
    OUTLINED_FUNCTION_44_23();

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v3, v7);
  }

  return result;
}

void sub_216C0C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = v20;
  v30 = v29;
  v31 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(v27);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_216683A80(v28, &a9 - v36, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25(0);
    OUTLINED_FUNCTION_34();
    (*(v38 + 32))(v30, v37);
  }

  else
  {
    sub_21700ED94();
    v39 = sub_217009C34();
    OUTLINED_FUNCTION_44_23();

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    (*(v33 + 8))(v21, v31);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216C0C76C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v17 = v7;
  v8 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  sub_216683A80(v6, &v16 - v13, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2167C5834(v14, v17, v3);
  }

  else
  {
    sub_21700ED94();
    v15 = sub_217009C34();
    OUTLINED_FUNCTION_44_23();

    sub_2170090E4();
    OUTLINED_FUNCTION_82();
    swift_getAtKeyPath();

    (*(v10 + 8))(v1, v8);
  }

  OUTLINED_FUNCTION_26();
}

BOOL sub_216C0CA0C(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  if (a1)
  {
    v4 = 0x7972617262696CLL;
  }

  else
  {
    v4 = 0x676F6C61746163;
  }

  do
  {
    v5 = v2;
    if (v2-- == 0)
    {
      break;
    }

    if (*v3)
    {
      v7 = 0x7972617262696CLL;
    }

    else
    {
      v7 = 0x676F6C61746163;
    }

    if (v7 == v4)
    {
      swift_bridgeObjectRelease_n();
      return v5 != 0;
    }

    v8 = sub_21700F7D4();
    swift_bridgeObjectRelease_n();
    ++v3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_216C0CAF8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_82();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  sub_216683A80(a1, &v7 - v5, &qword_27CAB8600);
  return sub_217008F74();
}

uint64_t sub_216C0CB94(void *a1)
{
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  type metadata accessor for UserSocialProfileCoordinator();
  OUTLINED_FUNCTION_61_14();
  if (v8)
  {
  }

  else
  {
    v4 = a1;
    OUTLINED_FUNCTION_45_24();
    sub_21700D4A4();
    v5 = OUTLINED_FUNCTION_41_27();
    v6(v5);
  }

  return v1;
}

uint64_t sub_216C0CC7C(void *a1)
{
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  sub_216685F4C(0, &qword_280E29BD8);
  OUTLINED_FUNCTION_61_14();
  if (v8)
  {
  }

  else
  {
    v4 = a1;
    OUTLINED_FUNCTION_45_24();
    sub_21700D4A4();
    v5 = OUTLINED_FUNCTION_41_27();
    v6(v5);
  }

  return v1;
}

uint64_t sub_216C0CD74()
{
  sub_21700CC74();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7();
  type metadata accessor for MusicPageMetricsProvider();
  OUTLINED_FUNCTION_61_14();
  if (v5)
  {
  }

  else
  {

    OUTLINED_FUNCTION_45_24();
    sub_21700D4A4();
    v2 = OUTLINED_FUNCTION_41_27();
    v3(v2);
  }

  return v0;
}

void sub_216C0CE60()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6258);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  type metadata accessor for MenuBuilder();
  v8 = sub_216C65C14();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_2166B2EC4(qword_280E45220, type metadata accessor for MenuBuilder);
  OUTLINED_FUNCTION_42_0();
  v10 = sub_217007D54();
  sub_216683A80(v1, v7, &qword_27CAC1610);
  v11 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6260) + 36)];
  *v11 = v10;
  v11[1] = v9;
  type metadata accessor for AddToPlaylistMenuBuilder();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  sub_2166B2EC4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);

  v13 = sub_217007D54();
  v14 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6268) + 36)];
  *v14 = v13;
  v14[1] = v12;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v15 = v22;
  sub_2166B2EC4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  OUTLINED_FUNCTION_42_0();
  v16 = sub_217007D54();
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6270) + 36)];
  *v17 = v16;
  v17[1] = v15;
  type metadata accessor for SocialGraphController();
  sub_21700E094();
  v18 = v22;
  sub_2166B2EC4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  OUTLINED_FUNCTION_42_0();
  v19 = sub_217007D54();
  v20 = &v7[*(v4 + 36)];
  *v20 = v19;
  v20[1] = v18;
  sub_216C1ED08();
  sub_21700A1E4();
  sub_216699778(v7, &qword_27CAC6258);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C0D15C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6178);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - v5;
  type metadata accessor for MenuBuilder();
  v7 = sub_216C65C14();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_2166B2EC4(qword_280E45220, type metadata accessor for MenuBuilder);
  v9 = sub_217007D54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6238);
  (*(*(v10 - 8) + 16))(v6, v2, v10);
  v11 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6190) + 36)];
  *v11 = v9;
  v11[1] = v8;
  type metadata accessor for AddToPlaylistMenuBuilder();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  sub_2166B2EC4(qword_280E36F00, type metadata accessor for AddToPlaylistMenuBuilder);

  v13 = sub_217007D54();
  v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6188) + 36)];
  *v14 = v13;
  v14[1] = v12;
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v15 = v23;
  sub_2166B2EC4(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator);
  v16 = sub_217007D54();
  v17 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6180) + 36)];
  *v17 = v16;
  v17[1] = v15;
  type metadata accessor for SocialGraphController();
  sub_21700E094();
  v18 = v23;
  sub_2166B2EC4(&qword_280E39AC8, type metadata accessor for SocialGraphController);
  v19 = sub_217007D54();
  v20 = &v6[*(v4 + 36)];
  *v20 = v19;
  v20[1] = v18;
  sub_216C1E4B4();
  sub_21700A1E4();
  return sub_216699778(v6, &qword_27CAC6178);
}

uint64_t sub_216C0D4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_217008E14();
  *a1 = result & 1;
  return result;
}

void sub_216C0D4DC()
{
  OUTLINED_FUNCTION_49();
  v420 = v0;
  v2 = v1;
  v392 = v3;
  v391 = sub_217008734();
  OUTLINED_FUNCTION_1();
  v390 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v389 = v7 - v6;
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8);
  OUTLINED_FUNCTION_1();
  v388 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v387 = v10;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v404 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F40);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_105();
  v386 = v15;
  OUTLINED_FUNCTION_16();
  v418 = v16;
  v414 = *(v17 + 64);
  MEMORY[0x28223BE20](v18);
  v410 = &v311 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48);
  v381 = v20;
  v22 = *(v2 + 3);
  v417 = *(v2 + 2);
  v21 = v417;
  v416 = v22;
  OUTLINED_FUNCTION_15_58();
  v380 = sub_21680DFBC(v23, v24);
  v413 = v2;
  v25 = *(v2 + 5);
  v419 = *(v2 + 4);
  v415 = v25;
  v447 = v20;
  v448 = v21;
  v449 = v22;
  v450 = v380;
  v451 = v419;
  v452 = v25;
  v26 = type metadata accessor for SearchBootstrapView();
  OUTLINED_FUNCTION_34_30();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_2167B2E14();
  v29 = MEMORY[0x277D837D0];
  v447 = v26;
  v448 = MEMORY[0x277D837D0];
  v30 = v26;
  v449 = WitnessTable;
  v450 = v28;
  v31 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50);
  v447 = v26;
  v448 = v29;
  v449 = WitnessTable;
  v450 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_55();
  v37 = sub_21680DFBC(v35, v36);
  v447 = OpaqueTypeMetadata2;
  v448 = v33;
  v449 = OpaqueTypeConformance2;
  v450 = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v447 = OpaqueTypeMetadata2;
  v448 = v33;
  v449 = OpaqueTypeConformance2;
  v450 = v37;
  v39 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v334 = v30;
  v335 = v38;
  v447 = v30;
  v448 = MEMORY[0x277CE1350];
  v449 = v38;
  v450 = OpaqueTypeMetadata2;
  v41 = v38;
  v42 = OpaqueTypeMetadata2;
  v338 = OpaqueTypeMetadata2;
  v341 = v40;
  v342 = WitnessTable;
  v451 = WitnessTable;
  v452 = MEMORY[0x277CE1340];
  v43 = MEMORY[0x277CE1340];
  v453 = v40;
  v454 = v39;
  v44 = v40;
  v340 = v39;
  v45 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v367 = v46;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_105();
  v353 = v48;
  v447 = v30;
  v448 = MEMORY[0x277CE1350];
  v449 = v41;
  v450 = v42;
  v451 = v31;
  v452 = v43;
  v453 = v44;
  v49 = v43;
  v454 = v39;
  v50 = OUTLINED_FUNCTION_14_60();
  v447 = v45;
  v448 = v50;
  v318 = v45;
  v51 = v50;
  v320 = v50;
  OUTLINED_FUNCTION_27_42();
  v343 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v362 = v52;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v339 = v54;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F58);
  OUTLINED_FUNCTION_72_0();
  v55 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v363 = v56;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_105();
  v333 = v58;
  v447 = v45;
  v448 = v51;
  v59 = OUTLINED_FUNCTION_14_60();
  v319 = v59;
  OUTLINED_FUNCTION_7_5();
  v406 = v60;
  v62 = sub_21680DFBC(v61, &qword_27CAC5F58);
  v445 = v59;
  v446 = v62;
  OUTLINED_FUNCTION_0_9();
  v405 = v63;
  v64 = swift_getWitnessTable();
  v447 = v55;
  v448 = v64;
  v65 = v55;
  v314 = v55;
  v315 = v64;
  v66 = v64;
  OUTLINED_FUNCTION_23_40();
  v67 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v364 = v68;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_105();
  v313 = v70;
  v447 = v65;
  v448 = v66;
  v71 = OUTLINED_FUNCTION_14_60();
  v447 = v67;
  v448 = MEMORY[0x277D839B0];
  v326 = v67;
  v72 = MEMORY[0x277D839B0];
  v449 = v71;
  v450 = MEMORY[0x277D839C8];
  v73 = v71;
  v327 = v71;
  v74 = MEMORY[0x277D839C8];
  OUTLINED_FUNCTION_22_44();
  v75 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v369 = v76;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_105();
  v394 = v78;
  v447 = v67;
  v448 = v72;
  v449 = v73;
  v450 = v74;
  v79 = OUTLINED_FUNCTION_14_60();
  v80 = sub_2169D46A0();
  v81 = v75;
  v330 = v75;
  v331 = v80;
  v82 = v395;
  v447 = v75;
  v448 = v395;
  v449 = v79;
  v450 = v80;
  v332 = v79;
  v83 = v80;
  v84 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v382 = v85;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_105();
  v396 = v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60);
  v447 = v81;
  v448 = v82;
  v449 = v79;
  v450 = v83;
  v89 = OUTLINED_FUNCTION_14_60();
  v90 = sub_216C1BF40();
  v354 = v84;
  v355 = v90;
  v447 = v84;
  v448 = v88;
  v356 = v89;
  v357 = v88;
  v449 = v89;
  v450 = v90;
  v91 = v89;
  v92 = v90;
  v93 = OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_16();
  v373 = v94;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_105();
  v351 = v96;
  v447 = v84;
  v448 = v88;
  v449 = v91;
  v450 = v92;
  v97 = OUTLINED_FUNCTION_14_60();
  v447 = v93;
  v448 = v97;
  v344 = v93;
  v345 = v97;
  v98 = v97;
  v99 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v379 = v100;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_105();
  v398 = v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68);
  v447 = v93;
  v448 = v98;
  v104 = swift_getOpaqueTypeConformance2();
  v105 = sub_216C1C018();
  v447 = v99;
  v448 = v103;
  v449 = v104;
  v450 = v105;
  v106 = swift_getOpaqueTypeMetadata2();
  v447 = MEMORY[0x277CE1350];
  v448 = v49;
  OUTLINED_FUNCTION_27_1();
  v107 = swift_getOpaqueTypeConformance2();
  v447 = v99;
  v448 = v103;
  v449 = v104;
  v450 = v105;
  v108 = OUTLINED_FUNCTION_51_12();
  v109 = v99;
  v322 = v99;
  v323 = v107;
  v110 = v393;
  v447 = v99;
  v448 = v393;
  v316 = v106;
  v317 = v108;
  v449 = v106;
  v450 = v104;
  v324 = v104;
  v451 = v107;
  v452 = v108;
  v111 = v108;
  v112 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v365 = v113;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v114);
  OUTLINED_FUNCTION_105();
  v321 = v115;
  v447 = v109;
  v448 = v110;
  v449 = v106;
  v450 = v104;
  v451 = v107;
  v452 = v111;
  v116 = OUTLINED_FUNCTION_51_12();
  v117 = v112;
  v328 = v112;
  v329 = v116;
  v447 = v112;
  v448 = v116;
  v118 = v116;
  v119 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v368 = v120;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_105();
  v325 = v122;
  v447 = v117;
  v448 = v118;
  v123 = OUTLINED_FUNCTION_51_12();
  v447 = v119;
  v448 = v123;
  v124 = v119;
  v336 = v119;
  v337 = v123;
  v125 = v123;
  v126 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v372 = v127;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_105();
  v397 = v129;
  v447 = v124;
  v448 = v125;
  v130 = OUTLINED_FUNCTION_51_12();
  v447 = v126;
  v131 = v126;
  v346 = v126;
  v132 = MEMORY[0x277D839B0];
  v448 = MEMORY[0x277D839B0];
  v449 = v130;
  v133 = v130;
  v347 = v130;
  v134 = MEMORY[0x277D839C8];
  v450 = MEMORY[0x277D839C8];
  v135 = OUTLINED_FUNCTION_80_13();
  OUTLINED_FUNCTION_16();
  v377 = v136;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_105();
  v399 = v138;
  v447 = v131;
  v448 = v132;
  v449 = v133;
  v450 = v134;
  v139 = OUTLINED_FUNCTION_14_60();
  v447 = v135;
  v448 = v139;
  v350 = v135;
  v140 = v139;
  v352 = v139;
  v141 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v378 = v142;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_105();
  v400 = v144;
  v447 = v135;
  v448 = v140;
  v145 = OUTLINED_FUNCTION_14_60();
  v447 = v141;
  v448 = v145;
  v146 = v141;
  v348 = v141;
  v349 = v145;
  v147 = v145;
  OUTLINED_FUNCTION_32_27();
  v148 = swift_getOpaqueTypeMetadata2();
  v401 = v148;
  OUTLINED_FUNCTION_16();
  v374 = v149;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_105();
  v358 = v151;
  v152 = type metadata accessor for FacetBarState(255);
  v361 = v152;
  v447 = v146;
  v448 = v147;
  v153 = OUTLINED_FUNCTION_14_60();
  v360 = v153;
  OUTLINED_FUNCTION_29_38();
  v359 = sub_2166B2EC4(v154, v155);
  v447 = v148;
  v448 = v152;
  v449 = v153;
  v450 = v359;
  v371 = MEMORY[0x277CE0C50];
  v366 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_16();
  v376 = v156;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_105();
  v402 = v158;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FA8);
  OUTLINED_FUNCTION_72_0();
  v375 = sub_2170089F4();
  OUTLINED_FUNCTION_16();
  v383 = v159;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_105();
  v403 = v161;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5FB0);
  OUTLINED_FUNCTION_72_0();
  v384 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v385 = v162;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_105();
  v370 = v164;
  v312 = *v420;
  v165 = v418;
  v409 = *(v418 + 16);
  v412 = v418 + 16;
  v166 = v410;
  v167 = v413;
  v409(v410);
  v168 = v165;
  v408 = *(v165 + 80);
  v169 = (v408 + 48) & ~v408;
  v411 = v169;
  v170 = swift_allocObject();
  v171 = v417;
  v172 = v416;
  v170[2] = v417;
  v170[3] = v172;
  v173 = v419;
  v174 = v415;
  v170[4] = v419;
  v170[5] = v174;
  v175 = *(v168 + 32);
  v418 = v168 + 32;
  v407 = v175;
  v175(v170 + v169, v166, v167);
  v447 = nullsub_1(v312, sub_216C1C410, v170);
  v448 = v176;
  v449 = v177;

  sub_21700B314();
  v431 = v171;
  v432 = v172;
  v433 = v173;
  v434 = v174;
  v178 = v420;
  v435 = v420;
  v426 = v171;
  v427 = v172;
  v428 = v173;
  v429 = v174;
  v430 = v420;
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  sub_21700AB34();

  v179 = v339;
  v180 = v318;
  MEMORY[0x21CE9B5E0](1, v318, v320);
  v181 = OUTLINED_FUNCTION_77_11();
  v182(v181, v180);
  v183 = sub_21700E4D4();
  v184 = v333;
  v185 = v343;
  sub_21700A5E4();

  (*(v362 + 8))(v179, v185);
  v186 = v386;
  sub_217009A44();
  v187 = sub_217009A64();
  __swift_storeEnumTagSinglePayload(v186, 0, 1, v187);
  v189 = v313;
  v188 = v314;
  OUTLINED_FUNCTION_22_4();
  sub_21700A8E4();
  sub_216699778(v186, &qword_27CAC5F40);
  (*(v363 + 8))(v184, v188);
  v190 = v413;
  v191 = v178 + v413[16];
  v192 = *v191;
  v193 = *(v191 + 1);
  LOBYTE(v447) = v192;
  v448 = v193;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  OUTLINED_FUNCTION_73_10();
  sub_21700AEB4();
  LOBYTE(v447) = v443;
  v194 = v410;
  v195 = OUTLINED_FUNCTION_82();
  v196 = v190;
  v197 = v409;
  v409(v195);
  v198 = v411;
  v199 = swift_allocObject();
  v200 = OUTLINED_FUNCTION_75_13(v199);
  v201 = OUTLINED_FUNCTION_55_18(v200);
  v202 = v196;
  v407(v201 + v198, v194, v196);
  v203 = v326;
  sub_21700AB14();

  (*(v364 + 8))(v189, v203);
  v204 = v404;
  sub_216C0C76C();
  v205 = v410;
  v206 = OUTLINED_FUNCTION_109();
  v197(v206);
  v207 = v411;
  v208 = swift_allocObject();
  v209 = OUTLINED_FUNCTION_75_13(v208);
  v210 = v419;
  v211 = v415;
  *(v209 + 32) = v419;
  *(v209 + 40) = v211;
  v212 = v202;
  v213 = v407;
  v407(v209 + v207, v205, v212);
  sub_21700AB04();

  sub_216699778(v204, &qword_27CAB8600);
  v214 = OUTLINED_FUNCTION_12_65();
  v215(v214);
  v216 = v413;
  v217 = v420;
  v218 = (v420 + v413[19]);
  v220 = *v218;
  v219 = v218[1];
  v447 = v220;
  v448 = v219;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
  OUTLINED_FUNCTION_73_10();
  sub_21700AEB4();
  v221 = sub_216F0FE50();

  v447 = v221;
  (v409)(v205, v217, v216);
  v222 = v411;
  v223 = swift_allocObject();
  v224 = v417;
  v225 = v416;
  *(v223 + 2) = v417;
  *(v223 + 3) = v225;
  *(v223 + 4) = v210;
  *(v223 + 5) = v211;
  v213(&v223[v222], v205, v216);
  sub_21700AB04();

  v226 = OUTLINED_FUNCTION_12_65();
  v227(v226);
  v228 = v420;
  sub_216C136B0(v216);
  LOBYTE(v216) = v229;
  v231 = v230;
  v232 = v344;
  sub_21700A4B4();
  v233 = OUTLINED_FUNCTION_22_4();
  sub_2167C4DF0(v233, v234, v216, v231);
  v235 = OUTLINED_FUNCTION_77_11();
  v236(v235, v232);
  sub_21700B314();
  sub_2170092A4();
  v421 = v224;
  v237 = v416;
  v422 = v416;
  v423 = v419;
  v424 = v415;
  v425 = v228;
  swift_checkMetadataState();
  v238 = v321;
  sub_21700AB44();
  v239 = OUTLINED_FUNCTION_109();
  v240(v239);
  v241 = OUTLINED_FUNCTION_12_65();
  v242(v241);
  v243 = v413;
  v244 = v228 + v413[15];
  v245 = v228;
  LODWORD(v398) = *v244;
  v396 = *(v244 + 1);
  LODWORD(v395) = v244[16];
  LOBYTE(v447) = v398;
  v448 = v396;
  LOBYTE(v449) = v395;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  OUTLINED_FUNCTION_73_10();
  sub_217007F64();
  v246 = v328;
  sub_21700A524();

  (*(v365 + 8))(v238, v246);
  v247 = v389;
  sub_217008724();
  v248 = v410;
  (v409)(v410, v245, v243);
  v249 = v411;
  v250 = swift_allocObject();
  *(v250 + 16) = v417;
  *(v250 + 24) = v237;
  v251 = OUTLINED_FUNCTION_55_18(v250);
  v252 = v243;
  v407(v251 + v249, v248, v243);
  v253 = v336;
  sub_21700AB24();

  (*(v390 + 8))(v247, v391);
  v254 = OUTLINED_FUNCTION_77_11();
  v255(v254, v253);
  LOBYTE(v447) = v398;
  v448 = v396;
  LOBYTE(v449) = v395;
  OUTLINED_FUNCTION_73_10();
  sub_217007F44();
  LOBYTE(v447) = v443;
  v256 = v420;
  v257 = v252;
  v258 = v409;
  (v409)(v248, v420, v252);
  v259 = v411;
  v260 = swift_allocObject();
  v261 = v416;
  *(v260 + 16) = v417;
  *(v260 + 24) = v261;
  v262 = OUTLINED_FUNCTION_55_18(v260);
  v407(v262 + v259, v248, v257);
  sub_21700AB04();

  v263 = OUTLINED_FUNCTION_12_65();
  v264(v263);
  v265 = v410;
  v266 = v413;
  (v258)(v410, v256, v413);
  v267 = v411;
  v268 = swift_allocObject();
  v269 = v417;
  v268[2] = v417;
  v268[3] = v261;
  v270 = v415;
  v268[4] = v419;
  v268[5] = v270;
  v271 = v407;
  v407(v268 + v267, v265, v266);
  sub_21700A754();

  v272 = OUTLINED_FUNCTION_12_65();
  v273(v272);
  v274 = v413;
  (v409)(v265, v420, v413);
  v275 = swift_allocObject();
  v276 = v416;
  *(v275 + 2) = v269;
  *(v275 + 3) = v276;
  *(v275 + 4) = v419;
  *(v275 + 5) = v270;
  v271(&v275[v267], v265, v274);
  v277 = v348;
  sub_21700A684();

  v278 = OUTLINED_FUNCTION_38_33();
  v279(v278, v277);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  sub_21700B474();
  v281 = v360;
  v280 = v361;
  v282 = v359;
  sub_21700A3C4();

  v283 = OUTLINED_FUNCTION_109();
  v284(v283);
  type metadata accessor for SearchPagePresenter();
  OUTLINED_FUNCTION_30_39();
  sub_2166B2EC4(v285, v286);
  sub_2170081B4();
  v447 = v401;
  v448 = v280;
  v449 = v281;
  v450 = v282;
  v287 = swift_getOpaqueTypeConformance2();
  v288 = v366;
  sub_21700A654();

  v289 = OUTLINED_FUNCTION_38_33();
  v290(v289, v288);
  sub_217006A14();
  sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
  sub_2170081B4();
  v291 = sub_21680DFBC(&qword_280E2A7D0, &qword_27CAC5FA8);
  v442[4] = v287;
  v442[5] = v291;
  v292 = v375;
  v293 = swift_getWitnessTable();
  v294 = v370;
  sub_21700A654();

  v295 = OUTLINED_FUNCTION_38_33();
  v296(v295, v292);
  v297 = sub_2170098A4();
  v298 = v404;
  __swift_storeEnumTagSinglePayload(v404, 1, 1, v297);
  v299 = sub_21680DFBC(&qword_280E2A750, &qword_27CAC5FB0);
  v442[2] = v293;
  v442[3] = v299;
  v300 = v384;
  v301 = swift_getWitnessTable();
  v302 = OUTLINED_FUNCTION_22_4();
  sub_216926A80(v302, v303, v301, v304);
  sub_216699778(v298, &qword_27CAB8600);
  (*(v385 + 8))(v294, v300);
  v442[0] = v443;
  v442[1] = v444;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC88);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABCC90);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB93F0);
  OUTLINED_FUNCTION_19_0();
  sub_2170089F4();
  v305 = sub_21680DFBC(&qword_280E2A760, &qword_27CABCC88);
  v440 = v301;
  v441 = v305;
  v306 = swift_getWitnessTable();
  v307 = sub_21680DFBC(&qword_280E2A740, &qword_27CABCC90);
  v438 = v306;
  v439 = v307;
  v308 = swift_getWitnessTable();
  v309 = sub_21680DFBC(&qword_280E2A758, &qword_27CAB93F0);
  v436 = v308;
  v437 = v309;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_72_0();
  v310 = sub_2170085A4();
  OUTLINED_FUNCTION_21_5();
  swift_getWitnessTable();
  sub_2166C24DC(v442, v310);

  v443 = v447;
  v444 = v448;
  sub_2166C24DC(&v443, v310);

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C0F3E8@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v150 = a7;
  v151 = a8;
  v11 = a7;
  v148 = a6;
  v138 = a4;
  v132 = a3;
  v131 = a2;
  v137 = a1;
  v140 = a9;
  v149 = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v146 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v139 = v123 - v18;
  MEMORY[0x28223BE20](v19);
  v141 = v123 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = v123 - v22;
  v130 = type metadata accessor for ObjectGraph();
  sub_21700D5F4();
  v153 = a6;
  v154 = v11;
  v155 = a8;
  v156 = a10;
  v24 = type metadata accessor for SearchPageView();
  v129 = type metadata accessor for SearchPagePresenter();
  v128 = sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  v25 = sub_2170081B4();
  v124 = v24;
  v26 = (a5 + *(v24 + 60));
  LODWORD(v143) = *v26;
  v142 = *(v26 + 1);
  LODWORD(v145) = v26[16];
  LOBYTE(v153) = v143;
  v154 = v142;
  LOBYTE(v155) = v145;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F64();
  v27 = v158;
  v28 = v159;
  LOBYTE(v11) = v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  v152 = a5;
  sub_21700B474();
  v29 = v153;
  v153 = v25;
  v154 = v27;
  v155 = v28;
  LOBYTE(v156) = v11;
  v157 = v29;
  v136 = *(v15 + 16);
  (v136)(v141, v23, v14);
  sub_216B8B820();
  sub_21700D5A4();
  v30 = *(v15 + 8);
  v147 = v15 + 8;
  (v30)(v23, v14);

  v31 = v124;
  v127 = sub_217006A14();
  v126 = sub_2166B2EC4(&unk_280E4A430, MEMORY[0x277D2A6E8]);
  v32 = sub_2170081B4();
  v33 = v139;
  v34 = v141;
  sub_2167B3B10(v32, v139);

  (v30)(v34, v14);
  LOBYTE(v153) = v143;
  v154 = v142;
  LOBYTE(v155) = v145;
  sub_217007F64();
  v153 = v158;
  v154 = v159;
  LOBYTE(v155) = v160;
  v35 = v146;
  (v136)(v146, v33, v14);
  sub_216C1CCB0();
  sub_21700D5A4();
  v141 = v14;
  v139 = v30;
  (v30)(v33, v14);

  sub_216E9C508(v35);
  v36 = v152;
  type metadata accessor for MusicPageMetricsProvider();
  sub_2166B2EC4(qword_280E46A08, type metadata accessor for MusicPageMetricsProvider);
  sub_2170081B4();
  v37 = sub_216C0CD74();

  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6028);
  MEMORY[0x28223BE20](v136);
  v137 = v123 - v38;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6030);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = v123 - v39;
  v40 = type metadata accessor for SearchPageContentView();
  v41 = (v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v153) = v143;
  v154 = v142;
  LOBYTE(v155) = v145;
  sub_217007F64();
  v144 = v159;
  v145 = v158;
  LODWORD(v143) = v160;
  LODWORD(v142) = sub_216C1052C();
  LODWORD(v125) = sub_216C106A4(v31);
  v44 = (v36 + *(v31 + 76));
  v46 = *v44;
  v45 = v44[1];
  v153 = v46;
  v154 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
  sub_21700AEB4();
  v47 = sub_216F0FE50();

  *(v43 + 1) = sub_217008CF4();
  *(v43 + 2) = v48;
  type metadata accessor for MusicStackAuthority();
  sub_2166B2EC4(&qword_280E46D08, type metadata accessor for MusicStackAuthority);
  *(v43 + 3) = sub_217008CF4();
  *(v43 + 4) = v49;
  *(v43 + 5) = sub_217008CF4();
  *(v43 + 6) = v50;
  *(v43 + 7) = swift_getKeyPath();
  v43[64] = 0;
  type metadata accessor for FacetBarState(0);
  sub_2166B2EC4(qword_280E44190, type metadata accessor for FacetBarState);
  *(v43 + 9) = sub_217008104();
  v43[80] = v51 & 1;
  v52 = v41[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC54D0);
  sub_217007FF4();
  v53 = &v43[v41[19]];
  LOBYTE(v158) = 0;
  sub_21700AEA4();
  v54 = v154;
  *v53 = v153;
  *(v53 + 1) = v54;
  type metadata accessor for AppDestinationPageProviderBox();
  sub_21700E094();
  *&v43[v41[13]] = v153;
  *v43 = v37;
  v55 = &v43[v41[14]];
  v56 = v131;
  v57 = v132;
  *v55 = v131;
  *(v55 + 1) = v57;
  *(v55 + 2) = v138;
  v58 = &v43[v41[15]];
  v59 = v144;
  *v58 = v145;
  *(v58 + 1) = v59;
  v58[16] = v143;
  v43[v41[17]] = v125 & 1;
  v43[v41[16]] = v142 & 1;
  *&v43[v41[18]] = v47;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30);
  MEMORY[0x28223BE20](v60 - 8);
  v62 = v123 - v61;
  sub_2169D4E84(v56);
  sub_217007FF4();
  v63 = sub_216C1CD04(v62, &v43[v52]);
  v64 = *(v31 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x28223BE20](v63);
  v68 = v123 - v67;
  v143 = *(v64 + 16);
  v144 = v64 + 16;
  v143(v123 - v67, v152, v31, v66);
  sub_21700EA34();

  v69 = sub_21700EA24();
  v70 = *(v64 + 80);
  v130 = ~v70;
  v71 = (v70 + 64) & ~v70;
  v132 = v65;
  v129 = v65 + 7;
  v72 = (v65 + 7 + v71) & 0xFFFFFFFFFFFFFFF8;
  v131 = v70;
  v73 = swift_allocObject();
  v74 = MEMORY[0x277D85700];
  *(v73 + 2) = v69;
  *(v73 + 3) = v74;
  v75 = v150;
  v76 = v151;
  *(v73 + 4) = v148;
  *(v73 + 5) = v75;
  v77 = v149;
  *(v73 + 6) = v76;
  *(v73 + 7) = v77;
  v78 = *(v64 + 32);
  v79 = v68;
  v80 = v31;
  v145 = v64 + 32;
  v78(&v73[v71], v79, v31);
  v138 = v37;
  *&v73[v72] = v37;
  v81 = sub_21700EA74();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF0;
  v85 = v123 - v84;
  sub_21700EA44();
  isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 4, 0);
  v142 = v78;
  if (isPlatformVersionAtLeast)
  {
    v127 = sub_2170087B4();
    v128 = v123;
    v126 = *(v127 - 8);
    MEMORY[0x28223BE20](v127);
    v125 = v123 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    v153 = 0;
    v154 = 0xE000000000000000;
    sub_21700F3B4();

    v153 = 0xD000000000000029;
    v154 = 0x800000021708AD90;
    v158 = 54;
    v88 = sub_21700F784();
    MEMORY[0x21CE9F490](v88);

    v123[1] = v123;
    v90 = MEMORY[0x28223BE20](v89);
    (*(v82 + 16))(v123 - v84, v123 - v84, v81, v90);
    v91 = v125;
    sub_2170087A4();
    (*(v82 + 8))(v85, v81);
    v92 = v133;
    sub_216C1E9E8(v43, v133, type metadata accessor for SearchPageContentView);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F0);
    (*(v126 + 32))(v92 + *(v93 + 36), v91, v127);
  }

  else
  {
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB62F8);
    v92 = v133;
    v95 = (v133 + *(v94 + 36));
    v96 = sub_217008554();
    (*(v82 + 32))(&v95[*(v96 + 20)], v123 - v84, v81);
    *v95 = &unk_217054340;
    *(v95 + 1) = v73;
    sub_216C1E9E8(v43, v92, type metadata accessor for SearchPageContentView);
  }

  v97 = sub_216C1EA44(v43, type metadata accessor for SearchPageContentView);
  v98 = v132;
  v99 = MEMORY[0x28223BE20](v97);
  v128 = ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = (v123 - v128);
  v143((v123 - v128), v152, v80, v99);
  v101 = (v131 + 48) & v130;
  v102 = (v129 + v101) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  v104 = v150;
  v105 = v151;
  *(v103 + 2) = v148;
  *(v103 + 3) = v104;
  v106 = v149;
  *(v103 + 4) = v105;
  *(v103 + 5) = v106;
  v133 = v101;
  v142(v103 + v101, v100, v80);
  v107 = v138;
  *(v103 + v102) = v138;
  v108 = v137;
  (*(v134 + 32))(v137, v92, v135);
  v109 = (v108 + *(v136 + 36));
  *v109 = sub_216C1CFAC;
  v109[1] = v103;
  v109[2] = 0;
  v109[3] = 0;
  v110 = objc_opt_self();

  v111 = [v110 defaultCenter];
  if (qword_280E29C70 != -1)
  {
    swift_once();
  }

  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F48);
  v113 = v140;
  sub_21700EFC4();

  v114 = (v139)(v146, v141);
  v115 = MEMORY[0x28223BE20](v114);
  v116 = (v123 - v128);
  v143((v123 - v128), v152, v80, v115);
  v117 = swift_allocObject();
  v118 = v150;
  v119 = v151;
  *(v117 + 2) = v148;
  *(v117 + 3) = v118;
  v120 = v149;
  *(v117 + 4) = v119;
  *(v117 + 5) = v120;
  v142(v117 + v133, v116, v80);
  *(v117 + v102) = v107;
  result = sub_2167C5834(v108, v113, &qword_27CAC6028);
  v122 = (v113 + *(v112 + 56));
  *v122 = sub_216C1D1D0;
  v122[1] = v117;
  return result;
}

uint64_t sub_216C1052C()
{
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F44();
  if (!v5)
  {
    sub_216C1C864(v4);
LABEL_7:
    v1 = 0;
    return v1 & 1;
  }

  if (v5 != 1)
  {
    goto LABEL_7;
  }

  sub_216C1C864(v4);
  if (v3 & 1) != 0 || (sub_216C15C24())
  {
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  sub_21700B474();
  v0 = sub_216C03D14();

  v1 = v0 ^ 1;
  return v1 & 1;
}

uint64_t sub_216C106A4(uint64_t a1)
{
  v3 = sub_2170098A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v10 - 8);
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v33 = a1;
  v34 = v1;
  v18 = v4;
  sub_216C0C76C();
  (*(v4 + 104))(v14, *MEMORY[0x277CE0558], v3);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_216683A80(v17, v9, &qword_27CAB8600);
  sub_216683A80(v14, &v9[v19], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    v20 = v35;
    sub_216683A80(v9, v35, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
    {
      v22 = v32;
      (*(v18 + 32))(v32, &v9[v19], v3);
      sub_2166B2EC4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v23 = sub_21700E494();
      v24 = *(v18 + 8);
      v24(v22, v3);
      sub_216699778(v14, &qword_27CAB8600);
      sub_216699778(v17, &qword_27CAB8600);
      v24(v20, v3);
      sub_216699778(v9, &qword_27CAB8600);
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_216699778(v14, &qword_27CAB8600);
    sub_216699778(v17, &qword_27CAB8600);
    (*(v18 + 8))(v20, v3);
LABEL_6:
    sub_216699778(v9, &qword_27CAB8708);
    goto LABEL_7;
  }

  sub_216699778(v14, &qword_27CAB8600);
  sub_216699778(v17, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_216699778(v9, &qword_27CAB8600);
LABEL_9:
  v26 = v33;
  v25 = v34;
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v40);

  if (!v41)
  {

    goto LABEL_13;
  }

  if (v41 == 1)
  {

LABEL_13:

    goto LABEL_15;
  }

  if (v40[2] | v40[1] | v40[0] | v40[3])
  {
LABEL_15:
    sub_2170081B4();
    sub_216C99870(v42);

    v27 = (v25 + *(v26 + 60));
    v28 = *v27;
    v29 = *(v27 + 1);
    LOBYTE(v27) = v27[16];
    v37 = v28;
    v38 = v29;
    v39 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
    sub_217007F44();
    if (v43)
    {
      if (v43 == 1)
      {
        v30 = v36;
        sub_216C1C864(v42);
        if ((v30 & 1) == 0)
        {
          v21 = sub_216C15C24();
          return v21 & 1;
        }
      }
    }

    else
    {
      sub_216C1C864(v42);
    }

    v21 = 1;
    return v21 & 1;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_216C10C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  sub_21700EA34();
  v8[13] = sub_21700EA24();
  v10 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_216C10CF8, v10, v9);
}

uint64_t sub_216C10CF8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v17 = *(v0 + 80);

  *(v0 + 16) = v3;
  *(v0 + 24) = v17;
  *(v0 + 40) = v1;
  v5 = type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  OUTLINED_FUNCTION_30_39();
  sub_2166B2EC4(v6, v7);
  v8 = sub_2170081B4();
  v9 = (v4 + *(v5 + 60));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 32) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F44();
  *(v8 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph) = v2;

  v12 = (v4 + *(v5 + 76));
  v14 = *v12;
  v13 = v12[1];
  *(v0 + 16) = v14;
  *(v0 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
  sub_21700AEB4();
  sub_216F0FEE4(v2);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_216C10F00(uint64_t a1, uint64_t a2)
{
  v3 = sub_21700B5A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21700B5E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v64 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v61 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = v11;
  v60 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_21700B604();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v52 - v14;
  type metadata accessor for DeepLinkInfoProvider();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  v15 = aBlock;
  v16 = *(aBlock + 24);
  if (v16 != 1)
  {
    v52 = v8;
    v53 = v6;
    v54 = v7;
    v55 = v4;
    v56 = v3;
    v17 = *(aBlock + 16);
    v18 = *(aBlock + 32);
    v19 = *(aBlock + 32);
    v21 = v66;
    v20 = v67;
    v22 = (v66 + *(v67 + 64));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(aBlock) = v23;
    v70 = v24;
    LODWORD(v57) = v18;
    v25 = (v18 >> 8) & 1;
    LOBYTE(v68) = BYTE1(v18) & 1;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
    sub_21700AEC4();
    if (v19 != 2)
    {
      v26 = (v21 + *(v20 + 76));
      v28 = *v26;
      v27 = v26[1];
      aBlock = v28;
      v70 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
      sub_21700AEB4();
      v29 = sub_216F0FE50();

      v30 = v57 & 1;
      v31 = sub_216C0CA0C(v57 & 1, v29);

      if (v31)
      {
        type metadata accessor for SearchPagePresenter();
        sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
        sub_2170081B4();
        LOBYTE(aBlock) = v30;
        sub_216C995C4();
      }
    }

    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    if (v16)
    {
      sub_21700DF14();
      sub_2170081B4();
      sub_216C98C74(v17, v16);

      sub_2170081B4();
      sub_216C998F4(v17, v16);
      sub_2167EF724(v17, v16);

      sub_2170081B4();
      sub_216C98D10();
      sub_2167EF724(v17, v16);

      sub_216685F4C(0, &qword_280E29CD0);
      v57 = sub_21700EE84();
      v32 = v58;
      sub_21700B5F4();
      v33 = v62;
      sub_21700B634();
      v63 = *(v63 + 8);
      (v63)(v32, v65);
      v35 = v60;
      v34 = v61;
      v36 = v67;
      (*(v61 + 16))(v60, v66, v67);
      v37 = (*(v34 + 80) + 48) & ~*(v34 + 80);
      v38 = swift_allocObject();
      v39 = *(v36 + 32);
      *(v38 + 16) = *(v36 + 16);
      *(v38 + 32) = v39;
      (*(v34 + 32))(v38 + v37, v35, v36);
      v73 = sub_216C1D298;
      v74 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_2169F0990;
      v72 = &block_descriptor_31;
      v40 = _Block_copy(&aBlock);

      v41 = v64;
      sub_21700B5C4();
      aBlock = MEMORY[0x277D84F90];
      sub_2166B2EC4(&qword_280E2A480, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970);
      sub_21680DFBC(&qword_280E29E50, &unk_27CABC970);
      v42 = v53;
      v43 = v56;
      sub_21700F214();
      v44 = v57;
      MEMORY[0x21CE9FC70](v33, v41, v42, v40);
      _Block_release(v40);

      (*(v55 + 8))(v42, v43);
      (*(v52 + 8))(v41, v54);
      (v63)(v33, v65);
    }

    else
    {
      sub_2170081B4();
      sub_216C98C74(0, 0xE000000000000000);

      v45 = v66 + *(v67 + 60);
      v47 = *(v45 + 8);
      v48 = *(v45 + 16);
      LOBYTE(aBlock) = *v45;
      v46 = aBlock;
      v70 = v47;
      LOBYTE(v71) = v48;
      LOBYTE(v68) = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
      sub_217007F54();
      LOBYTE(aBlock) = v46;
      v70 = v47;
      LOBYTE(v71) = v48;
      LOBYTE(v68) = v25;
      sub_217007F54();
    }

    v49 = *(v15 + 16);
    v50 = *(v15 + 24);
    *(v15 + 16) = xmmword_217016ED0;
    *(v15 + 32) = 0;
    sub_2167EF724(v49, v50);
  }
}

uint64_t sub_216C117D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v117 = a2;
  v112 = a7;
  v125 = a3;
  v126 = a4;
  v127 = a5;
  v128 = a6;
  v116 = type metadata accessor for SearchPageView();
  v107 = *(v116 - 8);
  v105 = *(v107 + 64);
  MEMORY[0x28223BE20](v116);
  v106 = &v79 - v12;
  v94 = sub_2170098A4();
  v90 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v79 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708) - 8;
  MEMORY[0x28223BE20](v95);
  v89 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = &v79 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v79 - v20;
  v93 = sub_2170095F4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v114 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48);
  v23 = sub_21680DFBC(&qword_280E2AD28, &qword_27CAC5F48);
  v125 = v22;
  v126 = a3;
  v108 = a3;
  v109 = a4;
  v127 = a4;
  v128 = v23;
  v110 = a5;
  v129 = a5;
  v130 = a6;
  v111 = a6;
  v24 = type metadata accessor for SearchBootstrapView();
  WitnessTable = swift_getWitnessTable();
  v26 = sub_2167B2E14();
  v125 = v24;
  v126 = MEMORY[0x277D837D0];
  v86 = v24;
  v27 = MEMORY[0x277D837D0];
  v127 = WitnessTable;
  v128 = v26;
  v88 = WitnessTable;
  v87 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v103 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v115 = &v79 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50);
  v125 = v24;
  v126 = v27;
  v127 = WitnessTable;
  v128 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21680DFBC(qword_280E2E528, &qword_27CAC5F50);
  v104 = OpaqueTypeMetadata2;
  v125 = OpaqueTypeMetadata2;
  v126 = v30;
  v102 = v30;
  v99 = OpaqueTypeConformance2;
  v127 = OpaqueTypeConformance2;
  v128 = v32;
  v98 = v32;
  v101 = swift_getOpaqueTypeMetadata2();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v97 = &v79 - v35;
  v36 = *(a1 + 2);
  v123 = *a1;
  v124 = v36;
  v37 = v116;
  v38 = v117;
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v84 = v125;
  v83 = v126;
  v85 = v127;
  v82 = v128;
  v39 = (v38 + *(v37 + 64));
  v40 = *v39;
  v41 = *(v39 + 1);
  v121 = v40;
  v122 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v81 = v120;
  sub_216C1250C(v114);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  v42 = v113;

  if (v121)
  {
    v43 = 286;
  }

  else
  {
    v43 = 283;
  }

  v118 = sub_216983738(v43);
  v119 = v44;
  swift_checkMetadataState();
  v45 = v114;
  v46 = v91;
  sub_21700A324();

  v47 = v94;

  (*(v92 + 8))(v45, v93);
  sub_216C0C76C();
  v48 = v90;
  (*(v90 + 104))(v42, *MEMORY[0x277CE0558], v47);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v47);
  v49 = *(v95 + 56);
  v50 = v46;
  v51 = v46;
  v52 = v89;
  sub_216683A80(v51, v89, &qword_27CAB8600);
  sub_216683A80(v42, v52 + v49, &qword_27CAB8600);
  v53 = v52;
  if (__swift_getEnumTagSinglePayload(v52, 1, v47) != 1)
  {
    v55 = v80;
    sub_216683A80(v52, v80, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(v52 + v49, 1, v47) != 1)
    {
      v56 = v52 + v49;
      v57 = v79;
      (*(v48 + 32))(v79, v56, v47);
      sub_2166B2EC4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v54 = sub_21700E494();
      v58 = v50;
      v59 = v55;
      v60 = *(v48 + 8);
      v60(v57, v47);
      sub_216699778(v113, &qword_27CAB8600);
      sub_216699778(v58, &qword_27CAB8600);
      v60(v59, v47);
      sub_216699778(v53, &qword_27CAB8600);
      goto LABEL_11;
    }

    sub_216699778(v113, &qword_27CAB8600);
    sub_216699778(v50, &qword_27CAB8600);
    (*(v48 + 8))(v55, v47);
    goto LABEL_9;
  }

  sub_216699778(v42, &qword_27CAB8600);
  sub_216699778(v50, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v52 + v49, 1, v47) != 1)
  {
LABEL_9:
    sub_216699778(v52, &qword_27CAB8708);
    v54 = 0;
    goto LABEL_11;
  }

  sub_216699778(v52, &qword_27CAB8600);
  v54 = 1;
LABEL_11:
  v61 = v107;
  v62 = v106;
  v63 = v116;
  (*(v107 + 16))(v106, v117, v116);
  v64 = (*(v61 + 80) + 48) & ~*(v61 + 80);
  v65 = swift_allocObject();
  v66 = v109;
  *(v65 + 2) = v108;
  *(v65 + 3) = v66;
  v67 = v111;
  *(v65 + 4) = v110;
  *(v65 + 5) = v67;
  (*(v61 + 32))(&v65[v64], v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6020);
  v68 = swift_allocObject();
  v68[3] = v65;
  v68[4] = 0;
  v68[2] = sub_216C1CC14;
  LOBYTE(v125) = v54 & 1;
  v126 = v68;
  v69 = v96;
  v70 = v104;
  v71 = v102;
  v72 = v99;
  v73 = v98;
  v74 = v115;
  sub_21700A7E4();

  (*(v103 + 8))(v74, v70);
  v125 = v70;
  v126 = v71;
  v127 = v72;
  v128 = v73;
  swift_getOpaqueTypeConformance2();
  v75 = v97;
  v76 = v101;
  sub_2166C24DC(v69, v101);
  v77 = *(v100 + 8);
  v77(v69, v76);
  sub_2166C24DC(v75, v76);
  return (v77)(v75, v76);
}

uint64_t sub_216C1250C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_2170095E4();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2170098A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  sub_216C0C76C();
  (*(v4 + 104))(v15, *MEMORY[0x277CE0558], v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_216683A80(v18, v9, &qword_27CAB8600);
  sub_216683A80(v15, &v9[v19], &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
  {
    sub_216683A80(v9, v12, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
    {
      v21 = &v9[v19];
      v22 = v26;
      (*(v4 + 32))(v26, v21, v3);
      sub_2166B2EC4(&qword_280E2A858, MEMORY[0x277CE0570]);
      v23 = sub_21700E494();
      v24 = *(v4 + 8);
      v24(v22, v3);
      sub_216699778(v15, &qword_27CAB8600);
      sub_216699778(v18, &qword_27CAB8600);
      v24(v12, v3);
      sub_216699778(v9, &qword_27CAB8600);
      if (v23)
      {
        goto LABEL_9;
      }

      return sub_2170095B4();
    }

    sub_216699778(v15, &qword_27CAB8600);
    sub_216699778(v18, &qword_27CAB8600);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_216699778(v9, &qword_27CAB8708);
    return sub_2170095B4();
  }

  sub_216699778(v15, &qword_27CAB8600);
  sub_216699778(v18, &qword_27CAB8600);
  if (__swift_getEnumTagSinglePayload(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_216699778(v9, &qword_27CAB8600);
LABEL_9:
  v25 = v27;
  sub_2170095D4();
  sub_2170095C4();
  return (*(v28 + 8))(v25, v29);
}

void *sub_216C129F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  __src[2] = a3;
  __src[3] = a4;
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v13 = __src[1];
  v12 = __src[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
  sub_21700AEB4();
  v6 = sub_216F0FE50();

  sub_2170081B4();
  v7 = sub_216C99690();

  v8 = sub_2170081B4();
  sub_21700B3B4();
  sub_217008BB4();
  v9 = sub_2170081B4();
  v10 = sub_217007D54();
  *a5 = __src[0];
  *(a5 + 8) = v13;
  *(a5 + 16) = v12;
  *(a5 + 24) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = v8;
  result = memcpy((a5 + 48), __src, 0x70uLL);
  *(a5 + 160) = v10;
  *(a5 + 168) = v9;
  return result;
}

uint64_t sub_216C12C3C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a7;
  v49 = sub_2170095E4();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2170095F4();
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v57 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48);
  v18 = sub_21680DFBC(&qword_280E2AD28, &qword_27CAC5F48);
  v66 = v17;
  v67 = a3;
  v68 = a4;
  v69 = v18;
  v70 = a5;
  v71 = a6;
  v19 = type metadata accessor for SearchBootstrapView();
  v46 = v19;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  v58 = sub_2167B2E14();
  v66 = v19;
  v67 = MEMORY[0x277D837D0];
  v68 = WitnessTable;
  v69 = v58;
  v51 = MEMORY[0x277CDE620];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = *(OpaqueTypeMetadata2 - 8);
  v52 = OpaqueTypeMetadata2;
  v53 = v22;
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v45 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v50 = v40 - v25;
  v26 = *(a1 + 2);
  v64 = *a1;
  v65 = v26;
  v66 = a3;
  v67 = a4;
  v68 = a5;
  v69 = a6;
  v27 = type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  v43 = v67;
  v44 = v68;
  v42 = v69;
  v28 = (a2 + *(v27 + 64));
  v29 = *v28;
  v30 = *(v28 + 1);
  v62 = v29;
  v63 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AED4();
  v40[2] = v59;
  v40[1] = v60;
  v41 = v61;
  sub_2170095D4();
  sub_2170095C4();
  (*(v48 + 8))(v14, v49);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v62)
  {
    v31 = 286;
  }

  else
  {
    v31 = 283;
  }

  v59 = sub_216983738(v31);
  v60 = v32;
  v49 = swift_checkMetadataState();
  v33 = v47;
  v34 = v45;
  v35 = v57;
  sub_21700A324();

  (*(v54 + 8))(v35, v55);
  v66 = v49;
  v67 = MEMORY[0x277D837D0];
  v68 = v33;
  v69 = v58;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  v37 = v52;
  sub_2166C24DC(v34, v52);
  v38 = *(v53 + 8);
  v38(v34, v37);
  sub_2166C24DC(v36, v37);
  return (v38)(v36, v37);
}

uint64_t sub_216C13298()
{
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78);
  sub_21700AEB4();
  sub_216C99738(v1);
}

uint64_t sub_216C133A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v16 - v13;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216683A80(a2, v14, &qword_27CAB8600);
  sub_216C99750(v14);
}

void sub_216C134F8(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = *a2;
  if (*(*a2 + 16))
  {
    type metadata accessor for SearchPageView();
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    sub_2170081B4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_217007DE4();

    if (!sub_216C0CA0C(a4, v4) || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78), sub_21700AEB4(), (v5 & 1) == 0))
    {
      sub_2170081B4();
      sub_216C995C4();
    }
  }
}

uint64_t sub_216C136B0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 60));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v2) = v2[16];
  v11[0] = v3;
  v12 = v4;
  v13 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F44();
  if (v9)
  {
    return 0;
  }

  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v11);

  v5 = v14;
  sub_216C1C864(v11);
  if (v5 > 1)
  {
    return 0;
  }

  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v10)
  {
    v6 = 288;
  }

  else
  {
    v6 = 287;
  }

  sub_216983738(v6);
  sub_217009834();
  v7 = sub_21700A044();

  return v7;
}

uint64_t sub_216C138C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v35 = a5;
  v38 = a4;
  v37 = a3;
  v39 = a2;
  v40 = a1;
  v41 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F48);
  sub_21680DFBC(&qword_280E2AD28, &qword_27CAC5F48);
  type metadata accessor for SearchBootstrapView();
  WitnessTable = swift_getWitnessTable();
  sub_2167B2E14();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F50);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21680DFBC(qword_280E2E528, &qword_27CAC5F50);
  swift_getOpaqueTypeMetadata2();
  v9 = swift_getOpaqueTypeConformance2();
  v10 = MEMORY[0x277CE1340];
  swift_getOpaqueTypeMetadata2();
  v53 = WitnessTable;
  v54 = v10;
  v55 = v9;
  v56 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F58);
  sub_2170089F4();
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_21680DFBC(&qword_280E2A708, &qword_27CAC5F58);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8600);
  swift_getOpaqueTypeConformance2();
  sub_2169D46A0();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F60);
  swift_getOpaqueTypeConformance2();
  sub_216C1BF40();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC5F68);
  v32 = swift_getOpaqueTypeConformance2();
  v31 = sub_216C1C018();
  v49 = OpaqueTypeMetadata2;
  v50 = v33;
  v51 = v32;
  v52 = v31;
  v34 = MEMORY[0x277CDE838];
  v11 = swift_getOpaqueTypeMetadata2();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &OpaqueTypeMetadata2 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &OpaqueTypeMetadata2 - v16;
  v18 = v37;
  v19 = v38;
  v49 = v37;
  v50 = v38;
  v20 = v35;
  v21 = v36;
  v51 = v35;
  v52 = v36;
  v22 = type metadata accessor for SearchPageView();
  v23 = v39;
  sub_216C13FD0(v22);
  v42 = v18;
  v43 = v19;
  v44 = v20;
  v45 = v21;
  v46 = v23;
  v24 = swift_checkMetadataState();
  v25 = v33;
  v26 = v32;
  v27 = v31;
  sub_21700A584();
  v49 = v24;
  v50 = v25;
  v51 = v26;
  v52 = v27;
  swift_getOpaqueTypeConformance2();
  sub_2166C24DC(v14, v11);
  v28 = *(v12 + 8);
  v28(v14, v11);
  sub_2166C24DC(v17, v11);
  return (v28)(v17, v11);
}

uint64_t sub_216C13FD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  sub_21700B474();
  v3 = sub_216C03D14();

  if (v3)
  {
    v4 = (v1 + *(a1 + 60));
    v5 = *v4;
    v6 = *(v4 + 1);
    LOBYTE(v4) = v4[16];
    LOBYTE(v17) = v5;
    v18 = v6;
    LOBYTE(v19) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
    sub_217007F44();
    if (v15[0] != 1)
    {
      return 2;
    }
  }

  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v15);

  v7 = v1 + *(a1 + 60);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  LOBYTE(v17) = *v7;
  v18 = v8;
  LOBYTE(v19) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F44();
  if (v16)
  {
    if (v16 == 1)
    {
      sub_216C1C864(v15);
      if ((v14 & 1) == 0)
      {
        return 1;
      }
    }
  }

  else
  {
    sub_216C1C864(v15);
  }

  sub_2170081B4();
  sub_216C99870(&v17);

  sub_217007F44();
  if (v21)
  {
    if (v21 == 1)
    {
      sub_216C1C864(&v17);
      if ((v13 & 1) == 0)
      {
        return 2;
      }
    }

    else if (!(v19 | v20 | v17 | v18))
    {
      return 2;
    }
  }

  else
  {
    sub_216C1C864(&v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
  sub_21700AEB4();
  v10 = sub_216F0FE50();

  v11 = *(v10 + 16);

  if (v11 > 1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_216C14288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_21700ACD4();
  v13 = sub_21700B354();
  v15 = v14;
  v16 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F90) + 36);
  sub_216C14528(a1, a2, a3, a4, a5, v16);
  v17 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F98) + 36));
  *v17 = v13;
  v17[1] = v15;
  *a6 = v12;
  v18 = MEMORY[0x21CE9C200](0.225, 0.9, 0.0);
  *(&v36 + 1) = a3;
  *&v37 = a4;
  *(&v37 + 1) = a5;
  type metadata accessor for SearchPageView();
  LOBYTE(a1) = sub_216C1052C();
  v19 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F88) + 36);
  *v19 = v18;
  v19[8] = a1 & 1;
  v20 = sub_21700B3B4();
  v22 = v21;
  v23 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F80) + 36);
  *&v36 = sub_21700ACD4();
  BYTE8(v36) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC8);
  sub_216C1C7AC();
  sub_21700A494();

  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FA0) + 36)];
  *v24 = v20;
  v24[1] = v22;
  LOBYTE(a1) = sub_217009CA4();
  sub_217007F24();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F78) + 36);
  *v33 = a1;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_21700B3B4();
  sub_2170083C4();
  v34 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F70) + 36));
  *v34 = v36;
  v34[1] = v37;
  v34[2] = v38;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F68);
  *(a6 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_216C14528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v19 - v13;
  *v14 = sub_2170093B4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FD8);
  sub_216C14684(a1, a2, a3, a4, a5, &v14[*(v15 + 44)]);
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for SearchPageView();
  if (sub_216C1052C())
  {
    v16 = -56.0;
  }

  else
  {
    v16 = 0.0;
  }

  sub_2167C5834(v14, a6, &qword_27CAC5FD0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FE0);
  v18 = a6 + *(result + 36);
  *v18 = 0;
  *(v18 + 8) = v16;
  return result;
}

uint64_t sub_216C14684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FE8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  *v16 = sub_2170091A4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FF0);
  sub_216C14950(a1, a2, a3, a4, a5, &v16[*(v17 + 44)]);
  sub_21700B3B4();
  sub_2170083C4();
  v18 = &v16[*(v12 + 44)];
  v19 = v39;
  *v18 = v38;
  *(v18 + 1) = v19;
  *(v18 + 2) = v40;
  v20 = sub_21700ACD4();
  v21 = sub_21700B3C4();
  v32 = v22;
  sub_216C151D8(&v42);
  v23 = v42;
  v24 = v43;
  v25 = v44;
  sub_21700B3B4();
  sub_2170083C4();
  v26 = v34;
  sub_216683A80(v16, v34, &qword_27CAC5FE8);
  v27 = v26;
  v28 = v33;
  sub_216683A80(v27, v33, &qword_27CAC5FE8);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FF8) + 48);
  *&v41[0] = v20;
  *(&v41[0] + 1) = v23;
  *&v41[1] = v24;
  *(&v41[1] + 1) = v25;
  v30 = v32;
  *&v41[2] = v21;
  *(&v41[2] + 1) = v32;
  v41[3] = v35;
  v41[4] = v36;
  v41[5] = v37;
  memcpy((v28 + v29), v41, 0x60uLL);
  sub_216683A80(v41, &v42, &qword_27CAC6000);
  sub_216699778(v16, &qword_27CAC5FE8);
  v42 = v20;
  v43 = v23;
  v44 = v24;
  v45 = v25;
  v46 = v21;
  v47 = v30;
  v48 = v35;
  v49 = v36;
  v50 = v37;
  sub_216699778(&v42, &qword_27CAC6000);
  return sub_216699778(v34, &qword_27CAC5FE8);
}

uint64_t sub_216C14950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v66 = a2;
  v67 = a5;
  v64 = a6;
  v65 = a4;
  __src[0] = a2;
  __src[1] = a3;
  v51 = a3;
  __src[2] = a4;
  __src[3] = a5;
  v8 = type metadata accessor for SearchPageView();
  v53 = v8;
  v9 = *(v8 - 8);
  v52 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - v10;
  v57 = type metadata accessor for SearchScopeBar(0) - 8;
  MEMORY[0x28223BE20](v57);
  v56 = (&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6008);
  MEMORY[0x28223BE20](v60);
  v58 = &v50 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6010);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v59 = &v50 - v17;
  v54 = *(v9 + 16);
  v55 = a1;
  v54(v11, a1, v8, v16);
  sub_21700EA34();
  v18 = sub_21700EA24();
  v19 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 2) = v18;
  *(v20 + 3) = v21;
  v22 = v65;
  *(v20 + 4) = v66;
  *(v20 + 5) = a3;
  v23 = v67;
  *(v20 + 6) = v22;
  *(v20 + 7) = v23;
  v24 = *(v9 + 32);
  v50 = v9 + 32;
  v25 = v53;
  v24(&v20[v19], v11, v53);
  (v54)(v11, a1, v25);
  v26 = sub_21700EA24();
  v27 = swift_allocObject();
  *(v27 + 2) = v26;
  v28 = v66;
  *(v27 + 3) = MEMORY[0x277D85700];
  *(v27 + 4) = v28;
  v29 = v65;
  *(v27 + 5) = v51;
  *(v27 + 6) = v29;
  *(v27 + 7) = v67;
  v24(&v27[v19], v11, v25);
  sub_21700B0F4();
  v30 = __src[1];
  v31 = __src[2];
  v32 = v56;
  *v56 = __src[0];
  *(v32 + 8) = v30;
  *(v32 + 16) = v31;
  type metadata accessor for SearchScopeBar.Manager(0);
  sub_2166B2EC4(&unk_280E42D08, type metadata accessor for SearchScopeBar.Manager);
  *(v32 + 24) = sub_217008104();
  *(v32 + 32) = v33 & 1;
  v34 = *(v57 + 32);
  *(v32 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  sub_21700B3B4();
  sub_217008BB4();
  v35 = v58;
  sub_216C1E98C(v32, v58, type metadata accessor for SearchScopeBar);
  memcpy((v35 + *(v60 + 36)), __src, 0x70uLL);
  v36 = (v55 + *(v25 + 76));
  v38 = *v36;
  v37 = v36[1];
  v68 = v38;
  v69 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5FC0);
  sub_21700AEB4();
  sub_216C1CB58();
  v39 = v59;
  sub_21700A3C4();

  sub_216699778(v35, &qword_27CAC6008);
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v61;
  v43 = v63;
  v41(v61, v39, v63);
  v44 = v64;
  *v64 = 0x4034000000000000;
  *(v44 + 8) = 0;
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6018);
  v41(&v45[*(v46 + 48)], v42, v43);
  v47 = &v45[*(v46 + 64)];
  *v47 = 0x4034000000000000;
  v47[8] = 0;
  v48 = *(v40 + 8);
  v48(v39, v43);
  return (v48)(v42, v43);
}

uint64_t sub_216C14FC4()
{
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216C150CC()
{
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C986DC();

  sub_2170081B4();
  sub_216C995C4();
}

uint64_t sub_216C151D8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SearchPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  sub_21700B474();
  v2 = sub_216C03B7C();

  if (v2)
  {
    type metadata accessor for SearchPagePresenter();
    sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
    v5 = *(sub_2170081B4() + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
    swift_unknownObjectRetain();

    v4 = v5;
  }

  else
  {
    v4 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_216C15310()
{
  sub_21700D584();
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
  sub_21700B474();
  sub_216C98D10();
}

uint64_t sub_216C15440(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for SearchPageView();
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99858(v2);
}

uint64_t sub_216C15510()
{
  type metadata accessor for SearchPageView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  result = sub_217007F44();
  if (v1 == 1)
  {
    if (sub_217008184())
    {
      return sub_217007F54();
    }

    result = sub_217008184();
    if (result)
    {
      return sub_217007F54();
    }
  }

  return result;
}

uint64_t sub_216C15630()
{
  v31 = type metadata accessor for MusicMetrics.ClickFields(0);
  MEMORY[0x28223BE20](v31);
  v1 = &v27 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_21700D574();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  v7 = *(sub_2170081B4() + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_objectGraph);

  if (!v7)
  {
    goto LABEL_6;
  }

  v30 = v1;
  type metadata accessor for MusicPageMetricsProvider();

  sub_21700D4B4();

  v8 = v34;
  if (!v34)
  {
    goto LABEL_6;
  }

  v9 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  swift_beginAccess();
  v10 = sub_21700D194();
  if (__swift_getEnumTagSinglePayload(v8 + v9, 1, v10))
  {
    swift_endAccess();
LABEL_5:

LABEL_6:
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_27CAC5F18);
    v12 = sub_217007C84();
    v13 = sub_21700ED84();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v12, v13, "Click event was not reported because no page fields were provided", v14, 2u);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

LABEL_10:
  }

  v16 = sub_21700D0F4();
  swift_endAccess();
  if (!v16)
  {
    goto LABEL_5;
  }

  v29 = v16;

  sub_21700D4B4();

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {

    sub_216699778(v4, &unk_27CABFB50);
    if (qword_27CAB5FB0 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CAC5F18);
    v12 = sub_217007C84();
    v18 = sub_21700ED84();
    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_216679000, v12, v18, "Click event was not reported because no metrics pipeline was provided", v19, 2u);
      MEMORY[0x21CEA1440](v19, -1, -1);
    }

    goto LABEL_10;
  }

  (*(v33 + 32))(v32, v4, v5);
  v20 = v31;
  v28 = *(v31 + 36);
  v21 = sub_217005EF4();
  v22 = v30;
  __swift_storeEnumTagSinglePayload(&v30[v28], 1, 1, v21);
  *v22 = 0x7865547261656C63;
  *(v22 + 8) = 0xE900000000000074;
  *(v22 + 16) = 2050;
  *(v22 + 24) = xmmword_217029BA0;
  *(v22 + 40) = 0;
  *(v22 + *(v20 + 44)) = 8;
  *(v22 + *(v20 + 40)) = 0;
  v23 = sub_2170081B4();
  v24 = *(v23 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker);
  v25 = *(v23 + OBJC_IVAR____TtC7MusicUI19SearchPagePresenter_impressionTracker + 8);
  swift_unknownObjectRetain();

  v26 = v32;
  sub_216C949EC(v22, v29, v32, v24, v25, 0x686372616553, 0xE600000000000000);

  swift_unknownObjectRelease();

  sub_216C1EA44(v22, type metadata accessor for MusicMetrics.ClickFields);
  return (*(v33 + 8))(v26, v5);
}

uint64_t sub_216C15C24()
{
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  sub_2170081B4();
  sub_216C99870(v2);

  if (v2[32] == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F38);
    sub_21700B474();
    v0 = sub_216C03B7C();
    sub_216C1C864(v2);

    if (!v0)
    {
      return 1;
    }
  }

  else
  {
    sub_216C1C864(v2);
  }

  return 0;
}

uint64_t sub_216C15D4C()
{
  type metadata accessor for SearchPageView();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABDE08);
  sub_217007F54();
  sub_217007F54();
}

uint64_t sub_216C15E6C(void (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t sub_216C15EB4()
{
  type metadata accessor for MusicPageMetricsProvider();
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC7MusicUI24MusicPageMetricsProvider_pageMetrics;
  v2 = sub_21700D194();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_216C15F18()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAC5F18);
  __swift_project_value_buffer(v0, qword_27CAC5F18);
  return sub_217007C94();
}

uint64_t sub_216C15F9C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UnifiedMessagesRequestState(0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = sub_217006704();
  *a1 = v2;
  return result;
}

void sub_216C15FEC()
{
  OUTLINED_FUNCTION_49();
  v96 = v2;
  v72 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v71 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v6 - v5);
  sub_217009A34();
  OUTLINED_FUNCTION_1();
  v92 = v8;
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v89 = v10 - v9;
  v11 = type metadata accessor for SearchPageContentView();
  v95 = *(v11 - 8);
  v12 = *(v95 + 64);
  MEMORY[0x28223BE20](v11);
  sub_217008AB4();
  OUTLINED_FUNCTION_1();
  v84 = v13;
  v85 = v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_70(v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6048);
  OUTLINED_FUNCTION_1();
  v87 = v17;
  v88 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v20);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6050);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_66();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6058);
  OUTLINED_FUNCTION_1();
  v83 = v22;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v75 = v70 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6060);
  OUTLINED_FUNCTION_1();
  v86 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6068);
  OUTLINED_FUNCTION_1();
  v90 = v29;
  v91 = v28;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  sub_216C16870(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC5F30);
  v73 = v0;
  sub_21700B474();
  v74 = type metadata accessor for UnifiedMessagesRequestState(0);
  v32 = sub_216C1D350();
  OUTLINED_FUNCTION_20_48();
  v35 = sub_2166B2EC4(v33, v34);
  v36 = v76;
  sub_21700A3C4();

  sub_216699778(v1, &qword_27CAC6050);
  sub_217008AA4();
  OUTLINED_FUNCTION_19_42();
  sub_216C1E9E8(v0, v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v37);
  v38 = *(v95 + 80);
  v39 = (v38 + 16) & ~v38;
  v94 = v12;
  v80 = v38;
  swift_allocObject();
  OUTLINED_FUNCTION_17_56();
  v82 = v39;
  v95 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v77;
  sub_216C1E98C(v95, v40 + v39, v42);
  sub_2166B2EC4(&qword_280E2AD68, MEMORY[0x277CDDAD8]);
  v43 = v79;
  v44 = v84;
  sub_21700B184();

  v45 = OUTLINED_FUNCTION_38_33();
  v46(v45, v44);
  sub_217008114();
  v98 = v36;
  v99 = v74;
  v47 = v78;
  v100 = v32;
  v101 = v35;
  v48 = v73;
  OUTLINED_FUNCTION_28_35();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_9();
  v51 = sub_21680DFBC(v50, &qword_27CAC6048);
  v52 = v43;
  v53 = v81;
  v54 = v87;
  sub_21700A764();
  (*(v88 + 8))(v52, v54);
  v55 = OUTLINED_FUNCTION_38_33();
  v56(v55, v53);
  v57 = v89;
  sub_217009A24();
  v98 = v53;
  v99 = v54;
  v100 = OpaqueTypeConformance2;
  v101 = v51;
  OUTLINED_FUNCTION_31_41();
  v58 = swift_getOpaqueTypeConformance2();
  sub_21700A884();
  (*(v92 + 8))(v57, v93);
  v59 = OUTLINED_FUNCTION_77_11();
  v60(v59, v41);
  v61 = *(v48 + 56);
  if (*(v48 + 64) != 1)
  {

    sub_21700ED94();
    v62 = sub_217009C34();
    sub_217007BC4();

    v63 = v70[1];
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v61, 0);
    (*(v71 + 8))(v63, v72);
    LOBYTE(v61) = v98;
  }

  v97 = v61 & 1;
  OUTLINED_FUNCTION_19_42();
  v64 = v95;
  sub_216C1E9E8(v48, v95, v65);
  v66 = v82;
  swift_allocObject();
  OUTLINED_FUNCTION_17_56();
  sub_216C1E98C(v64, v67 + v66, v68);
  v98 = v41;
  v99 = v58;
  OUTLINED_FUNCTION_25_40();
  swift_getOpaqueTypeConformance2();
  v69 = v91;
  sub_21700AB04();

  (*(v90 + 8))(v47, v69);
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216C16870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6160);
  MEMORY[0x28223BE20](v91);
  v82 = v78 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61A8);
  v85 = *(v93 - 1);
  MEMORY[0x28223BE20](v93);
  v84 = v78 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61B0);
  MEMORY[0x28223BE20](v88);
  v90 = v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6138);
  MEMORY[0x28223BE20](v7);
  v92 = v78 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6140);
  MEMORY[0x28223BE20](v87);
  v79 = v78 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61B8);
  v83 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v81 = v78 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6098);
  MEMORY[0x28223BE20](v97);
  v12 = v78 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61C0);
  v80 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v86 = v78 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61C8);
  MEMORY[0x28223BE20](v100);
  v102 = v78 - v14;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61D0);
  MEMORY[0x28223BE20](v94);
  v96 = v78 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC6090);
  MEMORY[0x28223BE20](v101);
  v98 = v78 - v16;
  v95 = type metadata accessor for SearchLandingPageView();
  MEMORY[0x28223BE20](v95);
  v18 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v78 - v20;
  v22 = sub_2170090F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[1])
  {
    type metadata accessor for SearchPagePresenter();
    v70 = &qword_280E3D248;
    v71 = type metadata accessor for SearchPagePresenter;
LABEL_20:
    sub_2166B2EC4(v70, v71);
    sub_217008CD4();
    __break(1u);
LABEL_21:
    result = sub_21700F7C4();
    __break(1u);
    return result;
  }

  sub_216C99870(&v109);

  v26 = a1[7];
  v27 = *(a1 + 64);
  v103 = v7;
  v104 = a2;
  if (v27 != 1)
  {

    sub_21700ED94();
    v28 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v26, 0);
    (*(v23 + 8))(v25, v22);
    LOBYTE(v26) = v105;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC61D8);
  if (v111 != 2 || (v29 = vorrq_s8(v109, v110), *&vorr_s8(*v29.i8, *&vextq_s8(v29, v29, 8uLL))))
  {
    if (v26)
    {
      if (!v111)
      {
        v78[1] = v110.i64[0];
        v53 = sub_216C17A5C(v110.i64[0], v12);
        v93 = v78;
        MEMORY[0x28223BE20](v53);
        sub_2170093B4();
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A0);
        v73 = sub_216C1DFF0(&qword_280E2AA88, &qword_27CAC6098, &unk_2170543B0, sub_216C1D5B8);
        v76 = sub_216C1D9A4();
        v55 = v86;
        v56 = v97;
        sub_21700A444();
        sub_216699778(v12, &qword_27CAC6098);
        v57 = v80;
        v58 = v55;
        v59 = v99;
        (*(v80 + 16))(v96, v58, v99);
        swift_storeEnumTagMultiPayload();
        sub_2166B2EC4(&qword_280E39E70, type metadata accessor for SearchLandingPageView);
        v105 = v56;
        v106 = v54;
        v107 = v73;
        v108 = v76;
        swift_getOpaqueTypeConformance2();
        v60 = v98;
        sub_217009554();
        sub_216683A80(v60, v102, &qword_27CAC6090);
        swift_storeEnumTagMultiPayload();
        sub_216C1D460();
        sub_216C1DE90();
        sub_217009554();

        sub_216699778(v60, &qword_27CAC6090);
        return (*(v57 + 8))(v86, v59);
      }

      if (v111 == 1)
      {
        v30 = v79;
        sub_216C18D4C(v109.i64[0], v109.i64[1], v110.i64[0], v110.i64[1], v79);

        MEMORY[0x28223BE20](v31);
        sub_2170093B4();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A0);
        v72 = sub_216C1DFF0(&qword_280E2A940, &qword_27CAC6140, &unk_217054458, sub_216C1E0C4);
        v75 = sub_216C1D9A4();
        v33 = v81;
        v34 = v87;
        sub_21700A444();
        sub_216699778(v30, &qword_27CAC6140);
        v35 = v83;
        v36 = v89;
        (*(v83 + 16))(v90, v33, v89);
        swift_storeEnumTagMultiPayload();
        v105 = v34;
        v106 = v32;
        v107 = v72;
        v108 = v75;
        swift_getOpaqueTypeConformance2();
        v37 = sub_216C1E260();
        v105 = v91;
        v106 = v32;
        v107 = v37;
        v108 = v75;
        swift_getOpaqueTypeConformance2();
        v38 = v92;
        sub_217009554();
        sub_216683A80(v38, v102, &qword_27CAC6138);
        swift_storeEnumTagMultiPayload();
        sub_216C1D460();
        sub_216C1DE90();
        sub_217009554();
        sub_216699778(v38, &qword_27CAC6138);
        return (*(v35 + 8))(v33, v36);
      }

      if (v110.i64[0] | v109.i64[1] | v109.i64[0] | v110.i64[1])
      {
        v61 = v82;
        v62 = sub_216C19C64(v82);
        MEMORY[0x28223BE20](v62);
        sub_2170093B4();
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC60A0);
        v74 = sub_216C1E260();
        v77 = sub_216C1D9A4();
        v64 = v84;
        v65 = v91;
        sub_21700A444();
        sub_216699778(v61, &qword_27CAC6160);
        v66 = v85;
        v67 = v93;
        (*(v85 + 16))(v90, v64, v93);
        swift_storeEnumTagMultiPayload();
        v68 = sub_216C1DFF0(&qword_280E2A940, &qword_27CAC6140, &unk_217054458, sub_216C1E0C4);
        v105 = v87;
        v106 = v63;
        v107 = v68;
        v108 = v77;
        swift_getOpaqueTypeConformance2();
        v105 = v65;
        v106 = v63;
        v107 = v74;
        v108 = v77;
        swift_getOpaqueTypeConformance2();
        v69 = v92;
        sub_217009554();
        sub_216683A80(v69, v102, &qword_27CAC6138);
        swift_storeEnumTagMultiPayload();
        sub_216C1D460();
        sub_216C1DE90();
        sub_217009554();
        sub_216699778(v69, &qword_27CAC6138);
        return (*(v66 + 8))(v64, v67);
      }

      goto LABEL_21;
    }

    sub_216C1C864(&v109);
  }

  v40 = a1[5];
  if (!v40)
  {
    sub_217006A14();
    v70 = &unk_280E4A430;
    v71 = MEMORY[0x277D2A6E8];
    goto LABEL_20;
  }

  v41 = *a1;
  v42 = (a1 + *(type metadata accessor for SearchPageContentView() + 48));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];

  sub_2169D4E84(v43);
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  type metadata accessor for MusicUINetworkConnectivityMonitor();
  sub_2166B2EC4(&qword_280E464A8, type metadata accessor for MusicUINetworkConnectivityMonitor);

  *(v18 + 7) = sub_217008684();
  *(v18 + 8) = v46;
  type metadata accessor for SearchPagePresenter();
  sub_2166B2EC4(&qword_280E3D248, type metadata accessor for SearchPagePresenter);
  *(v18 + 9) = sub_217008CF4();
  *(v18 + 10) = v47;
  v48 = *(v95 + 36);
  *&v18[v48] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7240);
  swift_storeEnumTagMultiPayload();
  *v18 = v43;
  *(v18 + 1) = v44;
  *(v18 + 2) = v45;
  *(v18 + 3) = v41;
  *(v18 + 4) = sub_216C1E948;
  *(v18 + 5) = v40;
  v18[48] = 0;
  sub_216C1E98C(v18, v21, type metadata accessor for SearchLandingPageView);
  sub_216C1E9E8(v21, v96, type metadata accessor for SearchLandingPageView);
  swift_storeEnumTagMultiPayload();
  sub_2166B2EC4(&qword_280E39E70, type metadata accessor for SearchLandingPageView);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAC60A0);
  v50 = sub_216C1DFF0(&qword_280E2AA88, &qword_27CAC6098, &unk_2170543B0, sub_216C1D5B8);
  v51 = sub_216C1D9A4();
  v105 = v97;
  v106 = v49;
  v107 = v50;
  v108 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v98;
  sub_217009554();
  sub_216683A80(v52, v102, &qword_27CAC6090);
  swift_storeEnumTagMultiPayload();
  sub_216C1D460();
  sub_216C1DE90();
  sub_217009554();
  sub_216699778(v52, &qword_27CAC6090);
  return sub_216C1EA44(v21, type metadata accessor for SearchLandingPageView);
}
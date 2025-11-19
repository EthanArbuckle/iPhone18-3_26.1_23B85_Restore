uint64_t sub_1BB682BFC()
{
  v1 = v0;
  v210 = sub_1BB6BA7F4();
  v194 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v206 = &v192 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v207 = &v192 - v4;
  v217 = sub_1BB6BA844();
  v204 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v205 = &v192 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v195 = &v192 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v214 = &v192 - v9;
  v10 = (v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest);
  v11 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest + 16);
  v211 = v0;
  if (v11 == 255)
  {
    goto LABEL_94;
  }

  v13 = *v10;
  v12 = *(v10 + 1);
  v213 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_overrideSelectionIdentities;
  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_overrideSelectionIdentities) = MEMORY[0x1E69E7CC0];
  v198 = v12;
  sub_1BB5B3498(v13, v12, v11);

  v215 = v13;
  v196 = v10;
  if (v11 <= 1)
  {
    if (!v11)
    {
      v14 = *(*(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
      if (v14 >> 62)
      {
        *&v15 = COERCE_DOUBLE(sub_1BB6BB564());
        if (*&v15 != 0.0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (*&v15 != 0.0)
        {
LABEL_6:
          if (v15 >= 1)
          {
            *&v16 = v14 & 0xC000000000000001;
            v199 = (v14 + 32);
            v17 = (v13 + 32);
            v203 = (v204 + 16);
            *&v202 = v194 + 16;
            v201 = (v204 + 40);
            v200 = (v194 + 32);

            v18 = 0;
            v216 = v14;
            v212 = *&v15;
            v208 = v13 + 32;
            *&v209 = v14 & 0xC000000000000001;
            v19 = v210;
            do
            {
LABEL_9:
              if (v16 == 0.0)
              {
                v20 = v199[v18];
              }

              else
              {
                v20 = MEMORY[0x1BFB111F0](v18, v14);
              }

              ++v18;
              v21 = *(v13 + 16);
              v22 = v17;
              do
              {
                if (!v21)
                {

                  if (v18 == v15)
                  {
                    goto LABEL_77;
                  }

                  goto LABEL_9;
                }

                v23 = *v22++;
                --v21;
              }

              while (v23 != *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId));
              v24 = v214;
              v25 = v217;
              (*v203)(v214, v20 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v217);
              v26 = *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
              v27 = v207;
              (**&v202)(v207, *(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v19);
              type metadata accessor for DKSubjectSelectionTask.Identity(0);
              v28 = swift_allocObject();
              v29 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;
              sub_1BB6BA834();
              v30 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID;
              *(v28 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) = -1;
              v31 = v28 + v29;
              v1 = v211;
              (*v201)(v31, v24, v25);
              *(v28 + v30) = v26;
              (*v200)(v28 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v27, v19);

              v33 = v213;
              MEMORY[0x1BFB10C80](v32);
              if (*((*(v1 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v197 = *((*(v1 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1BB6BAE64();
              }

              sub_1BB6BAEB4();

              v13 = v215;
              v14 = v216;
              *&v15 = v212;
              v17 = v208;
              v16 = v209;
            }

            while (v18 != *&v212);
LABEL_77:

            goto LABEL_78;
          }

          __break(1u);
          goto LABEL_202;
        }
      }

LABEL_78:
      v115 = v13;
      v116 = v198;
      v117 = 0;
LABEL_92:
      sub_1BB5B34AC(v115, v116, v117);
      goto LABEL_93;
    }

    v65 = *(*(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
    if (v65 >> 62)
    {
      *&v66 = COERCE_DOUBLE(sub_1BB6BB564());
      if (*&v66 != 0.0)
      {
LABEL_45:
        if (v66 >= 1)
        {
          *&v209 = v65 & 0xC000000000000001;
          v197 = v65 + 32;
          *&v202 = v204 + 16;
          v201 = (v194 + 16);
          v200 = (v204 + 40);
          v199 = (v194 + 32);

          v67 = 0;
          v212 = *&v66;
          v203 = v65;
          do
          {
            if (v209 == 0.0)
            {
              v68 = *(v197 + 8 * v67);
            }

            else
            {
              v68 = MEMORY[0x1BFB111F0](v67, v65);
            }

            v69 = 0;
            v216 = v67 + 1;
            v70 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
            v71 = *(v13 + 16);
            do
            {
              if (v71 == v69)
              {

                goto LABEL_48;
              }

              v72 = v69 + 1;
              sub_1BB689900(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
              v73 = sub_1BB6BABE4();
              v69 = v72;
            }

            while ((v73 & 1) == 0);
            v74 = v214;
            v75 = v217;
            (**&v202)(v214, v68 + v70, v217);
            v208 = *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
            v76 = v210;
            v77 = v211;
            v78 = v207;
            (*v201)(v207, *(v211 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v210);
            type metadata accessor for DKSubjectSelectionTask.Identity(0);
            v79 = swift_allocObject();
            v80 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;
            sub_1BB6BA834();
            v81 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID;
            *(v79 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) = -1;
            (*v200)(v79 + v80, v74, v75);
            *(v79 + v81) = *&v208;
            (*v199)(v79 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v78, v76);

            v83 = v213;
            MEMORY[0x1BFB10C80](v82);
            if (*((*(v77 + v83) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v77 + v83) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BB6BAE64();
            }

            sub_1BB6BAEB4();

            v13 = v215;
            v65 = v203;
LABEL_48:
            v67 = v216;
          }

          while (v216 != *&v212);

          v118 = v13;
          v119 = v198;
          v120 = 1;
          goto LABEL_85;
        }

        goto LABEL_203;
      }
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (*&v66 != 0.0)
      {
        goto LABEL_45;
      }
    }

    v115 = v13;
    v116 = v198;
    v117 = 1;
    goto LABEL_92;
  }

  if (v11 == 2)
  {
    v34 = *(*(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
    if (*&v34 >> 62)
    {
      *&v35 = COERCE_DOUBLE(sub_1BB6BB564());
      if (*&v35 != 0.0)
      {
LABEL_22:
        if (v35 >= 1)
        {
          v216 = *&v34 & 0xC000000000000001;
          v197 = *&v34 + 32;
          v36 = (v13 + 32);
          v203 = (v204 + 16);
          *&v202 = v194 + 16;
          v201 = (v204 + 40);
          v200 = (v194 + 32);

          v37 = 0;
          v212 = v34;
          v208 = v13 + 32;
          v209 = *&v35;
          do
          {
            if (v216)
            {
              v38 = MEMORY[0x1BFB111F0](v37, *&v34);
            }

            else
            {
              v38 = *(v197 + 8 * v37);
            }

            v39 = *(v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
            if (v39)
            {
              v40 = *(v13 + 16);
              v41 = v36;
              while (v40)
              {
                v42 = *v41++;
                --v40;
                if (v42 == *(v39 + qword_1EBC5EE10))
                {
                  v43 = v217;
                  (*v203)(v214, v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v217);
                  v199 = *(v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
                  v45 = v210;
                  v44 = v211;
                  v46 = v207;
                  (**&v202)(v207, *(v211 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v210);
                  type metadata accessor for DKSubjectSelectionTask.Identity(0);
                  v47 = swift_allocObject();
                  v48 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;

                  sub_1BB6BA834();
                  v49 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID;
                  *(v47 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) = -1;
                  (*v201)(v47 + v48, v214, v43);
                  *(v47 + v49) = v199;
                  (*v200)(v47 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v46, v45);

                  v51 = v213;
                  MEMORY[0x1BFB10C80](v50);
                  if (*((*(v44 + v51) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v44 + v51) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1BB6BAE64();
                  }

                  sub_1BB6BAEB4();

                  v13 = v215;
                  v34 = v212;
                  v36 = v208;
                  *&v35 = v209;
                  break;
                }
              }
            }

            v52 = *(v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
            if (v52)
            {
              v53 = *(v13 + 16);
              v54 = v36;
              while (v53)
              {
                v55 = *v54++;
                --v53;
                if (v55 == *(v52 + qword_1EBC5EE10))
                {
                  v56 = v217;
                  (*v203)(v214, v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v217);
                  v199 = *(v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
                  v58 = v210;
                  v57 = v211;
                  v59 = v207;
                  (**&v202)(v207, *(v211 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v210);
                  type metadata accessor for DKSubjectSelectionTask.Identity(0);
                  v60 = swift_allocObject();
                  v61 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;

                  sub_1BB6BA834();
                  v62 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID;
                  *(v60 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) = -1;
                  (*v201)(v60 + v61, v214, v56);
                  *(v60 + v62) = v199;
                  (*v200)(v60 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v59, v58);

                  v64 = v213;
                  MEMORY[0x1BFB10C80](v63);
                  if (*((*(v57 + v64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v57 + v64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1BB6BAE64();
                  }

                  sub_1BB6BAEB4();

                  v13 = v215;
                  v34 = v212;
                  v36 = v208;
                  *&v35 = v209;
                  goto LABEL_25;
                }
              }
            }

LABEL_25:
            ++v37;
          }

          while (v37 != v35);

          v118 = v13;
          v119 = v198;
          v120 = 2;
          goto LABEL_85;
        }

LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        sub_1BB6BAE64();
LABEL_83:
        sub_1BB6BAEB4();
        sub_1BB5B34AC(v10, v198, 3u);

        goto LABEL_93;
      }
    }

    else
    {
      v35 = *((*&v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (*&v35 != 0.0)
      {
        goto LABEL_22;
      }
    }

    v115 = v13;
    v116 = v198;
    v117 = 2;
    goto LABEL_92;
  }

  v84 = *(*(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  if (v84 >> 62)
  {
    v85 = sub_1BB6BB564();
    if (!v85)
    {
      goto LABEL_93;
    }
  }

  else
  {
    v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v85)
    {
      goto LABEL_93;
    }
  }

  if (v85 < 1)
  {
    goto LABEL_204;
  }

  v86 = *&v13;
  v209 = *&v198;
  v216 = v84 & 0xC000000000000001;
  v87 = (v194 + 16);
  v88 = (v194 + 8);
  v201 = (v204 + 16);
  v200 = (v204 + 40);
  v199 = (v194 + 32);

  v203 = 0;
  v89 = 0;
  v202 = INFINITY;
  v90 = -0.1;
  v212 = 0.1;
  v91 = v85;
  *&v208 = -0.1;
  do
  {
    if (v216)
    {
      v92 = MEMORY[0x1BFB111F0](v89, v84);
    }

    else
    {
      v92 = *(v84 + 8 * v89 + 32);
    }

    v93 = v210;
    v94 = *v87;
    v95 = v207;
    (*v87)(v207, *(v211 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v210);
    v96 = sub_1BB6989C8(v95, 0);
    (*v88)(v95, v93);
    if (!v96)
    {
      goto LABEL_63;
    }

    v97 = (v96 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
    v98 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect);
    v99 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 8);
    v100 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 16);
    v101 = *(v96 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rect + 24);
    v219.origin.x = v98;
    v219.origin.y = v99;
    v219.size.width = v100;
    v219.size.height = v101;
    MidX = CGRectGetMidX(v219);
    v220.origin.x = v98;
    v220.origin.y = v99;
    v220.size.width = v100;
    v220.size.height = v101;
    MidY = CGRectGetMidY(v220);
    v104 = *v97;
    v105 = v97[1];
    v106 = v97[2];
    v107 = v97[3];
    v221.origin.x = *v97;
    v221.origin.y = v105;
    v221.size.width = v106;
    v221.size.height = v107;
    if (CGRectGetMinX(v221) + v90 > v86 || (v222.origin.x = v104, v222.origin.y = v105, v222.size.width = v106, v222.size.height = v107, CGRectGetMaxX(v222) + v212 < v86))
    {

LABEL_63:

      goto LABEL_64;
    }

    v223.origin.x = v104;
    v223.origin.y = v105;
    v223.size.width = v106;
    v223.size.height = v107;
    v108 = CGRectGetMinY(v223) + v90;
    v109 = v209;
    if (v108 > v209 || (v224.origin.x = v104, v224.origin.y = v105, v224.size.width = v106, v224.size.height = v107, CGRectGetMaxY(v224) + v212 < v109) || (v110 = sqrt((MidX - v86) * (MidX - v86) + (MidY - v109) * (MidY - v109)), v110 >= v202))
    {
    }

    else
    {
      (*v201)(v214, v92 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v217);
      v202 = *(v92 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);
      v111 = v207;
      v94(v207, *(v211 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time, v210);
      type metadata accessor for DKSubjectSelectionTask.Identity(0);
      v112 = swift_allocObject();
      v113 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;
      sub_1BB6BA834();

      v114 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID;
      *(v112 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) = -1;
      (*v200)(v112 + v113, v214, v217);
      *(v112 + v114) = v202;
      (*v199)(v112 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v111, v210);
      v202 = v110;
      v203 = v112;
    }

    v90 = *&v208;
LABEL_64:
    ++v89;
  }

  while (v91 != v89);

  if (v203)
  {

    v1 = v211;
    v122 = v213;
    MEMORY[0x1BFB10C80](v121);
    v10 = v215;
    if (*((*(v1 + v122) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v1 + v122) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_83;
    }

    goto LABEL_205;
  }

  v118 = v215;
  v119 = v198;
  v120 = 3;
LABEL_85:
  sub_1BB5B34AC(v118, v119, v120);
  v1 = v211;
LABEL_93:
  v123 = v196;
  v124 = *v196;
  v125 = v196[1];
  *v196 = 0;
  v123[1] = 0;
  v126 = *(v123 + 16);
  *(v123 + 16) = -1;
  sub_1BB5B34AC(v124, v125, v126);
LABEL_94:
  v127 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_overrideSelectionIdentities;
  v128 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_overrideSelectionIdentities);
  if (v128 >> 62)
  {
    goto LABEL_197;
  }

  v129 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_96:
  v130 = MEMORY[0x1E69E7CC0];
  v192 = v127;
  if (v129 != 0.0)
  {
    v203 = (v128 & 0xC000000000000001);
    v197 = v128 & 0xFFFFFFFFFFFFFF8;
    v196 = (v128 + 32);
    v215 = (v204 + 16);
    *&v212 = v204 + 8;
    v201 = (v194 + 8);
    v200 = (v194 + 16);
    v199 = (v204 + 32);
    v193 = (v204 + 24);
    v198 = v128;
    v202 = v129;
    *&v128 = COERCE_DOUBLE();
    v131 = 0;
    v209 = v130;
    while (1)
    {
      if (v203)
      {
        *&v128 = COERCE_DOUBLE(MEMORY[0x1BFB111F0](v131, v198));
        v132 = v128;
        v133 = __OFADD__(v131, 1);
        v134 = v131 + 1;
        if (v133)
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v131 >= *(v197 + 16))
        {
          goto LABEL_195;
        }

        v132 = v196[v131];
        *&v128 = COERCE_DOUBLE();
        v133 = __OFADD__(v131, 1);
        v134 = v131 + 1;
        if (v133)
        {
          goto LABEL_193;
        }
      }

      v208 = v134;
      v135 = *(*(*(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
      v218 = v130;
      if (v135 >> 62)
      {
        v136 = sub_1BB6BB564();
      }

      else
      {
        v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v216 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_uuid;
      *&v128 = COERCE_DOUBLE();
      if (v136)
      {
        v137 = 0;
        v213 = v135 & 0xC000000000000001;
        v138 = v135 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v213)
          {
            *&v128 = COERCE_DOUBLE(MEMORY[0x1BFB111F0](v137, v135));
            v139 = v137 + 1;
            if (__OFADD__(v137, 1))
            {
              goto LABEL_188;
            }
          }

          else
          {
            if (v137 >= *(v138 + 16))
            {
              goto LABEL_189;
            }

            *&v128 = COERCE_DOUBLE();
            v139 = v137 + 1;
            if (__OFADD__(v137, 1))
            {
LABEL_188:
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              v189 = v128;
              v190 = v127;
              *&v191 = COERCE_DOUBLE(sub_1BB6BB564());
              v127 = v190;
              v129 = *&v191;
              v128 = v189;
              goto LABEL_96;
            }
          }

          v1 = v135;
          v140 = v136;
          v141 = v132;
          v142 = v132 + v216;
          v143 = v214;
          v144 = v217;
          (*v215)(v214, v142, v217);
          v145 = sub_1BB6BA814();
          (**&v212)(v143, v144);
          if (v145)
          {
            sub_1BB6BB3D4();
            sub_1BB6BB414();
            sub_1BB6BB424();
            *&v128 = COERCE_DOUBLE(sub_1BB6BB3E4());
          }

          else
          {
            *&v128 = COERCE_DOUBLE();
          }

          v136 = v140;
          v135 = v1;
          ++v137;
          v132 = v141;
          if (v139 == v136)
          {
            v146 = v218;
            v1 = v211;
            v130 = MEMORY[0x1E69E7CC0];
            goto LABEL_120;
          }
        }
      }

      v146 = v130;
LABEL_120:

      if ((*&v146 & 0x8000000000000000) != 0 || (*&v146 & 0x4000000000000000) != 0)
      {
        if (sub_1BB6BB564())
        {
LABEL_123:
          v147 = *(v1 + 40);
          v148 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time;
          v149 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified;
          v150 = v210;
          (*v201)(v132 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v210);
          *&v128 = COERCE_DOUBLE((*v200)(v132 + v149, v147 + v148, v150));
          if ((*&v146 & 0xC000000000000001) != 0)
          {
            v151 = MEMORY[0x1BFB111F0](0, *&v146);
          }

          else
          {
            if (!*(*&v146 + 16))
            {
              goto LABEL_194;
            }

            v151 = *(*&v146 + 32);
          }

          v152 = *(v151 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity);

          *(v132 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) = v152;
          (*v215)(v205, v132 + v216, v217);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v130 = MEMORY[0x1E69E7CC0];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v209 = COERCE_DOUBLE(sub_1BB59CF10(0, *(*&v209 + 16) + 1, 1, *&v209));
          }

          v155 = *(*&v209 + 16);
          v154 = *(*&v209 + 24);
          if (v155 >= v154 >> 1)
          {
            v209 = COERCE_DOUBLE(sub_1BB59CF10(v154 > 1, v155 + 1, 1, *&v209));
          }

          v156 = v209;
          *(*&v209 + 16) = v155 + 1;
          *&v128 = COERCE_DOUBLE((*(v204 + 32))(*&v156 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v155, v205, v217));
          goto LABEL_131;
        }
      }

      else if (*(*&v146 + 16))
      {
        goto LABEL_123;
      }

      v157 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID;
      if ((*(v132 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_vuID) & 0x8000000000000000) != 0)
      {
        *&v128 = COERCE_DOUBLE();
      }

      else
      {
        v158 = *(*(*(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
        v218 = v130;
        if (v158 >> 62)
        {
          v159 = sub_1BB6BB564();
        }

        else
        {
          v159 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v128 = COERCE_DOUBLE();
        if (v159)
        {
          v160 = 0;
          v1 = v158 & 0xFFFFFFFFFFFFFF8;
          v213 = v158 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v158 & 0xC000000000000001) != 0)
            {
              *&v128 = COERCE_DOUBLE(MEMORY[0x1BFB111F0](v160, v158));
              v161 = v128;
              v162 = v160 + 1;
              if (__OFADD__(v160, 1))
              {
                goto LABEL_190;
              }
            }

            else
            {
              if (v160 >= *(v1 + 16))
              {
                goto LABEL_191;
              }

              v161 = *(v158 + 8 * v160 + 32);
              *&v128 = COERCE_DOUBLE();
              v162 = v160 + 1;
              if (__OFADD__(v160, 1))
              {
                goto LABEL_190;
              }
            }

            if (*(v161 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_identity) == *(v132 + v157))
            {
              sub_1BB6BB3D4();
              sub_1BB6BB414();
              sub_1BB6BB424();
              *&v128 = COERCE_DOUBLE(sub_1BB6BB3E4());
              v1 = v213;
            }

            else
            {
              *&v128 = COERCE_DOUBLE();
            }

            ++v160;
          }

          while (v162 != v159);
          v163 = v218;
          v1 = v211;
          v130 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v163 = v130;
        }

        *&v128 = COERCE_DOUBLE();
        v131 = v208;
        if ((*&v163 & 0x8000000000000000) != 0 || (*&v163 & 0x4000000000000000) != 0)
        {
          *&v128 = COERCE_DOUBLE(sub_1BB6BB564());
          if (*&v128 == 0.0)
          {
LABEL_168:

            *&v128 = COERCE_DOUBLE();
            goto LABEL_132;
          }
        }

        else if (!*(*&v163 + 16))
        {
          goto LABEL_168;
        }

        if ((*&v163 & 0xC000000000000001) != 0)
        {
          v164 = MEMORY[0x1BFB111F0](0, *&v163);
        }

        else
        {
          if (!*(*&v163 + 16))
          {
            goto LABEL_196;
          }

          v164 = *(*&v163 + 32);
        }

        v166 = v216;
        v165 = v217;
        (*v193)(v132 + v216, v164 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v217);
        v167 = *(v1 + 40);
        v168 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_time;
        v169 = OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified;
        v170 = v210;
        (*v201)(v132 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v210);
        (*v200)(v132 + v169, (v167 + v168), v170);
        (*v215)(v195, v132 + v166, v165);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v209 = COERCE_DOUBLE(sub_1BB59CF10(0, *(*&v209 + 16) + 1, 1, *&v209));
        }

        v172 = *(*&v209 + 16);
        v171 = *(*&v209 + 24);
        if (v172 >= v171 >> 1)
        {
          v209 = COERCE_DOUBLE(sub_1BB59CF10(v171 > 1, v172 + 1, 1, *&v209));
        }

        v173 = v209;
        *(*&v209 + 16) = v172 + 1;
        *&v128 = COERCE_DOUBLE((*(v204 + 32))(*&v173 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v172, v195, v217));
        v130 = MEMORY[0x1E69E7CC0];
      }

LABEL_131:
      v131 = v208;
LABEL_132:
      if (v131 == *&v202)
      {

        v127 = v192;
        goto LABEL_171;
      }
    }
  }

  v209 = MEMORY[0x1E69E7CC0];
LABEL_171:
  v174 = *(v1 + v127);
  v218 = v130;
  if (v174 >> 62)
  {
    v175 = sub_1BB6BB564();
  }

  else
  {
    v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v128 = COERCE_DOUBLE();
  if (!v175)
  {
    v187 = MEMORY[0x1E69E7CC0];
    goto LABEL_187;
  }

  v1 = 0;
  v216 = v174 & 0xFFFFFFFFFFFFFF8;
  v217 = v174 & 0xC000000000000001;
  v127 = v194 + 16;
  v214 = v175;
  v215 = (v194 + 16);
  v176 = (v194 + 8);
  v177 = (v194 + 16);
  while (2)
  {
    if (v217)
    {
      v178 = MEMORY[0x1BFB111F0](v1, v174);
      v179 = (v1 + 1);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      goto LABEL_180;
    }

    if (v1 >= *(v216 + 16))
    {
      goto LABEL_192;
    }

    v178 = *(v174 + 8 * v1 + 32);

    v179 = (v1 + 1);
    if (!__OFADD__(v1, 1))
    {
LABEL_180:
      v180 = *v177;
      v181 = v207;
      v182 = v210;
      (*v177)(v207, v178 + OBJC_IVAR____TtCC23IntelligentTrackingCore22DKSubjectSelectionTaskP33_A777C2827D6B1189B9150C158268157F8Identity_timeSinceLastIdentified, v210);
      v183 = v206;
      v180(v206, *(v211 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v182);
      sub_1BB6BA744();
      v185 = v184;
      v186 = *v176;
      (*v176)(v183, v182);
      v186(v181, v182);
      if (fabs(v185) >= 10.0)
      {
        *&v128 = COERCE_DOUBLE();
      }

      else
      {
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        sub_1BB6BB424();
        *&v128 = COERCE_DOUBLE(sub_1BB6BB3E4());
      }

      ++v1;
      if (v179 == v214)
      {
        goto LABEL_185;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_185:
  v187 = v218;
  v1 = v211;
LABEL_187:

  *(v1 + v192) = v187;

  return *&v209;
}

uint64_t sub_1BB6848AC(uint64_t a1)
{
  v39 = sub_1BB6BA7F4();
  v3 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v1;
  v5 = *(*(*(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v41 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BB6BB564())
  {

    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v33 = v3;
    v34 = v5;
    v8 = 0;
    v36 = v5 & 0xFFFFFFFFFFFFFF8;
    v37 = v5 & 0xC000000000000001;
    v35 = v5 + 32;
LABEL_6:
    while (2)
    {
      if (v37)
      {
        MEMORY[0x1BFB111F0](v8, v34);
        v9 = __OFADD__(v8++, 1);
        if (!v9)
        {
          goto LABEL_9;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        v12 = v41;
        v7 = MEMORY[0x1E69E7CC0];
        v3 = v33;
        goto LABEL_19;
      }

      if (v8 < *(v36 + 16))
      {

        v9 = __OFADD__(v8++, 1);
        if (v9)
        {
          goto LABEL_16;
        }

LABEL_9:
        v10 = 0;
        v5 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid;
        v11 = *(a1 + 16);
        do
        {
          if (v11 == v10)
          {

            if (v8 == i)
            {
              goto LABEL_17;
            }

            goto LABEL_6;
          }

          sub_1BB6BA844();
          v3 = v10 + 1;
          sub_1BB689900(&qword_1EBC5C298, MEMORY[0x1E69695A8]);
          ++v10;
        }

        while ((sub_1BB6BABE4() & 1) == 0);
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        sub_1BB6BB424();
        sub_1BB6BB3E4();
        if (v8 != i)
        {
          continue;
        }

        goto LABEL_17;
      }

      break;
    }

    __break(1u);
LABEL_30:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_1BB6BB564();
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_32:

    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_32;
  }

LABEL_22:
  v41 = v7;
  result = sub_1BB6BB404();
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_53;
  }

  v15 = 0;
  do
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB111F0](v15, v12);
    }

    else
    {
    }

    ++v15;
    v16 = v39;
    v17 = v38;
    (*(v3 + 16))(v38, *(v40 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v39);
    sub_1BB6989C8(v17, 1);

    (*(v3 + 8))(v17, v16);
    sub_1BB6BB3D4();
    sub_1BB6BB414();
    sub_1BB6BB424();
    sub_1BB6BB3E4();
  }

  while (v13 != v15);

  v18 = v41;
  v7 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v19 = sub_1BB684DF8(v18);

  v20 = v40;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v7;
  }

  *(*(v40 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects) = v21;

  v22 = *(v20 + 48);
  result = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
  if (result)
  {
    v23 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
  }

  else
  {
    v23 = v7;
  }

  if (v23 >> 62)
  {
    v31 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
    v24 = sub_1BB6BB564();
    result = v31;
    if (!v24)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_48;
    }
  }

  if (v24 >= 1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {

      v25 = 0;
      do
      {
        v26 = MEMORY[0x1BFB111F0](v25++, v23);
        v27 = *(v26 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence);
        *(v27 + 24) = 0x3FF0000000000000;

        swift_unknownObjectRelease();
        *(v27 + 16) = 1;
      }

      while (v24 != v25);
    }

    v28 = OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_rankConfidence;
    v29 = 32;
    do
    {
      v30 = *(*(v23 + v29) + v28);
      *(v30 + 16) = 1;
      *(v30 + 24) = 0x3FF0000000000000;
      v29 += 8;
      --v24;
    }

    while (v24);
LABEL_48:
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_1BB684DF8(uint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1BB6BB404();
  if (!v2)
  {
    return v5;
  }

  v3 = a1 + 32;
  type metadata accessor for DKPersonTrackerState(0);
  while (1)
  {
    v3 += 8;
    if (!swift_dynamicCastClass())
    {
      break;
    }

    sub_1BB6BB3D4();
    sub_1BB6BB414();
    sub_1BB6BB424();
    sub_1BB6BB3E4();
    if (!--v2)
    {
      return v5;
    }
  }

  return 0;
}

uint64_t sub_1BB684ED0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v52 - v3;
  v4 = sub_1BB6BA844();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_legacySubjectSelection;
  v21 = *(v0 + 40);
  v20 = *(v0 + 48);

  sub_1BB5D980C(v20, v21);

  v22 = *(v0 + v19);
  v23 = v22[2];
  if (v23)
  {
    (*(v5 + 16))(v18, v23 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v4);
    v24 = *(v5 + 56);
    v24(v18, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(v18, 1, 1, v4);
  }

  v25 = v18;
  v26 = v22[3];
  if (v26)
  {
    v27 = v54;
    (*(v5 + 16))(v54, v26 + OBJC_IVAR____TtCC23IntelligentTrackingCore22LegacySubjectSelection9TrackInfo_uuid, v4);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v27 = v54;
  }

  v24(v27, v28, 1, v4);
  v29 = *(*(*(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v30 = v22[6];
  v31 = *(v30 + 32);

  [v31 lock];
  v57 = *(v30 + 16);
  [v31 unlock];

  v32 = v29;
  if (v29 >> 62)
  {
    result = sub_1BB6BB564();
    v32 = v29;
    v34 = v68;
    if (result)
    {
      goto LABEL_9;
    }

LABEL_30:

    sub_1BB598308(v54, &qword_1EBC5C370);
    return sub_1BB598308(v25, &qword_1EBC5C370);
  }

  result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = v68;
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_9:
  if (result >= 1)
  {
    v35 = 0;
    v62 = v57 - 2;
    v61 = v32 & 0xC000000000000001;
    v59 = (v5 + 48);
    v55 = (v5 + 8);
    v56 = (v5 + 32);
    v65 = v7;
    v66 = v4;
    v63 = v32;
    v64 = v25;
    v60 = result;
    while (1)
    {
      if (v61)
      {
        MEMORY[0x1BFB111F0](v35);
      }

      else
      {
      }

      if (v62 <= 2)
      {
        v39 = v25;
        v40 = v58;
        sub_1BB5982A0(v39, v58, &qword_1EBC5C370);
        v41 = *v59;
        if ((*v59)(v40, 1, v4) == 1)
        {
          v42 = v4;
          sub_1BB598308(v40, &qword_1EBC5C370);
        }

        else
        {
          (*v56)(v34, v40, v4);
          if (sub_1BB6BA814())
          {

            sub_1BB6B95A4(1);

            v43 = sub_1BB6BA7F4();
            v44 = *(*(v43 - 8) + 56);
            v45 = v67;
            v44(v67, 1, 1, v43);

            sub_1BB6ABB40(0x3FF0000000000000, 0, v45, 1.0);

            sub_1BB598308(v45, &qword_1EBC5C050);
            v44(v45, 1, 1, v43);
            v7 = v65;
            v4 = v66;

            sub_1BB6ABB40(0x3FF0000000000000, 0, v45, 1.0);

            v34 = v68;

            sub_1BB598308(v45, &qword_1EBC5C050);
            (*v55)(v34, v4);
            goto LABEL_13;
          }

          v46 = v34;
          v42 = v4;
          (*v55)(v46, v4);
        }

        if (v57 == 4)
        {
          v47 = v42;
          v48 = v53;
          sub_1BB5982A0(v54, v53, &qword_1EBC5C370);
          if (v41(v48, 1, v47) == 1)
          {
            sub_1BB598308(v48, &qword_1EBC5C370);
          }

          else
          {
            (*v56)(v7, v48, v47);
            if (sub_1BB6BA814())
            {

              sub_1BB6B95A4(1);

              v49 = sub_1BB6BA7F4();
              v50 = *(*(v49 - 8) + 56);
              v51 = v67;
              v50(v67, 1, 1, v49);

              sub_1BB6ABB40(0x3FF0000000000000, 0, v51, 1.0);

              sub_1BB598308(v51, &qword_1EBC5C050);
              v50(v51, 1, 1, v49);
              v7 = v65;
              v4 = v66;

              sub_1BB6ABB40(0x3FF0000000000000, 0, v51, 0.5);

              v34 = v68;

              sub_1BB598308(v51, &qword_1EBC5C050);
              (*v55)(v7, v4);
              goto LABEL_13;
            }

            (*v55)(v7, v47);
          }
        }
      }

      sub_1BB6B95A4(0);

      v36 = sub_1BB6BA7F4();
      v37 = *(*(v36 - 8) + 56);
      v69 = v35;
      v38 = v67;
      v37(v67, 1, 1, v36);

      sub_1BB6ABB40(0x3FF0000000000000, 0, v38, 0.0);

      sub_1BB598308(v38, &qword_1EBC5C050);
      v37(v38, 1, 1, v36);
      v7 = v65;
      v4 = v66;

      sub_1BB6ABB40(0x3FF0000000000000, 0, v38, 0.0);
      v35 = v69;

      v34 = v68;

      sub_1BB598308(v38, &qword_1EBC5C050);
LABEL_13:
      ++v35;
      v25 = v64;
      if (v60 == v35)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1BB685938()
{
  v170 = type metadata accessor for DKPersonSelectionFilter.Signals(0);
  MEMORY[0x1EEE9AC00](v170);
  v180 = (&v160 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v175 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v174 = &v160 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v176 = &v160 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v160 - v9;
  v182 = type metadata accessor for DKMotion3();
  v11 = *(v182 - 8);
  MEMORY[0x1EEE9AC00](v182);
  v181 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v160 - v14;
  v186 = type metadata accessor for DKCamera();
  v16 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v185 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v179 = &v160 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v165 = &v160 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v164 = &v160 - v24;
  v29 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v160 - v26;
  v198 = v0;
  v31 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_issModel);
  if (!v31)
  {
    return;
  }

  v172 = v16;
  v177 = v11;
  v167 = v28;
  v32 = v198;
  v33 = v198[6] + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
  v34 = v27;
  v196 = *(v27 + 16);
  v197 = v27 + 16;
  v196(&v160 - v26, v33, v18, v29);
  v168 = v31;

  sub_1BB6BA7B4();
  v36 = v35;
  v166 = v34;
  v194 = *(v34 + 8);
  v195 = v34 + 8;
  v194(v30, v18);
  type metadata accessor for DKISSDetections();
  inited = swift_initStackObject();
  *(inited + 24) = MEMORY[0x1E69E7CC0];
  v38 = inited + 24;
  v39 = *(*(v32[5] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  if (v39 >> 62)
  {
    goto LABEL_61;
  }

  v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v178 = v10;
    v173 = v15;
    v192 = v18;
    v193 = v30;
    if (v40)
    {
      if (v40 < 1)
      {
        __break(1u);
LABEL_126:
        __break(1u);
        return;
      }

      v171 = inited;
      v187 = v39 & 0xC000000000000001;

      v41 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      v188 = v40;
      v184 = v38;
      v183 = v39;
      do
      {
        if (v187)
        {
          v43 = MEMORY[0x1BFB111F0](v41, v39);
        }

        else
        {
          v43 = v39[v41 + 4];
        }

        v44 = *(v43 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personPoseFilter);
        (v196)(v30, v198[6] + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v18);

        sub_1BB61A97C(v30);
        v194(v30, v18);
        v45 = *(v44 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonMotionFilter_lastState);

        if (v45)
        {
          v46 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRect);
          v190 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRect + 16);
          v191 = v46;
          v189 = *(v43 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId);
          v47 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceYaw);
          v48 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceYaw + 8);
          v49 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_facePitch);
          v50 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_facePitch + 8);
          v51 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRoll);
          v52 = *(v43 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyKeypoints);
          v53 = *(v45 + OBJC_IVAR____TtCC23IntelligentTrackingCore20DKPersonMotionFilter5State_faceRoll + 8);
          v54 = *(v43 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_speakingFilter);
          v55 = *(v54 + 16);
          if (*(v55 + 33))
          {
            if (*(v55 + 32))
            {
              v56 = atan2(*(v55 + 48), *(v55 + 56));
            }

            else
            {
              v56 = *(v55 + 40);
            }
          }

          else
          {
            v56 = *(v54 + 24);
          }

          v57 = *(v43 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lookingFilter);
          v58 = *(v57 + 16);
          if (*(v58 + 33) == 1)
          {
            if (*(v58 + 32))
            {
              v59 = atan2(*(v58 + 48), *(v58 + 56));
            }

            else
            {
              v59 = *(v58 + 40);
            }
          }

          else
          {
            v59 = *(v57 + 24);
          }

          if (v48)
          {
            v60 = 0;
          }

          else
          {
            v60 = v47;
          }

          if (v50)
          {
            v61 = 0;
          }

          else
          {
            v61 = v49;
          }

          type metadata accessor for DKISSDetection();
          v62 = swift_allocObject();
          *(v62 + 16) = v36;
          *(v62 + 40) = v190;
          *(v62 + 24) = v191;
          *(v62 + 56) = v189;
          *(v62 + 64) = 0;
          *(v62 + 72) = 0;
          *(v62 + 80) = v60;
          *(v62 + 88) = 0;
          *(v62 + 96) = v61;
          *(v62 + 104) = 0;
          *(v62 + 112) = v51;
          *(v62 + 120) = v53;
          *(v62 + 128) = v52;
          *(v62 + 136) = v56;
          *(v62 + 144) = 0;
          *(v62 + 152) = v59;
          *(v62 + 160) = 0;

          v64 = v184;
          MEMORY[0x1BFB10C80](v63);
          if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();

          v42 = *v64;
          v18 = v192;
          v30 = v193;
          v39 = v183;
        }

        else
        {
        }

        ++v41;
      }

      while (v188 != v41);
      v162 = v42;

      inited = v171;
    }

    else
    {
      v162 = MEMORY[0x1E69E7CC0];
    }

    v65 = v198;
    v10 = sub_1BB5E4514(inited, *(v198[5] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_runSubjectSelection), v36);
    v66 = sub_1BB5B12D0(MEMORY[0x1E69E7CC0]);
    v67 = *(*(v65[5] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
    if (v67 >> 62)
    {
      v86 = *(*(v65[5] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
      v38 = sub_1BB6BB564();
      v67 = v86;
      if (!v38)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v38 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_63;
      }
    }

    v184 = v66;
    v30 = v10 + 64;
    *&v191 = v67 & 0xC000000000000001;
    v189 = v67 & 0xFFFFFFFFFFFFFF8;
    v188 = v67 + 32;
    *&v190 = v67;

    v39 = 0;
    v15 = 24;
LABEL_37:
    if (v191)
    {
      inited = MEMORY[0x1BFB111F0](v39, v190);
      v68 = inited;
      v69 = __OFADD__(v39, 1);
      v39 = (v39 + 1);
      if (!v69)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    if (v39 < *(v189 + 16))
    {
      break;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    v85 = inited;
    v40 = sub_1BB6BB564();
    inited = v85;
  }

  v68 = *(v188 + 8 * v39);

  v69 = __OFADD__(v39, 1);
  v39 = (v39 + 1);
  if (v69)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_43:
  v70 = 0;
  v71 = 1 << v10[32];
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & *(v10 + 8);
  v74 = (v71 + 63) >> 6;
  do
  {
    if (!v73)
    {
      while (1)
      {
        v75 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v75 >= v74)
        {
          break;
        }

        v73 = *&v30[8 * v75];
        ++v70;
        if (v73)
        {
          v70 = v75;
          goto LABEL_52;
        }
      }

      v83 = sub_1BB5B11F0(&unk_1F3A48680);
      v84 = v193;
      (v196)(v193, v198[6] + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v18);
      sub_1BB69834C(v83, v84);

      inited = (v194)(v84, v18);
      if (v39 != v38)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

LABEL_52:
    v76 = __clz(__rbit64(v73));
    v73 &= v73 - 1;
    v77 = v76 | (v70 << 6);
    v78 = *(*(v10 + 7) + 24 * v77);
  }

  while (v78 < 0 || v78 != *(v68 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId));
  v187 = *(*(v10 + 6) + 8 * v77);
  v79 = v193;
  (v196)(v193, v198[6] + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v192);

  sub_1BB69834C(v80, v79);
  v18 = v192;

  v194(v79, v18);
  v81 = v184;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v200 = v81;
  sub_1BB599F34(v187, v78, isUniquelyReferenced_nonNull_native);

  v184 = v200;
  if (v39 != v38)
  {
    goto LABEL_37;
  }

LABEL_57:

  v66 = v184;
LABEL_63:

  v87 = *(*(v198[5] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v88 = v173;
  if (v87 >> 62)
  {
    goto LABEL_124;
  }

  v89 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_65:
  if (v89)
  {
    if (v89 >= 1)
    {
      v184 = v66;
      v161 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_useFramingFeedback;
      v90 = v87 & 0xC000000000000001;
      v91 = (v172 + 48);
      v183 = (v177 + 48);
      *&v191 = v166 + 56;
      v169 = (v166 + 32);
      v163 = (v166 + 48);

      v92 = 0;
      *&v190 = v87;
      v189 = v89;
      v188 = v87 & 0xC000000000000001;
      v187 = v91;
      while (1)
      {
        if (v90)
        {
          v93 = MEMORY[0x1BFB111F0](v92, v87);
        }

        else
        {
          v93 = *(v87 + 8 * v92 + 32);
        }

        v94 = v198[6];
        sub_1BB5982A0(v94 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v88, &qword_1EBC5BCB0);
        if ((*v91)(v88, 1, v186) == 1)
        {

          sub_1BB598308(v88, &qword_1EBC5BCB0);
        }

        else
        {
          v95 = v185;
          sub_1BB5D80BC(v88, v185, type metadata accessor for DKCamera);
          v96 = v94 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
          v97 = v192;
          v98 = v193;
          (v196)(v193, v96, v192);
          v99 = sub_1BB6989C8(v98, 0);
          v194(v98, v97);
          if (v99)
          {
            v100 = v178;
            sub_1BB5982A0(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, v178, &qword_1EBC5BCB8);
            v66 = v182;
            if ((*v183)(v100, 1, v182) == 1)
            {
              sub_1BB6898A0(v185, type metadata accessor for DKCamera);

              sub_1BB598308(v100, &qword_1EBC5BCB8);
            }

            else
            {
              v87 = v181;
              sub_1BB5D80BC(v100, v181, type metadata accessor for DKMotion3);
              v101 = *(v87 + *(v66 + 20));
              if (*(v101 + 16) < 3uLL)
              {
                __break(1u);
LABEL_122:
                __break(1u);
LABEL_123:
                __break(1u);
LABEL_124:
                v89 = sub_1BB6BB564();
                goto LABEL_65;
              }

              v177 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
              v66 = *(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
              v102 = exp(-(*(v101 + 48) * *(v101 + 48)));
              v103 = *v191;
              v88 = v176;
              (*v191)(v176, 1, 1, v192);

              sub_1BB6ABB40(0, 1, v88, v102);

              sub_1BB598308(v88, &qword_1EBC5C050);
              v87 = *(v198[5] + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_unselectedTracks);
              v104 = *(v87 + 16);
              v171 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId;
              v172 = v103;
              if (v104 && (v105 = sub_1BB6A1004(*(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId)), (v106 & 1) != 0) && (v107 = *(v87 + 56), v108 = v166, v109 = v165, v66 = v192, v110 = v196, v88 = v197, (v196)(v165, v107 + *(v166 + 72) * v105, v192), v111 = v164, (*(v108 + 32))(v164, v109, v66), v112 = v193, v110(v193, v99 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_time, v66), sub_1BB6BA744(), v114 = v113, v115 = v112, v116 = v194, v87 = v195, v194(v115, v66), v117 = v111, v103 = v172, v116(v117, v66), v114 < *(v198[4] + 168)) && *(v198 + v161) == 1)
              {
                v118 = *(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personSelectionFilter);
                *(v118 + 49) = 0;
                v119 = *(v118 + 16);
                *(v119 + 33) = 0;
                v120 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;

                sub_1BB598308(v119 + v120, &qword_1EBC5C050);
                (v103)(v119 + v120, 1, 1, v192);

                v88 = v173;
              }

              else
              {
                if (*(v101 + 16) < 3uLL)
                {
                  goto LABEL_122;
                }

                v121 = *(v181 + *(v182 + 24));
                if (*(v121 + 16) < 3uLL)
                {
                  goto LABEL_123;
                }

                v122 = *(*(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_speakingConfidence) + 24);
                v123 = *(*(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_lookingConfidence) + 24);
                v124 = *(v101 + 48);
                v125 = *(v121 + 48);
                v126 = *(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
                if (v126)
                {
                  v127 = v174;
                  v128 = v192;
                  (v196)(v174, v126 + qword_1EBC5EE30, v192);
                  (v103)(v127, 0, 1, v128);
                  v129 = v169;
                  (*v169)(v179, v127, v128);
                  v130 = v185;
                }

                else
                {
                  v131 = v174;
                  v132 = v192;
                  (v103)(v174, 1, 1, v192);
                  sub_1BB6BA724();
                  v133 = (*v163)(v131, 1, v132);
                  v130 = v185;
                  v129 = v169;
                  if (v133 != 1)
                  {
                    sub_1BB598308(v174, &qword_1EBC5C050);
                  }
                }

                v134 = *(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_bodyTracker);
                if (v134)
                {
                  v135 = v175;
                  v136 = v192;
                  (v196)(v175, v134 + qword_1EBC5EE30, v192);
                  (v103)(v135, 0, 1, v136);
                  v137 = v167;
                  (*v129)(v167, v135, v136);
                }

                else
                {
                  v138 = v175;
                  v136 = v192;
                  (v103)(v175, 1, 1, v192);
                  v137 = v167;
                  sub_1BB6BA724();
                  if ((*v163)(v138, 1, v136) != 1)
                  {
                    sub_1BB598308(v175, &qword_1EBC5C050);
                  }
                }

                v139 = *(*(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_saliencyConfidence) + 24);
                v140 = *(v130 + *(v186 + 36));
                v141 = v180;
                *v180 = v122;
                *(v141 + 1) = v123;
                *(v141 + 2) = v124;
                *(v141 + 3) = v125;
                v142 = v170;
                v143 = *v129;
                (*v129)(v141 + *(v170 + 32), v179, v136);
                v143(v141 + v142[9], v137, v136);
                *(v141 + v142[10]) = v139;
                *(v141 + v142[11]) = v140;
                v144 = *(*(v93 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personSelectionFilter) + 137);
                if (v144 == 1)
                {

                  v146 = sub_1BB6B96E8(v180);
                }

                else
                {
                  if (v144 == 2)
                  {
                    v145 = v176;
                    (v172)(v176, 1, 1, v192);

                    sub_1BB6ABB40(0, 1, v145, v139);

                    sub_1BB598308(v145, &qword_1EBC5C050);
                  }

                  v146 = 0;
                }

                v88 = v173;
                v147 = v184;
                if (v184[2])
                {
                  v148 = sub_1BB6A1004(*(v93 + v171));
                  if (v149 & v146)
                  {
                    sub_1BB5E5690(*(v147[7] + 8 * v148));
                  }
                }

                sub_1BB6898A0(v180, type metadata accessor for DKPersonSelectionFilter.Signals);
              }

              v202 = 2;
              v200 = 0;
              v201 = 0xE000000000000000;
              sub_1BB6BB2F4();
              MEMORY[0x1BFB10B60](0x3D6E6F73726550, 0xE700000000000000);
              v199 = *(v99 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId);
              v150 = sub_1BB6BB794();
              MEMORY[0x1BFB10B60](v150);

              MEMORY[0x1BFB10B60](0x6E696B6165707320, 0xEA00000000003D67);
              sub_1BB6BAFB4();
              MEMORY[0x1BFB10B60](0x676E696B6F6F6C20, 0xE90000000000003DLL);
              sub_1BB6BAFB4();
              MEMORY[0x1BFB10B60](0x636E65696C617320, 0xEB00000000283D79);
              v151 = *(sub_1BB5BAB20() + 16);

              if (v151)
              {
                v152 = 1702195828;
              }

              else
              {
                v152 = 0x65736C6166;
              }

              if (v151)
              {
                v153 = 0xE400000000000000;
              }

              else
              {
                v153 = 0xE500000000000000;
              }

              MEMORY[0x1BFB10B60](v152, v153);

              MEMORY[0x1BFB10B60](44, 0xE100000000000000);
              sub_1BB5BAB20();

              sub_1BB6BAFB4();
              MEMORY[0x1BFB10B60](0x6E696B6E61722029, 0xEB00000000283D67);
              v154 = *(sub_1BB5BAB20() + 16);

              if (v154)
              {
                v155 = 1702195828;
              }

              else
              {
                v155 = 0x65736C6166;
              }

              if (v154)
              {
                v156 = 0xE400000000000000;
              }

              else
              {
                v156 = 0xE500000000000000;
              }

              MEMORY[0x1BFB10B60](v155, v156);

              MEMORY[0x1BFB10B60](44, 0xE100000000000000);
              sub_1BB5BAB20();

              sub_1BB6BAFB4();
              MEMORY[0x1BFB10B60](41, 0xE100000000000000);
              v157 = v200;
              v158 = v201;
              v159 = sub_1BB6BB064();
              _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v202, v157, v158, v159);

              sub_1BB6898A0(v185, type metadata accessor for DKCamera);
              sub_1BB6898A0(v181, type metadata accessor for DKMotion3);
            }
          }

          else
          {
            sub_1BB6898A0(v95, type metadata accessor for DKCamera);
          }

          v87 = v190;
          v89 = v189;
          v90 = v188;
          v91 = v187;
        }

        if (v89 == ++v92)
        {

          goto LABEL_119;
        }
      }
    }

    goto LABEL_126;
  }

LABEL_119:
}

unint64_t sub_1BB6872C0(unint64_t a1)
{
  result = *(*(*(v1 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    if (a1 >> 62)
    {
      v19 = result;
      v5 = sub_1BB6BB564();
      result = v19;
    }

    else
    {
      v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = result & 0xC000000000000001;
    v20 = result + 32;
    v21 = result & 0xFFFFFFFFFFFFFF8;
    v22 = result;

    v6 = 0;
    v23 = v4;
    while (2)
    {
      if (v24)
      {
        result = MEMORY[0x1BFB111F0](v6, v22);
        v11 = result;
        v12 = __OFADD__(v6++, 1);
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_28;
        }

        v11 = *(v20 + 8 * v6);

        v12 = __OFADD__(v6++, 1);
        if (!v12)
        {
LABEL_13:
          v13 = 0;
          v14 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId;
          while (v5 != v13)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1BFB111F0](v13, a1);
              if (__OFADD__(v13, 1))
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_27;
              }

              if (__OFADD__(v13, 1))
              {
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }
            }

            v16 = *(v11 + v14);
            v17 = *(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_trackerId);

            ++v13;
            if (v16 == v17)
            {
              v7 = *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_saliencyFilter);

              *(v7 + 49) = 0;
              v8 = *(v7 + 16);

              *(v8 + 33) = 0;
              v9 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
              sub_1BB598308(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, &qword_1EBC5C050);
              v10 = sub_1BB6BA7F4();
              (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
              break;
            }
          }

          if (v6 != v23)
          {
            continue;
          }

LABEL_23:
        }
      }

      break;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v18 = result;
    v4 = sub_1BB6BB564();
    result = v18;
  }

  return result;
}

uint64_t sub_1BB687574(uint64_t a1)
{
  v110 = sub_1BB6BAA34();
  v5 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v100 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v100 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v100 - v16;
  v17 = sub_1BB6BA844();
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v109 = &v100 - v21;
  v22 = *(a1 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker);
  v115 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers;
  v116 = v22;
  v23 = *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  v119 = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
LABEL_42:
    v24 = sub_1BB6BB564();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v113 = v12;
  v106 = v7;
  v108 = v5;

  if (!v24)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v30 = v117;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_32;
  }

  v114 = v1;
  v111 = v18;
  v112 = v17;
  v7 = 0;
  v17 = (v23 & 0xC000000000000001);
  v12 = (v23 & 0xFFFFFFFFFFFFFF8);
  v3 = &OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personSelectionFilter;
  while (!v17)
  {
    if (v7 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v18 = *(v23 + 8 * v7 + 32);

    v5 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_28;
    }

LABEL_11:
    v1 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personSelectionFilter);
    v25 = *(v1 + 16);
    if (*(v25 + 33) == 1)
    {
      if (*(v25 + 32))
      {
        v26 = atan2(*(v25 + 48), *(v25 + 56));
      }

      else
      {
        v26 = *(v25 + 40);
      }
    }

    else
    {
      v26 = *(v1 + 24);
    }

    v27 = *(v1 + 32);
    if (*(v1 + 48))
    {
      v28 = (v1 + 49);
      if (v27 < v26)
      {
        goto LABEL_21;
      }

LABEL_5:
      *v28 = 0;
      goto LABEL_6;
    }

    if (v27 < v26)
    {
      v28 = (v1 + 49);
LABEL_21:
      *v28 = 1;
LABEL_22:
      v1 = &v119;
      sub_1BB6BB3D4();
      v2 = *(v119 + 16);
      sub_1BB6BB414();
      sub_1BB6BB424();
      sub_1BB6BB3E4();
      goto LABEL_7;
    }

    v28 = (v1 + 49);
    if (v26 < *(v1 + 40))
    {
      goto LABEL_5;
    }

    if (*v28)
    {
      goto LABEL_22;
    }

LABEL_6:

LABEL_7:
    ++v7;
    if (v5 == v24)
    {
      goto LABEL_29;
    }
  }

  v18 = MEMORY[0x1BFB111F0](v7, v23);
  v5 = (v7 + 1);
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_11;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  v29 = v119;
  v18 = v111;
  v17 = v112;
  v1 = v114;
  v30 = v117;
  if (v119 < 0)
  {
LABEL_43:
    if (!sub_1BB6BB564())
    {
      goto LABEL_44;
    }

LABEL_34:

    v119 = sub_1BB5CA49C(v31);
    sub_1BB688B7C(&v119);

    v32 = v119;
    v117 = v119;
    if ((v119 & 0x8000000000000000) == 0 && (v119 & 0x4000000000000000) == 0)
    {
      v33 = v113;
      if (*(v119 + 16))
      {
        goto LABEL_37;
      }

LABEL_56:
      v54 = *(v18 + 56);
      v18 += 56;
      v54(v33, 1, 1, v17);
LABEL_57:
      v55 = (v1 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_savedHighestRankPersonUUID);
      v56 = v33;
      goto LABEL_73;
    }

    v53 = sub_1BB6BB564();
    v33 = v113;
    if (!v53)
    {
      goto LABEL_56;
    }

LABEL_37:
    if ((v32 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1BFB111F0](0, v32);
      (*(v18 + 16))(v33, v57 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v17);
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    if (*(v32 + 16))
    {
      (*(v18 + 16))(v33, *(v32 + 32) + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v17);
LABEL_40:
      v34 = *(v18 + 56);
      v18 += 56;
      v34(v33, 0, 1, v17);
      goto LABEL_57;
    }

    __break(1u);
LABEL_60:
    v58 = sub_1BB6BB564();
    v33 = v107;
    if (!v58)
    {
      goto LABEL_61;
    }

LABEL_48:

    v111 = v18;
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_130;
    }

    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *(v2 + 32);

      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_132;
  }

LABEL_32:
  if ((v29 & 0x4000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (*(v29 + 16))
  {
    goto LABEL_34;
  }

LABEL_44:
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_savedHighestRankPersonUUID;
  sub_1BB5982A0(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_savedHighestRankPersonUUID, v30, &qword_1EBC5C370);
  if ((*(v18 + 48))(v30, 1, v17) == 1)
  {
    sub_1BB598308(v30, &qword_1EBC5C370);
    v32 = 0;
  }

  else
  {
    v35 = v109;
    v36 = (*(v18 + 32))(v109, v30, v17);
    MEMORY[0x1EEE9AC00](v36);
    *(&v100 - 2) = v35;

    v32 = 0;
    v37 = sub_1BB5BFED8(sub_1BB5C912C, &v100 - 4, v23);
    v2 = v37;
    if (v37 >> 62)
    {
      goto LABEL_60;
    }

    v33 = v107;
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

LABEL_61:

    (*(v18 + 8))(v109, v17);
  }

  v119 = sub_1BB5CA49C(v59);
  sub_1BB688B7C(&v119);
  if (v32)
  {
LABEL_132:

    __break(1u);
    return result;
  }

  v33 = v119;
  if (v119 < 0 || (v119 & 0x4000000000000000) != 0)
  {
    goto LABEL_126;
  }

  if (!*(v119 + 16))
  {
    goto LABEL_127;
  }

  while (2)
  {

    v112 = v17;
    v113 = v3;
    v114 = v1;
    if ((v33 & 0xC000000000000001) != 0)
    {
      v60 = v18;
      v61 = MEMORY[0x1BFB111F0](0, v33);
    }

    else
    {
      if (!*(v33 + 16))
      {
        __break(1u);
LABEL_130:
        v38 = MEMORY[0x1BFB111F0](0, v2);
LABEL_51:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1BB6C85E0;
        v117 = v39;
        *(v39 + 32) = v38;
        v40 = v108;
        v2 = v110;
        (*(v108 + 2))(v33, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger, v110);

        v1 = sub_1BB6BAA14();
        v41 = sub_1BB6BB064();
        if (os_log_type_enabled(v1, v41))
        {
          v42 = swift_slowAlloc();
          v106 = v42;
          v114 = swift_slowAlloc();
          v119 = v114;
          *v42 = 136315138;
          v43 = v111;
          v44 = *(v111 + 16);
          v113 = v1;
          v45 = v104;
          v44(v104, v38 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v17);
          sub_1BB689900(&qword_1EBC5E330, MEMORY[0x1E69695A8]);
          v105 = sub_1BB6BB794();
          v47 = v46;
          v48 = *(v43 + 8);
          LODWORD(v111) = v41;
          v3 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v48(v45, v17);
          v29 = v48;
          v49 = sub_1BB6A0A5C(v105, v47, &v119);

          v50 = v106;
          *(v106 + 1) = v49;
          v33 = v113;
          v1 = v50;
          _os_log_impl(&dword_1BB58A000, v113, v111, "ISS selected no subject, select previously selected person %s", v50, 0xCu);
          v2 = v114;
          __swift_destroy_boxed_opaque_existential_1(v114);
          MEMORY[0x1BFB122F0](v2, -1, -1);
          MEMORY[0x1BFB122F0](v1, -1, -1);

          v51 = *(v40 + 1);
          v18 = (v40 + 8);
          v51(v107, v110);
        }

        else
        {

          v52 = *(v40 + 1);
          v18 = (v40 + 8);
          v52(v33, v2);
          v29 = *(v111 + 8);
          v3 = (v111 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        }

        (v29)(v109, v17);
        goto LABEL_74;
      }

      v60 = v18;
      v61 = *(v33 + 32);
    }

    v62 = v110;

    sub_1BB6B95A4(1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_1BB6C85E0;
    *(v63 + 32) = v61;
    v64 = v108;
    v2 = v106;
    (*(v108 + 2))(v106, v114 + OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger, v62);

    v65 = sub_1BB6BAA14();
    LODWORD(v109) = sub_1BB6BB064();
    v66 = os_log_type_enabled(v65, v109);
    v117 = v63;
    if (v66)
    {
      v67 = swift_slowAlloc();
      v102 = v67;
      v103 = swift_slowAlloc();
      v119 = v103;
      *v67 = 136315138;
      v68 = v60;
      v107 = *(v60 + 16);
      v29 = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v101 = v65;
      v69 = v104;
      v33 = v112;
      (v107)(v104, v61 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v112);
      sub_1BB689900(&qword_1EBC5E330, MEMORY[0x1E69695A8]);
      v70 = sub_1BB6BB794();
      v72 = v71;
      (*(v68 + 8))(v69, v33);
      v73 = sub_1BB6A0A5C(v70, v72, &v119);

      v74 = v102;
      *(v102 + 1) = v73;
      v3 = v101;
      v75 = v74;
      _os_log_impl(&dword_1BB58A000, v101, v109, "ISS selected no subject, select new highest ranked person: %s", v74, 0xCu);
      v2 = v103;
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x1BFB122F0](v2, -1, -1);
      MEMORY[0x1BFB122F0](v75, -1, -1);

      (*(v64 + 1))(v106, v110);
      v76 = v107;
    }

    else
    {

      (*(v64 + 1))(v2, v62);
      v68 = v60;
      v76 = *(v60 + 16);
      v29 = (v60 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v33 = v112;
    }

    v1 = v105;
    v76(v105, v61 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_uuid, v33);

    v77 = *(v68 + 56);
    v18 = v68 + 56;
    v77(v1, 0, 1, v33);
    v55 = v113 + v114;
    v56 = v1;
LABEL_73:
    sub_1BB689830(v56, v55);
LABEL_74:
    v17 = &OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
    if (v24)
    {
      if (v24 >= 1)
      {
        v1 = 0;
        v33 = -1;
        v29 = &unk_1BB6BE540;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1BFB111F0](v1, v23);
          }

          else
          {
            v18 = *(v23 + 8 * v1 + 32);
          }

          v80 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
          v81 = *(v80 + 16);
          if (*(v81 + 33) == 1)
          {
            if (*(v81 + 32))
            {
              v78 = atan2(*(v81 + 48), *(v81 + 56));
            }

            else
            {
              v78 = *(v81 + 40);
            }
          }

          else
          {
            v78 = *(v80 + 24);
          }

          ++v1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420);
          v79 = swift_allocObject();
          *(v79 + 16) = -1;
          *(v79 + 24) = v78;
          v2 = *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence);
          *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence) = v79;
        }

        while (v24 != v1);
        goto LABEL_86;
      }

      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

LABEL_86:

    v3 = v117;
    if (v117 >> 62)
    {
      goto LABEL_119;
    }

    v23 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      while (v23 >= 1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v82 = 0;
          v1 = &qword_1EBC5C420;
          v33 = 0x7FFFFFFFFFFFFFFELL;
          v24 = &unk_1BB6BE540;
          while (1)
          {
            v29 = MEMORY[0x1BFB111F0](v82, v3);
            v83 = *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
            v84 = *(v83 + 16);
            if (*(v84 + 33) == 1)
            {
              v85 = (*(v84 + 32) & 1) != 0 ? atan2(*(v84 + 48), *(v84 + 56)) : *(v84 + 40);
            }

            else
            {
              v85 = *(v83 + 24);
            }

            v2 = v82 + 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420);
            v86 = swift_allocObject();
            *(v86 + 16) = v82 + 1;
            *(v86 + 24) = v85;
            v18 = *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence);
            *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence) = v86;
            swift_unknownObjectRelease();

            if (v82 == 0x7FFFFFFFFFFFFFFELL)
            {
              break;
            }

            ++v82;
            if (v23 == v2)
            {
              goto LABEL_107;
            }
          }

          __break(1u);
        }

        else
        {
          v24 = 4;
          v1 = &qword_1EBC5C420;
          v33 = 0x7FFFFFFFFFFFFFFELL;
          while (1)
          {
            v29 = *(v3 + 8 * v24);
            v87 = *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
            v88 = *(v87 + 16);
            if (*(v88 + 33) == 1)
            {
              v89 = (*(v88 + 32) & 1) != 0 ? atan2(*(v88 + 48), *(v88 + 56)) : *(v88 + 40);
            }

            else
            {
              v89 = *(v87 + 24);
            }

            v18 = v24 - 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C420);
            v90 = swift_allocObject();
            *(v90 + 16) = v24 - 3;
            *(v90 + 24) = v89;
            *(v29 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence) = v90;

            if (v24 == 0x8000000000000002)
            {
              break;
            }

            ++v24;
            if (v18 == v23)
            {
              goto LABEL_107;
            }
          }
        }

        __break(1u);
LABEL_119:
        v23 = sub_1BB6BB564();
        if (!v23)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_124;
    }

LABEL_107:

    v23 = *(v116 + v115);
    if (v23 >> 62)
    {
      result = sub_1BB6BB564();
      v92 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v92 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v92)
      {
        return result;
      }
    }

    if (v92 < 1)
    {
LABEL_125:
      __break(1u);
LABEL_126:
      if (sub_1BB6BB564())
      {
        continue;
      }

LABEL_127:
      v117 = v29;

      goto LABEL_74;
    }

    break;
  }

  v93 = 0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v94 = MEMORY[0x1BFB111F0](v93, v23);
    }

    else
    {
      v94 = *(v23 + 8 * v93 + 32);
    }

    ++v93;
    v121[0] = 2;
    v119 = 0;
    v120 = 0xE000000000000000;
    sub_1BB6BB2F4();

    v119 = 0x3D6E6F73726550;
    v120 = 0xE700000000000000;
    v118 = *(v94 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId);
    v95 = sub_1BB6BB794();
    MEMORY[0x1BFB10B60](v95);

    MEMORY[0x1BFB10B60](0x3D6B6E617220, 0xE600000000000000);
    v118 = *(*(v94 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_rankConfidence) + 16);
    v96 = sub_1BB6BB794();
    MEMORY[0x1BFB10B60](v96);

    v97 = v119;
    v98 = v120;
    v99 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(v121, v97, v98, v99);
  }

  while (v92 != v93);
}

BOOL sub_1BB688674(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
  v4 = *(*a1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
  v5 = *(v4 + 16);
  if (*(v5 + 33) == 1)
  {
    if (*(v5 + 32))
    {
      v6 = atan2(*(v5 + 48), *(v5 + 56));
    }

    else
    {
      v6 = *(v5 + 40);
    }
  }

  else
  {
    v6 = *(v4 + 24);
  }

  v7 = *(v2 + v3);
  v8 = *(v7 + 16);
  if (*(v8 + 33) == 1)
  {
    if (*(v8 + 32))
    {
      v9 = atan2(*(v8 + 48), *(v8 + 56));
    }

    else
    {
      v9 = *(v8 + 40);
    }
  }

  else
  {
    v9 = *(v7 + 24);
  }

  return v9 < v6;
}

uint64_t sub_1BB688738()
{

  sub_1BB5B34AC(*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest + 8), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest + 16));

  return sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_savedHighestRankPersonUUID, &qword_1EBC5C370);
}

uint64_t sub_1BB6887C4()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BB5B34AC(*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest + 8), *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_subjectSelectionRequest + 16));

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore22DKSubjectSelectionTask_savedHighestRankPersonUUID, &qword_1EBC5C370);
  return v0;
}

uint64_t sub_1BB6888C0()
{
  sub_1BB6887C4();

  return swift_deallocClassInstance();
}

void sub_1BB688940()
{
  sub_1BB688A24();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BB688A24()
{
  if (!qword_1EBC5C818)
  {
    sub_1BB6BA844();
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5C818);
    }
  }
}

uint64_t sub_1BB688AA4()
{
  result = sub_1BB6BA844();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BB688B7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BB695894(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BB688BF8(v6);
  return sub_1BB6BB3E4();
}

void sub_1BB688BF8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BB6BB784();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DKPersonTracker();
        v6 = sub_1BB6BAE94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1BB688E40(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BB688CFC(0, v2, 1, a1);
  }
}

void sub_1BB688CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v19 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
      v12 = *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
      v13 = *(v12 + 16);
      if (*(v13 + 33) == 1)
      {
        v14 = (*(v13 + 32) & 1) != 0 ? atan2(*(v13 + 48), *(v13 + 56)) : *(v13 + 40);
      }

      else
      {
        v14 = *(v12 + 24);
      }

      v15 = *(v10 + v11);
      v16 = *(v15 + 16);
      if (*(v16 + 33) == 1)
      {
        if (*(v16 + 32))
        {
          if (atan2(*(v16 + 48), *(v16 + 56)) >= v14)
          {
            goto LABEL_4;
          }
        }

        else if (*(v16 + 40) >= v14)
        {
          goto LABEL_4;
        }
      }

      else if (*(v15 + 24) >= v14)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        break;
      }

      *v6 = v8;
      v6[1] = v10;
      --v6;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v19 + 1;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1BB688E40(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_113;
    }

    goto LABEL_143;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v19 = v12;
    }

    else
    {
      v13 = *v7;
      v14 = *(*v7 + 8 * v12);
      v108 = *(*v7 + 8 * v11);
      v109 = v14;
      v15 = sub_1BB688674(&v109, &v108);
      if (v6)
      {
        goto LABEL_121;
      }

      v16 = v15;
      v5 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
      v17 = v11 + 2;
      v101 = v11;
      v7 = (8 * v11);
      v18 = (v13 + 8 * v11 + 16);
      v19 = v8;
      while (v19 != v17)
      {
        v21 = *(v18 - 1);
        v22 = *(*v18 + v5);
        v23 = *(v22 + 16);
        if (*(v23 + 33) == 1)
        {
          if (*(v23 + 32))
          {
            v24 = atan2(*(v23 + 48), *(v23 + 56));
          }

          else
          {
            v24 = *(v23 + 40);
          }
        }

        else
        {
          v24 = *(v22 + 24);
        }

        v25 = *(v21 + v5);
        v26 = *(v25 + 16);
        if (*(v26 + 33) == 1)
        {
          v19 = v8;
          if (*(v26 + 32))
          {
            v20 = atan2(*(v26 + 48), *(v26 + 56));
          }

          else
          {
            v20 = *(v26 + 40);
          }
        }

        else
        {
          v20 = *(v25 + 24);
          v19 = v8;
        }

        ++v17;
        ++v18;
        if (((v16 ^ (v20 >= v24)) & 1) == 0)
        {
          v19 = v17 - 1;
          break;
        }
      }

      v11 = v101;
      if (v16)
      {
        if (v19 < v101)
        {
          goto LABEL_142;
        }

        if (v101 < v19)
        {
          v27 = 8 * v19 - 8;
          v28 = v19;
          v29 = v101;
          do
          {
            if (v29 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_146;
              }

              v31 = *(v7 + v30);
              *(v7 + v30) = *(v30 + v27);
              *(v30 + v27) = v31;
            }

            ++v29;
            v27 -= 8;
            ++v7;
          }

          while (v29 < v28);
        }
      }

      v7 = a3;
    }

    v32 = v7[1];
    if (v19 >= v32)
    {
      goto LABEL_39;
    }

    if (__OFSUB__(v19, v11))
    {
      goto LABEL_139;
    }

    if (v19 - v11 >= a4)
    {
LABEL_39:
      v34 = v19;
      if (v19 < v11)
      {
        goto LABEL_138;
      }

      goto LABEL_40;
    }

    if (__OFADD__(v11, a4))
    {
      goto LABEL_140;
    }

    if (v11 + a4 >= v32)
    {
      v33 = v7[1];
    }

    else
    {
      v33 = v11 + a4;
    }

    if (v33 < v11)
    {
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      v10 = sub_1BB693A54(v10);
LABEL_113:
      v110 = v10;
      v94 = *(v10 + 2);
      if (v94 >= 2)
      {
        do
        {
          v95 = *v7;
          if (!*v7)
          {
            goto LABEL_147;
          }

          v7 = (v94 - 1);
          v96 = *&v10[16 * v94];
          v97 = *&v10[16 * v94 + 24];
          sub_1BB68950C((v95 + 8 * v96), (v95 + 8 * *&v10[16 * v94 + 16]), (v95 + 8 * v97), v5);
          if (v6)
          {
            break;
          }

          if (v97 < v96)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1BB693A54(v10);
          }

          if (v94 - 2 >= *(v10 + 2))
          {
            goto LABEL_137;
          }

          v98 = &v10[16 * v94];
          *v98 = v96;
          *(v98 + 1) = v97;
          v110 = v10;
          sub_1BB6939C8(v94 - 1);
          v10 = v110;
          v94 = *(v110 + 2);
          v7 = a3;
        }

        while (v94 > 1);
      }

LABEL_121:

      return;
    }

    if (v19 == v33)
    {
      goto LABEL_39;
    }

    v99 = v6;
    v81 = *v7;
    v82 = *v7 + 8 * v19 - 8;
    v102 = v11;
    v83 = v11 - v19;
    v106 = v33;
LABEL_91:
    v107 = v19;
    v84 = *(v81 + 8 * v19);
    v85 = v83;
    v5 = v82;
LABEL_92:
    v86 = *v5;
    v87 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
    v88 = *(v84 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
    v89 = *(v88 + 16);
    if (*(v89 + 33) == 1)
    {
      v90 = (*(v89 + 32) & 1) != 0 ? atan2(*(v89 + 48), *(v89 + 56)) : *(v89 + 40);
    }

    else
    {
      v90 = *(v88 + 24);
    }

    v91 = *(v86 + v87);
    v92 = *(v91 + 16);
    if (*(v92 + 33) == 1)
    {
      if (*(v92 + 32))
      {
        if (atan2(*(v92 + 48), *(v92 + 56)) >= v90)
        {
          goto LABEL_90;
        }
      }

      else if (*(v92 + 40) >= v90)
      {
        goto LABEL_90;
      }
    }

    else if (*(v91 + 24) >= v90)
    {
      goto LABEL_90;
    }

    if (!v81)
    {
      break;
    }

    *v5 = v84;
    *(v5 + 8) = v86;
    v5 -= 8;
    if (!__CFADD__(v85++, 1))
    {
      goto LABEL_92;
    }

LABEL_90:
    v34 = v106;
    v19 = v107 + 1;
    v82 += 8;
    --v83;
    if (v107 + 1 != v106)
    {
      goto LABEL_91;
    }

    v6 = v99;
    v7 = a3;
    v11 = v102;
    if (v106 < v102)
    {
      goto LABEL_138;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1BB59D140(0, *(v10 + 2) + 1, 1, v10);
    }

    v36 = *(v10 + 2);
    v35 = *(v10 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v10 = sub_1BB59D140((v35 > 1), v36 + 1, 1, v10);
    }

    *(v10 + 2) = v37;
    v38 = &v10[16 * v36];
    *(v38 + 4) = v11;
    *(v38 + 5) = v34;
    v39 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    v105 = v34;
    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v10 + 4);
          v42 = *(v10 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_59:
          if (v44)
          {
            goto LABEL_127;
          }

          v57 = &v10[16 * v37];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_130;
          }

          v63 = &v10[16 * v40 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_134;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v67 = &v10[16 * v37];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_73:
        if (v62)
        {
          goto LABEL_129;
        }

        v70 = &v10[16 * v40];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_132;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_80:
        v78 = v40 - 1;
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v7)
        {
          goto LABEL_145;
        }

        v79 = *&v10[16 * v78 + 32];
        v5 = *&v10[16 * v40 + 40];
        sub_1BB68950C((*v7 + 8 * v79), (*v7 + 8 * *&v10[16 * v40 + 32]), (*v7 + 8 * v5), v39);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v5 < v79)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BB693A54(v10);
        }

        if (v78 >= *(v10 + 2))
        {
          goto LABEL_124;
        }

        v80 = &v10[16 * v78];
        *(v80 + 4) = v79;
        *(v80 + 5) = v5;
        v110 = v10;
        sub_1BB6939C8(v40);
        v10 = v110;
        v37 = *(v110 + 2);
        if (v37 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v10[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_125;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_126;
      }

      v52 = &v10[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_128;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_131;
      }

      if (v56 >= v48)
      {
        v74 = &v10[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_135;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v105;
    if (v105 >= v8)
    {
      goto LABEL_111;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_1BB68950C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_35:
      v24 = v6 - 8;
      v5 -= 8;
      v25 = v14;
      do
      {
        v27 = *(v25 - 8);
        v25 -= 8;
        v26 = v27;
        v28 = *v24;
        v29 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
        v30 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
        v31 = *(v30 + 16);
        if (*(v31 + 33) == 1)
        {
          if (*(v31 + 32))
          {
            v32 = atan2(*(v31 + 48), *(v31 + 56));
            v24 = v6 - 8;
            v33 = v32;
          }

          else
          {
            v33 = *(v31 + 40);
          }
        }

        else
        {
          v33 = *(v30 + 24);
        }

        v34 = *(v28 + v29);
        v35 = *(v34 + 16);
        if (*(v35 + 33) == 1)
        {
          if (*(v35 + 32))
          {
            v36 = atan2(*(v35 + 48), *(v35 + 56));
            v24 = v6 - 8;
          }

          else
          {
            v36 = *(v35 + 40);
          }
        }

        else
        {
          v36 = *(v34 + 24);
        }

        v37 = v5 + 8;
        if (v36 < v33)
        {
          if (v37 != v6)
          {
            *v5 = v28;
          }

          if (v14 <= v4 || (v6 = v24, v24 <= v7))
          {
            v6 = v24;
            goto LABEL_56;
          }

          goto LABEL_35;
        }

        if (v37 != v14)
        {
          *v5 = v26;
        }

        v5 -= 8;
        v14 = v25;
      }

      while (v25 > v4);
      v14 = v25;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      do
      {
        v15 = *v6;
        v16 = *v4;
        v17 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter;
        v18 = *(*v6 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_personRankingFilter);
        v19 = *(v18 + 16);
        if (*(v19 + 33) == 1)
        {
          if (*(v19 + 32))
          {
            v20 = atan2(*(v19 + 48), *(v19 + 56));
          }

          else
          {
            v20 = *(v19 + 40);
          }
        }

        else
        {
          v20 = *(v18 + 24);
        }

        v21 = *(v16 + v17);
        v22 = *(v21 + 16);
        if (*(v22 + 33) == 1)
        {
          if (*(v22 + 32))
          {
            if (atan2(*(v22 + 48), *(v22 + 56)) >= v20)
            {
              goto LABEL_25;
            }
          }

          else if (*(v22 + 40) >= v20)
          {
LABEL_25:
            v23 = v7 == v4;
            v4 += 8;
            if (v23)
            {
              goto LABEL_27;
            }

LABEL_26:
            *v7 = v16;
            goto LABEL_27;
          }
        }

        else if (*(v21 + 24) >= v20)
        {
          goto LABEL_25;
        }

        v16 = v15;
        v23 = v7 == v6;
        v6 += 8;
        if (!v23)
        {
          goto LABEL_26;
        }

LABEL_27:
        v7 += 8;
      }

      while (v4 < v14 && v6 < v5);
    }

    v6 = v7;
  }

LABEL_56:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1BB689830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6898A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BB689900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB689948()
{
  v1[17] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v2 = sub_1BB6BA7F4();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  v1[29] = swift_task_alloc();
  v3 = type metadata accessor for DKCamera();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB689B28, 0, 0);
}

uint64_t sub_1BB689B28()
{
  v135 = v0;
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];
  v126 = v0[17];
  sub_1BB5982A0(*(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v4, &qword_1EBC5BCB0);
  v5 = (*(v3 + 48))(v4, 1, v2);
  if (v5 == 1)
  {
    sub_1BB598308(v0[29], &qword_1EBC5BCB0);
LABEL_128:

    v110 = v0[1];

    return v110(v5 != 1);
  }

  v6 = v0[17];
  sub_1BB5981C8(v0[29], v0[32]);
  v7 = *(*(*(v6 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  swift_bridgeObjectRetain_n();
  v133 = sub_1BB5CA49C(v7);
  sub_1BB68B738(&v133);

  v127 = v133;
  v118 = v5;
  if (v133 < 0 || (v133 & 0x4000000000000000) != 0)
  {
    v10 = sub_1BB6BB564();
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_126;
  }

  v10 = *(v133 + 16);
  if (!v10)
  {
LABEL_126:

    sub_1BB59822C(v0[32]);
LABEL_127:
    v5 = v118;
    goto LABEL_128;
  }

LABEL_7:
  v11 = 0;
  v117 = v0[32];
  v12 = v0[22];
  v125 = (v12 + 16);
  v13 = (v12 + 8);
  v115 = OBJC_IVAR____TtC23IntelligentTrackingCore22DKSpeakerDetectionTask_cachedModel;
  v116 = v0[17];
  v130 = (v12 + 48);
  v122 = (v12 + 8);
  v123 = (v12 + 32);
  v14 = &unk_1BB6BD580;
  v121 = (v12 + 56);
  v124 = v10;
  while (1)
  {
    if ((v127 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x1BFB111F0](v11, v127);
      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_115;
      }
    }

    else
    {
      if (v11 >= *(v127 + 16))
      {
        goto LABEL_116;
      }

      v1 = *(v127 + 8 * v11 + 32);

      v19 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_115;
      }
    }

    v20 = *&v1[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker];
    v128 = v19;
    v129 = v11;
    if (!v20)
    {
      goto LABEL_96;
    }

    v21 = *(v20 + *(*v20 + 200));
    if (!v21)
    {
      goto LABEL_96;
    }

    v22 = *(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_crop);
    if (!v22 || (*(v21 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_yaw + 8) & 1) != 0)
    {
      goto LABEL_96;
    }

    v23 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceCropBuffer;
    v24 = *&v1[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceCropBuffer];
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v119 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceCropBuffer;
      if (!v25)
      {
        break;
      }

      goto LABEL_22;
    }

    v25 = sub_1BB6BB564();
    v119 = v23;
    if (!v25)
    {
      break;
    }

LABEL_22:
    v26 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_117;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {

      v27 = v22;

      MEMORY[0x1BFB111F0](v26, v24);

      swift_unknownObjectRelease();
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }

      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v27 = v22;
    }

    v28 = *v125;
    (*v125)(v0[28], *(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v0[21]);
    v29 = *&v1[v23];
    if (v29 >> 62)
    {
      v30 = sub_1BB6BB564();
      if (!v30)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_119;
      }
    }

    v31 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
      goto LABEL_121;
    }

    if ((v29 & 0xC000000000000001) != 0)
    {

      v32 = MEMORY[0x1BFB111F0](v31, v29);
    }

    else
    {
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_122;
      }

      if (v31 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v32 = *(v29 + 8 * v31 + 32);
    }

    v34 = v0[27];
    v33 = v0[28];
    v35 = v0[21];
    v28(v34, v32 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_time, v35);

    sub_1BB6BA744();
    v37 = v36;
    v38 = *v122;
    v39 = v34;
    v13 = v122;
    (*v122)(v39, v35);
    v38(v33, v35);
    v14 = &unk_1BB6BD580;
    if (v37 > 0.125)
    {
      goto LABEL_38;
    }

LABEL_96:
    v79 = v0[21];
    v80 = v0[19];
    sub_1BB5982A0(*(*&v1[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_speakingFilter] + 16) + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, v80, &qword_1EBC5C050);
    v81 = *v130;
    if ((*v130)(v80, 1, v79) == 1)
    {
      sub_1BB598308(v0[19], &qword_1EBC5C050);
    }

    else
    {
      v82 = v0[27];
      v83 = v0[21];
      (*v123)(v0[24], v0[19], v83);
      (*v125)(v82, *(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v83);
      sub_1BB6BA744();
      v85 = v84;
      v86 = *v13;
      (*v13)(v82, v83);
      v87 = v0[24];
      v88 = v0[21];
      if (v85 <= 2.0)
      {
        v86(v0[24], v0[21]);
        v14 = &unk_1BB6BD580;
      }

      else
      {
        v89 = v0[20];
        (*v121)(v89, 1, 1, v0[21]);

        sub_1BB6ABB40(0, 1, v89, 0.0);

        v90 = v89;
        v13 = v122;
        v14 = &unk_1BB6BD580;
        sub_1BB598308(v90, &qword_1EBC5C050);
        v86(v87, v88);
      }
    }

    v91 = v0[21];
    v92 = v0[18];
    sub_1BB5982A0(*(*&v1[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lookingFilter] + 16) + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, v92, &qword_1EBC5C050);
    if (v81(v92, 1, v91) == 1)
    {
      v15 = v0[18];

      sub_1BB598308(v15, &qword_1EBC5C050);
      v16 = v124;
      v18 = v128;
      v17 = v129;
    }

    else
    {
      v93 = v0[27];
      v94 = v0[21];
      (*v123)(v0[23], v0[18], v94);
      (*v125)(v93, *(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v94);
      sub_1BB6BA744();
      v96 = v95;
      v97 = *v13;
      (*v13)(v93, v94);
      v98 = v0[23];
      v99 = v0[21];
      v18 = v128;
      if (v96 <= 2.0)
      {
        v97(v0[23], v0[21]);

        v16 = v124;
        v17 = v129;
        v14 = &unk_1BB6BD580;
      }

      else
      {
        v100 = v0[20];
        (*v121)(v100, 1, 1, v0[21]);

        sub_1BB6ABB40(0, 1, v100, 0.0);

        v101 = v100;
        v13 = v122;
        v1 = &unk_1BB6BD580;
        sub_1BB598308(v101, &qword_1EBC5C050);
        v97(v98, v99);
        v14 = &unk_1BB6BD580;
        v16 = v124;
        v17 = v129;
      }
    }

    v11 = v17 + 1;
    if (v18 == v16)
    {
      goto LABEL_126;
    }
  }

  v27 = v22;
LABEL_38:
  v0[11] = 128;
  v133 = sub_1BB6BB794();
  v134 = v40;
  MEMORY[0x1BFB10B60](120, 0xE100000000000000);
  v0[12] = 128;
  v41 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](v41);

  v42 = v133;
  v43 = v134;
  v44 = *(v27 + 56);
  if (*(v44 + 16))
  {

    v45 = sub_1BB6A10FC(v42, v43);
    if (v46)
    {
      v47 = v45;

      v120 = *(*(v44 + 56) + 8 * v47);

      goto LABEL_43;
    }
  }

  v120 = sub_1BB64F634(v42, v43, 0x80uLL, 0x80);

LABEL_43:
  v48 = v0[32];
  v132 = *(v117 + 1);
  LOBYTE(v133) = *v48;
  v49 = _s23IntelligentTrackingCore11DKImageUtilC19rotateCVPixelBuffer6buffer17cameraOrientation0J4PortSo11CVBufferRefaSgAI_AA08DKCameraK0OAA0oL0OtFZ_0(v120, &v132, &v133);
  if (!v49)
  {

    v13 = v122;
    goto LABEL_95;
  }

  v50 = v49;
  v51 = v0[26];
  v52 = *v125;
  (*v125)(v51, *(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v0[21]);
  type metadata accessor for DKImageRGBBufferStamped();
  swift_allocObject();
  v53 = v50;
  sub_1BB5A08E4(v53, v51);
  v113 = v52;

  MEMORY[0x1BFB10C80](v54);
  if (*((*&v1[v119] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v119] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BB6BAE64();
  }

  sub_1BB6BAEB4();
  v55 = *&v1[v119];
  v13 = v122;
  v14 = v53;
  if (!(v55 >> 62))
  {
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) > 8)
    {
      goto LABEL_50;
    }

LABEL_60:
    if (!(v55 >> 62))
    {
      if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) == 8)
      {
        goto LABEL_62;
      }

LABEL_93:

LABEL_94:

LABEL_95:
      v14 = &unk_1BB6BD580;
      goto LABEL_96;
    }

    if (sub_1BB6BB564() != 8)
    {
      goto LABEL_93;
    }

LABEL_62:
    v59 = *&v1[v119];
    if (v59 >> 62)
    {
      result = sub_1BB6BB564();
      if (!result)
      {
        goto LABEL_93;
      }
    }

    else
    {
      result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_93;
      }
    }

    if ((v59 & 0xC000000000000001) != 0)
    {

      v60 = MEMORY[0x1BFB111F0](0, v59);
    }

    else
    {
      if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_134;
      }

      v60 = *(v59 + 32);
    }

    v61 = *&v1[v119];
    if (v61 >> 62)
    {
      result = sub_1BB6BB564();
      if (result)
      {
        goto LABEL_69;
      }
    }

    else
    {
      result = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_69:
        v62 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_135;
        }

        v112 = v60;
        v114 = v14;
        if ((v61 & 0xC000000000000001) != 0)
        {

          v63 = MEMORY[0x1BFB111F0](v62, v61);
        }

        else
        {
          if ((v62 & 0x8000000000000000) != 0)
          {
            goto LABEL_136;
          }

          if (v62 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_137;
          }

          v63 = *(v61 + 8 * v62 + 32);
        }

        v64 = v0[27];
        v65 = v0[25];
        v66 = v0[21];
        v113(v64, v63 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_time, v66);
        v113(v65, v112 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_time, v66);
        sub_1BB6BA744();
        v68 = v67;
        v69 = *v122;
        (*v122)(v65, v66);
        v70 = v66;
        v13 = v122;
        v69(v64, v70);
        v132 = 4;
        v133 = 0;
        v134 = 0xE000000000000000;
        sub_1BB6BB2F4();
        v71 = v134;
        v0[7] = v133;
        v0[8] = v71;
        MEMORY[0x1BFB10B60](0x3D6E6F73726550, 0xE700000000000000);
        v0[14] = *&v1[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_trackerId];
        v72 = sub_1BB6BB794();
        MEMORY[0x1BFB10B60](v72);

        MEMORY[0x1BFB10B60](0x6F69746172754420, 0xEA00000000003D6ELL);
        sub_1BB6BAFB4();
        v73 = v0[7];
        v74 = v0[8];
        v75 = sub_1BB6BB064();
        _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v132, v73, v74, v75);

        if (v68 < 2.0)
        {
          v111 = v69;
          v14 = v114;
          if (!*(v116 + v115))
          {
            type metadata accessor for DKSpeechDetectionModel();
            swift_allocObject();
            sub_1BB6B1D98();
            *(v116 + v115) = v76;
          }

          sub_1BB6B24B0(v77);
          goto LABEL_124;
        }

        goto LABEL_95;
      }
    }

    goto LABEL_94;
  }

  v78 = sub_1BB6BB564();
  v55 = *&v1[v119];
  if (v78 <= 8)
  {
    goto LABEL_60;
  }

LABEL_50:
  if (!(v55 >> 62))
  {
    result = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_131;
    }

LABEL_52:
    v57 = *&v1[v119];
    if (v57 >> 62)
    {
      result = sub_1BB6BB564();
      if (!result)
      {
        goto LABEL_132;
      }
    }

    else
    {
      result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_132;
      }
    }

    if ((v57 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB111F0](0, v57);
      swift_unknownObjectRelease();
      v58 = *&v1[v119];
      if (v58 < 0)
      {
        v13 = v122;
        goto LABEL_113;
      }

      v13 = v122;
      if ((v58 & 0x4000000000000000) != 0)
      {
        goto LABEL_113;
      }

LABEL_58:
      if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }
    }

    else
    {
      if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_133;
      }

      v58 = *&v1[v119];
      if ((v58 & 0x8000000000000000) == 0 && (v58 & 0x4000000000000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_113:
      if (!sub_1BB6BB564())
      {
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
LABEL_123:
        __break(1u);
LABEL_124:
        v131 = v0[32];
        v102 = v0[20];
        v103 = v0[21];
        v104 = v9;
        v105 = v8;

        v113(v102, *(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v103);
        v106 = *v121;
        (*v121)(v102, 0, 1, v103);

        sub_1BB6ABB40(0, 1, v102, v105);

        sub_1BB598308(v102, &qword_1EBC5C050);
        v113(v102, *(v126 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v103);
        v106(v102, 0, 1, v103);

        sub_1BB6ABB40(0, 1, v102, v104);

        sub_1BB598308(v102, &qword_1EBC5C050);
        sub_1BB59822C(v131);
        v107 = *(v126 + 48);
        v108 = OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time;
        v109 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime;
        v111(&v1[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime], v103);
        v113(&v1[v109], v107 + v108, v103);

        goto LABEL_127;
      }
    }

    sub_1BB68C914(0, 1, type metadata accessor for DKImageRGBBufferStamped);
    v55 = *&v1[v119];
    v14 = v53;
    goto LABEL_60;
  }

  result = sub_1BB6BB564();
  if (result)
  {
    goto LABEL_52;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_1BB68B15C()
{
  v38 = sub_1BB6BA7F4();
  v1 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v27 - v4;
  v34 = v0;
  v5 = *(*(*(v0 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_tracker) + OBJC_IVAR____TtC23IntelligentTrackingCore21DKMultiSubjectTracker_personTrackers);
  if (v5 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BB6BB564())
  {
    v7 = v5 & 0xC000000000000001;
    v36 = (v1 + 16);
    v28 = v5 & 0xFFFFFFFFFFFFFF8;
    v29 = (v1 + 8);

    v8 = 0;
    v1 = &OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker;
    v31 = i;
    v32 = v5;
    v30 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x1BFB111F0](v8, v5);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v8 >= *(v28 + 16))
      {
        goto LABEL_48;
      }

      v9 = *(v5 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

LABEL_12:
      v11 = *(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker);
      if (v11 && (v12 = *(v11 + *(*v11 + 200))) != 0)
      {
        v13 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceCropBuffer;
        v1 = *(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceCropBuffer);
        if (v1 >> 62)
        {
          v14 = sub_1BB6BB564();
          if (!v14)
          {
LABEL_37:

LABEL_38:
            v25 = 1;
LABEL_39:

            return v25;
          }
        }

        else
        {
          v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_37;
          }
        }

        v15 = v14 - 1;
        if (__OFSUB__(v14, 1))
        {
          goto LABEL_41;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {

          MEMORY[0x1BFB111F0](v15, v1);
          swift_unknownObjectRelease();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }
        }

        v5 = *v36;
        (*v36)(v37, *(v34 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v38);
        v1 = *(v9 + v13);
        if (v1 >> 62)
        {
          v16 = sub_1BB6BB564();
          if (!v16)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v16 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v16)
          {
            goto LABEL_43;
          }
        }

        v17 = v16 - 1;
        if (__OFSUB__(v16, 1))
        {
          goto LABEL_45;
        }

        v35 = v12;
        if ((v1 & 0xC000000000000001) != 0)
        {

          v18 = MEMORY[0x1BFB111F0](v17, v1);
        }

        else
        {
          if ((v17 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          if (v17 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }

          v18 = *(v1 + 8 * v17 + 32);
        }

        v19 = v33;
        v20 = v38;
        (v5)(v33, v18 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_time, v38);

        v21 = v37;
        sub_1BB6BA744();
        v23 = v22;

        v24 = *v29;
        (*v29)(v19, v20);
        v24(v21, v20);
        i = v31;
        v5 = v32;
        v7 = v30;
        v1 = &OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_faceTracker;
        if (v23 > 0.125)
        {
          goto LABEL_38;
        }
      }

      else
      {
      }

      ++v8;
      if (v10 == i)
      {
        v25 = 0;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  return 0;
}

uint64_t sub_1BB68B5C4()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKSpeakerDetectionTask()
{
  result = qword_1EBC5E338;
  if (!qword_1EBC5E338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB68B738(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BB695894(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BB68B7B4(v6);
  return sub_1BB6BB3E4();
}

void sub_1BB68B7B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1BB6BB784();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for DKPersonTracker();
        v6 = sub_1BB6BAE94();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1BB68BAF4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BB68B8B8(0, v2, 1, a1);
  }
}

void sub_1BB68B8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v36 = &v27 - v12;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v33 = *(v10 + 16);
    v34 = v10 + 16;
    v32 = (v10 + 8);
    v38 = v13;
    v14 = (v13 + 8 * a3 - 8);
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v38 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v20 = v35;
      v19 = v36;
      v21 = v33;
      (v33)(v36, v16 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v35, v11);
      v22 = v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime;
      v39 = v18;
      v23 = v37;
      v21(v37, v22, v20);

      LOBYTE(v21) = sub_1BB6BA774();
      v24 = *v32;
      (*v32)(v23, v20);
      v24(v19, v20);

      if ((v21 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 1;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v25 = *v14;
      v16 = v14[1];
      *v14 = v16;
      v14[1] = v25;
      --v14;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BB68BAF4(char **a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v112 = a1;
  v122 = sub_1BB6BA7F4();
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v121 = &v107 - v12;
  v13 = *(a3 + 1);
  if (v13 < 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v14 = a3;
    a3 = v5;
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_127;
    }

    a4 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_121:
      v102 = sub_1BB693A54(a4);
    }

    v125 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      while (*v14)
      {
        v103 = *&v102[16 * a4];
        v104 = v102;
        v105 = *&v102[16 * a4 + 24];
        sub_1BB68C388((*v14 + 8 * v103), (*v14 + 8 * *&v102[16 * a4 + 16]), (*v14 + 8 * v105), v5);
        if (a3)
        {
          goto LABEL_98;
        }

        if (v105 < v103)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1BB693A54(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_115;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v125 = v104;
        sub_1BB6939C8(a4 - 1);
        v102 = v125;
        a4 = *(v125 + 2);
        if (a4 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v14 = 0;
  v119 = (v10 + 8);
  v120 = (v10 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v111 = a4;
  v107 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v118 = v13;
      v109 = v15;
      v110 = v5;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v115 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v21 = *v19;
      v20 = v19 + 2;
      v22 = v16;
      v23 = v121;
      v24 = *v120;
      v25 = v122;
      (*v120)(v121, v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v122, v11);
      v26 = v123;
      v117 = v24;
      (v24)(v123, v21 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v25);

      v124 = sub_1BB6BA774();
      v27 = *v119;
      (*v119)(v26, v25);
      v116 = v27;
      (v27)(v23, v25);

      v108 = v22;
      v28 = v22 + 2;
      while (1)
      {
        v14 = v118;
        if (v118 == v28)
        {
          break;
        }

        v29 = *(v20 - 1);
        v31 = v121;
        v30 = v122;
        v32 = v117;
        (v117)(v121, *v20 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v122);
        v33 = v123;
        (v32)(v123, v29 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v30);

        v34 = sub_1BB6BA774() & 1;
        v35 = v116;
        v116(v33, v30);
        v35(v31, v30);

        ++v28;
        ++v20;
        if ((v124 & 1) != v34)
        {
          v14 = v28 - 1;
          break;
        }
      }

      v15 = v109;
      v5 = v110;
      a4 = v111;
      a3 = v107;
      v16 = v108;
      v36 = v115;
      if (v124)
      {
        if (v14 < v108)
        {
          goto LABEL_118;
        }

        if (v108 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v108;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            ++v39;
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }
    }

    v42 = *(a3 + 1);
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = *(a3 + 1);
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v55 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v55;
    }

    else
    {
      v15 = sub_1BB59D140(0, *(v55 + 2) + 1, 1, v55);
    }

    a4 = *(v15 + 2);
    v56 = *(v15 + 3);
    v57 = a4 + 1;
    if (a4 >= v56 >> 1)
    {
      v15 = sub_1BB59D140((v56 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v57;
    v58 = &v15[16 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v112;
    if (!*v112)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_55:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[16 * v57];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v57 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v87 = &v15[16 * v57];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_69:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v60 - 1;
        if (v60 - 1 >= v57)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v99 = *&v15[16 * a4 + 32];
        v100 = *&v15[16 * v60 + 40];
        sub_1BB68C388((*a3 + 8 * v99), (*a3 + 8 * *&v15[16 * v60 + 32]), (*a3 + 8 * v100), v59);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v100 < v99)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1BB693A54(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v101 = &v98[16 * a4];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        v125 = v98;
        sub_1BB6939C8(v60);
        v15 = v125;
        v57 = *(v125 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v13 = *(a3 + 1);
    a4 = v111;
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v109 = v15;
  v110 = v5;
  v44 = *a3;
  v117 = *v120;
  v118 = v44;
  v45 = (v44 + 8 * v14 - 8);
  v108 = v16;
  a4 = v16 - v14;
  v113 = v43;
LABEL_28:
  v115 = v45;
  v116 = v14;
  v46 = *(v118 + 8 * v14);
  v114 = a4;
  while (1)
  {
    v47 = *v45;
    v49 = v121;
    v48 = v122;
    v50 = v117;
    (v117)(v121, v46 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v122);
    v51 = v123;
    (v50)(v123, v47 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v48);

    v124 = sub_1BB6BA774();
    v52 = *v119;
    (*v119)(v51, v48);
    v52(v49, v48);

    if ((v124 & 1) == 0)
    {
LABEL_27:
      v14 = v116 + 1;
      v45 = (v115 + 8);
      a4 = v114 - 1;
      if (v116 + 1 != v113)
      {
        goto LABEL_28;
      }

      v14 = v113;
      v15 = v109;
      v5 = v110;
      a3 = v107;
      v16 = v108;
      goto LABEL_35;
    }

    if (!v118)
    {
      break;
    }

    v53 = *v45;
    v46 = v45[1];
    *v45 = v46;
    v45[1] = v53;
    --v45;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1BB68C388(char *a1, char *a2, char *a3, char *a4)
{
  v49 = sub_1BB6BA7F4();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v42 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    v51 = a1;
    if (a4 != a2 || &a2[8 * v14] <= a4)
    {
      memmove(a4, a2, 8 * v14);
    }

    v55 = &a4[8 * v14];
    if (a3 - a2 >= 8 && a2 > v51)
    {
      v27 = *(v52 + 16);
      v52 += 16;
      v44 = (v52 - 8);
      v45 = v27;
      v54 = a4;
LABEL_27:
      v43 = a2;
      v28 = a2 - 8;
      v29 = a3 - 8;
      v30 = v55;
      v46 = a2 - 8;
      do
      {
        v53 = v29;
        v31 = v29 + 8;
        v32 = *(v30 - 1);
        v30 -= 8;
        v33 = *v28;
        v35 = v48;
        v34 = v49;
        v36 = v45;
        v45(v48, v32 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v49);
        v37 = v50;
        v36(v50, v33 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v34);

        LODWORD(v47) = sub_1BB6BA774();
        v38 = *v44;
        (*v44)(v37, v34);
        v38(v35, v34);

        if (v47)
        {
          a3 = v53;
          v40 = v46;
          if (v31 != v43)
          {
            *v53 = *v46;
          }

          a4 = v54;
          if (v55 <= v54 || (a2 = v40, v40 <= v51))
          {
            a2 = v40;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v39 = v53;
        if (v31 != v55)
        {
          *v53 = *v30;
        }

        v29 = v39 - 8;
        v55 = v30;
        a4 = v54;
        v28 = v46;
      }

      while (v30 > v54);
      v55 = v30;
      a2 = v43;
    }
  }

  else
  {
    v15 = a1;
    if (a4 != a1 || &a1[8 * v12] <= a4)
    {
      memmove(a4, a1, 8 * v12);
    }

    v55 = &a4[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v16 = *(v52 + 16);
      v52 += 16;
      v53 = a3;
      v46 = (v52 - 8);
      v47 = v16;
      while (1)
      {
        v54 = a4;
        v51 = v15;
        v17 = a2;
        v18 = *a4;
        v19 = v48;
        v20 = v49;
        v21 = v47;
        v47(v48, *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v49);
        v22 = v50;
        v21(v50, v18 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPersonTracker_lastSpeakingCalculationTime, v20);

        v23 = sub_1BB6BA774();
        v24 = *v46;
        (*v46)(v22, v20);
        v24(v19, v20);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v25 = a2;
        a2 += 8;
        v26 = v51;
        a4 = v54;
        if (v51 != v17)
        {
          goto LABEL_16;
        }

LABEL_17:
        v15 = v26 + 8;
        if (a4 >= v55 || a2 >= v53)
        {
          goto LABEL_19;
        }
      }

      v25 = v54;
      a4 = v54 + 8;
      v26 = v51;
      if (v51 == v54)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v26 = *v25;
      goto LABEL_17;
    }

LABEL_19:
    a2 = v15;
  }

LABEL_38:
  if (a2 != a4 || a2 >= &a4[(v55 - a4 + (v55 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, a4, 8 * ((v55 - a4) / 8));
  }

  return 1;
}

uint64_t sub_1BB68C844(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BB6BB564();
LABEL_9:
  result = sub_1BB6BB384();
  *v1 = result;
  return result;
}

uint64_t sub_1BB68C914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1BB6BB564();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = sub_1BB6BB564();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_1BB68C844(result);
    return sub_1BB68C9F0(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1BB68C9F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BB6BB564();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_1BB6BB564();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB68CB14()
{
  v1 = *(*(v0 + 16) + 48);

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups) = sub_1BB68CBA8();

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_1BB68CBA8()
{
  v1 = *(v0 + 48);
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces))
  {
    v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedFaces);
  }

  else
  {
    *&v2 = MEMORY[0x1E69E7CC0];
  }

  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies))
  {
    v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedBodies);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v280 = v3;
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands))
  {
    v4 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_detectedHands);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v277 = v4;
  v285 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_68:
    *&v5 = COERCE_DOUBLE(sub_1BB6BB564());
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  v278 = v5;
  if (*&v5 != 0.0)
  {
    v7 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB111F0](v7, v2);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v8 = *(v2 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v10 = v285;
          if ((v285 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_69;
        }
      }

      if (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId + 8) == 1)
      {
      }

      else
      {
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        v5 = v278;
        sub_1BB6BB424();
        sub_1BB6BB3E4();
      }

      ++v7;
      if (v9 == v5)
      {
        goto LABEL_24;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

LABEL_27:
  if ((v10 & 0x4000000000000000) != 0)
  {
LABEL_69:
    v11 = sub_1BB6BB564();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  *&v266 = v277 >> 62;
  *&v267 = *&v280 >> 62;
  v276 = *&v2;
  if (v11 > 0)
  {
    goto LABEL_77;
  }

  v285 = v6;
  if (v267 == 0.0)
  {
    v12 = *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    *&v12 = COERCE_DOUBLE(sub_1BB6BB564());
  }

  v13 = MEMORY[0x1E69E7CC0];
  v275 = *&v12;
  if (*&v12 == 0.0)
  {
    v17 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

    goto LABEL_47;
  }

  v14 = 0;
  while ((*&v280 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1BFB111F0](v14, *&v280);
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_43;
    }

LABEL_39:
    if (*(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId + 8) == 1)
    {
    }

    else
    {
      sub_1BB6BB3D4();
      sub_1BB6BB414();
      v5 = v278;
      sub_1BB6BB424();
      sub_1BB6BB3E4();
      *&v12 = v275;
    }

    ++v14;
    if (v16 == v12)
    {
      goto LABEL_44;
    }
  }

  if (v14 >= *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_66;
  }

  v15 = *(*&v280 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_39;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v17 = v285;
  if ((v285 & 0x8000000000000000) != 0)
  {
LABEL_71:
    v18 = sub_1BB6BB564();
    goto LABEL_49;
  }

LABEL_47:
  if ((v17 & 0x4000000000000000) != 0)
  {
    goto LABEL_71;
  }

  v18 = *(v17 + 16);
LABEL_49:

  if (v18 > 0)
  {
    goto LABEL_77;
  }

  v285 = v13;
  if (v266 == 0.0)
  {
    v253 = *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v253)
    {
      goto LABEL_52;
    }

LABEL_73:
    v22 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_408;
    }

LABEL_74:
    if ((v22 & 0x4000000000000000) == 0)
    {
      v23 = *(v22 + 16);
      goto LABEL_76;
    }

    goto LABEL_408;
  }

  v253 = sub_1BB6BB564();
  if (!v253)
  {
    goto LABEL_73;
  }

LABEL_52:
  v19 = 0;
  while (2)
  {
    if ((v277 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1BFB111F0](v19, v277);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      goto LABEL_58;
    }

    if (v19 >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_67;
    }

    v20 = *(v277 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
LABEL_58:
      if (*(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId + 8) == 1)
      {
      }

      else
      {
        sub_1BB6BB3D4();
        sub_1BB6BB414();
        v5 = v278;
        sub_1BB6BB424();
        sub_1BB6BB3E4();
      }

      ++v19;
      if (v21 == v253)
      {
        goto LABEL_63;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_63:
  v22 = v285;
  if ((v285 & 0x8000000000000000) == 0)
  {
    goto LABEL_74;
  }

LABEL_408:
  while (1)
  {
    v23 = sub_1BB6BB564();
LABEL_76:

    if (v23 > 0)
    {
      break;
    }

    if (*&v5 != 0.0)
    {
      v67 = 0;
      v250 = v2 & 0xFFFFFFFFFFFFFF8;
      v251 = v2 & 0xC000000000000001;
      v248 = v2 + 32;
      v68 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v251)
        {
          v26 = MEMORY[0x1BFB111F0](v67, v2);
          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
LABEL_155:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v67 >= *(v250 + 16))
          {
LABEL_391:
            __break(1u);
LABEL_392:
            __break(1u);
LABEL_393:
            __break(1u);
LABEL_394:
            __break(1u);
LABEL_395:
            __break(1u);
LABEL_396:
            __break(1u);
LABEL_397:
            __break(1u);
LABEL_398:
            __break(1u);
LABEL_399:
            __break(1u);
LABEL_400:
            __break(1u);
LABEL_401:
            __break(1u);
LABEL_402:
            __break(1u);
LABEL_403:
            __break(1u);
LABEL_404:
            __break(1u);
LABEL_405:
            __break(1u);
            goto LABEL_406;
          }

          v26 = *(v248 + 8 * v67);

          v69 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_155;
          }
        }

        v252 = v69;
        if (v275 != 0.0)
        {
          *&v5 = 0.0;
          v70 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_isObjectType;
          v71 = (v26 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
          do
          {
            if ((*&v280 & 0xC000000000000001) != 0)
            {
              v76 = MEMORY[0x1BFB111F0](v5, *&v280);
              v77 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_345;
              }
            }

            else
            {
              if (v5 >= *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_346;
              }

              v76 = *(*&v280 + 8 * v5 + 32);

              v77 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                goto LABEL_345;
              }
            }

            if (*(v26 + v70) == 1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_1BB59D91C(0, *(v68 + 2) + 1, 1, v68);
              }

              v79 = *(v68 + 2);
              v78 = *(v68 + 3);
              v80 = v79 + 1;
              if (v79 >= v78 >> 1)
              {
                v68 = sub_1BB59D91C((v78 > 1), v79 + 1, 1, v68);
              }

              v74 = 1.79769313e308;
            }

            else
            {
              v81 = *v71;
              v82 = v71[1];
              v83 = v71[2];
              v84 = v71[3];
              v85 = *(v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
              v86 = *(v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
              v255 = *(v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);
              v256 = *(v76 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
              v286.origin.x = *v71;
              v286.origin.y = v82;
              v286.size.width = v83;
              v286.size.height = v84;
              Width = CGRectGetWidth(v286);
              v287.origin.x = v85;
              v287.origin.y = v256;
              v287.size.width = v86;
              v287.size.height = v255;
              v88 = CGRectGetWidth(v287);
              if (v88 >= Width)
              {
                v88 = Width;
              }

              v267 = v88;
              v288.origin.x = v81;
              v288.origin.y = v82;
              v288.size.width = v83;
              v288.size.height = v84;
              Height = CGRectGetHeight(v288);
              v289.origin.x = v85;
              v289.origin.y = v256;
              v289.size.width = v86;
              v289.size.height = v255;
              v90 = CGRectGetHeight(v289);
              if (v90 >= Height)
              {
                v90 = Height;
              }

              v266 = v90;
              v290.origin.x = v81;
              v290.origin.y = v82;
              v290.size.width = v83;
              v290.size.height = v84;
              MidX = CGRectGetMidX(v290);
              v291.origin.x = v85;
              v291.origin.y = v256;
              v291.size.width = v86;
              v291.size.height = v255;
              v261 = CGRectGetMidX(v291);
              v292.origin.x = v81;
              v292.origin.y = v82;
              v292.size.width = v83;
              v292.size.height = v84;
              MidY = CGRectGetMidY(v292);
              v293.origin.x = v85;
              v293.origin.y = v256;
              v293.size.width = v86;
              v293.size.height = v255;
              v92 = CGRectGetMidY(v293);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v68 = sub_1BB59D91C(0, *(v68 + 2) + 1, 1, v68);
              }

              v79 = *(v68 + 2);
              v93 = *(v68 + 3);
              v80 = v79 + 1;
              if (v79 >= v93 >> 1)
              {
                v68 = sub_1BB59D91C((v93 > 1), v79 + 1, 1, v68);
              }

              v72 = fmax(v267, 0.01);
              v73 = fmax(v266, 0.01);
              v74 = sqrt((MidX - v261) / v72 * ((MidX - v261) / v72) + (MidY - v92) / v73 * ((MidY - v92) / v73));
            }

            *(v68 + 2) = v80;
            v75 = &v68[24 * v79];
            *(v75 + 4) = v67;
            *(v75 + 5) = *&v5;
            *(v75 + 6) = v74;
            ++v5;
            *&v2 = v276;
          }

          while (v77 != *&v275);
        }

        v67 = v252;
        if (v252 == v278)
        {
          goto LABEL_157;
        }
      }
    }

    v68 = MEMORY[0x1E69E7CC0];
LABEL_157:
    v285 = v68;

    v26 = 0;
    sub_1BB68EDA8(&v285, sub_1BB693B38, &qword_1EBC5E360);
    v94 = v285;
    v285 = MEMORY[0x1E69E7CD0];
    v284 = MEMORY[0x1E69E7CD0];
    v272 = *(v94 + 16);
    if (v272)
    {
      v95 = 0;
      *&v267 = v2 & 0xC000000000000001;
      v269 = v94 + 32;
      v262 = v2 + 32;
      *&v266 = *&v280 & 0xC000000000000001;
      v258 = v2 & 0xFFFFFFFFFFFFFF8;
      *&v5 = MEMORY[0x1E69E7CC0];
      v257 = v94;
LABEL_159:
      v96 = v285;
      v97 = v285 + 56;
      v98 = v284;
      v99 = v284 + 56;
      while (1)
      {
        if (v95 >= *(v94 + 16))
        {
          goto LABEL_396;
        }

        v100 = v269 + 24 * v95;
        if (*(v100 + 16) < COERCE_DOUBLE(1))
        {
          goto LABEL_195;
        }

        v2 = v5;
        v5 = *v100;
        v26 = *(v100 + 8);
        ++v95;
        if (*(v96 + 16) && (v101 = sub_1BB6BB914(), v102 = -1 << *(v96 + 32), v103 = v101 & ~v102, ((*(v97 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) != 0))
        {
          v104 = ~v102;
          while (*(*(v96 + 48) + 8 * v103) != v5)
          {
            v103 = (v103 + 1) & v104;
            if (((*(v97 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
            {
              goto LABEL_168;
            }
          }
        }

        else
        {
LABEL_168:
          if (!*(v98 + 16) || (v105 = sub_1BB6BB914(), v106 = -1 << *(v98 + 32), v107 = v105 & ~v106, ((*(v99 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0))
          {
LABEL_173:
            v109 = *(v2 + 16);
            if (v267 == 0.0)
            {
              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_402;
              }

              if (v5 >= *(v258 + 16))
              {
                goto LABEL_403;
              }
            }

            else
            {
              v110 = MEMORY[0x1BFB111F0](v5, *&v276);
            }

            v111 = v110 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
            *v111 = v109;
            *(v111 + 8) = 0;

            if (v266 == 0.0)
            {
              if ((v26 & 0x8000000000000000) != 0)
              {
                goto LABEL_404;
              }

              if (v26 >= *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_405;
              }
            }

            else
            {
              v112 = MEMORY[0x1BFB111F0](v26, *&v280);
            }

            v113 = v112 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
            *v113 = v109;
            *(v113 + 8) = 0;

            if (v267 == 0.0)
            {
              v114 = *(v262 + 8 * v5);

              if (v266 == 0.0)
              {
                goto LABEL_185;
              }

LABEL_183:
              v115 = MEMORY[0x1BFB111F0](v26, *&v280);
            }

            else
            {
              v114 = MEMORY[0x1BFB111F0](v5, *&v276);
              if (v266 != 0.0)
              {
                goto LABEL_183;
              }

LABEL_185:
              v115 = *(*&v280 + 32 + 8 * v26);
            }

            v265 = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v2 = COERCE_DOUBLE(sub_1BB59D7FC(0, *(v2 + 16) + 1, 1, v2));
            }

            v117 = *(v2 + 16);
            v116 = *(v2 + 24);
            if (v117 >= v116 >> 1)
            {
              *&v2 = COERCE_DOUBLE(sub_1BB59D7FC((v116 > 1), v117 + 1, 1, v2));
            }

            *(v2 + 16) = v117 + 1;
            v118 = (v2 + 32 * v117);
            v118[4] = v109;
            v118[5] = v114;
            v118[6] = v115;
            v118[7] = v265;
            v119 = v5;
            v5 = v2;
            sub_1BB5ACCEC(&v283, v119);
            sub_1BB5ACCEC(&v283, v26);
            v94 = v257;
            if (v95 != v272)
            {
              goto LABEL_159;
            }

            goto LABEL_195;
          }

          v108 = ~v106;
          while (*(*(v98 + 48) + 8 * v107) != v26)
          {
            v107 = (v107 + 1) & v108;
            if (((*(v99 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
            {
              goto LABEL_173;
            }
          }
        }

        v5 = v2;
        if (v95 == v272)
        {
          goto LABEL_195;
        }
      }
    }

    *&v5 = MEMORY[0x1E69E7CC0];
LABEL_195:

    if (!v278)
    {
      goto LABEL_224;
    }

    *&v2 = 0.0;
    v120 = *&v276 & 0xC000000000000001;
    while (1)
    {
      v121 = v285;
      v26 = v285 + 56;
      v122 = v2;
      while (1)
      {
        if (v120)
        {
          MEMORY[0x1BFB111F0](v122, *&v276);
          swift_unknownObjectRelease();
          v2 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_388;
          }
        }

        else
        {
          if (v122 >= *((*&v276 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_388:
            __break(1u);
LABEL_389:
            __break(1u);
LABEL_390:
            __break(1u);
            goto LABEL_391;
          }

          v2 = v122 + 1;
          if (__OFADD__(v122, 1))
          {
            goto LABEL_388;
          }
        }

        if (!*(v121 + 16))
        {
          break;
        }

        v123 = sub_1BB6BB914();
        v124 = -1 << *(v121 + 32);
        v125 = v123 & ~v124;
        if (((*(v26 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0)
        {
          break;
        }

        v126 = ~v124;
        while (*(*(v121 + 48) + 8 * v125) != v122)
        {
          v125 = (v125 + 1) & v126;
          if (((*(v26 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0)
          {
            goto LABEL_212;
          }
        }

        v122 = v2;
        if (v2 == v278)
        {
          goto LABEL_224;
        }
      }

LABEL_212:
      v127 = *(v5 + 16);
      if (v120)
      {
        v128 = MEMORY[0x1BFB111F0](v122, *&v276);
        goto LABEL_216;
      }

      if (v122 >= *((*&v276 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_216:
      v129 = v128 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId;
      *v129 = v127;
      *(v129 + 8) = 0;

      if (v120)
      {
        v130 = MEMORY[0x1BFB111F0](v122, *&v276);
      }

      else
      {
        v130 = *(*&v276 + 32 + 8 * v122);
      }

      v26 = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v5 = COERCE_DOUBLE(sub_1BB59D7FC(0, *(v5 + 16) + 1, 1, v5));
      }

      v132 = *(v5 + 16);
      v131 = *(v5 + 24);
      v133 = v5;
      if (v132 >= v131 >> 1)
      {
        v133 = sub_1BB59D7FC((v131 > 1), v132 + 1, 1, v5);
      }

      *(v133 + 2) = v132 + 1;
      v5 = v133;
      v134 = &v133[32 * v132];
      *(v134 + 4) = v127;
      *(v134 + 5) = v130;
      *(v134 + 6) = 0;
      *(v134 + 7) = v26;
      if (v2 == v278)
      {
LABEL_224:

        if (v275 != 0.0)
        {
          v135 = 0;
          v136 = *&v280 & 0xC000000000000001;
          v278 = *&v280 + 32;
          *&v2 = NAN;
          do
          {
            v137 = v284;
            v26 = v284 + 56;
            v138 = v135;
            while (1)
            {
              if (v136)
              {
                MEMORY[0x1BFB111F0](v138, *&v280);
                swift_unknownObjectRelease();
                v135 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_390;
                }
              }

              else
              {
                if (v138 >= *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_389;
                }

                v135 = v138 + 1;
                if (__OFADD__(v138, 1))
                {
                  goto LABEL_390;
                }
              }

              if (!*(v137 + 16))
              {
                break;
              }

              v139 = sub_1BB6BB914();
              v140 = -1 << *(v137 + 32);
              v141 = v139 & ~v140;
              if (((*(v26 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
              {
                break;
              }

              v142 = ~v140;
              while (*(*(v137 + 48) + 8 * v141) != v138)
              {
                v141 = (v141 + 1) & v142;
                if (((*(v26 + ((v141 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
                {
                  goto LABEL_241;
                }
              }

              v138 = v135;
              if (v135 == *&v275)
              {
                goto LABEL_253;
              }
            }

LABEL_241:
            v143 = *(v5 + 16);
            if (v136)
            {
              v144 = MEMORY[0x1BFB111F0](v138, *&v280);
            }

            else
            {
              if (v138 >= *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_407;
              }
            }

            v145 = v144 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId;
            *v145 = v143;
            *(v145 + 8) = 0;

            if (v136)
            {
              v146 = MEMORY[0x1BFB111F0](v138, *&v280);
            }

            else
            {
              v146 = *(v278 + 8 * v138);
            }

            v26 = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v5 = COERCE_DOUBLE(sub_1BB59D7FC(0, *(v5 + 16) + 1, 1, v5));
            }

            v148 = *(v5 + 16);
            v147 = *(v5 + 24);
            v149 = v5;
            if (v148 >= v147 >> 1)
            {
              v149 = sub_1BB59D7FC((v147 > 1), v148 + 1, 1, v5);
            }

            *(v149 + 2) = v148 + 1;
            v5 = v149;
            v150 = &v149[32 * v148];
            *(v150 + 4) = v143;
            *(v150 + 5) = 0;
            *(v150 + 6) = v146;
            *(v150 + 7) = v26;
          }

          while (v135 != *&v275);
        }

LABEL_253:

        if (v253)
        {
          v151 = 0;
          v249 = v5 + 56;
          v152 = MEMORY[0x1E69E7CC0];
          v259 = v5;
          while (1)
          {
            if ((v277 & 0xC000000000000001) != 0)
            {
              v153 = MEMORY[0x1BFB111F0](v151, v277);
              v154 = v151 + 1;
              if (__OFADD__(v151, 1))
              {
                goto LABEL_291;
              }
            }

            else
            {
              if (v151 >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_395;
              }

              v154 = v151 + 1;
              if (__OFADD__(v151, 1))
              {
LABEL_291:
                __break(1u);
                goto LABEL_292;
              }
            }

            v254 = v154;
            v263 = *(v5 + 16);
            if (v263)
            {
              break;
            }

LABEL_255:

            v151 = v254;
            if (v254 == v253)
            {
              goto LABEL_293;
            }
          }

          v155 = 0;
          v156 = (v153 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_rect);
          v2 = v249;
          v260 = v151;
          while (2)
          {
            if (v155 >= *(v5 + 16))
            {
              goto LABEL_347;
            }

            v162 = *(v2 - 16);
            v161 = *(v2 - 8);
            v26 = *v2;
            if (v161)
            {
              v163 = *v156;
              v164 = v156[1];
              v165 = v156[2];
              v166 = v156[3];
              v267 = v166;
              v167 = *(v161 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect);
              v273 = *(v161 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8);
              v168 = *(v161 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16);
              v169 = *(v161 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24);

              swift_retain_n();

              v294.origin.x = v163;
              v294.origin.y = v164;
              v294.size.width = v165;
              v294.size.height = v166;
              v170 = CGRectGetWidth(v294);
              v295.origin.x = v167;
              v266 = v167;
              v295.origin.y = v273;
              v295.size.width = v168;
              v295.size.height = v169;
              v171 = CGRectGetWidth(v295);
              if (v171 >= v170)
              {
                v171 = v170;
              }

              v280 = v171;
              v296.origin.x = v163;
              v296.origin.y = v164;
              v296.size.width = v165;
              v296.size.height = v166;
              v172 = CGRectGetHeight(v296);
              v297.origin.x = v167;
              v297.origin.y = v273;
              v297.size.width = v168;
              v297.size.height = v169;
              v173 = CGRectGetHeight(v297);
              if (v173 >= v172)
              {
                v173 = v172;
              }

              v278 = *&v173;
              v298.origin.x = v163;
              v298.origin.y = v164;
              v298.size.width = v165;
              v298.size.height = v166;
              v276 = CGRectGetMidX(v298);
              v299.origin.x = v167;
              v299.origin.y = v273;
              v299.size.width = v168;
              v299.size.height = v169;
              v275 = CGRectGetMidX(v299);
              v300.origin.x = v163;
              v300.origin.y = v164;
              v300.size.width = v165;
              v300.size.height = v166;
              v174 = CGRectGetMidY(v300);
              v301.origin.x = v167;
              v301.origin.y = v273;
              v301.size.width = v168;
              v301.size.height = v169;
              v175 = CGRectGetMidY(v301);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v152 = sub_1BB59D908(0, *(v152 + 2) + 1, 1, v152);
              }

              v177 = *(v152 + 2);
              v176 = *(v152 + 3);
              v178 = v177 + 1;
              if (v177 >= v176 >> 1)
              {
                v152 = sub_1BB59D908((v176 > 1), v177 + 1, 1, v152);
              }

              v157 = fmax(v280, 0.01);
              v158 = fmax(*&v278, 0.01);
              v159 = sqrt((v276 - v275) / v157 * ((v276 - v275) / v157) + (v174 - v175) / v158 * ((v174 - v175) / v158));

              goto LABEL_262;
            }

            if (v162)
            {
              v179 = *v156;
              v180 = v156[1];
              v182 = v156[2];
              v181 = v156[3];
              v183 = *(v162 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect);
              v184 = *(v162 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16);
              v267 = v184;
              v270 = *(v162 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24);
              v274 = *(v162 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8);
              swift_retain_n();

              v302.origin.x = v179;
              v302.origin.y = v180;
              v302.size.width = v182;
              v302.size.height = v181;
              v185 = CGRectGetWidth(v302);
              v303.origin.x = v183;
              v266 = v183;
              v303.origin.y = v274;
              v303.size.width = v184;
              v303.size.height = v270;
              v186 = CGRectGetWidth(v303);
              if (v186 >= v185)
              {
                v186 = v185;
              }

              v280 = v186;
              v304.origin.x = v179;
              v304.origin.y = v180;
              v304.size.width = v182;
              v304.size.height = v181;
              v187 = CGRectGetHeight(v304);
              v305.origin.x = v183;
              v305.origin.y = v274;
              v305.size.width = v184;
              v305.size.height = v270;
              v188 = CGRectGetHeight(v305);
              if (v188 >= v187)
              {
                v188 = v187;
              }

              v278 = *&v188;
              v306.origin.x = v179;
              v306.origin.y = v180;
              v306.size.width = v182;
              v306.size.height = v181;
              v276 = CGRectGetMidX(v306);
              v307.origin.x = v183;
              v307.origin.y = v274;
              v307.size.width = v184;
              v307.size.height = v270;
              v275 = CGRectGetMidX(v307);
              v308.origin.x = v179;
              v308.origin.y = v180;
              v308.size.width = v182;
              v308.size.height = v181;
              v189 = CGRectGetMidY(v308);
              v309.origin.x = v183;
              v309.origin.y = v274;
              v309.size.width = v184;
              v309.size.height = v270;
              v190 = CGRectGetMidY(v309);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v152 = sub_1BB59D908(0, *(v152 + 2) + 1, 1, v152);
              }

              v177 = *(v152 + 2);
              v191 = *(v152 + 3);
              v178 = v177 + 1;
              if (v177 >= v191 >> 1)
              {
                v152 = sub_1BB59D908((v191 > 1), v177 + 1, 1, v152);
              }

              v192 = fmax(v280, 0.01);
              v193 = fmax(*&v278, 0.01);
              v159 = sqrt((v276 - v275) / v192 * ((v276 - v275) / v192) + (v189 - v190) / v193 * ((v189 - v190) / v193));

LABEL_262:
            }

            else
            {

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v152 = sub_1BB59D908(0, *(v152 + 2) + 1, 1, v152);
              }

              v177 = *(v152 + 2);
              v194 = *(v152 + 3);
              v178 = v177 + 1;
              if (v177 >= v194 >> 1)
              {
                v152 = sub_1BB59D908((v194 > 1), v177 + 1, 1, v152);
              }

              v159 = -1.0;
            }

            v160 = &v152[24 * v177];
            *(v160 + 4) = v260;
            *(v160 + 5) = v155;
            *(v152 + 2) = v178;
            *(v160 + 6) = v159;
            v2 += 32;
            ++v155;
            v5 = v259;
            if (v263 == v155)
            {
              goto LABEL_255;
            }

            continue;
          }
        }

LABEL_292:
        v152 = MEMORY[0x1E69E7CC0];
LABEL_293:
        v283 = v152;

        sub_1BB68EDA8(&v283, sub_1BB693B00, &qword_1EBC5E358);

        v195 = v283;
        v283 = MEMORY[0x1E69E7CD0];
        v196 = *(v195 + 16);
        if (!v196)
        {
LABEL_320:

          v210 = v5;

          v211 = v253;
          if (v253)
          {
            *&v2 = 0.0;
            *&v280 = v277 & 0xC000000000000001;
            v278 = 1;
            do
            {
              v212 = v283;
              v213 = v283 + 56;
              v5 = v2;
              while (1)
              {
                if (v280 == 0.0)
                {
                  if (v5 >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_393;
                  }

                  v214 = *(v277 + 32 + 8 * v5);

                  v2 = v5 + 1;
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_394;
                  }
                }

                else
                {
                  v214 = MEMORY[0x1BFB111F0](v5, v277);
                  v2 = v5 + 1;
                  if (__OFADD__(v5, 1))
                  {
                    goto LABEL_394;
                  }
                }

                if (!*(v212 + 16))
                {
                  break;
                }

                v215 = sub_1BB6BB914();
                v216 = -1 << *(v212 + 32);
                v217 = v215 & ~v216;
                if (((*&v213[(v217 >> 3) & 0xFFFFFFFFFFFFFF8] >> v217) & 1) == 0)
                {
                  break;
                }

                v218 = ~v216;
                while (*(*(v212 + 48) + 8 * v217) != v5)
                {
                  v217 = (v217 + 1) & v218;
                  if (((*&v213[(v217 >> 3) & 0xFFFFFFFFFFFFFF8] >> v217) & 1) == 0)
                  {
                    goto LABEL_337;
                  }
                }

                v5 = v2;
                if (v2 == v211)
                {
                  goto LABEL_342;
                }
              }

LABEL_337:
              v219 = *(v210 + 2);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5D1B8);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1BB6C85E0;
              *(inited + 32) = v214;

              v221 = sub_1BB5C2498(inited);
              swift_setDeallocating();
              swift_arrayDestroy();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v210 = sub_1BB59D7FC(0, *(v210 + 2) + 1, 1, v210);
              }

              v223 = *(v210 + 2);
              v222 = *(v210 + 3);
              if (v223 >= v222 >> 1)
              {
                v210 = sub_1BB59D7FC((v222 > 1), v223 + 1, 1, v210);
              }

              *(v210 + 2) = v223 + 1;
              v224 = &v210[32 * v223];
              *(v224 + 4) = v219;
              *(v224 + 5) = 0;
              *(v224 + 6) = 0;
              *(v224 + 7) = v221;
              v211 = v253;
            }

            while (v2 != v253);
          }

LABEL_342:

          return v210;
        }

        v197 = 0;
        v198 = v277 & 0xC000000000000001;
        v278 = v277 & 0xFFFFFFFFFFFFFF8;
        *&v280 = v277 + 32;
        v2 = 24;
        *&v276 = v277 & 0xC000000000000001;
        while (v197 < *(v195 + 16))
        {
          v201 = v195 + 32 + 24 * v197;
          if (*(v201 + 16) >= -0.5)
          {
            v202 = *v201;
            v203 = *(v201 + 8);
            v204 = v283;
            if (*(v283 + 2) && (v205 = sub_1BB6BB914(), v206 = -1 << *(v204 + 32), v207 = v205 & ~v206, ((*(v204 + 56 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) != 0))
            {
              v208 = ~v206;
              while (*(*(v204 + 48) + 8 * v207) != v202)
              {
                v207 = (v207 + 1) & v208;
                if (((*(v204 + 56 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) == 0)
                {
                  goto LABEL_306;
                }
              }
            }

            else
            {
LABEL_306:
              if (v198)
              {
                MEMORY[0x1BFB111F0](v202, v277);
              }

              else
              {
                if ((v202 & 0x8000000000000000) != 0)
                {
                  goto LABEL_397;
                }

                if (v202 >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_399;
                }
              }

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if ((v203 & 0x8000000000000000) != 0)
                {
                  goto LABEL_398;
                }
              }

              else
              {
                *&v5 = COERCE_DOUBLE(sub_1BB6B0FD4(v5));
                if ((v203 & 0x8000000000000000) != 0)
                {
                  goto LABEL_398;
                }
              }

              if (v203 >= *(v5 + 16))
              {
                goto LABEL_400;
              }

              v2 = v5 + 32 * v203;
              MEMORY[0x1BFB10C80]();
              v209 = *(v2 + 56);
              if (*(v209 + 16) >= *(v209 + 24) >> 1)
              {
                v275 = *(v209 + 16);
                sub_1BB6BAE64();
              }

              sub_1BB6BAEB4();
              v198 = v277 & 0xC000000000000001;
              if (v276 == 0.0)
              {
              }

              else
              {
                v199 = MEMORY[0x1BFB111F0](v202, v277);
              }

              if (v203 >= *(v5 + 16))
              {
                goto LABEL_401;
              }

              v200 = v199 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId;
              *v200 = *(v2 + 32);
              *(v200 + 8) = 0;

              sub_1BB5ACCEC(&v282, v202);
              v2 = 24;
            }
          }

          if (++v197 == v196)
          {
            goto LABEL_320;
          }
        }

        goto LABEL_392;
      }
    }

LABEL_406:
    __break(1u);
LABEL_407:
    __break(1u);
  }

LABEL_77:
  if (*&v5 != 0.0)
  {
    v24 = 0;
    v275 = 0.0;
    v25 = v2 & 0xC000000000000001;
    v26 = MEMORY[0x1E69E7CC8];
    v268 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v25)
      {
        v27 = MEMORY[0x1BFB111F0](v24, v2);
        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_343;
        }
      }

      else
      {
        if (v24 >= *(v268 + 16))
        {
          goto LABEL_350;
        }

        v27 = *(v2 + 8 * v24 + 32);

        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_343:
          __break(1u);
          while (2)
          {
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
LABEL_354:
            v45 = sub_1BB6BB564();
            if (!v45)
            {
              goto LABEL_355;
            }

LABEL_102:
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v279 = v45;
LABEL_105:
            if ((*&v280 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x1BFB111F0](v46, *&v280);
              v50 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                continue;
              }
            }

            else
            {
              if (v46 >= *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_351;
              }

              v49 = *(*&v280 + 8 * v46 + 32);

              v50 = v46 + 1;
              if (__OFADD__(v46, 1))
              {
                continue;
              }
            }

            break;
          }

          if (*(v49 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId + 8) == 1)
          {
          }

          else
          {
            v51 = *(v49 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_groupId);
            v52 = swift_allocObject();
            *(v52 + 16) = v51;
            sub_1BB58C41C(v47);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v285 = v26;
            v54 = sub_1BB6A1004(v51);
            v56 = *(v26 + 16);
            v57 = (v55 & 1) == 0;
            v35 = __OFADD__(v56, v57);
            v58 = v56 + v57;
            if (v35)
            {
              goto LABEL_349;
            }

            v59 = v55;
            if (*(v26 + 24) >= v58)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_117;
              }

              v66 = v54;
              sub_1BB5EB008();
              v54 = v66;
              v26 = v285;
              if ((v59 & 1) == 0)
              {
LABEL_118:
                v61 = v54;
                v62 = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);
                *(v26 + 8 * (v61 >> 6) + 64) |= 1 << v61;
                *(*(v26 + 48) + 8 * v61) = v51;
                v63 = (*(v26 + 56) + 32 * v61);
                *v63 = v51;
                v63[1] = 0;
                v63[2] = 0;
                v63[3] = v62;
                v64 = *(v26 + 16);
                v35 = __OFADD__(v64, 1);
                v65 = v64 + 1;
                if (v35)
                {
                  goto LABEL_353;
                }

                v54 = v61;
                *(v26 + 16) = v65;
              }
            }

            else
            {
              sub_1BB5E82C0(v58, isUniquelyReferenced_nonNull_native);
              v26 = v285;
              v54 = sub_1BB6A1004(v51);
              if ((v59 & 1) != (v60 & 1))
              {
                goto LABEL_409;
              }

LABEL_117:
              if ((v59 & 1) == 0)
              {
                goto LABEL_118;
              }
            }

            *(*(v26 + 56) + 32 * v54 + 16) = v49;

            v47 = sub_1BB68EF5C;
            v48 = v52;
            v45 = v279;
          }

          ++v46;
          if (v50 == v45)
          {
            goto LABEL_356;
          }

          goto LABEL_105;
        }
      }

      if (*(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId + 8) != 1)
      {
        break;
      }

LABEL_80:
      ++v24;
      if (v28 == v5)
      {
        goto LABEL_100;
      }
    }

    v29 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_groupId);
    *(swift_allocObject() + 16) = v29;
    sub_1BB58C41C(*&v275);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v285 = v26;
    v31 = sub_1BB6A1004(v29);
    v33 = *(v26 + 16);
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_348;
    }

    v37 = v32;
    if (*(v26 + 24) >= v36)
    {
      if ((v30 & 1) == 0)
      {
        v44 = v31;
        sub_1BB5EB008();
        v31 = v44;
        v26 = v285;
        *&v2 = v276;
        if ((v37 & 1) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_96;
      }
    }

    else
    {
      sub_1BB5E82C0(v36, v30);
      v26 = v285;
      v31 = sub_1BB6A1004(v29);
      if ((v37 & 1) != (v38 & 1))
      {
LABEL_409:
        sub_1BB6BB874();
        __break(1u);

        __break(1u);

        __break(1u);
        return result;
      }
    }

    *&v2 = v276;
    if ((v37 & 1) == 0)
    {
LABEL_94:
      v39 = v31;
      v40 = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);
      *(v26 + 8 * (v39 >> 6) + 64) |= 1 << v39;
      *(*(v26 + 48) + 8 * v39) = v29;
      v41 = (*(v26 + 56) + 32 * v39);
      *v41 = v29;
      v41[1] = 0;
      v41[2] = 0;
      v41[3] = v40;
      v42 = *(v26 + 16);
      v35 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v35)
      {
        goto LABEL_352;
      }

      v31 = v39;
      *(v26 + 16) = v43;
    }

LABEL_96:
    *(*(v26 + 56) + 32 * v31 + 8) = v27;

    v275 = COERCE_DOUBLE(sub_1BB68EF20);
    v5 = v278;
    goto LABEL_80;
  }

  v275 = 0.0;
  v26 = MEMORY[0x1E69E7CC8];
LABEL_100:

  if (v267 != 0.0)
  {
    goto LABEL_354;
  }

  v45 = *((*&v280 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45)
  {
    goto LABEL_102;
  }

LABEL_355:
  v47 = 0;
  v48 = 0;
LABEL_356:

  if (v266 != 0.0)
  {
    goto LABEL_384;
  }

  v226 = *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v271 = v47;
  if (v226)
  {
LABEL_358:
    v227 = 0;
    v47 = 0;
    v228 = v277 & 0xC000000000000001;
    v281 = v226;
    while (1)
    {
      if (v228)
      {
        v231 = MEMORY[0x1BFB111F0](v227, v277);
        v232 = v227 + 1;
        if (__OFADD__(v227, 1))
        {
          goto LABEL_380;
        }
      }

      else
      {
        if (v227 >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_382;
        }

        v231 = *(v277 + 8 * v227 + 32);

        v232 = v227 + 1;
        if (__OFADD__(v227, 1))
        {
LABEL_380:
          __break(1u);
LABEL_381:
          __break(1u);
LABEL_382:
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          v226 = sub_1BB6BB564();
          v271 = v47;
          if (!v226)
          {
            goto LABEL_385;
          }

          goto LABEL_358;
        }
      }

      if ((*(v231 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId + 8) & 1) == 0)
      {
        break;
      }

LABEL_362:

      ++v227;
      if (v232 == v226)
      {
        goto LABEL_386;
      }
    }

    v233 = v48;
    v234 = *(v231 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKHandObservation_groupId);
    *(swift_allocObject() + 16) = v234;
    sub_1BB58C41C(v47);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v285 = v26;
    v47 = v26;
    v235 = sub_1BB6A1004(v234);
    v237 = *(v26 + 16);
    v238 = (v236 & 1) == 0;
    v35 = __OFADD__(v237, v238);
    v239 = v237 + v238;
    if (v35)
    {
      goto LABEL_381;
    }

    v240 = v236;
    if (*(v26 + 24) >= v239)
    {
      if ((v48 & 1) == 0)
      {
        v246 = v235;
        sub_1BB5EB008();
        v235 = v246;
        v26 = v285;
        v48 = v233;
        if ((v240 & 1) == 0)
        {
          goto LABEL_376;
        }

        goto LABEL_359;
      }
    }

    else
    {
      sub_1BB5E82C0(v239, v48);
      v26 = v285;
      v235 = sub_1BB6A1004(v234);
      if ((v240 & 1) != (v241 & 1))
      {
        goto LABEL_409;
      }
    }

    v48 = v233;
    if ((v240 & 1) == 0)
    {
LABEL_376:
      v47 = v235;
      v242 = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);
      *(v26 + 8 * (v47 >> 6) + 64) |= 1 << v47;
      *(*(v26 + 48) + 8 * v47) = v234;
      v243 = (*(v26 + 56) + 32 * v47);
      *v243 = v234;
      v243[1] = 0;
      v243[2] = 0;
      v243[3] = v242;
      v244 = *(v26 + 16);
      v35 = __OFADD__(v244, 1);
      v245 = v244 + 1;
      if (v35)
      {
        goto LABEL_383;
      }

      v235 = v47;
      *(v26 + 16) = v245;
    }

LABEL_359:
    v229 = *(v26 + 56) + 32 * v235;

    MEMORY[0x1BFB10C80](v230);
    if (*(*(v229 + 24) + 16) >= *(*(v229 + 24) + 24) >> 1)
    {
      sub_1BB6BAE64();
    }

    sub_1BB6BAEB4();
    v47 = sub_1BB68EF5C;
    v226 = v281;
    v228 = v277 & 0xC000000000000001;
    goto LABEL_362;
  }

LABEL_385:
  v47 = 0;
LABEL_386:

  v247 = sub_1BB634E38(v26);
  sub_1BB58C41C(*&v275);
  sub_1BB58C41C(v271);
  sub_1BB58C41C(v47);
  return v247;
}

uint64_t type metadata accessor for DKSubjectGroupingTask()
{
  result = qword_1EBC5E348;
  if (!qword_1EBC5E348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB68EDA8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v22[0] = v6 + 32;
  v22[1] = v7;
  result = sub_1BB6BB784();
  if (result >= v7)
  {
    if (v7 >= 2)
    {
      v12 = v6 + 56;
      v13 = -1;
      for (i = 1; i != v7; ++i)
      {
        v15 = *(v6 + 32 + 24 * i + 16);
        v16 = v13;
        v17 = v12;
        do
        {
          if (v15 >= *(v17 - 8))
          {
            break;
          }

          v18 = *v17;
          *v17 = *(v17 - 24);
          *(v17 + 16) = *(v17 - 8);
          *(v17 - 8) = v15;
          *(v17 - 24) = v18;
          v17 -= 24;
        }

        while (!__CFADD__(v16++, 1));
        v12 += 24;
        --v13;
      }
    }
  }

  else
  {
    v9 = result;
    v10 = v7 >> 1;
    if (v7 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      v11 = sub_1BB6BAE94();
      *(v11 + 16) = v10;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = v11 + 32;
    v20[1] = v10;
    sub_1BB60BA14(v20, v21, v22, v9);
    *(v11 + 16) = 0;
  }

  *a1 = v6;
  return result;
}

uint64_t sub_1BB68EF20@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v3;
  result = sub_1BB5C2498(MEMORY[0x1E69E7CC0]);
  a1[3] = result;
  return result;
}

id DKPIDController.__allocating_init(kp:ki:kd:kv:integralLimit:clampIntegralZero:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = objc_allocWithZone(v6);
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp;
  v11 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_ki;
  v12 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv;
  v14 = MEMORY[0x1E69E7CC0];
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv] = MEMORY[0x1E69E7CC0];
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError] = v14;
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError] = v14;
  v17 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError] = v14;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit] = v14;
  v19 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError] = v14;
  v29 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError] = v14;
  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero;
  v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero] = 0;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralThres] = 0x3FB999999999999ALL;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampDerivativeThres] = 0x3FC999999999999ALL;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_derivativeErrorSmoothing] = 0x3FECCCCCCCCCCCCDLL;
  v20 = *(a1 + 16);
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize] = v20;
  *&v9[v10] = a1;
  *&v9[v11] = a2;
  *&v9[v12] = a3;
  *&v9[v13] = a4;

  *&v9[v18] = a5;

  if (v20)
  {
    v21 = sub_1BB6BAE94();
    *(v21 + 16) = v20;
    bzero((v21 + 32), 8 * v20);
    *&v9[v15] = v21;

    v22 = sub_1BB6BAE94();
    *(v22 + 16) = v20;
    bzero((v22 + 32), 8 * v20);
    *&v9[v16] = v22;

    v23 = sub_1BB6BAE94();
    *(v23 + 16) = v20;
    bzero((v23 + 32), 8 * v20);
    *&v9[v17] = v23;

    v24 = sub_1BB6BAE94();
    *(v24 + 16) = v20;
    bzero((v24 + 32), 8 * v20);
    *&v9[v19] = v24;

    v14 = sub_1BB6BAE94();
    *(v14 + 16) = v20;
    bzero((v14 + 32), 8 * v20);
  }

  else
  {
    *&v9[v15] = v14;

    *&v9[v16] = v14;

    *&v9[v17] = v14;

    *&v9[v19] = v14;
  }

  *&v9[v29] = v14;

  v9[v30] = a6 & 1;
  *&v9[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl] = [objc_allocWithZone(type metadata accessor for DKRateControl()) init];
  v33.receiver = v9;
  v33.super_class = v32;
  return objc_msgSendSuper2(&v33, sel_init);
}

id DKPIDController.init(kp:ki:kd:kv:integralLimit:clampIntegralZero:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_ki;
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd;
  v11 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd] = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv] = v11;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError] = v11;
  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError] = v11;
  v15 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError] = v11;
  v16 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit] = v11;
  v17 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError] = v11;
  v25 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError] = v11;
  v26 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero;
  v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero] = 0;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralThres] = 0x3FB999999999999ALL;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampDerivativeThres] = 0x3FC999999999999ALL;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_derivativeErrorSmoothing] = 0x3FECCCCCCCCCCCCDLL;
  v18 = *(a1 + 16);
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize] = v18;
  *&v6[v8] = a1;
  *&v6[v9] = a2;
  *&v6[v10] = a3;

  *&v6[v12] = a4;

  *&v6[v16] = a5;

  if (v18)
  {
    v19 = sub_1BB6BAE94();
    *(v19 + 16) = v18;
    bzero((v19 + 32), 8 * v18);
    *&v6[v13] = v19;

    v20 = sub_1BB6BAE94();
    *(v20 + 16) = v18;
    bzero((v20 + 32), 8 * v18);
    *&v6[v14] = v20;

    v21 = sub_1BB6BAE94();
    *(v21 + 16) = v18;
    bzero((v21 + 32), 8 * v18);
    *&v6[v15] = v21;

    v22 = sub_1BB6BAE94();
    *(v22 + 16) = v18;
    bzero((v22 + 32), 8 * v18);
    *&v6[v17] = v22;

    v11 = sub_1BB6BAE94();
    *(v11 + 16) = v18;
    bzero((v11 + 32), 8 * v18);
  }

  else
  {
    *&v6[v13] = v11;

    *&v6[v14] = v11;

    *&v6[v15] = v11;

    *&v6[v17] = v11;
  }

  *&v6[v25] = v11;

  v6[v26] = a6 & 1;
  *&v6[OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl] = [objc_allocWithZone(type metadata accessor for DKRateControl()) init];
  v28.receiver = v6;
  v28.super_class = type metadata accessor for DKPIDController();
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1BB68F510(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v3 = result;
      v4 = sub_1BB6BAE94();
      *(v4 + 16) = v2;
      bzero((v4 + 32), 8 * v2);
      result = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v5 = sub_1BB68F59C(result, v4);

    return v5;
  }

  return result;
}

uint64_t sub_1BB68F59C(uint64_t a1, unint64_t a2)
{
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl;
  v10 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl);
  v11 = CACurrentMediaTime();
  v12 = *&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs];
  if (v12 == 0.0)
  {
    v13 = *&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minSecsElapsed];
  }

  else
  {
    v13 = v11 - v12;
  }

  *&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs] = v11;
  v14 = 1.0 / v13;
  if (*&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps] > 1.0 / v13)
  {
    v14 = *&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_minFps];
  }

  if (*&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps] < v14)
  {
    v14 = *&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxFps];
  }

  *&v10[OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastFps] = v14;

  v15 = *(*(v2 + v9) + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_maxSecsElapsed);
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = sub_1BB6BAE94();
    *(v17 + 16) = v16;
    bzero((v17 + 32), 8 * v16);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize);
  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v55 = v17;
  if (v18)
  {
    if (v16)
    {
      if (v18 <= v16)
      {
        if (v18 <= *(a2 + 16))
        {
          v3 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError;
          v16 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError);
          if (v18 <= *(v16 + 16))
          {
            v4 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError;
            if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError) + 16))
            {
              v5 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError;
              if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError) + 16))
              {
                v6 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError;
                if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError) + 16))
                {
                  v17 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError;
                  if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError) + 16))
                  {
                    v62 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit;
                    if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_integralLimit) + 16))
                    {
                      v61 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp;
                      if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp) + 16))
                      {
                        v60 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_ki;
                        if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_ki) + 16))
                        {
                          v59 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd;
                          if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kd) + 16))
                          {
                            v58 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv;
                            if (v18 <= *(*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kv) + 16))
                            {
                              if (v18 <= *(v55 + 16))
                              {
                                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                                *(v2 + v3) = v16;
                                if (isUniquelyReferenced_nonNull_native)
                                {
LABEL_28:
                                  *(v2 + v3) = v16;
                                  v20 = *(v2 + v4);
                                  v21 = swift_isUniquelyReferenced_nonNull_native();
                                  *(v2 + v4) = v20;
                                  if ((v21 & 1) == 0)
                                  {
                                    v20 = sub_1BB6B0F28(v20);
                                  }

                                  *(v2 + v4) = v20;
                                  v22 = *(v2 + v5);
                                  v23 = swift_isUniquelyReferenced_nonNull_native();
                                  *(v2 + v5) = v22;
                                  if ((v23 & 1) == 0)
                                  {
                                    v22 = sub_1BB6B0F28(v22);
                                  }

                                  v64 = a1;
                                  *(v2 + v5) = v22;
                                  v24 = *(v2 + v17);
                                  v25 = swift_isUniquelyReferenced_nonNull_native();
                                  *(v2 + v17) = v24;
                                  v26 = v18;
                                  if ((v25 & 1) == 0)
                                  {
                                    v24 = sub_1BB6B0F28(v24);
                                  }

                                  *(v2 + v17) = v24;
                                  v27 = *(v2 + v6);
                                  v28 = swift_isUniquelyReferenced_nonNull_native();
                                  *(v2 + v6) = v27;
                                  v29 = a2;
                                  if ((v28 & 1) == 0)
                                  {
                                    v27 = sub_1BB6B0F28(v27);
                                  }

                                  a2 = 0;
                                  v15 = v15 + v15;
                                  v66 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampDerivativeThres;
                                  v67 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_derivativeErrorSmoothing;
                                  v30 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralZero;
                                  v63 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_clampIntegralThres;
                                  v65 = v64 + 32;
                                  v57 = v29 + 32;
                                  *(v2 + v6) = v27;
                                  v56 = v30;
                                  v16 = v26;
                                  while (1)
                                  {
                                    v31 = *(v2 + v3);
                                    a1 = 8 * a2;
                                    v32 = *&v31[8 * a2 + 32];
                                    v33 = *(v2 + v67);
                                    v34 = *(v65 + 8 * a2);
                                    v35 = swift_isUniquelyReferenced_nonNull_native();
                                    *(v2 + v3) = v31;
                                    if ((v35 & 1) == 0)
                                    {
                                      v31 = sub_1BB6B0F28(v31);
                                    }

                                    *&v31[8 * a2 + 32] = v32 * v33 + v34 * (1.0 - v33);
                                    *(v2 + v3) = v31;
                                    v36 = *(v2 + v4);
                                    v37 = swift_isUniquelyReferenced_nonNull_native();
                                    *(v2 + v4) = v36;
                                    if ((v37 & 1) == 0)
                                    {
                                      v36 = sub_1BB6B0F28(v36);
                                    }

                                    *&v36[8 * a2 + 32] = v34;
                                    *(v2 + v4) = v36;
                                    v38 = *(v2 + v5);
                                    v39 = swift_isUniquelyReferenced_nonNull_native();
                                    *(v2 + v5) = v38;
                                    if ((v39 & 1) == 0)
                                    {
                                      v38 = sub_1BB6B0F28(v38);
                                    }

                                    *&v38[a1 + 32] = v13 * v34 + *&v38[a1 + 32];
                                    *(v2 + v5) = v38;
                                    v40 = *(*(v2 + v3) + a1 + 32);
                                    v41 = *(*(v2 + v6) + a1 + 32);
                                    v18 = *(v2 + v17);
                                    v42 = swift_isUniquelyReferenced_nonNull_native();
                                    *(v2 + v17) = v18;
                                    if ((v42 & 1) == 0)
                                    {
                                      v18 = sub_1BB6B0F28(v18);
                                    }

                                    *(v18 + a1 + 32) = (v40 - v41) / v13;
                                    *(v2 + v17) = v18;
                                    if (fabs(*(*(v2 + v3) + a1 + 32)) < *(v2 + v66) || v15 < v13)
                                    {
                                      v44 = swift_isUniquelyReferenced_nonNull_native();
                                      *(v2 + v17) = v18;
                                      if (v44)
                                      {
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
                                          goto LABEL_91;
                                        }
                                      }

                                      else
                                      {
                                        v18 = sub_1BB6B0F28(v18);
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
LABEL_91:
                                          __break(1u);
LABEL_92:
                                          __break(1u);
LABEL_93:
                                          __break(1u);
LABEL_94:
                                          __break(1u);
LABEL_95:
                                          __break(1u);
LABEL_96:
                                          __break(1u);
LABEL_97:
                                          __break(1u);
LABEL_98:
                                          __break(1u);
LABEL_99:
                                          __break(1u);
                                          goto LABEL_100;
                                        }
                                      }

                                      if (a2 >= *(v18 + 16))
                                      {
                                        goto LABEL_93;
                                      }

                                      *(v18 + 8 * a2 + 32) = 0;
                                      *(v2 + v17) = v18;
                                    }

                                    if (fabs(v34) < *(v2 + v63) || v15 < v13)
                                    {
                                      v18 = *(v2 + v5);
                                      v45 = swift_isUniquelyReferenced_nonNull_native();
                                      *(v2 + v5) = v18;
                                      if (v45)
                                      {
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
                                          goto LABEL_92;
                                        }
                                      }

                                      else
                                      {
                                        v18 = sub_1BB6B0F28(v18);
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
                                          goto LABEL_92;
                                        }
                                      }

                                      if (a2 >= *(v18 + 16))
                                      {
                                        goto LABEL_95;
                                      }

                                      *(v18 + 8 * a2 + 32) = 0;
                                      *(v2 + v5) = v18;
                                    }

                                    v46 = *(*(v2 + v3) + 8 * a2 + 32);
                                    v47 = *(v2 + v6);
                                    v48 = swift_isUniquelyReferenced_nonNull_native();
                                    *(v2 + v6) = v47;
                                    if ((v48 & 1) == 0)
                                    {
                                      v47 = sub_1BB6B0F28(v47);
                                    }

                                    *&v47[a1 + 32] = v46;
                                    *(v2 + v6) = v47;
                                    v18 = *(v2 + v5);
                                    v49 = *(v18 + a1 + 32);
                                    v50 = *(*(v2 + v62) + a1 + 32);
                                    if (v50 < v49)
                                    {
                                      break;
                                    }

                                    v50 = -v50;
                                    if (v49 < v50)
                                    {
                                      v52 = swift_isUniquelyReferenced_nonNull_native();
                                      *(v2 + v5) = v18;
                                      if (v52)
                                      {
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
                                          goto LABEL_89;
                                        }
                                      }

                                      else
                                      {
                                        v18 = sub_1BB6B0F28(v18);
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
LABEL_89:
                                          __break(1u);
                                          return v55;
                                        }
                                      }

                                      if (a2 >= *(v18 + 16))
                                      {
                                        goto LABEL_99;
                                      }

                                      goto LABEL_73;
                                    }

LABEL_74:
                                    if (v34 == 0.0 && *(v2 + v56) == 1)
                                    {
                                      v53 = swift_isUniquelyReferenced_nonNull_native();
                                      *(v2 + v5) = v18;
                                      if (v53)
                                      {
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
                                          goto LABEL_97;
                                        }
                                      }

                                      else
                                      {
                                        v18 = sub_1BB6B0F28(v18);
                                        if ((a2 & 0x8000000000000000) != 0)
                                        {
                                          goto LABEL_97;
                                        }
                                      }

                                      if (a2 >= *(v18 + 16))
                                      {
                                        goto LABEL_98;
                                      }

                                      *(v18 + 8 * a2 + 32) = 0;
                                      *(v2 + v5) = v18;
                                    }

                                    ++a2;
                                    *(v55 + 32 + a1) = *(*(v2 + v4) + a1 + 32) * *(*(v2 + v61) + a1 + 32) + *(v18 + a1 + 32) * *(*(v2 + v60) + a1 + 32) + *(*(v2 + v17) + a1 + 32) * *(*(v2 + v59) + a1 + 32) + *(v57 + a1) * *(*(v2 + v58) + a1 + 32);
                                    if (v16 == a2)
                                    {
                                      return v55;
                                    }
                                  }

                                  v51 = swift_isUniquelyReferenced_nonNull_native();
                                  *(v2 + v5) = v18;
                                  if (v51)
                                  {
                                    if ((a2 & 0x8000000000000000) != 0)
                                    {
                                      goto LABEL_94;
                                    }
                                  }

                                  else
                                  {
                                    v18 = sub_1BB6B0F28(v18);
                                    if ((a2 & 0x8000000000000000) != 0)
                                    {
                                      goto LABEL_94;
                                    }
                                  }

                                  if (a2 >= *(v18 + 16))
                                  {
                                    goto LABEL_96;
                                  }

LABEL_73:
                                  *(v18 + 8 * a2 + 32) = v50;
                                  *(v2 + v5) = v18;
                                  goto LABEL_74;
                                }

LABEL_115:
                                v16 = sub_1BB6B0F28(v16);
                                goto LABEL_28;
                              }

LABEL_114:
                              __break(1u);
                              goto LABEL_115;
                            }

LABEL_113:
                            __break(1u);
                            goto LABEL_114;
                          }

LABEL_112:
                          __break(1u);
                          goto LABEL_113;
                        }

LABEL_111:
                        __break(1u);
                        goto LABEL_112;
                      }

LABEL_110:
                      __break(1u);
                      goto LABEL_111;
                    }

LABEL_109:
                    __break(1u);
                    goto LABEL_110;
                  }

LABEL_108:
                  __break(1u);
                  goto LABEL_109;
                }

LABEL_107:
                __break(1u);
                goto LABEL_108;
              }

LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  return v55;
}

void sub_1BB68FD60()
{
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_stateSize);
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!v3)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError;
  v0 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError);
  if (v3 > *(v0 + 2))
  {
    goto LABEL_8;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v0 = sub_1BB6B0F28(v0);
  }

  bzero(v0 + 32, 8 * v3);
  *(v1 + v2) = v0;
}

uint64_t sub_1BB68FDE8()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp;
  v2 = *(*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_kp) + 16);
  if (v2)
  {
    v3 = sub_1BB6BAE94();
    *(v3 + 16) = v2;
    bzero((v3 + 32), 8 * v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_pError) = v3;

  v4 = *(*(v0 + v1) + 16);
  if (v4)
  {
    v5 = sub_1BB6BAE94();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 8 * v4);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_iError) = v5;

  v6 = *(*(v0 + v1) + 16);
  if (v6)
  {
    v7 = sub_1BB6BAE94();
    *(v7 + 16) = v6;
    bzero((v7 + 32), 8 * v6);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_dError) = v7;

  v8 = *(*(v0 + v1) + 16);
  if (v8)
  {
    v9 = sub_1BB6BAE94();
    *(v9 + 16) = v8;
    bzero((v9 + 32), 8 * v8);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_previousError) = v9;

  v10 = *(*(v0 + v1) + 16);
  if (v10)
  {
    v11 = sub_1BB6BAE94();
    *(v11 + 16) = v10;
    bzero((v11 + 32), 8 * v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_smoothedError) = v11;

  v13 = *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore15DKPIDController_rateControl);
  v14 = v13 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastTriggerSecs;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKRateControl_lastSecs) = 0;
  return result;
}

id DKPIDController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DKPIDController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKPIDController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BB69029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1BB6BA7F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v59 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v59 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v59 - v29;
  v32 = *(a1 + 8);
  v31 = *(a1 + 16);
  v68 = v4;
  v33 = *(v4 + 56);
  v33(&v59 - v29, 1, 1, v3, v28);
  (v33)(v26, 1, 1, v3);
  if (v32 && (*(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8) & 1) == 0)
  {
    v34 = *(*(v64 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastFacePrintTime);
    if (*(v34 + 16) && (v35 = sub_1BB6A1004(*(v32 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId)), (v36 & 1) != 0))
    {
      v37 = *(v34 + 56);
      v38 = v68;
      v39 = v59;
      (*(v68 + 16))(v59, v37 + *(v68 + 72) * v35, v3);
      sub_1BB598308(v30, &qword_1EBC5C050);
      (*(v38 + 32))(v30, v39, v3);
      (v33)(v30, 0, 1, v3);
    }

    else
    {
      sub_1BB6BA724();
      sub_1BB598308(v30, &qword_1EBC5C050);
      (v33)(v23, 0, 1, v3);
      sub_1BB5D804C(v23, v30);
    }
  }

  if (v31 && (*(v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8) & 1) == 0)
  {
    v40 = *(*(v64 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastBodyPrintTime);
    if (*(v40 + 16) && (v41 = sub_1BB6A1004(*(v31 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId)), (v42 & 1) != 0))
    {
      v43 = v68;
      v44 = *(v40 + 56) + *(v68 + 72) * v41;
      v45 = v60;
      (*(v68 + 16))(v60, v44, v3);
      sub_1BB598308(v26, &qword_1EBC5C050);
      (*(v43 + 32))(v26, v45, v3);
      (v33)(v26, 0, 1, v3);
    }

    else
    {
      sub_1BB6BA724();
      sub_1BB598308(v26, &qword_1EBC5C050);
      (v33)(v23, 0, 1, v3);
      sub_1BB5D804C(v23, v26);
    }
  }

  sub_1BB5982A0(v30, v20, &qword_1EBC5C050);
  v46 = v68;
  v47 = *(v68 + 48);
  if (v47(v20, 1, v3) == 1)
  {
    goto LABEL_16;
  }

  v48 = *(v46 + 32);
  v49 = v66;
  v48(v66, v20, v3);
  v20 = v63;
  sub_1BB5982A0(v26, v63, &qword_1EBC5C050);
  if (v47(v20, 1, v3) == 1)
  {
    (*(v46 + 8))(v49, v3);
LABEL_16:
    sub_1BB598308(v20, &qword_1EBC5C050);
    v50 = v65;
    sub_1BB5982A0(v30, v65, &qword_1EBC5C050);
    if (v47(v50, 1, v3) == 1)
    {
      sub_1BB598308(v50, &qword_1EBC5C050);
      v51 = v62;
      sub_1BB5982A0(v26, v62, &qword_1EBC5C050);
      if (v47(v51, 1, v3) == 1)
      {
        sub_1BB598308(v51, &qword_1EBC5C050);
        sub_1BB6BA734();
        sub_1BB598308(v26, &qword_1EBC5C050);
        return sub_1BB598308(v30, &qword_1EBC5C050);
      }

      else
      {
        sub_1BB598308(v26, &qword_1EBC5C050);
        sub_1BB598308(v30, &qword_1EBC5C050);
        return (*(v46 + 32))(v67, v51, v3);
      }
    }

    else
    {
      sub_1BB598308(v26, &qword_1EBC5C050);
      sub_1BB598308(v30, &qword_1EBC5C050);
      return (*(v46 + 32))(v67, v50, v3);
    }
  }

  v53 = v20;
  v54 = v61;
  v48(v61, v53, v3);
  v55 = sub_1BB6BA774();
  sub_1BB598308(v26, &qword_1EBC5C050);
  sub_1BB598308(v30, &qword_1EBC5C050);
  v56 = *(v46 + 8);
  if (v55)
  {
    v56(v54, v3);
    v58 = v66;
    v57 = v67;
  }

  else
  {
    v56(v66, v3);
    v57 = v67;
    v58 = v54;
  }

  return (v48)(v57, v58, v3);
}

uint64_t sub_1BB690A38()
{
  v1[37] = v0;
  v2 = sub_1BB6BAA34();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v1[41] = swift_task_alloc();
  v3 = sub_1BB6BA844();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v4 = sub_1BB6BA7F4();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  v1[51] = swift_task_alloc();
  v5 = type metadata accessor for DKCamera();
  v1[52] = v5;
  v1[53] = *(v5 - 8);
  v1[54] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB690CCC, 0, 0);
}

void sub_1BB690CCC()
{
  v170 = v0;
  v169[4] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 296);
  v2 = *(v1 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_image);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 416);
  v5 = *(v0 + 424);
  v6 = *(v0 + 408);
  sub_1BB5982A0(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v6, &qword_1EBC5BCB0);
  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    sub_1BB5981C8(*(v0 + 408), *(v0 + 432));
    if (*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups))
    {
      v9 = *(v0 + 296);
      v169[0] = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_groups);
      swift_bridgeObjectRetain_n();

      v10 = v3;
      sub_1BB695758(v169, v9);

      if (!*(v169[0] + 2))
      {
        sub_1BB59822C(*(v0 + 432));

        goto LABEL_11;
      }

      v163 = v10;
      v12 = *(v0 + 392);
      v11 = *(v0 + 400);
      v14 = *(v0 + 376);
      v13 = *(v0 + 384);
      v161 = *(v0 + 296);
      v15 = *(v169[0] + 5);
      v166 = *(v169[0] + 4);
      v17 = *(v169[0] + 6);
      v16 = *(v169[0] + 7);

      v158 = v1;
      v157 = *(v13 + 16);
      v157(v11, *(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v14);
      v169[0] = v166;
      v169[1] = v15;
      v165 = v17;
      v169[2] = v17;
      v169[3] = v16;
      sub_1BB69029C(v169, v12);
      sub_1BB6BA744();
      v19 = v18;
      v20 = *(v13 + 8);
      v20(v12, v14);
      v20(v11, v14);
      if (*(*(v161 + 32) + 104) >= v19)
      {
        sub_1BB59822C(*(v0 + 432));

        goto LABEL_11;
      }

      v162 = v15;
      v21 = DKCamera.getCGImagePropertyOrientation()();
      v22 = v163;
      v23 = MEMORY[0x1E69E7CC0];
      sub_1BB5B0FA4(MEMORY[0x1E69E7CC0]);
      v24 = objc_allocWithZone(MEMORY[0x1E69845B8]);
      type metadata accessor for VNImageOption(0);
      sub_1BB69584C(&qword_1EBC5BD20, type metadata accessor for VNImageOption);
      v25 = sub_1BB6BAAE4();

      v160 = [v24 initWithCVPixelBuffer:v22 orientation:v21 options:v25];

      v156 = v22;
      v26 = [objc_allocWithZone(MEMORY[0x1E6984478]) init];
      v27 = [objc_allocWithZone(MEMORY[0x1E6984498]) init];
      [v26 setDetectionLevel_];
      [v27 setDetectionLevel_];
      v167 = v23;
      v168 = v23;
      *(v0 + 256) = 0;
      v28 = [v26 setRevision:3737841669 error:v0 + 256];
      v29 = *(v0 + 256);
      v164 = v27;
      if (v28 && (*(v0 + 264) = 0, v30 = v29, v31 = [v27 setRevision:3737841672 error:v0 + 264], v29 = *(v0 + 264), v31))
      {
        v32 = &unk_1E7FB4000;
        v152 = v26;
        if (v15)
        {
          v33 = *&v15[OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect];
          v34 = *&v15[OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 8];
          v35 = *&v15[OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 16];
          v36 = *&v15[OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_rect + 24];
          v37 = v29;

          v172.origin.x = v33;
          v172.origin.y = v34;
          v172.size.width = v35;
          v172.size.height = v36;
          v38 = 1.0 - v34 - CGRectGetHeight(v172);
          v39 = [objc_opt_self() observationWithBoundingBox_];
          MEMORY[0x1BFB10C80]();
          if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          v40 = *(v0 + 368);
          v41 = *(v0 + 344);
          v149 = *(v0 + 336);
          sub_1BB6BAEB4();
          v154 = v167;
          v42 = [v39 uuid];
          sub_1BB6BA824();

          *(v0 + 200) = type metadata accessor for DKFaceObservation(0);
          *(v0 + 208) = sub_1BB69584C(&qword_1EBC5C068, type metadata accessor for DKFaceObservation);
          *(v0 + 176) = v162;
          sub_1BB593648((v0 + 176), v0 + 216);

          v43 = MEMORY[0x1E69E7CC8];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v169[0] = v43;
          v45 = *(v0 + 240);
          v46 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 216, v45);
          v47 = *(v45 - 8);
          v48 = swift_task_alloc();
          (*(v47 + 16))(v48, v46, v45);
          sub_1BB693BE4(*v48, v40, isUniquelyReferenced_nonNull_native, v169);

          (*(v41 + 8))(v40, v149);
          __swift_destroy_boxed_opaque_existential_1(v0 + 216);

          v49 = v169[0];
          v26 = v152;
          v50 = v165;
          v32 = &unk_1E7FB4000;
        }

        else
        {
          v67 = v29;
          v154 = MEMORY[0x1E69E7CC0];
          v49 = MEMORY[0x1E69E7CC8];
          v50 = v165;
        }

        v68 = MEMORY[0x1E69E7CC0];
        v69 = v164;
        if (v50)
        {
          v70 = *&v50[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect];
          v71 = *&v50[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 8];
          v72 = *&v50[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 16];
          v73 = *&v50[OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_rect + 24];

          v173.origin.x = v70;
          v173.origin.y = v71;
          v173.size.width = v72;
          v173.size.height = v73;
          v74 = 1.0 - v71 - CGRectGetHeight(v173);
          v75 = [objc_opt_self() v32[447]];
          MEMORY[0x1BFB10C80]();
          if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          v76 = *(v0 + 368);
          v146 = *(v0 + 344);
          v150 = *(v0 + 336);
          sub_1BB6BAEB4();
          v68 = v168;
          v77 = [v75 uuid];
          sub_1BB6BA824();

          *(v0 + 120) = type metadata accessor for DKBodyObservation(0);
          *(v0 + 128) = sub_1BB69584C(&qword_1EBC5C060, type metadata accessor for DKBodyObservation);
          *(v0 + 96) = v50;
          sub_1BB593648((v0 + 96), v0 + 136);

          LOBYTE(v77) = swift_isUniquelyReferenced_nonNull_native();
          v169[0] = v49;
          v78 = *(v0 + 160);
          v79 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v78);
          v80 = *(v78 - 8);
          v81 = swift_task_alloc();
          (*(v80 + 16))(v81, v79, v78);
          sub_1BB693ED0(*v81, v76, v77, v169);

          (*(v146 + 8))(v76, v150);
          __swift_destroy_boxed_opaque_existential_1(v0 + 136);

          v82 = v169[0];
          v26 = v152;
          v69 = v164;
        }

        else
        {
          v82 = v49;
        }

        sub_1BB654B5C(0, &qword_1EBC5E3F8);
        v83 = sub_1BB6BAE14();
        [v26 setInputFaceObservations_];

        if (v68 >> 62)
        {
          sub_1BB654B5C(0, &qword_1EBC5E400);

          sub_1BB6BB534();
        }

        else
        {

          sub_1BB6BB7F4();
          sub_1BB654B5C(0, &qword_1EBC5E400);
        }

        sub_1BB654B5C(0, &qword_1EBC5E400);
        v84 = sub_1BB6BAE14();

        [v69 setInputDetectedObjectObservations_];

        v169[0] = MEMORY[0x1E69E7CC0];
        if (v154 >> 62)
        {
          v85 = sub_1BB6BB564();
        }

        else
        {
          v85 = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v85 < 1)
        {
          v87 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v86 = v26;
          MEMORY[0x1BFB10C80]();
          if (*((v169[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v87 = v169[0];
        }

        if (v68 >> 62)
        {
          v88 = sub_1BB6BB564();
        }

        else
        {
          v88 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v88 >= 1)
        {
          v89 = v69;
          MEMORY[0x1BFB10C80]();
          if (*((v169[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BB6BAE64();
          }

          sub_1BB6BAEB4();
          v87 = v169[0];
        }

        if (v87 >> 62)
        {
          sub_1BB654B5C(0, &qword_1EBC5E408);

          sub_1BB6BB534();
        }

        else
        {

          sub_1BB6BB7F4();
          sub_1BB654B5C(0, &qword_1EBC5E408);
        }

        sub_1BB654B5C(0, &qword_1EBC5E408);
        v90 = sub_1BB6BAE14();

        *(v0 + 272) = 0;
        v91 = [v160 performRequests:v90 error:v0 + 272];

        v92 = *(v0 + 272);
        if (v91)
        {
          v93 = v92;
          v94 = [v26 results];
          v151 = v82;
          if (v94)
          {
            v95 = v94;
            v96 = sub_1BB6BAE34();

            if (v96 >> 62)
            {
              v97 = sub_1BB6BB564();
              if (v97)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v97)
              {
LABEL_55:
                if (v97 >= 1)
                {
                  v98 = 0;
                  v99 = (*(v0 + 344) + 8);
                  v142 = (*(v0 + 384) + 56);
                  while (1)
                  {
                    if ((v96 & 0xC000000000000001) != 0)
                    {
                      v100 = MEMORY[0x1BFB111F0](v98, v96);
                    }

                    else
                    {
                      v100 = *(v96 + 8 * v98 + 32);
                    }

                    v101 = v100;
                    v102 = [v100 faceprint];
                    if (v102)
                    {
                      v103 = v102;
                      v104 = [v101 uuid];
                      sub_1BB6BA824();

                      if (*(v82 + 2) && (v105 = sub_1BB6A1288(*(v0 + 360)), (v106 & 1) != 0))
                      {
                        v107 = *(v0 + 360);
                        v108 = *(v0 + 336);
                        sub_1BB5BA078(*(v82 + 7) + 40 * v105, v0 + 56);
                        (*v99)(v107, v108);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008);
                        type metadata accessor for DKFaceObservation(0);
                        if (swift_dynamicCast())
                        {
                          v109 = *(v0 + 288);
                          v110 = *(v109 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint);
                          *(v109 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprint) = v103;
                          v111 = v103;

                          [v111 confidence];
                          v113 = v109 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_faceprintConfidence;
                          *v113 = v112;
                          *(v113 + 8) = 0;
                          if (*(v109 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId + 8) == 1)
                          {
                          }

                          else
                          {
                            v114 = *(v0 + 376);
                            v147 = v111;
                            v115 = *(v0 + 328);
                            v145 = *(v109 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKFaceObservation_trackerId);
                            v157(v115, *(v158 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v114);
                            (*v142)(v115, 0, 1, v114);

                            sub_1BB6348A0(v115, v145);

                            v82 = v151;
                          }

                          goto LABEL_60;
                        }
                      }

                      else
                      {
                        (*v99)(*(v0 + 360), *(v0 + 336));
                      }
                    }

LABEL_60:
                    if (v97 == ++v98)
                    {
                      goto LABEL_77;
                    }
                  }
                }

                __break(1u);
LABEL_104:
                __break(1u);
                return;
              }
            }

LABEL_77:

            v26 = v152;
            v69 = v164;
          }

          v117 = [v69 results];
          if (v117)
          {
            v118 = v117;
            v119 = sub_1BB6BAE34();

            if (v119 >> 62)
            {
              v120 = sub_1BB6BB564();
              if (v120)
              {
                goto LABEL_81;
              }
            }

            else
            {
              v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v120)
              {
LABEL_81:
                if (v120 < 1)
                {
                  goto LABEL_104;
                }

                v121 = 0;
                v122 = v119 & 0xC000000000000001;
                v155 = (*(v0 + 344) + 8);
                v144 = (*(v0 + 384) + 56);
                v148 = v119;
                do
                {
                  if (v122)
                  {
                    v123 = MEMORY[0x1BFB111F0](v121, v119);
                  }

                  else
                  {
                    v123 = *(v119 + 8 * v121 + 32);
                  }

                  v124 = v123;
                  objc_opt_self();
                  v125 = swift_dynamicCastObjCClass();
                  if (v125)
                  {
                    v126 = [v125 torsoprint];
                    if (v126)
                    {
                      v127 = v126;
                      v128 = [v124 uuid];
                      sub_1BB6BA824();

                      if (*(v151 + 2))
                      {
                        v129 = sub_1BB6A1288(*(v0 + 352));
                        if (v130)
                        {
                          v131 = *(v0 + 352);
                          v132 = *(v0 + 336);
                          sub_1BB5BA078(*(v151 + 7) + 40 * v129, v0 + 16);
                          (*v155)(v131, v132);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C008);
                          type metadata accessor for DKBodyObservation(0);
                          if (swift_dynamicCast())
                          {
                            v133 = *(v0 + 280);
                            v134 = *(v133 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint);
                            *(v133 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprint) = v127;
                            v135 = v127;

                            [v135 confidence];
                            v137 = v133 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_torsoprintConfidence;
                            *v137 = v136;
                            *(v137 + 8) = 0;
                            v119 = v148;
                            if (*(v133 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId + 8) == 1)
                            {
                            }

                            else
                            {
                              v138 = *(v0 + 376);
                              v143 = v135;
                              v139 = *(v0 + 328);
                              v141 = *(v133 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKBodyObservation_trackerId);
                              v157(v139, *(v158 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v138);
                              (*v144)(v139, 0, 1, v138);

                              sub_1BB6348A0(v139, v141);
                            }
                          }

                          else
                          {

                            v119 = v148;
                          }

                          goto LABEL_85;
                        }
                      }

                      (*v155)(*(v0 + 352), *(v0 + 336));
                    }
                  }

LABEL_85:
                  ++v121;
                }

                while (v120 != v121);
              }
            }

            v140 = *(v0 + 432);

            sub_1BB59822C(v140);
          }

          else
          {
            sub_1BB59822C(*(v0 + 432));
          }

LABEL_11:
          v7 = 1;
          goto LABEL_5;
        }

        v116 = v92;
        v52 = sub_1BB6BA5B4();

        swift_willThrow();
      }

      else
      {
        v51 = v29;
        v52 = sub_1BB6BA5B4();

        swift_willThrow();
      }

      (*(*(v0 + 312) + 16))(*(v0 + 320), *(v0 + 296) + OBJC_IVAR____TtC23IntelligentTrackingCore25DKIntelligentTrackingTask_logger, *(v0 + 304));
      v53 = v52;
      v54 = sub_1BB6BAA14();
      v55 = sub_1BB6BB074();

      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 432);
      v58 = *(v0 + 312);
      v59 = *(v0 + 320);
      v60 = *(v0 + 304);
      if (v56)
      {
        v159 = *(v0 + 432);
        v61 = swift_slowAlloc();
        v153 = v26;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v169[0] = v63;
        *v61 = 136315394;
        *(v61 + 4) = sub_1BB6A0A5C(0x2865747563657865, 0xE900000000000029, v169);
        *(v61 + 12) = 2112;
        v64 = v52;
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 14) = v65;
        *v62 = v65;
        _os_log_impl(&dword_1BB58A000, v54, v55, "%s Unable to create face/torso print error=%@", v61, 0x16u);
        sub_1BB598308(v62, &qword_1EBC5C378);
        MEMORY[0x1BFB122F0](v62, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x1BFB122F0](v63, -1, -1);
        MEMORY[0x1BFB122F0](v61, -1, -1);

        (*(v58 + 8))(v59, v60);
        v66 = v159;
      }

      else
      {

        (*(v58 + 8))(v59, v60);
        v66 = v57;
      }

      sub_1BB59822C(v66);
      v7 = 0;
      goto LABEL_5;
    }

    sub_1BB59822C(*(v0 + 432));
    goto LABEL_11;
  }

  sub_1BB598308(*(v0 + 408), &qword_1EBC5BCB0);
LABEL_4:
  v7 = 0;
LABEL_5:

  v8 = *(v0 + 8);

  v8(v7);
}
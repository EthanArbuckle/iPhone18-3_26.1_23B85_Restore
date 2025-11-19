uint64_t sub_1D68F6BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char **a8@<X8>, uint64_t a9)
{
  v113 = a7;
  v119 = a4;
  v120 = a6;
  v121 = a3;
  v123 = a8;
  v12 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v12, v13);
  v118 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsDataVisualizationResponseMetadata();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v112 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SportsEventStatusResponseEmbed();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v18);
  v110 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v114 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v108 = &v106 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v122 = &v106 - v28;
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v106 - v31;
  v33 = sub_1D72585BC();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v35);
  v115 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v106 - v39;
  v117 = v12;
  v41 = *(a1 + *(v12 + 40));
  LOBYTE(v126) = v41;
  sub_1D68F7D24(&v126, a2, v32);
  *&v124 = v34;
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_1D6900328(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    v42 = 0xEC00000045524F43;
    v43 = 0x535F5354524F5053;
    sub_1D7262EBC();
    sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    v124 = xmmword_1D7273AE0;
    *(v44 + 16) = xmmword_1D7273AE0;
    v126 = 0;
    v127 = 0xE000000000000000;
    if (v41 > 3)
    {
      if (v41 > 5)
      {
        if (v41 == 6)
        {
          v46 = 0x80000001D73BCEC0;
          v45 = 0xD000000000000014;
        }

        else
        {
          v46 = 0x80000001D73BCEE0;
          v45 = 0xD000000000000013;
        }
      }

      else if (v41 == 4)
      {
        v46 = 0x80000001D73BCE80;
        v45 = 0xD000000000000010;
      }

      else
      {
        v46 = 0x80000001D73BCEA0;
        v45 = 0xD000000000000011;
      }
    }

    else if (v41 > 1)
    {
      if (v41 == 2)
      {
        v46 = 0xEF474E49444E4154;
        v45 = 0x535F5354524F5053;
      }

      else
      {
        v45 = 0x425F5354524F5053;
        v46 = 0xEE0054454B434152;
      }
    }

    else
    {
      v45 = 0x535F5354524F5053;
      v46 = 0xEC00000045524F43;
      if (v41)
      {
        v46 = 0x80000001D73BCF90;
        v45 = 0xD000000000000015;
      }
    }

    MEMORY[0x1DA6F9910](v45, v46);

    v81 = v126;
    v80 = v127;
    *(v44 + 56) = MEMORY[0x1E69E6158];
    v82 = sub_1D5B7E2C0();
    *(v44 + 64) = v82;
    *(v44 + 32) = v81;
    *(v44 + 40) = v80;
    sub_1D725C30C();

    sub_1D7262EBC();
    v83 = swift_allocObject();
    *(v83 + 16) = v124;
    v126 = 0;
    v127 = 0xE000000000000000;
    v84 = *(v121 + 72);
    if (v84 > 3)
    {
      if (*(v121 + 72) > 5u)
      {
        if (v84 == 6)
        {
          v42 = 0x80000001D73BCEC0;
          v43 = 0xD000000000000014;
        }

        else
        {
          v42 = 0x80000001D73BCEE0;
          v43 = 0xD000000000000013;
        }
      }

      else if (v84 == 4)
      {
        v42 = 0x80000001D73BCE80;
        v43 = 0xD000000000000010;
      }

      else
      {
        v42 = 0x80000001D73BCEA0;
        v43 = 0xD000000000000011;
      }
    }

    else if (*(v121 + 72) > 1u)
    {
      if (v84 == 2)
      {
        v42 = 0xEF474E49444E4154;
      }

      else
      {
        v43 = 0x425F5354524F5053;
        v42 = 0xEE0054454B434152;
      }
    }

    else if (*(v121 + 72))
    {
      v42 = 0x80000001D73BCF90;
      v43 = 0xD000000000000015;
    }

    MEMORY[0x1DA6F9910](v43, v42);

    v85 = v126;
    v86 = v127;
    *(v83 + 56) = MEMORY[0x1E69E6158];
    *(v83 + 64) = v82;
    *(v83 + 32) = v85;
    *(v83 + 40) = v86;
    sub_1D725C30C();

    goto LABEL_57;
  }

  v47 = *(v124 + 32);
  v121 = v33;
  v47(v40, v32, v33);
  v48 = sub_1D68F53EC(a1, v119);
  v49 = sub_1D68F5644(a1, a5, v48);
  v50 = sub_1D68F59AC(a1, a5, v48);
  v51 = a1[7];
  MEMORY[0x1EEE9AC00](v50, v52);
  *(&v106 - 2) = v120;
  v53 = v125;
  v54 = sub_1D5FBE1C8(sub_1D69019B0, (&v106 - 4), v51);
  v55 = v54;
  if (v54 >> 62)
  {
    v105 = v54;
    v56 = sub_1D7263BFC();
    v55 = v105;
  }

  else
  {
    v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = *(v51 + 16);
  v116 = v40;
  if (v56 == v57)
  {
    v106 = v55;
    v118 = v50;
    v58 = a1[1];
    v120 = *a1;
    v59 = sub_1D5BE240C(v120, v58, v113);
    v60 = MEMORY[0x1E69E7CD0];
    v125 = v53;
    v119 = v48;
    v107 = v49;
    if (v59)
    {
      sub_1D7264A0C();
      sub_1D72621EC();
      v61 = sub_1D7264A5C();
      v62 = -1 << *(v60 + 32);
      v63 = v61 & ~v62;
      v64 = v60;
      if ((*(v60 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63))
      {
        v65 = ~v62;
        v66 = *(v64 + 48);
        while (*(v66 + v63) == 1 && (sub_1D72646CC() & 1) == 0)
        {
          v63 = (v63 + 1) & v65;
          if (((*(v64 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v63) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v113 = v64;
        if (!*(a9 + 16))
        {
          goto LABEL_61;
        }
      }

      else
      {
LABEL_17:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v126 = v64;
        sub_1D5FF7EF4(0, v63, isUniquelyReferenced_nonNull_native);
        v113 = v126;
        if (!*(a9 + 16))
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v113 = MEMORY[0x1E69E7CD0];
      if (!*(a9 + 16))
      {
        goto LABEL_61;
      }
    }

    v87 = sub_1D5B69D90(v120, v58);
    if (v88)
    {
      v89 = v58;
      v90 = v110;
      sub_1D68FF774(*(a9 + 56) + *(v109 + 72) * v87, v110, type metadata accessor for SportsEventStatusResponseEmbed);
      v91 = v108;
      sub_1D68FF774(v90 + *(v111 + 20), v108, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      sub_1D68FF714(v90, type metadata accessor for SportsEventStatusResponseEmbed);
LABEL_62:
      v92 = v122;
      sub_1D68FFE38(v91, v122, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      v93 = *(v124 + 16);
      v94 = v115;
      v95 = v121;
      v93(v115, v116, v121);
      v96 = v114;
      sub_1D68FF774(v92, v114, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      sub_1D6F14BD8(v96, &v128);
      v117 = v128;
      type metadata accessor for SportsScoreDataVisualization();
      v79 = swift_allocObject();
      v97 = v107;
      v98 = v120;
      *(v79 + 4) = v118;
      *(v79 + 5) = v98;
      *(v79 + 6) = v89;
      *(v79 + 7) = v119;
      *(v79 + 8) = v97;
      v93(&v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_embedUrl], v94, v95);
      *&v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_urlDataSources] = v106;
      *&v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_eventStatus] = v117;
      *&v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_metadata] = 0;
      *&v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_traits] = v113;
      *&v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_debugData] = 0;
      v99 = &v79[OBJC_IVAR____TtC8NewsFeed28SportsScoreDataVisualization_config];
      *v99 = 0u;
      *(v99 + 1) = 0u;
      *(v99 + 2) = 0u;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v126 = sub_1D72583DC();
      v127 = v100;
      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v98, v89);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v101 = v126;
      v102 = v127;
      v103 = *(v124 + 8);
      v103(v94, v95);
      sub_1D68FF714(v122, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      result = (v103)(v116, v95);
      *(v79 + 2) = v101;
      *(v79 + 3) = v102;
      goto LABEL_63;
    }

LABEL_61:
    v89 = v58;
    v91 = v112;
    sub_1D68FF774(a1 + *(v117 + 36), v112, type metadata accessor for SportsDataVisualizationResponseMetadata);
    goto LABEL_62;
  }

  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v68 = sub_1D725C42C();
  __swift_project_value_buffer(v68, qword_1EDF17598);
  v69 = a1;
  v70 = v118;
  sub_1D68FF774(v69, v118, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  v71 = sub_1D725C3FC();
  v72 = sub_1D7262EBC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 136446210;
    v75 = *(v70 + *(v117 + 40));
    v125 = v53;
    v126 = v74;
    if (v75 > 3)
    {
      if (v75 > 5)
      {
        if (v75 == 6)
        {
          v77 = 0x80000001D73BCEC0;
          v76 = 0xD000000000000014;
        }

        else
        {
          v77 = 0x80000001D73BCEE0;
          v76 = 0xD000000000000013;
        }
      }

      else if (v75 == 4)
      {
        v76 = 0xD000000000000010;
        v77 = 0x80000001D73BCE80;
      }

      else
      {
        v77 = 0x80000001D73BCEA0;
        v76 = 0xD000000000000011;
      }
    }

    else
    {
      v76 = 0x535F5354524F5053;
      if (v75 > 1)
      {
        if (v75 == 2)
        {
          v77 = 0xEF474E49444E4154;
        }

        else
        {
          v76 = 0x425F5354524F5053;
          v77 = 0xEE0054454B434152;
        }
      }

      else if (v75)
      {
        v77 = 0x80000001D73BCF90;
        v76 = 0xD000000000000015;
      }

      else
      {
        v77 = 0xEC00000045524F43;
      }
    }

    sub_1D68FF714(v118, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v104 = sub_1D5BC5100(v76, v77, &v126);

    *(v73 + 4) = v104;
    _os_log_impl(&dword_1D5B42000, v71, v72, "Sports data service could not create all data sources for embedType=%{public}s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x1DA6FD500](v74, -1, -1);
    MEMORY[0x1DA6FD500](v73, -1, -1);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = (*(v124 + 8))(v116, v121);
LABEL_57:
    v79 = 0;
    goto LABEL_63;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1D68FF714(v70, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  result = (*(v124 + 8))(v116, v121);
  v79 = 0;
LABEL_63:
  *v123 = v79;
  return result;
}

uint64_t sub_1D68F7BB4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  v14[0] = *a1;
  v14[1] = v10;
  v15 = a1[2];
  v16 = v14[0];
  v17 = v10;
  v18 = v15;
  (*(v11 + 16))(v9, a2);
  sub_1D5E422A8(&v16, v13);
  sub_1D5E422A8(&v17, v13);
  sub_1D5E422A8(&v18, v13);
  result = sub_1D6B039A0(v14, v9);
  *a3 = result;
  return result;
}

uint64_t sub_1D68F7CD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 && *(a2 + 16) && (sub_1D5B69D90(*(a1 + 32), v3), (v4 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D68F7D24@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if (v3 > 3)
  {
    if (*a1 > 5u)
    {
      if (v3 == 6)
      {
        v11 = 6;
        return sub_1D68FADC8(&v11, a2, a3);
      }

      else
      {
        v12 = 7;
        return sub_1D68FB394(&v12, a2, a3);
      }
    }

    else if (v3 == 4)
    {
      v9 = 4;
      return sub_1D68FA230(&v9, a2, a3);
    }

    else
    {
      v10 = 5;
      return sub_1D68FA7FC(&v10, a2, a3);
    }
  }

  else if (*a1 > 1u)
  {
    if (v3 == 2)
    {
      v7 = 2;
      return sub_1D68F9698(&v7, a2, a3);
    }

    else
    {
      v8 = 3;
      return sub_1D68F9C64(&v8, a2, a3);
    }
  }

  else if (*a1)
  {
    v6 = 1;
    return sub_1D68F90CC(&v6, a2, a3);
  }

  else
  {
    v5 = 0;
    return sub_1D68F8B00(&v5, a2, a3);
  }
}

uint64_t sub_1D68F7E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v69 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D72585BC();
  v7 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v8);
  v70 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v68, v10);
  v67 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SportsDataServiceRequest(0);
  v12 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v13);
  v65 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - v17;
  v66 = v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for SportsDataServiceBatchRequest(0);
  v55 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v56 = v26;
  v57 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v27 + 28);
  v58 = a1;
  v29 = *(a1 + v28);
  v30 = *(v29 + 16);
  if (v30)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v31 = *(v12 + 80);
    v32 = v29 + ((v31 + 32) & ~v31);
    v33 = *(v12 + 72);
    v63 = v31;
    v64 = v18;
    v60 = (v31 + 16) & ~v31;
    v61 = (v7 + 32);
    v59 = (v7 + 8);
    v62 = v33;
    while (1)
    {
      sub_1D68FF774(v32, v23, type metadata accessor for SportsDataServiceRequest);
      v42 = *__swift_project_boxed_opaque_existential_1((a2 + 56), *(a2 + 80));
      sub_1D68FF774(v23, v18, type metadata accessor for SportsDataServiceRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v44 = v69;
        sub_1D68FFE38(v18, v69, type metadata accessor for SportsDataServiceResourceRequest);
        sub_1D68E0360(v44, v23);
        v45 = type metadata accessor for SportsDataServiceResourceRequest;
LABEL_9:
        sub_1D68FF714(v44, v45);
        sub_1D68FF714(v23, type metadata accessor for SportsDataServiceRequest);
        goto LABEL_4;
      }

      v34 = v70;
      v35 = (*v61)();
      MEMORY[0x1EEE9AC00](v35, v36);
      *(&v54 - 2) = v42;
      *(&v54 - 1) = v34;
      sub_1D725BDCC();
      v37 = v65;
      sub_1D68FF774(v23, v65, type metadata accessor for SportsDataServiceRequest);
      v38 = v60;
      v39 = swift_allocObject();
      sub_1D68FFE38(v37, v39 + v38, type metadata accessor for SportsDataServiceRequest);
      v40 = a2;
      v41 = sub_1D725B92C();
      sub_1D68FECB4(0);
      type metadata accessor for SportsDataServiceRequestFetcher();
      sub_1D725BAAC();
      v33 = v62;

      a2 = v40;
      v18 = v64;
      sub_1D68FF714(v23, type metadata accessor for SportsDataServiceRequest);
      (*v59)(v70, v71);
LABEL_4:
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      v32 += v33;
      if (!--v30)
      {
        goto LABEL_10;
      }
    }

    v44 = v67;
    sub_1D68FFE38(v18, v67, type metadata accessor for SportsDataServiceURLRequest);
    sub_1D68DE180(v44 + *(v68 + 24), v44, 1);
    v45 = type metadata accessor for SportsDataServiceURLRequest;
    goto LABEL_9;
  }

LABEL_10:
  v46 = sub_1D725B92C();
  sub_1D68FECB4(0);
  sub_1D725BEFC();

  v47 = v57;
  sub_1D68FF774(v58, v57, type metadata accessor for SportsDataServiceBatchRequest);
  v48 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v49 = swift_allocObject();
  sub_1D68FFE38(v47, v49 + v48, type metadata accessor for SportsDataServiceBatchRequest);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1D68FEF04;
  *(v50 + 24) = v49;
  v51 = sub_1D725B92C();
  sub_1D68FED64();
  v52 = sub_1D725BA8C();

  return v52;
}

uint64_t sub_1D68F8500@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsDataVisualizationResponseMetadata();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  v14 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  v51 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v48 - v20;
  v22 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FF774(a1, v25, type metadata accessor for SportsDataVisualizationResponseItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = type metadata accessor for SportsDataVisualizationResponseItem;
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_2;
  }

  v52 = a1;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v52 = *(v25 + 5);
      v29 = *(v25 + 8);

      v30 = *(v29 + 16);
      if (!v30)
      {

        goto LABEL_3;
      }

      v31 = *(v14 + 36);
      v32 = *(v51 + 80);
      v48 = v29;
      v33 = v29 + ((v32 + 32) & ~v32);
      v51 = *(v51 + 72);
      v52 = v31;
      v34 = MEMORY[0x1E69E7CC0];
      v50 = v6;
      v35 = v53;
      while (1)
      {
        sub_1D68FF774(v33, v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
        sub_1D68FF774(v17 + v52, v35, type metadata accessor for SportsDataVisualizationResponseMetadata);
        sub_1D68FF774(v35, v6, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        v37 = swift_getEnumCaseMultiPayload();
        v36 = type metadata accessor for StartTimeEndTime;
        if (v37 > 6)
        {
          if ((v37 - 8) >= 2)
          {
            if (v37 == 7)
            {
LABEL_13:
              sub_1D68FF714(v6, type metadata accessor for StartTime);
            }

            v38 = v3;
            sub_1D68FF714(v35, type metadata accessor for SportsDataVisualizationResponseEventStatus);
            v40 = *v17;
            v39 = v17[1];

            sub_1D68FF714(v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1D5B858EC(0, *(v34 + 2) + 1, 1, v34);
            }

            v42 = *(v34 + 2);
            v41 = *(v34 + 3);
            if (v42 >= v41 >> 1)
            {
              v34 = sub_1D5B858EC((v41 > 1), v42 + 1, 1, v34);
            }

            *(v34 + 2) = v42 + 1;
            v43 = &v34[16 * v42];
            *(v43 + 4) = v40;
            *(v43 + 5) = v39;
            v3 = v38;
            v6 = v50;
            v35 = v53;
            goto LABEL_10;
          }
        }

        else
        {
          if (v37 < 6)
          {
            goto LABEL_13;
          }

          v36 = type metadata accessor for StartTime;
        }

        sub_1D68FF714(v6, v36);
        sub_1D68FF714(v35, type metadata accessor for SportsDataVisualizationResponseEventStatus);
        sub_1D68FF714(v17, type metadata accessor for SportsDataVisualizationResponseScoreItem);
LABEL_10:
        v33 += v51;
        if (!--v30)
        {

          *v49 = v34;
          return result;
        }
      }
    }

LABEL_2:
    result = sub_1D68FF714(v25, v27);
LABEL_3:
    *v49 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v44 = v21;
  sub_1D68FF774(v25, v21, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  sub_1D68FF774(&v21[*(v14 + 36)], v13, type metadata accessor for SportsDataVisualizationResponseMetadata);
  v45 = SportsDataVisualizationResponseEventStatus.isFinalized.getter();
  sub_1D68FF714(v13, type metadata accessor for SportsDataVisualizationResponseEventStatus);
  if (v45)
  {
    v27 = type metadata accessor for SportsDataVisualizationResponseScoreItem;
    sub_1D68FF714(v44, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    goto LABEL_2;
  }

  sub_1D6901918(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1D7273AE0;
  *(v46 + 32) = sub_1D6792888();
  *(v46 + 40) = v47;
  sub_1D68FF714(v44, type metadata accessor for SportsDataVisualizationResponseScoreItem);
  *v49 = v46;
  return sub_1D68FF714(v25, type metadata accessor for SportsDataVisualizationResponseScoreItem);
}

uint64_t sub_1D68F8B00@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF18618 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D9A0 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68F90CC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF18318 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D9B0 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68F9698@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF184A8 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D9C0 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68F9C64@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF18580 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D9D8 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68FA230@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF18538 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D960 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68FA7FC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF18458 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D990 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68FADC8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF18368 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D970 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68FB394@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D68FD964(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  v10 = *a1;
  if (qword_1EDF183B8 != -1)
  {
    swift_once();
  }

  if ((sub_1D72596AC() & 1) == 0)
  {
    v20 = sub_1D72585BC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
LABEL_22:
    sub_1D6900328(v9, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1D68FD964);
    if (*(a2 + 16) && (v21 = sub_1D6D6341C(v10), (v22 & 1) != 0))
    {
      v23 = v21;
      v24 = *(a2 + 56);
      v25 = sub_1D72585BC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(a3, v24 + *(v26 + 72) * v23, v25);
      return (*(v26 + 56))(a3, 0, 1, v25);
    }

    else
    {
      v28 = sub_1D72585BC();
      return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
    }
  }

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EC87D980 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  sub_1D725855C();

  v11 = sub_1D72585BC();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    goto LABEL_22;
  }

  (*(v12 + 32))(a3, v9, v11);
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  v39 = 0;
  v40 = 0xE000000000000000;
  if (v10 > 3)
  {
    v29 = 0x80000001D73BCEC0;
    v30 = 0xD000000000000013;
    if (v10 == 6)
    {
      v30 = 0xD000000000000014;
    }

    else
    {
      v29 = 0x80000001D73BCEE0;
    }

    v31 = 0xD000000000000010;
    v32 = 0x80000001D73BCE80;
    if (v10 != 4)
    {
      v31 = 0xD000000000000011;
      v32 = 0x80000001D73BCEA0;
    }

    if (v10 <= 5)
    {
      v18 = v31;
    }

    else
    {
      v18 = v30;
    }

    if (v10 <= 5)
    {
      v19 = v32;
    }

    else
    {
      v19 = v29;
    }
  }

  else
  {
    v14 = 0x535F5354524F5053;
    v15 = 0xEC00000045524F43;
    v16 = 0xEF474E49444E4154;
    v17 = 0x425F5354524F5053;
    if (v10 == 2)
    {
      v17 = 0x535F5354524F5053;
    }

    else
    {
      v16 = 0xEE0054454B434152;
    }

    if (v10)
    {
      v14 = 0xD000000000000015;
      v15 = 0x80000001D73BCF90;
    }

    if (v10 <= 1)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    if (v10 <= 1)
    {
      v19 = v15;
    }

    else
    {
      v19 = v16;
    }
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v33 = v39;
  v34 = v40;
  v35 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v36 = sub_1D5B7E2C0();
  *(v13 + 64) = v36;
  *(v13 + 32) = v33;
  *(v13 + 40) = v34;
  v37 = sub_1D72583DC();
  *(v13 + 96) = v35;
  *(v13 + 104) = v36;
  *(v13 + 72) = v37;
  *(v13 + 80) = v38;
  sub_1D7262EDC();
  sub_1D725C30C();

  return (*(v12 + 56))(a3, 0, 1, v11);
}

uint64_t sub_1D68FB960(void *a1, uint64_t *a2)
{
  v3 = a1[15];
  v4 = a1[16];
  __swift_project_boxed_opaque_existential_1(a1 + 12, v3);
  v5 = *a2;
  v6 = *(*a2 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v14 = (*(v4 + 16))(v7, v3, v4);

    return v14;
  }

  v7 = sub_1D5B9A6D8(v6, 0);
  v16 = sub_1D5B9A6EC(v15, v7 + 4, v6, v5);
  v8 = v15[0];
  v9 = v15[1];
  v10 = v15[2];
  v11 = v15[3];
  v12 = v15[4];

  result = sub_1D5BA45DC(v8, v9, v10, v11, v12);
  if (v16 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_1D68FBA78@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  if (!(*result >> 62))
  {
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_31:
    v5 = MEMORY[0x1E69E7CC8];
LABEL_32:
    *a2 = v5;
    return result;
  }

LABEL_30:
  v39 = v2 & 0xFFFFFFFFFFFFFF8;
  result = sub_1D7263BFC();
  v3 = result;
  if (!result)
  {
    goto LABEL_31;
  }

LABEL_3:
  v4 = 0;
  v38 = v2 & 0xC000000000000001;
  v5 = MEMORY[0x1E69E7CC8];
  v37 = v2;
  while (2)
  {
    v36 = v5;
    v6 = v4;
    while (1)
    {
      if (v38)
      {
        v7 = MEMORY[0x1DA6FB460](v6, v2);
        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v6 >= *(v39 + 16))
        {
          goto LABEL_29;
        }

        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      v8 = [v7 asSports];
      if (v8)
      {
        break;
      }

      v40 = v4;
      v9 = v3;
      if (qword_1EDF05878 != -1)
      {
        swift_once();
      }

      sub_1D7262EBC();
      sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D7273AE0;
      v11 = [v7 identifier];
      v12 = sub_1D726207C();
      v14 = v13;

      *(v10 + 56) = MEMORY[0x1E69E6158];
      *(v10 + 64) = sub_1D5B7E2C0();
      *(v10 + 32) = v12;
      *(v10 + 40) = v14;
      sub_1D725C30C();

      result = swift_unknownObjectRelease();
      ++v6;
      v3 = v9;
      v2 = v37;
      if (v40 == v9)
      {
        v5 = v36;
        goto LABEL_32;
      }
    }

    v15 = v8;
    v16 = [v8 identifier];
    v17 = sub_1D726207C();
    v19 = v18;

    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v17;
    v41 = v19;
    v22 = sub_1D5B69D90(v17, v19);
    v23 = v36[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v26 = v21;
    if (v36[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D6D859D0();
      }

      v27 = v41;
      if ((v26 & 1) == 0)
      {
LABEL_20:
        v5 = v36;
        v36[(v22 >> 6) + 8] |= 1 << v22;
        v30 = (v36[6] + 16 * v22);
        *v30 = v34;
        v30[1] = v27;
        *(v36[7] + 8 * v22) = v15;
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v31 = v36[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (!v32)
        {
          v36[2] = v33;
          goto LABEL_26;
        }

        goto LABEL_34;
      }

LABEL_25:

      *(v36[7] + 8 * v22) = v15;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v5 = v36;
      result = swift_unknownObjectRelease();
LABEL_26:
      if (v4 != v3)
      {
        continue;
      }

      goto LABEL_32;
    }

    break;
  }

  sub_1D6D73F4C(v25, isUniquelyReferenced_nonNull_native);
  v27 = v41;
  v28 = sub_1D5B69D90(v34, v41);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_35:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D68FBE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v5 = MEMORY[0x1E69D63E8];
  v6 = MEMORY[0x1E69E6720];
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v11 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v22 - v14;
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v16 = sub_1D725A82C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1D725BDCC();
  sub_1D5C41360(v15, v11);
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_1D5F82FB8(v11, v18 + v17);
  v19 = sub_1D725B92C();
  type metadata accessor for SportsDataServiceRequest(0);
  v20 = sub_1D725BA8C();

  sub_1D6900328(v15, &unk_1EDF3BDC0, v5, v6, sub_1D68FD964);
  return v20;
}

void sub_1D68FC11C(void *a1)
{
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDF17598);
  v3 = a1;
  oslog = sub_1D725C3FC();
  v4 = sub_1D7262EBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1D726497C();
    v9 = sub_1D5BC5100(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D5B42000, oslog, v4, "Sports data service failed to fetch featured event resource; error = %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D68FC2B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 57);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D68E7D74(a1, v4, v1 + 24, v5);
}

void sub_1D68FC384()
{
  if (!qword_1EDF09A38)
  {
    type metadata accessor for SportsDataVisualizationResponse();
    sub_1D68FC3FC();
    sub_1D68FC430();
    v0 = type metadata accessor for SportsDataServiceBatchResponse();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF09A38);
    }
  }
}

uint64_t sub_1D68FC464(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64680;

  return sub_1D68E9D44(a1, v4, v1 + 24);
}

uint64_t objectdestroy_4Tm_0()
{

  sub_1D5F82E88(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D68FC564(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D68E9EB4(a1, v4, v1 + 24);
}

uint64_t sub_1D68FC610(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D5B64680;

  return sub_1D68EA350(a1, v1);
}

uint64_t sub_1D68FC6AC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1D7263ECC();
    v4 = v1 + 56;
    result = sub_1D7263B7C();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v28 = v1 + 64;
    v29 = v2;
    v30 = v7;
    v31 = v1 + 56;
    v32 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v33 = v6;
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      v13 = qword_1EDF06ED0;
      swift_bridgeObjectRetain_n();
      if (v13 != -1)
      {
        swift_once();
      }

      v14 = qword_1EDF06ED8;
      type metadata accessor for SportsDataVisualizationAllRequest();
      v15 = swift_allocObject();
      *(v15 + 16) = v11;
      *(v15 + 24) = v12;
      *(v15 + 32) = 1;
      *(v15 + 48) = v14;
      sub_1D6901918(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 32) = v11;
      *(inited + 40) = v12;

      v17 = sub_1D5B86020(inited);
      swift_setDeallocating();
      v18 = sub_1D5BFB68C(inited + 32);
      *(v15 + 40) = v17;
      MEMORY[0x1EEE9AC00](v18, v19);
      type metadata accessor for SportsDataServiceBatchRequest(0);
      sub_1D725BDCC();
      v20 = sub_1D725B92C();
      sub_1D68FC384();
      sub_1D725BA9C();

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      v1 = v32;
      v8 = 1 << *(v32 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = v31;
      v21 = *(v31 + 8 * v9);
      if ((v21 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v7 = v30;
      if (v30 != *(v32 + 36))
      {
        goto LABEL_27;
      }

      v22 = v21 & (-2 << (v5 & 0x3F));
      if (v22)
      {
        v8 = __clz(__rbit64(v22)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v9 << 6;
        v24 = v9 + 1;
        v25 = (v28 + 8 * v9);
        while (v24 < (v8 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_1D5C86234(v5, v30, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        result = sub_1D5C86234(v5, v30, 0);
      }

LABEL_4:
      v6 = v33 + 1;
      v5 = v8;
      if (v33 + 1 == v29)
      {
        return v34;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1D68FCAB8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SportsDataVisualizationResponseData();
  v40 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsDataVisualizationResponse();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FF208(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v44 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68FC384();
  v16 = *(a2 + *(v15 + 44));
  v43 = *(v16 + 16);
  if (!v43)
  {
    return;
  }

  v17 = 0;
  v18 = *(v11 + 52);
  v41 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v42 = v18;
  v19 = MEMORY[0x1E69E7CC0];
  v38 = v16;
  v39 = v12;
  while (1)
  {
    if (v17 >= *(v16 + 16))
    {
      goto LABEL_29;
    }

    v20 = v44;
    sub_1D68FF774(v41 + *(v12 + 72) * v17, v44, sub_1D68FF208);
    v21 = v45;
    sub_1D68FF774(v20 + v42, v45, type metadata accessor for SportsDataVisualizationResponse);
    sub_1D68FF714(v20, sub_1D68FF208);
    sub_1D62E4318();
    v22 = sub_1D725AEAC();
    sub_1D68FF714(v21, type metadata accessor for SportsDataVisualizationResponse);
    v23 = v22;
    v24 = *(v22 + 16);
    if (v24)
    {
      break;
    }

LABEL_4:
    if (++v17 == v43)
    {
      return;
    }
  }

  v46 = v23;
  v47 = v17;
  v25 = v23 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
  v26 = *(v40 + 72);
  while (1)
  {
    sub_1D68FF774(v25, v6, type metadata accessor for SportsDataVisualizationResponseData);
    sub_1D68FF2F0();
    v27 = sub_1D725AEAC();
    v28 = *(v27 + 16);
    v29 = v19[2];
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      break;
    }

    v31 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v30 <= v19[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v33 = v29 + v28;
      }

      else
      {
        v33 = v29;
      }

      v19 = sub_1D69952EC(isUniquelyReferenced_nonNull_native, v33, 1, v19);
      if (*(v31 + 16))
      {
LABEL_19:
        v34 = (v19[3] >> 1) - v19[2];
        type metadata accessor for SportsDataVisualizationResponseItem();
        if (v34 < v28)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();
        sub_1D68FF714(v6, type metadata accessor for SportsDataVisualizationResponseData);

        if (v28)
        {
          v35 = v19[2];
          v36 = __OFADD__(v35, v28);
          v37 = v35 + v28;
          if (v36)
          {
            goto LABEL_28;
          }

          v19[2] = v37;
        }

        goto LABEL_9;
      }
    }

    sub_1D68FF714(v6, type metadata accessor for SportsDataVisualizationResponseData);

    if (v28)
    {
      goto LABEL_26;
    }

LABEL_9:
    v25 += v26;
    if (!--v24)
    {

      v16 = v38;
      v12 = v39;
      v17 = v47;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

uint64_t sub_1D68FCF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v81 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v81, v5);
  v83 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsDataVisualizationResponseMetadata();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v80 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for SportsDataVisualizationResponseScoreItem();
  MEMORY[0x1EEE9AC00](v79, v10);
  v72 = (v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v71 - v14;
  v16 = type metadata accessor for SportsDataVisualizationResponseItem();
  MEMORY[0x1EEE9AC00](v16, v17);
  v89 = v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v78 = (v71 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v85 = (v71 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v71 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v33 = v71 - v32;
  v88 = *(a1 + 16);
  if (v88)
  {
    v34 = 0;
    v35 = *(v31 + 72);
    v86 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v87 = a1 + v86;
    v90 = a2 + 56;
    v91 = v35;
    v36 = MEMORY[0x1E69E7CC0];
    v73 = xmmword_1D7279970;
    v74 = a2;
    v75 = v15;
    v84 = v16;
    while (1)
    {
      sub_1D68FF774(v87 + v91 * v34, v33, type metadata accessor for SportsDataVisualizationResponseItem);
      sub_1D68FF774(v33, v28, type metadata accessor for SportsDataVisualizationResponseItem);
      if (swift_getEnumCaseMultiPayload())
      {
        v46 = type metadata accessor for SportsDataVisualizationResponseItem;
        v47 = v28;
LABEL_70:
        sub_1D68FF714(v47, v46);
        sub_1D68FFE38(v33, v89, type metadata accessor for SportsDataVisualizationResponseItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v92 = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6999938(0, *(v36 + 16) + 1, 1);
          v36 = v92;
        }

        v69 = *(v36 + 16);
        v68 = *(v36 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1D6999938(v68 > 1, v69 + 1, 1);
          v36 = v92;
        }

        *(v36 + 16) = v69 + 1;
        sub_1D68FFE38(v89, v36 + v86 + v69 * v91, type metadata accessor for SportsDataVisualizationResponseItem);
        goto LABEL_17;
      }

      sub_1D68FFE38(v28, v15, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      sub_1D68FF774(v33, v85, type metadata accessor for SportsDataVisualizationResponseItem);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          v49 = *v85;
          v50 = v85[1];
          if (EnumCaseMultiPayload != 1)
          {

            a2 = v74;
          }

          v15 = v75;
          if (!*(a2 + 16))
          {
LABEL_39:
            v58 = 0;
            goto LABEL_41;
          }
        }

        else
        {
          v51 = v72;
          sub_1D68FFE38(v85, v72, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          v49 = *v51;
          v50 = v51[1];

          sub_1D68FF714(v51, type metadata accessor for SportsDataVisualizationResponseScoreItem);
          if (!*(a2 + 16))
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v49 = *v85;
        v50 = v85[1];

        if (!*(a2 + 16))
        {
          goto LABEL_39;
        }
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      v52 = sub_1D7264A5C();
      v53 = -1 << *(a2 + 32);
      v54 = v52 & ~v53;
      if (((*(v90 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_39;
      }

      v55 = ~v53;
      while (1)
      {
        v56 = (*(a2 + 48) + 16 * v54);
        v57 = *v56 == v49 && v56[1] == v50;
        if (v57 || (sub_1D72646CC() & 1) != 0)
        {
          break;
        }

        v54 = (v54 + 1) & v55;
        if (((*(v90 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v58 = 1;
LABEL_41:

      v59 = v80;
      sub_1D68FF774(&v15[*(v79 + 36)], v80, type metadata accessor for SportsDataVisualizationResponseMetadata);
      sub_1D68FFE38(v59, v83, type metadata accessor for SportsDataVisualizationResponseEventStatus);
      v60 = swift_getEnumCaseMultiPayload();
      v61 = type metadata accessor for StartTime;
      if (v60 <= 4)
      {
        if (v60 <= 1)
        {
          if (!v60)
          {
            v62 = 0;
            goto LABEL_63;
          }

          v62 = 1;
        }

        else if (v60 == 2)
        {
          v62 = 2;
        }

        else if (v60 == 3)
        {
          v62 = 3;
        }

        else
        {
          v62 = 4;
        }

LABEL_62:
        v61 = type metadata accessor for StartTime;
        goto LABEL_63;
      }

      if (v60 <= 7)
      {
        if (v60 == 5)
        {
          v62 = 5;
        }

        else if (v60 == 6)
        {
          v62 = 6;
        }

        else
        {
          v62 = 7;
        }

        goto LABEL_62;
      }

      if (v60 == 8)
      {
        v62 = 8;
LABEL_58:
        v61 = type metadata accessor for StartTimeEndTime;
LABEL_63:
        sub_1D68FF714(v83, v61);
        goto LABEL_64;
      }

      if (v60 == 9)
      {
        v62 = 9;
        goto LABEL_58;
      }

      v62 = 10;
LABEL_64:
      v63 = sub_1D6186944(v62, v82);
      if (((v58 | v63) & 1) == 0)
      {
        v46 = type metadata accessor for SportsDataVisualizationResponseScoreItem;
        v47 = v15;
        goto LABEL_70;
      }

      v64 = v63;
      if (qword_1EDF05878 != -1)
      {
        swift_once();
      }

      v76 = qword_1EDFFC538;
      sub_1D5B67994(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v65 = swift_allocObject();
      *(v65 + 16) = v73;
      sub_1D68FF774(v33, v78, type metadata accessor for SportsDataVisualizationResponseItem);
      v66 = swift_getEnumCaseMultiPayload();
      v77 = v58;
      if (v66 > 2)
      {
        v38 = *v78;
        v39 = v78[1];
        goto LABEL_78;
      }

      if (v66)
      {
        if (v66 == 1)
        {
          v38 = *v78;
          v39 = v78[1];
LABEL_78:
        }

        else
        {
          v38 = *v78;
          v39 = v78[1];
          v71[2] = v78[3];
          v71[1] = v78[6];
        }

        a2 = v74;
        goto LABEL_4;
      }

      v37 = v72;
      sub_1D68FFE38(v78, v72, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      v38 = *v37;
      v39 = v37[1];

      sub_1D68FF714(v37, type metadata accessor for SportsDataVisualizationResponseScoreItem);
LABEL_4:
      v40 = MEMORY[0x1E69E6158];
      *(v65 + 56) = MEMORY[0x1E69E6158];
      v41 = sub_1D5B7E2C0();
      *(v65 + 32) = v38;
      *(v65 + 40) = v39;
      if (v77)
      {
        v42 = 1702195828;
      }

      else
      {
        v42 = 0x65736C6166;
      }

      if (v77)
      {
        v43 = 0xE400000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      *(v65 + 96) = v40;
      *(v65 + 104) = v41;
      *(v65 + 64) = v41;
      *(v65 + 72) = v42;
      *(v65 + 80) = v43;
      if (v64)
      {
        v44 = 1702195828;
      }

      else
      {
        v44 = 0x65736C6166;
      }

      if (v64)
      {
        v45 = 0xE400000000000000;
      }

      else
      {
        v45 = 0xE500000000000000;
      }

      *(v65 + 136) = v40;
      *(v65 + 144) = v41;
      *(v65 + 112) = v44;
      *(v65 + 120) = v45;
      sub_1D7262EDC();
      sub_1D725C30C();

      v15 = v75;
      sub_1D68FF714(v75, type metadata accessor for SportsDataVisualizationResponseScoreItem);
      sub_1D68FF714(v33, type metadata accessor for SportsDataVisualizationResponseItem);
LABEL_17:
      if (++v34 == v88)
      {
        return v36;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D68FD964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D68FD9C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D68FD964(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D68FDA20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D68EE5F4(a1, v5, v4);
}

uint64_t objectdestroy_43Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1D68FDB0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D5B64680;

  return sub_1D68EEC60(a1, v5, v4);
}

void sub_1D68FDBB8(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D5B5534C(255, a3);
    v4 = sub_1D7261E1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D68FDC60@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  v9 = v2[8];
  v10 = a1[3];
  v13[2] = a1[2];
  v14[0] = v10;
  *(v14 + 9) = *(a1 + 57);
  v11 = a1[1];
  v13[0] = *a1;
  v13[1] = v11;
  result = sub_1D68F5E78(v13, v4, v5, v6, v7, v8, v9);
  *a2 = result;
  return result;
}

void sub_1D68FDD04()
{
  if (!qword_1EDF0FC50)
  {
    sub_1D68FDD98();
    sub_1D5B705A4(qword_1EDF09DB0, sub_1D68FDD98);
    v0 = type metadata accessor for FormatCodingDefault();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0FC50);
    }
  }
}

void sub_1D68FDD98()
{
  if (!qword_1EDF09DA8)
  {
    type metadata accessor for SportsDataVisualizationResponseScoreItem();
    sub_1D5B705A4(&qword_1EDF06360, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    sub_1D5B705A4(&qword_1EDF06368, type metadata accessor for SportsDataVisualizationResponseScoreItem);
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF09DA8);
    }
  }
}

char *sub_1D68FDE64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(type metadata accessor for SportsDataVisualizationResponseItem() - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    result = sub_1D68F8500(v4, &v16);
    v8 = v16;
    v9 = *(v16 + 16);
    v10 = *(v6 + 2);
    v11 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v11 <= *(v6 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v12 = v10 + v9;
      }

      else
      {
        v12 = v10;
      }

      result = sub_1D5B858EC(result, v12, 1, v6);
      v6 = result;
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v6 + 3) >> 1) - *(v6 + 2) < v9)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v9)
        {
          v13 = *(v6 + 2);
          v14 = __OFADD__(v13, v9);
          v15 = v13 + v9;
          if (v14)
          {
            goto LABEL_23;
          }

          *(v6 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v9)
    {
      goto LABEL_21;
    }

LABEL_4:
    v4 += v5;
    if (!--v1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1D68FE008(uint64_t a1)
{
  v2 = type metadata accessor for SportsEventStatusResponseEmbed();
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsEventStatusResponseData();
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SportsEventStatusResponse();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D605DE6C(MEMORY[0x1E69E7CC0]);
  v40 = *(a1 + 16);
  if (!v40)
  {
    return v14;
  }

  v15 = 0;
  v39 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v16 = *(v10 + 72);
  v37 = v13;
  v38 = v16;
  while (1)
  {
    v41 = v15;
    sub_1D68FF774(v39 + v38 * v15, v13, type metadata accessor for SportsEventStatusResponse);
    sub_1D620002C();
    v17 = sub_1D725AEAC();
    v18 = v17;
    v45 = *(v17 + 16);
    if (v45)
    {
      break;
    }

LABEL_3:
    v15 = v41 + 1;

    v13 = v37;
    sub_1D68FF714(v37, type metadata accessor for SportsEventStatusResponse);
    if (v15 == v40)
    {
      return v14;
    }
  }

  v19 = 0;
  v43 = v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  while (v19 < *(v18 + 16))
  {
    sub_1D68FF774(v43 + *(v44 + 72) * v19, v8, type metadata accessor for SportsEventStatusResponseData);
    v21 = *v8;
    v20 = v8[1];
    sub_1D68FF774(v8, v46, type metadata accessor for SportsEventStatusResponseEmbed);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v14;
    v24 = sub_1D5B69D90(v21, v20);
    v25 = v14[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_22;
    }

    v28 = v23;
    if (v14[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v47;
        if (v23)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1D6D85818();
        v14 = v47;
        if (v28)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_1D6D73C5C(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1D5B69D90(v21, v20);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_24;
      }

      v24 = v29;
      v14 = v47;
      if (v28)
      {
LABEL_6:
        sub_1D68FEE9C(v46, v14[7] + *(v42 + 72) * v24, type metadata accessor for SportsEventStatusResponseEmbed);
        goto LABEL_7;
      }
    }

    v14[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v14[6] + 16 * v24);
    *v31 = v21;
    v31[1] = v20;
    sub_1D68FFE38(v46, v14[7] + *(v42 + 72) * v24, type metadata accessor for SportsEventStatusResponseEmbed);
    v32 = v14[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_23;
    }

    v14[2] = v34;

LABEL_7:
    ++v19;
    sub_1D68FF714(v8, type metadata accessor for SportsEventStatusResponseData);
    if (v45 == v19)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D68FE46C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v5 = *(v2 - 1);
    v6 = *v2;
    swift_unknownObjectRetain();

    v7 = [v5 identifier];
    v8 = sub_1D726207C();
    v10 = v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1D5B69D90(v8, v10);
    v14 = v3[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v3[3] < v17)
    {
      sub_1D6D73CB0(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1D5B69D90(v8, v10);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v23 = v12;
    sub_1D6D8586C();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v4 = v12;

      *(v3[7] + 8 * v4) = v6;

      swift_unknownObjectRelease();

      goto LABEL_4;
    }

LABEL_11:
    v3[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v3[6] + 16 * v12);
    *v20 = v8;
    v20[1] = v10;
    *(v3[7] + 8 * v12) = v6;

    swift_unknownObjectRelease();
    v21 = v3[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_18;
    }

    v3[2] = v22;
LABEL_4:
    v2 += 2;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D68FE72C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
  swift_unknownObjectRetain();
}

void sub_1D68FE764()
{
  if (!qword_1EDF04470)
  {
    sub_1D5B5534C(255, &qword_1EDF1A870);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04470);
    }
  }
}

void sub_1D68FE7F8()
{
  if (!qword_1EDF0BCB0)
  {
    sub_1D68FE910(255, &qword_1EDF05788, type metadata accessor for SportsRoster);
    type metadata accessor for SportsDataServiceBatchResourceRequest(255);
    sub_1D68FE9A8(&qword_1EDF05770, sub_1D68FE974);
    sub_1D68FE9A8(&qword_1EDF05780, sub_1D68FEA3C);
    v0 = type metadata accessor for SportsDataServiceResponse();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0BCB0);
    }
  }
}

void sub_1D68FE910(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7261E1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D68FE9A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D68FE910(255, &qword_1EDF05788, type metadata accessor for SportsRoster);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_79Tm()
{
  v1 = (type metadata accessor for SportsDataServiceBatchResourceRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1D725A82C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

unint64_t sub_1D68FEC44()
{
  result = qword_1EC88DF98;
  if (!qword_1EC88DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DF98);
  }

  return result;
}

void sub_1D68FED64()
{
  if (!qword_1EDF09A48[0])
  {
    type metadata accessor for SportsEventStatusResponse();
    sub_1D68FECFC();
    sub_1D68FED30();
    v0 = type metadata accessor for SportsDataServiceBatchResponse();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF09A48);
    }
  }
}

uint64_t sub_1D68FEDDC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D6901918(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D68FEE40()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  return sub_1D5F7E8C0(v1, v2, v3);
}

uint64_t sub_1D68FEE9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D68FF250(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for SportsDataServiceRequest(255);
    a4();
    a5();
    v8 = type metadata accessor for SportsDataServiceResponse();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D68FF2F0()
{
  if (!qword_1EDF17C10)
  {
    type metadata accessor for SportsDataVisualizationResponseItem();
    sub_1D5B705A4(&qword_1EDF07058, type metadata accessor for SportsDataVisualizationResponseItem);
    sub_1D5B705A4(&qword_1EDF07060, type metadata accessor for SportsDataVisualizationResponseItem);
    v0 = sub_1D725AEBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17C10);
    }
  }
}

void sub_1D68FF448()
{
  if (!qword_1EDF04B30)
  {
    sub_1D68FF4B8();
    type metadata accessor for SportsFeaturedEventsResource();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04B30);
    }
  }
}

void sub_1D68FF4B8()
{
  if (!qword_1EDF04B38)
  {
    sub_1D68FD964(255, &unk_1EDF04B20, sub_1D68FC384, MEMORY[0x1E69E62F8]);
    sub_1D5B67994(255, &qword_1EDF1AE00, &qword_1EDF3C5D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF04B38);
    }
  }
}

uint64_t objectdestroy_8Tm_0()
{
  sub_1D5F82E88(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

void sub_1D68FF5FC()
{
  if (!qword_1EDF17B68)
  {
    sub_1D6901918(255, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5B996E8(&qword_1EDF3C830);
    sub_1D5B996E8(&qword_1EDF04A90);
    v0 = sub_1D725B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17B68);
    }
  }
}

uint64_t sub_1D68FF714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D68FF774(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D68FF7DC()
{
  if (!qword_1EDF17B80)
  {
    sub_1D6901918(255, &qword_1EDF04BF8, &type metadata for SportsFeaturedAffinityEvent, MEMORY[0x1E69E62F8]);
    sub_1D68FF964(&unk_1EDF04BE0, sub_1D68FF910);
    sub_1D68FF964(&qword_1EDF04BF0, sub_1D68FF9F4);
    v0 = sub_1D725B46C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF17B80);
    }
  }
}

unint64_t sub_1D68FF910()
{
  result = qword_1EDF0AD78;
  if (!qword_1EDF0AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD78);
  }

  return result;
}

uint64_t sub_1D68FF964(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D6901918(255, &qword_1EDF04BF8, &type metadata for SportsFeaturedAffinityEvent, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D68FF9F4()
{
  result = qword_1EDF0AD88;
  if (!qword_1EDF0AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD88);
  }

  return result;
}

uint64_t objectdestroy_90Tm_0()
{
  v1 = *(type metadata accessor for SportsDataServiceBatchRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_1D72585BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D68FFB60@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SportsDataServiceBatchRequest(0) - 8);
  sub_1D68FF774(v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), a3, type metadata accessor for SportsDataServiceBatchRequest);
  *(a3 + *(a2(0) + 44)) = a1;
}

uint64_t sub_1D68FFD54(uint64_t a1, uint64_t a2, uint64_t (*a3)(unint64_t, unint64_t, void))
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SportsDataServiceURLRequest(0) - 8);
  return a3(v3 + v6, v3 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), 0);
}

uint64_t sub_1D68FFE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6900328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6900388()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = *(v2 + 16);
  v5[0] = *v2;
  v5[1] = v3;
  v6 = *(v2 + 32);
  return sub_1D5F7DEF4(v5);
}

uint64_t sub_1D69005A4(void *a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = *(type metadata accessor for SportsDataServiceURLRequest(0) - 8);
  v12 = (*(v11 + 80) + 17) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(sub_1D72585BC() - 8);
  return sub_1D68E2E1C(a1, a2, *(v5 + 16), v5 + v12, *(v5 + v13), v5 + ((v13 + *(v14 + 80) + 8) & ~*(v14 + 80)), a3, a4, a5);
}

unint64_t sub_1D6900768()
{
  result = qword_1EDF0BC88;
  if (!qword_1EDF0BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC88);
  }

  return result;
}

unint64_t sub_1D69007BC()
{
  result = qword_1EDF0BC90;
  if (!qword_1EDF0BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC90);
  }

  return result;
}

void sub_1D6900A04(uint64_t a1, unint64_t *a2, void (*a3)(void), void (*a4)(void))
{
  if (!*a2)
  {
    type metadata accessor for SportsDataServiceRequest(255);
    a3();
    a4();
    v7 = type metadata accessor for SportsDataServiceResponse();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6900A98()
{
  result = qword_1EDF0AD50;
  if (!qword_1EDF0AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD50);
  }

  return result;
}

unint64_t sub_1D6900AEC()
{
  result = qword_1EDF0AD58;
  if (!qword_1EDF0AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0AD58);
  }

  return result;
}

char *sub_1D6900B80(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D72585BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SportsDataServiceURLRequest(0) - 8);
  return sub_1D6808954(a1, a2, v2 + v6, v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
}

uint64_t objectdestroy_105Tm()
{
  v1 = type metadata accessor for SportsDataServiceURLRequest(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 17) & ~v2;
  v10 = *(*(v1 - 1) + 64);
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = *(v5 + 80);
  v6(v0 + v3, v4);
  v6(v0 + v3 + v1[5], v4);
  v6(v0 + v3 + v1[6], v4);
  v8 = (v0 + v3 + v1[7]);
  if (v8[3])
  {
    sub_1D5B952F8(*v8, v8[1]);
  }

  v6(v0 + ((((v10 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7), v4);

  return swift_deallocObject();
}

uint64_t sub_1D6900F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, unint64_t, void, unint64_t))
{
  v7 = *(type metadata accessor for SportsDataServiceURLRequest(0) - 8);
  v8 = (*(v7 + 80) + 17) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_1D72585BC() - 8);
  return a3(a1, a2, *(v3 + 16), v3 + v8, *(v3 + v9), v3 + ((v9 + *(v10 + 80) + 8) & ~*(v10 + 80)));
}

uint64_t objectdestroy_99Tm()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for SportsDataServiceURLRequest(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  v7(v0 + v6, v1);
  v7(v0 + v6 + v5[5], v1);
  v7(v0 + v6 + v5[6], v1);
  v8 = (v0 + v6 + v5[7]);
  if (v8[3])
  {
    sub_1D5B952F8(*v8, v8[1]);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_96Tm()
{
  v1 = *(type metadata accessor for SportsDataServiceRequest(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      v10 = *(type metadata accessor for SportsDataServiceResourceRequest(0) + 20);
      v11 = sub_1D725A82C();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v3 + v10, 1, v11))
      {
        (*(v12 + 8))(v3 + v10, v11);
      }

      break;
    case 1:
      v9 = sub_1D72585BC();
      (*(*(v9 - 8) + 8))(v0 + v2, v9);
      break;
    case 0:
      v5 = sub_1D72585BC();
      v6 = *(*(v5 - 8) + 8);
      v6(v0 + v2, v5);
      v7 = type metadata accessor for SportsDataServiceURLRequest(0);
      v6(v3 + v7[5], v5);
      v6(v3 + v7[6], v5);
      v8 = (v3 + v7[7]);
      if (v8[3])
      {
        sub_1D5B952F8(*v8, v8[1]);
      }

      break;
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for SportsDataServiceResourceRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1D725A82C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D690158C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_185Tm()
{
  sub_1D68FD964(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D725A82C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_1D690184C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D5B64680;

  return sub_1D68E5A34(a1, a2, v8, v9, v6, v7);
}

void sub_1D6901918(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_1D6901A44(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView];
  v14 = v11;
  [v14 addSubview_];
  v15 = *&v11[v12];
  sub_1D726327C();
  [v15 setFrame_];

  [*&v11[v12] setClipsToBounds_];
  [*&v11[v12] setShowsVerticalScrollIndicator_];
  [*&v11[v12] setShowsHorizontalScrollIndicator_];
  [*&v11[v12] setContentInsetAdjustmentBehavior_];
  [*&v11[v12] _setPocketsEnabled_];

  return v14;
}

uint64_t sub_1D6901DA8()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView) subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v6)
      {
        swift_getObjectType();
        sub_1D725F02C();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

void sub_1D6901F1C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8NewsFeed20DebugGroupLayoutView_contentView) subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    v3 = sub_1D7263BFC();
    if (v3)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x1DA6FB460](i, v2);
          }

          else
          {
            v5 = *(v2 + 8 * i + 32);
          }

          v6 = v5;
          v10 = v5;
          sub_1D690218C();
          v7 = v6;
          if (swift_dynamicCast())
          {
            sub_1D5B63F14(v8, v11);
            __swift_project_boxed_opaque_existential_1(v11, v11[3]);
            sub_1D725F91C();

            __swift_destroy_boxed_opaque_existential_1(v11);
          }

          else
          {

            v9 = 0;
            memset(v8, 0, sizeof(v8));
            sub_1D69021F0(v8);
          }
        }
      }

      return;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

void sub_1D6902100()
{
  sub_1D69022A4(&qword_1EC88DFD0);

  JUMPOUT(0x1DA6F6FC0);
}

unint64_t sub_1D690218C()
{
  result = qword_1EDF16988;
  if (!qword_1EDF16988)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF16988);
  }

  return result;
}

uint64_t sub_1D69021F0(uint64_t a1)
{
  sub_1D690224C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D690224C()
{
  if (!qword_1EDF16980)
  {
    sub_1D690218C();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF16980);
    }
  }
}

uint64_t sub_1D69022A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugGroupLayoutView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D69022E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      sub_1D7263D4C();

      v17 = 0x6465726975716552;
      MEMORY[0x1DA6F9910](v1, v2);
      MEMORY[0x1DA6F9910](0xD000000000000016, 0x80000001D73DBB50);
      return v17;
    }

    if (*(v0 + 24))
    {
      MEMORY[0x1DA6F9910](*(v0 + 16));
      MEMORY[0x1DA6F9910](39, 0xE100000000000000);
      v11 = 0x746F6C73206E6920;
      v10 = 0xEA00000000002720;
    }

    else
    {
      v11 = 0;
      v10 = 0xE000000000000000;
    }

    sub_1D7263D4C();

    v17 = 0x6465726975716552;
    v12 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v12);

    MEMORY[0x1DA6F9910](0x2973286D65746920, 0xED00002074756220);
    if (v1)
    {
      v13 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v13);

      v14 = 0x64616820796C6E6FLL;
      v15 = 0xE900000000000020;
    }

    else
    {
      v15 = 0xE800000000000000;
      v14 = 0x656E6F6E20646168;
    }

    MEMORY[0x1DA6F9910](v14, v15);

    MEMORY[0x1DA6F9910](0x7466656C20, 0xE500000000000000);
    MEMORY[0x1DA6F9910](v11, v10);
LABEL_14:

    return v17;
  }

  if (*(v0 + 32))
  {
    sub_1D7263D4C();

    v17 = 0xD000000000000010;
    sub_1D713AFE4();
    sub_1D5BBE0A8();
    sub_1D5BB0AB8();
    v4 = sub_1D7261F3C();
    v6 = v5;

    MEMORY[0x1DA6F9910](v4, v6);

    MEMORY[0x1DA6F9910](93, 0xE100000000000000);
    MEMORY[0x1DA6F9910](91, 0xE100000000000000);

    MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
    sub_1D713AFE4();
    v7 = sub_1D7261F3C();
    v9 = v8;

    MEMORY[0x1DA6F9910](v7, v9);

    MEMORY[0x1DA6F9910](93, 0xE100000000000000);
    MEMORY[0x1DA6F9910](91, 0xE100000000000000);
    goto LABEL_14;
  }

  v17 = 0;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0x6465726975716552, 0xE900000000000020);
  sub_1D5B4B090();
  v3 = sub_1D7262B1C();
  MEMORY[0x1DA6F9910](v3);

  MEMORY[0x1DA6F9910](0x746F672074756220, 0xE900000000000020);
  sub_1D609CBEC(v1, v2);
  return v17;
}

uint64_t sub_1D6902764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D69027AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed16FormatBindResultO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6902818(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D6902860(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = ~a2;
    }
  }

  return result;
}

uint64_t sub_1D69028AC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for DebugFormatWorkspaceKind()
{
  result = qword_1EC88DFD8;
  if (!qword_1EC88DFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6902934()
{
  sub_1D6032A5C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_1D6902994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for DebugFormatWorkspaceReference() + 20);
  sub_1D5BF4D9C();
  sub_1D7263ABC();
  sub_1D6903590(v3, a2, type metadata accessor for DebugFormatCacheFile);
  v4 = type metadata accessor for DebugFormatCacheFile();
  (*(*(v4 - 8) + 56))(a2, 0, 1, v4);
  type metadata accessor for DebugFormatWorkspaceKind();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6902AA0(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for DebugFormatCacheFile();
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v77 = &v77 - v9;
  sub_1D6032A5C();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v77 - v15;
  sub_1D690340C(0, &qword_1EC88DFE8, sub_1D6032A5C);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v77 - v24;
  v26 = type metadata accessor for DebugFormatWorkspaceKind();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v77 - v32;
  sub_1D690340C(0, &qword_1EC88DFF0, type metadata accessor for DebugFormatWorkspaceKind);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = *(v36 + 56);
  v38 = a1;
  v40 = &v77 - v39;
  sub_1D6903590(v38, &v77 - v39, type metadata accessor for DebugFormatWorkspaceKind);
  sub_1D6903590(v82, &v40[v37], type metadata accessor for DebugFormatWorkspaceKind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v42 = v81;
    if (!EnumCaseMultiPayload)
    {
      sub_1D6903590(v40, v33, type metadata accessor for DebugFormatWorkspaceKind);
      if (swift_getEnumCaseMultiPayload())
      {
        v29 = v33;
LABEL_19:
        sub_1D69034C8(v29, sub_1D6032A5C);
        goto LABEL_20;
      }

      v49 = *(v18 + 48);
      sub_1D6903528(v33, v25, sub_1D6032A5C);
      v50 = v40;
      sub_1D6903528(&v40[v37], &v25[v49], sub_1D6032A5C);
      v51 = *(v42 + 48);
      v52 = v80;
      if (v51(v25, 1, v80) == 1)
      {
        if (v51(&v25[v49], 1, v52) == 1)
        {
          sub_1D69034C8(v25, sub_1D6032A5C);
LABEL_25:
          v43 = v50;
          goto LABEL_13;
        }
      }

      else
      {
        v54 = v16;
        sub_1D6903590(v25, v16, sub_1D6032A5C);
        if (v51(&v25[v49], 1, v52) != 1)
        {
          v65 = v77;
          sub_1D6903528(&v25[v49], v77, type metadata accessor for DebugFormatCacheFile);
          v66 = *(v16 + 1);
          v67 = *(v16 + 2);
          v68 = v16[24];
          v69 = *(v65 + 16);
          v70 = *(v65 + 24);
          if (*v54 == *v65 && v66 == *(v65 + 8) || (sub_1D72646CC()) && v67 == v69 && ((v68 ^ v70) & 1) == 0 && (v71 = *(v52 + 28), v72 = v54 + v71, v73 = v65 + v71, (sub_1D725BCBC()))
          {
            v74 = type metadata accessor for DebugFormatCacheFileMetadata();
            v75 = sub_1D670933C(*&v72[*(v74 + 20)], *(v73 + *(v74 + 20)));
            sub_1D69034C8(v65, type metadata accessor for DebugFormatCacheFile);
            sub_1D69034C8(v54, type metadata accessor for DebugFormatCacheFile);
            sub_1D69034C8(v25, sub_1D6032A5C);
            if (v75)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_1D69034C8(v65, type metadata accessor for DebugFormatCacheFile);
            sub_1D69034C8(v54, type metadata accessor for DebugFormatCacheFile);
            sub_1D69034C8(v25, sub_1D6032A5C);
          }

          goto LABEL_51;
        }

        sub_1D69034C8(v16, type metadata accessor for DebugFormatCacheFile);
      }

      sub_1D690346C(v25, &qword_1EC88DFE8, sub_1D6032A5C);
LABEL_51:
      v76 = v50;
      goto LABEL_52;
    }

    sub_1D6903590(v40, v29, type metadata accessor for DebugFormatWorkspaceKind);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_19;
    }

    v45 = *(v18 + 48);
    sub_1D6903528(v29, v21, sub_1D6032A5C);
    v46 = v40;
    sub_1D6903528(&v40[v37], &v21[v45], sub_1D6032A5C);
    v47 = *(v42 + 48);
    v48 = v80;
    if (v47(v21, 1, v80) == 1)
    {
      if (v47(&v21[v45], 1, v48) == 1)
      {
        sub_1D69034C8(v21, sub_1D6032A5C);
LABEL_18:
        v43 = v46;
        goto LABEL_13;
      }
    }

    else
    {
      v53 = v79;
      sub_1D6903590(v21, v79, sub_1D6032A5C);
      if (v47(&v21[v45], 1, v48) != 1)
      {
        v55 = v78;
        sub_1D6903528(&v21[v45], v78, type metadata accessor for DebugFormatCacheFile);
        v56 = *(v53 + 16);
        v57 = *(v53 + 24);
        v58 = *(v55 + 16);
        v59 = *(v55 + 24);
        if (*v53 == *v55 && *(v53 + 8) == *(v55 + 8) || (sub_1D72646CC()) && v56 == v58 && ((v57 ^ v59) & 1) == 0 && (v60 = *(v48 + 28), v61 = v53 + v60, v62 = v55 + v60, (sub_1D725BCBC()))
        {
          v63 = type metadata accessor for DebugFormatCacheFileMetadata();
          v64 = sub_1D670933C(*(v61 + *(v63 + 20)), *(v62 + *(v63 + 20)));
          sub_1D69034C8(v55, type metadata accessor for DebugFormatCacheFile);
          sub_1D69034C8(v53, type metadata accessor for DebugFormatCacheFile);
          sub_1D69034C8(v21, sub_1D6032A5C);
          if (v64)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1D69034C8(v55, type metadata accessor for DebugFormatCacheFile);
          sub_1D69034C8(v53, type metadata accessor for DebugFormatCacheFile);
          sub_1D69034C8(v21, sub_1D6032A5C);
        }

LABEL_49:
        v76 = v46;
LABEL_52:
        sub_1D69034C8(v76, type metadata accessor for DebugFormatWorkspaceKind);
        return 0;
      }

      sub_1D69034C8(v53, type metadata accessor for DebugFormatCacheFile);
    }

    sub_1D690346C(v21, &qword_1EC88DFE8, sub_1D6032A5C);
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    if (swift_getEnumCaseMultiPayload() == 4)
    {
LABEL_12:
      v43 = v40;
LABEL_13:
      sub_1D69034C8(v43, type metadata accessor for DebugFormatWorkspaceKind);
      return 1;
    }
  }

LABEL_20:
  sub_1D690346C(v40, &qword_1EC88DFF0, type metadata accessor for DebugFormatWorkspaceKind);
  return 0;
}

void sub_1D690340C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1D690346C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D690340C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D69034C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6903528(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6903590(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t PuzzleMenuConfig.init(with:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_1D5B69D90(25705, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_13;
    }

LABEL_22:
    v13 = 0;
    v12 = 0;
    goto LABEL_23;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v4, &v140);
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v131;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = *(&v131 + 1);
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

LABEL_13:
  v9 = sub_1D5B69D90(1852793705, 0xE400000000000000);
  if (v10)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v9, &v140);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v131;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = *(&v131 + 1);
    }

    else
    {
      v13 = 0;
    }

    if (!*(a1 + 16))
    {
LABEL_23:
      v14 = 0;
      v112 = 0;
      if (*(a1 + 16))
      {
        goto LABEL_24;
      }

LABEL_52:
      v110 = 0;
      v111 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_23;
    }
  }

  v25 = sub_1D5B69D90(0xD000000000000012, 0x80000001D73DBB90);
  if ((v26 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v25, &v140);
  v27 = swift_dynamicCast();
  if (v27)
  {
    v14 = v131;
  }

  else
  {
    v14 = 0;
  }

  if (v27)
  {
    v28 = *(&v131 + 1);
  }

  else
  {
    v28 = 0;
  }

  v112 = v28;
  if (!*(a1 + 16))
  {
    goto LABEL_52;
  }

LABEL_24:
  v15 = sub_1D5B69D90(0xD000000000000010, 0x80000001D73DBBB0);
  if ((v16 & 1) == 0)
  {
    v110 = 0;
    v111 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_34;
    }

LABEL_53:
    v108 = 0;
    v109 = 0;
    goto LABEL_54;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v15, &v140);
  v17 = swift_dynamicCast();
  if (v17)
  {
    v18 = v131;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = *(&v131 + 1);
  }

  else
  {
    v19 = 0;
  }

  v110 = v19;
  v111 = v18;
  if (!*(a1 + 16))
  {
    goto LABEL_53;
  }

LABEL_34:
  v20 = sub_1D5B69D90(0x7069746C6F6F74, 0xE700000000000000);
  if (v21)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v20, &v140);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v131;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = *(&v131 + 1);
    }

    else
    {
      v24 = 0;
    }

    v108 = v24;
    v109 = v23;
    if (!*(a1 + 16))
    {
LABEL_54:
      v106 = 0;
      v107 = 0;
      if (*(a1 + 16))
      {
        goto LABEL_55;
      }

LABEL_83:
      v104 = 0;
      v105 = 0;
      goto LABEL_84;
    }
  }

  else
  {
    v108 = 0;
    v109 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_54;
    }
  }

  v38 = sub_1D5B69D90(0x656C746974, 0xE500000000000000);
  if ((v39 & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v38, &v140);
  v40 = swift_dynamicCast();
  if (v40)
  {
    v41 = v131;
  }

  else
  {
    v41 = 0;
  }

  if (v40)
  {
    v42 = *(&v131 + 1);
  }

  else
  {
    v42 = 0;
  }

  v106 = v42;
  v107 = v41;
  if (!*(a1 + 16))
  {
    goto LABEL_83;
  }

LABEL_55:
  v29 = sub_1D5B69D90(0x656C746974627573, 0xE800000000000000);
  if ((v30 & 1) == 0)
  {
    v104 = 0;
    v105 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_65;
    }

LABEL_84:
    v103 = 0;
    goto LABEL_85;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v29, &v140);
  v31 = swift_dynamicCast();
  if (v31)
  {
    v32 = v131;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = *(&v131 + 1);
  }

  else
  {
    v33 = 0;
  }

  v104 = v33;
  v105 = v32;
  if (!*(a1 + 16))
  {
    goto LABEL_84;
  }

LABEL_65:
  v34 = sub_1D5B69D90(0x656E696C6E69, 0xE600000000000000);
  if ((v35 & 1) != 0 && (sub_1D5B76B10(*(a1 + 56) + 32 * v34, &v140), swift_dynamicCast()))
  {
    v103 = v131;
    if (!*(a1 + 16))
    {
LABEL_68:
      v102 = 0;
      goto LABEL_92;
    }
  }

  else
  {
    v103 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_68;
    }
  }

  v36 = sub_1D5B69D90(0xD000000000000011, 0x80000001D73DBBD0);
  if ((v37 & 1) == 0 || (sub_1D5B76B10(*(a1 + 56) + 32 * v36, &v140), !swift_dynamicCast()))
  {
LABEL_85:
    v102 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_86;
    }

LABEL_92:
    v46 = 3;
    goto LABEL_93;
  }

  v102 = v131;
  if (!*(a1 + 16))
  {
    goto LABEL_92;
  }

LABEL_86:
  v43 = sub_1D5B69D90(0x6E6F697469736F70, 0xE800000000000000);
  if ((v44 & 1) == 0)
  {
    goto LABEL_92;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v43, &v140);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_92;
  }

  v45 = sub_1D72641CC();

  if (!v45)
  {
    v101 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_102;
    }

    goto LABEL_94;
  }

  if (v45 != 2)
  {
    if (v45 == 1)
    {
      v46 = 1;
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  v46 = 2;
LABEL_93:
  v101 = v46;
  if (!*(a1 + 16))
  {
    goto LABEL_102;
  }

LABEL_94:
  v47 = sub_1D5B69D90(0x6574617473, 0xE500000000000000);
  if (v48)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v47, &v140);
    if (swift_dynamicCast())
    {
      v49 = v14;
      v50 = sub_1D72641CC();

      v51 = 3;
      if (v50 < 3)
      {
        v51 = v50;
      }

      v100 = v51;
      v14 = v49;
      if (!*(a1 + 16))
      {
        goto LABEL_115;
      }

      goto LABEL_103;
    }
  }

LABEL_102:
  v100 = 3;
  if (!*(a1 + 16))
  {
    goto LABEL_115;
  }

LABEL_103:
  v52 = sub_1D5B69D90(0x7475626972747461, 0xEA00000000007365);
  if (v53)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v52, &v140);
    sub_1D5C82A44(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_dynamicCast();
    if (result)
    {
      v92 = v14;
      v94 = v13;
      v96 = v12;
      v97 = v8;
      v55 = 0;
      v56 = v131;
      v57 = *(v131 + 16);
      v58 = v131 + 40;
      v59 = MEMORY[0x1E69E7CC0];
      v91 = v131 + 40;
LABEL_106:
      v60 = v58 + 16 * v55;
      while (v57 != v55)
      {
        if (v55 >= *(v56 + 16))
        {
          __break(1u);
          goto LABEL_146;
        }

        ++v55;
        v61 = v60 + 16;

        v62 = sub_1D72641CC();

        v60 = v61;
        if (v62 < 3)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D6993710(0, *(v59 + 16) + 1, 1, v59);
            v59 = result;
          }

          v64 = *(v59 + 16);
          v63 = *(v59 + 24);
          v65 = v64 + 1;
          if (v64 >= v63 >> 1)
          {
            result = sub_1D6993710((v63 > 1), v64 + 1, 1, v59);
            v65 = v64 + 1;
            v59 = result;
          }

          *(v59 + 16) = v65;
          *(v59 + v64 + 32) = v62;
          v58 = v91;
          goto LABEL_106;
        }
      }

      v8 = v97;
      v13 = v94;
      v12 = v96;
      v14 = v92;
      if (*(a1 + 16))
      {
        goto LABEL_116;
      }

      goto LABEL_139;
    }
  }

LABEL_115:
  v59 = 0;
  if (!*(a1 + 16))
  {
LABEL_139:
    v69 = 0;
    v149 = 1;
LABEL_140:

    goto LABEL_141;
  }

LABEL_116:
  v66 = sub_1D5B69D90(0x6874646977, 0xE500000000000000);
  if (v67)
  {
    sub_1D5B76B10(*(a1 + 56) + 32 * v66, &v140);
    v68 = swift_dynamicCast();
    if (v68)
    {
      v69 = v131;
    }

    else
    {
      v69 = 0;
    }

    v70 = v68 ^ 1;
  }

  else
  {
    v69 = 0;
    v70 = 1;
  }

  v71 = *(a1 + 16);
  v149 = v70;
  if (!v71)
  {
    goto LABEL_140;
  }

  v72 = sub_1D5B69D90(0x736D657469, 0xE500000000000000);
  if ((v73 & 1) == 0)
  {
    goto LABEL_140;
  }

  sub_1D5B76B10(*(a1 + 56) + 32 * v72, &v140);

  sub_1D6325CE0();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_141:
    v77 = 0;
LABEL_142:
    *&v140 = v7;
    *(&v140 + 1) = v8;
    *&v141 = v107;
    *(&v141 + 1) = v106;
    *&v142 = v105;
    *(&v142 + 1) = v104;
    *&v143 = v12;
    *(&v143 + 1) = v13;
    *&v144 = v14;
    *(&v144 + 1) = v112;
    *&v145 = v111;
    *(&v145 + 1) = v110;
    *&v146 = v77;
    BYTE8(v146) = v103;
    BYTE9(v146) = v100;
    *&v147 = v59;
    *(&v147 + 1) = v109;
    *v148 = v108;
    v148[8] = v102;
    v148[9] = v101;
    *&v148[16] = v69;
    v148[24] = v149;
    result = nullsub_1(&v140);
    v86 = v147;
    a2[6] = v146;
    a2[7] = v86;
    a2[8] = *v148;
    *(a2 + 137) = *&v148[9];
    v87 = v143;
    a2[2] = v142;
    a2[3] = v87;
    v88 = v145;
    a2[4] = v144;
    a2[5] = v88;
    v89 = v141;
    *a2 = v140;
    a2[1] = v89;
    return result;
  }

  v93 = v14;
  v95 = v13;
  v98 = v8;
  v99 = v7;
  v74 = v131;
  v75 = *(v131 + 16);
  if (!v75)
  {
    v77 = MEMORY[0x1E69E7CC0];
LABEL_144:

    v8 = v98;
    v7 = v99;
    v13 = v95;
    v14 = v93;
    goto LABEL_142;
  }

  v76 = 0;
  v77 = MEMORY[0x1E69E7CC0];
LABEL_127:
  v78 = v76;
  while (v78 < *(v74 + 16))
  {
    v76 = v78 + 1;

    PuzzleMenuConfig.init(with:)(&v131, v79);
    v146 = v137;
    v147 = v138;
    *v148 = v139[0];
    *&v148[9] = *(v139 + 9);
    v142 = v133;
    v143 = v134;
    v144 = v135;
    v145 = v136;
    v140 = v131;
    v141 = v132;
    if (get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(&v140) != 1)
    {
      v128 = v137;
      v129 = v138;
      v130[0] = v139[0];
      *(v130 + 9) = *(v139 + 9);
      v124 = v133;
      v125 = v134;
      v126 = v135;
      v127 = v136;
      v122 = v131;
      v123 = v132;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D69935C8(0, *(v77 + 16) + 1, 1, v77);
        v77 = result;
      }

      v81 = *(v77 + 16);
      v80 = *(v77 + 24);
      v82 = v81 + 1;
      if (v81 >= v80 >> 1)
      {
        v90 = v81 + 1;
        v84 = v77;
        v85 = *(v77 + 16);
        result = sub_1D69935C8((v80 > 1), v81 + 1, 1, v84);
        v82 = v90;
        v81 = v85;
        v77 = result;
      }

      v117 = v126;
      v118 = v127;
      v115 = v124;
      v116 = v125;
      *&v121[9] = *(v130 + 9);
      v120 = v129;
      *v121 = v130[0];
      v119 = v128;
      v113 = v122;
      v114 = v123;
      *(v77 + 16) = v82;
      v83 = (v77 + 160 * v81);
      v83[2] = v113;
      v83[3] = v114;
      v83[6] = v117;
      v83[7] = v118;
      v83[4] = v115;
      v83[5] = v116;
      *(v83 + 169) = *&v121[9];
      v83[9] = v120;
      v83[10] = *v121;
      v83[8] = v119;
      if (v75 - 1 != v78)
      {
        goto LABEL_127;
      }

      goto LABEL_144;
    }

    v128 = v137;
    v129 = v138;
    v130[0] = v139[0];
    *(v130 + 9) = *(v139 + 9);
    v124 = v133;
    v125 = v134;
    v126 = v135;
    v127 = v136;
    v122 = v131;
    v123 = v132;
    result = sub_1D6325D38(&v122);
    ++v78;
    if (v75 == v76)
    {
      goto LABEL_144;
    }
  }

LABEL_146:
  __break(1u);
  return result;
}

NewsFeed::PuzzleMenusConfiguration_optional __swiftcall PuzzleMenusConfiguration.init(with:)(Swift::OpaquePointer with)
{
  v3 = v1;
  if (*(with._rawValue + 2) && (v4 = sub_1D5B69D90(0x73756E656DLL, 0xE500000000000000), (v5 & 1) != 0) && (sub_1D5B76B10(*(with._rawValue + 7) + 32 * v4, v57), sub_1D6325CE0(), (swift_dynamicCast() & 1) != 0))
  {

    v6 = v48;
    v7 = *(v48 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = v7 - 1;
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        v11 = v8;
        while (1)
        {
          if (v11 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v8 = v11 + 1;

          PuzzleMenuConfig.init(with:)(v12, &v48);
          v57[6] = v54;
          v57[7] = v55;
          v58[0] = v56[0];
          *(v58 + 9) = *(v56 + 9);
          v57[2] = v50;
          v57[3] = v51;
          v57[4] = v52;
          v57[5] = v53;
          v57[0] = v48;
          v57[1] = v49;
          if (get_enum_tag_for_layout_string_8NewsFeed0B5IssueV9OverridesVSg_0(v57) != 1)
          {
            break;
          }

          v45 = v54;
          v46 = v55;
          v47[0] = v56[0];
          *(v47 + 9) = *(v56 + 9);
          v41 = v50;
          v42 = v51;
          v43 = v52;
          v44 = v53;
          v39 = v48;
          v40 = v49;
          sub_1D6325D38(&v39);
          ++v11;
          if (v7 == v8)
          {
            goto LABEL_24;
          }
        }

        v45 = v54;
        v46 = v55;
        v47[0] = v56[0];
        *(v47 + 9) = *(v56 + 9);
        v41 = v50;
        v42 = v51;
        v43 = v52;
        v44 = v53;
        v39 = v48;
        v40 = v49;
        v29 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1D69935C8(0, *(v10 + 2) + 1, 1, v10);
        }

        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v17 = sub_1D69935C8((v13 > 1), v14 + 1, 1, v10);
          v15 = v14 + 1;
          v10 = v17;
        }

        v34 = v43;
        v35 = v44;
        v32 = v41;
        v33 = v42;
        *&v38[9] = *(v47 + 9);
        v37 = v46;
        *v38 = v47[0];
        v36 = v45;
        v30 = v39;
        v31 = v40;
        *(v10 + 2) = v15;
        v16 = &v10[160 * v14];
        *(v16 + 2) = v30;
        *(v16 + 3) = v31;
        *(v16 + 6) = v34;
        *(v16 + 7) = v35;
        *(v16 + 4) = v32;
        *(v16 + 5) = v33;
        *(v16 + 169) = *&v38[9];
        *(v16 + 9) = v37;
        *(v16 + 10) = *v38;
        *(v16 + 8) = v36;
        v9 = v29;
      }

      while (v29 != v11);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
  }

  else
  {
    if (qword_1EDF3B838 != -1)
    {
LABEL_26:
      swift_once();
    }

    v18 = sub_1D725C42C();
    __swift_project_value_buffer(v18, qword_1EDFFCFA8);

    v19 = sub_1D725C3FC();
    v20 = sub_1D7262EBC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v57[0] = v22;
      *v21 = 136315138;
      v23 = sub_1D7261D4C();
      v25 = v24;

      v26 = sub_1D5BC5100(v23, v25, v57);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1D5B42000, v19, v20, "Failed parsing PuzzleMenusConfiguration. Invalid menus entry: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1DA6FD500](v22, -1, -1);
      MEMORY[0x1DA6FD500](v21, -1, -1);
    }

    else
    {
    }

    v10 = 0;
  }

  *v3 = v10;
  result.value.menus._rawValue = v27;
  result.is_nil = v28;
  return result;
}

uint64_t sub_1D69045BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73756E656DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6904640(uint64_t a1)
{
  v2 = sub_1D6907668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D690467C(uint64_t a1)
{
  v2 = sub_1D6907668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleMenusConfiguration.encode(to:)(void *a1)
{
  sub_1D6908854(0, &qword_1EC88DFF8, sub_1D6907668, &type metadata for PuzzleMenusConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6907668();

  sub_1D7264B5C();
  v11[3] = v9;
  sub_1D5C82A44(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
  sub_1D69076BC(&qword_1EC885D60, sub_1D6325F98);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleMenusConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v13 = a2;
  sub_1D6908854(0, &qword_1EC88E008, sub_1D6907668, &type metadata for PuzzleMenusConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6907668();
  sub_1D7264B0C();
  if (!v2)
  {
    v10 = v13;
    sub_1D5C82A44(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    sub_1D69076BC(&qword_1EC885D78, sub_1D63260E4);
    sub_1D726431C();
    (*(v6 + 8))(v9, v5);
    *v10 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

NewsFeed::PuzzleMenuConfig::State_optional __swiftcall PuzzleMenuConfig.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleMenuConfig.State.rawValue.getter()
{
  v1 = 28271;
  if (*v0 != 1)
  {
    v1 = 0x646578696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6710895;
  }
}

uint64_t sub_1D6904BA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28271;
  if (v2 != 1)
  {
    v4 = 0x646578696DLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6710895;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28271;
  if (*a2 != 1)
  {
    v8 = 0x646578696DLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6710895;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D6904C84()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6904D10()
{
  sub_1D72621EC();
}

uint64_t sub_1D6904D88()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D6904E1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE200000000000000;
  v5 = 28271;
  if (v2 != 1)
  {
    v5 = 0x646578696DLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6710895;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

NewsFeed::PuzzleMenuConfig::Attribute_optional __swiftcall PuzzleMenuConfig.Attribute.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PuzzleMenuConfig.Attribute.rawValue.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7463757274736564;
  }
}

uint64_t sub_1D6904FD8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x64656C6261736964;
  v5 = 0x80000001D73B7530;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001D73B7530;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7463757274736564;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEB00000000657669;
  }

  v8 = 0x64656C6261736964;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7463757274736564;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000657669;
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

uint64_t sub_1D69050D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6905188()
{
  sub_1D72621EC();
}

uint64_t sub_1D6905224()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D69052DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657669;
  v4 = 0xE800000000000000;
  v5 = 0x64656C6261736964;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000001D73B7530;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7463757274736564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PuzzleMenuConfig.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleMenuConfig.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PuzzleMenuConfig.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PuzzleMenuConfig.icon.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PuzzleMenuConfig.accessibilityLabel.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PuzzleMenuConfig.toolbarItemLabel.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PuzzleMenuConfig.tooltip.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

__n128 PuzzleMenuConfig.init(identifier:title:subtitle:icon:accessibilityLabel:toolbarItemLabel:tooltip:items:inline:state:attributes:iconThemeInverted:position:width:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __n128 a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, uint64_t a17, char a18, char *a19, uint64_t a20, char a21)
{
  result = a11;
  v22 = *a16;
  v23 = *a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 120) = a12;
  *(a9 + 128) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 105) = v22;
  *(a9 + 112) = a17;
  *(a9 + 136) = a18;
  *(a9 + 137) = v23;
  *(a9 + 144) = a20;
  *(a9 + 152) = a21 & 1;
  return result;
}

unint64_t sub_1D6905600(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 1852793705;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x736D657469;
      break;
    case 7:
      result = 0x656E696C6E69;
      break;
    case 8:
      result = 0x6574617473;
      break;
    case 9:
      result = 0x7475626972747461;
      break;
    case 10:
      result = 0x7069746C6F6F74;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6E6F697469736F70;
      break;
    case 13:
      result = 0x6874646977;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6905778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6909038(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D69057A0(uint64_t a1)
{
  v2 = sub_1D6908704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D69057DC(uint64_t a1)
{
  v2 = sub_1D6908704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PuzzleMenuConfig.encode(to:)(void *a1)
{
  sub_1D6908854(0, &qword_1EC88E010, sub_1D6908704, &type metadata for PuzzleMenuConfig.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - v7;
  v9 = *(v1 + 16);
  v35 = *(v1 + 24);
  v36 = v9;
  v10 = *(v1 + 32);
  v33 = *(v1 + 40);
  v34 = v10;
  v11 = *(v1 + 48);
  v31 = *(v1 + 56);
  v32 = v11;
  v12 = *(v1 + 64);
  v29 = *(v1 + 72);
  v30 = v12;
  v13 = *(v1 + 88);
  v27 = *(v1 + 80);
  v28 = v13;
  v26 = *(v1 + 96);
  LODWORD(v12) = *(v1 + 104);
  v24 = *(v1 + 105);
  v25 = v12;
  v14 = *(v1 + 112);
  v21 = *(v1 + 120);
  v22 = *(v1 + 128);
  v23 = v14;
  LODWORD(v14) = *(v1 + 136);
  v19 = *(v1 + 137);
  v20 = v14;
  v17[1] = *(v1 + 144);
  v18 = *(v1 + 152);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6908704();
  sub_1D7264B5C();
  LOBYTE(v39) = 0;
  v15 = v37;
  sub_1D726437C();
  if (!v15)
  {
    LOBYTE(v39) = 1;
    sub_1D726437C();
    LOBYTE(v39) = 2;
    sub_1D726437C();
    v37 = v5;
    LOBYTE(v39) = 3;
    sub_1D726437C();
    LOBYTE(v39) = 4;
    sub_1D726437C();
    LOBYTE(v39) = 5;
    sub_1D726437C();
    v39 = v26;
    v38 = 6;
    sub_1D5C82A44(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    sub_1D69076BC(&qword_1EC885D60, sub_1D6325F98);
    sub_1D72643BC();
    LOBYTE(v39) = 7;
    sub_1D726440C();
    LOBYTE(v39) = v24;
    v38 = 8;
    sub_1D6908758();
    sub_1D72643BC();
    v39 = v23;
    v38 = 9;
    sub_1D5C82A44(0, &qword_1EC88E028, &type metadata for PuzzleMenuConfig.Attribute, MEMORY[0x1E69E62F8]);
    sub_1D6908910(&qword_1EC88E030, sub_1D69087AC);
    sub_1D72643BC();
    LOBYTE(v39) = 10;
    sub_1D726437C();
    LOBYTE(v39) = 11;
    sub_1D726440C();
    LOBYTE(v39) = v19;
    v38 = 12;
    sub_1D6908800();
    sub_1D72643BC();
    LOBYTE(v39) = 13;
    sub_1D726439C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t PuzzleMenuConfig.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v6 = *(v1 + 72);
  v7 = *(v1 + 88);
  v28 = *(v1 + 96);
  v27 = *(v1 + 105);
  v29 = *(v1 + 112);
  v30 = *(v1 + 128);
  v31 = *(v1 + 137);
  v26 = *(v1 + 144);
  v32 = *(v1 + 152);
  if (*(v1 + 8))
  {
    sub_1D7264A2C();
    sub_1D72621EC();
    v8 = v7;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D7264A2C();
    v9 = v6;
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_1D7264A2C();
  v8 = v7;
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D7264A2C();
  sub_1D72621EC();
  v9 = v6;
  if (v4)
  {
LABEL_4:
    sub_1D7264A2C();
    sub_1D72621EC();
    goto LABEL_8;
  }

LABEL_7:
  sub_1D7264A2C();
LABEL_8:
  if (v5)
  {
    sub_1D7264A2C();
    sub_1D72621EC();
    if (v9)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1D7264A2C();
    if (v9)
    {
LABEL_10:
      sub_1D7264A2C();
      sub_1D72621EC();
      if (v8)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  sub_1D7264A2C();
  if (v8)
  {
LABEL_11:
    sub_1D7264A2C();
    sub_1D72621EC();
    if (v28)
    {
      goto LABEL_12;
    }

LABEL_19:
    sub_1D7264A2C();
    goto LABEL_20;
  }

LABEL_18:
  sub_1D7264A2C();
  if (!v28)
  {
    goto LABEL_19;
  }

LABEL_12:
  sub_1D7264A2C();
  MEMORY[0x1DA6FC0B0](*(v28 + 16));
  v10 = *(v28 + 16);
  if (v10)
  {
    v11 = (v28 + 32);
    do
    {
      v12 = v11[1];
      v33[0] = *v11;
      v33[1] = v12;
      v13 = v11[2];
      v14 = v11[3];
      v15 = v11[5];
      v33[4] = v11[4];
      v33[5] = v15;
      v33[2] = v13;
      v33[3] = v14;
      v16 = v11[6];
      v17 = v11[7];
      v18 = v11[8];
      *&v34[9] = *(v11 + 137);
      v33[7] = v17;
      *v34 = v18;
      v33[6] = v16;
      v19 = v11[7];
      v43 = v11[6];
      v44 = v19;
      v45[0] = v11[8];
      *(v45 + 9) = *(v11 + 137);
      v20 = v11[3];
      v39 = v11[2];
      v40 = v20;
      v21 = v11[5];
      v41 = v11[4];
      v42 = v21;
      v22 = *v11;
      v23 = v11[1];
      v11 += 10;
      v37 = v22;
      v38 = v23;
      sub_1D5E42C00(v33, v35);
      PuzzleMenuConfig.hash(into:)(a1);
      v35[6] = v43;
      v35[7] = v44;
      v36[0] = v45[0];
      *(v36 + 9) = *(v45 + 9);
      v35[2] = v39;
      v35[3] = v40;
      v35[4] = v41;
      v35[5] = v42;
      v35[0] = v37;
      v35[1] = v38;
      sub_1D5E42C5C(v35);
      --v10;
    }

    while (v10);
  }

LABEL_20:
  sub_1D7264A2C();
  if (v27 == 3)
  {
    sub_1D7264A2C();
    if (v29)
    {
      goto LABEL_22;
    }

LABEL_25:
    sub_1D7264A2C();
    if (v30)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  sub_1D7264A2C();
  sub_1D72621EC();

  if (!v29)
  {
    goto LABEL_25;
  }

LABEL_22:
  sub_1D7264A2C();
  sub_1D6907C14(a1, v29);
  if (v30)
  {
LABEL_23:
    sub_1D7264A2C();
    sub_1D72621EC();
    goto LABEL_27;
  }

LABEL_26:
  sub_1D7264A2C();
LABEL_27:
  sub_1D7264A2C();
  if (v31 != 3)
  {
    sub_1D7264A2C();
    sub_1D72621EC();

    if ((v32 & 1) == 0)
    {
      goto LABEL_29;
    }

    return sub_1D7264A2C();
  }

  sub_1D7264A2C();
  if (v32)
  {
    return sub_1D7264A2C();
  }

LABEL_29:
  sub_1D7264A2C();
  if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v26;
  }

  else
  {
    v24 = 0;
  }

  return MEMORY[0x1DA6FC0E0](v24);
}

uint64_t PuzzleMenuConfig.hashValue.getter()
{
  sub_1D7264A0C();
  PuzzleMenuConfig.hash(into:)(v1);
  return sub_1D7264A5C();
}

uint64_t PuzzleMenuConfig.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6908854(0, &qword_1EC88E048, sub_1D6908704, &type metadata for PuzzleMenuConfig.CodingKeys, MEMORY[0x1E69E6F48]);
  v69 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v48 - v8;
  v10 = a1[3];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D6908704();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v99);
  }

  v11 = v6;
  LOBYTE(v79[0]) = 0;
  v12 = v69;
  v14 = sub_1D726422C();
  v67 = v15;
  LOBYTE(v79[0]) = 1;
  v16 = sub_1D726422C();
  v66 = v17;
  v60 = v16;
  LOBYTE(v79[0]) = 2;
  v59 = sub_1D726422C();
  v65 = v18;
  LOBYTE(v79[0]) = 3;
  v58 = sub_1D726422C();
  v64 = v19;
  LOBYTE(v79[0]) = 4;
  v57 = sub_1D726422C();
  v63 = v20;
  LOBYTE(v79[0]) = 5;
  v21 = sub_1D726422C();
  v68 = 0;
  v56 = v21;
  v62 = v22;
  sub_1D5C82A44(0, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
  LOBYTE(v70) = 6;
  sub_1D69076BC(&qword_1EC885D78, sub_1D63260E4);
  v23 = v68;
  sub_1D726427C();
  if (v23)
  {
    v68 = v23;
    (*(v11 + 8))(v9, v12);
    v24 = 0;
    goto LABEL_9;
  }

  v61 = v79[0];
  LOBYTE(v79[0]) = 7;
  v25 = sub_1D72642CC();
  v68 = 0;
  v55 = v25;
  LOBYTE(v70) = 8;
  sub_1D69088BC();
  v26 = v68;
  sub_1D726427C();
  v68 = v26;
  if (v26)
  {
    (*(v11 + 8))(v9, v12);
LABEL_8:
    v24 = 1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v99);

    if ((v24 & 1) == 0)
    {
      return result;
    }
  }

  v27 = v79[0];
  sub_1D5C82A44(0, &qword_1EC88E028, &type metadata for PuzzleMenuConfig.Attribute, MEMORY[0x1E69E62F8]);
  LOBYTE(v70) = 9;
  sub_1D6908910(&qword_1EC88E058, sub_1D69089A0);
  v28 = v68;
  sub_1D726427C();
  v68 = v28;
  if (v28)
  {
    (*(v11 + 8))(v9, v69);
    goto LABEL_8;
  }

  v29 = v79[0];
  LOBYTE(v79[0]) = 10;
  v53 = sub_1D726422C();
  v54 = v30;
  LOBYTE(v79[0]) = 11;
  v52 = sub_1D72642CC();
  v68 = 0;
  LOBYTE(v70) = 12;
  sub_1D69089F4();
  v31 = v68;
  sub_1D726427C();
  v68 = v31;
  if (!v31)
  {
    v51 = LOBYTE(v79[0]);
    v93 = 13;
    v50 = sub_1D726424C();
    v68 = 0;
    v33 = v32;
    v34 = v55 & 1;
    v49 = v55 & 1;
    v55 = v52 & 1;
    (*(v11 + 8))(v9, v69);
    v94 = v33 & 1;
    v36 = v66;
    v35 = v67;
    *&v70 = v14;
    *(&v70 + 1) = v67;
    *&v71 = v60;
    *(&v71 + 1) = v66;
    *&v72 = v59;
    *(&v72 + 1) = v65;
    v37 = v63;
    *&v73 = v58;
    *(&v73 + 1) = v64;
    *&v74 = v57;
    *(&v74 + 1) = v63;
    *&v75 = v56;
    *(&v75 + 1) = v62;
    *&v76 = v61;
    BYTE8(v76) = v34;
    v38 = v27;
    BYTE9(v76) = v27;
    *(&v76 + 10) = v97;
    HIWORD(v76) = v98;
    v39 = v29;
    *&v77 = v29;
    *(&v77 + 1) = v53;
    v40 = v54;
    *&v78[0] = v54;
    BYTE8(v78[0]) = v55;
    BYTE9(v78[0]) = v51;
    *(v78 + 10) = v95;
    HIWORD(v78[0]) = v96;
    *&v78[1] = v50;
    LODWORD(v69) = v94;
    BYTE8(v78[1]) = v94;
    v41 = v71;
    *a2 = v70;
    a2[1] = v41;
    v42 = v72;
    v43 = v73;
    v44 = v75;
    a2[4] = v74;
    a2[5] = v44;
    a2[2] = v42;
    a2[3] = v43;
    v45 = v76;
    v46 = v77;
    v47 = v78[0];
    *(a2 + 137) = *(v78 + 9);
    a2[7] = v46;
    a2[8] = v47;
    a2[6] = v45;
    sub_1D5E42C00(&v70, v79);
    __swift_destroy_boxed_opaque_existential_1(v99);
    v79[0] = v14;
    v79[1] = v35;
    v79[2] = v60;
    v79[3] = v36;
    v79[4] = v59;
    v79[5] = v65;
    v79[6] = v58;
    v79[7] = v64;
    v79[8] = v57;
    v79[9] = v37;
    v79[10] = v56;
    v79[11] = v62;
    v79[12] = v61;
    v80 = v49;
    v81 = v38;
    v82 = v97;
    v83 = v98;
    v84 = v39;
    v85 = v53;
    v86 = v40;
    v87 = v55;
    v88 = v51;
    v90 = v96;
    v89 = v95;
    v91 = v50;
    v92 = v69;
    return sub_1D5E42C5C(v79);
  }

  (*(v11 + 8))(v9, v69);
  __swift_destroy_boxed_opaque_existential_1(v99);
}

uint64_t sub_1D6906B24()
{
  sub_1D7264A0C();
  PuzzleMenuConfig.hash(into:)(v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D6906B68()
{
  sub_1D7264A0C();
  PuzzleMenuConfig.hash(into:)(v1);
  return sub_1D7264A5C();
}

uint64_t PuzzleMenuConfig.withState(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 88);
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  v8 = *(v2 + 112);
  v7 = *(v2 + 120);
  v9 = *(v2 + 128);
  v10 = *(v2 + 136);
  v11 = *(v2 + 137);
  v12 = *(v2 + 144);
  v13 = *(v2 + 152);
  *a2 = *v2;
  *(a2 + 8) = *(v2 + 8);
  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 40);
  *(a2 + 56) = *(v2 + 56);
  *(a2 + 72) = *(v2 + 72);
  *(a2 + 120) = v7;
  *(a2 + 128) = v9;
  *(a2 + 88) = v4;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 105) = v3;
  *(a2 + 112) = v8;
  *(a2 + 136) = v10;
  *(a2 + 137) = v11;
  *(a2 + 144) = v12;
  *(a2 + 152) = v13;
}

uint64_t PuzzleMenuConfig.updating(identifier:title:subtitle:icon:accessibilityLabel:toolbarItemLabel:tooltip:items:inline:state:attributes:iconThemeInverted:position:width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, unsigned __int8 *a18, uint64_t a19, char a20, unsigned __int8 *a21, uint64_t a22, char a23)
{
  v54 = *a18;
  v60 = *a21;
  v26 = v23[2];
  v27 = v23[3];
  v29 = v23[4];
  v28 = v23[5];
  v30 = v23[7];
  v61 = v23[6];
  v46 = v23[8];
  v47 = v23[11];
  v48 = v23[10];
  v53 = *(v23 + 105);
  v51 = v23[12];
  v50 = v23[15];
  v49 = v23[16];
  v55 = *(v23 + 136);
  v56 = *(v23 + 104);
  v59 = v23[18];
  v62 = a2;
  v57 = *(v23 + 152);
  v58 = *(v23 + 137);
  if (a2)
  {
    v31 = a4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v62 = v23[1];
    a1 = *v23;

    v31 = a4;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  a3 = v26;
  v31 = v27;
LABEL_3:
  v52 = v31;
  v32 = a6;
  if (!a6)
  {

    a5 = v29;
    v32 = v28;
  }

  v33 = a8;
  if (!a8)
  {

    a7 = v61;
    v33 = v30;
  }

  v34 = a11;
  if (!a11)
  {
    a10 = v46;
  }

  v35 = a13;
  if (!a13)
  {
    v35 = v47;

    a12 = v48;
  }

  v37 = a15;
  if (!a15)
  {
    v37 = v49;

    a14 = v50;
  }

  v38 = a16;
  if (a16)
  {
    v39 = a19;
    if (a19)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v38 = v51;

    v39 = a19;
    if (a19)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v40 = v54;
  if (v54 == 3)
  {
    v40 = v53;
  }

  *a9 = a1;
  *(a9 + 8) = v62;
  v41 = v56;
  if (a17 != 2)
  {
    v41 = a17;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = v52;
  v42 = v55;
  if (a20 != 2)
  {
    v42 = a20;
  }

  v43 = v60;
  if (v60 == 3)
  {
    v43 = v58;
  }

  *(a9 + 32) = a5;
  *(a9 + 40) = v32;
  if (a23)
  {
    a22 = v59;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = v33;
  *(a9 + 64) = a10;
  *(a9 + 72) = v34;
  *(a9 + 80) = a12;
  *(a9 + 88) = v35;
  *(a9 + 120) = a14;
  *(a9 + 128) = v37;
  *(a9 + 96) = v38;
  *(a9 + 104) = v41 & 1;
  *(a9 + 105) = v40;
  *(a9 + 112) = v39;
  *(a9 + 136) = v42 & 1;
  *(a9 + 137) = v43;
  *(a9 + 144) = a22;
  *(a9 + 152) = a23 & v57 & 1;
}

uint64_t PuzzleMenuConfig.selecting(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3[7];
  v30 = v3[6];
  v31 = v5;
  *v32 = v3[8];
  *&v32[9] = *(v3 + 137);
  v6 = v3[3];
  *&v29[32] = v3[2];
  *&v29[48] = v6;
  v7 = v3[5];
  *&v29[64] = v3[4];
  *&v29[80] = v7;
  v8 = v3[1];
  *v29 = *v3;
  *&v29[16] = v8;
  v28 = MEMORY[0x1E69E7CC0];
  if (v30)
  {

    sub_1D6908A48(v30, a1, a2, &v28);

    v11 = v28;
    v12 = *&v29[88];
    v13 = *(&v31 + 1);
    v14 = *v32;
    v15 = BYTE8(v30);
    v16 = BYTE9(v30);
    v17 = v31;
    v18 = v32[8];
    v19 = v32[9];
    v20 = *&v32[16];
    v21 = v32[24];
    *a3 = *v29;
    *(a3 + 8) = *&v29[8];
    *(a3 + 24) = *&v29[24];
    *(a3 + 40) = *&v29[40];
    *(a3 + 56) = *&v29[56];
    *(a3 + 72) = *&v29[72];
    *(a3 + 120) = v13;
    *(a3 + 128) = v14;
    *(a3 + 88) = v12;
    *(a3 + 96) = v11;
    *(a3 + 104) = v15;
    *(a3 + 105) = v16;
    *(a3 + 112) = v17;
    *(a3 + 136) = v18;
    *(a3 + 137) = v19;
    *(a3 + 144) = v20;
    *(a3 + 152) = v21;
  }

  else
  {
    v23 = v3[7];
    *(a3 + 96) = v3[6];
    *(a3 + 112) = v23;
    *(a3 + 128) = v3[8];
    *(a3 + 137) = *(v3 + 137);
    v24 = v3[3];
    *(a3 + 32) = v3[2];
    *(a3 + 48) = v24;
    v25 = v3[5];
    *(a3 + 64) = v3[4];
    *(a3 + 80) = v25;
    v26 = v3[1];
    *a3 = *v3;
    *(a3 + 16) = v26;
    return sub_1D5E42C00(v29, v27);
  }
}

uint64_t sub_1D69071FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 1);
  v6 = a1[11];
  v7 = a1[12];
  v24 = *(a1 + 104);
  v8 = a1[16];
  v26 = *(a1 + 137);
  v27 = *(a1 + 136);
  v30 = a1[18];
  v25 = v5;
  v9 = *(a1 + 152);
  v34 = *(a1 + 3);
  v35 = *(a1 + 7);
  v32 = *(a1 + 7);
  v33 = *(a1 + 5);
  v31 = *(a1 + 9);
  v23 = *a1;
  if (a3)
  {
    if (v5)
    {
      if (*a1 == a2 && v5 == a3)
      {
        goto LABEL_6;
      }

      v10 = a1[16];
      v11 = sub_1D72646CC();
      v8 = v10;
      if (v11)
      {
        goto LABEL_6;
      }
    }
  }

  else if (!v5)
  {
LABEL_6:
    v22 = 1;
    goto LABEL_9;
  }

  v22 = 0;
LABEL_9:
  v29 = v9;
  v12 = *a4;
  v28 = v8;

  result = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v12;
  if ((result & 1) == 0)
  {
    result = sub_1D69935C8(0, *(v12 + 16) + 1, 1, v12);
    v12 = result;
    *a4 = result;
  }

  v15 = *(v12 + 16);
  v14 = *(v12 + 24);
  v17 = v34;
  v16 = v35;
  v19 = v32;
  v18 = v33;
  v20 = v31;
  if (v15 >= v14 >> 1)
  {
    result = sub_1D69935C8((v14 > 1), v15 + 1, 1, v12);
    v20 = v31;
    v19 = v32;
    v18 = v33;
    v17 = v34;
    v16 = v35;
    v12 = result;
    *a4 = result;
  }

  *(v12 + 16) = v15 + 1;
  v21 = v12 + 160 * v15;
  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  *(v21 + 56) = v17;
  *(v21 + 72) = v18;
  *(v21 + 88) = v19;
  *(v21 + 104) = v20;
  *(v21 + 120) = v6;
  *(v21 + 128) = v7;
  *(v21 + 136) = v24;
  *(v21 + 137) = v22;
  *(v21 + 138) = v38;
  *(v21 + 142) = v39;
  *(v21 + 144) = v16;
  *(v21 + 160) = v28;
  *(v21 + 168) = v27;
  *(v21 + 169) = v26;
  *(v21 + 170) = v36;
  *(v21 + 174) = v37;
  *(v21 + 176) = v30;
  *(v21 + 184) = v29;
  return result;
}

void PuzzleMenuConfig.selectedItem.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v3 + 32);
      do
      {
        if (v5 >= *(v3 + 16))
        {
          __break(1u);
          return;
        }

        v8 = v6[1];
        v32 = *v6;
        v33 = v8;
        v9 = v6[2];
        v10 = v6[3];
        v11 = v6[5];
        v36 = v6[4];
        v37 = v11;
        v34 = v9;
        v35 = v10;
        v12 = v6[6];
        v13 = v6[7];
        v14 = v6[8];
        *(v40 + 9) = *(v6 + 137);
        v39 = v13;
        v40[0] = v14;
        v38 = v12;
        if (BYTE9(v12) <= 1u)
        {
          if (BYTE9(v12))
          {
            sub_1D5E42C00(&v32, &v23);
            swift_bridgeObjectRelease_n();
LABEL_15:
            v29 = v38;
            v30 = v39;
            v31[0] = v40[0];
            *(v31 + 9) = *(v40 + 9);
            v25 = v34;
            v26 = v35;
            v27 = v36;
            v28 = v37;
            v23 = v32;
            v24 = v33;
            nullsub_1();
            v20 = v30;
            a1[6] = v29;
            a1[7] = v20;
            a1[8] = v31[0];
            *(a1 + 137) = *(v31 + 9);
            v21 = v26;
            a1[2] = v25;
            a1[3] = v21;
            v22 = v28;
            a1[4] = v27;
            a1[5] = v22;
            v18 = v23;
            v19 = v24;
            goto LABEL_13;
          }
        }

        else if (BYTE9(v12) != 2)
        {
          goto LABEL_7;
        }

        v7 = sub_1D72646CC();
        sub_1D5E42C00(&v32, &v23);

        if (v7)
        {
          goto LABEL_15;
        }

        sub_1D5E42C5C(&v32);
LABEL_7:
        ++v5;
        v6 += 10;
      }

      while (v4 != v5);
    }
  }

  sub_1D6908BC0(&v32);
  v15 = v39;
  a1[6] = v38;
  a1[7] = v15;
  a1[8] = v40[0];
  *(a1 + 137) = *(v40 + 9);
  v16 = v35;
  a1[2] = v34;
  a1[3] = v16;
  v17 = v37;
  a1[4] = v36;
  a1[5] = v17;
  v18 = v32;
  v19 = v33;
LABEL_13:
  *a1 = v18;
  a1[1] = v19;
}

unint64_t sub_1D6907668()
{
  result = qword_1EC88E000;
  if (!qword_1EC88E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E000);
  }

  return result;
}

uint64_t sub_1D69076BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5C82A44(255, &qword_1EC885D58, &type metadata for PuzzleMenuConfig, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D690774C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PuzzleLeaderboardEntry();
  v4 = *(v3 - 1);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x1DA6FC0B0](v9, v6);
  if (v9)
  {
    v11 = &v8[v3[6]];
    v12 = v3[7];
    v17 = v3[8];
    v18 = v12;
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v16 = *(v4 + 72);
    do
    {
      sub_1D6909538(v13, v8);
      sub_1D725891C();
      sub_1D690959C();
      sub_1D7261E8C();
      sub_1D72621EC();
      v14 = *(v11 + 5);
      sub_1D72621EC();
      sub_1D72621EC();
      sub_1D7264A2C();
      if (v14 >> 60 != 15)
      {
        sub_1D725868C();
      }

      MEMORY[0x1DA6FC0B0](*&v8[v18]);
      MEMORY[0x1DA6FC0B0](*&v8[v17]);
      result = sub_1D69095F4(v8);
      v13 += v16;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1D6907920(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6FC0B0](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      if (v10 >> 6)
      {
        if (v10 >> 6 != 1)
        {
          if (v9 | v8 || v10 != 128)
          {
            v12 = v8 == 1 && v9 == 0;
            if (v12 && v10 == 128)
            {
              v11 = 3;
            }

            else if (v8 == 2 && !v9 && v10 == 128)
            {
              v11 = 4;
            }

            else if (v8 == 3 && !v9 && v10 == 128)
            {
              v11 = 5;
            }

            else if (v8 == 4 && !v9 && v10 == 128)
            {
              v11 = 6;
            }

            else if (v8 == 5 && !v9 && v10 == 128)
            {
              v11 = 7;
            }

            else
            {
              v11 = 8;
            }
          }

          else
          {
            v11 = 0;
          }

          result = MEMORY[0x1DA6FC0B0](v11);
          goto LABEL_5;
        }

        MEMORY[0x1DA6FC0B0](2);
        switch(v9)
        {
          case 0uLL:
            MEMORY[0x1DA6FC0B0](0);
            v6 = v8;
            v7 = 0;
            break;
          case 1uLL:
            MEMORY[0x1DA6FC0B0](1);
            v6 = v8;
            v7 = 1;
            break;
          case 2uLL:
            MEMORY[0x1DA6FC0B0](2);
            v6 = v8;
            v7 = 2;
            break;
          case 3uLL:
            MEMORY[0x1DA6FC0B0](3);
            v6 = v8;
            v7 = 3;
            break;
          case 4uLL:
            MEMORY[0x1DA6FC0B0](4);
            v6 = v8;
            v7 = 4;
            break;
          case 5uLL:
            MEMORY[0x1DA6FC0B0](5);
            v6 = v8;
            v7 = 5;
            break;
          case 6uLL:
            MEMORY[0x1DA6FC0B0](6);
            v6 = v8;
            v7 = 6;
            break;
          case 7uLL:
            MEMORY[0x1DA6FC0B0](7);
            v6 = v8;
            v7 = 7;
            break;
          case 8uLL:
            MEMORY[0x1DA6FC0B0](8);
            v6 = v8;
            v7 = 8;
            break;
          case 9uLL:
            MEMORY[0x1DA6FC0B0](9);
            v6 = v8;
            v7 = 9;
            break;
          case 0xAuLL:
            MEMORY[0x1DA6FC0B0](10);
            v6 = v8;
            v7 = 10;
            break;
          case 0xBuLL:
            MEMORY[0x1DA6FC0B0](11);
            v6 = v8;
            v7 = 11;
            break;
          case 0xCuLL:
            MEMORY[0x1DA6FC0B0](12);
            v6 = v8;
            v7 = 12;
            break;
          case 0xDuLL:
            MEMORY[0x1DA6FC0B0](13);
            v6 = v8;
            v7 = 13;
            break;
          case 0xEuLL:
            MEMORY[0x1DA6FC0B0](14);
            v6 = v8;
            v7 = 14;
            break;
          case 0xFuLL:
            MEMORY[0x1DA6FC0B0](15);
            v6 = v8;
            v7 = 15;
            break;
          default:
            MEMORY[0x1DA6FC0B0](16);
            sub_1D5CBA110(v8, v9);
            sub_1D72621EC();
            goto LABEL_11;
        }
      }

      else
      {
        MEMORY[0x1DA6FC0B0](1);

        sub_1D72621EC();
        sub_1D7264A2C();
LABEL_11:
        v6 = v8;
        v7 = v9;
      }

      result = sub_1D6007850(v6, v7, v10);
LABEL_5:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D6907C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6FC0B0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_1D72621EC();

      --v3;
    }

    while (v3);
  }

  return result;
}

BOOL _s8NewsFeed16PuzzleMenuConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v211 = *(a1 + 16);
  v219 = *(a1 + 24);
  v206 = *(a1 + 32);
  v212 = *(a1 + 40);
  v4 = *(a1 + 64);
  v208 = *(a1 + 56);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 105);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  v15 = *(a1 + 137);
  v16 = *(a1 + 144);
  v17 = *(a1 + 152);
  v18 = *(a2 + 8);
  v210 = *(a2 + 16);
  v216 = *(a2 + 24);
  v209 = *(a2 + 32);
  v214 = *(a2 + 40);
  v205 = *(a2 + 48);
  v207 = *(a2 + 56);
  v202 = *(a2 + 64);
  v19 = *(a2 + 144);
  v20 = *(a2 + 80);
  v204 = *(a2 + 72);
  v22 = *(a2 + 88);
  v21 = *(a2 + 96);
  v23 = *(a2 + 104);
  v24 = *(a2 + 105);
  v26 = *(a2 + 112);
  v25 = *(a2 + 120);
  v27 = *(a2 + 128);
  v28 = *(a2 + 136);
  v29 = *(a2 + 137);
  v30 = *(a2 + 152);
  if (v3)
  {
    if (!v18)
    {
      return 0;
    }

    v203 = *(a1 + 48);
    if (*a1 != *a2 || v3 != v18)
    {
      v152 = *(a2 + 137);
      v159 = *(a2 + 104);
      v180 = *(a2 + 112);
      v187 = *(a2 + 128);
      v195 = *(a2 + 136);
      v127 = *(a1 + 120);
      v128 = *(a1 + 128);
      v168 = *(a2 + 152);
      v174 = *(a1 + 136);
      v165 = *(a1 + 96);
      v147 = *(a1 + 137);
      v31 = *(a1 + 152);
      v32 = *(a1 + 112);
      v33 = *(a2 + 120);
      v135 = *(a1 + 72);
      v139 = *(a1 + 64);
      v34 = *(a1 + 105);
      v35 = *(a2 + 105);
      v36 = *(a1 + 104);
      v37 = *(a1 + 80);
      v38 = *(a1 + 88);
      v39 = *(a2 + 96);
      v40 = sub_1D72646CC();
      v21 = v39;
      v7 = v38;
      v5 = v37;
      v29 = v152;
      v23 = v159;
      v9 = v36;
      v24 = v35;
      v4 = v139;
      v10 = v34;
      v13 = v128;
      v6 = v135;
      v25 = v33;
      v11 = v32;
      v17 = v31;
      v30 = v168;
      v14 = v174;
      v15 = v147;
      v8 = v165;
      v26 = v180;
      v27 = v187;
      v12 = v127;
      v28 = v195;
      if ((v40 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v203 = *(a1 + 48);
    if (v18)
    {
      return 0;
    }
  }

  if (v219)
  {
    if (!v216)
    {
      return 0;
    }

    if (v211 != v210 || v219 != v216)
    {
      v160 = v23;
      v220 = v17;
      v140 = v4;
      v143 = v20;
      v41 = v11;
      v181 = v26;
      v188 = v27;
      v169 = v30;
      v175 = v14;
      v148 = v15;
      v153 = v29;
      v42 = v25;
      v43 = v12;
      v44 = v13;
      v45 = v10;
      v46 = v24;
      v166 = v8;
      v217 = v9;
      v136 = v6;
      v47 = v5;
      v48 = v7;
      v49 = v21;
      v50 = sub_1D72646CC();
      v21 = v49;
      v7 = v48;
      v5 = v47;
      v9 = v217;
      v8 = v166;
      v24 = v46;
      v10 = v45;
      v13 = v44;
      v6 = v136;
      v4 = v140;
      v12 = v43;
      v29 = v153;
      v23 = v160;
      v25 = v42;
      v15 = v148;
      v30 = v169;
      v14 = v175;
      v26 = v181;
      v27 = v188;
      v11 = v41;
      v20 = v143;
      v17 = v220;
      if ((v50 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v216)
  {
    return 0;
  }

  if (v212)
  {
    v51 = v203;
    result = v214;
    if (!v214)
    {
      return result;
    }

    if (v206 != v209 || v212 != v214)
    {
      v154 = v29;
      v161 = v23;
      v196 = v28;
      v129 = v13;
      v176 = v14;
      v221 = v17;
      v141 = v4;
      v144 = v20;
      v53 = v11;
      v182 = v26;
      v189 = v27;
      v170 = v30;
      v149 = v15;
      v54 = v25;
      v137 = v6;
      v55 = v12;
      v56 = v10;
      v57 = v24;
      v58 = v9;
      v59 = v5;
      v60 = v7;
      v61 = v21;
      v62 = sub_1D72646CC();
      v51 = v203;
      v21 = v61;
      v7 = v60;
      v5 = v59;
      v29 = v154;
      v23 = v161;
      v9 = v58;
      v24 = v57;
      v10 = v56;
      v12 = v55;
      v6 = v137;
      v4 = v141;
      v25 = v54;
      v15 = v149;
      v30 = v170;
      v14 = v176;
      v26 = v182;
      v27 = v189;
      v11 = v53;
      v20 = v144;
      v17 = v221;
      v13 = v129;
      v28 = v196;
      if ((v62 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v51 = v203;
    if (v214)
    {
      return 0;
    }
  }

  if (v208)
  {
    if (!v207)
    {
      return 0;
    }

    if (v51 != v205 || v208 != v207)
    {
      v155 = v29;
      v162 = v23;
      v197 = v28;
      v130 = v13;
      v177 = v14;
      v222 = v17;
      v142 = v4;
      v145 = v20;
      v63 = v11;
      v183 = v26;
      v190 = v27;
      v171 = v30;
      v150 = v15;
      v64 = v25;
      v138 = v6;
      v65 = v12;
      v66 = v10;
      v67 = v24;
      v68 = v9;
      v69 = v5;
      v70 = v7;
      v71 = v21;
      v72 = sub_1D72646CC();
      v21 = v71;
      v7 = v70;
      v5 = v69;
      v29 = v155;
      v23 = v162;
      v9 = v68;
      v24 = v67;
      v10 = v66;
      v12 = v65;
      v6 = v138;
      v4 = v142;
      v25 = v64;
      v15 = v150;
      v30 = v171;
      v14 = v177;
      v26 = v183;
      v27 = v190;
      v11 = v63;
      v20 = v145;
      v17 = v222;
      v13 = v130;
      v28 = v197;
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v207)
  {
    return 0;
  }

  if (v6)
  {
    if (!v204)
    {
      return 0;
    }

    if (v4 != v202 || v6 != v204)
    {
      v156 = v29;
      v163 = v23;
      v198 = v28;
      v131 = v13;
      v178 = v14;
      v223 = v17;
      v146 = v20;
      v73 = v11;
      v184 = v26;
      v191 = v27;
      v172 = v30;
      v151 = v15;
      v74 = v25;
      v75 = v12;
      v76 = v10;
      v77 = v24;
      v78 = v9;
      v79 = v5;
      v80 = v7;
      v81 = v21;
      v82 = sub_1D72646CC();
      v21 = v81;
      v7 = v80;
      v5 = v79;
      v29 = v156;
      v23 = v163;
      v9 = v78;
      v24 = v77;
      v10 = v76;
      v12 = v75;
      v25 = v74;
      v15 = v151;
      v30 = v172;
      v14 = v178;
      v26 = v184;
      v27 = v191;
      v11 = v73;
      v20 = v146;
      v17 = v223;
      v13 = v131;
      v28 = v198;
      if ((v82 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v204)
  {
    return 0;
  }

  if (v7)
  {
    if (!v22)
    {
      return 0;
    }

    if (v5 != v20 || v7 != v22)
    {
      v164 = v23;
      v199 = v28;
      v132 = v13;
      v173 = v30;
      v179 = v14;
      v167 = v8;
      v83 = v17;
      v84 = v11;
      v185 = v26;
      v192 = v27;
      v85 = v15;
      v86 = v25;
      v87 = v12;
      v88 = v10;
      v89 = v24;
      v90 = v9;
      v91 = v21;
      v92 = sub_1D72646CC();
      v21 = v91;
      v23 = v164;
      v9 = v90;
      v24 = v89;
      v10 = v88;
      v12 = v87;
      v25 = v86;
      v15 = v85;
      v30 = v173;
      v14 = v179;
      v26 = v185;
      v27 = v192;
      v11 = v84;
      v17 = v83;
      v8 = v167;
      v13 = v132;
      v28 = v199;
      if ((v92 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    v93 = v23;
    v94 = v9;
    v213 = v24;
    v215 = v10;
    v186 = v26;
    v218 = v11;
    v224 = v25;
    v193 = v27;
    v200 = v28;
    v133 = v13;
    v95 = v12;
    v96 = v29;
    v97 = v17;
    v98 = v21;

    v99 = sub_1D633D968(v8, v98);

    result = 0;
    if ((v99 & 1) == 0)
    {
      return result;
    }

    v17 = v97;
    v29 = v96;
    v12 = v95;
    v13 = v133;
    v28 = v200;
    v26 = v186;
    v27 = v193;
    v11 = v218;
    v25 = v224;
    v10 = v215;
    v24 = v213;
    if ((v94 ^ v93))
    {
      return result;
    }

LABEL_50:
    if (v10 == 3)
    {
      v134 = v13;
      if (v24 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v24 == 3)
      {
        return 0;
      }

      v201 = v28;
      v100 = 6710895;
      v157 = v29;
      if (v10)
      {
        if (v10 == 1)
        {
          v101 = 0xE200000000000000;
          v102 = 28271;
        }

        else
        {
          v101 = 0xE500000000000000;
          v102 = 0x646578696DLL;
        }
      }

      else
      {
        v101 = 0xE300000000000000;
        v102 = 6710895;
      }

      v194 = v27;
      if (v24)
      {
        v103 = v14;
        v104 = v26;
        v105 = v12;
        if (v24 == 1)
        {
          v106 = 0xE200000000000000;
          v100 = 28271;
        }

        else
        {
          v106 = 0xE500000000000000;
          v100 = 0x646578696DLL;
        }
      }

      else
      {
        v104 = v26;
        v105 = v12;
        v103 = v14;
        v106 = 0xE300000000000000;
      }

      v225 = v25;
      v107 = v11;
      v134 = v13;
      v108 = v17;
      if (v102 == v100 && v101 == v106)
      {

        v17 = v108;
        v29 = v157;
        v14 = v103;
        v12 = v105;
        v28 = v201;
        v27 = v194;
        v11 = v107;
        v25 = v225;
        v26 = v104;
      }

      else
      {
        v109 = sub_1D72646CC();

        v17 = v108;
        v29 = v157;
        v14 = v103;
        v12 = v105;
        v28 = v201;
        v27 = v194;
        v11 = v107;
        v25 = v225;
        v26 = v104;
        if ((v109 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v11)
    {
      if (!v26)
      {
        return 0;
      }

      v158 = v29;
      v110 = v28;
      v111 = v12;
      v112 = v26;
      v113 = v17;
      v114 = v11;
      v115 = v25;

      LOBYTE(v114) = sub_1D634E470(v114, v112);

      v25 = v115;
      v17 = v113;
      v12 = v111;
      v28 = v110;
      if ((v114 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v158 = v29;
      if (v26)
      {
        return 0;
      }
    }

    if (v134)
    {
      if (!v27)
      {
        return 0;
      }

      if (v12 == v25 && v134 == v27)
      {
        v116 = v158;
        if (v14 != v28)
        {
          return 0;
        }

        goto LABEL_84;
      }

      v118 = v17;
      v119 = sub_1D72646CC();
      result = 0;
      if ((v119 & 1) == 0)
      {
        return result;
      }

      v117 = v14 ^ v28;
      v17 = v118;
    }

    else
    {
      result = 0;
      if (v27)
      {
        return result;
      }

      v117 = v14 ^ v28;
    }

    v116 = v158;
    if (v117)
    {
      return result;
    }

LABEL_84:
    if (v15 == 3)
    {
      v120 = v17;
      if (v116 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v116 == 3)
      {
        return 0;
      }

      v120 = v17;
      v121 = 0xE900000000000064;
      v122 = 0x656E696665646E75;
      if (v15)
      {
        if (v15 == 1)
        {
          v123 = 0xE400000000000000;
          v124 = 1952867692;
        }

        else
        {
          v123 = 0xE500000000000000;
          v124 = 0x7468676972;
        }
      }

      else
      {
        v124 = 0x656E696665646E75;
        v123 = 0xE900000000000064;
      }

      if (v116)
      {
        if (v116 == 1)
        {
          v121 = 0xE400000000000000;
          v122 = 1952867692;
        }

        else
        {
          v121 = 0xE500000000000000;
          v122 = 0x7468676972;
        }
      }

      if (v124 == v122 && v123 == v121)
      {
      }

      else
      {
        v125 = sub_1D72646CC();

        if ((v125 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if ((v120 & 1) == 0)
    {
      if (v16 == v19)
      {
        v126 = v30;
      }

      else
      {
        v126 = 1;
      }

      return (v126 & 1) == 0;
    }

    return (v30 & 1) != 0;
  }

  result = 0;
  if (!v21 && ((v9 ^ v23) & 1) == 0)
  {
    goto LABEL_50;
  }

  return result;
}

unint64_t sub_1D6908704()
{
  result = qword_1EC88E018;
  if (!qword_1EC88E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E018);
  }

  return result;
}

unint64_t sub_1D6908758()
{
  result = qword_1EC88E020;
  if (!qword_1EC88E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E020);
  }

  return result;
}

unint64_t sub_1D69087AC()
{
  result = qword_1EC88E038;
  if (!qword_1EC88E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E038);
  }

  return result;
}

unint64_t sub_1D6908800()
{
  result = qword_1EC88E040;
  if (!qword_1EC88E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E040);
  }

  return result;
}

void sub_1D6908854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D69088BC()
{
  result = qword_1EC88E050;
  if (!qword_1EC88E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E050);
  }

  return result;
}

uint64_t sub_1D6908910(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5C82A44(255, &qword_1EC88E028, &type metadata for PuzzleMenuConfig.Attribute, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D69089A0()
{
  result = qword_1EC88E060;
  if (!qword_1EC88E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E060);
  }

  return result;
}

unint64_t sub_1D69089F4()
{
  result = qword_1EC88E068;
  if (!qword_1EC88E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E068);
  }

  return result;
}

uint64_t sub_1D6908A48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 10)
    {
      v10 = i[7];
      v11 = i[5];
      v41 = i[6];
      v42 = v10;
      v12 = i[7];
      v43[0] = i[8];
      *(v43 + 9) = *(i + 137);
      v13 = i[3];
      v14 = i[1];
      v37 = i[2];
      v38 = v13;
      v15 = i[3];
      v16 = i[5];
      v39 = i[4];
      v40 = v16;
      v17 = i[1];
      v36[0] = *i;
      v36[1] = v17;
      v33 = v41;
      v34 = v12;
      v35[0] = i[8];
      *(v35 + 9) = *(i + 137);
      v29 = v37;
      v30 = v15;
      v31 = v39;
      v32 = v11;
      v27 = v36[0];
      v28 = v14;
      sub_1D5E42C00(v36, &v18);
      sub_1D69071FC(&v27, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v24 = v33;
      v25 = v34;
      v26[0] = v35[0];
      *(v26 + 9) = *(v35 + 9);
      v20 = v29;
      v21 = v30;
      v22 = v31;
      v23 = v32;
      v18 = v27;
      v19 = v28;
      result = sub_1D5E42C5C(&v18);
      if (!--v5)
      {
        return result;
      }
    }

    v24 = v33;
    v25 = v34;
    v26[0] = v35[0];
    *(v26 + 9) = *(v35 + 9);
    v20 = v29;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v18 = v27;
    v19 = v28;
    return sub_1D5E42C5C(&v18);
  }

  return result;
}

double sub_1D6908BC0(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_1D7279980;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  *(a1 + 137) = 0u;
  return result;
}

unint64_t sub_1D6908BEC()
{
  result = qword_1EC88E070;
  if (!qword_1EC88E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E070);
  }

  return result;
}

unint64_t sub_1D6908C44()
{
  result = qword_1EC88E078;
  if (!qword_1EC88E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E078);
  }

  return result;
}

unint64_t sub_1D6908C9C()
{
  result = qword_1EC88E080;
  if (!qword_1EC88E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E080);
  }

  return result;
}

uint64_t sub_1D6908D00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 153))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D6908D5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1D6908E2C()
{
  result = qword_1EC88E088;
  if (!qword_1EC88E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E088);
  }

  return result;
}

unint64_t sub_1D6908E84()
{
  result = qword_1EC88E090;
  if (!qword_1EC88E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E090);
  }

  return result;
}

unint64_t sub_1D6908EDC()
{
  result = qword_1EC88E098;
  if (!qword_1EC88E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E098);
  }

  return result;
}

unint64_t sub_1D6908F34()
{
  result = qword_1EC88E0A0;
  if (!qword_1EC88E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0A0);
  }

  return result;
}

unint64_t sub_1D6908F8C()
{
  result = qword_1EC88E0A8;
  if (!qword_1EC88E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0A8);
  }

  return result;
}

unint64_t sub_1D6908FE4()
{
  result = qword_1EC88E0B0;
  if (!qword_1EC88E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0B0);
  }

  return result;
}

uint64_t sub_1D6909038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73DBB90 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73DBBB0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656E696C6E69 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7069746C6F6F74 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73DBBD0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

unint64_t sub_1D6909490()
{
  result = qword_1EC88E0B8;
  if (!qword_1EC88E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0B8);
  }

  return result;
}

unint64_t sub_1D69094E4()
{
  result = qword_1EC88E0C0;
  if (!qword_1EC88E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0C0);
  }

  return result;
}

uint64_t sub_1D6909538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleLeaderboardEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D690959C()
{
  result = qword_1EC89A880;
  if (!qword_1EC89A880)
  {
    sub_1D725891C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC89A880);
  }

  return result;
}

uint64_t sub_1D69095F4(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleLeaderboardEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SportsEmbedConfigResourceRank.leagueType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsEmbedConfigResourceRank.statisticName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D69096B0()
{
  if (*v0)
  {
    return 0x6974736974617473;
  }

  else
  {
    return 0x795465756761656CLL;
  }
}

uint64_t sub_1D69096FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x795465756761656CLL && a2 == 0xEA00000000006570;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xED0000656D614E63)
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

uint64_t sub_1D69097E8(uint64_t a1)
{
  v2 = sub_1D69099E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6909824(uint64_t a1)
{
  v2 = sub_1D69099E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResourceRank.encode(to:)(void *a1)
{
  sub_1D6909C44(0, &qword_1EC88E0C8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69099E0();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D72643FC();
  if (!v10)
  {
    v13 = 1;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D69099E0()
{
  result = qword_1EDF0A158;
  if (!qword_1EDF0A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A158);
  }

  return result;
}

uint64_t SportsEmbedConfigResourceRank.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6909C44(0, &qword_1EDF03960, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D69099E0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v11 = sub_1D72642BC();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1D726422C();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6909C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D69099E0();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResourceRank.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6909CFC()
{
  result = qword_1EC88E0D0;
  if (!qword_1EC88E0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0D0);
  }

  return result;
}

unint64_t sub_1D6909D54()
{
  result = qword_1EDF0A148;
  if (!qword_1EDF0A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A148);
  }

  return result;
}

unint64_t sub_1D6909DAC()
{
  result = qword_1EDF0A150;
  if (!qword_1EDF0A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A150);
  }

  return result;
}

uint64_t FeedLayoutContext.__allocating_init(stylerFactory:layoutAttributesFactoryProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t FeedLayoutContext.init(stylerFactory:layoutAttributesFactoryProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t FeedLayoutContext.deinit()
{

  return v0;
}

uint64_t FeedLayoutContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void FormatString.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = *(v2 + 48);
  if (v17 >> 14)
  {
    v18 = a1;
    v47 = v5;
    v48 = a2;
    v45 = v9;
    v46 = v6;
    v19 = *v2;
    v20 = *(v2 + 8);
    v21 = *(v2 + 16);
    v22 = *(v2 + 24);
    v24 = *(v2 + 32);
    v23 = *(v2 + 40);
    if (v17 >> 14 == 1)
    {
      v44 = &v43 - v16;
      v51 = v19;
      v52 = v20;
      v53 = v21;
      LOBYTE(v49[0]) = 5;
      sub_1D5E1DA6C(v19, v20, v21, v22, v24, v23, v17);
      v25 = v58;
      v26 = sub_1D703E0C8(&v51, v49);
      if (!v25)
      {
        v27 = v26;
        v58 = 0;
        v28 = v48;
        FormatOptionCollection.subscript.getter(v19, v20, v13);
        v30 = v46;
        v29 = v47;
        if ((*(v46 + 48))(v13, 1, v47) == 1)
        {

          sub_1D5D280B8(v13, sub_1D5E04C00);
          if ((*(v28 + 48) & 1) == 0)
          {
            type metadata accessor for FormatLayoutError();
            sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
            swift_allocError();
            *v37 = v19;
            v37[1] = v20;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            return;
          }

          v31 = 1;
          v32 = v44;
        }

        else
        {
          v36 = v45;
          sub_1D5D247E0(v13, v45);
          v51 = v36[2];

          FormatOptionValue.type.getter(v49);
          if ((sub_1D6183C84(v49[0], v27) & 1) == 0)
          {
            type metadata accessor for FormatDerivedDataError();
            sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
            swift_allocError();
            v39 = v38;
            v41 = *v36;
            v40 = v36[1];
            v51 = v36[2];

            FormatOptionValue.type.getter(v49);
            v42 = v49[0];
            *v39 = v41;
            *(v39 + 8) = v40;
            *(v39 + 16) = v42;
            *(v39 + 24) = v27;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            sub_1D5D280B8(v36, type metadata accessor for FormatOption);
            return;
          }

          swift_bridgeObjectRelease_n();
          v32 = v44;
          sub_1D5D247E0(v36, v44);
          v31 = 0;
        }

        (*(v30 + 56))(v32, v31, 1, v29);
        sub_1D5D280B8(v32, sub_1D5E04C00);
      }
    }

    else
    {
      v51 = *v2;
      v52 = v20;
      v53 = v21;
      v54 = v22;
      v55 = v24;
      v56 = v23;
      v57 = v17 & 0x3FFF;
      v47 = v19;
      v33 = v18;
      v34 = v48;
      v35 = v58;
      FormatTextNodeBinding.bind(binder:context:)(v18, v48);
      if (!v35)
      {
        v49[0] = v47;
        v49[1] = v20;
        v49[2] = v21;
        v49[3] = v22;
        v49[4] = v24;
        v49[5] = v23;
        v50 = v17 & 0x3FFF;
        FormatTextNodeBinding.bind(binder:context:)(v33, v34);
      }
    }
  }
}

uint64_t sub_1D690A374(uint64_t result)
{
  v3 = *(v1 + 48);
  if (!(v3 >> 14))
  {
    return result;
  }

  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  if (v3 >> 14 == 1)
  {
    v29 = *v1;
    v30 = v4;
    v31 = v6;
    v32 = 5;
    sub_1D5E1DA6C(v5, v4, v6, v7, v8, v9, v3);
    result = sub_1D703E0C8(&v29, &v32);
    if (!v2)
    {
      v10 = result;
      v11 = swift_allocObject();
      *(v11 + 16) = v5;
      *(v11 + 24) = v4;
      *(v11 + 32) = v10;
      *(v11 + 40) = 0;

      sub_1D6C4D24C(v11 | 0x3000000000000000);
    }

    return result;
  }

  v12 = (v3 >> 7) & 0x7E | (v3 >> 3) & 1;
  if (v12 - 5 >= 0xA && v12 >= 2)
  {
    if (v12 - 3 < 2)
    {
      v29 = *v1;
      v30 = v4;
      v31 = v6;
      v32 = 5;
      v15 = v6;
      v27 = v8;
      v28 = v7;
      v16 = v9;
      v17 = v3;
      sub_1D5E1DA6C(v5, v4, v6, v7, v8, v9, v3);

      v18 = sub_1D703E0C8(&v29, &v32);
      v19 = v15;

      v20 = v2;
      if (v2)
      {
      }

      v23 = swift_allocObject();
      *(v23 + 16) = v5;
      *(v23 + 24) = v4;
      *(v23 + 32) = v18;
      *(v23 + 40) = 0;
      sub_1D6C4D24C(v23 | 0x3000000000000000);

      v6 = v19;
      LOWORD(v3) = v17;
      v8 = v27;
      v7 = v28;
      v9 = v16;
LABEL_25:
      v29 = v5;
      v30 = v4;
      v31 = v6;
      v32 = 5;
      sub_1D5E1DA6C(v5, v4, v6, v7, v8, v9, v3);

      v24 = v20;
      v25 = sub_1D703E0C8(&v29, &v32);

      if (!v24)
      {
        v26 = swift_allocObject();
        *(v26 + 16) = v5;
        *(v26 + 24) = v4;
        *(v26 + 32) = v25;
        *(v26 + 40) = 0;
        sub_1D6C4D24C(v26 | 0x3000000000000000);
      }
    }

    if ((v3 & 0xF0) != 0x30)
    {
      return result;
    }

    v29 = *v1;
    v30 = v4;
    v21 = v6;
    LOWORD(v31) = v6;
    v22 = result;
    result = sub_1D62921EC(result);
    if (v2)
    {
      return result;
    }

    result = v22;
    LOWORD(v6) = v21;
LABEL_23:
    v29 = v5;
    v30 = v4;
    LOWORD(v31) = v6;
    return sub_1D62921EC(result);
  }

  if (v12 - 5 >= 0xA && v12 >= 2)
  {
    if (v12 - 3 < 2)
    {
      v20 = v2;
      goto LABEL_25;
    }

    if ((v3 & 0xF0) != 0x30)
    {
      return result;
    }

    goto LABEL_23;
  }

  return result;
}

void *sub_1D690A6D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 48);
  if (v7 >> 14)
  {
    if (v7 >> 14 == 1)
    {
      result = sub_1D6F71E48(a1, *v2, *(v2 + 8), *(v2 + 16));
      if (v3)
      {
        return result;
      }

      v10 = result;
      v11 = v9;
      v12 = type metadata accessor for FormatOptionsNodeStatementResult();
      v13 = *(v12 + 24);
      v14 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
      v15 = swift_allocObject();
      *(v15 + 16) = v10;
      *(v15 + 24) = v11;
      *(v15 + 32) = MEMORY[0x1E69E7CC0];
      v16 = v15 | 0x5000000000000000;
      sub_1D5C3C480();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      *(inited + 32) = v6;
      *(inited + 40) = v5;

      v18 = sub_1D5BFAC38(inited);
      swift_setDeallocating();
      sub_1D5BFB68C(inited + 32);
      *a2 = v16;
      a2[1] = v18;
    }

    else
    {
      result = sub_1D68901F8(a1, 0);
      if (v3)
      {
        return result;
      }

      v24 = result;
      v25 = v23;
      v12 = type metadata accessor for FormatOptionsNodeStatementResult();
      v26 = *(v12 + 24);
      v27 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
      v28 = swift_allocObject();
      v29 = MEMORY[0x1E69E7CC0];
      *(v28 + 16) = v24;
      *(v28 + 24) = v25;
      *(v28 + 32) = v29;
      *a2 = v28 | 0x5000000000000000;
      a2[1] = 0;
    }
  }

  else
  {
    v12 = type metadata accessor for FormatOptionsNodeStatementResult();
    v19 = *(v12 + 24);
    v20 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E7CC0];
    *(v21 + 16) = v6;
    *(v21 + 24) = v5;
    *(v21 + 32) = v22;
    *a2 = v21 | 0x5000000000000000;
    a2[1] = 1;
  }

  type metadata accessor for FormatOptionsNodeStatementResult();
  return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
}

uint64_t _s8NewsFeed12FormatStringO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v50 = *(a1 + 48);
  v14 = *(a2 + 48);
  v49 = *a2;
  if (v50 >> 14)
  {
    if (v50 >> 14 == 1)
    {
      if ((v14 & 0xC000) == 0x4000)
      {
        v37 = *(a1 + 16);
        v39 = *(a1 + 32);
        v42 = *(a1 + 40);
        v44 = *(a2 + 8);
        if (v3 == v9 && v2 == v8 || (v15 = *a2, v16 = *(a2 + 8), v17 = sub_1D72646CC(), v9 = v15, v8 = v16, (v17 & 1) != 0))
        {
          v18 = v8;
          sub_1D5E1DA6C(v9, v8, v11, v10, v13, v12, v14);
          sub_1D5E1DA6C(v3, v2, v37, v5, v39, v42, v50);
          sub_1D5E1DA6C(v49, v18, v11, v10, v13, v12, v14);
          sub_1D5E1DA6C(v3, v2, v37, v5, v39, v42, v50);
          v34 = sub_1D6341C50(v37, v11);
          sub_1D5E1DE98(v3, v2, v37, v5, v39, v42, v50);
          sub_1D5E1DE98(v49, v44, v11, v10, v13, v12, v14);
          sub_1D5E1DE98(v49, v44, v11, v10, v13, v12, v14);
          sub_1D5E1DE98(v3, v2, v37, v5, v39, v42, v50);
          if (v34)
          {
            v19 = 1;
            return v19 & 1;
          }

LABEL_17:
          v19 = 0;
          return v19 & 1;
        }

        sub_1D5E1DA6C(v15, v16, v11, v10, v13, v12, v14);
        sub_1D5E1DA6C(v3, v2, v37, v5, v39, v42, v50);
        sub_1D5E1DE98(v3, v2, v37, v5, v39, v42, v50);
        v25 = v11;
        v24 = v49;
        v26 = v44;
        v27 = v10;
        v28 = v13;
        v29 = v12;
        v30 = v14;
LABEL_16:
        sub_1D5E1DE98(v24, v26, v25, v27, v28, v29, v30);
        goto LABEL_17;
      }
    }

    else if ((v14 & 0xC000) == 0x8000)
    {
      v57[0] = *a1;
      v41 = v57[0];
      v57[1] = v2;
      v57[2] = v4;
      v57[3] = v5;
      v57[4] = v6;
      v57[5] = v7;
      v58 = v50 & 0x3FFF;
      *&v51 = v9;
      *(&v51 + 1) = v8;
      v52 = v11;
      v53 = v10;
      v54 = v13;
      v55 = v12;
      v45 = v8;
      v47 = v11;
      v56 = v14 & 0x3FFF;
      v36 = v10;
      v20 = v8;
      v21 = v10;
      v22 = v6;
      sub_1D5E1DA6C(v9, v8, v11, v21, v13, v12, v14);
      sub_1D5E1DA6C(v57[0], v2, v4, v5, v22, v7, v50);
      sub_1D5E1DA6C(v49, v20, v11, v36, v13, v12, v14);
      sub_1D5E1DA6C(v57[0], v2, v4, v5, v22, v7, v50);
      v19 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(v57, &v51);
      sub_1D5E1DE98(v41, v2, v4, v5, v22, v7, v50);
      sub_1D5E1DE98(v49, v45, v47, v36, v13, v12, v14);
      sub_1D5E1DE98(v49, v45, v47, v36, v13, v12, v14);
      sub_1D5E1DE98(v41, v2, v4, v5, v22, v7, v50);
      return v19 & 1;
    }

LABEL_15:
    v46 = *(a2 + 8);
    v48 = *(a2 + 16);
    v23 = *(a1 + 32);
    sub_1D5E1DA6C(v9, v8, v48, v10, v13, v12, v14);
    sub_1D5E1DA6C(v3, v2, v4, v5, v23, v7, v50);
    sub_1D5E1DE98(v3, v2, v4, v5, v23, v7, v50);
    v25 = v48;
    v24 = v49;
    v26 = v46;
    v27 = v10;
    v28 = v13;
    v29 = v12;
    v30 = v14;
    goto LABEL_16;
  }

  if (v14 >= 0x4000)
  {
    goto LABEL_15;
  }

  v38 = *(a1 + 16);
  v40 = *(a1 + 32);
  v43 = *(a1 + 40);
  if (v3 != v9 || v2 != v8)
  {
    v32 = *a2;
    v33 = *(a2 + 8);
    v35 = sub_1D72646CC();
    sub_1D5E1DA6C(v32, v33, v11, v10, v13, v12, v14);
    sub_1D5E1DA6C(v3, v2, v38, v5, v40, v43, v50);
    sub_1D5E1DE98(v3, v2, v38, v5, v40, v43, v50);
    sub_1D5E1DE98(v49, v33, v11, v10, v13, v12, v14);
    return v35 & 1;
  }

  sub_1D5E1DA6C(v3, v2, v11, v10, v13, v12, v14);
  sub_1D5E1DA6C(v3, v2, v4, v5, v40, v7, v50);
  sub_1D5E1DE98(v3, v2, v4, v5, v40, v7, v50);
  sub_1D5E1DE98(v3, v2, v11, v10, v13, v12, v14);
  v19 = 1;
  return v19 & 1;
}

unint64_t sub_1D690B038(uint64_t a1)
{
  result = sub_1D690B060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D690B060()
{
  result = qword_1EC88E0D8;
  if (!qword_1EC88E0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88E0D8);
  }

  return result;
}
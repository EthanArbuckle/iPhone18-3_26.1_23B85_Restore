uint64_t KTSDataRepresentation.__allocating_init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1ABAA0CE8();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  sub_1ABA8EF78();
  sub_1ABA8CEDC();
  KTSDataRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(v34, v35, v36, v37, v38, v39, v40, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a27, a28, a25, a26, a23, a24, a21, a22, a19, a20, a17, a18, a15, a16, a13, a14, a11, a12, a9, a10);
  return v33;
}

void KTSDataRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:route:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  sub_1ABA9F710();
  a27 = v51;
  a28 = v52;
  v162 = v53;
  v161 = v54;
  v160 = v55;
  v57 = v56;
  v59 = v58;
  v156 = v60;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v182 = a40;
  v181 = a39;
  v170 = a50;
  v180 = a49;
  v183 = a38;
  v178 = a37;
  v177 = a35;
  v175 = a36;
  v176 = a33;
  v174 = a34;
  v179 = a48;
  v173 = a47;
  v171 = a46;
  v169 = a45;
  v168 = a44;
  v166 = a43;
  v164 = a42;
  v163 = a41;
  v172 = a32;
  v159 = a31;
  v158 = a30;
  v157 = a29;
  v71 = type metadata accessor for CodableLocation();
  v72 = sub_1ABA7BB64(v71);
  v184 = v73;
  v185 = v72;
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v77 = (&v150 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route) = 0;
  v165 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds) = 0;
  v167 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds) = 0;
  *(v50 + 16) = v70;
  *(v50 + 24) = v68;
  v78 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA826B4(v78);
  v152 = v79;
  v80 = *(v79 + 16);
  v187 = v66;
  sub_1ABDBF9A8();
  v80();
  v186 = v64;
  v153 = v78;
  (v80)(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters, v64, v78);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets);
  v81 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA826B4(v81);
  v151 = v82;
  v83 = *(v82 + 16);
  v156 = v59;
  sub_1ABAB0FB8();
  v83();
  v154 = v57;
  (v83)(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic, v57, v81);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets);
  v84 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  v85 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA826B4(v85);
  v161 = v86;
  (*(v86 + 16))(v50 + v84, v183, v85);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds);
  *(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score) = v62;
  v87 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  v88 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA826B4(v88);
  v90 = v89;
  v91 = *(v89 + 16);
  v92 = v50 + v87;
  v93 = v181;
  v91(v92, v181, v88);
  v91(v50 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh, v182, v88);
  v94 = v170;
  v95 = v50;
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType);
  sub_1ABAB575C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType);
  v96 = v165;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v95 + v96) = v179;
  v97 = v167;
  sub_1ABAA0948();
  swift_beginAccess();
  *(v95 + v97) = v180;
  if (!v94)
  {
    v135 = *(v90 + 8);
    v136 = sub_1ABA9F1D4(&a25);
    v135(v136);
    (v135)(v93, v88);
    v137 = sub_1ABA8C7FC();
    v138(v137, v85);
    v139 = sub_1ABA8D2A8();
    (v135)(v139, v81);
    (v135)(v156, v81);
    v140 = sub_1ABA8A9C4();
    v135(v140);
    (v135)(v187, v93);
    v101 = 0;
LABEL_14:
    v148 = v155;
    sub_1ABAA0948();
    swift_beginAccess();
    v149 = *(v95 + v148);
    *(v95 + v148) = v101;

    sub_1ABA8A204();
    return;
  }

  v177 = v90;
  v178 = v88;
  v179 = v85;
  v180 = v81;
  v98 = sub_1ABAAB7C8(v94);
  if (!v98)
  {

    v141 = *(v177 + 8);
    v141(v182, v178);
    v142 = sub_1ABA7E79C();
    (v141)(v142);
    v143 = sub_1ABA8C7FC();
    v144(v143, v179);
    v145 = *(v151 + 8);
    v146 = v180;
    v145(v154, v180);
    v145(v156, v146);
    v147 = sub_1ABA8A9C4();
    (v145)(v147);
    v145(v187, v146);
    v101 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v99 = v98;
  v188 = MEMORY[0x1E69E7CC0];
  sub_1ABDBFBD8();
  sub_1ABADE33C();
  if ((v99 & 0x8000000000000000) == 0)
  {
    v176 = v95;
    v100 = 0;
    v101 = v188;
    v102 = v94;
    v103 = v94 & 0xC000000000000001;
    do
    {
      if (v103)
      {
        v104 = MEMORY[0x1AC5AA170](v100, v102);
      }

      else
      {
        v104 = *(v102 + 8 * v100 + 32);
      }

      v105 = v104;
      [v104 coordinate];
      v107 = v106;
      [v105 coordinate];
      v109 = v108;
      [v105 altitude];
      v111 = v110;
      [v105 horizontalAccuracy];
      v113 = v112;
      [v105 verticalAccuracy];
      v115 = v114;
      [v105 course];
      v117 = v116;
      [v105 speed];
      v119 = v118;
      v120 = [v105 timestamp];
      v121 = v77 + *(v185 + 44);
      sub_1ABF21E64();

      *v77 = v109;
      v77[1] = v107;
      v77[2] = v111;
      v77[3] = v113;
      v77[5] = v119;
      v77[6] = v117;
      v77[4] = v115;
      v188 = v101;
      v123 = *(v101 + 16);
      v122 = *(v101 + 24);
      if (v123 >= v122 >> 1)
      {
        sub_1ABA7BBEC(v122);
        sub_1ABADE33C();
        v101 = v188;
      }

      ++v100;
      *(v101 + 16) = v123 + 1;
      sub_1ABA7AD90();
      sub_1ABB5E1C0(v77, v101 + v124 + *(v125 + 72) * v123);
      v126 = v186;
    }

    while (v99 != v100);

    v127 = *(v177 + 8);
    v128 = v178;
    v127(v182, v178);
    v127(v181, v128);
    v129 = sub_1ABA8C7FC();
    v130(v129, v179);
    v131 = sub_1ABA8D2A8();
    v132 = v180;
    v127(v131, v180);
    v127(v156, v132);
    v133 = *(v152 + 8);
    v133(v126, v153);
    v134 = sub_1ABA7BE8C();
    (v133)(v134);
    v95 = v176;
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_1ABDA2AD0()
{
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v3 = sub_1ABA7BB64(v2);
  v121 = v4;
  v122 = v3;
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v120 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v10 = sub_1ABA7BB64(v9);
  v118 = v11;
  v119 = v10;
  v13 = *(v12 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v117 = v15;
  v123 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64(v123);
  v116 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v114 = v20;
  v21 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64(v21);
  v23 = v22;
  v25 = *(v24 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v114 - v27;
  v134 = 0;
  v135 = 0xE000000000000000;
  sub_1ABF24AB4();
  v136 = v134;
  v137 = v135;
  MEMORY[0x1AC5A9410](0xD000000000000022, 0x80000001ABF8F550);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v29 = *(v0 + 16);
  sub_1ABF24344();
  MEMORY[0x1AC5A9410](0x6D6954646E650A20, 0xEB00000000203A65);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v30 = *(v0 + 24);
  sub_1ABF24344();
  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8F580);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v31 = *(v23 + 16);
  v32 = sub_1ABDBFACC();
  v31(v32);
  sub_1ABAA01F4();
  v125 = v33;
  sub_1ABD1044C(v34);
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  v35 = *(v23 + 8);
  v35(v28, v21);
  sub_1ABA9FC74();
  MEMORY[0x1AC5A9410](v36 + 2, v37 | 0x8000000000000000);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v38 = sub_1ABDBFACC();
  v31(v38);
  v124 = v21;
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  v35(v28, v21);
  sub_1ABA890BC();
  v126 = v21 - 3;
  MEMORY[0x1AC5A9410]();
  v39 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v40 = *(v1 + v39);
  sub_1ABDB4878();

  sub_1ABF23984();
  sub_1ABA9F8B8();
  v41 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v41);

  v115 = v21 - 5;
  MEMORY[0x1AC5A9410]();
  v42 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v43 = v116;
  v44 = v116 + 16;
  v45 = *(v116 + 16);
  v45(v114, v1 + v42, v123);
  sub_1ABD1044C(&unk_1EB4D9630);
  sub_1ABAA3928();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  v46 = *(v43 + 8);
  v47 = sub_1ABA97F40();
  v46(v47);
  sub_1ABA9FC74();
  v116 = v48 - 2;
  MEMORY[0x1AC5A9410]();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v49 = sub_1ABDBFACC();
  (v45)(v49);
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  v50 = sub_1ABA97F40();
  v46(v50);
  sub_1ABA890BC();
  MEMORY[0x1AC5A9410](v44 + 6, v51 | 0x8000000000000000);
  v52 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v53 = *(v1 + v52);
  sub_1ABDB48CC();

  v54 = v124;
  v55 = sub_1ABF23984();
  v57 = v56;

  MEMORY[0x1AC5A9410](v55, v57);

  MEMORY[0x1AC5A9410](v44 + 4, 0x80000001ABF8F640);
  v58 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v59 = *(v1 + v58);
  sub_1ABDB4920();

  v60 = v54;
  v61 = sub_1ABF23984();
  v63 = v62;

  MEMORY[0x1AC5A9410](v61, v63);

  MEMORY[0x1AC5A9410](0xD00000000000001DLL, 0x80000001ABF8F660);
  v64 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v65 = *(v1 + v64);
  v114 = sub_1ABDB4974();

  sub_1ABF23984();
  sub_1ABDBF9FC();
  v66 = sub_1ABA8B114();
  MEMORY[0x1AC5A9410](v66);

  MEMORY[0x1AC5A9410](0xD000000000000019, 0x80000001ABF8F680);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABDBF9FC();
  v67 = sub_1ABA8B114();
  MEMORY[0x1AC5A9410](v67);

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v68 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v68);

  MEMORY[0x1AC5A9410](0xD000000000000018, 0x80000001ABF8F6C0);
  v69 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v70 = *(v1 + v69);
  sub_1ABDB49C8();

  sub_1ABF23984();
  sub_1ABA9F8B8();
  v71 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v71);

  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8F6E0);
  v72 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v73 = *(v1 + v72);
  sub_1ABDB4A1C();

  sub_1ABF23984();
  sub_1ABDBF9FC();
  v74 = sub_1ABA8B114();
  MEMORY[0x1AC5A9410](v74);

  MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF8F700);
  v75 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v76 = *(v1 + v75);
  sub_1ABDB4A70();

  sub_1ABDBFB44();
  sub_1ABF23984();

  v77 = sub_1ABA8EF78();
  MEMORY[0x1AC5A9410](v77);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v126);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();

  v78 = sub_1ABA894A0();
  MEMORY[0x1AC5A9410](v78);

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v79 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v79);

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v80 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v80);

  sub_1ABA890BC();
  MEMORY[0x1AC5A9410](v60 + 2, v81 | 0x8000000000000000);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABA9F8B8();
  v82 = sub_1ABA8AF68();
  MEMORY[0x1AC5A9410](v82);

  MEMORY[0x1AC5A9410](v60 - 6, 0x80000001ABF8F7A0);
  v83 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v85 = v117;
  v84 = v118;
  v86 = v119;
  (*(v118 + 16))(v117, v1 + v83, v119);
  sub_1ABD1044C(&unk_1EB4D9668);
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  (*(v84 + 8))(v85, v86);
  MEMORY[0x1AC5A9410](0x65726F63730A202CLL, 0xEA0000000000203ALL);
  v87 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v88 = *(v1 + v87);
  sub_1ABF24344();
  MEMORY[0x1AC5A9410](0x65676173750A202CLL, 0xED0000203A68774BLL);
  v89 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v90 = v121;
  v91 = *(v121 + 16);
  v91(v120, v1 + v89, v122);
  sub_1ABD1044C(&unk_1EB4D9670);
  sub_1ABAA3928();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  v92 = *(v90 + 8);
  v93 = sub_1ABA97F40();
  v92(v93);
  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v126);
  sub_1ABA7EF0C();
  swift_beginAccess();
  v94 = sub_1ABDBFACC();
  (v91)(v94);
  sub_1ABAA3928();
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  v95 = sub_1ABA97F40();
  v92(v95);
  sub_1ABA7F0D0();
  v96 = v116;
  MEMORY[0x1AC5A9410](v116);
  v97 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v133 = *(v1 + v97);
  sub_1ABA894EC();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  sub_1ABA9FC74();
  MEMORY[0x1AC5A9410](v98 - 4, v99 | 0x8000000000000000);
  v100 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v132 = *(v1 + v100);
  sub_1ABA894EC();
  sub_1ABF24FF4();
  sub_1ABDBFAB4();

  sub_1ABA8C9B8();
  v101 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v131 = *(v1 + v101);
  sub_1ABA894EC();
  sub_1ABF24FF4();
  sub_1ABAA91E0();

  sub_1ABA7F0D0();
  v102 = v115;
  MEMORY[0x1AC5A9410]();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();
  sub_1ABDBFA18();
  sub_1ABAAD2A0();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v96);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
  sub_1ABA8C744();
  sub_1ABF23984();
  sub_1ABDBFA18();
  sub_1ABAAD2A0();

  sub_1ABA8C9B8();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
  sub_1ABA8C744();
  sub_1ABF23984();
  sub_1ABDBFA18();
  sub_1ABAAD2A0();

  MEMORY[0x1AC5A9410](0x5464616F720A202CLL, 0xEE00203A73656D69);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA89174();
  sub_1ABF23984();

  v103 = sub_1ABA894EC();
  MEMORY[0x1AC5A9410](v103);

  sub_1ABA9FC74();
  MEMORY[0x1AC5A9410](v104 + 7, v105 | 0x8000000000000000);
  v106 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v107 = *(v1 + v106);
  if (v107)
  {
    v108 = *(v107 + 16);
  }

  else
  {
    v108 = 0;
  }

  v129 = v108;
  v130 = v107 == 0;
  sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
  v109 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v109);

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v102);
  v110 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v128 = *(v1 + v110);

  sub_1ABAD219C(&qword_1EB4D9678, &qword_1ABF613B8);
  sub_1ABF23C74();
  sub_1ABAA91E0();

  sub_1ABA7F0D0();
  MEMORY[0x1AC5A9410](v102);
  v111 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v127 = *(v1 + v111);

  v112 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v112);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v136;
}

uint64_t sub_1ABDA3B58(uint64_t a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v4 = sub_1ABA7BB64(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7AC18();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA972D4();
  v173 = v13;
  v14 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v15 = sub_1ABA7BB64(v14);
  v176 = v16;
  v177 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C068();
  v175 = v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA972D4();
  v174 = v21;
  v22 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v180 = sub_1ABA7BB64(v22);
  v181 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v180);
  sub_1ABA7C068();
  v179 = v26;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA972D4();
  v178 = v28;
  v29 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v30 = sub_1ABA7BB64(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7AC18();
  v37 = (v35 - v36);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v167 - v39;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v41 = *(v1 + 16);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v41 != *(a1 + 16))
  {
    goto LABEL_26;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v42 = *(v1 + 24);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v42 != *(a1 + 24))
  {
    goto LABEL_26;
  }

  v167 = v11;
  v168 = v6;
  v169 = v3;
  v43 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v44 = *(v32 + 16);
  v172 = v1;
  v44(v40, v1 + v43, v29);
  v45 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v171 = v44;
  v44(v37, a1 + v45, v29);
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABA8EF78();
  LOBYTE(v45) = sub_1ABF21894();
  v46 = *(v32 + 8);
  v47 = sub_1ABA8C53C();
  v46(v47);
  v48 = sub_1ABA8A354();
  v46(v48);
  if ((v45 & 1) == 0)
  {
    goto LABEL_26;
  }

  v49 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  v170 = a1;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v50 = v170;
  v171(v40, a1 + v49, v29);
  v51 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v171(v37, v50 + v51, v29);
  sub_1ABA8EF78();
  LOBYTE(v51) = sub_1ABF21894();
  v52 = sub_1ABA8C53C();
  v46(v52);
  v53 = sub_1ABA8A354();
  v46(v53);
  if ((v51 & 1) == 0)
  {
    goto LABEL_26;
  }

  v54 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  v55 = v172;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v57 = v180;
  v56 = v181;
  v58 = v170;
  v59 = *(v181 + 16);
  v60 = v178;
  v59(v178, v55 + v54, v180);
  v61 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62 = v58 + v61;
  v63 = v59;
  v64 = v179;
  v63(v179, v62, v57);
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  LOBYTE(v61) = sub_1ABF21894();
  v67 = *(v56 + 8);
  v66 = v56 + 8;
  v65 = v67;
  v67(v64, v57);
  v68 = sub_1ABA82ED0();
  (v67)(v68);
  if ((v61 & 1) == 0)
  {
    goto LABEL_26;
  }

  v181 = v66;
  v69 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  v70 = v60;
  v71 = v172;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v72 = v71 + v69;
  v73 = v170;
  v63(v70, v72, v57);
  v74 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v63(v64, v73 + v74, v57);
  sub_1ABA894A0();
  LOBYTE(v74) = sub_1ABF21894();
  v65(v64, v57);
  v75 = sub_1ABA95870();
  (v65)(v75);
  if ((v74 & 1) == 0)
  {
    goto LABEL_26;
  }

  v76 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v77 = *(v63 + v76);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB599B8();
  sub_1ABA89CAC();

  if ((v65 & 1) == 0)
  {
    goto LABEL_26;
  }

  v78 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v79 = *(v63 + v78);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB59C20();
  sub_1ABA89CAC();

  v80 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v81 = *(v63 + v80);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB59E88();
  sub_1ABA89CAC();

  v82 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v83 = *(v63 + v82);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB5A0F0();
  sub_1ABA89CAC();

  v84 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v85 = *(v63 + v84);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB5A358();
  sub_1ABA89CAC();

  v86 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v87 = *(v63 + v86);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBF9E4();

  sub_1ABA7E79C();
  sub_1ABB5A5C0();
  sub_1ABA89CAC();

  v88 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  v89 = v172;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v90 = v176;
  v91 = v176 + 16;
  v92 = *(v176 + 16);
  v93 = v89 + v88;
  v94 = v174;
  v95 = v177;
  v92(v174, v93, v177);
  v96 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v97 = v73 + v96;
  v98 = v175;
  v92(v175, v97, v95);
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABA82DAC();
  LOBYTE(v88) = sub_1ABF21894();
  v99 = *(v90 + 8);
  v99(v98, v95);
  v99(v94, v95);
  if ((v88 & 1) == 0)
  {
    goto LABEL_26;
  }

  v100 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v101 = *(v91 + v100);
  v102 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  v103 = v170;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v101 != *(v103 + v102))
  {
    goto LABEL_26;
  }

  v104 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  v105 = v172;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v106 = v168;
  v107 = v169;
  v108 = *(v168 + 16);
  v109 = v173;
  v108(v173, v105 + v104, v169);
  v110 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v111 = v167;
  v108(v167, v104 + v110, v107);
  v112 = sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  sub_1ABA7BC4C();
  LOBYTE(v110) = sub_1ABF21894();
  v113 = *(v106 + 8);
  v114 = sub_1ABDBFBAC();
  v113(v114);
  v115 = sub_1ABA95870();
  v113(v115);
  if ((v110 & 1) == 0)
  {
    goto LABEL_26;
  }

  v181 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  v116 = v172;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v108(v109, v116 + v181, v107);
  v117 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  v181 = v108;
  v118 = v170;
  sub_1ABA7EF0C();
  swift_beginAccess();
  (v181)(v111, v118 + v117, v107);
  sub_1ABA7BC4C();
  LOBYTE(v117) = sub_1ABF21894();
  v119 = sub_1ABDBFBAC();
  v113(v119);
  v120 = sub_1ABA95870();
  v113(v120);
  if ((v117 & 1) == 0)
  {
    goto LABEL_26;
  }

  v121 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v122 = *(v112 + v121);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v123)
  {
    goto LABEL_26;
  }

  v124 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v125 = *(v112 + v124);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v123)
  {
    goto LABEL_26;
  }

  v126 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v127 = *(v112 + v126);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v123)
  {
    goto LABEL_26;
  }

  v128 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v129 = *(v112 + v128);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5A828();
  sub_1ABA89CAC();

  if ((v111 & 1) == 0)
  {
    goto LABEL_26;
  }

  v130 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v131 = *(v112 + v130);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5AB38();
  sub_1ABA89CAC();

  v132 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v133 = *(v112 + v132);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5AB50();
  sub_1ABA89CAC();

  v134 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v135 = *(v112 + v134);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5ACA8();
  sub_1ABA89CAC();

  v136 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v137 = *(v112 + v136);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5AFB8();
  sub_1ABA89CAC();

  v138 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v139 = *(v112 + v138);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5B220();
  sub_1ABA89CAC();

  v140 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v141 = *(v112 + v140);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5B488();
  sub_1ABA89CAC();

  v142 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v143 = *(v112 + v142);
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA88C9C();

  sub_1ABA7E79C();
  sub_1ABB5B6F0();
  sub_1ABA89CAC();

  v144 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABDBF984();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v145 = *(v112 + v144);
  v146 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  v147 = v170;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v148 = *(v147 + v146);
  if (!v145)
  {
    if (!v148)
    {
      goto LABEL_22;
    }

LABEL_26:
    v165 = 0;
    return v165 & 1;
  }

  if (!v148)
  {
    goto LABEL_26;
  }

  v149 = *(v147 + v146);

  sub_1ABB494DC(v150, v148, v151, v152, v153, v154, v155, v156, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178);
  v158 = v157;

  if ((v158 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v159 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  v160 = v172;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v161 = *(v160 + v159);
  v162 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  v163 = v170;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v164 = *(v163 + v162);
  v165 = (v161 | v164) == 0;
  if (v161 && v164)
  {
    v165 = sub_1ABB4F410(v161, v164);
  }

  return v165 & 1;
}

uint64_t static KTSDataRepresentation.== infix(_:_:)(uint64_t a1, void *a2)
{
  if (*a1 == *a2)
  {
    return (*(*a1 + 1160))(a2) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABDA4AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001ABF8FFF0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65636E6174736964 && a2 == 0xEF7374656B637542;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001ABF90020 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001ABF90040 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000022 && 0x80000001ABF90060 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001DLL && 0x80000001ABF90090 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000019 && 0x80000001ABF900B0 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001BLL && 0x80000001ABF900D0 == a2;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000017 && 0x80000001ABF900F0 == a2;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001DLL && 0x80000001ABF90110 == a2;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001ABF90130 == a2;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD00000000000001DLL && 0x80000001ABF90150 == a2;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x68774B6567617375 && a2 == 0xE800000000000000;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x556C616D6974706FLL && a2 == 0xEF68774B65676173;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000010 && 0x80000001ABF90190 == a2;
                                    if (v22 || (sub_1ABF25054() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x6C656363416D756ELL && a2 == 0xEE0073746E657645;
                                      if (v23 || (sub_1ABF25054() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000012 && 0x80000001ABF901B0 == a2;
                                        if (v24 || (sub_1ABF25054() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000015 && 0x80000001ABF901D0 == a2;
                                          if (v25 || (sub_1ABF25054() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD000000000000010 && 0x80000001ABF901F0 == a2;
                                            if (v26 || (sub_1ABF25054() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000018 && 0x80000001ABF90210 == a2;
                                              if (v27 || (sub_1ABF25054() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x656D695464616F72 && a2 == 0xE900000000000073;
                                                if (v28 || (sub_1ABF25054() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0xD000000000000013 && 0x80000001ABF90240 == a2;
                                                  if (v29 || (sub_1ABF25054() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD000000000000016 && 0x80000001ABF90260 == a2;
                                                    if (v30 || (sub_1ABF25054() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000016 && 0x80000001ABF90280 == a2;
                                                      if (v31 || (sub_1ABF25054() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x52726550656D6974 && a2 == 0xEF6570795464616FLL;
                                                        if (v32 || (sub_1ABF25054() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000012 && 0x80000001ABF902B0 == a2;
                                                          if (v33 || (sub_1ABF25054() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0xD000000000000012 && 0x80000001ABF902D0 == a2;
                                                            if (v34 || (sub_1ABF25054() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x6574756F72 && a2 == 0xE500000000000000;
                                                              if (v35 || (sub_1ABF25054() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x6E6576456566696CLL && a2 == 0xEC00000073644974;
                                                                if (v36 || (sub_1ABF25054() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else if (a1 == 0x656D67655373746BLL && a2 == 0xED0000736449746ELL)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  v38 = sub_1ABF25054();

                                                                  if (v38)
                                                                  {
                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    return 33;
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABDA54C4(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      return 0x656D6954646E65;
    case 2:
      return 0xD000000000000010;
    case 3:
      return 0x65636E6174736964;
    case 4:
    case 20:
      v4 = 5;
      return v4 | 0xD000000000000010;
    case 5:
      return 0xD000000000000011;
    case 6:
      return 0xD000000000000022;
    case 7:
    case 11:
    case 13:
      v4 = 13;
      return v4 | 0xD000000000000010;
    case 8:
    case 12:
      v4 = 9;
      return v4 | 0xD000000000000010;
    case 9:
      v4 = 11;
      return v4 | 0xD000000000000010;
    case 10:
      return 0xD000000000000017;
    case 14:
      v3 = 1919902579;
      goto LABEL_24;
    case 15:
      return 0x68774B6567617375;
    case 16:
      return 0x556C616D6974706FLL;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x6C656363416D756ELL;
    case 19:
    case 28:
    case 29:
      return 0xD000000000000012;
    case 21:
      return 0xD000000000000010;
    case 22:
      return 0xD000000000000018;
    case 23:
      return 0x656D695464616F72;
    case 24:
      return 0xD000000000000013;
    case 25:
    case 26:
      return 0xD000000000000016;
    case 27:
      return 0x52726550656D6974;
    case 30:
      v3 = 1953853298;
LABEL_24:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 31:
      result = 0x6E6576456566696CLL;
      break;
    case 32:
      result = 0x656D67655373746BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDA5830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABDA4AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABDA5858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDA54BC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDA5880(uint64_t a1)
{
  v2 = sub_1ABDB4AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDA58BC(uint64_t a1)
{
  v2 = sub_1ABDB4AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KTSDataRepresentation.deinit()
{
  v1 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0(v1);
  v3 = *(v2 + 8);
  v4 = sub_1ABAB5B2C();
  v3(v4);
  v5 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets);

  v6 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters);
  v3(v6);
  v7 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BBB0(v7);
  v9 = *(v8 + 8);
  v10 = sub_1ABAB5B2C();
  v9(v10);
  v11 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic);
  v9(v11);
  v12 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets);

  v13 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets);

  v14 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets);

  v15 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets);

  v16 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds);

  v17 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds);

  v18 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  v19 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BBB0(v19);
  (*(v20 + 8))(v0 + v18);
  v21 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  sub_1ABA7BBB0(v21);
  v23 = *(v22 + 8);
  v24 = sub_1ABAB5B2C();
  v23(v24);
  v25 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh);
  v23(v25);
  v26 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters);

  v27 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets);

  v28 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets);

  v29 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes);

  v30 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType);

  v31 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType);

  v32 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType);

  v33 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType);

  v34 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType);

  v35 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType);

  v36 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route);

  v37 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds);

  v38 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds);

  return v0;
}

void sub_1ABDA5BD8()
{
  sub_1ABA7BCA8();
  v139 = v1;
  v174 = v0;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v128 = sub_1ABA7BB64(v4);
  v129 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v128);
  sub_1ABA7C068();
  v126 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA972D4();
  v127 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v12 = sub_1ABA7BB64(v11);
  v131 = v13;
  v132 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v130 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v135 = sub_1ABA7BB64(v18);
  v136 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v135);
  sub_1ABA7C068();
  v133 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA972D4();
  v134 = v24;
  v25 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v137 = sub_1ABA7BB64(v25);
  v138 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v137);
  sub_1ABA7AC18();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v120 - v33;
  v35 = sub_1ABAD219C(&qword_1EB4D9680, &unk_1ABF613C0);
  sub_1ABA7BB64(v35);
  v37 = v36;
  v39 = *(v38 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v120 - v41;
  v43 = v3[4];
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABDB4AC4();
  sub_1ABF252E4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v44 = *(v174 + 16);
  v173 = 0;
  v45 = v139;
  sub_1ABF24F54();
  if (v45)
  {
    v46 = *(v37 + 8);
    v47 = sub_1ABDBFBAC();
    v48(v47);
  }

  else
  {
    v124 = v31;
    v49 = v138;
    v139 = v37;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v50 = *(v174 + 24);
    v172 = 1;
    sub_1ABF24F54();
    v125 = 0;
    v51 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v122 = v42;
    v52 = v49[2];
    v53 = v174 + v51;
    v54 = v34;
    v55 = v137;
    v52(v34, v53, v137);
    v171 = 2;
    sub_1ABA8E394();
    v57 = sub_1ABD1044C(v56);
    v123 = v35;
    v58 = v125;
    sub_1ABF24F84();
    v125 = v58;
    if (v58)
    {
      v59 = v49[1];
      v60 = sub_1ABA894EC();
      v61(v60);
      v62 = sub_1ABA8B474();
      v63(v62, v123);
    }

    else
    {
      v120[1] = v57;
      v120[2] = v49 + 2;
      v121 = v52;
      v64 = v54;
      v65 = v49[1];
      (v65)(v64, v55);
      v66 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v170 = *(v174 + v66);
      v169 = 3;
      sub_1ABAD219C(&qword_1EB4D1700, &qword_1ABF33890);
      sub_1ABDB4B18();
      v67 = v125;
      sub_1ABF24F84();
      if (v67)
      {
        v68 = sub_1ABA8B474();
        v70 = v123;
      }

      else
      {
        v71 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v121(v124, v174 + v71, v55);
        v169 = 4;
        sub_1ABF24F84();
        v72 = sub_1ABA894EC();
        v65(v72);
        v73 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v75 = v135;
        v74 = v136;
        v138 = *(v136 + 16);
        (v138)(v134, v174 + v73, v135);
        v168 = 5;
        sub_1ABA8E394();
        sub_1ABD1044C(v76);
        sub_1ABF24F84();
        v77 = *(v74 + 8);
        v136 = v74 + 8;
        v137 = v77;
        v78 = sub_1ABA8B114();
        v79(v78);
        v80 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v81 = v133;
        (v138)(v133, v174 + v80, v75);
        v167 = 6;
        sub_1ABF24F84();
        v137(v81, v75);
        v82 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v166 = *(v174 + v82);
        LOBYTE(v165) = 7;
        sub_1ABAD219C(&qword_1EB4D16A0, &qword_1ABF33830);
        sub_1ABDB4BF8();
        sub_1ABF24F84();
        v83 = v139;
        v84 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v165 = *(v174 + v84);
        LOBYTE(v164) = 8;
        sub_1ABAD219C(&qword_1EB4D1690, &qword_1ABF33820);
        sub_1ABDB4D04();
        sub_1ABA89E0C();
        v85 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v164 = *(v174 + v85);
        LOBYTE(v163) = 9;
        sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
        sub_1ABDB4DBC();
        sub_1ABA89E0C();
        v86 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v163 = *(v174 + v86);
        LOBYTE(v162) = 10;
        sub_1ABAD219C(&qword_1EB4D16B0, &qword_1ABF33840);
        sub_1ABDB4EC8();
        sub_1ABA89E0C();
        v87 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v162 = *(v83 + v87);
        LOBYTE(v161) = 11;
        sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
        sub_1ABDB4F80();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v88 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v161 = *(v83 + v88);
        v160 = 12;
        sub_1ABAD219C(&qword_1EB4D16D0, &qword_1ABF33860);
        sub_1ABDB508C();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v89 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        (*(v131 + 16))(v130, v83 + v89, v132);
        v160 = 13;
        sub_1ABA8E394();
        sub_1ABD1044C(v90);
        sub_1ABF24F84();
        (*(v131 + 8))(v130, v132);
        v91 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v92 = *(v83 + v91);
        v159 = 14;
        sub_1ABF24F54();
        v93 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v94 = *(v129 + 16);
        v94(v127, v83 + v93, v128);
        v158 = 15;
        sub_1ABA8E394();
        v96 = sub_1ABD1044C(v95);
        sub_1ABF24F84();
        v97 = v128;
        v98 = *(v129 + 8);
        v129 += 8;
        v138 = v98;
        (v98)(v127, v128);
        v99 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v94(v126, v174 + v99, v97);
        v157 = 16;
        sub_1ABA8BB48();
        sub_1ABF24F84();
        (v138)(v126, v128);
        v100 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v101 = *(v96 + v100);
        v156 = 17;
        sub_1ABF24F74();
        v102 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v103 = *(v96 + v102);
        v155 = 18;
        sub_1ABF24F74();
        v104 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v105 = *(v96 + v104);
        v154 = 19;
        sub_1ABF24F74();
        v106 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v153 = *(v96 + v106);
        LOBYTE(v152) = 20;
        sub_1ABAD219C(&qword_1EB4D15A0, &qword_1ABF33730);
        sub_1ABDB5144();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v107 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v152 = *(v96 + v107);
        LOBYTE(v151) = 21;
        sub_1ABAD219C(&qword_1EB4D1590, &qword_1ABF33720);
        sub_1ABDB5F78(&unk_1EB4D9710);
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v108 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v151 = *(v96 + v108);
        LOBYTE(v150) = 22;
        sub_1ABAD219C(&qword_1EB4D1580, &qword_1ABF33710);
        sub_1ABDB51FC(&unk_1EB4D9718);
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v109 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v150 = *(v96 + v109);
        LOBYTE(v149) = 23;
        sub_1ABAD219C(&qword_1EB4D1570, &qword_1ABF33700);
        sub_1ABDB5270();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v110 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v149 = *(v96 + v110);
        LOBYTE(v148) = 24;
        sub_1ABAD219C(&qword_1EB4D1670, &qword_1ABF33800);
        sub_1ABDB5328();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v111 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v148 = *(v96 + v111);
        LOBYTE(v147) = 25;
        sub_1ABAD219C(&qword_1EB4D1650, &qword_1ABF337E0);
        sub_1ABDB5434();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v112 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v147 = *(v96 + v112);
        LOBYTE(v146) = 26;
        sub_1ABAD219C(&qword_1EB4D1660, &qword_1ABF337F0);
        sub_1ABDB5540();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v113 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v146 = *(v96 + v113);
        LOBYTE(v145) = 27;
        sub_1ABAD219C(&qword_1EB4D1640, &qword_1ABF337D0);
        sub_1ABDB564C();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v114 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v145 = *(v96 + v114);
        LOBYTE(v144) = 28;
        sub_1ABAD219C(&qword_1EB4D1620, &qword_1ABF337B0);
        sub_1ABDB5704();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v115 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v144 = *(v96 + v115);
        LOBYTE(v143) = 29;
        sub_1ABAD219C(&qword_1EB4D1630, &qword_1ABF337C0);
        sub_1ABDB57BC();
        sub_1ABA7AE08();
        sub_1ABF24F84();
        v116 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v143 = *(v96 + v116);
        LOBYTE(v142) = 30;
        sub_1ABAD219C(&qword_1EB4D9770, &unk_1ABF613D0);
        sub_1ABDB65F0(&unk_1EB4D9778);
        sub_1ABA7AE08();
        sub_1ABF24F14();
        v117 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
        sub_1ABA964B4();
        sub_1ABA7EF0C();
        swift_beginAccess();
        v142 = *(v96 + v117);
        LOBYTE(v141) = 31;
        sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
        sub_1ABDB66A4(&qword_1EB4D41A0);
        sub_1ABF24F14();
        v118 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
        sub_1ABA7EF0C();
        swift_beginAccess();
        v141 = *(v174 + v118);
        v140 = 32;
        v119 = v123;
        sub_1ABF24F14();
        v68 = sub_1ABA8B474();
        v70 = v119;
      }

      v69(v68, v70);
    }
  }

  sub_1ABA7BC90();
}

void KTSDataRepresentation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v167 = v11;
  v13 = v12;
  v158 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v14 = sub_1ABA7BB64(v158);
  v157 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v153 = v18;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA972D4();
  sub_1ABA8147C(v20);
  v160 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7BB64(v160);
  v159 = v21;
  v23 = *(v22 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v27 = sub_1ABA7BB64(v26);
  v161 = v28;
  v162 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7C068();
  v156 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141 - v33;
  v35 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v36 = sub_1ABA7BB64(v35);
  v163 = v37;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7AC18();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v141 - v44;
  v46 = sub_1ABAD219C(&qword_1EB4D9788, &unk_1ABF613E0);
  v47 = sub_1ABA7BB64(v46);
  v164 = v48;
  v165 = v47;
  v50 = *(v49 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v141 - v52;
  v168 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  *(v10 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route) = 0;
  v169 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  *(v10 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds) = 0;
  v170 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
  v171 = v13;
  v172 = v10;
  *(v10 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds) = 0;
  v54 = v13[4];
  sub_1ABA93E20(v13, v13[3]);
  sub_1ABDB4AC4();
  v166 = v53;
  v55 = v167;
  sub_1ABF252C4();
  if (v55)
  {
    v59 = v171;
    v58 = v172;
    goto LABEL_4;
  }

  v56 = v45;
  v57 = v42;
  v152 = v35;
  LOBYTE(v175) = 0;
  sub_1ABF24E34();
  v66 = v172;
  *(v172 + 16) = v67;
  LOBYTE(v175) = 1;
  sub_1ABF24E34();
  *(v66 + 24) = v68;
  LOBYTE(v175) = 2;
  sub_1ABAA41CC(&unk_1EB4D9790);
  v69 = v152;
  sub_1ABF24E64();
  v167 = *(v163 + 32);
  v167(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters, v56, v69);
  sub_1ABAD219C(&qword_1EB4D1700, &qword_1ABF33890);
  LOBYTE(v174) = 3;
  sub_1ABDB5894();
  sub_1ABAA4FD4();
  sub_1ABDBFBA0();
  sub_1ABF24E64();
  *(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets) = v175;
  LOBYTE(v175) = 4;
  v70 = v57;
  v71 = v152;
  v142 = 0;
  sub_1ABF24E64();
  v167(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters, v70, v71);
  LOBYTE(v175) = 5;
  sub_1ABAA41CC(&unk_1EB4D97A8);
  v72 = v34;
  v73 = v162;
  sub_1ABDBFB30();
  sub_1ABF24E64();
  v101 = *(v161 + 32);
  (v101)(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds, v72, v73);
  LOBYTE(v175) = 6;
  v102 = v156;
  sub_1ABDBFB30();
  sub_1ABF24E64();
  (v101)(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic, v102, v73);
  sub_1ABAD219C(&qword_1EB4D16A0, &qword_1ABF33830);
  LOBYTE(v174) = 7;
  sub_1ABDB5974();
  sub_1ABAA4FD4();
  v103 = v165;
  sub_1ABDBFBA0();
  sub_1ABF24E64();
  v104 = v164;
  *(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets) = v175;
  sub_1ABAD219C(&qword_1EB4D1690, &qword_1ABF33820);
  LOBYTE(v174) = 8;
  sub_1ABDB5A80();
  sub_1ABAA4FD4();
  sub_1ABDBFBA0();
  sub_1ABF24E64();
  v167 = 0;
  *(v66 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets) = v175;
  sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
  LOBYTE(v174) = 9;
  sub_1ABDB5B38();
  sub_1ABAA4FD4();
  sub_1ABDBFBA0();
  v105 = v167;
  sub_1ABF24E64();
  v167 = v105;
  if (v105)
  {
    v106 = sub_1ABAA2DA8();
    v107(v106);
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    sub_1ABA8F7F8();
    sub_1ABA90A50();
  }

  else
  {
    sub_1ABA8BD4C(v175);
    sub_1ABAD219C(&qword_1EB4D16B0, &qword_1ABF33840);
    LOBYTE(v174) = 10;
    sub_1ABDB5C44();
    sub_1ABAA4FD4();
    sub_1ABA96AAC();
    sub_1ABF24E64();
    v167 = 0;
    sub_1ABA8BD4C(v175);
    sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
    LOBYTE(v174) = 11;
    sub_1ABDB5CFC();
    sub_1ABAA4FD4();
    sub_1ABA96AAC();
    sub_1ABF24E64();
    v167 = 0;
    sub_1ABA8BD4C(v175);
    sub_1ABAD219C(&qword_1EB4D16D0, &qword_1ABF33860);
    LOBYTE(v174) = 12;
    sub_1ABDB5E08();
    sub_1ABAA4FD4();
    sub_1ABA96AAC();
    sub_1ABF24E64();
    v167 = 0;
    sub_1ABA8BD4C(v175);
    LOBYTE(v175) = 13;
    sub_1ABAA41CC(&unk_1EB4D97F8);
    v108 = v167;
    sub_1ABF24E64();
    v167 = v108;
    if (v108)
    {
      v109 = sub_1ABAA2DA8();
      v110(v109);
      v147 = 0;
      v148 = 0;
      sub_1ABA8F7F8();
      sub_1ABA80EE0();
    }

    else
    {
      (*(v159 + 32))(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond, v155, v160);
      sub_1ABDBF950(14);
      sub_1ABF24E34();
      v167 = 0;
      *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score) = v113;
      LOBYTE(v175) = 15;
      v104 = sub_1ABAA41CC(&unk_1EB4D9800);
      v114 = v167;
      sub_1ABF24E64();
      v167 = v114;
      if (v114)
      {
        v115 = sub_1ABAA2DA8();
        v116(v115);
        v148 = 0;
        sub_1ABA8F7F8();
        sub_1ABA80EE0();
        *(v117 - 256) = v111;
        v112 = &v176;
      }

      else
      {
        v103 = v157 + 32;
        v119 = *(v157 + 32);
        v120 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh);
        v119(v120, v154, v158);
        LOBYTE(v175) = 16;
        v121 = v167;
        sub_1ABF24E64();
        v167 = v121;
        if (!v121)
        {
          v124 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh);
          v119(v124, v153, v158);
          sub_1ABDBF950(17);
          v125 = sub_1ABF24E54();
          v167 = 0;
          *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents) = v125;
          sub_1ABDBF950(18);
          v126 = sub_1ABF24E54();
          v167 = 0;
          *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents) = v126;
          sub_1ABDBF950(19);
          v127 = sub_1ABF24E54();
          v167 = 0;
          *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents) = v127;
          sub_1ABAD219C(&qword_1EB4D15A0, &qword_1ABF33730);
          LOBYTE(v174) = 20;
          sub_1ABDB5EC0();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1590, &qword_1ABF33720);
          LOBYTE(v174) = 21;
          sub_1ABDB5F78(&unk_1EB4D9810);
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1580, &qword_1ABF33710);
          LOBYTE(v174) = 22;
          sub_1ABDB51FC(&unk_1EB4D9818);
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1570, &qword_1ABF33700);
          LOBYTE(v174) = 23;
          sub_1ABDB5FEC();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1670, &qword_1ABF33800);
          LOBYTE(v174) = 24;
          sub_1ABDB60A4();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1650, &qword_1ABF337E0);
          LOBYTE(v174) = 25;
          sub_1ABDB61B0();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1660, &qword_1ABF337F0);
          LOBYTE(v174) = 26;
          sub_1ABDB62BC();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1640, &qword_1ABF337D0);
          LOBYTE(v174) = 27;
          sub_1ABDB63C8();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1620, &qword_1ABF337B0);
          LOBYTE(v174) = 28;
          sub_1ABDB6480();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D1630, &qword_1ABF337C0);
          LOBYTE(v174) = 29;
          sub_1ABDB6538();
          sub_1ABAA4FD4();
          sub_1ABA96AAC();
          sub_1ABF24E64();
          v167 = 0;
          sub_1ABA8BD4C(v175);
          sub_1ABAD219C(&qword_1EB4D9770, &unk_1ABF613D0);
          LOBYTE(v175) = 30;
          sub_1ABDB65F0(&unk_1EB4D9870);
          sub_1ABA96AAC();
          sub_1ABF24DF4();
          v128 = v174;
          v129 = v168;
          v130 = v172;
          sub_1ABAA0948();
          swift_beginAccess();
          v131 = *(v130 + v129);
          *(v130 + v129) = v128;

          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          LOBYTE(v174) = 31;
          sub_1ABDB66A4(&qword_1EB4D41F0);
          sub_1ABDBFA34();
          v132 = v172;
          v133 = v173;
          v134 = v169;
          sub_1ABAA0948();
          swift_beginAccess();
          v135 = *(v132 + v134);
          *(v132 + v134) = v133;

          LOBYTE(v173) = 32;
          sub_1ABDBFA34();
          v136 = sub_1ABAA2DA8();
          v137(v136);
          v138 = v170;
          v139 = v172;
          sub_1ABAA0948();
          swift_beginAccess();
          v140 = *(v139 + v138);
          *(v139 + v138) = a10;

          v65 = v171;
          goto LABEL_5;
        }

        v122 = sub_1ABAA2DA8();
        v123(v122);
        sub_1ABA8F7F8();
        sub_1ABA7F678();
      }
    }

    *(v112 - 64) = v111;
  }

  v118 = v172;
  v74 = v142;
  v75 = *(v163 + 8);
  v75(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters, v152);
  if (v74)
  {
    if (v73)
    {
LABEL_8:
      v75(v118 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters, v152);
    }
  }

  else
  {
    v77 = *(v118 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets);

    if (v73)
    {
      goto LABEL_8;
    }
  }

  v76 = v161;
  if (v104)
  {
    v76 = (v161 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*(v161 + 8))(v118 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic, v162);
    if ((v103 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (!v103)
  {
LABEL_14:
    v78 = v160;
    if (v101)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  v86 = *(v118 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets);

  v78 = v160;
  if (v101)
  {
LABEL_15:
    v79 = *(v118 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets);

    sub_1ABA89904();
    if ((v80 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_1ABA89904();
  if (!v87)
  {
LABEL_16:
    sub_1ABDBFB1C();
    if (v81)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  v88 = *(v118 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets);

  sub_1ABDBFB1C();
  if (v89)
  {
LABEL_17:
    v82 = *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets);

    if ((v145 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v145)
  {
LABEL_18:
    if (v146)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

LABEL_28:
  v90 = *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds);

  if (v146)
  {
LABEL_19:
    v83 = *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds);

    if ((v147 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v147)
  {
LABEL_20:
    if (v148)
    {
      goto LABEL_21;
    }

LABEL_31:
    if (!v149)
    {
      goto LABEL_43;
    }

    v84 = *(v76 + 8);
LABEL_33:
    v91 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh);
    v84(v91, v118);
    if (v150)
    {
      goto LABEL_44;
    }

LABEL_34:
    v59 = v171;
    v58 = v172;
    if (!v151)
    {
      goto LABEL_45;
    }

LABEL_35:
    v92 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets);

    if (v153)
    {
      goto LABEL_46;
    }

LABEL_36:
    if (!v154)
    {
      goto LABEL_47;
    }

LABEL_37:
    v93 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes);

    if (v155)
    {
      goto LABEL_48;
    }

LABEL_38:
    if (!v156)
    {
      goto LABEL_49;
    }

LABEL_39:
    v94 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType);

    if (v164)
    {
      goto LABEL_50;
    }

LABEL_40:
    if (!v165)
    {
      goto LABEL_51;
    }

LABEL_41:
    v95 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType);

    if (v166)
    {
      goto LABEL_52;
    }

    goto LABEL_4;
  }

LABEL_30:
  (*(v101 + 8))(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond, v78);
  if ((v148 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v84 = *(v76 + 8);
  v85 = sub_1ABDBFB10(OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh);
  v84(v85, v118);
  if (v149)
  {
    goto LABEL_33;
  }

LABEL_43:
  if (!v150)
  {
    goto LABEL_34;
  }

LABEL_44:
  v58 = v172;
  v96 = *(v172 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters);

  v59 = v171;
  if (v151)
  {
    goto LABEL_35;
  }

LABEL_45:
  if (!v153)
  {
    goto LABEL_36;
  }

LABEL_46:
  v97 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets);

  if (v154)
  {
    goto LABEL_37;
  }

LABEL_47:
  if (!v155)
  {
    goto LABEL_38;
  }

LABEL_48:
  v98 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType);

  if (v156)
  {
    goto LABEL_39;
  }

LABEL_49:
  if (!v164)
  {
    goto LABEL_40;
  }

LABEL_50:
  v99 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType);

  if (v165)
  {
    goto LABEL_41;
  }

LABEL_51:
  if (v166)
  {
LABEL_52:
    v100 = *(v58 + OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType);
  }

LABEL_4:
  v60 = *(v58 + v168);

  v61 = *(v58 + v169);

  v62 = *(v58 + v170);

  type metadata accessor for KTSDataRepresentation(0);
  v63 = *(*v58 + 48);
  v64 = *(*v58 + 52);
  swift_deallocPartialClassInstance();
  v65 = v59;
LABEL_5:
  sub_1ABA84B54(v65);
  sub_1ABA7BC90();
}

uint64_t sub_1ABDA8730@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABDA8858@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v6 = sub_1ABA7BBB0(v5);
  v8 = *(v7 + 16);

  return v8(a2, v2 + v4, v6);
}

uint64_t sub_1ABDA89E4()
{
  v0 = sub_1ABF250B4();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

void sub_1ABDA8A3C(char a1)
{
  switch(a1)
  {
    case 16:
    case 20:
    case 21:
    case 22:
      sub_1ABA7F0D0();
      break;
    case 26:
      return;
    default:
      sub_1ABDBFA88();
      break;
  }
}

uint64_t sub_1ABDA8D1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1ABDA89E4();
  *a2 = result;
  return result;
}

void sub_1ABDA8D4C(void *a1@<X8>)
{
  sub_1ABDA8A3C(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1ABDA8D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABDA8A38();
  *a1 = result;
  return result;
}

uint64_t sub_1ABDA8DB4(uint64_t a1)
{
  v2 = sub_1ABDBD1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABDA8DF0(uint64_t a1)
{
  v2 = sub_1ABDBD1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABDA9D30(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  a2(a1);
  return v7;
}

void sub_1ABDA9D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_1ABA7BCA8();
  v114 = v11;
  v117 = v10;
  v14 = v13;
  v15 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v16 = sub_1ABA7BB64(v15);
  v115 = v17;
  v116 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7AC18();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105[-v24];
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA88D88();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v105[-v28];
  v30 = sub_1ABAD219C(&qword_1EB4D9940, &qword_1ABF617B8);
  sub_1ABA7BB64(v30);
  v112 = v31;
  v33 = *(v32 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v105[-v35];
  v38 = v14[3];
  v37 = v14[4];
  v113 = v14;
  v39 = sub_1ABA8C744();
  v41 = sub_1ABA93E20(v39, v40);
  sub_1ABDBD1D8();
  v42 = v114;
  sub_1ABF252C4();
  v43 = v42;
  if (v42)
  {
    v114 = v42;
    *&v105[4] = 0;
    v45 = 0;
    LODWORD(v46) = 0;
    v47 = 0;
    sub_1ABAB11BC();
    *&v105[12] = 0;
    *&v105[20] = 0;
    a10 = 0;
    sub_1ABA83ACC();
  }

  else
  {
    v114 = v12;
    v111 = v22;
    LOBYTE(v118[0]) = 0;
    sub_1ABAA41CC(&unk_1EB4D9790);
    v44 = v116;
    sub_1ABDBF964();
    v41 = v36;
    sub_1ABF24E64();
    v110 = *(v115 + 32);
    v110(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxTripDistanceInMeters, v29, v44);
    LOBYTE(v118[0]) = 1;
    v70 = v114;
    sub_1ABDBF964();
    sub_1ABF24E64();
    v71 = v70;
    v72 = v110;
    v110(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters, v71, v44);
    LOBYTE(v118[0]) = 2;
    sub_1ABDBF964();
    sub_1ABF24E64();
    v72(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters, v25, v44);
    LOBYTE(v118[0]) = 3;
    v73 = v111;
    sub_1ABDBF964();
    sub_1ABF24E64();
    v46 = v117;
    v72(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters, v73, v44);
    v74 = v30;
    v45 = sub_1ABAD219C(&qword_1EB4D9890, &qword_1ABF613F8);
    LODWORD(v25) = sub_1ABDBF2F4();
    sub_1ABDBF990();
    sub_1ABF24E64();
    *(v46 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets) = v118[0];
    v75 = sub_1ABAD219C(&qword_1EB4D98A0, &qword_1ABF61400);
    v38 = sub_1ABDBF380();
    sub_1ABDBF990();
    sub_1ABF24E64();
    v110 = v75;
    v111 = v38;
    *(v46 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets) = v118[0];
    LODWORD(v38) = sub_1ABAD219C(&qword_1EB4D98B0, &qword_1ABF61408);
    v76 = sub_1ABDBF40C();
    sub_1ABDBF990();
    sub_1ABA892E8();
    sub_1ABF24E64();
    v109 = v76;
    *(v46 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds) = v118[0];
    v77 = sub_1ABAD219C(&qword_1EB4D98C0, &qword_1ABF61410);
    sub_1ABDBF498();
    sub_1ABDBF990();
    v108 = v78;
    sub_1ABF24E64();
    v107 = v77;
    *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes) = v118[0];
    v22 = sub_1ABAD219C(&qword_1EB4D98D0, &qword_1ABF61418);
    sub_1ABDBF524();
    sub_1ABDBF990();
    v106 = v22;
    LOBYTE(v22) = v79;
    sub_1ABF24E64();
    v114 = 0;
    *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes) = v118[0];
    v80 = sub_1ABAD219C(&qword_1EB4D98E0, &qword_1ABF61420);
    sub_1ABDBF5B0();
    sub_1ABDBF990();
    v43 = v74;
    v47 = v80;
    *&v105[24] = v81;
    LODWORD(v29) = v41;
    v82 = v114;
    sub_1ABF24E64();
    v114 = v82;
    if (v82)
    {
      v83 = sub_1ABAA4AC4();
      v84(v83);
      memset(&v105[8], 0, 20);
      a10 = 0;
      sub_1ABA8EB6C();
      *&v105[4] = v85;
      sub_1ABA81A50();
    }

    else
    {
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes) = v118[0];
      sub_1ABAA2008(10);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets) = v118[0];
      sub_1ABAA2008(11);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets) = v118[0];
      sub_1ABAA2008(12);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds) = v118[0];
      sub_1ABAA2008(13);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes) = v118[0];
      sub_1ABAA2008(14);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes) = v118[0];
      sub_1ABAA2008(15);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes) = v118[0];
      sub_1ABAA2008(16);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket) = v118[0];
      sub_1ABAA2008(17);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket) = v118[0];
      sub_1ABAA2008(18);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed) = v118[0];
      sub_1ABAA2008(19);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType) = v118[0];
      sub_1ABAA2008(20);
      sub_1ABA89A50();
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType) = v118[0];
      sub_1ABAA2008(21);
      sub_1ABDBF99C();
      sub_1ABF24E64();
      v114 = 0;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType) = v118[0];
      sub_1ABAB6804(22);
      v114 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents, v86);
      sub_1ABAB6804(23);
      v114 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents, v87);
      sub_1ABAB6804(24);
      v114 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents, v88);
      sub_1ABAB6804(25);
      v114 = 0;
      sub_1ABDBFAE4(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore, v89);
      sub_1ABAD219C(&qword_1EB4D9908, &qword_1ABF61430);
      sub_1ABDBF63C();
      sub_1ABDBF990();
      sub_1ABDBF99C();
      sub_1ABF24DF4();
      v114 = 0;
      v41 = v117;
      *(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap) = v118[0];
      sub_1ABA93E64(v113, v118);
      v90 = v114;
      KTSDataRepresentation.init(from:)(v118, v91, v92, v93, v94, v95, v96, v97, *v105, *&v105[8]);
      v114 = v90;
      if (!v90)
      {
        v103 = sub_1ABAA4AC4();
        v104(v103);
        sub_1ABA84B54(v113);
        goto LABEL_44;
      }

      v98 = sub_1ABAA4AC4();
      v99(v98);
      sub_1ABA93758();
      sub_1ABAA2A08(v100);
      sub_1ABA9E580(v101);
      LODWORD(v112) = v102;
      LOBYTE(v22) = 1;
    }
  }

  sub_1ABA84B54(v113);
  if ((v22 & 1) == 0)
  {
    v48 = v117;
    if (*&v105[4])
    {
      (*(v115 + 8))(v117 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxTripDistanceInMeters, v116);
    }

    if (v45)
    {
      (*(v115 + 8))(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters, v116);
    }

    v49 = v116;
    if (v46)
    {
      (*(v115 + 8))(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters, v116);
      if (!v47)
      {
        goto LABEL_11;
      }
    }

    else if (!v47)
    {
LABEL_11:
      if (v29)
      {
        goto LABEL_12;
      }

      goto LABEL_47;
    }

    (*(v115 + 8))(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters, v49);
    if (v29)
    {
LABEL_12:
      v50 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);

      if (!v41)
      {
        goto LABEL_13;
      }

      goto LABEL_48;
    }

LABEL_47:
    if (!v41)
    {
LABEL_13:
      if (v43)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }

LABEL_48:
    v68 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);

    if (v43)
    {
LABEL_14:
      v51 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);

      if (!v38)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_49:
    if (!v38)
    {
LABEL_15:
      if (!v25)
      {
LABEL_17:
        if (*&v105[8])
        {
          v53 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
        }

        if (*&v105[12])
        {
          v54 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
        }

        if (*&v105[16])
        {
          v55 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
        }

        if (*&v105[20])
        {
          v56 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
        }

        if (a10)
        {
          v57 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
        }

        if (*&v105[24])
        {
          v58 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
        }

        if (v106)
        {
          v59 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);
        }

        if (v107)
        {
          v60 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
        }

        if (v108)
        {
          v61 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
        }

        if (v109)
        {
          v62 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);
        }

        if (v110)
        {
          v63 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);
        }

        if (v111)
        {
          v64 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);
        }

        if (v112)
        {
          v65 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);
        }

        type metadata accessor for KTSDataAggregateRepresentation(0);
        v66 = *(*v48 + 48);
        v67 = *(*v48 + 52);
        swift_deallocPartialClassInstance();
        goto LABEL_44;
      }

LABEL_16:
      v52 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);

      goto LABEL_17;
    }

LABEL_50:
    v69 = *(v48 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);

    if (!v25)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_44:
  sub_1ABA7BC90();
}

uint64_t sub_1ABDAADB8()
{
  v1 = v0;
  sub_1ABDA2AD0();
  sub_1ABF23D84();
  sub_1ABF23EC4();

  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x72546D756E0A202CLL, 0xED0000203A737069);
  sub_1ABDA1F4C();
  sub_1ABF24FF4();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000010);
  v2 = sub_1ABA7ABE4();
  sub_1ABAD219C(v2, v3);
  sub_1ABAA01F4();
  sub_1ABD1044C(v4);
  sub_1ABA7E79C();
  sub_1ABF24FF4();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000010);
  sub_1ABA7E79C();
  v5 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v5);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000015);
  sub_1ABA7E79C();
  v6 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v6);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000015);
  sub_1ABA7E79C();
  sub_1ABF24FF4();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v7 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);
  sub_1ABDB4920();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v8 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);
  sub_1ABDB48CC();
  sub_1ABAA030C();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v9 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);
  sub_1ABDB4974();
  sub_1ABDBFB94();
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v10 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);
  sub_1ABDB49C8();
  sub_1ABDBFB94();
  v11 = sub_1ABF23984();
  MEMORY[0x1AC5A9410](v11);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v12 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);
  sub_1ABDB4A1C();
  sub_1ABDBFB94();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v13 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
  sub_1ABDB4A70();
  sub_1ABDBFB94();
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v14 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v15 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v16 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v17 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v18 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v19 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v20 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v21 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
  sub_1ABF23984();
  sub_1ABA8923C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v22 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);
  v23 = sub_1ABF23984();
  MEMORY[0x1AC5A9410](v23);

  sub_1ABA88750();
  MEMORY[0x1AC5A9410](0xD000000000000015);
  v24 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v25 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v26 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);
  sub_1ABF23984();
  sub_1ABA88B9C();

  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  v27 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents);
  sub_1ABF24344();
  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABA9F3B0(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents);
  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABA9F3B0(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents);
  sub_1ABA88750();
  MEMORY[0x1AC5A9410]();
  sub_1ABA9F3B0(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore);
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  sub_1ABDAB640();

  return sub_1ABA8CD18();
}

uint64_t sub_1ABDAB640()
{
  sub_1ABD5A7DC();

  v1 = sub_1ABF23EB4();
  sub_1ABF23D94();
  return v1;
}

uint64_t sub_1ABDAB6C4(uint64_t a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v5 = sub_1ABA7BB64(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C068();
  v164 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA972D4();
  v163 = v12;
  v13 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v14 = sub_1ABA7BB64(v13);
  v167 = v15;
  v168 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v166 = v18;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA972D4();
  v165 = v20;
  v21 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v171 = sub_1ABA7BB64(v21);
  v172 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v171);
  sub_1ABA7C068();
  v170 = v25;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA972D4();
  v169 = v27;
  v28 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v29 = sub_1ABA7BB64(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7AC18();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA9E360();
  type metadata accessor for KTSDataAggregateRepresentation(0);
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    goto LABEL_65;
  }

  v39 = v38;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v40 = *(v1 + 16);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v40 != *(v39 + 16))
  {
    goto LABEL_65;
  }

  sub_1ABA7EF0C();
  swift_beginAccess();
  v41 = *(v1 + 24);
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v41 != *(v39 + 24))
  {
    goto LABEL_65;
  }

  v154 = v4;
  v155 = v7;
  v42 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v160 = a1;
  v161 = v31;
  v43 = *(v31 + 16);
  v158 = v1;
  v43(v2, v1 + v42, v28);
  v44 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v159 = v39;
  v43(v36, v39 + v44, v28);
  v45 = sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);

  LOBYTE(v42) = sub_1ABAB666C();
  v46 = *(v161 + 8);
  v46(v36, v28);
  v47 = sub_1ABA894A0();
  (v46)(v47);
  if ((v42 & 1) == 0)
  {
    goto LABEL_64;
  }

  v48 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v43(v2, v158 + v48, v28);
  v49 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v43(v36, v39 + v49, v28);
  LOBYTE(v49) = sub_1ABAB666C();
  v46(v36, v28);
  v50 = sub_1ABA894A0();
  (v46)(v50);
  if ((v49 & 1) == 0)
  {
    goto LABEL_64;
  }

  v157 = v45;
  v51 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v52 = *(v172 + 16);
  v52(v169, v158 + v51, v171);
  v53 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v162 = v52;
  v52(v170, v39 + v53, v171);
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  LOBYTE(v52) = sub_1ABAB666C();
  v54 = *(v172 + 8);
  v54(v170, v171);
  v55 = sub_1ABA8C53C();
  (v54)(v55);
  if ((v52 & 1) == 0)
  {
    goto LABEL_64;
  }

  v56 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v162(v169, v158 + v56, v171);
  v57 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v162(v170, v39 + v57, v171);
  v58 = sub_1ABAB666C();
  v59 = sub_1ABA82ED0();
  (v54)(v59);
  v60 = sub_1ABA95870();
  (v54)(v60);
  if ((v58 & 1) == 0)
  {
    goto LABEL_64;
  }

  v61 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v62 = *(v158 + v61);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB599B8();
  sub_1ABDBFA58();

  if ((v57 & 1) == 0)
  {
    goto LABEL_64;
  }

  v63 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v64 = *(v158 + v63);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB59C20();
  sub_1ABDBFA58();

  v65 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v66 = *(v158 + v65);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB59E88();
  sub_1ABDBFA58();

  v67 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v68 = *(v158 + v67);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB5A0F0();
  sub_1ABDBFA58();

  v69 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v70 = *(v158 + v69);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB5A358();
  sub_1ABDBFA58();

  v71 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v72 = *(v158 + v71);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABDBFA70();

  sub_1ABA8CD18();
  sub_1ABB5A5C0();
  sub_1ABDBFA58();

  v73 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v74 = *(v167 + 16);
  v74(v165, v158 + v73, v168);
  v75 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v74(v166, v39 + v75, v168);
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  v76 = sub_1ABF21894();
  v77 = *(v167 + 8);
  v78 = sub_1ABA954F0();
  v77(v78);
  (v77)(v165, v168);
  if ((v76 & 1) == 0)
  {
    goto LABEL_64;
  }

  v79 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v80 = *(v158 + v79);
  v81 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7EF0C();
  swift_beginAccess();
  if (v80 != *(v159 + v81))
  {
    goto LABEL_64;
  }

  v82 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v83 = *(v155 + 16);
  v84 = v163;
  v83(v163, v158 + v82, v154);
  v85 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v83(v164, v159 + v85, v154);
  sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  LOBYTE(v82) = sub_1ABF21894();
  v86 = *(v155 + 8);
  v86(v164, v154);
  v87 = sub_1ABA8AF68();
  v156 = v155 + 8;
  (v86)(v87);
  if ((v82 & 1) == 0)
  {
    goto LABEL_64;
  }

  v88 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v83(v163, v158 + v88, v154);
  v89 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  sub_1ABA7EF0C();
  swift_beginAccess();
  v83(v164, v159 + v89, v154);
  sub_1ABA7BE8C();
  v90 = sub_1ABF21894();
  v86(v164, v154);
  v86(v163, v154);
  if ((v90 & 1) == 0)
  {
    goto LABEL_64;
  }

  v91 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v92 = *(v163 + v91);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v93)
  {
    goto LABEL_64;
  }

  v94 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v95 = *(v159 + v94);
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v93)
  {
    goto LABEL_64;
  }

  v96 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABDBFB7C();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v97 = *(v159 + v96);
  v98 = v159;
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA9F024();
  if (!v93)
  {
    goto LABEL_64;
  }

  v99 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v100 = *(v159 + v99);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5A828();
  sub_1ABA9E118();

  if ((v163 & 1) == 0)
  {
    goto LABEL_64;
  }

  v101 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadSpeedBuckets;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v102 = *(v159 + v101);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5AB38();
  sub_1ABA9E118();

  v103 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v104 = *(v159 + v103);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5AB50();
  sub_1ABA9E118();

  v105 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v106 = *(v159 + v105);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5ACA8();
  sub_1ABA9E118();

  v107 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v108 = *(v159 + v107);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5AFB8();
  sub_1ABA9E118();

  v109 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v110 = *(v159 + v109);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5B220();
  sub_1ABA9E118();

  v111 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v112 = *(v159 + v111);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5B488();
  sub_1ABA9E118();

  v113 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v114 = *(v159 + v113);
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  sub_1ABA90FFC();

  sub_1ABA8CD18();
  sub_1ABB5B6F0();
  sub_1ABA9E118();

  v115 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v116 = *(v159 + v115);
  v117 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v118 = *(v159 + v117);
  if (v116)
  {
    if (!v118)
    {
      goto LABEL_64;
    }

    sub_1ABB494DC(v119, v118, v120, v121, v122, v123, v124, v125, v154, v156, v157, v158, v159, v160, v162, v163, v164, v165, v166, v167);
    sub_1ABA9E118();

    if ((v84 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if (v118)
  {
    goto LABEL_64;
  }

  v126 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABDBF978();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v127 = *(v98 + v126);
  v128 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
  sub_1ABA9FDE4();
  sub_1ABA7EF0C();
  swift_beginAccess();
  v129 = *(v98 + v128);
  if (!v127)
  {
    if (!v129)
    {
      goto LABEL_31;
    }

LABEL_64:

LABEL_65:
    v151 = 0;
    return v151 & 1;
  }

  if (!v129 || (sub_1ABB4F410(v127, v129) & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_31:
  if ((sub_1ABA953B8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxTripDistanceInMeters) & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((sub_1ABA953B8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters) & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((sub_1ABA953B8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters) & 1) == 0)
  {
    goto LABEL_64;
  }

  if ((sub_1ABA953B8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters) & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);
  sub_1ABB5B958();
  if ((v130 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);
  sub_1ABB5BA20();
  if ((v131 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);
  sub_1ABB5BA38();
  if ((v132 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);
  sub_1ABB5BB00();
  if ((v133 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);
  sub_1ABB5BBC8();
  if ((v134 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
  sub_1ABB5BA20();
  if ((v135 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
  sub_1ABB5B958();
  if ((v136 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
  sub_1ABB5BA20();
  if ((v137 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
  sub_1ABB5BA38();
  if ((v138 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
  sub_1ABB5BB00();
  if ((v139 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
  sub_1ABB5BBC8();
  if ((v140 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);
  sub_1ABB5BA20();
  if ((v141 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
  sub_1ABB5B958();
  if ((v142 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
  sub_1ABB5BA20();
  if ((v143 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);
  sub_1ABB5BA38();
  if ((v144 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);
  sub_1ABB5BB00();
  if ((v145 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);
  sub_1ABB5BBC8();
  if ((v146 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABAA23C8(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);
  sub_1ABB5BA20();
  if ((v147 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents);
  if (!v93)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents);
  if (!v93)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents);
  if (!v93)
  {
    goto LABEL_64;
  }

  sub_1ABA7FD38(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore);
  if (!v93)
  {
    goto LABEL_64;
  }

  v148 = *(v159 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);
  if (!*(v158 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap))
  {
    v153 = *(v159 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);

    if (!v148)
    {
      v151 = 1;
      return v151 & 1;
    }

    goto LABEL_65;
  }

  if (!v148)
  {
    goto LABEL_64;
  }

  v149 = *(v159 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);

  sub_1ABA8CD18();
  sub_1ABB5BD84();
  v151 = v150;

  return v151 & 1;
}

void sub_1ABDAC7D4()
{
  sub_1ABA7BCA8();
  v43 = v1;
  v2 = v0;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D9880, &qword_1ABF613F0);
  sub_1ABA7BB64(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = v4[4];
  sub_1ABA93E20(v4, v4[3]);
  sub_1ABDBD1D8();
  sub_1ABF252E4();
  v14 = sub_1ABA8A40C();
  sub_1ABAD219C(v14, v15);
  sub_1ABA8E394();
  sub_1ABD1044C(v16);
  sub_1ABA88F00();
  v17 = v43;
  sub_1ABF24F84();
  if (v17)
  {
    v18 = *(v7 + 8);
    v19 = sub_1ABA8C744();
    v20(v19);
  }

  else
  {
    v42 = v4;
    v43 = v7;
    sub_1ABA9E230(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters);
    sub_1ABA88F00();
    sub_1ABF24F84();
    sub_1ABA9E230(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters);
    v21 = v5;
    sub_1ABA88F00();
    sub_1ABF24F84();
    sub_1ABA9E230(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);
    v44 = 4;
    v22 = sub_1ABAD219C(&qword_1EB4D9890, &qword_1ABF613F8);
    sub_1ABDBD22C();
    sub_1ABA95928();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v41 = v22;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);
    v44 = 5;
    v23 = sub_1ABAD219C(&qword_1EB4D98A0, &qword_1ABF61400);
    v24 = sub_1ABDBD2B8();
    sub_1ABA95928();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v39 = v23;
    v40 = v24;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);
    v44 = 6;
    v25 = sub_1ABAD219C(&qword_1EB4D98B0, &qword_1ABF61408);
    v26 = sub_1ABDBD344();
    sub_1ABA95928();
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v37 = v26;
    v38 = v25;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);
    v44 = 7;
    v27 = sub_1ABAD219C(&qword_1EB4D98C0, &qword_1ABF61410);
    v28 = sub_1ABDBD3D0();
    sub_1ABA95928();
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v35 = v28;
    v36 = v27;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);
    v44 = 8;
    sub_1ABAD219C(&qword_1EB4D98D0, &qword_1ABF61418);
    sub_1ABDBD45C();
    sub_1ABA95928();
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
    v44 = 9;
    v29 = sub_1ABAD219C(&qword_1EB4D98E0, &qword_1ABF61420);
    sub_1ABDBD4E8();
    sub_1ABA95928();
    v33 = v30;
    v34 = v29;
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v32 = v2;
    sub_1ABA8A0CC(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
    sub_1ABAA4670(10);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
    sub_1ABAA4670(11);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
    sub_1ABAA4670(12);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
    sub_1ABAA4670(13);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
    sub_1ABAA4670(14);
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v45 = *(v32 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);
    sub_1ABAA4670(15);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
    sub_1ABAA4670(16);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
    sub_1ABAA4670(17);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);
    sub_1ABAA4670(18);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);
    sub_1ABAA4670(19);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);
    sub_1ABAA4670(20);
    sub_1ABA892E8();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    v46 = *(v32 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);
    sub_1ABAA4670(21);
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABDBFB50(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore);
    sub_1ABA88A3C();
    sub_1ABF24F54();
    sub_1ABA97908(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);
    v44 = 26;
    sub_1ABAD219C(&qword_1EB4D98F0, &qword_1ABF61428);
    sub_1ABDBD574();
    sub_1ABA95928();
    sub_1ABA88A3C();
    sub_1ABF24F84();
    sub_1ABDA5BD8();
    (*(v43 + 8))(v12, v21);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABDACF28()
{
  v1 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0(v1);
  v3 = *(v2 + 8);
  v4 = sub_1ABAB5B2C();
  v3(v4);
  v5 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters);
  v3(v5);
  v6 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters);
  v3(v6);
  v7 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters);
  v3(v7);
  v8 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);

  v9 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);

  v10 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);

  v11 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);

  v12 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);

  v13 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);

  v14 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);

  v15 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);

  v16 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);

  v17 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);

  v18 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);

  v19 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);

  v20 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);

  v21 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);

  v22 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);

  v23 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);

  v24 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);

  v25 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);

  v26 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);
}

uint64_t KTSDataAggregateRepresentation.deinit()
{
  KTSDataRepresentation.deinit();
  v1 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BBB0(v1);
  v3 = *(v2 + 8);
  v4 = sub_1ABAB5B2C();
  v3(v4);
  v5 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters);
  v3(v5);
  v6 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters);
  v3(v6);
  v7 = sub_1ABA8A56C(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters);
  v3(v7);
  v8 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets);

  v9 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets);

  v10 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);

  v11 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);

  v12 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);

  v13 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);

  v14 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);

  v15 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);

  v16 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);

  v17 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);

  v18 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);

  v19 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);

  v20 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);

  v21 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);

  v22 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed);

  v23 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType);

  v24 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType);

  v25 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType);

  v26 = *(v0 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);

  return v0;
}

uint64_t sub_1ABDAD324(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void (*sub_1ABDAD380(unint64_t a1))(uint64_t, uint64_t)
{
  v4 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v5 = sub_1ABA7BB64(v4);
  v992 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  j = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA88D88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  v988 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA88E50();
  v1006 = v16;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA88E50();
  v993 = v18;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v967 - v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA88E50();
  v989 = v23;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA88E50();
  v996 = v25;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA88E50();
  v994 = v27;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA9E360();
  v1010 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v29 = sub_1ABA7BB64(v1010);
  v1004 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7AC18();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA88E50();
  v1009 = v37;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA88E50();
  v990 = v39;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA88E50();
  v995 = v41;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA88E50();
  v997 = v43;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA88E50();
  v991 = v45;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA972D4();
  v998 = v47;
  v1029 = sub_1ABAD219C(&qword_1EB4D37A0, &unk_1ABF617C0);
  sub_1ABA7BBB0(v1029);
  v49 = *(v48 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  v1019 = v51;
  v52 = sub_1ABAD219C(&qword_1EB4D3798, &unk_1ABF3D800);
  v53 = sub_1ABA7AB80(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7C068();
  v1025 = v56;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA972D4();
  v1028 = v58;
  v59 = sub_1ABAD219C(&qword_1EB4D9980, &qword_1ABF617D0);
  sub_1ABA7AB80(v59);
  v61 = *(v60 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA7FBE0();
  v1027 = v63;
  v1045 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
  sub_1ABA7BBB0(v1045);
  v65 = *(v64 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v66);
  sub_1ABA7FBE0();
  v1036 = v67;
  v68 = sub_1ABAD219C(&qword_1EB4D37C8, &qword_1ABF3D830);
  v69 = sub_1ABA7AB80(v68);
  v71 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABA7C068();
  v1051 = v72;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v73);
  sub_1ABA972D4();
  v1052 = v74;
  v75 = sub_1ABAD219C(&qword_1EB4D9988, &qword_1ABF617D8);
  sub_1ABA7AB80(v75);
  v77 = *(v76 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v78);
  sub_1ABA7FBE0();
  v1049 = v79;
  v1043 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v80 = sub_1ABA7BB64(v1043);
  v1039 = v81;
  v83 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v80);
  sub_1ABA7C068();
  v1018 = v84;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v85);
  sub_1ABA88E50();
  v1030 = v86;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v87);
  sub_1ABA88E50();
  v1024 = v88;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v89);
  sub_1ABA88E50();
  v1015 = v90;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v91);
  sub_1ABA88E50();
  v1047 = v92;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v93);
  sub_1ABA88E50();
  v1026 = v94;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v95);
  sub_1ABA88E50();
  v1037 = v96;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v97);
  sub_1ABA88E50();
  v1003 = v98;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v99);
  sub_1ABA88E50();
  v1054 = v100;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v101);
  sub_1ABA88E50();
  v1021 = v102;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v103);
  sub_1ABA88E50();
  v1038 = v104;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v105);
  sub_1ABA88E50();
  v1031 = v106;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v107);
  sub_1ABA972D4();
  v1005 = v108;
  v109 = sub_1ABAD219C(&qword_1EB4D9990, &unk_1ABF617E0);
  v110 = sub_1ABA7AB80(v109);
  v112 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v110);
  sub_1ABA7C068();
  v1035 = v113;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v114);
  sub_1ABA972D4();
  v1041 = v115;
  v1064 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v116 = sub_1ABA7BB64(v1064);
  v1061 = v117;
  v119 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v116);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v120);
  MEMORY[0x1EEE9AC00](v121);
  MEMORY[0x1EEE9AC00](v122);
  MEMORY[0x1EEE9AC00](v123);
  sub_1ABA88E50();
  v1034 = v124;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v125);
  sub_1ABA88E50();
  k = v126;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v127);
  v129 = &v967 - v128;
  MEMORY[0x1EEE9AC00](v130);
  MEMORY[0x1EEE9AC00](&v967 - v131);
  sub_1ABA88E50();
  v1055 = v132;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v133);
  MEMORY[0x1EEE9AC00](v134);
  MEMORY[0x1EEE9AC00](v135);
  MEMORY[0x1EEE9AC00](v136);
  MEMORY[0x1EEE9AC00](v137);
  MEMORY[0x1EEE9AC00](v138);
  sub_1ABA88E50();
  v1050 = v139;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v140);
  MEMORY[0x1EEE9AC00](v141);
  sub_1ABA88E50();
  v1040 = v142;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v143);
  sub_1ABA88E50();
  v1044 = v144;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v145);
  sub_1ABA88E50();
  v1046 = v146;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v147);
  sub_1ABA88E50();
  v1014 = v148;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v149);
  sub_1ABA972D4();
  v1059 = v161;
  if (!(a1 >> 62))
  {
    v162 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v162)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_611:
  v999 = v160;
  v1000 = v158;
  v984 = v129;
  v985 = v159;
  v983 = v150;
  v973 = v151;
  v976 = v153;
  v977 = v152;
  v975 = v154;
  v958 = v155;
  v1013 = v156;
  v1033 = v157;
  v959 = sub_1ABF24CA4();
  v157 = v1033;
  v156 = v1013;
  v155 = v958;
  v154 = v975;
  v153 = v976;
  v152 = v977;
  v151 = v973;
  v162 = v959;
  v150 = v983;
  v129 = v984;
  v160 = v999;
  v158 = v1000;
  v159 = v985;
  if (!v162)
  {
    return 0;
  }

LABEL_3:
  v1033 = v157;
  v1013 = v156;
  v1032 = v155;
  v975 = v154;
  v976 = v153;
  v977 = v152;
  v978 = v21;
  v973 = v151;
  v974 = j;
  v983 = v150;
  v984 = v129;
  v999 = v160;
  v1000 = v158;
  v985 = v159;
  v981 = v4;
  v982 = v35;
  v979 = v2;
  v980 = v1;
  v1063 = a1;
  v163 = sub_1ABAAB7C8(a1);
  v164 = MEMORY[0x1E69E7CC0];
  v165 = v163 & ~(v163 >> 63);
  v1060 = v163;
  if (v163)
  {
    v166 = v163;
    v1087 = MEMORY[0x1E69E7CC0];
    sub_1ABADE01C(0, v165, 0);
    if (v166 < 0)
    {
LABEL_615:
      __break(1u);
      goto LABEL_616;
    }

    v167 = 0;
    v168 = v1087;
    v169 = v1063 & 0xC000000000000001;
    do
    {
      if (v169)
      {
        v35 = MEMORY[0x1AC5AA170](v167, v1063);
      }

      else
      {
        sub_1ABA8B954(v1063 + 8 * v167);
      }

      sub_1ABA7EF0C();
      swift_beginAccess();
      v170 = *(v35 + 16);

      v1087 = v168;
      v172 = *(v168 + 16);
      v171 = *(v168 + 24);
      v35 = v172 + 1;
      if (v172 >= v171 >> 1)
      {
        sub_1ABA7BBEC(v171);
        sub_1ABAA0DB0();
        sub_1ABADE01C(v174, v175, v176);
        v168 = v1087;
      }

      ++v167;
      *(v168 + 16) = v35;
      *(v168 + 8 * v172 + 32) = v170;
      sub_1ABA89B74();
    }

    while (!v173);
  }

  else
  {
    v168 = MEMORY[0x1E69E7CC0];
  }

  j = sub_1ABD9E114(v168);
  v178 = v177;

  v35 = v1060;
  v971 = j;
  HIDWORD(v972) = v178;
  if (v1060)
  {
    v1086 = v164;
    sub_1ABADE01C(0, v165, 0);
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_616:
      __break(1u);
      goto LABEL_617;
    }

    v179 = 0;
    v180 = v1086;
    v181 = v1063;
    v1062 = v1063 & 0xC000000000000001;
    do
    {
      if (v1062)
      {
        v182 = MEMORY[0x1AC5AA170](v179, v181);
      }

      else
      {
        v182 = *(v181 + 8 * v179 + 32);
      }

      sub_1ABA7EF0C();
      swift_beginAccess();
      v183 = *(v182 + 24);

      v1086 = v180;
      v185 = *(v180 + 16);
      v184 = *(v180 + 24);
      j = v185 + 1;
      if (v185 >= v184 >> 1)
      {
        v186 = sub_1ABA7BBEC(v184);
        sub_1ABADE01C(v186, v185 + 1, 1);
        v180 = v1086;
      }

      ++v179;
      *(v180 + 16) = j;
      *(v180 + 8 * v185 + 32) = v183;
    }

    while (v35 != v179);
  }

  else
  {
    v181 = v1063;
    v1062 = v1063 & 0xC000000000000001;
    v180 = MEMORY[0x1E69E7CC0];
  }

  v969 = sub_1ABD23888(v180);
  HIDWORD(v970) = v187;

  v188 = 0;
  v189 = v181 & 0xFFFFFFFFFFFFFF8;
  v21 = MEMORY[0x1E69E7CC0];
  v190 = &unk_1EB549000;
  v1017 = v189;
  while (v162 != v188)
  {
    if (v1062)
    {
      v35 = MEMORY[0x1AC5AA170](v188, v1063);
    }

    else
    {
      if (v188 >= *(v189 + 16))
      {
        goto LABEL_250;
      }

      sub_1ABA8B954(v1063 + 8 * v188);
    }

    if (__OFADD__(v188, 1))
    {
      goto LABEL_249;
    }

    v191 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    j = *(v35 + v191);

    ++v188;
    if (j)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80F18();
        sub_1ABADBF80();
        v21 = v193;
      }

      v189 = *(v21 + 16);
      v192 = *(v21 + 24);
      v188 = v189 + 1;
      if (v189 >= v192 >> 1)
      {
        sub_1ABA7BBEC(v192);
        sub_1ABADBF80();
        v21 = v194;
      }

      sub_1ABA8D40C();
    }
  }

  v1085 = MEMORY[0x1E69E7CC0];
  j = sub_1ABA8DEE8(v21);
  for (i = 0; j != i; i = v196)
  {
    if (i >= *(v21 + 16))
    {
      goto LABEL_251;
    }

    v196 = i + 1;
    v197 = *(v21 + 8 * i + 32);

    sub_1ABD7DAF4(v198);
  }

  v199 = 0;
  v1011 = v1085;
  v21 = MEMORY[0x1E69E7CC0];
  v190 = &unk_1EB549000;
  while (v162 != v199)
  {
    if (v1062)
    {
      v35 = MEMORY[0x1AC5AA170](v199, v1063);
    }

    else
    {
      if (v199 >= *(v189 + 16))
      {
        goto LABEL_253;
      }

      sub_1ABA8B954(v1063 + 8 * v199);
    }

    if (__OFADD__(v199, 1))
    {
      goto LABEL_252;
    }

    v200 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    j = *(v35 + v200);

    ++v199;
    if (j)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA80F18();
        sub_1ABADBF80();
        v21 = v202;
      }

      v189 = *(v21 + 16);
      v201 = *(v21 + 24);
      v199 = v189 + 1;
      if (v189 >= v201 >> 1)
      {
        sub_1ABA7BBEC(v201);
        sub_1ABADBF80();
        v21 = v203;
      }

      sub_1ABA8D40C();
    }
  }

  v1084 = MEMORY[0x1E69E7CC0];
  j = sub_1ABA8DEE8(v21);
  v204 = 0;
  v35 = v1060;
  while (j != v204)
  {
    if (v204 >= *(v21 + 16))
    {
      goto LABEL_254;
    }

    v205 = v204 + 1;
    v206 = *(v21 + 8 * v204 + 32);

    sub_1ABD7DAF4(v207);
    v204 = v205;
  }

  v987 = v1084;
  v208 = sub_1ABA8DEE8(v1011);
  v21 = MEMORY[0x1E69E7CC0];
  v1001 = v162;
  v1023 = v208;
  if (v35)
  {
    v1083 = MEMORY[0x1E69E7CC0];
    sub_1ABA95190();
    v209 = &v1083;
    sub_1ABDB47E8(v35, v210);
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_617:
      __break(1u);
LABEL_618:
      __break(1u);
LABEL_619:
      __break(1u);
LABEL_620:
      __break(1u);
LABEL_621:
      __break(1u);
LABEL_622:
      __break(1u);
LABEL_623:
      __break(1u);
LABEL_624:
      __break(1u);
LABEL_625:
      __break(1u);
LABEL_626:
      __break(1u);
LABEL_627:
      __break(1u);
LABEL_628:
      __break(1u);
LABEL_629:
      __break(1u);
LABEL_630:
      __break(1u);
LABEL_631:
      __break(1u);
LABEL_632:
      v961 = sub_1ABA7ABE4();
      sub_1ABDB445C(v961, v962);
      __break(1u);
LABEL_633:
      __break(1u);
LABEL_634:
      __break(1u);
LABEL_635:
      __break(1u);
      goto LABEL_636;
    }

    v211 = 0;
    v212 = (v1061 + 16);
    do
    {
      if (v1062)
      {
        v209 = MEMORY[0x1AC5AA170](v211, v1063);
      }

      else
      {
        sub_1ABA842C4(v1063 + 8 * v211);
      }

      v213 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*v212)(v1059, &v209[v213], v1064);

      v209 = v1083;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE914();
        v209 = v1083;
      }

      v215 = *(v209 + 2);
      v214 = *(v209 + 3);
      if (v215 >= v214 >> 1)
      {
        sub_1ABA7BBEC(v214);
        sub_1ABAA0DB0();
        sub_1ABADE914();
        v209 = v1083;
      }

      ++v211;
      *(v209 + 2) = v215 + 1;
      sub_1ABA7AD90();
      (*(v217 + 32))(&v209[v216 + *(v217 + 72) * v215], v1059, v1064);
      sub_1ABA89B74();
    }

    while (!v173);
    v1016 = v209;
    v1082[0] = v21;
    v218 = v1082;
    sub_1ABDB47E8(v1060, sub_1ABADE8D4);
    v219 = 0;
    v190 = &unk_1EB549000;
    v162 = v1020;
    do
    {
      if (v1062)
      {
        v218 = MEMORY[0x1AC5AA170](v219, v1063);
      }

      else
      {
        sub_1ABA842C4(v1063 + 8 * v219);
      }

      v220 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v221 = *(v218 + v220);

      v21 = v1082[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v222 = *(v21 + 16);
        v218 = v1082;
        sub_1ABA83F84();
        sub_1ABADE8D4();
        v21 = v1082[0];
      }

      v224 = *(v21 + 16);
      v223 = *(v21 + 24);
      v35 = v224 + 1;
      if (v224 >= v223 >> 1)
      {
        sub_1ABA7BBEC(v223);
        v218 = v1082;
        sub_1ABAA0DB0();
        sub_1ABADE8D4();
        v21 = v1082[0];
      }

      ++v219;
      *(v21 + 16) = v35;
      *(v21 + 8 * v224 + 32) = v221;
      sub_1ABA89B74();
    }

    while (!v173);
  }

  else
  {
    v1016 = MEMORY[0x1E69E7CC0];
    v162 = v1020;
  }

  sub_1ABDB4878();
  v225 = sub_1ABF239C4();
  v226 = sub_1ABA8DEE8(v21);
  for (j = 0; v226 != j; ++j)
  {
    v227 = sub_1ABACFA90();
    sub_1ABC43DF0(j, v227 & 1, v21);
    if (v227)
    {
      v228 = *(v21 + 8 * j + 32);
    }

    else
    {
      v228 = sub_1ABDB4684(j, v21);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_255;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1082[0] = v225;
    v129 = v162;
    sub_1ABDB914C(v228, sub_1ABDBF6E4, 0, isUniquelyReferenced_nonNull_native, v1082);
    if (v162)
    {
      goto LABEL_673;
    }

    v225 = v1082[0];
  }

  v230 = objc_opt_self();
  v231 = [v230 meters];
  v232 = sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  v233 = v1046;
  v1048 = v232;
  sub_1ABF218B4();
  v234 = v1061;
  v236 = v1061 + 16;
  v235 = *(v1061 + 16);
  v237 = v1044;
  v235(v1044, v233, v1064);
  v238 = sub_1ABA8DEE8(v1016);
  v1053 = v236;
  v1059 = v235;
  v986 = v225;
  v1022 = v230;
  if (v238)
  {
    v239 = v238;
    if (v238 < 1)
    {
      goto LABEL_618;
    }

    v1020 = v162;
    v240 = *(v234 + 80);
    sub_1ABA7AB74();
    v242 = v1016 + v241;
    v1058 = *(v234 + 72);
    v243 = (v234 + 8);
    v244 = v1064;
    v1057 = (v234 + 32);
    v1042 = (v234 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v245 = v1040;
    do
    {
      v1059(v245, v242, v244);
      sub_1ABF218D4();
      v246 = *v243;
      (*v243)(v245, v244);
      v246(v237, v244);
      v247 = *v1057;
      v248 = sub_1ABA90200();
      v249(v248);
      v242 += v1058;
      --v239;
    }

    while (v239);
    v250 = v244;
    v251 = v1042;
    v162 = v1020;
    v234 = v1061;
  }

  else
  {
    v246 = *(v234 + 8);
    v251 = (v234 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v250 = v1064;
  }

  v1042 = v251;
  v1040 = v246;
  v246(v1046, v250);
  v253 = v234 + 32;
  v252 = *(v234 + 32);
  v254 = sub_1ABA954F0();
  v252(v254);
  v255 = v1041;
  sub_1ABD23910();
  if (sub_1ABA7E1E0(v255, 1, v250) == 1)
  {

    sub_1ABAB480C(v255, &qword_1EB4D9990, &unk_1ABF617E0);
    v256 = 0x80000001ABF90350;
    sub_1ABDBF718();
    v257 = swift_allocError();
    sub_1ABA9E970(v257, v258);
    v1040(v1014, v250);
    return v256;
  }

  v259 = v255;
  v260 = v250;
  v1057 = v252;
  (v252)(v999, v259, v250);
  sub_1ABF21874();
  v1058 = v253;
  v261 = v1060;
  v1020 = v162;
  if (v1060)
  {
    v1081[0] = MEMORY[0x1E69E7CC0];
    sub_1ABA95190();
    v262 = v1081;
    sub_1ABDB47E8(v261, v263);
    if (v261 < 0)
    {
LABEL_636:
      __break(1u);
      goto LABEL_637;
    }

    v264 = 0;
    v265 = v1063;
    v266 = v1057;
    do
    {
      if (v1062)
      {
        v262 = MEMORY[0x1AC5AA170](v264, v265);
      }

      else
      {
        sub_1ABA842C4(v265 + 8 * v264);
      }

      v267 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v1059(v1055, v262 + v267, v250);

      v162 = v1081[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v268 = *(v162 + 16);
        v262 = v1081;
        sub_1ABA83F84();
        sub_1ABADE914();
        v162 = v1081[0];
      }

      v270 = *(v162 + 16);
      v269 = *(v162 + 24);
      if (v270 >= v269 >> 1)
      {
        sub_1ABA7BBEC(v269);
        v262 = v1081;
        sub_1ABAA04C0();
        sub_1ABADE914();
        v162 = v1081[0];
      }

      ++v264;
      *(v162 + 16) = v270 + 1;
      sub_1ABA7AD90();
      v273 = v162 + v271 + *(v272 + 72) * v270;
      v250 = v260;
      v266(v273, v1055, v260);
      sub_1ABA89B74();
      v265 = v1063;
    }

    while (!v173);
    v274 = v1061;
  }

  else
  {
    v162 = MEMORY[0x1E69E7CC0];
    v274 = v1061;
  }

  v275 = [v1022 meters];
  v276 = v1033;
  sub_1ABF218B4();
  v1059(v1032, v276, v250);
  v277 = sub_1ABA8DEE8(v162);
  v968 = v162;
  if (v277)
  {
    v278 = v277;
    if (v277 < 1)
    {
LABEL_637:
      __break(1u);
LABEL_638:
      v963 = sub_1ABA7ABE4();
      sub_1ABDB445C(v963, v964);
      __break(1u);
LABEL_639:
      __break(1u);
LABEL_640:
      __break(1u);
LABEL_641:
      __break(1u);
LABEL_642:
      v965 = sub_1ABA7ABE4();
      sub_1ABDB445C(v965, v966);
      __break(1u);
LABEL_643:
      __break(1u);
LABEL_644:
      __break(1u);
LABEL_645:
      __break(1u);
LABEL_646:
      __break(1u);
LABEL_647:
      __break(1u);
LABEL_648:
      __break(1u);
      goto LABEL_649;
    }

    v279 = *(v274 + 80);
    sub_1ABA7AB74();
    v281 = v162 + v280;
    v1055 = *(v274 + 72);
    v282 = v1032;
    v283 = v1013;
    v284 = v1040;
    do
    {
      v1059(v283, v281, v260);
      sub_1ABF218D4();
      v284(v283, v260);
      v285 = sub_1ABA8EF78();
      (v284)(v285);
      v286 = sub_1ABA8A354();
      v1057(v286);
      v281 += v1055;
      --v278;
    }

    while (v278);
  }

  else
  {
    v260 = v250;
    v282 = v1032;
  }

  v1040(v1033, v260);
  v287 = v985;
  v288 = v1057;
  (v1057)(v985, v282, v260);
  v289 = v1035;
  sub_1ABD23910();
  if (sub_1ABA7E1E0(v289, 1, v260) == 1)
  {

    sub_1ABAB480C(v289, &qword_1EB4D9990, &unk_1ABF617E0);
    sub_1ABDBF718();
    v290 = swift_allocError();
    sub_1ABA9E970(v290, v291);
    v256 = v1040;
    v1040(v287, v260);
    v256(v1000, v260);
    v256(v999, v260);
    v256(v1014, v260);
    return v256;
  }

  sub_1ABAB0FB8();
  v288();
  sub_1ABF21874();
  v292 = v1060;
  if (v1060)
  {
    v1080 = MEMORY[0x1E69E7CC0];
    sub_1ABAA006C();
    v293 = &v1080;
    v295 = sub_1ABDB47E8(v292, v294);
    v296 = v1043;
    v162 = v1024;
    if (v292 < 0)
    {
LABEL_649:
      __break(1u);
      goto LABEL_650;
    }

    v297 = 0;
    v298 = (v1039 + 16);
    v299 = v1063;
    do
    {
      if (v1062)
      {
        v293 = MEMORY[0x1AC5AA170](v297, v299);
      }

      else
      {
        sub_1ABA82B2C(v295, v299);
      }

      v300 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*v298)(v1054, &v293[v300], v296);

      v293 = v1080;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE894();
        v293 = v1080;
      }

      v302 = *(v293 + 2);
      v301 = *(v293 + 3);
      if (v302 >= v301 >> 1)
      {
        sub_1ABA7BBEC(v301);
        sub_1ABADE894();
        v293 = v1080;
      }

      ++v297;
      *(v293 + 2) = v302 + 1;
      sub_1ABA7AD90();
      v304 = sub_1ABA9DFD8(v303);
      v295 = (*(v305 + 32))(v304, v1054, v296);
      v292 = v1060;
      v299 = v1063;
    }

    while (v1060 != v297);
  }

  else
  {
    v293 = sub_1ABAE8EC4(0);
    v162 = v1024;
  }

  v306 = objc_opt_self();
  v307 = [v306 seconds];
  v1023 = sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  v308 = v1031;
  sub_1ABF218B4();
  v309 = v1039;
  v310 = v1039 + 16;
  v311 = *(v1039 + 16);
  v311(v1038, v308, v1043);
  v312 = sub_1ABA8DEE8(v293);
  v1033 = v310;
  v1032 = v311;
  v1046 = v306;
  if (v312)
  {
    v313 = v312;
    if (v312 < 1)
    {
LABEL_650:
      __break(1u);
      goto LABEL_651;
    }

    sub_1ABA7AD90();
    v1044 = v293;
    v315 = &v293[v314];
    v1055 = *(v316 + 72);
    v317 = (v316 + 8);
    v1054 = (v316 + 32);
    v1022 = ((v316 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v318 = v1043;
    v319 = v1021;
    do
    {
      sub_1ABDBFB70();
      v320();
      sub_1ABF218D4();
      v321 = *v317;
      (*v317)(v319, v318);
      v322 = sub_1ABA95870();
      v321(v322);
      v323 = sub_1ABDBFBB8();
      v324(v323);
      v315 += v1055;
      --v313;
    }

    while (v313);

    v325 = v318;
    v326 = v1022;
    v310 = v1033;
    v311 = v1032;
    v292 = v1060;
    v309 = v1039;
    v162 = v1024;
  }

  else
  {

    v321 = *(v309 + 8);
    v326 = ((v309 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v325 = v1043;
  }

  v1021 = v321;
  v1022 = v326;
  (v321)(v1031, v325);
  v1041 = *(v309 + 32);
  v1024 = v309 + 32;
  v1041(v1005, v1038, v325);
  if (v292)
  {
    v1079 = MEMORY[0x1E69E7CC0];
    sub_1ABAA006C();
    v327 = &v1079;
    sub_1ABDB47E8(v292, v328);
    if (v292 < 0)
    {
LABEL_651:
      __break(1u);
      goto LABEL_652;
    }

    v329 = 0;
    v330 = v1063;
    v331 = v1043;
    do
    {
      if (v1062)
      {
        v327 = MEMORY[0x1AC5AA170](v329, v330);
      }

      else
      {
        sub_1ABA842C4(v330 + 8 * v329);
      }

      v332 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v311(v162, v327 + v332, v331);

      v327 = v1079;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE894();
        v327 = v1079;
      }

      v334 = v327[2];
      v333 = v327[3];
      if (v334 >= v333 >> 1)
      {
        sub_1ABA7BBEC(v333);
        sub_1ABAA04C0();
        sub_1ABADE894();
        v327 = v1079;
      }

      ++v329;
      v327[2] = v334 + 1;
      sub_1ABA7AD90();
      sub_1ABA9DFD8(v335);
      v331 = v1043;
      sub_1ABA88FE0();
      v336();
      sub_1ABA89B74();
      v330 = v1063;
    }

    while (!v173);
  }

  else
  {
    v327 = sub_1ABAE8EC4(0);
    v331 = v1043;
  }

  v337 = [v1046 seconds];
  sub_1ABF218B4();
  sub_1ABAB0FB8();
  (v311)();
  v338 = sub_1ABA8DEE8(v327);
  v1054 = v327;
  if (v338)
  {
    v310 = v338;
    if (v338 < 1)
    {
LABEL_652:
      __break(1u);
      goto LABEL_653;
    }

    sub_1ABA7AD90();
    v340 = v327 + v339;
    v1055 = *(v341 + 72);
    v331 = v1043;
    do
    {
      sub_1ABAB0FB8();
      sub_1ABDBFB70();
      v342();
      sub_1ABF218D4();
      v343 = sub_1ABA82DAC();
      v344 = v1021;
      v1021(v343);
      v345 = sub_1ABA8A40C();
      v344(v345);
      sub_1ABA954F0();
      sub_1ABA88FE0();
      v346();
      v340 += v1055;
      --v310;
    }

    while (v310);
  }

  (v1021)(v1026, v331);
  sub_1ABA88FE0();
  v347();
  v190 = v1060;
  if (v1060)
  {
    v1078 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v1060, sub_1ABADE854);
    v162 = v1020;
    if (v190 < 0)
    {
LABEL_653:
      __break(1u);
LABEL_654:
      __break(1u);
      goto LABEL_655;
    }

    sub_1ABDBFAD8();
    v35 = v1045;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](v310);
      }

      else
      {
        sub_1ABA82B2C(v348, v349);
      }

      v350 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v351 = v1078;
      v348 = swift_isUniquelyReferenced_nonNull_native();
      if ((v348 & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE854();
        v351 = v1078;
      }

      v349 = v1063;
      v353 = *(v351 + 16);
      v352 = *(v351 + 24);
      v354 = v351;
      if (v353 >= v352 >> 1)
      {
        sub_1ABA7BBEC(v352);
        sub_1ABAA04C0();
        sub_1ABADE854();
        v349 = v1063;
        v354 = v1078;
      }

      ++v310;
      *(v354 + 16) = v353 + 1;
      *(v354 + 8 * v353 + 32) = v350;
      v355 = v1061;
      j = v1058;
    }

    while (v190 != v310);
    v356 = v354;
  }

  else
  {
    v356 = sub_1ABAE8E58(0);
    v162 = v1020;
    v35 = v1045;
    v355 = v1061;
    j = v1058;
  }

  v1007 = sub_1ABA8DEE8(v356);
  v1008 = v356;
  v1015 = 0;
  v1002 = v356 + 32;
  v357 = MEMORY[0x1E69E7CC8];
  v1031 = (v355 + 40);
  v358 = v1063;
  while (1)
  {
    v359 = v1015;
    if (v1015 == v1007)
    {
      goto LABEL_204;
    }

    v360 = v1008;
    v361 = sub_1ABACFA90();
    sub_1ABC43DF0(v359, v361 & 1, v360);
    if (v361)
    {
      v362 = *(v1002 + 8 * v359);
    }

    else
    {
      v362 = sub_1ABDB4570(v359, v1008);
    }

    v358 = v1052;
    v363 = __OFADD__(v359, 1);
    v364 = v359 + 1;
    if (v363)
    {
      __break(1u);
      goto LABEL_615;
    }

    v1015 = v364;
    v1020 = v162;
    LODWORD(v1055) = swift_isUniquelyReferenced_nonNull_native();
    v1078 = v357;
    sub_1ABAB4C0C(v362, sub_1ABDBCFD8, 0, v1088);
    v129 = v1088[1];
    v1044 = v1088[0];
    v365 = v1090;
    v366 = v1091;
    v1035 = v1092;
    v1038 = v1093;
    v1012 = v1089;
    v1013 = v362;
    v1026 = ((v1089 + 64) >> 6);

    v1046 = v129;
LABEL_178:
    v1047 = v366;
    if (v366)
    {
      v367 = v357;
      v368 = v365;
      goto LABEL_185;
    }

    v190 = v365;
    v162 = v1049;
LABEL_181:
    v368 = v190 + 1;
    if (__OFADD__(v190, 1))
    {
      break;
    }

    if (v368 >= v1026)
    {
      v1054 = 0;
      v377 = 1;
      goto LABEL_186;
    }

    ++v190;
    if (!*&v129[8 * v368])
    {
      goto LABEL_181;
    }

    v367 = v357;
LABEL_185:
    sub_1ABDBFAFC();
    v1054 = v369;
    v371 = v370 | (v368 << 6);
    v372 = *(v1044[6] + v371);
    v373 = v1050;
    v374 = v1064;
    v1059(v1050, (v1044[7] + *(v1061 + 72) * v371), v1064);
    v375 = *(v35 + 48);
    v376 = v1052;
    *v1052 = v372;
    v358 = v376;
    (v1057)(v376 + v375, v373, v374);
    v377 = 0;
    v190 = v368;
    v357 = v367;
    v162 = v1049;
LABEL_186:
    v378 = 1;
    sub_1ABA7B9B4(v358, v377, 1, v35);
    v379 = v358;
    v380 = v1051;
    sub_1ABBD898C(v379, v1051, &qword_1EB4D37C8, &qword_1ABF3D830);
    if (sub_1ABA7E1E0(v380, 1, v35) != 1)
    {
      v381 = v1036;
      sub_1ABBD898C(v1051, v1036, &qword_1EB4D37D0, &qword_1ABF3D838);
      (v1035)(v381);
      sub_1ABAB480C(v381, &qword_1EB4D37D0, &qword_1ABF3D838);
      v378 = 0;
    }

    v382 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
    sub_1ABA7B9B4(v162, v378, 1, v382);
    v383 = sub_1ABA7BC4C();
    v385 = sub_1ABAD219C(v383, v384);
    if (sub_1ABA7E1E0(v162, 1, v385) != 1)
    {
      v21 = *v162;
      v35 = v1057;
      j = v1058;
      (v1057)(k, v162 + *(v385 + 48), v1064);
      v387 = sub_1ABAFF5B8(v21);
      v388 = v357[2];
      v389 = (v386 & 1) == 0;
      v390 = v388 + v389;
      if (__OFADD__(v388, v389))
      {
        __break(1u);
        goto LABEL_218;
      }

      v162 = v386;
      if (v357[3] < v390)
      {
        sub_1ABC05850(v390, v1055 & 1);
        v391 = sub_1ABAFF5B8(v21);
        if ((v162 & 1) == (v392 & 1))
        {
          v387 = v391;
          goto LABEL_195;
        }

LABEL_672:
        sub_1ABF25104();
        __break(1u);
LABEL_673:

        goto LABEL_674;
      }

      if ((v1055 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55E0, &qword_1ABF617F0);
        sub_1ABF24C74();
      }

LABEL_195:
      v357 = v1078;
      if (v162)
      {
        v393 = v1061;
        v394 = *(v1078 + 56) + *(v1061 + 72) * v387;
        v1047 = v1078;
        v395 = v1064;
        v1059(v1034, v394, v1064);
        v396 = k;
        sub_1ABF218D4();
        v397 = sub_1ABA90200();
        v398 = v1040;
        (v1040)(v397);
        v398(v396, v395);
        v357 = v1047;
        v399 = v1047[7];
        v400 = *(v393 + 40);
        j = v1058;
        sub_1ABDBF9A8();
        v401();
        goto LABEL_199;
      }

      *(v1078 + 8 * (v387 >> 6) + 64) |= 1 << v387;
      *(v357[6] + v387) = v21;
      (v35)(v357[7] + *(v1061 + 72) * v387, k, v1064);
      v402 = v357[2];
      v363 = __OFADD__(v402, 1);
      v403 = v402 + 1;
      if (v363)
      {
        __break(1u);
LABEL_270:
        __break(1u);
        goto LABEL_271;
      }

      v357[2] = v403;
LABEL_199:
      LODWORD(v1055) = 1;
      v365 = v190;
      v366 = v1054;
      v35 = v1045;
      v358 = v1052;
      v129 = v1046;
      goto LABEL_178;
    }

    sub_1ABAB4C48();

    v358 = v1063;
    v162 = v1020;
    v190 = v1060;
    j = v1058;
  }

  __break(1u);
LABEL_204:

  v1047 = v357;
  if (!v190)
  {
LABEL_218:

    v406 = sub_1ABAE8E44(0);
    v1 = v1024;
    goto LABEL_219;
  }

  v1077 = MEMORY[0x1E69E7CC0];

  v404 = sub_1ABDB47E8(v190, sub_1ABADE814);
  if (v190 < 0)
  {
    goto LABEL_654;
  }

  v405 = v358;
  do
  {
    if (v1062)
    {
      MEMORY[0x1AC5AA170](0, v405);
    }

    else
    {
      sub_1ABA82B2C(v404, v405);
    }

    j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtRelativeSpeeds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABA9E87C();

    v406 = v1077;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA9F048();
      sub_1ABA83F84();
      sub_1ABADE814();
      v406 = v1077;
    }

    v35 = v406[2];
    v407 = v406[3];
    if (v35 >= v407 >> 1)
    {
      sub_1ABA7BBEC(v407);
      sub_1ABAA04C0();
      sub_1ABADE814();
      v406 = v1077;
    }

    sub_1ABAA3D9C();
    v1 = v1024;
  }

  while (!v173);
LABEL_219:
  v1036 = sub_1ABA8DEE8(v406);
  v21 = 0;
  v1035 = (v406 + 4);
  v1061 = MEMORY[0x1E69E7CC8];
  v1048 = v1039 + 40;
  v1031 = v406;
LABEL_220:
  if (v21 == v1036)
  {
    goto LABEL_256;
  }

  v408 = sub_1ABACFA90();
  v409 = v406;
  v410 = v408;
  sub_1ABC43DF0(v21, v408 & 1, v409);
  if (v410)
  {
    j = *(v1035 + 8 * v21);
  }

  else
  {
    j = sub_1ABDB4570(v21, v1031);
  }

  v1020 = v162;
  v1045 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_619;
  }

  v411 = v1061;
  LODWORD(v35) = swift_isUniquelyReferenced_nonNull_native();
  v1077 = v411;
  sub_1ABAB4C0C(j, sub_1ABDBCF58, 0, v1094);
  v129 = v1094[1];
  v1052 = v1094[0];
  v21 = v1096;
  v412 = v1097;
  v1049 = v1098;
  v1051 = v1099;
  v1038 = v1095;
  v1046 = ((v1095 + 64) >> 6);
  v1044 = j;

  v162 = v1027;
  for (k = v129; ; v129 = k)
  {
    v413 = v1028;
    v414 = v1029;
    LODWORD(v1058) = v35;
    v1055 = v21;
    v1054 = v412;
    if (!v412)
    {
      break;
    }

    v415 = v21;
LABEL_230:
    sub_1ABDBFAFC();
    v1057 = v416;
    v418 = v417 | (v415 << 6);
    v419 = *(*(v1052 + 48) + v418);
    v420 = *(v1052 + 56) + *(v1039 + 72) * v418;
    v421 = v1037;
    v422 = v1043;
    sub_1ABDBFB70();
    v423();
    v425 = v1028;
    v424 = v1029;
    v426 = *(v1029 + 48);
    *v1028 = v419;
    v1041(&v425[v426], v421, v422);
    v413 = v425;
    v414 = v424;
    v427 = 0;
    v21 = v415;
    v190 = v1060;
    v162 = v1027;
LABEL_231:
    v428 = 1;
    v429 = v413;
    sub_1ABA7B9B4(v413, v427, 1, v414);
    v430 = v429;
    v431 = v1025;
    sub_1ABBD898C(v430, v1025, &qword_1EB4D3798, &unk_1ABF3D800);
    if (sub_1ABA7E1E0(v431, 1, v414) != 1)
    {
      v432 = v1019;
      j = v1;
      sub_1ABBD898C(v1025, v1019, &qword_1EB4D37A0, &unk_1ABF617C0);
      (v1049)(v432);
      v433 = sub_1ABA894A0();
      sub_1ABAB480C(v433, v434, &unk_1ABF617C0);
      v428 = 0;
    }

    v35 = &qword_1ABF335A0;
    v435 = sub_1ABAD219C(&qword_1EB4D1418, &qword_1ABF335A0);
    sub_1ABA7B9B4(v162, v428, 1, v435);
    v436 = sub_1ABA894A0();
    v438 = sub_1ABAD219C(v436, v437);
    if (sub_1ABA7E1E0(v162, 1, v438) == 1)
    {
      sub_1ABAB4C48();

      v162 = v1020;
      v406 = v1031;
      v21 = v1045;
      goto LABEL_220;
    }

    v2 = *v162;
    v1041(v1030, v162 + *(v438 + 48), v1043);
    v4 = v1061;
    j = sub_1ABAFF5B8(v2);
    v440 = v4[2];
    v441 = (v439 & 1) == 0;
    v442 = v440 + v441;
    if (__OFADD__(v440, v441))
    {
      goto LABEL_270;
    }

    v162 = v439;
    if (v4[3] >= v442)
    {
      if ((v1058 & 1) == 0)
      {
        sub_1ABAD219C(&qword_1EB4D55D0, &qword_1ABF4ABC0);
        v4 = &v1077;
        sub_1ABF24C74();
      }
    }

    else
    {
      sub_1ABC0582C(v442, v1058 & 1);
      v4 = v1077;
      v443 = sub_1ABAFF5B8(v2);
      if ((v162 & 1) != (v444 & 1))
      {
        goto LABEL_672;
      }

      j = v443;
    }

    a1 = v1077;
    v1061 = v1077;
    if (v162)
    {
      v445 = *(v1077 + 56);
      v446 = v1039;
      v1058 = *(v1039 + 72) * j;
      j = v1043;
      sub_1ABDBFB70();
      v447();
      v448 = v1037;
      sub_1ABF218D4();
      v449 = sub_1ABA7BC4C();
      v450 = v1021;
      v1021(v449);
      v451 = sub_1ABAA030C();
      v450(v451);
      v452 = *(v446 + 40);
      v1 = v1024;
      v452(*(a1 + 56) + v1058, v448, j);
    }

    else
    {
      *(v1077 + 8 * (j >> 6) + 64) |= 1 << j;
      *(*(a1 + 48) + j) = v2;
      v150 = (v1041)(*(a1 + 56) + *(v1039 + 72) * j, v1030, v1043);
      v453 = *(a1 + 16);
      v363 = __OFADD__(v453, 1);
      v454 = v453 + 1;
      if (v363)
      {
        __break(1u);
        goto LABEL_611;
      }

      *(a1 + 16) = v454;
    }

    LODWORD(v35) = 1;
    v412 = v1057;
    v190 = v1060;
    v162 = v1027;
  }

  while (1)
  {
    v415 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v415 >= v1046)
    {
      v1057 = 0;
      v427 = 1;
      goto LABEL_231;
    }

    ++v21;
    if (*&v129[8 * v415])
    {
      goto LABEL_230;
    }
  }

  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
LABEL_253:
  __break(1u);
LABEL_254:
  __break(1u);
LABEL_255:
  __break(1u);
LABEL_256:

  if (v190)
  {
    v1076 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v190, sub_1ABADE7D4);
    if ((v190 & 0x8000000000000000) == 0)
    {
      sub_1ABDBFAD8();
      do
      {
        if (v1062)
        {
          MEMORY[0x1AC5AA170](v21);
        }

        else
        {
          sub_1ABA82B2C(v455, v456);
        }

        j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
        sub_1ABA7EF0C();
        swift_beginAccess();
        sub_1ABA9E87C();

        v457 = v1076;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA9F048();
          sub_1ABA83F84();
          sub_1ABADE7D4();
          v457 = v1076;
        }

        sub_1ABA8ADCC();
        if (v459)
        {
          sub_1ABA7BBEC(v458);
          sub_1ABAA04C0();
          sub_1ABADE7D4();
          v457 = v1076;
        }

        sub_1ABA8CBA4();
      }

      while (!v173);
      goto LABEL_272;
    }

LABEL_655:
    __break(1u);
LABEL_656:
    __break(1u);
LABEL_657:
    __break(1u);
LABEL_658:
    __break(1u);
LABEL_659:
    __break(1u);
LABEL_660:
    __break(1u);
LABEL_661:
    __break(1u);
LABEL_662:
    __break(1u);
LABEL_663:
    __break(1u);
LABEL_664:
    __break(1u);
LABEL_665:
    __break(1u);
LABEL_666:
    __break(1u);
LABEL_667:
    __break(1u);
LABEL_668:
    __break(1u);
LABEL_669:
    __break(1u);
LABEL_670:
    __break(1u);
LABEL_671:
    __break(1u);
    goto LABEL_672;
  }

LABEL_271:
  v457 = sub_1ABAE8E30(0);
LABEL_272:
  sub_1ABA8DEE8(v457);
  sub_1ABA8A418();
  v1058 = MEMORY[0x1E69E7CC8];
  while (v21 != j)
  {
    sub_1ABACFA90();
    v460 = sub_1ABAA3228();
    sub_1ABC43DF0(v460, v461, v462);
    if (v35)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v469 = sub_1ABA8B354();
      LOBYTE(v35) = sub_1ABDB4570(v469, v470);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_620;
    }

    v463 = v1058;
    swift_isUniquelyReferenced_nonNull_native();
    v1076 = v463;
    v464 = sub_1ABA9804C();
    sub_1ABDB8CDC(v464, v465, v466, v467, v468);
    v162 = v129;
    if (v129)
    {
LABEL_678:

      goto LABEL_674;
    }

    v1058 = v1076;
    ++j;
  }

  if (v190)
  {
    v1075 = MEMORY[0x1E69E7CC0];

    v471 = sub_1ABDB47E8(v190, sub_1ABADE794);
    if (v190 < 0)
    {
      goto LABEL_656;
    }

    v21 = 0;
    v472 = v1063;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](0, v472);
      }

      else
      {
        sub_1ABA82B2C(v471, v472);
      }

      j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentAtSpeedBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v473 = v1075;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE794();
        v473 = v1075;
      }

      sub_1ABA96DCC();
      if (v459)
      {
        sub_1ABA7BBEC(v474);
        sub_1ABAA04C0();
        sub_1ABADE794();
        v473 = v1075;
      }

      sub_1ABAA3D9C();
    }

    while (!v173);
  }

  else
  {

    v473 = sub_1ABAE8E1C(0);
  }

  sub_1ABA8DEE8(v473);
  sub_1ABA8A418();
  k = MEMORY[0x1E69E7CC8];
  while (v21 != j)
  {
    sub_1ABACFA90();
    v475 = sub_1ABAA3228();
    sub_1ABC43DF0(v475, v476, v477);
    if (v35)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v484 = sub_1ABA8B354();
      LOBYTE(v35) = sub_1ABDB4570(v484, v485);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_621;
    }

    v478 = k;
    swift_isUniquelyReferenced_nonNull_native();
    v1075 = v478;
    v479 = sub_1ABA9804C();
    sub_1ABDB886C(v479, v480, v481, v482, v483);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    k = v1075;
    ++j;
  }

  if (v190)
  {
    v1074 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v190, sub_1ABADE754);
    if (v190 < 0)
    {
      goto LABEL_657;
    }

    sub_1ABDBFAD8();
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](v21);
      }

      else
      {
        sub_1ABA82B2C(v486, v487);
      }

      j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v488 = v1074;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE754();
        v488 = v1074;
      }

      sub_1ABA8ADCC();
      if (v459)
      {
        sub_1ABA7BBEC(v489);
        sub_1ABAA04C0();
        sub_1ABADE754();
        v488 = v1074;
      }

      sub_1ABA8CBA4();
    }

    while (!v173);
  }

  else
  {
    v488 = sub_1ABAE8E08(0);
  }

  sub_1ABA8DEE8(v488);
  sub_1ABA8A418();
  v1057 = MEMORY[0x1E69E7CC8];
  while (v21 != j)
  {
    sub_1ABACFA90();
    v490 = sub_1ABAA3228();
    sub_1ABC43DF0(v490, v491, v492);
    if (v35)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v499 = sub_1ABA8B354();
      LOBYTE(v35) = sub_1ABDB4570(v499, v500);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_622;
    }

    v493 = v1057;
    swift_isUniquelyReferenced_nonNull_native();
    v1074 = v493;
    v494 = sub_1ABA9804C();
    sub_1ABDB83FC(v494, v495, v496, v497, v498);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1057 = v1074;
    ++j;
  }

  if (v190)
  {
    v1073 = MEMORY[0x1E69E7CC0];

    v501 = sub_1ABDB47E8(v190, sub_1ABADE714);
    if (v190 < 0)
    {
      goto LABEL_658;
    }

    v21 = 0;
    v502 = v1063;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](0, v502);
      }

      else
      {
        sub_1ABA82B2C(v501, v502);
      }

      j = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timeSpentInTrafficBuckets;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v503 = v1073;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE714();
        v503 = v1073;
      }

      sub_1ABA96DCC();
      if (v459)
      {
        sub_1ABA7BBEC(v504);
        sub_1ABAA04C0();
        sub_1ABADE714();
        v503 = v1073;
      }

      sub_1ABAA3D9C();
    }

    while (!v173);
  }

  else
  {

    v503 = sub_1ABAE8DF4(0);
  }

  sub_1ABA8DEE8(v503);
  sub_1ABA8A418();
  v1054 = MEMORY[0x1E69E7CC8];
  while (v21 != j)
  {
    sub_1ABACFA90();
    v505 = sub_1ABAA3228();
    sub_1ABC43DF0(v505, v506, v507);
    if (v35)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v514 = sub_1ABA8B354();
      LOBYTE(v35) = sub_1ABDB4570(v514, v515);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_623;
    }

    v508 = v1054;
    swift_isUniquelyReferenced_nonNull_native();
    v1073 = v508;
    v509 = sub_1ABA9804C();
    sub_1ABDB7F8C(v509, v510, v511, v512, v513);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1054 = v1073;
    ++j;
  }

  if (v190)
  {
    v1072 = MEMORY[0x1E69E7CC0];
    v516 = &v1072;
    v517 = sub_1ABDB47E8(v190, sub_1ABADE6D4);
    if (v190 < 0)
    {
      goto LABEL_659;
    }

    v518 = 0;
    v519 = (v1004 + 16);
    v520 = v1063;
    do
    {
      if (v1062)
      {
        v516 = MEMORY[0x1AC5AA170](v518, v520);
      }

      else
      {
        sub_1ABA82B2C(v517, v520);
      }

      v521 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
      sub_1ABA7EF0C();
      swift_beginAccess();
      (*v519)(v1009, &v516[v521], v1010);

      v516 = v1072;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE6D4();
        v516 = v1072;
      }

      v523 = *(v516 + 2);
      v522 = *(v516 + 3);
      if (v523 >= v522 >> 1)
      {
        sub_1ABA7BBEC(v522);
        sub_1ABADE6D4();
        v516 = v1072;
      }

      ++v518;
      *(v516 + 2) = v523 + 1;
      sub_1ABA7AD90();
      v525 = sub_1ABA9DFD8(v524);
      v517 = (*(v526 + 32))(v525, v1009, v1010);
      v190 = v1060;
      v520 = v1063;
    }

    while (v1060 != v518);
  }

  else
  {
    v516 = sub_1ABAE8DE0(0);
  }

  v527 = [objc_opt_self() metersPerSecond];
  v1055 = sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218B4();
  v528 = v1004;
  v530 = v1004 + 16;
  v529 = *(v1004 + 16);
  v531 = sub_1ABA8C53C();
  v533 = v532;
  v532(v531);
  v534 = sub_1ABA8DEE8(v516);
  v1038 = v530;
  v1036 = v533;
  if (v534)
  {
    v535 = v534;
    v1020 = v162;
    if (v534 < 1)
    {
      goto LABEL_660;
    }

    v536 = *(v528 + 80);
    sub_1ABA7AB74();
    v1049 = v516;
    v538 = &v516[v537];
    v1052 = *(v528 + 72);
    v539 = v528 + 8;
    v1051 = v540 + 32;
    v1029 = v539 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v541 = v1010;
    v542 = v990;
    do
    {
      v1036(v542, v538, v541);
      sub_1ABA8B114();
      sub_1ABF218D4();
      v543 = *v539;
      v544 = sub_1ABA82ED0();
      v543(v544);
      v545 = sub_1ABA95870();
      v543(v545);
      v546 = sub_1ABDBFBB8();
      v547(v546);
      v538 += v1052;
      --v535;
    }

    while (v535);

    v162 = v1020;
    v190 = v1060;
    v528 = v1004;
    v548 = v1029;
  }

  else
  {

    v543 = *(v528 + 8);
    v548 = (v528 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v549 = v548;
  (v543)(v997, v1010);
  v551 = *(v528 + 32);
  v550 = v528 + 32;
  v552 = v991;
  v553 = sub_1ABA8AF68();
  v554(v553);
  sub_1ABF21874();
  v555 = sub_1ABA8B354();
  v1029 = v549;
  v1026 = v543;
  v543(v555);
  if (v190)
  {
    v1071 = MEMORY[0x1E69E7CC0];
    sub_1ABDB47E8(v190, sub_1ABADE694);
    if (v190 < 0)
    {
      goto LABEL_661;
    }

    sub_1ABDBFAD8();
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](v543);
      }

      else
      {
        sub_1ABA82B2C(v556, v557);
      }

      v552 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v558 = v1071;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE694();
        v558 = v1071;
      }

      sub_1ABA8ADCC();
      if (v459)
      {
        sub_1ABA7BBEC(v559);
        sub_1ABAA04C0();
        sub_1ABADE694();
        v558 = v1071;
      }

      sub_1ABA8CBA4();
    }

    while (!v173);
  }

  else
  {
    v558 = sub_1ABAE8DCC(0);
  }

  sub_1ABA8DEE8(v558);
  sub_1ABA8A418();
  v1055 = MEMORY[0x1E69E7CC8];
  while (v543 != v552)
  {
    sub_1ABACFA90();
    v560 = sub_1ABAA3228();
    sub_1ABC43DF0(v560, v561, v562);
    if (v550)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v569 = sub_1ABA8B354();
      v550 = sub_1ABDB4570(v569, v570);
    }

    if (__OFADD__(v552, 1))
    {
      goto LABEL_624;
    }

    v563 = v1055;
    swift_isUniquelyReferenced_nonNull_native();
    v1071 = v563;
    v564 = sub_1ABA9804C();
    sub_1ABDB7B1C(v564, v565, v566, v567, v568);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1055 = v1071;
    ++v552;
  }

  if (v190)
  {
    v1070 = MEMORY[0x1E69E7CC0];

    v571 = sub_1ABDB47E8(v190, sub_1ABADE654);
    if (v190 < 0)
    {
      goto LABEL_662;
    }

    v543 = 0;
    v572 = v1063;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](0, v572);
      }

      else
      {
        sub_1ABA82B2C(v571, v572);
      }

      v552 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v573 = v1070;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE654();
        v573 = v1070;
      }

      sub_1ABA96DCC();
      if (v459)
      {
        sub_1ABA7BBEC(v574);
        sub_1ABAA04C0();
        sub_1ABADE654();
        v573 = v1070;
      }

      sub_1ABAA3D9C();
    }

    while (!v173);
  }

  else
  {

    v573 = sub_1ABAE8DB8(0);
  }

  sub_1ABA8DEE8(v573);
  sub_1ABA8A418();
  v1052 = MEMORY[0x1E69E7CC8];
  while (v543 != v552)
  {
    sub_1ABACFA90();
    v575 = sub_1ABAA3228();
    sub_1ABC43DF0(v575, v576, v577);
    if (v550)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v584 = sub_1ABA8B354();
      v550 = sub_1ABDB4570(v584, v585);
    }

    if (__OFADD__(v552, 1))
    {
      goto LABEL_625;
    }

    v578 = v1052;
    swift_isUniquelyReferenced_nonNull_native();
    v1070 = v578;
    v579 = sub_1ABA9804C();
    sub_1ABDB76AC(v579, v580, v581, v582, v583);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1052 = v1070;
    ++v552;
  }

  if (v190)
  {
    v1069 = MEMORY[0x1E69E7CC0];

    v586 = sub_1ABDB47E8(v190, sub_1ABADE614);
    if (v190 < 0)
    {
      goto LABEL_663;
    }

    v543 = 0;
    v587 = v1063;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](0, v587);
      }

      else
      {
        sub_1ABA82B2C(v586, v587);
      }

      v552 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v588 = v1069;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE614();
        v588 = v1069;
      }

      sub_1ABA96DCC();
      if (v459)
      {
        sub_1ABA7BBEC(v589);
        sub_1ABAA04C0();
        sub_1ABADE614();
        v588 = v1069;
      }

      sub_1ABAA3D9C();
    }

    while (!v173);
  }

  else
  {

    v588 = sub_1ABAE8DA4(0);
  }

  sub_1ABA8DEE8(v588);
  sub_1ABA8A418();
  v1051 = MEMORY[0x1E69E7CC8];
  while (v543 != v552)
  {
    sub_1ABACFA90();
    v590 = sub_1ABAA3228();
    sub_1ABC43DF0(v590, v591, v592);
    if (v550)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v599 = sub_1ABA8B354();
      v550 = sub_1ABDB4570(v599, v600);
    }

    if (__OFADD__(v552, 1))
    {
      goto LABEL_626;
    }

    v593 = v1051;
    swift_isUniquelyReferenced_nonNull_native();
    v1069 = v593;
    v594 = sub_1ABA9804C();
    sub_1ABDB723C(v594, v595, v596, v597, v598);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1051 = v1069;
    ++v552;
  }

  if (v190)
  {
    v1068 = MEMORY[0x1E69E7CC0];

    v601 = sub_1ABDB47E8(v190, sub_1ABADE5D4);
    if (v190 < 0)
    {
      goto LABEL_664;
    }

    v543 = 0;
    v602 = v1063;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](0, v602);
      }

      else
      {
        sub_1ABA82B2C(v601, v602);
      }

      v552 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerRoadType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v603 = v1068;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE5D4();
        v603 = v1068;
      }

      sub_1ABA96DCC();
      if (v459)
      {
        sub_1ABA7BBEC(v604);
        sub_1ABAA04C0();
        sub_1ABADE5D4();
        v603 = v1068;
      }

      sub_1ABAA3D9C();
    }

    while (!v173);
  }

  else
  {

    v603 = sub_1ABAE8D90(0);
  }

  sub_1ABA8DEE8(v603);
  sub_1ABA8A418();
  v1049 = MEMORY[0x1E69E7CC8];
  while (v543 != v552)
  {
    sub_1ABACFA90();
    v605 = sub_1ABAA3228();
    sub_1ABC43DF0(v605, v606, v607);
    if (v550)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v614 = sub_1ABA8B354();
      v550 = sub_1ABDB4570(v614, v615);
    }

    if (__OFADD__(v552, 1))
    {
      goto LABEL_627;
    }

    v608 = v1049;
    swift_isUniquelyReferenced_nonNull_native();
    v1068 = v608;
    v609 = sub_1ABA9804C();
    sub_1ABDB6DCC(v609, v610, v611, v612, v613);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1049 = v1068;
    ++v552;
  }

  if (v190)
  {
    v1067 = MEMORY[0x1E69E7CC0];
    v616 = sub_1ABDB47E8(v190, sub_1ABADE594);
    if (v190 < 0)
    {
      goto LABEL_665;
    }

    v543 = 0;
    v617 = v1063;
    do
    {
      if (v1062)
      {
        MEMORY[0x1AC5AA170](0, v617);
      }

      else
      {
        sub_1ABA82B2C(v616, v617);
      }

      v552 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerTerrainType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      sub_1ABA9E87C();

      v618 = v1067;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA9F048();
        sub_1ABA83F84();
        sub_1ABADE594();
        v618 = v1067;
      }

      sub_1ABA96DCC();
      if (v459)
      {
        sub_1ABA7BBEC(v619);
        sub_1ABAA04C0();
        sub_1ABADE594();
        v618 = v1067;
      }

      sub_1ABAA3D9C();
    }

    while (!v173);
  }

  else
  {
    v618 = sub_1ABAE8D7C(0);
  }

  sub_1ABA8DEE8(v618);
  sub_1ABA8A418();
  v1048 = MEMORY[0x1E69E7CC8];
  while (v543 != v552)
  {
    sub_1ABACFA90();
    v620 = sub_1ABAA3228();
    sub_1ABC43DF0(v620, v621, v622);
    if (v550)
    {
      sub_1ABAA05E4();
    }

    else
    {
      v629 = sub_1ABA8B354();
      v550 = sub_1ABDB4570(v629, v630);
    }

    if (__OFADD__(v552, 1))
    {
      goto LABEL_628;
    }

    v623 = v1048;
    swift_isUniquelyReferenced_nonNull_native();
    v1067 = v623;
    v624 = sub_1ABA9804C();
    sub_1ABDB695C(v624, v625, v626, v627, v628);
    v162 = v129;
    if (v129)
    {
      goto LABEL_678;
    }

    v1048 = v1067;
    ++v552;
  }

  if (v190)
  {
    v1066[0] = MEMORY[0x1E69E7CC0];
    v631 = v1066;
    sub_1ABDB47E8(v190, sub_1ABADE554);
    if (v190 < 0)
    {
      goto LABEL_666;
    }

    v632 = 0;
    v633 = v1063;
    do
    {
      if (v1062)
      {
        v631 = MEMORY[0x1AC5AA170](v632, v633);
      }

      else
      {
        sub_1ABA842C4(v633 + 8 * v632);
      }

      v634 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_timePerWeatherType;
      sub_1ABA7EF0C();
      swift_beginAccess();
      v635 = *(v631 + v634);

      v636 = v1066[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v637 = *(v636 + 16);
        v631 = v1066;
        sub_1ABA83F84();
        sub_1ABADE554();
        v636 = v1066[0];
      }

      v639 = *(v636 + 16);
      v638 = *(v636 + 24);
      if (v639 >= v638 >> 1)
      {
        sub_1ABA7BBEC(v638);
        v631 = v1066;
        sub_1ABADE554();
        v636 = v1066[0];
      }

      ++v632;
      *(v636 + 16) = v639 + 1;
      *(v636 + 8 * v639 + 32) = v635;
      sub_1ABA89B74();
      v633 = v1063;
    }

    while (!v173);
  }

  else
  {
    v636 = sub_1ABAE8D68(0);
  }

  v640 = sub_1ABA8DEE8(v636);
  v641 = 0;
  v1060 = MEMORY[0x1E69E7CC8];
  while (v640 != v641)
  {
    v642 = sub_1ABACFA90();
    sub_1ABC43DF0(v641, v642 & 1, v636);
    if (v642)
    {
      v643 = *(v636 + 8 * v641 + 32);
    }

    else
    {
      v643 = sub_1ABDB4570(v641, v636);
    }

    if (__OFADD__(v641, 1))
    {
      goto LABEL_629;
    }

    v644 = v1060;
    v645 = swift_isUniquelyReferenced_nonNull_native();
    v1066[0] = v644;
    sub_1ABDB9B0C(v643, sub_1ABDBD058, 0, v645, v1066);
    if (v162)
    {

      goto LABEL_674;
    }

    v1060 = v1066[0];
    ++v641;
  }

  v647 = &v967;
  MEMORY[0x1EEE9AC00](v646);
  sub_1ABA8BB48();
  sub_1ABDB6714(v648, v649, v650, v651, v652, &qword_1EB4D5680, &qword_1ABF4AC78, v653, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1025 = v654;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v655);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v656, v657, v658, v659, v660, v661, &unk_1ABF618C0, v662, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1024 = v663;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v664);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v665, v666, v667, v668, v669, v670, v671, v672, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1023 = v673;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v674);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v675, v676, v677, v678, v679, v680, v681, v682, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1019 = v683;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v684);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v685, v686, v687, v688, v689, v690, v691, v692, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1015 = v693;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v694);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v695, v696, v697, v698, v699, v700, v701, v702, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1013 = v703;
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v704);
  v705 = &qword_1EB4D1710;
  v706 = &qword_1ABF338A0;
  sub_1ABA8BB48();
  sub_1ABDB6714(v707, v708, v709, v710, v711, &qword_1EB4D5680, &qword_1ABF4AC78, v712, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1012 = v713;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v714);
  sub_1ABAA3A10();
  sub_1ABA8BB48();
  sub_1ABDB6714(v715, v716, v717, v718, v719, &qword_1EB4D5690, &unk_1ABF618C0, v720, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1009 = v721;

  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v722);
  sub_1ABAA3A10();
  sub_1ABAB517C();
  sub_1ABDB6714(v723, v724, v725, v726, v727, &qword_1EB4D5670, &qword_1ABF4AC68, v728, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1008 = v729;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v730);
  sub_1ABAA3A10();
  sub_1ABAB517C();
  sub_1ABDB6714(v731, v732, v733, v734, v735, &qword_1EB4D5660, &unk_1ABF618B0, v736, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1007 = v737;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v738);
  sub_1ABAA3A10();
  sub_1ABAB517C();
  sub_1ABDB6714(v739, v740, v741, v742, v743, &qword_1EB4D5650, &qword_1ABF4AC48, v744, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1004 = v745;
  sub_1ABDBFA9C();
  sub_1ABAB5D64();
  MEMORY[0x1EEE9AC00](v746);
  sub_1ABAA3A10();
  v747 = v1052;
  sub_1ABAB517C();
  sub_1ABDB6714(v748, v749, v750, v751, v752, &qword_1EB4D5640, &unk_1ABF618A0, v753, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977, v978);
  v1002 = v754;
  v755 = &qword_1ABF4AC78;

  sub_1ABAE8D54(0);
  sub_1ABA9FA94();
  v162 = v1001;
  while (v162 != &qword_1ABF4AC78)
  {
    if (v1062)
    {
      v758 = sub_1ABA8A40C();
      v747 = MEMORY[0x1AC5AA170](v758);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v459)
      {
        goto LABEL_631;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_630;
    }

    v756 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentInTrafficBuckets;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v706 = *(v747 + v756);
    v647 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBF5C();
      v705 = v759;
    }

    sub_1ABA9FB90();
    if (v459)
    {
      sub_1ABAA1A68(v757);
      sub_1ABADBF5C();
      v705 = v760;
    }

    sub_1ABA82F24();
  }

  sub_1ABA8DEE8(v705);
  sub_1ABA9DE94();
  v1046 = MEMORY[0x1E69E7CC8];
  v761 = &qword_1EB4D37F0;
  while (v706 != &qword_1ABF4AC78)
  {
    sub_1ABACFA90();
    v762 = sub_1ABA9F970();
    sub_1ABC43DF0(v762, v763, v764);
    if ((v162 & 1) == 0)
    {
      goto LABEL_632;
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_633;
    }

    v765 = *v647;
    v162 = *(v647 - 1);
    v766 = v1057;

    v771 = sub_1ABA8AB44(v767, v768, v769, v770, sub_1ABAFF5B8, sub_1ABADBFCC);
    v755 = v766;
    v772 = sub_1ABBFA5AC(v771);
    v1046 = sub_1ABD9E158(v772, v1046, sub_1ABDBF94C, sub_1ABDB989C);

    sub_1ABA9E6C0();
  }

  sub_1ABAE8D40(0);
  sub_1ABA9FA94();
  while (v162 != &qword_1ABF4AC78)
  {
    if (v1062)
    {
      v775 = sub_1ABA8A40C();
      v761 = MEMORY[0x1AC5AA170](v775);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v459)
      {
        goto LABEL_635;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_634;
    }

    v773 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtSpeedBuckets;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v706 = *(v761 + v773);
    v647 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBF38();
      v705 = v776;
    }

    sub_1ABA9FB90();
    if (v459)
    {
      sub_1ABAA1A68(v774);
      sub_1ABADBF38();
      v705 = v777;
    }

    sub_1ABA82F24();
  }

  sub_1ABA8DEE8(v705);
  sub_1ABA9DE94();
  v1045 = MEMORY[0x1E69E7CC8];
  v778 = &qword_1EB4D37E0;
  while (v706 != &qword_1ABF4AC78)
  {
    sub_1ABACFA90();
    v779 = sub_1ABA9F970();
    sub_1ABC43DF0(v779, v780, v781);
    if ((v162 & 1) == 0)
    {
      goto LABEL_638;
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_639;
    }

    v782 = *v647;
    v162 = *(v647 - 1);
    v783 = v1058;

    v788 = sub_1ABA8AB44(v784, v785, v786, v787, sub_1ABAFF5B8, sub_1ABADBFB8);
    v755 = v783;
    v789 = sub_1ABBFA5D4(v788);
    v1045 = sub_1ABD9E158(v789, v1045, sub_1ABDBF94C, sub_1ABDB962C);

    sub_1ABA9E6C0();
  }

  sub_1ABAE8D2C(0);
  sub_1ABA9FA94();
  while (v162 != &qword_1ABF4AC78)
  {
    if (v1062)
    {
      v792 = sub_1ABA8A40C();
      v778 = MEMORY[0x1AC5AA170](v792);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v459)
      {
        goto LABEL_641;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_640;
    }

    v790 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v706 = *(v778 + v790);
    v647 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBF14();
      v705 = v793;
    }

    sub_1ABA9FB90();
    if (v459)
    {
      sub_1ABAA1A68(v791);
      sub_1ABADBF14();
      v705 = v794;
    }

    sub_1ABA82F24();
  }

  sub_1ABA8DEE8(v705);
  sub_1ABA9DE94();
  v1044 = MEMORY[0x1E69E7CC8];
  v795 = &qword_1EB4D37D0;
  while (v706 != &qword_1ABF4AC78)
  {
    sub_1ABACFA90();
    v796 = sub_1ABA9F970();
    sub_1ABC43DF0(v796, v797, v798);
    if ((v162 & 1) == 0)
    {
      goto LABEL_642;
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_643;
    }

    v799 = *v647;
    v162 = *(v647 - 1);
    v800 = v1047;

    v805 = sub_1ABA8AB44(v801, v802, v803, v804, sub_1ABAFF5B8, sub_1ABADBFA4);
    v755 = v800;
    v806 = sub_1ABBFA690(v805);
    v1044 = sub_1ABD9E158(v806, v1044, sub_1ABDBF94C, sub_1ABDB93BC);

    sub_1ABA9E6C0();
  }

  sub_1ABAE8D18(0);
  sub_1ABA9FA94();
  while (1)
  {
    v807 = v1006;
    if (v162 == &qword_1ABF4AC78)
    {
      break;
    }

    if (v1062)
    {
      v811 = sub_1ABA8A40C();
      v795 = MEMORY[0x1AC5AA170](v811);
    }

    else
    {
      sub_1ABDBFAF0();
      if (v459)
      {
        goto LABEL_645;
      }

      sub_1ABA9F0F8();
    }

    if (__OFADD__(&qword_1ABF4AC78, 1))
    {
      goto LABEL_644;
    }

    v808 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerRoadType;
    sub_1ABA7EF0C();
    swift_beginAccess();
    v809 = *(v795 + v808);
    sub_1ABA7EF0C();
    swift_beginAccess();
    sub_1ABDBFC04();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA80F18();
      sub_1ABADBEF0();
    }

    sub_1ABA9FB90();
    if (v459)
    {
      sub_1ABAA1A68(v810);
      sub_1ABADBEF0();
    }

    sub_1ABA82F24();
  }

  v812 = v1055;

  v813 = sub_1ABA7ABE4();
  v1001 = sub_1ABD9E04C(v813, v814, v812, v815);

  sub_1ABD9D7C4(&qword_1ABF3D838, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerWeatherType, sub_1ABADBECC);
  v816 = v1051;

  v817 = sub_1ABA7ABE4();
  v997 = sub_1ABD9E04C(v817, v818, v816, v819);

  sub_1ABD9D7C4(&qword_1ABF3D838, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distancePerTerrainType, sub_1ABADBEA8);
  v820 = v1052;

  v821 = sub_1ABA7ABE4();
  v995 = sub_1ABD9E04C(v821, v822, v820, v823);

  v824 = sub_1ABA8D010();
  v825 = sub_1ABD9CFEC(v824);
  sub_1ABD23888(v825);

  sub_1ABD9CDDC(&qword_1ABF3D838, 0.0, 0.0);
  sub_1ABD9D174();
  v162 = v826;
  v1027 = v755;
  v1020 = objc_opt_self();
  v827 = [v1020 kilowattHours];
  v1039 = sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  v828 = v994;
  sub_1ABF218B4();
  v829 = v992;
  v830 = v992 + 16;
  v831 = *(v992 + 16);
  v831(v996, v828, v981);
  v832 = sub_1ABA8DEE8(v162);
  v1062 = v830;
  v1041 = v831;
  if (v832)
  {
    v833 = v832;
    if (v832 < 1)
    {
      goto LABEL_667;
    }

    v834 = *(v829 + 80);
    sub_1ABA7AB74();
    v1028 = v162;
    v836 = v162 + v835;
    v1035 = *(v829 + 72);
    v837 = (v829 + 8);
    v1030 = (v829 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v1031 = (v829 + 32);
    v838 = v981;
    v839 = v989;
    do
    {
      v840 = sub_1ABA82DAC();
      (v1041)(v840);
      sub_1ABDBFBAC();
      sub_1ABF218D4();
      v841 = *v837;
      (*v837)(v839, v838);
      v842 = sub_1ABA8AF68();
      (v841)(v842);
      v843 = *v1031;
      v844 = sub_1ABA8B354();
      v845(v844);
      v836 += v1035;
      --v833;
    }

    while (v833);

    v807 = v1006;
    v829 = v992;
    v162 = v1030;
    v831 = v1041;
  }

  else
  {

    v841 = *(v829 + 8);
    v162 = (v829 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v1028 = v841;
  v846 = v981;
  (v841)(v994, v981);
  v847 = *(v829 + 32);
  v1035 = v829 + 32;
  v1031 = v847;
  (v847)(v979, v996, v846);
  v848 = v1027;
  sub_1ABD9D174();
  v850 = v849;
  v1017 = v848;
  v851 = [v1020 kilowattHours];
  v852 = v993;
  sub_1ABF218B4();
  v853 = sub_1ABA90200();
  (v831)(v853);
  v1027 = v850;
  v854 = sub_1ABA8DEE8(v850);
  v855 = v1028;
  if (v854)
  {
    v856 = v854;
    if (v854 < 1)
    {
      goto LABEL_668;
    }

    v857 = *(v829 + 80);
    sub_1ABA7AB74();
    v855 = v1028;
    v859 = v1027 + v858;
    v1030 = *(v829 + 72);
    v860 = v980;
    v846 = v981;
    v807 = v1006;
    v852 = v988;
    do
    {
      v1041(v852, v859, v846);
      sub_1ABA90200();
      sub_1ABF218D4();
      (v855)(v852, v846);
      (v855)(v807, v846);
      (v1031)(v807, v860, v846);
      v859 += v1030;
      --v856;
    }

    while (v856);
  }

  (v855)(v993, v846);
  (v1031)(v978, v807, v846);
  v861 = v1017;
  sub_1ABD9D3B4(v1063, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents);
  sub_1ABDBFB88();
  v863 = sub_1ABA8DEE8(v862);
  if (v863)
  {
    if (v863 < 1)
    {
      goto LABEL_669;
    }

    v864 = 0;
    v865 = 32;
    do
    {
      v866 = *(v852 + v865);
      v363 = __OFADD__(v864, v866);
      v864 += v866;
      if (v363)
      {
        goto LABEL_646;
      }

      v865 += 8;
      --v863;
    }

    while (v863);
  }

  else
  {

    v864 = 0;
  }

  v867 = sub_1ABA8D010();
  sub_1ABD9D3B4(v867, v868);
  sub_1ABDBFB88();
  v870 = sub_1ABA8DEE8(v869);
  if (v870)
  {
    if (v870 < 1)
    {
      goto LABEL_670;
    }

    v871 = 0;
    v872 = 32;
    do
    {
      v873 = *(v852 + v872);
      v363 = __OFADD__(v871, v873);
      v871 += v873;
      if (v363)
      {
        goto LABEL_647;
      }

      v872 += 8;
      --v870;
    }

    while (v870);
  }

  else
  {

    v871 = 0;
  }

  v874 = sub_1ABA8D010();
  sub_1ABD9D3B4(v874, v875);
  sub_1ABDBFB88();
  v877 = sub_1ABA8DEE8(v876);
  if (v877)
  {
    if (v877 < 1)
    {
      goto LABEL_671;
    }

    v878 = 0;
    v879 = 32;
    do
    {
      v880 = *(v852 + v879);
      v363 = __OFADD__(v878, v880);
      v878 += v880;
      if (v363)
      {
        goto LABEL_648;
      }

      v879 += 8;
      --v877;
    }

    while (v877);
  }

  else
  {

    v878 = 0;
  }

  v1035 = v864;
  v1031 = v871;
  v1027 = v878;
  v881 = sub_1ABA8D010();
  sub_1ABD9D520(v881, v882, v883);
  sub_1ABDBFB88();
  sub_1ABAE8D04(0);
  v1039 = sub_1ABF239C4();
  v884 = *(v852 + 16);
  v885 = 32;
  if (v884)
  {
    while (1)
    {
      v886 = *(v852 + v885);
      swift_bridgeObjectRetain_n();
      v887 = v1039;

      swift_isUniquelyReferenced_nonNull_native();
      v1065 = v887;
      sub_1ABDBF9B4();
      sub_1ABDBFBCC();
      sub_1ABDBA6CC(v888, v889, v890, v891, v892);
      if (v861)
      {
        break;
      }

      v885 += 8;
      if (!--v884)
      {
        goto LABEL_594;
      }
    }

    while (1)
    {
LABEL_674:

      __break(1u);
LABEL_675:
      __break(1u);
LABEL_676:
      __break(1u);
    }
  }

LABEL_594:

  v893 = sub_1ABA8D010();
  v896 = sub_1ABD9D520(v893, v894, v895);
  v897 = v861;
  v898 = *(v896 + 16);
  v899 = MEMORY[0x1E69E7CC8];
  v900 = 32;
  if (v898)
  {
    do
    {
      v901 = *(v896 + v900);
      swift_bridgeObjectRetain_n();

      swift_isUniquelyReferenced_nonNull_native();
      v1065 = v899;
      sub_1ABDBF9B4();
      sub_1ABDBFBCC();
      sub_1ABDBAB64(v902, v903, v904, v905, v906);
      if (v861)
      {
        goto LABEL_674;
      }

      sub_1ABDBFA9C();

      v899 = v1065;
      v900 += 8;
    }

    while (--v898);
  }

  v1017 = v899;
  v1030 = v162;

  v907 = v1063;
  v908 = sub_1ABD9D520(v1063, sub_1ABADE454, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadRelativeSpeedBuckets);
  v909 = *(v908 + 16);
  v910 = MEMORY[0x1E69E7CC8];
  for (m = 32; v909; v907 = v1063)
  {
    v912 = *(v908 + m);
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v1065 = v910;
    sub_1ABDBF9B4();
    sub_1ABDBFBCC();
    sub_1ABDBB6A4(v913, v914, v915, v916, v917);
    if (v861)
    {
      goto LABEL_674;
    }

    v897 = 0;

    v910 = v1065;
    m += 8;
    --v909;
  }

  v918 = v897;
  v919 = sub_1ABD9D520(v907, sub_1ABADE414, &OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes);
  sub_1ABAE8CF0(0);
  v920 = sub_1ABF239C4();
  v921 = *(v919 + 16);
  v922 = 32;
  if (v921)
  {
    do
    {
      v923 = *(v919 + v922);

      swift_isUniquelyReferenced_nonNull_native();
      v1065 = v920;
      sub_1ABDBF9B4();
      sub_1ABDBFBCC();
      sub_1ABDBC1E4(v924, v925, v926, v927, v928);
      if (v918)
      {
        goto LABEL_674;
      }

      v897 = 0;
      v920 = v1065;
      v922 += 8;
    }

    while (--v921);
  }

  v929 = v897;
  sub_1ABD9D950(v1063);
  v931 = sub_1ABD9D6B0(v930);
  v1020 = v929;

  sub_1ABAE8CDC(0);
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABDBF828();
  sub_1ABA82ED0();
  v932 = sub_1ABF239C4();
  v933 = v931;
  v934 = *(v931 + 16);
  for (n = 32; ; n += 8)
  {
    v936 = v1037;
    if (!v934)
    {
      break;
    }

    v937 = *(v933 + n);
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v1065 = v932;
    sub_1ABDBF9B4();
    v938 = v1020;
    sub_1ABDBC67C(v937, v939, 0, v940, v941);
    v1020 = v938;
    if (v938)
    {
      goto LABEL_674;
    }

    --v934;
  }

  if ((v972 & 0x100000000) != 0)
  {
    goto LABEL_675;
  }

  v942 = v1064;
  v943 = v1043;
  if ((v970 & 0x100000000) != 0)
  {
    goto LABEL_676;
  }

  v944 = v1059;
  v1059(v1050, v1014, v942);
  v944(v1034, v985, v942);
  v945 = v1032;
  v1032(v936, v1005, v943);
  v945(v1018, v1003, v943);
  v1036(v982, v998, v1010);
  v946 = v981;
  v947 = v1041;
  v1041(v980, v979, v981);
  v947(v974, v978, v946);
  v948 = v1064;
  v944(v975, v999, v1064);
  v944(v976, v1000, v948);
  v944(v977, v983, v948);
  v949 = v973;
  v944(v973, v984, v948);
  v950 = type metadata accessor for KTSDataAggregateRepresentation(0);
  v951 = *(v950 + 48);
  v952 = *(v950 + 52);
  v256 = swift_allocObject();
  KTSDataAggregateRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:maxTripDistanceInMeters:avgTripDistanceInMeters:maxElevationGainInMeters:avgElevationGainInMeters:percentTimeSpentAtSpeedBuckets:percentTimeSpentAtTrafficBuckets:percentTimeSpentAtRelativeSpeeds:percentTimeSpentAtRoadTypes:percentTimeSpentInWeatherTypes:percentTimeSpentInTerrainTypes:percentDistanceTraveledAtSpeedBuckets:percentDistanceTraveledAtTrafficBuckets:p(v1050, v1034, v986, v1037, v1018, v1057, v1054, v1058, k, v1047, v1061, v1055, v1049, v1051, v1060, v1052, v1048, v982, v980, v974, v1035, v1031, v1027, v1039, v1017, v910, v920, v1011, v987, v975, v976, v977, v949, v1024, v1025, v1023, v1019, v1015, v1013, v1009, v1012, v1008, v1007, v1004, v1002, v1045, v1046, v1044, v1001, v997, v995, v932, v967, v968, v969, v970, v971, v972, v973, v974, v975, v976, v977);
  v953 = v981;
  v954 = v1028;
  (v1028)(v978, v981);
  (v954)(v979, v953);
  v1026(v998, v1010);
  v955 = v1043;
  v956 = v1021;
  (v1021)(v1003, v1043);
  v957 = v1040;
  v1040(v984, v948);
  v957(v983, v948);
  v957(v985, v948);
  v957(v1000, v948);
  v957(v999, v948);
  v956(v1005, v955);
  v957(v1014, v948);
  return v256;
}

double sub_1ABDB2A48@<D0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  sub_1ABAD219C(a1, a2);
  sub_1ABF218C4();
  v5 = v4;
  sub_1ABF218C4();
  result = v5 / v6;
  *a3 = result;
  return result;
}

void sub_1ABDB2ABC(uint64_t *a1, double *a2, uint64_t a3)
{
  v57 = a1;
  v65 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v50 - v7;
  v62 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v50 - v13;
  v14 = a2[1];
  v15 = *a2 + 64;
  v16 = 1 << *(*a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(*a2 + 64);
  v19 = (v16 + 63) >> 6;
  v63 = *a2;
  v64 = v5 + 16;
  v60 = (v5 + 8);
  v61 = v5;

  v20 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (v18)
  {
LABEL_9:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(*(v63 + 48) + v23);
    v25 = *(v61 + 72);
    v26 = *(v61 + 16);
    v27 = v66;
    v26(&v66[*(v62 + 48)], *(v63 + 56) + v25 * v23, v65);
    *v27 = v24;
    if (!*(a3 + 16))
    {
      goto LABEL_12;
    }

    v28 = sub_1ABAFF5B8(v24);
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }

    v30 = v59;
    v31 = v65;
    v26(v59, *(a3 + 56) + v28 * v25, v65);
    sub_1ABF218C4();
    v33 = v32;
    v34 = *v60;
    (*v60)(v30, v31);
    if (v33 != 0.0)
    {
      v54 = a3;
      v35 = v66;
      v36 = v56;
      sub_1ABBD88DC(v66, v56, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v53 = *v36;
      v37 = v62;
      v52 = *(v62 + 48);
      v38 = v55;
      sub_1ABBD88DC(v35, v55, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v51 = *(v37 + 48);
      v39 = v65;
      sub_1ABF218C4();
      v41 = v40;
      sub_1ABAB480C(v35, &qword_1EB4D3768, &qword_1ABF3D7D8);
      v34((v38 + v51), v39);
      v34(&v56[v52], v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v58 + 16);
        sub_1ABADBFE0();
        v58 = v46;
      }

      v42 = *(v58 + 16);
      if (v42 >= *(v58 + 24) >> 1)
      {
        sub_1ABADBFE0();
        v58 = v47;
      }

      v43 = v58;
      *(v58 + 16) = v42 + 1;
      v44 = v43 + 16 * v42;
      *(v44 + 32) = v53;
      *(v44 + 40) = v14 * v41 / v33;
      a3 = v54;
    }

    else
    {
LABEL_12:
      sub_1ABAB480C(v66, &qword_1EB4D3768, &qword_1ABF3D7D8);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v48 = sub_1ABBFA6B8(v58);
      v49 = v57;
      *v49 = sub_1ABD9E158(v48, *v57, sub_1ABDBF94C, sub_1ABDB9F7C);
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ABDB2F3C(uint64_t *a1, double *a2, uint64_t a3)
{
  v57 = a1;
  v65 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v50 - v7;
  v62 = sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v50 - v13;
  v14 = a2[1];
  v15 = *a2 + 64;
  v16 = 1 << *(*a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(*a2 + 64);
  v19 = (v16 + 63) >> 6;
  v63 = *a2;
  v64 = v5 + 16;
  v60 = (v5 + 8);
  v61 = v5;

  v20 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (v18)
  {
LABEL_9:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(*(v63 + 48) + v23);
    v25 = *(v61 + 72);
    v26 = *(v61 + 16);
    v27 = v66;
    v26(&v66[*(v62 + 48)], *(v63 + 56) + v25 * v23, v65);
    *v27 = v24;
    if (!*(a3 + 16))
    {
      goto LABEL_12;
    }

    v28 = sub_1ABAFF5B8(v24);
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }

    v30 = v59;
    v31 = v65;
    v26(v59, *(a3 + 56) + v28 * v25, v65);
    sub_1ABF218C4();
    v33 = v32;
    v34 = *v60;
    (*v60)(v30, v31);
    if (v33 != 0.0)
    {
      v54 = a3;
      v35 = v66;
      v36 = v56;
      sub_1ABBD88DC(v66, v56, &qword_1EB4D99E8, &qword_1ABF61888);
      v53 = *v36;
      v37 = v62;
      v52 = *(v62 + 48);
      v38 = v55;
      sub_1ABBD88DC(v35, v55, &qword_1EB4D99E8, &qword_1ABF61888);
      v51 = *(v37 + 48);
      v39 = v65;
      sub_1ABF218C4();
      v41 = v40;
      sub_1ABAB480C(v35, &qword_1EB4D99E8, &qword_1ABF61888);
      v34((v38 + v51), v39);
      v34(&v56[v52], v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v58 + 16);
        sub_1ABADBFF4();
        v58 = v46;
      }

      v42 = *(v58 + 16);
      if (v42 >= *(v58 + 24) >> 1)
      {
        sub_1ABADBFF4();
        v58 = v47;
      }

      v43 = v58;
      *(v58 + 16) = v42 + 1;
      v44 = v43 + 16 * v42;
      *(v44 + 32) = v53;
      *(v44 + 40) = v14 * v41 / v33;
      a3 = v54;
    }

    else
    {
LABEL_12:
      sub_1ABAB480C(v66, &qword_1EB4D99E8, &qword_1ABF61888);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v48 = sub_1ABBFA6E0(v58);
      v49 = v57;
      *v49 = sub_1ABD9E158(v48, *v57, sub_1ABDBF94C, sub_1ABDBA1EC);
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ABDB33BC(uint64_t *a1, double *a2, uint64_t a3)
{
  v57 = a1;
  v65 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v5 = *(v65 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v59 = &v50 - v7;
  v62 = sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878);
  v8 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v55 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v50 - v13;
  v14 = a2[1];
  v15 = *a2 + 64;
  v16 = 1 << *(*a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(*a2 + 64);
  v19 = (v16 + 63) >> 6;
  v63 = *a2;
  v64 = v5 + 16;
  v60 = (v5 + 8);
  v61 = v5;

  v20 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (v18)
  {
LABEL_9:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v20 << 6);
    v24 = *(*(v63 + 48) + v23);
    v25 = *(v61 + 72);
    v26 = *(v61 + 16);
    v27 = v66;
    v26(&v66[*(v62 + 48)], *(v63 + 56) + v25 * v23, v65);
    *v27 = v24;
    if (!*(a3 + 16))
    {
      goto LABEL_12;
    }

    v28 = sub_1ABAFF5B8(v24);
    if ((v29 & 1) == 0)
    {
      goto LABEL_12;
    }

    v30 = v59;
    v31 = v65;
    v26(v59, *(a3 + 56) + v28 * v25, v65);
    sub_1ABF218C4();
    v33 = v32;
    v34 = *v60;
    (*v60)(v30, v31);
    if (v33 != 0.0)
    {
      v54 = a3;
      v35 = v66;
      v36 = v56;
      sub_1ABBD88DC(v66, v56, &qword_1EB4D99E0, &unk_1ABF61878);
      v53 = *v36;
      v37 = v62;
      v52 = *(v62 + 48);
      v38 = v55;
      sub_1ABBD88DC(v35, v55, &qword_1EB4D99E0, &unk_1ABF61878);
      v51 = *(v37 + 48);
      v39 = v65;
      sub_1ABF218C4();
      v41 = v40;
      sub_1ABAB480C(v35, &qword_1EB4D99E0, &unk_1ABF61878);
      v34((v38 + v51), v39);
      v34(&v56[v52], v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v58 + 16);
        sub_1ABADC008();
        v58 = v46;
      }

      v42 = *(v58 + 16);
      if (v42 >= *(v58 + 24) >> 1)
      {
        sub_1ABADC008();
        v58 = v47;
      }

      v43 = v58;
      *(v58 + 16) = v42 + 1;
      v44 = v43 + 16 * v42;
      *(v44 + 32) = v53;
      *(v44 + 40) = v14 * v41 / v33;
      a3 = v54;
    }

    else
    {
LABEL_12:
      sub_1ABAB480C(v66, &qword_1EB4D99E0, &unk_1ABF61878);
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      v48 = sub_1ABBFA708(v58);
      v49 = v57;
      *v49 = sub_1ABD9E158(v48, *v57, sub_1ABDBF94C, sub_1ABDBA45C);
      return;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1ABDB383C(void *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = 0;
  v17 = *a1 & 0xC000000000000001;
  v18 = sub_1ABAAB7C8(*a1);
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v18 == v3)
    {
      *a2 = v4;
      return;
    }

    if (v17)
    {
      v5 = MEMORY[0x1AC5AA170](v3, v2);
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABAF89FC();
    if (__OFADD__(v4[2], (v8 & 1) == 0))
    {
      goto LABEL_20;
    }

    v9 = v7;
    v10 = v8;
    sub_1ABAD219C(&qword_1EB4D99A0, &qword_1ABF617F8);
    if (sub_1ABF24C64())
    {
      sub_1ABAF89FC();
      if ((v10 & 1) != (v12 & 1))
      {
        goto LABEL_22;
      }

      v9 = v11;
    }

    if (v10)
    {
      *(v4[7] + 8 * v9) = 1;
    }

    else
    {
      v4[(v9 >> 6) + 8] |= 1 << v9;
      *(v4[6] + 8 * v9) = v6;
      *(v4[7] + 8 * v9) = 1;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_21;
      }

      v4[2] = v15;
    }

    ++v3;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABF25104();
  __break(1u);
}

uint64_t static KTSDataAggregateRepresentation.emptyRepresentation.getter()
{
  v1 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v2 = sub_1ABA7AB80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  v115 = v5;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA972D4();
  v114 = v7;
  v8 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  sub_1ABA7AB80(v8);
  v10 = *(v9 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v112 = v12;
  v13 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v14 = sub_1ABA7BBB0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v113 = v17;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v71 - v19;
  v20 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v21 = sub_1ABA7BBB0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7C068();
  v111 = v24;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA88E50();
  v110 = v26;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA88E50();
  v109 = v28;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA88E50();
  v108 = v30;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA88D88();
  v106 = v0;
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v71 - v33;
  v34 = objc_opt_self();
  v35 = [v34 meters];
  sub_1ABAFF390(0, &qword_1EB4CE6D8, 0x1E696B058);
  sub_1ABA8AF68();
  sub_1ABF218B4();
  v36 = [v34 &selRef_cadence + 1];
  sub_1ABF218B4();
  sub_1ABDB4878();
  v105 = sub_1ABF239C4();
  v37 = objc_opt_self();
  v38 = [v37 seconds];
  sub_1ABAFF390(0, &qword_1EB4CE6B8, 0x1E696B008);
  sub_1ABAA3928();
  sub_1ABF218B4();
  v39 = [v37 seconds];
  sub_1ABF218B4();
  sub_1ABDB48CC();
  sub_1ABAA030C();
  v103 = sub_1ABF239C4();
  sub_1ABAA030C();
  v102 = sub_1ABF239C4();
  v90 = sub_1ABDB4920();
  sub_1ABAA0F84();
  v101 = sub_1ABF239C4();
  sub_1ABAB5378();
  v100 = sub_1ABF239C4();
  v89 = sub_1ABDB4974();
  sub_1ABAA0F84();
  v99 = sub_1ABF239C4();
  sub_1ABAB5378();
  v98 = sub_1ABF239C4();
  v87 = sub_1ABDB49C8();
  sub_1ABAA0F84();
  v97 = sub_1ABF239C4();
  sub_1ABAB5378();
  v96 = sub_1ABF239C4();
  v85 = sub_1ABDB4A1C();
  sub_1ABAA0F84();
  v95 = sub_1ABF239C4();
  sub_1ABAB5378();
  v94 = sub_1ABF239C4();
  v83 = sub_1ABDB4A70();
  sub_1ABAA0F84();
  v93 = sub_1ABF239C4();
  sub_1ABAB5378();
  v92 = sub_1ABF239C4();
  v40 = [objc_opt_self() metersPerSecond];
  sub_1ABAFF390(0, &qword_1EB4CE6F0, 0x1E696B078);
  sub_1ABF218B4();
  v41 = objc_opt_self();
  v42 = [v41 kilowattHours];
  sub_1ABAFF390(0, &qword_1EB4CE6E0, 0x1E696B030);
  sub_1ABF218B4();
  v43 = [v41 kilowattHours];
  sub_1ABF218B4();
  sub_1ABAA0F84();
  v91 = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D16C0, &qword_1ABF33850);
  sub_1ABA954F0();
  v88 = sub_1ABF239C4();
  sub_1ABAD219C(&qword_1EB4D16E0, &qword_1ABF33870);
  sub_1ABA954F0();
  v86 = sub_1ABF239C4();
  sub_1ABAB5378();
  v84 = sub_1ABF239C4();
  v44 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v45 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v46 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v47 = sub_1ABDBFC1C();
  sub_1ABF218B4();
  v48 = sub_1ABF239C4();
  sub_1ABAA07B8(v48, &v114);
  sub_1ABDBFB44();
  v49 = sub_1ABF239C4();
  sub_1ABAA07B8(v49, &v113);
  v50 = sub_1ABF239C4();
  sub_1ABAA07B8(v50, &v112);
  sub_1ABDBF9A8();
  v51 = sub_1ABF239C4();
  sub_1ABAA07B8(v51, &v111);
  v52 = sub_1ABF239C4();
  sub_1ABAA07B8(v52, &v110);
  v53 = sub_1ABF239C4();
  sub_1ABAA07B8(v53, &v109);
  v54 = sub_1ABF239C4();
  sub_1ABAA07B8(v54, &v108);
  sub_1ABDBFB44();
  v55 = sub_1ABF239C4();
  sub_1ABAA07B8(v55, &v107);
  v56 = sub_1ABF239C4();
  sub_1ABAA07B8(v56, &v106);
  sub_1ABDBF9A8();
  v57 = sub_1ABF239C4();
  sub_1ABAA07B8(v57, &v105);
  v58 = sub_1ABF239C4();
  sub_1ABAA07B8(v58, &v104);
  v59 = sub_1ABF239C4();
  sub_1ABAA07B8(v59, &v103);
  v60 = sub_1ABF239C4();
  sub_1ABDBFB44();
  v61 = sub_1ABF239C4();
  v62 = sub_1ABF239C4();
  sub_1ABA8C744();
  v63 = sub_1ABF239C4();
  v64 = sub_1ABF239C4();
  v65 = sub_1ABF239C4();
  v66 = type metadata accessor for KTSDataAggregateRepresentation(0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  KTSDataAggregateRepresentation.init(startTime:endTime:distanceInMeters:elevationGainInMeters:distanceBuckets:durationInSeconds:expectedDurationInSecondsNoTraffic:distanceSpentInTrafficBuckets:timeSpentInTrafficBuckets:distanceSpentAtSpeedBuckets:timeSpentAtSpeedBuckets:distanceSpentAtRelativeSpeeds:timeSpentAtRelativeSpeeds:distancePerRoadType:timePerRoadType:distancePerWeatherType:timePerWeatherType:distancePerTerrainType:timePerTerrainType:averageSpeedInMetersPerSecond:score:usageKwh:optimalUsageKwh:numBrakingEvents:numAccelEvents:numHighSpeedEvents:roadDistancesInMeters:roadSpeedBuckets:roadRelativeSpeedBuckets:roadTimes:lifeEventIds:ktsSegmentIds:maxTripDistanceInMeters:avgTripDistanceInMeters:maxElevationGainInMeters:avgElevationGainInMeters:percentTimeSpentAtSpeedBuckets:percentTimeSpentAtTrafficBuckets:percentTimeSpentAtRelativeSpeeds:percentTimeSpentAtRoadTypes:percentTimeSpentInWeatherTypes:percentTimeSpentInTerrainTypes:percentDistanceTraveledAtSpeedBuckets:percentDistanceTraveledAtTrafficBuckets:p(v107, v106, v105, v104, v113, v103, v102, v101, v100, v99, v98, v97, v96, v95, v94, v93, v92, v112, v114, v115, 0, 0, 0, v91, v88, v86, v84, 0, 0, v108, v109, v110, v111, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v60, v61, v62, v63, v64, v65, 0, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  return v69;
}

uint64_t sub_1ABDB445C(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1ABA8D150(a1, a2);
  swift_unknownObjectRetain_n();
  v3 = sub_1ABA7ECFC();
  sub_1ABAD219C(v3, v4);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1ABDBFBE4();
  sub_1ABDBF9C0();
  v6 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v6);

  sub_1ABA89F68();
  swift_getObjectType();
  v7 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v7);

  result = sub_1ABF24CE4();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB4570(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1ABA8D150(a1, a2);
  swift_unknownObjectRetain_n();
  v3 = sub_1ABA7ECFC();
  sub_1ABAD219C(v3, v4);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1ABDBFBE4();
  sub_1ABDBF9C0();
  v6 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v6);

  sub_1ABA89F68();
  swift_getObjectType();
  v7 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v7);

  result = sub_1ABF24CE4();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB4684(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  sub_1ABAD219C(&qword_1EB4D1700, &qword_1ABF33890);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000043, 0x80000001ABF90390);
  MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF903E0);
  MEMORY[0x1AC5A9410](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_1ABF253A4();
  MEMORY[0x1AC5A9410](v4);

  result = sub_1ABF24CE4();
  __break(1u);
  return result;
}

uint64_t sub_1ABDB47E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

unint64_t sub_1ABDB4878()
{
  result = qword_1EB4D9628;
  if (!qword_1EB4D9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9628);
  }

  return result;
}

unint64_t sub_1ABDB48CC()
{
  result = qword_1EB4D9638;
  if (!qword_1EB4D9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9638);
  }

  return result;
}

unint64_t sub_1ABDB4920()
{
  result = qword_1EB4D9640;
  if (!qword_1EB4D9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9640);
  }

  return result;
}

unint64_t sub_1ABDB4974()
{
  result = qword_1EB4D9648;
  if (!qword_1EB4D9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9648);
  }

  return result;
}

unint64_t sub_1ABDB49C8()
{
  result = qword_1EB4D9650;
  if (!qword_1EB4D9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9650);
  }

  return result;
}

unint64_t sub_1ABDB4A1C()
{
  result = qword_1EB4D9658;
  if (!qword_1EB4D9658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9658);
  }

  return result;
}

unint64_t sub_1ABDB4A70()
{
  result = qword_1EB4D9660;
  if (!qword_1EB4D9660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9660);
  }

  return result;
}

unint64_t sub_1ABDB4AC4()
{
  result = qword_1EB4D9688;
  if (!qword_1EB4D9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9688);
  }

  return result;
}

unint64_t sub_1ABDB4B18()
{
  result = qword_1EB4D9698;
  if (!qword_1EB4D9698)
  {
    sub_1ABAE2850(&qword_1EB4D1700, &qword_1ABF33890);
    sub_1ABDB4BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9698);
  }

  return result;
}

unint64_t sub_1ABDB4BA4()
{
  result = qword_1EB4D96A0;
  if (!qword_1EB4D96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96A0);
  }

  return result;
}

unint64_t sub_1ABDB4BF8()
{
  result = qword_1EB4D96B0;
  if (!qword_1EB4D96B0)
  {
    sub_1ABAE2850(&qword_1EB4D16A0, &qword_1ABF33830);
    sub_1ABDB4CB0();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96B0);
  }

  return result;
}

unint64_t sub_1ABDB4CB0()
{
  result = qword_1EB4D96B8;
  if (!qword_1EB4D96B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96B8);
  }

  return result;
}

unint64_t sub_1ABDB4D04()
{
  result = qword_1EB4D96C0;
  if (!qword_1EB4D96C0)
  {
    sub_1ABAE2850(&qword_1EB4D1690, &qword_1ABF33820);
    sub_1ABDB4CB0();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96C0);
  }

  return result;
}

unint64_t sub_1ABDB4DBC()
{
  result = qword_1EB4D96C8;
  if (!qword_1EB4D96C8)
  {
    sub_1ABAE2850(&qword_1EB4D16C0, &qword_1ABF33850);
    sub_1ABDB4E74();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96C8);
  }

  return result;
}

unint64_t sub_1ABDB4E74()
{
  result = qword_1EB4D96D0;
  if (!qword_1EB4D96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96D0);
  }

  return result;
}

unint64_t sub_1ABDB4EC8()
{
  result = qword_1EB4D96D8;
  if (!qword_1EB4D96D8)
  {
    sub_1ABAE2850(&qword_1EB4D16B0, &qword_1ABF33840);
    sub_1ABDB4E74();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96D8);
  }

  return result;
}

unint64_t sub_1ABDB4F80()
{
  result = qword_1EB4D96E0;
  if (!qword_1EB4D96E0)
  {
    sub_1ABAE2850(&qword_1EB4D16E0, &qword_1ABF33870);
    sub_1ABDB5038();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96E0);
  }

  return result;
}

unint64_t sub_1ABDB5038()
{
  result = qword_1EB4D96E8;
  if (!qword_1EB4D96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96E8);
  }

  return result;
}

unint64_t sub_1ABDB508C()
{
  result = qword_1EB4D96F0;
  if (!qword_1EB4D96F0)
  {
    sub_1ABAE2850(&qword_1EB4D16D0, &qword_1ABF33860);
    sub_1ABDB5038();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D96F0);
  }

  return result;
}

unint64_t sub_1ABDB5144()
{
  result = qword_1EB4D9708;
  if (!qword_1EB4D9708)
  {
    sub_1ABAE2850(&qword_1EB4D15A0, &qword_1ABF33730);
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9708);
  }

  return result;
}

unint64_t sub_1ABDB51FC(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABA9E454();
    sub_1ABAE2850(&qword_1EB4D1580, &qword_1ABF33710);
    v2();
    sub_1ABAA030C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABDB5270()
{
  result = qword_1EB4D9720;
  if (!qword_1EB4D9720)
  {
    sub_1ABAE2850(&qword_1EB4D1570, &qword_1ABF33700);
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9720);
  }

  return result;
}

unint64_t sub_1ABDB5328()
{
  result = qword_1EB4D9728;
  if (!qword_1EB4D9728)
  {
    sub_1ABAE2850(&qword_1EB4D1670, &qword_1ABF33800);
    sub_1ABDB53E0();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9728);
  }

  return result;
}

unint64_t sub_1ABDB53E0()
{
  result = qword_1EB4D9730;
  if (!qword_1EB4D9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9730);
  }

  return result;
}

unint64_t sub_1ABDB5434()
{
  result = qword_1EB4D9738;
  if (!qword_1EB4D9738)
  {
    sub_1ABAE2850(&qword_1EB4D1650, &qword_1ABF337E0);
    sub_1ABDB54EC();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9738);
  }

  return result;
}

unint64_t sub_1ABDB54EC()
{
  result = qword_1EB4D9740;
  if (!qword_1EB4D9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9740);
  }

  return result;
}

unint64_t sub_1ABDB5540()
{
  result = qword_1EB4D9748;
  if (!qword_1EB4D9748)
  {
    sub_1ABAE2850(&qword_1EB4D1660, &qword_1ABF337F0);
    sub_1ABDB55F8();
    sub_1ABD1044C(&unk_1EB4D9690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9748);
  }

  return result;
}

unint64_t sub_1ABDB55F8()
{
  result = qword_1EB4D9750;
  if (!qword_1EB4D9750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9750);
  }

  return result;
}

unint64_t sub_1ABDB564C()
{
  result = qword_1EB4D9758;
  if (!qword_1EB4D9758)
  {
    sub_1ABAE2850(&qword_1EB4D1640, &qword_1ABF337D0);
    sub_1ABDB53E0();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9758);
  }

  return result;
}

unint64_t sub_1ABDB5704()
{
  result = qword_1EB4D9760;
  if (!qword_1EB4D9760)
  {
    sub_1ABAE2850(&qword_1EB4D1620, &qword_1ABF337B0);
    sub_1ABDB54EC();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9760);
  }

  return result;
}

unint64_t sub_1ABDB57BC()
{
  result = qword_1EB4D9768;
  if (!qword_1EB4D9768)
  {
    sub_1ABAE2850(&qword_1EB4D1630, &qword_1ABF337C0);
    sub_1ABDB55F8();
    sub_1ABD1044C(&unk_1EB4D96A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9768);
  }

  return result;
}

unint64_t sub_1ABDB5894()
{
  result = qword_1EB4D9798;
  if (!qword_1EB4D9798)
  {
    sub_1ABAE2850(&qword_1EB4D1700, &qword_1ABF33890);
    sub_1ABDB5920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9798);
  }

  return result;
}

unint64_t sub_1ABDB5920()
{
  result = qword_1EB4D97A0;
  if (!qword_1EB4D97A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97A0);
  }

  return result;
}

unint64_t sub_1ABDB5974()
{
  result = qword_1EB4D97B0;
  if (!qword_1EB4D97B0)
  {
    sub_1ABAE2850(&qword_1EB4D16A0, &qword_1ABF33830);
    sub_1ABDB5A2C();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97B0);
  }

  return result;
}

unint64_t sub_1ABDB5A2C()
{
  result = qword_1EB4D97B8;
  if (!qword_1EB4D97B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97B8);
  }

  return result;
}

unint64_t sub_1ABDB5A80()
{
  result = qword_1EB4D97C0;
  if (!qword_1EB4D97C0)
  {
    sub_1ABAE2850(&qword_1EB4D1690, &qword_1ABF33820);
    sub_1ABDB5A2C();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97C0);
  }

  return result;
}

unint64_t sub_1ABDB5B38()
{
  result = qword_1EB4D97C8;
  if (!qword_1EB4D97C8)
  {
    sub_1ABAE2850(&qword_1EB4D16C0, &qword_1ABF33850);
    sub_1ABDB5BF0();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97C8);
  }

  return result;
}

unint64_t sub_1ABDB5BF0()
{
  result = qword_1EB4D97D0;
  if (!qword_1EB4D97D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97D0);
  }

  return result;
}

unint64_t sub_1ABDB5C44()
{
  result = qword_1EB4D97D8;
  if (!qword_1EB4D97D8)
  {
    sub_1ABAE2850(&qword_1EB4D16B0, &qword_1ABF33840);
    sub_1ABDB5BF0();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97D8);
  }

  return result;
}

unint64_t sub_1ABDB5CFC()
{
  result = qword_1EB4D97E0;
  if (!qword_1EB4D97E0)
  {
    sub_1ABAE2850(&qword_1EB4D16E0, &qword_1ABF33870);
    sub_1ABDB5DB4();
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97E0);
  }

  return result;
}

unint64_t sub_1ABDB5DB4()
{
  result = qword_1EB4D97E8;
  if (!qword_1EB4D97E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97E8);
  }

  return result;
}

unint64_t sub_1ABDB5E08()
{
  result = qword_1EB4D97F0;
  if (!qword_1EB4D97F0)
  {
    sub_1ABAE2850(&qword_1EB4D16D0, &qword_1ABF33860);
    sub_1ABDB5DB4();
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D97F0);
  }

  return result;
}

unint64_t sub_1ABDB5EC0()
{
  result = qword_1EB4D9808;
  if (!qword_1EB4D9808)
  {
    sub_1ABAE2850(&qword_1EB4D15A0, &qword_1ABF33730);
    sub_1ABD1044C(&unk_1EB4D9790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9808);
  }

  return result;
}

unint64_t sub_1ABDB5F78(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABA9E454();
    sub_1ABAE2850(&qword_1EB4D1590, &qword_1ABF33720);
    v2();
    sub_1ABAA030C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1ABDB5FEC()
{
  result = qword_1EB4D9820;
  if (!qword_1EB4D9820)
  {
    sub_1ABAE2850(&qword_1EB4D1570, &qword_1ABF33700);
    sub_1ABD1044C(&unk_1EB4D97A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9820);
  }

  return result;
}
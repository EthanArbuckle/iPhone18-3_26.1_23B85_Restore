void sub_1ABDCC038()
{
  sub_1ABA81AB4();
  v44 = v1;
  v48 = sub_1ABAD219C(&qword_1EB4D9B48, &qword_1ABF62350);
  sub_1ABA7BBB0(v48);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA83634();
  v47 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64(v47);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v46 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D99C0, &qword_1ABF61840);
  sub_1ABA7AB80(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D1448, &qword_1ABF335D0);
  sub_1ABA7BB64(v15);
  v43 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v21 = sub_1ABDD3840(v20);
  v22 = sub_1ABAAB7C8(v21);
  sub_1ABA89B80(v22);
  v45 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v52 == v0)
    {
      v42 = sub_1ABBFA7A8(v45);
      *v44 = v42;
      sub_1ABA8CD68();
      return;
    }

    if (v51)
    {
      v23 = MEMORY[0x1AC5AA170](v0, v50);
    }

    else
    {
      if (v0 >= *(v49 + 16))
      {
        goto LABEL_17;
      }

      v23 = *(v50 + 8 * v0 + 32);
    }

    v24 = v23;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    [v23 bucket];
    sub_1ABDC3454();
    [v24 bucketValue];
    v25 = [objc_opt_self() meters];
    v26 = sub_1ABDD3888();
    sub_1ABAFF390(v26, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABDD3744();

    v27 = sub_1ABA9F2B4();
    v28(v27);
    sub_1ABDD3978();
    sub_1ABDD36B0();
    swift_dynamicCast();
    sub_1ABA898F8();
    sub_1ABA7B9B4(v29, v30, v31, v32);
    sub_1ABDD368C();
    if (sub_1ABA7E1E0(v33, v34, v35) == 1)
    {
      sub_1ABAB480C(v14, &qword_1EB4D99C0, &qword_1ABF61840);
      ++v0;
    }

    else
    {
      sub_1ABAE2F1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v37, v38, v45);
        sub_1ABADC20C();
        v45 = v40;
      }

      sub_1ABDD3868();
      if (v39)
      {
        sub_1ABADC20C();
        v45 = v41;
      }

      *(v45 + 16) = v0;
      sub_1ABAA41F0();
      sub_1ABAE2F1C();
      ++v0;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1ABDCC3B8()
{
  sub_1ABA81AB4();
  v44 = v1;
  v48 = sub_1ABAD219C(&qword_1EB4D9B38, &qword_1ABF62340);
  sub_1ABA7BBB0(v48);
  v3 = *(v2 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA83634();
  v47 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64(v47);
  v6 = *(v5 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v46 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D9988, &qword_1ABF617D8);
  sub_1ABA7AB80(v9);
  v11 = *(v10 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D1428, &qword_1ABF335B0);
  sub_1ABA7BB64(v15);
  v43 = v16;
  v18 = *(v17 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v21 = sub_1ABDD3840(v20);
  v22 = sub_1ABAAB7C8(v21);
  sub_1ABA89B80(v22);
  v45 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v52 == v0)
    {
      v42 = sub_1ABBFA7F8(v45);
      *v44 = v42;
      sub_1ABA8CD68();
      return;
    }

    if (v51)
    {
      v23 = MEMORY[0x1AC5AA170](v0, v50);
    }

    else
    {
      if (v0 >= *(v49 + 16))
      {
        goto LABEL_17;
      }

      v23 = *(v50 + 8 * v0 + 32);
    }

    v24 = v23;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    [v23 bucket];
    sub_1ABDC3558();
    [v24 bucketValue];
    v25 = [objc_opt_self() meters];
    v26 = sub_1ABDD3888();
    sub_1ABAFF390(v26, &qword_1EB4CE6D8, 0x1E696B058);
    sub_1ABDD3744();

    v27 = sub_1ABA9F2B4();
    v28(v27);
    sub_1ABDD3978();
    sub_1ABDD36B0();
    swift_dynamicCast();
    sub_1ABA898F8();
    sub_1ABA7B9B4(v29, v30, v31, v32);
    sub_1ABDD368C();
    if (sub_1ABA7E1E0(v33, v34, v35) == 1)
    {
      sub_1ABAB480C(v14, &qword_1EB4D9988, &qword_1ABF617D8);
      ++v0;
    }

    else
    {
      sub_1ABAE2F1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1ABA7C494(isUniquelyReferenced_nonNull_native, v37, v38, v45);
        sub_1ABADC1C4();
        v45 = v40;
      }

      sub_1ABDD3868();
      if (v39)
      {
        sub_1ABADC1C4();
        v45 = v41;
      }

      *(v45 + 16) = v0;
      sub_1ABAA41F0();
      sub_1ABAE2F1C();
      ++v0;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_1ABDCC738()
{
  v2 = v0;
  memcpy(__dst, v0, 0xC0uLL);
  v4 = v0[24];
  v3 = v0[25];
  v6 = v2[26];
  v5 = v2[27];
  sub_1ABDD3444(__dst);

  sub_1ABDCF63C(off_1E7960238, &selRef_initWithOriginContexts_ktsContexts_destinationContexts_);
  if (v1)
  {
  }

  v9 = v7;
  sub_1ABDCCA3C();
  v11 = v10;
  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA8F864();
    swift_once();
  }

  v12 = sub_1ABF237F4();
  sub_1ABA7AA24(v12, qword_1EB4CE7F0);

  v13 = v9;
  v14 = v11;
  v15 = sub_1ABF237D4();
  v16 = sub_1ABF24644();

  if (os_log_type_enabled(v15, v16))
  {
    sub_1ABAA4194();
    v17 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v17 = 136315650;

    v18 = sub_1ABA7D0F8();
    v21 = sub_1ABADD6D8(v18, v19, v20);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = v13;
    v23 = [v22 description];
    v36 = v16;
    v24 = sub_1ABF23C04();
    v37 = v13;
    v26 = v25;

    v27 = sub_1ABADD6D8(v24, v26, &v39);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2080;
    v28 = v14;
    v29 = [v28 description];
    v30 = sub_1ABF23C04();
    v32 = v31;

    v13 = v37;
    v33 = sub_1ABADD6D8(v30, v32, &v39);

    *(v17 + 24) = v33;
    _os_log_impl(&dword_1ABA78000, v15, v36, "Adding trip ID: %s, trip context: %s, data: %s", v17, 0x20u);
    swift_arrayDestroy();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v34 = sub_1ABA7D0F8();
  return sub_1ABDD33A0(v34, v35, v13, v14, 0);
}

void sub_1ABDCCA3C()
{
  v2 = v0;
  v3 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v4 = sub_1ABA7BB64(v3);
  v274 = v5;
  v275 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  v291 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA972D4();
  v290 = v10;
  v11 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v12 = sub_1ABA7BB64(v11);
  v272 = v13;
  v273 = v12;
  v15 = *(v14 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v286 = v17;
  v18 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v19 = sub_1ABA7BB64(v18);
  v270 = v20;
  v271 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C068();
  v287 = v23;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA972D4();
  v285 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v27 = sub_1ABA7BB64(v26);
  v288 = v28;
  v289 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7C068();
  v269 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA88E50();
  v268 = v33;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA88E50();
  v267 = v35;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA88E50();
  v266 = v37;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA88E50();
  v284 = v39;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA88E50();
  v282 = v41;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA88E50();
  v283 = v43;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA88E50();
  v294 = v45;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA88E50();
  v293 = v47;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v48);
  sub_1ABA972D4();
  v292 = v49;
  v301 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
  v50 = sub_1ABA7BBB0(v301);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7C068();
  v300 = v53;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA88E50();
  v299 = v55;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA972D4();
  v298 = v57;
  v58 = type metadata accessor for CodableLocation();
  v302 = *(v58 - 8);
  v59 = *(v302 + 8);
  MEMORY[0x1EEE9AC00](v58 - 8);
  sub_1ABA7AC18();
  sub_1ABDD3630();
  MEMORY[0x1EEE9AC00](v60);
  v61 = sub_1ABF21EB4();
  v62 = sub_1ABA7BB64(v61);
  v280 = v63;
  v281 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA7C068();
  v277 = v66;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA88E50();
  v276 = v68;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABDD38F4();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v230 - v71;
  sub_1ABA7F2A0();
  v73 = *(v0 + 16);
  v278 = v72;
  sub_1ABF21E04();
  sub_1ABA7F2A0();
  v74 = *(v0 + 24);
  v279 = v0;
  sub_1ABF21E04();
  sub_1ABA7F2A0();
  v75 = sub_1ABA9E894();
  sub_1ABDC1EA8(v75);
  v265 = v76;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC3044();
  v264 = v77;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC3298();
  v263 = v78;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC34EC();
  v262 = v79;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC3740();
  v261 = v80;

  v81 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
  sub_1ABA7F2A0();
  v82 = *(v0 + v81);

  sub_1ABAC3994();
  v260 = v83;

  v84 = *(v2 + v81);

  sub_1ABAC3994();
  v259 = v85;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC3BE8();
  v258 = v86;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC3E3C();
  v257 = v87;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC4090();
  v256 = v88;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC42E4();
  v255 = v89;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC4538();
  v254 = v90;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAC47A4();
  v253 = v91;

  v92 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes;
  sub_1ABA7F2A0();
  v93 = *(v2 + v92);
  v94 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters;
  sub_1ABA7F2A0();
  v95 = *(v2 + v94);
  v96 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABA7F2A0();
  v97 = *(v2 + v96);
  v303 = v2;
  v251 = v95;
  v252 = v93;
  if (v97)
  {
    v98 = *(v97 + 16);
    if (v98)
    {
      v305 = 0;
      v313 = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
      sub_1ABA7AD90();
      v304 = v97;
      v100 = v97 + v99;
      v102 = *(v101 + 72);
      do
      {
        sub_1ABA951A8();
        sub_1ABDD3204();
        sub_1ABDD3204();
        CLLocation.init(model:)(v1);
        v103 = sub_1ABA82ED0();
        sub_1ABDD329C(v103, v104);
        sub_1ABF24B94();
        v105 = *(v313 + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v100 += v102;
        --v98;
      }

      while (v98);

      v250 = v313;
      v2 = v303;
    }

    else
    {

      v250 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v250 = 0;
  }

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABA8B360();
  sub_1ABDC2454(v106);
  v249 = v107;

  sub_1ABA7F2A0();
  sub_1ABA9E894();
  sub_1ABAA0084();
  sub_1ABDC2454(v108);
  v248 = v109;

  sub_1ABDC2034(*(v2 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtSpeedBuckets), sub_1ABAB0E08, off_1E7960398, &selRef_initWithBucket_bucketValue_);
  v247 = v110;
  sub_1ABDC2034(*(v2 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtTrafficBuckets), sub_1ABAB0E08, off_1E79603C0, &selRef_initWithBucket_bucketValue_);
  v246 = v111;
  v112 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRelativeSpeeds);
  sub_1ABDC2034(v112, sub_1ABAB0E08, off_1E7960348, &selRef_initWithBucket_bucketValue_);
  v245 = v113;
  v114 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentAtRoadTypes);
  v244 = sub_1ABAC4A10(v114);
  v115 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInWeatherTypes);
  sub_1ABDC2034(v115, sub_1ABAB0E08, off_1E7960480, &selRef_initWithType_typeValue_);
  v243 = v116;
  v117 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentTimeSpentInTerrainTypes);
  sub_1ABDC2034(v117, sub_1ABAB0E08, off_1E79603A8, &selRef_initWithType_typeValue_);
  v242 = v118;
  v119 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtSpeedBuckets);
  sub_1ABDC2034(v119, sub_1ABAB0E08, off_1E7960398, &selRef_initWithBucket_bucketValue_);
  v241 = v120;
  v121 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtTrafficBuckets);
  sub_1ABDC2034(v121, sub_1ABAB0E08, off_1E79603C0, &selRef_initWithBucket_bucketValue_);
  v240 = v122;
  v123 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledAtRelativeSpeeds);
  sub_1ABDC2034(v123, sub_1ABAB0E08, off_1E7960348, &selRef_initWithBucket_bucketValue_);
  v239 = v124;
  v125 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledForRoadTypes);
  v238 = sub_1ABAC4A10(v125);
  v126 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInWeatherTypes);
  sub_1ABDC2034(v126, sub_1ABAB0E08, off_1E7960480, &selRef_initWithType_typeValue_);
  v237 = v127;
  v128 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_percentDistanceTraveledInTerrainTypes);
  sub_1ABDC2034(v128, sub_1ABAB0E08, off_1E79603A8, &selRef_initWithType_typeValue_);
  v236 = v129;
  v130 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerSpeedBucket);
  sub_1ABDC2034(v130, sub_1ABAB0E08, off_1E7960398, &selRef_initWithBucket_bucketValue_);
  v235 = v131;
  v132 = sub_1ABAA0360(OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTrafficBucket);
  v133 = v303;
  sub_1ABDC2034(v132, sub_1ABAB0E08, off_1E79603C0, &selRef_initWithBucket_bucketValue_);
  v234 = v134;
  sub_1ABDC2034(*(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRelativeSpeed), sub_1ABAB0E08, off_1E7960348, &selRef_initWithBucket_bucketValue_);
  v233 = v135;
  v232 = sub_1ABAC4A10(*(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerRoadType));
  sub_1ABDC2034(*(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerWeatherType), sub_1ABAB0E08, off_1E7960480, &selRef_initWithType_typeValue_);
  v231 = v136;
  sub_1ABDC2034(*(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_scorePerTerrainType), sub_1ABAB0E08, off_1E79603A8, &selRef_initWithType_typeValue_);
  v230 = v137;
  v138 = *(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_routeHeatMap);
  if (v138)
  {
    v139 = *(v138 + 16);
    v140 = MEMORY[0x1E69E7CC0];
    if (v139)
    {
      v312 = MEMORY[0x1E69E7CC0];
      sub_1ABADE974();
      v140 = v312;
      v141 = sub_1ABAB0E08(v138);
      v143 = v142;
      v145 = v144;
      v296 = sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
      v297 = v138 + 64;
      v295 = v138;
      while ((v141 & 0x8000000000000000) == 0 && v141 < 1 << *(v138 + 32))
      {
        if (((*(v297 + ((v141 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v141) & 1) == 0)
        {
          goto LABEL_56;
        }

        if (*(v138 + 36) != v143)
        {
          goto LABEL_57;
        }

        v304 = v143;
        LODWORD(v305) = v145;
        v146 = *(v138 + 48);
        v147 = *(v302 + 9);
        v148 = v140;
        sub_1ABDD3204();
        v149 = *(*(v138 + 56) + 8 * v141);
        v150 = v299;
        sub_1ABDD32F4();
        *(v150 + *(v301 + 48)) = v149;
        v151 = v300;
        sub_1ABAE2EC4();
        v152 = CLLocation.init(model:)(v151);
        v140 = v148;
        v153 = v152;
        v154 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v155 = [v154 initWithInteger_];
        sub_1ABAB480C(v150, &qword_1EB4D3720, &qword_1ABF3D798);
        v312 = v140;
        v157 = *(v140 + 16);
        v156 = *(v140 + 24);
        if (v157 >= v156 >> 1)
        {
          sub_1ABA7BBEC(v156);
          sub_1ABADE974();
          v140 = v312;
        }

        *(v140 + 16) = v157 + 1;
        v158 = v140 + 16 * v157;
        *(v158 + 32) = v153;
        *(v158 + 40) = v155;
        v138 = v295;
        v141 = sub_1ABDD3184(v141, v304, v305 & 1, v295);
        v143 = v159;
        v145 = v160;
        if (!--v139)
        {
          v161 = sub_1ABDD3978();
          sub_1ABAC933C(v161, v162, v163);
          v133 = v303;
          goto LABEL_20;
        }
      }

      goto LABEL_55;
    }
  }

  else
  {
    v140 = MEMORY[0x1E69E7CC0];
  }

LABEL_20:
  v304 = sub_1ABBFA938(v140);
  v164 = v289;
  v165 = v288 + 16;
  v166 = *(v288 + 16);
  v166(v292, v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxTripDistanceInMeters, v289);
  v166(v293, v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgTripDistanceInMeters, v164);
  v166(v294, v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_maxElevationGainInMeters, v164);
  v166(v283, v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgElevationGainInMeters, v164);
  v167 = v281;
  v168 = *(v280 + 16);
  v168(v276, v278, v281);
  v168(v277, v279, v167);
  v169 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7F2A0();
  v166(v282, v133 + v169, v164);
  v170 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7F2A0();
  v305 = v165;
  v302 = v166;
  v166(v284, v133 + v170, v164);
  v171 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7F2A0();
  v172 = v271;
  v173 = *(v270 + 16);
  v173(v285, v133 + v171, v271);
  v174 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7F2A0();
  v173(v287, v133 + v174, v172);
  v175 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7F2A0();
  (*(v272 + 16))(v286, v133 + v175, v273);
  v176 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7F2A0();
  v177 = *(v133 + v176);
  v178 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7F2A0();
  v179 = v275;
  v180 = *(v274 + 16);
  v180(v290, v133 + v178, v275);
  v181 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  sub_1ABA7F2A0();
  v180(v291, v133 + v181, v179);
  v182 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numBrakingEvents;
  sub_1ABA7F2A0();
  v183 = *(v133 + v182);
  if (v183 < 0xFFFFFFFF80000000)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v183 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v184 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numAccelEvents;
  sub_1ABA7F2A0();
  if (*(v133 + v184) < 0xFFFFFFFF80000000)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  sub_1ABDD3698();
  if (!(v187 ^ v188 | v186))
  {
    goto LABEL_61;
  }

  v301 = v185;
  v189 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_numHighSpeedEvents;
  sub_1ABA7F2A0();
  if (*(v133 + v189) < 0xFFFFFFFF80000000)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_1ABDD3698();
  if (v187 ^ v188 | v186)
  {
    v299 = v190;
    v300 = v183;
    v191 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
    sub_1ABA7F2A0();
    v192 = *(v133 + v191);
    if (v192)
    {
      v193 = *(v192 + 16);
      v194 = MEMORY[0x1E69E7CC0];
      if (v193)
      {
        v307 = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v195 = 0;
        while (v195 < *(v192 + 16))
        {
          if ((*(v192 + 8 * v195 + 32) & 0x80000000000000) != 0)
          {
            sub_1ABA9F44C();
          }

          else
          {
            sub_1ABA969C4();
          }

          v309 = v197;
          v310 = 0xE300000000000000;
          v311 = v196;
          sub_1ABAA015C();
          v198 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v198);

          v199 = v310;
          v200 = objc_allocWithZone(GDEntityIdentifier);
          v201 = sub_1ABDD36A4();
          if (!sub_1ABDD1654(v201, v199))
          {
            goto LABEL_64;
          }

          ++v195;
          sub_1ABF24B94();
          v202 = *(v307 + 16);
          sub_1ABF24BD4();
          sub_1ABA7C5D0();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          if (v193 == v195)
          {

            v194 = v307;
            v133 = v303;
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_54;
      }

LABEL_38:
      v298 = v194;
    }

    else
    {
      v298 = 0;
    }

    v203 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
    sub_1ABA7F2A0();
    v204 = *(v133 + v203);
    if (v204)
    {
      v205 = *(v204 + 16);
      v206 = MEMORY[0x1E69E7CC0];
      if (v205)
      {
        v311 = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v207 = 0;
        while (v207 < *(v204 + 16))
        {
          if ((*(v204 + 8 * v207 + 32) & 0x80000000000000) != 0)
          {
            sub_1ABA9F44C();
          }

          else
          {
            sub_1ABA969C4();
          }

          v307 = v209;
          v308 = 0xE300000000000000;
          v306 = v208;
          sub_1ABAA015C();
          v210 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v210);

          v211 = v308;
          v212 = objc_allocWithZone(GDEntityIdentifier);
          v213 = sub_1ABDD36A4();
          if (!sub_1ABDD1654(v213, v211))
          {
            goto LABEL_65;
          }

          ++v207;
          sub_1ABF24B94();
          v214 = *(v311 + 16);
          sub_1ABF24BD4();
          sub_1ABA7C5D0();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          if (v205 == v207)
          {

            v206 = v311;
            v133 = v303;
            goto LABEL_50;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

LABEL_50:
      v303 = v206;
      v215 = v269;
    }

    else
    {
      v303 = 0;
      v215 = v269;
    }

    v216 = v266;
    v217 = v289;
    v218 = v302;
    v302(v266, v292, v289);
    v219 = v267;
    v218(v267, v293, v217);
    v220 = v268;
    v218(v268, v294, v217);
    v221 = v283;
    v218(v215, v283, v217);
    v222 = *(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumBrakingEvents);
    v223 = *(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumAccelEvents);
    v224 = *(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_avgNumHighSpeedEvents);
    v225 = *(v133 + OBJC_IVAR____TtC20IntelligencePlatform30KTSDataAggregateRepresentation_mostEfficientDriveScore);
    v226 = objc_allocWithZone(GDKTSDataAggregateRepresentation);
    sub_1ABDD1F30(v276, v277, v282, v284, v177, v222, v223, v224, v225, v265, v285, v287, v264, v263, v262, v261, v260, v259, v254, v253, v256, v255, v258, v257, v286, v290, v291, __SPAIR64__(v301, v300), v299, v251, v249, v248, v252, v250, v298, v303, v216, v219, v220, v215, v247, v246, v245, v244, v243, v242, v241, v240, v239, v238, v237, v236, v235, v234, v233, v232, v231, v230, v304);
    v227 = *(v288 + 8);
    v227(v221, v217);
    v227(v294, v217);
    v227(v293, v217);
    v227(v292, v217);
    v228 = *(v280 + 8);
    v229 = v281;
    v228(v279, v281);
    v228(v278, v229);
    return;
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_1ABDCE194(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = [v2 identifier];
  v7 = sub_1ABF23C04();
  v9 = v8;

  v10 = [v2 context];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v11 = [v2 data];
    sub_1ABAB5570();
    sub_1ABDCF044(a1, v12, v13, v14, v15, KTSContextAggregateRepresentation.init(originContexts:ktsContexts:destinationContexts:graphLifeEventContext:));
    if (v3)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v48 = v16;
      sub_1ABDC7440(v16, v17, v18, v19, v20, v21, v22, v23, v51, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18]);
      v50 = v49;
      swift_unknownObjectRelease();

      sub_1ABDD345C(__src);
      memcpy(a2, __src, 0xC0uLL);
      a2[24] = v50;
      a2[25] = v48;
      a2[26] = v7;
      a2[27] = v9;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA8F864();
      swift_once();
    }

    v24 = sub_1ABF237F4();
    sub_1ABA7AA24(v24, qword_1EB4CE7F0);
    v25 = v2;
    v26 = sub_1ABF237D4();
    v27 = sub_1ABF24664();

    if (os_log_type_enabled(v26, v27))
    {
      sub_1ABA8C938();
      v28 = swift_slowAlloc();
      sub_1ABAA4194();
      v29 = swift_slowAlloc();
      __src[0] = v29;
      *v28 = 136315138;
      v30 = v25;
      v31 = [v30 description];
      sub_1ABF23C04();

      v32 = sub_1ABA82ED0();
      v35 = sub_1ABADD6D8(v32, v33, v34);

      *(v28 + 4) = v35;
      sub_1ABA9EA40(&dword_1ABA78000, v36, v37, "Couldn't convert to aggregate representation: %s.");
      sub_1ABA84B54(v29);
      v38 = sub_1ABA8EBB8();
      MEMORY[0x1AC5AB8B0](v38);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABF24AB4();

    sub_1ABA8071C();
    __src[1] = v39;
    v40 = v25;
    v41 = [v40 description];
    v42 = sub_1ABF23C04();
    v44 = v43;

    MEMORY[0x1AC5A9410](v42, v44);

    sub_1ABDD37D4();
    v45 = __src[1];
    sub_1ABDBF718();
    v46 = sub_1ABA7BD00();
    *v47 = 0xD00000000000002ELL;
    v47[1] = v45;
    sub_1ABA8A68C(v46, v47);
  }
}

void sub_1ABDCE4E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  v7 = [v4 identifier];
  sub_1ABF23C04();

  v8 = [v4 context];
  objc_opt_self();
  sub_1ABA895D4();
  if (swift_dynamicCastObjCClass())
  {
    v9 = [v4 data];
    sub_1ABAB5570();
    sub_1ABDCF044(a1, v10, v11, v12, v13, KTSContextAggregateRepresentation.init(originContexts:ktsContexts:destinationContexts:graphLifeEventContext:));
    if (v3)
    {

      swift_unknownObjectRelease();

      return;
    }

    v38 = v14;
    sub_1ABDC3E14();
    type metadata accessor for KTSDataAggregateRepresentation(0);
    sub_1ABA89740();
    if (swift_dynamicCastClass())
    {
      v64 = 0;
      memset(v63, 0, sizeof(v63));

      KTSData.init(identifier:data:context:metadata:)();
      v39 = v66;
      if (v66)
      {
        v40 = v67;

        swift_unknownObjectRelease();

        *a2 = v65;
        a2[1] = v39;
        a2[2] = v40;
        return;
      }
    }

    else
    {
    }

    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA8F864();
      swift_once();
    }

    v68 = v38;
    v41 = sub_1ABF237F4();
    sub_1ABA7AA24(v41, qword_1EB4CE7F0);
    v42 = v4;
    v43 = sub_1ABF237D4();
    v44 = sub_1ABF24664();

    if (os_log_type_enabled(v43, v44))
    {
      sub_1ABA8C938();
      v45 = swift_slowAlloc();
      sub_1ABAA4194();
      v61 = swift_slowAlloc();
      *&v63[0] = v61;
      *v45 = 136315138;
      v46 = v42;
      v47 = [v46 description];
      v62 = v42;
      v48 = sub_1ABF23C04();
      v50 = v49;

      v51 = sub_1ABADD6D8(v48, v50, v63);

      *(v45 + 4) = v51;
      v42 = v62;
      sub_1ABDD3984(&dword_1ABA78000, v52, v53, "Couldn't make a KTSSliceData object: %s.");
      sub_1ABA84B54(v61);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    *&v63[0] = 0;
    *(&v63[0] + 1) = 0xE000000000000000;
    sub_1ABF24AB4();

    sub_1ABA8071C();
    *&v63[0] = 0xD000000000000025;
    *(&v63[0] + 1) = v54;
    v55 = v42;
    v56 = [v55 description];
    sub_1ABF23C04();

    v57 = sub_1ABAA015C();
    MEMORY[0x1AC5A9410](v57);

    sub_1ABDD37D4();
    v58 = v63[0];
    sub_1ABDBF718();
    v59 = sub_1ABA7BD00();
    *v60 = v58;
    sub_1ABA8A68C(v59, v60);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA8F864();
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1EB4CE7F0);
    v16 = v4;
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();

    if (os_log_type_enabled(v17, v18))
    {
      sub_1ABA8C938();
      v19 = swift_slowAlloc();
      sub_1ABAA4194();
      v20 = swift_slowAlloc();
      *&v63[0] = v20;
      *v19 = 136315138;
      v21 = v16;
      v22 = [v21 description];
      sub_1ABF23C04();

      v23 = sub_1ABA82ED0();
      v26 = sub_1ABADD6D8(v23, v24, v25);

      *(v19 + 4) = v26;
      sub_1ABA9EA40(&dword_1ABA78000, v27, v28, "Couldn't convert to aggregate representation: %s.");
      sub_1ABA84B54(v20);
      v29 = sub_1ABA8EBB8();
      MEMORY[0x1AC5AB8B0](v29);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABF24AB4();

    sub_1ABA8071C();
    *&v63[0] = 0xD00000000000002ELL;
    *(&v63[0] + 1) = v30;
    v31 = v16;
    v32 = [v31 description];
    v33 = sub_1ABF23C04();
    v35 = v34;

    MEMORY[0x1AC5A9410](v33, v35);

    sub_1ABDD37D4();
    sub_1ABDBF718();
    v36 = sub_1ABA7BD00();
    *v37 = v63[0];
    sub_1ABA8A68C(v36, v37);
  }
}

uint64_t sub_1ABDCEA74@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v4 = v2;
  v7 = [v4 identifier];
  sub_1ABF23C04();

  v8 = [v4 context];
  objc_opt_self();
  sub_1ABA895D4();
  if (swift_dynamicCastObjCClass())
  {
    v73 = a2;
    v9 = [v4 data];
    sub_1ABDC3E14();

    sub_1ABA9FEDC();
    sub_1ABDCF044(a1, v10, v11, v12, v13, KTSContextRepresentation.init(originContext:ktsContext:destinationContext:graphLifeEventContext:));
    if (v3)
    {

      swift_unknownObjectRelease();
    }

    v39 = [v4 segmentId];
    sub_1ABF23C04();

    sub_1ABA7C5D0();
    KTSSegmentData.init(identifier:data:context:metadata:)();
    v40 = v70;
    if (!v70)
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA8F864();
        swift_once();
      }

      v43 = sub_1ABF237F4();
      sub_1ABA7AA24(v43, qword_1EB4CE7F0);
      v44 = v4;
      v45 = sub_1ABF237D4();
      v46 = sub_1ABF24664();

      if (os_log_type_enabled(v45, v46))
      {
        sub_1ABA8C938();
        v47 = swift_slowAlloc();
        sub_1ABAA4194();
        v68 = swift_slowAlloc();
        v69 = v68;
        *v47 = 136315138;
        v73 = v44;
        v48 = v44;
        v49 = [v48 description];
        v50 = sub_1ABF23C04();
        v52 = v51;

        v53 = sub_1ABADD6D8(v50, v52, &v69);

        *(v47 + 4) = v53;
        v44 = v73;
        sub_1ABDD3984(&dword_1ABA78000, v54, v55, "Couldn't make a KTSData object: %s.");
        sub_1ABA84B54(v68);
        v56 = sub_1ABA8EBB8();
        MEMORY[0x1AC5AB8B0](v56);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      v69 = 0;
      v70 = 0xE000000000000000;
      sub_1ABF24AB4();

      sub_1ABA8071C();
      v69 = 0xD000000000000020;
      v70 = v57;
      v58 = v44;
      v59 = [v58 description];
      v60 = sub_1ABF23C04();
      v62 = v61;

      MEMORY[0x1AC5A9410](v60, v62);

      sub_1ABDD37D4();
      v63 = v69;
      v64 = v70;
      sub_1ABDBF718();
      v65 = sub_1ABA7BD00();
      *v66 = v63;
      v66[1] = v64;
      sub_1ABA8A68C(v65, v66);
      swift_unknownObjectRelease();
    }

    v41 = v72;
    v67 = v71;
    swift_unknownObjectRelease();

    v42 = v73;
    *v73 = v69;
    v42[1] = v40;
    *(v42 + 1) = v67;
    v42[4] = v41;
  }

  else
  {

    swift_unknownObjectRelease();
    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA8F864();
      swift_once();
    }

    v15 = sub_1ABF237F4();
    sub_1ABA7AA24(v15, qword_1EB4CE7F0);
    v16 = v4;
    v17 = sub_1ABF237D4();
    v18 = sub_1ABF24664();

    if (os_log_type_enabled(v17, v18))
    {
      sub_1ABA8C938();
      v19 = swift_slowAlloc();
      sub_1ABAA4194();
      v20 = swift_slowAlloc();
      v69 = v20;
      *v19 = 136315138;
      v21 = v16;
      v22 = [v21 description];
      sub_1ABF23C04();

      v23 = sub_1ABA82ED0();
      v26 = sub_1ABADD6D8(v23, v24, v25);

      *(v19 + 4) = v26;
      sub_1ABA9EA40(&dword_1ABA78000, v27, v28, "Couldn't convert to context representation: %s.");
      sub_1ABA84B54(v20);
      v29 = sub_1ABA8EBB8();
      MEMORY[0x1AC5AB8B0](v29);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABF24AB4();

    sub_1ABA8071C();
    v70 = v30;
    v31 = v16;
    v32 = [v31 description];
    v33 = sub_1ABF23C04();
    v35 = v34;

    MEMORY[0x1AC5A9410](v33, v35);

    sub_1ABDD37D4();
    v36 = v70;
    sub_1ABDBF718();
    v37 = sub_1ABA7BD00();
    *v38 = 0xD000000000000024;
    v38[1] = v36;
    return sub_1ABA8A68C(v37, v38);
  }

  return result;
}

void sub_1ABDCF044(uint64_t a1, SEL *a2, SEL *a3, SEL *a4, void (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v11 = v6;
  v12 = type metadata accessor for CustomGraphActivityEvent(0);
  v13 = sub_1ABA7BB64(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA88E50();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1ABF217F4();
  sub_1ABA90758(v18);
  swift_allocObject();
  sub_1ABF217E4();
  v19 = [v6 *a2];
  v20 = sub_1ABF240D4();

  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v71 = v11;
  if (v21)
  {
    v65 = a3;
    v74 = MEMORY[0x1E69E7CC0];
    sub_1ABADE9B4();
    v23 = 0;
    v24 = v74;
    v73 = v20;
    v25 = (v20 + 40);
    while (1)
    {
      if (v23 >= *(v73 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v26 = *(v25 - 1);
      v27 = *v25;
      v28 = sub_1ABDD36F8();
      sub_1ABB0DBF0(v28, v29);
      sub_1ABAA15FC();
      sub_1ABDD325C(&qword_1EB4D9590);
      sub_1ABF217D4();
      if (v7)
      {
        break;
      }

      v30 = sub_1ABDD36F8();
      sub_1ABA96210(v30, v31);
      v32 = *(v74 + 16);
      if (v32 >= *(v74 + 24) >> 1)
      {
        sub_1ABA8C620();
        sub_1ABADE9B4();
      }

      ++v23;
      *(v74 + 16) = v32 + 1;
      sub_1ABA7AD90();
      v34 = *(v33 + 72);
      sub_1ABA90300();
      sub_1ABDD32F4();
      v25 += 2;
      if (v21 == v23)
      {

        v11 = v71;
        v22 = MEMORY[0x1E69E7CC0];
        a3 = v65;
        goto LABEL_11;
      }
    }

    v35 = sub_1ABDD36F8();
    sub_1ABA96210(v35, v36);
LABEL_31:

    goto LABEL_33;
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v37 = [v11 *a3];
  v38 = sub_1ABF240D4();

  v39 = *(v38 + 16);
  if (v39)
  {
    v75 = v22;
    sub_1ABA90DB4();
    sub_1ABADE9B4();
    v40 = 0;
    v41 = (v38 + 40);
    while (v40 < *(v38 + 16))
    {
      v42 = *(v41 - 1);
      v43 = *v41;
      v44 = sub_1ABA9E10C();
      sub_1ABB0DBF0(v44, v45);
      sub_1ABAA15FC();
      sub_1ABDD325C(&qword_1EB4D9590);
      sub_1ABF217D4();
      if (v7)
      {

        v51 = sub_1ABA9E10C();
        sub_1ABA96210(v51, v52);

        goto LABEL_33;
      }

      v46 = sub_1ABA9E10C();
      sub_1ABA96210(v46, v47);
      v48 = *(v75 + 16);
      if (v48 >= *(v75 + 24) >> 1)
      {
        sub_1ABA8C620();
        sub_1ABADE9B4();
      }

      ++v40;
      *(v75 + 16) = v48 + 1;
      sub_1ABA7AD90();
      v50 = *(v49 + 72);
      sub_1ABA90300();
      sub_1ABDD32F4();
      v41 += 2;
      if (v39 == v40)
      {
        v72 = v24;

        v22 = MEMORY[0x1E69E7CC0];
        v10 = 0;
        v53 = [v71 *a4];
        goto LABEL_21;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
    v72 = v24;

    v53 = [v11 *a4];
LABEL_21:
    v54 = v53;
    v55 = sub_1ABF240D4();

    v56 = *(v55 + 16);
    if (!v56)
    {

      v58 = MEMORY[0x1E69E7CC0];
LABEL_32:
      a5(0);
      swift_allocObject();

      a6(v72, v66, v58, a1);

LABEL_33:
      sub_1ABA83F0C();
      return;
    }

    v76 = v22;
    sub_1ABA90DB4();
    sub_1ABADE9B4();
    v57 = 0;
    v58 = v76;
    v59 = (v55 + 40);
    while (v57 < *(v55 + 16))
    {
      v61 = *(v59 - 1);
      v60 = *v59;
      sub_1ABB0DBF0(v61, *v59);
      sub_1ABAA15FC();
      sub_1ABDD325C(&qword_1EB4D9590);
      sub_1ABF217D4();
      if (v10)
      {

        sub_1ABA96210(v61, v60);
        goto LABEL_31;
      }

      sub_1ABA96210(v61, v60);
      v62 = *(v76 + 16);
      if (v62 >= *(v76 + 24) >> 1)
      {
        sub_1ABADE9B4();
      }

      ++v57;
      *(v76 + 16) = v62 + 1;
      sub_1ABA7AD90();
      v64 = *(v63 + 72);
      sub_1ABA90300();
      sub_1ABDD32F4();
      v59 += 2;
      if (v56 == v57)
      {

        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

void sub_1ABDCF63C(Class *a1, SEL *a2)
{
  v6 = v2;
  v78 = type metadata accessor for CustomGraphActivityEvent(0);
  v7 = sub_1ABA7BB64(v78);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v70 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  v75 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA972D4();
  v77 = v16;
  v17 = sub_1ABF21854();
  sub_1ABA90758(v17);
  swift_allocObject();
  sub_1ABF21844();
  v18 = *(v2 + 16);
  v19 = *(v18 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  v79 = v9;
  v74 = v6;
  if (v19)
  {

    v21 = sub_1ABA90DB4();
    sub_1ABADE954(v21, v22, v23);
    v24 = 0;
    v25 = *(v9 + 80);
    sub_1ABAA0D00();
    while (v24 < *(v18 + 16))
    {
      v26 = *(v79 + 72);
      sub_1ABA90300();
      sub_1ABDD3204();
      sub_1ABA96120();
      sub_1ABDD325C(&qword_1EB4D95A8);
      sub_1ABF21834();
      if (v3)
      {
        sub_1ABDD329C(v77, type metadata accessor for CustomGraphActivityEvent);

        goto LABEL_31;
      }

      sub_1ABA82F3C();
      sub_1ABDD329C(v77, v27);
      v28 = *(v20 + 16);
      if (v28 >= *(v20 + 24) >> 1)
      {
        sub_1ABA8C620();
        sub_1ABADE954(v30, v31, v32);
      }

      ++v24;
      *(v20 + 16) = v28 + 1;
      v29 = v20 + 16 * v28;
      *(v29 + 32) = v4;
      *(v29 + 40) = v5;
      if (v19 == v24)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_10:
  v33 = *(v6 + 24);
  v34 = *(v33 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  v36 = v79;
  v73 = v20;
  if (v34)
  {

    v37 = sub_1ABA90DB4();
    sub_1ABADE954(v37, v38, v39);
    v40 = 0;
    v41 = *(v79 + 80);
    sub_1ABAA0D00();
    while (v40 < *(v33 + 16))
    {
      v43 = v42;
      v44 = *(v36 + 72);
      sub_1ABA90300();
      sub_1ABDD3204();
      sub_1ABA96120();
      sub_1ABDD325C(&qword_1EB4D95A8);
      sub_1ABF21834();
      if (v3)
      {
        sub_1ABDD329C(v75, type metadata accessor for CustomGraphActivityEvent);

LABEL_29:

        goto LABEL_31;
      }

      sub_1ABA82F3C();
      sub_1ABDD329C(v75, v45);
      v42 = v43;
      v46 = *(v43 + 16);
      if (v46 >= *(v43 + 24) >> 1)
      {
        sub_1ABA8C620();
        sub_1ABADE954(v48, v49, v50);
        v42 = v43;
      }

      ++v40;
      *(v42 + 16) = v46 + 1;
      v47 = v42 + 16 * v46;
      *(v47 + 32) = v36;
      *(v47 + 40) = v5;
      v36 = v79;
      if (v34 == v40)
      {
        v51 = v42;

        v35 = v51;
        v6 = v74;
        goto LABEL_19;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

LABEL_19:
  v69 = v35;
  v52 = *(v6 + 32);
  v53 = *(v52 + 16);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    v80 = MEMORY[0x1E69E7CC0];

    v55 = sub_1ABA90DB4();
    sub_1ABADE954(v55, v56, v57);
    v58 = 0;
    v59 = *(v36 + 80);
    sub_1ABAA0D00();
    v76 = v52;
    v60 = v70;
    while (v58 < *(v52 + 16))
    {
      v61 = *(v36 + 72);
      sub_1ABA90300();
      sub_1ABDD3204();
      sub_1ABA96120();
      sub_1ABDD325C(&qword_1EB4D95A8);
      sub_1ABDD36A4();
      sub_1ABF21834();
      if (v3)
      {
        sub_1ABDD329C(v60, type metadata accessor for CustomGraphActivityEvent);

        goto LABEL_29;
      }

      sub_1ABA82F3C();
      sub_1ABDD329C(v60, v62);
      v63 = *(v80 + 16);
      if (v63 >= *(v80 + 24) >> 1)
      {
        sub_1ABA8C620();
        sub_1ABADE954(v65, v66, v67);
        v60 = v70;
      }

      ++v58;
      *(v80 + 16) = v63 + 1;
      v64 = v80 + 16 * v63;
      *(v64 + 32) = v36;
      *(v64 + 40) = v5;
      v52 = v76;
      v36 = v79;
      if (v53 == v58)
      {
        v54 = v80;

        goto LABEL_30;
      }
    }

    goto LABEL_34;
  }

LABEL_30:
  v68 = objc_allocWithZone(*a1);
  sub_1ABDD1598(v73, v69, v54, a2);

LABEL_31:
  sub_1ABA83F0C();
}

void sub_1ABDCFB6C()
{
  v3 = v0;
  v4 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v5 = sub_1ABA7BB64(v4);
  v166 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  sub_1ABDD3630();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v140 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v13 = sub_1ABA7BB64(v12);
  v164 = v14;
  v165 = v13;
  v16 = *(v15 + 64);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA83634();
  v18 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v19 = sub_1ABA7BB64(v18);
  v162 = v20;
  v163 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C068();
  v180 = v23;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA972D4();
  v179 = v25;
  v26 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v27 = sub_1ABA7BB64(v26);
  v160 = v28;
  v161 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7C068();
  v178 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA972D4();
  v177 = v33;
  v34 = type metadata accessor for CodableLocation();
  v142 = *(v34 - 8);
  v35 = *(v142 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1ABA7C068();
  v143 = v36;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v37);
  v38 = sub_1ABF21EB4();
  v39 = sub_1ABA7BB64(v38);
  v175 = v40;
  v176 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7C068();
  v172 = v43;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA88E50();
  v171 = v45;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABDD38F4();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v140 - v48;
  sub_1ABA7F2A0();
  v50 = *(v0 + 16);
  v173 = v49;
  sub_1ABF21E04();
  sub_1ABA7F2A0();
  v51 = *(v0 + 24);
  v174 = v0;
  sub_1ABF21E04();
  sub_1ABA7F2A0();
  v52 = sub_1ABA89254();
  sub_1ABDC1EA8(v52);
  v157 = v53;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC3044();
  v156 = v54;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC3298();
  v155 = v55;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC34EC();
  v154 = v56;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC3740();
  v153 = v57;

  v58 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceSpentAtRelativeSpeeds;
  sub_1ABA7F2A0();
  v59 = *(v0 + v58);

  sub_1ABAC3994();
  v152 = v60;

  v61 = *(v3 + v58);

  sub_1ABAC3994();
  v151 = v62;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC3BE8();
  v150 = v63;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC3E3C();
  v149 = v64;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC4090();
  v148 = v65;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC42E4();
  v147 = v66;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC4538();
  v146 = v67;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAC47A4();
  v145 = v68;
  v158 = 0;

  v69 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadTimes;
  sub_1ABA7F2A0();
  v70 = *(v3 + v69);
  v71 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_roadDistancesInMeters;
  sub_1ABA7F2A0();
  v72 = *(v3 + v71);
  v73 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_route;
  sub_1ABA7F2A0();
  v159 = v3;
  v74 = *(v3 + v73);
  v167 = v11;
  v168 = v2;
  v169 = v1;
  v170 = v72;
  v144 = v70;
  if (v74)
  {
    v75 = *(v74 + 16);
    if (v75)
    {
      v141 = v4;
      v187 = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
      sub_1ABA7AD90();
      v140[1] = v74;
      v77 = v74 + v76;
      v79 = *(v78 + 72);
      v80 = v143;
      do
      {
        sub_1ABA951A8();
        sub_1ABDD3204();
        sub_1ABDD36F8();
        sub_1ABDD3204();
        CLLocation.init(model:)(v80);
        v81 = sub_1ABA9E10C();
        sub_1ABDD329C(v81, v82);
        sub_1ABF24B94();
        v83 = *(v187 + 16);
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v77 += v79;
        --v75;
      }

      while (v75);

      v143 = v187;
      v11 = v167;
      v2 = v168;
      v1 = v169;
      v4 = v141;
    }

    else
    {

      v143 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    v143 = 0;
  }

  v84 = v159;
  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABA8B360();
  sub_1ABDC2454(v85);
  v159 = v86;

  sub_1ABA7F2A0();
  sub_1ABA89254();
  sub_1ABAA0084();
  sub_1ABDC2454(v87);
  v158 = v88;

  v89 = v176;
  v90 = *(v175 + 16);
  v90(v171, v173, v176);
  v90(v172, v174, v89);
  v91 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_distanceInMeters;
  sub_1ABA7F2A0();
  v92 = v161;
  v93 = *(v160 + 16);
  v93(v177, v84 + v91, v161);
  v94 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_elevationGainInMeters;
  sub_1ABA7F2A0();
  v93(v178, v84 + v94, v92);
  v95 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_durationInSeconds;
  sub_1ABA7F2A0();
  v96 = v163;
  v97 = *(v162 + 16);
  v97(v179, v84 + v95, v163);
  v98 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_expectedDurationInSecondsNoTraffic;
  sub_1ABA7F2A0();
  v97(v180, v84 + v98, v96);
  v99 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_averageSpeedInMetersPerSecond;
  sub_1ABA7F2A0();
  (*(v164 + 16))(v1, v84 + v99, v165);
  v100 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_score;
  sub_1ABA7F2A0();
  v101 = *(v84 + v100);
  v102 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_usageKwh;
  sub_1ABA7F2A0();
  v103 = *(v166 + 16);
  v103(v11, v84 + v102, v4);
  v104 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_optimalUsageKwh;
  sub_1ABA7F2A0();
  v103(v2, v84 + v104, v4);
  sub_1ABA7F2A0();
  sub_1ABA8CEF4();
  if (v105 != v106)
  {
    goto LABEL_42;
  }

  sub_1ABDD3698();
  if (!(v105 ^ v106 | v108))
  {
    goto LABEL_43;
  }

  v166 = v107;
  sub_1ABA7F2A0();
  sub_1ABA8CEF4();
  if (v105 != v106)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  sub_1ABDD3698();
  if (!(v105 ^ v106 | v108))
  {
    goto LABEL_45;
  }

  v165 = v109;
  sub_1ABA7F2A0();
  sub_1ABA8CEF4();
  if (v105 != v106)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1ABDD3698();
  if (v105 ^ v106 | v108)
  {
    v164 = v110;
    v111 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_lifeEventIds;
    sub_1ABA7F2A0();
    v112 = *(v84 + v111);
    if (v112)
    {
      v113 = *(v112 + 16);
      v114 = MEMORY[0x1E69E7CC0];
      if (v113)
      {
        v182 = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v115 = 0;
        while (v115 < *(v112 + 16))
        {
          if ((*(v112 + 8 * v115 + 32) & 0x80000000000000) != 0)
          {
            sub_1ABA9F44C();
          }

          else
          {
            sub_1ABA969C4();
          }

          v184 = v117;
          v185 = 0xE300000000000000;
          v186 = v116;
          v118 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v118);

          v119 = v185;
          v120 = objc_allocWithZone(GDEntityIdentifier);
          v121 = sub_1ABDD36A4();
          if (!sub_1ABDD1654(v121, v119))
          {
            goto LABEL_48;
          }

          ++v115;
          sub_1ABF24B94();
          v122 = *(v182 + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          if (v113 == v115)
          {

            v114 = v182;
            v11 = v167;
            v2 = v168;
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v114 = 0;
    }

LABEL_28:
    v123 = OBJC_IVAR____TtC20IntelligencePlatform21KTSDataRepresentation_ktsSegmentIds;
    sub_1ABA7F2A0();
    v124 = *(v84 + v123);
    if (v124)
    {
      v125 = *(v124 + 16);
      v126 = MEMORY[0x1E69E7CC0];
      if (v125)
      {
        v163 = v114;
        v186 = MEMORY[0x1E69E7CC0];

        sub_1ABF24BC4();
        v127 = 0;
        while (v127 < *(v124 + 16))
        {
          if ((*(v124 + 8 * v127 + 32) & 0x80000000000000) != 0)
          {
            sub_1ABA9F44C();
          }

          else
          {
            sub_1ABA969C4();
          }

          v182 = v129;
          v183 = 0xE300000000000000;
          v181 = v128;
          v130 = sub_1ABF24FF4();
          MEMORY[0x1AC5A9410](v130);

          v131 = v183;
          v132 = objc_allocWithZone(GDEntityIdentifier);
          v133 = sub_1ABDD36A4();
          if (!sub_1ABDD1654(v133, v131))
          {
            goto LABEL_49;
          }

          ++v127;
          sub_1ABF24B94();
          v134 = *(v186 + 16);
          sub_1ABF24BD4();
          sub_1ABF24BE4();
          sub_1ABF24BA4();
          if (v125 == v127)
          {

            v126 = v186;
            v11 = v167;
            v2 = v168;
            v114 = v163;
            goto LABEL_39;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v126 = 0;
    }

LABEL_39:
    v135 = v169;
    v136 = v157;
    v137 = objc_allocWithZone(GDKTSDataRepresentation);
    sub_1ABDD16B8(v171, v172, v177, v178, v101, v136, v179, v180, v156, v155, v154, v153, v152, v151, v146, v145, v148, v147, v150, v149, v135, v11, v2, __SPAIR64__(v165, v166), v164, v170, v159, v158, v144, v143, v114, v126);
    v138 = *(v175 + 8);
    v139 = v176;
    v138(v174, v176);
    v138(v173, v139);
    return;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_1ABDD098C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  objc_opt_self();
  sub_1ABDD3704();
  if (swift_dynamicCastObjCClass())
  {
    a2[3] = &type metadata for KTSSegmentData;
    a2[4] = sub_1ABDD350C();
    v5 = swift_allocObject();
    *a2 = v5;
    sub_1ABDCEA74(a1, (v5 + 16));
  }

  else
  {
    objc_opt_self();
    sub_1ABDD3704();
    if (swift_dynamicCastObjCClass())
    {
      a2[3] = &type metadata for KTSData;
      a2[4] = sub_1ABDD34B8();
      sub_1ABDCE4E0(a1, a2);
    }

    else
    {
      objc_opt_self();
      sub_1ABDD3704();
      if (!swift_dynamicCastObjCClass())
      {
        sub_1ABDBF718();
        v7 = sub_1ABA7BD00();
        *v8 = 0xD000000000000022;
        v8[1] = 0x80000001ABF90760;
        sub_1ABA8A68C(v7, v8);
        return;
      }

      a2[3] = &type metadata for KTSSliceData;
      a2[4] = sub_1ABDD3464();
      v6 = swift_allocObject();
      *a2 = v6;
      sub_1ABDCE194(a1, (v6 + 16));
    }
  }

  if (v2)
  {
    sub_1ABD5B8D0(a2);
  }
}

_BYTE *sub_1ABDD0B1C(uint64_t a1)
{
  v2 = sub_1ABA7BB64(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7AC18();
  sub_1ABDD3630();
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v9);
  v47 = v4;
  v10 = *(v4 + 16);
  sub_1ABDD393C();
  v10();
  if (!sub_1ABA9E99C())
  {
    if (sub_1ABA9E99C())
    {

      sub_1ABDD393C();
      v10();
      if (!swift_dynamicCast())
      {
        sub_1ABA88E10();
        sub_1ABA7BD00();
        sub_1ABA8A0D8();
        goto LABEL_18;
      }

      v39 = EntityIdentifier.stringValue.getter();
      v14 = v13;
      v1 = v45[2];
      sub_1ABDCF63C(off_1E7960238, &selRef_initWithOriginContexts_ktsContexts_destinationContexts_);
      if (v40)
      {

        goto LABEL_19;
      }

      v32 = v15;
      sub_1ABDCCA3C();
      v1 = sub_1ABDD897C(v39, v14, v32, v33, 0);
    }

    else
    {
      if (!sub_1ABA9E99C())
      {
        sub_1ABA88E10();
        sub_1ABA7BD00();
        sub_1ABA8A0D8();
        v19 = v21 + 12;
        goto LABEL_18;
      }

      memcpy(v45, v46, sizeof(v45));
      sub_1ABDD334C(v45);
      sub_1ABDD393C();
      v10();
      if (!swift_dynamicCast())
      {
        sub_1ABA88E10();
        sub_1ABA7BD00();
        sub_1ABA8A0D8();
        v19 = v27 + 5;
        goto LABEL_18;
      }

      memcpy(v43, v44, sizeof(v43));
      memcpy(v42, v44, sizeof(v42));
      v1 = v42;
      v20 = sub_1ABDCC738();
      if (v40)
      {
        sub_1ABDD334C(v43);
        goto LABEL_19;
      }

      v1 = v20;
      sub_1ABDD334C(v43);
    }

LABEL_23:
    v34 = *(v47 + 8);
    v35 = sub_1ABA7D0F8();
    v36(v35);
    return v1;
  }

  sub_1ABDD393C();
  v10();
  if (!swift_dynamicCast())
  {
    sub_1ABA88E10();
    sub_1ABA7BD00();
    sub_1ABA8A0D8();
    v19 = v18 + 7;
LABEL_18:
    *v17 = v19;
    v17[1] = v1;
    sub_1ABA8A68C(v16, v17);
    goto LABEL_19;
  }

  v45[0] = v45[2];
  v37 = EntityIdentifier.stringValue.getter();
  v38 = v11;

  v1 = v45[4];
  sub_1ABDCF63C(off_1E7960240, &selRef_initWithOriginContext_ktsContext_destinationContext_);
  if (!v40)
  {
    v22 = v12;
    sub_1ABDCFB6C();
    v41 = v23;
    sub_1ABAFF390(0, &qword_1EB4D9B70, off_1E7960278);
    v24 = v22;
    v25 = v41;
    v26 = sub_1ABDD3A5C();
    v1 = sub_1ABDD89CC(v37, v38, v24, v25, v26);

    goto LABEL_23;
  }

  swift_bridgeObjectRelease_n();
LABEL_19:
  v28 = *(v47 + 8);
  v29 = sub_1ABA7D0F8();
  v30(v29);
  return v1;
}

void sub_1ABDD1024()
{
  sub_1ABA81AB4();
  v37 = v0;
  v38 = v1;
  v30 = v2;
  v4 = v3;
  v44 = v5;
  v36 = sub_1ABAD219C(v5, v0);
  v6 = sub_1ABA7BBB0(v36);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C068();
  v35 = v9;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA88E50();
  v43 = v11;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA972D4();
  v34 = v13;
  v31 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v33 = *v4 + 64;
  v14 = 1 << *(*v4 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(*v4 + 64);
  v32 = (v14 + 63) >> 6;
  v39 = *v4;

  v17 = 0;
  while (v16)
  {
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v17 << 6);
    v21 = *(v39 + 56);
    v22 = *(*(v39 + 48) + v20);
    v40 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
    v23 = *(v40 - 8);
    (*(v23 + 16))(&v34[*(v36 + 48)], v21 + *(v23 + 72) * v20, v40);
    *v34 = v22;
    sub_1ABAE2EC4();
    v41 = *v43;
    v42 = *(v36 + 48);
    sub_1ABAE2EC4();
    v24 = *(v36 + 48);
    sub_1ABF218C4();
    v26 = v25;
    v27 = *(v23 + 8);
    v27(v35 + v24, v40);
    v28 = [objc_allocWithZone(*v38) initWithBucket:v41 bucketValue:v26];
    sub_1ABAB480C(v34, v44, v37);
    v29 = (v27)(&v43[v42], v40);
    if (v28)
    {
      MEMORY[0x1AC5A9710](v29);
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v31 = v45;
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v32)
    {

      *v30 = v31;
      sub_1ABA8CD68();
      return;
    }

    v16 = *(v33 + 8 * v18);
    ++v17;
    if (v16)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_1ABDD1334(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  v18 = sub_1ABF21EB4();
  v19 = 0;
  if (sub_1ABA7E1E0(a1, 1, v18) != 1)
  {
    v19 = sub_1ABF21E34();
    (*(*(v18 - 8) + 8))(a1, v18);
  }

  if (sub_1ABA7E1E0(a2, 1, v18) == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_1ABF21E34();
    (*(*(v18 - 8) + 8))(a2, v18);
  }

  if (a11)
  {
    v21 = sub_1ABF23BD4();
  }

  else
  {
    v21 = 0;
  }

  if (a13)
  {
    v22 = sub_1ABF23BD4();
  }

  else
  {
    v22 = 0;
  }

  v25 = [v26 initWithStartTime:v19 endTime:v20 inclusionType:a3 distanceMinInMeters:a4 distanceMaxInMeters:a5 elevationGainMinInMeters:a6 elevationGainMaxInMeters:a7 durationMinInSeconds:a8 durationMaxInSeconds:a9 roadType:v21 roadName:v22 originId:a14 destinationId:a15];

  return v25;
}

unint64_t sub_1ABDD1544()
{
  result = qword_1EB4D9AC0;
  if (!qword_1EB4D9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9AC0);
  }

  return result;
}

id sub_1ABDD1598(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_1ABF240C4();

  v7 = sub_1ABF240C4();

  v8 = sub_1ABF240C4();

  v9 = [v4 *a4];

  return v9;
}

id sub_1ABDD1654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1ABF23BD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithString_];

  return v4;
}

id sub_1ABDD16B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v65 = sub_1ABF21E34();
  v72 = a2;
  v64 = sub_1ABF21E34();
  v38 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v71 = a3;
  v63 = sub_1ABF21864();
  v70 = a4;
  v62 = sub_1ABF21864();
  sub_1ABAFF390(0, &qword_1EB4D9AC8, off_1E795FE88);
  v61 = sub_1ABF240C4();

  v39 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v60 = sub_1ABF21864();
  v69 = a8;
  v54 = sub_1ABF21864();
  sub_1ABAFF390(0, &qword_1EB4D9AD0, off_1E79603C0);
  v59 = sub_1ABF240C4();

  v58 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AD8, off_1E7960398);
  v80 = sub_1ABF240C4();

  v78 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AE0, off_1E7960348);
  v57 = sub_1ABF240C4();

  v86 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AE8, off_1E7960358);
  v85 = sub_1ABF240C4();

  v84 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AF0, off_1E7960480);
  v83 = sub_1ABF240C4();

  v82 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AF8, off_1E79603A8);
  v81 = sub_1ABF240C4();

  v79 = sub_1ABF240C4();

  v56 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v77 = sub_1ABF21864();
  v40 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v76 = sub_1ABF21864();
  v55 = v40;
  v75 = sub_1ABF21864();
  v68 = v38;
  v41 = sub_1ABF23954();

  sub_1ABAD219C(&qword_1EB4D9B00, &qword_1ABF62308);
  v74 = sub_1ABF23954();

  sub_1ABAD219C(&qword_1EB4D9B08, &qword_1ABF62310);
  v42 = sub_1ABF23954();

  v43 = sub_1ABF23954();

  if (a30)
  {
    sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
    v44 = sub_1ABF240C4();
  }

  else
  {
    v44 = 0;
  }

  if (a31)
  {
    sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
    v45 = sub_1ABF240C4();
  }

  else
  {
    v45 = 0;
  }

  if (a32)
  {
    sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
    v46 = sub_1ABF240C4();
  }

  else
  {
    v46 = 0;
  }

  LODWORD(v53) = a25;
  v67 = [v66 initWithStartTime:v65 endTime:v64 distanceInMeters:v63 elevationGainInMeters:v62 distanceBuckets:v61 durationInSeconds:v60 expectedDurationInSecondsNoTraffic:a5 distanceSpentInTrafficBuckets:v54 timeSpentInTrafficBuckets:v59 distanceSpentAtSpeedBuckets:v58 timeSpentAtSpeedBuckets:v80 distanceSpentAtRelativeSpeeds:v78 timeSpentAtRelativeSpeeds:v57 distancePerRoadType:v86 timePerRoadType:v85 distancePerWeatherType:v84 timePerWeatherType:v83 distancePerTerrainType:v82 timePerTerrainType:v81 averageSpeedInMetersPerSecond:v79 score:v77 usageKwh:v76 optimalUsageKwh:v75 numBrakingEvents:a24 numAccelEvents:v53 numHighSpeedEvents:v41 roadDistancesInMeters:v74 roadSpeedBuckets:v42 roadRelativeSpeedBuckets:v43 roadTimes:v44 route:v45 lifeEventIds:v46 ktsSegmentIds:?];

  v47 = *(*(v55 - 8) + 8);
  v47(a23, v55);
  v47(a22, v55);
  (*(*(v56 - 8) + 8))(a21);
  v48 = *(*(v39 - 8) + 8);
  v48(v69, v39);
  v48(a7, v39);
  v49 = *(*(v68 - 8) + 8);
  v49(v70, v68);
  v49(v71, v68);
  v50 = sub_1ABF21EB4();
  v51 = *(*(v50 - 8) + 8);
  v51(v72, v50);
  v51(a1, v50);
  return v67;
}

id sub_1ABDD1F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  v97 = sub_1ABF21E34();
  v106 = a2;
  v96 = sub_1ABF21E34();
  v69 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  v105 = a3;
  v95 = sub_1ABF21864();
  v104 = a4;
  v94 = sub_1ABF21864();
  sub_1ABAFF390(0, &qword_1EB4D9AC8, off_1E795FE88);
  v92 = sub_1ABF240C4();
  v70 = v69;

  v71 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  v103 = a11;
  v91 = sub_1ABF21864();
  v102 = a12;
  v90 = sub_1ABF21864();
  sub_1ABAFF390(0, &qword_1EB4D9AD0, off_1E79603C0);
  v89 = sub_1ABF240C4();

  v88 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AD8, off_1E7960398);
  v87 = sub_1ABF240C4();

  v142 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AE0, off_1E7960348);
  v141 = sub_1ABF240C4();

  v140 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AE8, off_1E7960358);
  v139 = sub_1ABF240C4();

  v138 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AF0, off_1E7960480);
  v137 = sub_1ABF240C4();

  v136 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D9AF8, off_1E79603A8);
  v135 = sub_1ABF240C4();

  v134 = sub_1ABF240C4();

  v98 = sub_1ABAD219C(&qword_1EB4D1680, &qword_1ABF33810);
  v133 = sub_1ABF21864();
  v72 = sub_1ABAD219C(&qword_1EB4D15B0, &qword_1ABF33740);
  v132 = sub_1ABF21864();
  v93 = v72;
  v131 = sub_1ABF21864();
  v130 = sub_1ABF23954();

  sub_1ABAD219C(&qword_1EB4D9B00, &qword_1ABF62308);
  v129 = sub_1ABF23954();

  sub_1ABAD219C(&qword_1EB4D9B08, &qword_1ABF62310);
  v128 = sub_1ABF23954();

  v101 = v71;
  v127 = sub_1ABF23954();

  if (a34)
  {
    sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
    v126 = sub_1ABF240C4();
  }

  else
  {
    v126 = 0;
  }

  if (a35)
  {
    sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
    v125 = sub_1ABF240C4();
  }

  else
  {
    v125 = 0;
  }

  if (a36)
  {
    sub_1ABAFF390(0, &unk_1EB4CE670, off_1E795FE98);
    v124 = sub_1ABF240C4();
  }

  else
  {
    v124 = 0;
  }

  v123 = sub_1ABF21864();
  v122 = sub_1ABF21864();
  v121 = sub_1ABF21864();
  v120 = sub_1ABF21864();
  v119 = sub_1ABF240C4();

  v118 = sub_1ABF240C4();

  v115 = sub_1ABF240C4();

  v117 = sub_1ABF240C4();

  v116 = sub_1ABF240C4();

  v113 = sub_1ABF240C4();

  v109 = sub_1ABF240C4();

  v111 = sub_1ABF240C4();

  v114 = sub_1ABF240C4();

  v112 = sub_1ABF240C4();

  v110 = sub_1ABF240C4();

  v108 = sub_1ABF240C4();

  v73 = sub_1ABF240C4();

  v74 = sub_1ABF240C4();

  v75 = sub_1ABF240C4();

  v76 = sub_1ABF240C4();

  v77 = sub_1ABF240C4();

  v78 = sub_1ABF240C4();

  if (a59)
  {
    sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
    sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
    sub_1ABDBF828();
    v79 = sub_1ABF23954();
  }

  else
  {
    v79 = 0;
  }

  LODWORD(v86) = a29;
  v100 = [v99 initWithStartTime:v97 endTime:v96 distanceInMeters:v95 elevationGainInMeters:v94 distanceBuckets:v92 durationInSeconds:v91 expectedDurationInSecondsNoTraffic:a5 distanceSpentInTrafficBuckets:a6 timeSpentInTrafficBuckets:a7 distanceSpentAtSpeedBuckets:a8 timeSpentAtSpeedBuckets:a9 distanceSpentAtRelativeSpeeds:v90 timeSpentAtRelativeSpeeds:v89 distancePerRoadType:v88 timePerRoadType:v87 distancePerWeatherType:v142 timePerWeatherType:v141 distancePerTerrainType:v140 timePerTerrainType:v139 averageSpeedInMetersPerSecond:v138 score:v137 usageKwh:v136 optimalUsageKwh:v135 numBrakingEvents:v134 numAccelEvents:v133 numHighSpeedEvents:v132 roadDistancesInMeters:v131 roadSpeedBuckets:a28 roadRelativeSpeedBuckets:v86 roadTimes:v130 route:v129 lifeEventIds:v128 ktsSegmentIds:v127 maxTripDistanceInMeters:v126 avgTripDistanceInMeters:v125 maxElevationGainInMeters:v124 avgElevationGainInMeters:v123 percentTimeSpentAtSpeedBuckets:v122 percentTimeSpentAtTrafficBuckets:v121 percentTimeSpentAtRelativeSpeeds:v120 percentTimeSpentAtRoadTypes:v119 percentTimeSpentInWeatherTypes:v118 percentTimeSpentInTerrainTypes:v115 percentDistanceTraveledAtSpeedBuckets:v117 percentDistanceTraveledAtTrafficBuckets:v116 percentDistanceTraveledAtRelativeSpeeds:v113 percentDistanceTraveledForRoadTypes:v109 percentDistanceTraveledInWeatherTypes:v111 percentDistanceTraveledInTerrainTypes:v114 scorePerSpeedBucket:v112 scorePerTrafficBucket:v110 scorePerRelativeSpeed:v108 scorePerRoadType:v73 scorePerWeatherType:v74 scorePerTerrainType:v75 avgNumBrakingEvents:v76 avgNumAccelEvents:v77 avgNumHighSpeedEvents:v78 mostEfficientDriveScore:v79 routeHeatMap:?];

  v80 = *(*(v70 - 8) + 8);
  v80(a40, v70);
  v80(a39, v70);
  v80(a38, v70);
  v80(a37, v70);
  v81 = *(*(v93 - 8) + 8);
  v81(a27, v93);
  v81(a26, v93);
  (*(*(v98 - 8) + 8))(a25);
  v82 = *(*(v101 - 8) + 8);
  v82(v102, v101);
  v82(v103, v101);
  v80(v104, v70);
  v80(v105, v70);
  v83 = sub_1ABF21EB4();
  v84 = *(*(v83 - 8) + 8);
  v84(v106, v83);
  v84(a1, v83);
  return v100;
}

uint64_t sub_1ABDD2CC0()
{
  if (sub_1ABF24CA4())
  {
    sub_1ABAD219C(&qword_1EB4D5638, &unk_1ABF4AC30);
    v0 = sub_1ABF24D54();
  }

  else
  {
    v0 = MEMORY[0x1E69E7CC8];
  }

  v16 = v0;
  sub_1ABF24C94();
  swift_unknownObjectRetain();
  while (1)
  {
    v1 = sub_1ABF24CC4();
    if (!v1)
    {

      return v0;
    }

    v14 = v1;
    sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
    swift_dynamicCast();
    sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
    swift_dynamicCast();
    v2 = [v14 integerValue];

    if (*(v0 + 24) <= *(v0 + 16))
    {
      sub_1ABC06200();
    }

    v0 = v16;
    v3 = *(v16 + 40);
    result = sub_1ABF247A4();
    v5 = v16 + 64;
    v6 = -1 << *(v16 + 32);
    v7 = result & ~v6;
    v8 = v7 >> 6;
    if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
    {
      break;
    }

    v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_17:
    *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v16 + 48) + 8 * v9) = v15;
    *(*(v16 + 56) + 8 * v9) = v2;
    ++*(v16 + 16);
  }

  v10 = 0;
  v11 = (63 - v6) >> 6;
  while (++v8 != v11 || (v10 & 1) == 0)
  {
    v12 = v8 == v11;
    if (v8 == v11)
    {
      v8 = 0;
    }

    v10 |= v12;
    v13 = *(v5 + 8 * v8);
    if (v13 != -1)
    {
      v9 = __clz(__rbit64(~v13)) + (v8 << 6);
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void *sub_1ABDD2F08(uint64_t a1)
{
  sub_1ABAD219C(&qword_1EB4D5638, &unk_1ABF4AC30);
  result = sub_1ABF24D24();
  v3 = result;
  v4 = 0;
  v22 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v12 = (result + 8);
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v16 = v13 | (v4 << 6);
      v17 = *(*(v22 + 56) + 8 * v16);
      v18 = *(*(v22 + 48) + 8 * v16);
      result = [v17 integerValue];
      *&v12[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
      *(v3[6] + 8 * v16) = v18;
      *(v3[7] + 8 * v16) = result;
      v19 = v3[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      v3[2] = v21;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v15 = *(v6 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABDD3070(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  if (![a1 *a2])
  {
    return 0;
  }

  v7 = sub_1ABA89364();
  sub_1ABAFF390(v7, a3, a4);
  v8 = sub_1ABF240D4();

  return v8;
}

uint64_t sub_1ABDD30E0(void *a1)
{
  v1 = [a1 routeHeatMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1ABAFF390(0, &qword_1EB4D1F98, 0x1E6985C40);
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  sub_1ABDBF828();
  v3 = sub_1ABF23974();

  return v3;
}

uint64_t sub_1ABDD3184(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_1ABF24994();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABDD3204()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 16);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

uint64_t sub_1ABDD325C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CustomGraphActivityEvent(255);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABDD329C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1ABA7BBB0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1ABDD32F4()
{
  sub_1ABA81488();
  v2 = v1(0);
  sub_1ABA7BBB0(v2);
  v4 = *(v3 + 32);
  v5 = sub_1ABA7D000();
  v6(v5);
  return v0;
}

id sub_1ABDD33A0(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = objc_allocWithZone(GDKTSSliceData);
  v9 = sub_1ABF23BD4();

  v10 = [v8 initWithIdentifier:v9 context:a3 data:a4 metadata:a5];

  swift_unknownObjectRelease();
  return v10;
}

uint64_t sub_1ABDD3444(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ABDD3464()
{
  result = qword_1EB4D9BC8;
  if (!qword_1EB4D9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9BC8);
  }

  return result;
}

unint64_t sub_1ABDD34B8()
{
  result = qword_1EB4D9BD0;
  if (!qword_1EB4D9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9BD0);
  }

  return result;
}

unint64_t sub_1ABDD350C()
{
  result = qword_1EB4D9BD8;
  if (!qword_1EB4D9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9BD8);
  }

  return result;
}

void sub_1ABDD3650()
{

  JUMPOUT(0x1AC5AA170);
}

_BYTE *sub_1ABDD36D4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 - 256);
  *v4 = v2;
  v5 = *(v3 - 192);
  v6 = **(v3 - 200);
  return &v4[a1];
}

uint64_t sub_1ABDD3710(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_1ABADD6D8(a1, a2, va);
}

uint64_t sub_1ABDD3728@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 - 256);

  return swift_dynamicCast();
}

uint64_t sub_1ABDD3744()
{
  v2 = *(v0 - 144);

  return sub_1ABF218B4();
}

uint64_t sub_1ABDD3768()
{
  v2 = *(v0 - 296);

  return sub_1ABF240D4();
}

uint64_t sub_1ABDD3784()
{
  v2 = *(v0 - 288);

  return sub_1ABF240D4();
}

uint64_t sub_1ABDD37A0()
{
  v2 = *(v0 - 280);

  return sub_1ABF240D4();
}

id sub_1ABDD37BC()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void sub_1ABDD37D4()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABDD3868()
{
  v1 = *(v0 - 160);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
}

void sub_1ABDD3984(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_1ABDD39A4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_1ABDD39C4()
{

  return sub_1ABF23974();
}

uint64_t sub_1ABDD39E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *(a14 + 16);

  return sub_1ABF24BD4();
}

uint64_t sub_1ABDD3A04()
{

  return sub_1ABF218B4();
}

uint64_t sub_1ABDD3A24()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABDD3A44()
{
  v2 = *(v0 - 264);

  return sub_1ABF240D4();
}

id sub_1ABDD3A5C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABF23BD4();

  v2 = [v0 initWithSegmentId_];

  return v2;
}

uint64_t *sub_1ABDD3AD0()
{
  if (*(v0 + 16))
  {
  }

  v3 = v0;
  v4 = type metadata accessor for ViewService();
  v5 = static ViewService.clientService.getter(v4);
  sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
  swift_allocObject();
  result = CustomLifeEventContext.init<>(viewService:)(v5);
  if (!v1)
  {
    v6 = *(v3 + 16);
    *(v3 + 16) = result;

    result = *(v3 + 16);
    if (result)
    {
    }

    __break(1u);
  }

  return result;
}

uint64_t *sub_1ABDD3B78(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v3[2] = 0;
  type metadata accessor for KTSIndexManager();
  swift_allocObject();
  v6 = KTSIndexManager.init(viewService:)(a1);
  if (v2)
  {
    v7 = v3[2];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v8 = v6;
    type metadata accessor for KTSRequestManager();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    v3[3] = v9;
  }

  return v3;
}

void sub_1ABDD3C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v24;
  a20 = v25;
  v78 = v20;
  v77 = sub_1ABF23744();
  v26 = sub_1ABA7BB64(v77);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7C068();
  v76 = v31;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA8E3E8();
  v33 = sub_1ABF237F4();
  v34 = sub_1ABA7BB64(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7BC58();
  v41 = (v40 - v39);
  v75 = sub_1ABF23774();
  v42 = sub_1ABA7BB64(v75);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v74 = type metadata accessor for LogSignpost();
  v47 = sub_1ABA7BBB0(v74);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7BC58();
  v79 = v51 - v50;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v52 = sub_1ABA7AA24(v33, qword_1ED871EF8);
    v73 = v33;
    (*(v36 + 16))(v41, v52, v33);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v53 = sub_1ABF23764();
    v54 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v55 = swift_slowAlloc();
      *v55 = 0;
      v56 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v53, v54, v56, "KTS.InProcessService.request", "", v55, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v28 + 16))(v76, v23, v77);
    v57 = sub_1ABF237B4();
    sub_1ABA806BC(v57);
    v58 = sub_1ABF237A4();
    (*(v28 + 8))(v23, v77);
    v59 = v79;
    sub_1ABAA3630("KTS.InProcessService.request");
    *(v79 + 24) = v58;
    (*(v44 + 32))(v79 + *(v74 + 24), v22, v75);
    sub_1ABDC3CC4(v81);
    v41 = *(v78 + 24);
    memcpy(v80, v81, sizeof(v80));
    v60 = sub_1ABDD41F4(v80, 0);
    v28 = v21;
    if (v21)
    {
      sub_1ABDD8B2C(v81);
      sub_1ABDD8518(v79);
      sub_1ABBA4F10(v79);
      goto LABEL_17;
    }

    v36 = v60;
    sub_1ABDD8B2C(v81);
    v33 = *(v36 + 16);
    if (!v33)
    {
      break;
    }

    sub_1ABAB5D74(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v44 = 0;
    v22 = v36 + 32;
    while (v44 < *(v36 + 16))
    {
      sub_1ABA93E64(v22, v80);
      v61 = v80[3];
      sub_1ABA93E20(v80, v80[3]);
      sub_1ABDD0B1C(v61);
      ++v44;
      sub_1ABA84B54(v80);
      v41 = &a10;
      sub_1ABF24B94();
      v23 = *(a10 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v22 += 40;
      if (v33 == v44)
      {

        v62 = a10;
        v59 = v79;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    sub_1ABA7D608();
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_12:
  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA7DD18();
  }

  sub_1ABAA2318(v73, qword_1EB4CE7F0);
  v63 = sub_1ABF237D4();
  v64 = sub_1ABF24644();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = sub_1ABA8E2E8();
    v66 = sub_1ABA82874();
    v80[0] = v66;
    *v65 = 136315138;

    v67 = sub_1ABAD219C(&unk_1EB4D9CE0, &unk_1ABF62530);
    v68 = MEMORY[0x1AC5A9750](v62, v67);
    v70 = v69;

    v71 = sub_1ABADD6D8(v68, v70, v80);
    v59 = v79;

    *(v65 + 4) = v71;
    sub_1ABA7AE18(&dword_1ABA78000, v72, v64, "Got an object response: %s");
    sub_1ABA84B54(v66);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABDD8518(v59);
  sub_1ABBA4F10(v59);
LABEL_17:
  sub_1ABA7BC90();
}

uint64_t sub_1ABDD41F4(void *__src, char a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v6 = *(v2 + 16);
  memcpy(__srca, __src, sizeof(__srca));
  v7 = sub_1ABDDEF94(__srca);
  if (!v3)
  {
    v6 = v7;
    if (a2)
    {
      LOBYTE(v32) = 2;
      static KTSRecordType.combine(ktsRecords:intoRowWithId:withType:graphContext:)(v7, __dst[22], __dst[23], &v32, 0, v8, v9, v10, v21, v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28, v29, v30, v31);

      if (v24)
      {
        sub_1ABA946C0(&v22, __srca);
        sub_1ABAD219C(&qword_1EB4D1528, &qword_1ABF62520);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1ABF34740;
        sub_1ABA946C0(__srca, v6 + 32);
      }

      else
      {
        sub_1ABAB480C(&v22, &qword_1EB4D9BF8, &qword_1ABF62500);
        if (qword_1EB4CE7E8 != -1)
        {
          sub_1ABA7DD18();
        }

        v11 = sub_1ABF237F4();
        sub_1ABAA2318(v11, qword_1EB4CE7F0);
        sub_1ABDD8AD0(__dst, __srca);
        v12 = sub_1ABF237D4();
        v13 = sub_1ABF24664();
        sub_1ABDD8B2C(__dst);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = sub_1ABA8E2E8();
          v15 = sub_1ABA82874();
          v32 = v15;
          *v14 = 136315138;
          memcpy(__srca, __dst, sizeof(__srca));
          sub_1ABDD8AD0(__dst, &v22);
          v16 = sub_1ABF23C74();
          v18 = sub_1ABADD6D8(v16, v17, &v32);

          *(v14 + 4) = v18;
          _os_log_impl(&dword_1ABA78000, v12, v13, "Warn: no results returned for request %s, returning empty data object.", v14, 0xCu);
          sub_1ABA84B54(v15);
          v19 = sub_1ABA8EBB8();
          MEMORY[0x1AC5AB8B0](v19);
          sub_1ABA7BDD8();
          MEMORY[0x1AC5AB8B0]();
        }

        return MEMORY[0x1E69E7CC0];
      }
    }
  }

  return v6;
}

void sub_1ABDD4444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v67 = v10;
  v16 = v15;
  v71 = sub_1ABF23744();
  v17 = sub_1ABA7BB64(v71);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C068();
  v70 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABAA4208();
  v24 = sub_1ABF237F4();
  v25 = sub_1ABA7BB64(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  sub_1ABA8E3FC();
  v69 = sub_1ABF23774();
  v30 = sub_1ABA7BB64(v69);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7BC58();
  sub_1ABA9A61C();
  v68 = type metadata accessor for LogSignpost();
  v35 = sub_1ABA7BBB0(v68);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7BC58();
  v72 = v40 - v39;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    sub_1ABA90318(v38, qword_1ED871EF8);
    (*(v27 + 16))(v14);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v41 = sub_1ABF23764();
    v42 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v41, v42, v44, "KTS.InProcessService.requestBatch", "", v43, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v19 + 16))(v70, v13, v71);
    v45 = sub_1ABF237B4();
    sub_1ABA806BC(v45);
    v27 = sub_1ABAA59DC();
    (*(v19 + 8))(v13, v71);
    *v72 = "KTS.InProcessService.requestBatch";
    *(v72 + 8) = 33;
    *(v72 + 16) = 2;
    *(v72 + 24) = v27;
    (*(v32 + 32))(v72 + *(v68 + 24), v12, v69);
    v46 = sub_1ABAAB7C8(v16);
    if (v46)
    {
      break;
    }

LABEL_13:
    v55 = *(v67 + 24);
    sub_1ABDD4AF4();
    v12 = v11;
    if (v11 || (v57 = v56, , !*(v57 + 16)))
    {
LABEL_14:

      sub_1ABDD8518(v72);
      sub_1ABBA4F10(v72);
      sub_1ABAA2DB8();
      sub_1ABA7BC90();
      return;
    }

    sub_1ABAB5D74(MEMORY[0x1E69E7CC0]);
    v71 = v58;
    sub_1ABADEAAC();
    v59 = v71;
    v19 = 0;
    v60 = a10;
    v61 = v57 + 32;
    v69 = v57;
    v68 = v57 + 32;
    while (1)
    {
      if (v19 >= *(v57 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v13 = *(v61 + 8 * v19);
      v32 = *(v13 + 16);
      if (v32)
      {
        break;
      }

      v27 = MEMORY[0x1E69E7CC0];
LABEL_24:
      a10 = v60;
      v64 = *(v60 + 16);
      v63 = *(v60 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_1ABA7BBEC(v63);
        v66 = v65;
        sub_1ABADEAAC();
        v61 = v66;
        v59 = v71;
      }

      ++v19;
      *(v60 + 16) = v64 + 1;
      *(v60 + 8 * v64 + 32) = v27;
      if (v19 == v59)
      {
        goto LABEL_14;
      }
    }

    v70 = v60;
    v73 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v16 = 0;
    v14 = v13 + 32;
    while (v16 < *(v13 + 16))
    {
      sub_1ABA93E64(v14, v74);
      v62 = v74[3];
      sub_1ABA93E20(v74, v74[3]);
      sub_1ABDD0B1C(v62);
      ++v16;
      sub_1ABA84B54(v74);
      sub_1ABF24B94();
      v27 = *(v73 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v14 += 40;
      if (v32 == v16)
      {

        v27 = v73;
        v57 = v69;
        v59 = v71;
        v61 = v68;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    v38 = sub_1ABA7D608();
  }

  v47 = v46;
  v75 = MEMORY[0x1E69E7CC0];
  sub_1ABADEAEC(0, v46 & ~(v46 >> 63), 0);
  if ((v47 & 0x8000000000000000) == 0)
  {
    v48 = 0;
    v49 = v75;
    v27 = v16 & 0xC000000000000001;
    do
    {
      if (v27)
      {
        v50 = MEMORY[0x1AC5AA170](v48, v16);
      }

      else
      {
        v50 = *(v16 + 8 * v48 + 32);
      }

      v51 = v50;
      sub_1ABDC3CC4(v74);

      a10 = v49;
      v53 = *(v49 + 16);
      v52 = *(v49 + 24);
      if (v53 >= v52 >> 1)
      {
        v54 = sub_1ABA7BBEC(v52);
        sub_1ABADEAEC(v54, v53 + 1, 1);
      }

      ++v48;
      *(v49 + 16) = v53 + 1;
      memcpy((v49 + 192 * v53 + 32), v74, 0xC0uLL);
    }

    while (v47 != v48);
    goto LABEL_13;
  }

LABEL_32:
  __break(1u);
}

void sub_1ABDD4AF4()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    while (1)
    {
      memcpy(__dst, v5, 0xC0uLL);
      memcpy(__src, v5, sizeof(__src));
      sub_1ABDD8AD0(__dst, v14);
      v7 = sub_1ABDD41F4(__src, v2 & 1);
      if (v0)
      {
        break;
      }

      v8 = v7;
      sub_1ABDD8B2C(__dst);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v6 + 16);
        sub_1ABADC40C();
        v6 = v12;
      }

      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1ABA7BBEC(v9);
        sub_1ABADC40C();
        v6 = v13;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      v5 += 192;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    sub_1ABDD8B2C(__dst);
  }

LABEL_10:
  sub_1ABA7BC90();
}

void sub_1ABDD4C20()
{
  sub_1ABA7BCA8();
  v76 = v0;
  v77 = v5;
  v6 = sub_1ABF23744();
  v7 = sub_1ABA7BB64(v6);
  v74 = v8;
  v75 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v73 = v11;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8E3E8();
  v13 = sub_1ABF237F4();
  v14 = sub_1ABA7BB64(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v22 = sub_1ABF23774();
  v72 = sub_1ABA7BB64(v22);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v72);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v71 = type metadata accessor for LogSignpost();
  v25 = sub_1ABA7BBB0(v71);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  sub_1ABAA1A94();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D608();
  }

  v28 = sub_1ABA7AA24(v13, qword_1ED871EF8);
  (*(v16 + 16))(v21, v28, v13);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v29 = sub_1ABF23764();
  v30 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v31 = v13;
    v32 = v3;
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v29, v30, v34, "KTS.InProcessService.requestSlice", "", v33, 2u);
    v3 = v32;
    v13 = v31;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v74 + 16))(v73, v4, v75);
  v35 = sub_1ABF237B4();
  sub_1ABA806BC(v35);
  sub_1ABAA1808();
  v36 = sub_1ABF237A4();
  (*(v74 + 8))(v4, v75);
  sub_1ABAA3630("KTS.InProcessService.requestSlice");
  *(v3 + 24) = v36;
  sub_1ABA9594C(v71);
  v38(v3 + v37, v2, v72);
  sub_1ABDC3CC4(v81);
  v39 = *(v76 + 24);
  memcpy(v80, v81, 0xC0uLL);
  v40 = sub_1ABDD41F4(v80, 1);
  if (!v1)
  {
    v41 = v40;
    sub_1ABDD8B2C(v81);
    v42 = sub_1ABDD5380(v41);

    if (v42)
    {
      v43 = *(v42 + 16);
      if (v43)
      {
        memcpy(v80, (v42 + 32), sizeof(v80));
        sub_1ABDD8A74(v80, v79);

        if (v43 == 1)
        {
          memcpy(v79, v80, sizeof(v79));
          v44 = sub_1ABDCC738();
          v63 = qword_1EB4CE7E8;
          v64 = v44;
          if (v63 != -1)
          {
            sub_1ABA7DD18();
          }

          sub_1ABAA2318(v13, qword_1EB4CE7F0);
          v65 = sub_1ABF237D4();
          v66 = sub_1ABF24644();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = sub_1ABA8E2E8();
            v68 = swift_slowAlloc();
            *v67 = 138412290;
            *(v67 + 4) = v64;
            *v68 = v64;
            v69 = v64;
            sub_1ABA7AE18(&dword_1ABA78000, v70, v66, "Got an object response: %@");
            sub_1ABAB480C(v68, &unk_1EB4D57F0, &qword_1ABF390C0);
            sub_1ABA7BDD8();
            MEMORY[0x1AC5AB8B0]();
            sub_1ABA7BDD8();
            MEMORY[0x1AC5AB8B0]();
          }

          sub_1ABDD334C(v80);
          v62 = v3;
LABEL_19:
          sub_1ABDD8518(v62);
          sub_1ABBA4F10(v3);
          goto LABEL_18;
        }

        sub_1ABDD334C(v80);
      }

      else
      {
      }
    }

    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA7DD18();
    }

    sub_1ABAA2318(v13, qword_1EB4CE7F0);
    v45 = v77;
    v46 = sub_1ABF237D4();
    v47 = sub_1ABF24644();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = sub_1ABA8E2E8();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v45;
      v50 = v45;
      sub_1ABA7AE18(&dword_1ABA78000, v51, v47, "Warning: No results for request %@; returning empty data and context");
      sub_1ABAB480C(v49, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    type metadata accessor for KTSContextAggregateRepresentation();
    swift_allocObject();
    KTSContextAggregateRepresentation.init(originContexts:ktsContexts:destinationContexts:graphLifeEventContext:)(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], 0);
    sub_1ABDCCA14();
    v53 = v52;

    type metadata accessor for KTSDataAggregateRepresentation(0);
    static KTSDataAggregateRepresentation.emptyRepresentation.getter();
    sub_1ABDCCA3C();
    v55 = v54;

    v78 = swift_dynamicCastObjCProtocolUnconditional();
    v56 = [v45 requestID];
    sub_1ABF23C04();
    v57 = v3;

    v58 = v53;
    v59 = [v45 parameters];
    v60 = objc_allocWithZone(GDKTSSliceData);
    v61 = sub_1ABF23BD4();

    [v60 initWithIdentifier:v61 context:v58 data:v78 parameters:v59];

    v3 = v57;
    v62 = v57;
    goto LABEL_19;
  }

  sub_1ABDD8B2C(v81);
  sub_1ABDD8518(v3);
  sub_1ABBA4F10(v3);
LABEL_18:
  sub_1ABA7BC90();
}

uint64_t sub_1ABDD5380(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1ABADEB0C(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1ABA93E64(v4, v11);
      sub_1ABAD219C(&qword_1EB4D1530, &qword_1ABF336C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      nullsub_1(__src);
      memcpy(__dst, __src, sizeof(__dst));
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1ABADEB0C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      memcpy(v8, __dst, sizeof(v8));
      *(v3 + 16) = v6 + 1;
      memcpy((v3 + 224 * v6 + 32), v8, 0xE0uLL);
      v4 += 40;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_1ABDD8B80(v8);
    memcpy(__src, v8, sizeof(__src));
    memcpy(__dst, v8, sizeof(__dst));
    sub_1ABAB480C(__dst, &unk_1EB4D9C70, &qword_1ABF62528);
    return 0;
  }

  return v3;
}

uint64_t sub_1ABDD551C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABADEB2C();
  v3 = (a1 + 32);
  v4 = v9;
  if (v2)
  {
    while (1)
    {
      v8 = *v3;

      sub_1ABAD219C(&qword_1EB4D14D0, &unk_1ABF62510);
      sub_1ABAD219C(&qword_1EB4D14C0, &qword_1ABF33648);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = *(v9 + 16);
      if (v5 >= *(v9 + 24) >> 1)
      {
        sub_1ABADEB2C();
      }

      *(v9 + 16) = v5 + 1;
      *(v9 + 8 * v5 + 32) = v7;
      ++v3;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return v4;
}

void sub_1ABDD565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v64 = v10;
  v70 = v15;
  v16 = sub_1ABF23744();
  v17 = sub_1ABA7BB64(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C068();
  v68 = v22;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1ABA9939C();
  v25 = sub_1ABA7BB64(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  sub_1ABA9A61C();
  v30 = sub_1ABF23774();
  v31 = sub_1ABA7BB64(v30);
  v66 = v32;
  v67 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v65 = type metadata accessor for LogSignpost();
  v35 = sub_1ABA7BBB0(v65);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7BC58();
  v69 = v40 - v39;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_1ABA90318(v38, qword_1ED871EF8);
    (*(v27 + 16))(v12);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v41 = sub_1ABF23764();
    v42 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v41, v42, v44, "KTS.InProcessService.requestBatchSlice", "", v43, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v19 + 16))(v68, v14, v16);
    v45 = sub_1ABF237B4();
    sub_1ABA806BC(v45);
    v46 = sub_1ABF237A4();
    v47 = *(v19 + 8);
    v19 += 8;
    v47(v14, v16);
    *v69 = "KTS.InProcessService.requestBatchSlice";
    *(v69 + 8) = 38;
    *(v69 + 16) = 2;
    *(v69 + 24) = v46;
    (*(v66 + 32))(v69 + *(v65 + 24), v13, v67);
    v48 = sub_1ABAAB7C8(v70);
    if (v48)
    {
      break;
    }

LABEL_13:
    v56 = *(v64 + 24);
    sub_1ABDD4AF4();
    v27 = v11;
    if (v11)
    {
      goto LABEL_14;
    }

    sub_1ABAA1808();

    v13 = sub_1ABDD551C(v56);

    if (!v13)
    {
      sub_1ABDBF718();
      v60 = sub_1ABA7BD00();
      *v61 = 0xD00000000000001BLL;
      v61[1] = 0x80000001ABF90A20;
      sub_1ABA90A68(v60, v61);
      goto LABEL_15;
    }

    v12 = *(v13 + 16);
    if (!v12)
    {
LABEL_14:

LABEL_15:
      sub_1ABDD8518(v69);
      sub_1ABBA4F10(v69);
      sub_1ABA7BC90();
      return;
    }

    sub_1ABAB5D74(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v57 = 0;
    v14 = v12 - 1;
    while (v57 < *(v13 + 16))
    {
      v58 = *(v13 + 8 * v57 + 32);
      v59 = *(v58 + 16);
      if (!v59 || (memcpy(v73, (v58 + 32), 0xE0uLL), v59 != 1))
      {

        sub_1ABDBF718();
        v62 = sub_1ABA7BD00();
        *v63 = 0xD000000000000033;
        v63[1] = 0x80000001ABF90A40;
        sub_1ABA90A68(v62, v63);

        goto LABEL_15;
      }

      memcpy(v72, (v58 + 32), sizeof(v72));

      sub_1ABDD8A74(v73, &v71);
      v12 = sub_1ABDCC738();

      sub_1ABDD334C(v73);
      sub_1ABF24B94();
      v16 = *(a10 + 16);
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (v14 == v57)
      {
        goto LABEL_14;
      }

      ++v57;
    }

    __break(1u);
LABEL_29:
    v38 = sub_1ABA7D608();
  }

  v49 = v48;
  v72[0] = MEMORY[0x1E69E7CC0];
  sub_1ABADEAEC(0, v48 & ~(v48 >> 63), 0);
  if ((v49 & 0x8000000000000000) == 0)
  {
    v50 = 0;
    v51 = v72[0];
    v19 = v70 & 0xC000000000000001;
    do
    {
      if (v19)
      {
        v52 = MEMORY[0x1AC5AA170](v50, v70);
      }

      else
      {
        v52 = *(v70 + 8 * v50 + 32);
      }

      v53 = v52;
      sub_1ABDC3CC4(v73);

      v72[0] = v51;
      v16 = *(v51 + 16);
      v54 = *(v51 + 24);
      if (v16 >= v54 >> 1)
      {
        v55 = sub_1ABA7BBEC(v54);
        sub_1ABADEAEC(v55, v16 + 1, 1);
        v51 = v72[0];
      }

      ++v50;
      *(v51 + 16) = v16 + 1;
      memcpy((v51 + 192 * v16 + 32), v73, 0xC0uLL);
    }

    while (v49 != v50);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1ABDD5C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v78 = v11;
  v80 = v10;
  v81 = v16;
  LOBYTE(v83) = v17;
  v73 = v18;
  v82 = v19;
  v20 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  sub_1ABA7AC18();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA8E3E8();
  v79 = sub_1ABF23744();
  v26 = sub_1ABA7BB64(v79);
  v77 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7C068();
  v76 = v30;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABAA4208();
  v32 = sub_1ABF237F4();
  v33 = sub_1ABA7BB64(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7BC58();
  sub_1ABAA23EC();
  v38 = sub_1ABF23774();
  v75 = sub_1ABA7BB64(v38);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v75);
  sub_1ABA7BC58();
  sub_1ABA9A61C();
  v74 = type metadata accessor for LogSignpost();
  v41 = sub_1ABA7BBB0(v74);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7BC58();
  v47 = v46 - v45;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    sub_1ABA90318(v44, qword_1ED871EF8);
    (*(v35 + 16))(v13);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v48 = sub_1ABF23764();
    v49 = sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v50 = v47;
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v48, v49, v52, "KTS.InProcessService.ktsSegmentsForStartAndEnd", "", v51, 2u);
      v47 = v50;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v77 + 16))(v76, v14, v79);
    v53 = sub_1ABF237B4();
    sub_1ABA806BC(v53);
    sub_1ABAA59DC();
    (*(v77 + 8))(v14, v79);
    sub_1ABAA1D44("KTS.InProcessService.ktsSegmentsForStartAndEnd");
    sub_1ABA9594C(v74);
    v55(v47 + v54, v12, v75);
    v56 = *(v80 + 24);
    v57 = sub_1ABF21EB4();
    sub_1ABA7BBB0(v57);
    v59 = *(v58 + 16);
    v59(v15, v81, v57);
    sub_1ABA7B9B4(v15, 0, 1, v57);
    v59(v24, v82, v57);
    sub_1ABA7B9B4(v24, 0, 1, v57);
    if (v83)
    {
      LOBYTE(v60) = 8;
    }

    else if (v73 >= 8)
    {
      sub_1ABDC2660();
      LOBYTE(v60) = a10;
    }

    else
    {
      v60 = 0x706050402010001uLL >> (8 * v73);
    }

    LOBYTE(a10) = v60;
    sub_1ABDD630C();
    v12 = v78;
    if (v78)
    {
      sub_1ABA95230(v24);
      sub_1ABA95230(v15);
      goto LABEL_17;
    }

    v13 = v61;
    sub_1ABA95230(v24);
    sub_1ABA95230(v15);
    v79 = *(v13 + 16);
    if (!v79)
    {
      break;
    }

    v77 = v47;
    sub_1ABAB5D74(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v47 = 0;
    v35 = v13 + 64;
    v78 = v13;
    while (v47 < *(v13 + 16))
    {
      v62 = v47;
      v14 = *(v35 - 24);
      v82 = *(v35 - 32);
      v63 = *(v35 - 8);
      v15 = *v35;
      v84 = *(v35 - 16);

      v64 = EntityIdentifier.stringValue.getter();
      v83 = v65;

      sub_1ABDCF614();
      v67 = v66;
      v80 = v62 + 1;
      sub_1ABDCFB6C();
      v69 = v68;
      sub_1ABDD8988();
      v81 = 0;
      v70 = v67;
      v24 = v69;
      v71 = sub_1ABDD3A5C();
      sub_1ABDD89D8(v64, v83, v70, v24, v71, off_1E7960270);

      v47 = v80;
      sub_1ABF24B94();
      v72 = *(a10 + 16);
      sub_1ABF24BD4();
      v12 = 0;
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v35 += 40;
      v13 = v78;
      if (v79 == v80)
      {

        v47 = v77;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    v44 = sub_1ABA7D608();
  }

LABEL_17:
  sub_1ABDD8518(v47);
  sub_1ABBA4F10(v47);
  sub_1ABA7BC90();
}

void sub_1ABDD630C()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v9 = sub_1ABA7BBB0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA4208();
  v19 = *(v0 + 16);
  LOBYTE(v43) = *v3;
  if (!sub_1ABDDF770(v7, v5, &v43))
  {
    if (qword_1EB4CE7E8 != -1)
    {
      sub_1ABA7DD18();
    }

    v20 = sub_1ABF237F4();
    sub_1ABA7AA24(v20, qword_1EB4CE7F0);
    v21 = sub_1ABAA1808();
    sub_1ABAE6A34(v21, v1);
    sub_1ABAE6A34(v5, v17);
    v22 = sub_1ABF237D4();
    v23 = sub_1ABF24644();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v42 = v23;
      v25 = v24;
      v43 = swift_slowAlloc();
      *v25 = 136315394;
      sub_1ABAE6A34(v1, v14);
      sub_1ABA7D0F8();
      v26 = sub_1ABF23C74();
      v41 = v22;
      v28 = v27;
      sub_1ABAB480C(v1, &qword_1EB4D9BF0, &qword_1ABF34240);
      v29 = sub_1ABADD6D8(v26, v28, &v43);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      sub_1ABAE6A34(v17, v14);
      sub_1ABA7D0F8();
      v30 = sub_1ABF23C74();
      v32 = v31;
      sub_1ABAB480C(v17, &qword_1EB4D9BF0, &qword_1ABF34240);
      v33 = sub_1ABADD6D8(v30, v32, &v43);

      *(v25 + 14) = v33;
      v34 = v41;
      _os_log_impl(&dword_1ABA78000, v41, v42, "KTSError: Could not get fetchKTSSegments result for startTime %s to %s", v25, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    else
    {

      sub_1ABAB480C(v17, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAB480C(v1, &qword_1EB4D9BF0, &qword_1ABF34240);
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000034, 0x80000001ABF90950);
    sub_1ABAE6A34(v7, v14);
    sub_1ABA7D0F8();
    v35 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v35);

    MEMORY[0x1AC5A9410](544175136, 0xE400000000000000);
    sub_1ABAE6A34(v5, v14);
    sub_1ABA7D0F8();
    v36 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v36);

    v37 = v43;
    v38 = v44;
    sub_1ABDBF718();
    v39 = sub_1ABA7BD00();
    *v40 = v37;
    v40[1] = v38;
    sub_1ABA90A68(v39, v40);
  }

  sub_1ABA7BC90();
}

void sub_1ABDD6698()
{
  sub_1ABA7BCA8();
  v41 = sub_1ABF23744();
  v2 = sub_1ABA7BB64(v41);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  v40 = v7;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v11 = sub_1ABF237F4();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v39 = sub_1ABF23774();
  v20 = sub_1ABA7BB64(v39);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v38 = type metadata accessor for LogSignpost();
  v25 = sub_1ABA7BBB0(v38);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  sub_1ABAA1A94();
  if (qword_1ED871F20 != -1)
  {
    v28 = sub_1ABA7D608();
  }

  sub_1ABA90318(v28, qword_1ED871EF8);
  (*(v14 + 16))(v19);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v29 = sub_1ABF23764();
  v30 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v29, v30, v32, "KTS.InProcessService.ktsDataForStartAndEnd", "", v31, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v4 + 16))(v40, v10, v41);
  v33 = sub_1ABF237B4();
  sub_1ABA806BC(v33);
  v34 = sub_1ABAA59DC();
  v35 = *(v4 + 8);
  v36 = sub_1ABA7D0F8();
  v37(v36);
  sub_1ABAA3630("KTS.InProcessService.ktsDataForStartAndEnd");
  *(v1 + 24) = v34;
  (*(v22 + 32))(v1 + *(v38 + 24), v0, v39);
  sub_1ABDD8518(v1);
  sub_1ABBA4F10(v1);
  sub_1ABA7BC90();
}

void sub_1ABDD69B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v25;
  a20 = v26;
  v74 = v20;
  v28 = v27;
  v73 = sub_1ABF23744();
  v29 = sub_1ABA7BB64(v73);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7C068();
  v72 = v34;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v35);
  v36 = sub_1ABA82F5C();
  v37 = sub_1ABA7BB64(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7BC58();
  sub_1ABAA1A94();
  v71 = sub_1ABF23774();
  v42 = sub_1ABA7BB64(v71);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7BC58();
  sub_1ABA8E3FC();
  v70 = type metadata accessor for LogSignpost();
  v47 = sub_1ABA7BBB0(v70);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7BC58();
  v53 = v52 - v51;
  v69 = *v28;
  if (qword_1ED871F20 != -1)
  {
    v50 = sub_1ABA7D608();
  }

  sub_1ABA90318(v50, qword_1ED871EF8);
  (*(v39 + 16))(v23);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v54 = sub_1ABF23764();
  v55 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v54, v55, v57, "KTS.InProcessService.ktsSegmentForSegmentId", "", v56, 2u);
    v58 = sub_1ABA8EBB8();
    MEMORY[0x1AC5AB8B0](v58);
  }

  (*(v31 + 16))(v72, v22, v73);
  v59 = sub_1ABF237B4();
  sub_1ABA806BC(v59);
  sub_1ABAA1808();
  sub_1ABF237A4();
  (*(v31 + 8))(v22, v73);
  sub_1ABA83B14("KTS.InProcessService.ktsSegmentForSegmentId");
  (*(v44 + 32))(v53 + *(v70 + 24), v24, v71);
  v60 = *(v74 + 24);
  a10 = v69;
  sub_1ABDD6DD8(&a10, &v77);
  if (!v21)
  {
    v76 = sub_1ABAB11D4();
    v62 = v61;

    sub_1ABDCF614();
    v64 = v63;
    sub_1ABDCFB6C();
    v75 = v65;
    sub_1ABDD8988();
    v66 = v64;
    v67 = v75;
    v68 = sub_1ABDD3A5C();
    sub_1ABDD89D8(v76, v62, v66, v67, v68, off_1E7960270);
  }

  sub_1ABDD8518(v53);
  sub_1ABBA4F10(v53);
  sub_1ABAA2DB8();
  sub_1ABA7BC90();
}

void sub_1ABDD6DD8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 16);
  v30 = *a1;
  KTSIndexManager.ktsSegmentForSegmentId(segmentId:)(&v30);
  if (!v3)
  {
    if (v28)
    {
      sub_1ABAA2018();
      v7 = v29;
      *a2 = v9;
      *(a2 + 8) = v8;
      *(a2 + 16) = v10;
      *(a2 + 24) = v7;
    }

    else
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v11 = sub_1ABF237F4();
      sub_1ABAA2318(v11, qword_1EB4CE7F0);
      v12 = sub_1ABF237D4();
      v13 = sub_1ABF24644();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = sub_1ABA8E2E8();
        v15 = sub_1ABA82874();
        v27 = v15;
        *v14 = 136315138;
        v30 = v5;
        v16 = EntityIdentifier.description.getter();
        v18 = sub_1ABADD6D8(v16, v17, &v27);

        *(v14 + 4) = v18;
        sub_1ABAA1870(&dword_1ABA78000, v19, v20, "KTSError: Could not get result for request %s");
        sub_1ABA84B54(v15);
        v21 = sub_1ABA8EBB8();
        MEMORY[0x1AC5AB8B0](v21);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABA8C324();
      sub_1ABF24AB4();

      sub_1ABA83AFC();
      v30 = v5;
      v22 = EntityIdentifier.description.getter();
      MEMORY[0x1AC5A9410](v22);

      v23 = v27;
      v24 = v28;
      sub_1ABDBF718();
      v25 = sub_1ABA7BD00();
      *v26 = v23;
      v26[1] = v24;
      sub_1ABA90A68(v25, v26);
    }
  }
}

void sub_1ABDD6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v29;
  a24 = v30;
  v31 = v25;
  v75 = v24;
  v76 = v32;
  a10 = v33;
  v71 = v34;
  v74 = sub_1ABF23744();
  v35 = sub_1ABA7BB64(v74);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7AC18();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA8E3E8();
  v44 = sub_1ABF237F4();
  v45 = sub_1ABA7BB64(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v50 = sub_1ABF23774();
  v73 = sub_1ABA7BB64(v50);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v73);
  sub_1ABA7BC58();
  sub_1ABAA23EC();
  v72 = type metadata accessor for LogSignpost();
  v53 = sub_1ABA7BBB0(v72);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7BC58();
  v59 = v58 - v57;
  if (qword_1ED871F20 != -1)
  {
    v56 = sub_1ABA7D608();
  }

  sub_1ABA90318(v56, qword_1ED871EF8);
  (*(v47 + 16))(v27);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v60 = sub_1ABF23764();
  v61 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v62 = swift_slowAlloc();
    *v62 = 0;
    v63 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v60, v61, v63, "KTS.InProcessService.fetchMostRecent", "", v62, 2u);
    v31 = v25;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v37 + 16))(v42, v28, v74);
  v64 = sub_1ABF237B4();
  sub_1ABA806BC(v64);
  v65 = sub_1ABAA59DC();
  (*(v37 + 8))(v28, v74);
  *v59 = "KTS.InProcessService.fetchMostRecent";
  *(v59 + 8) = 36;
  *(v59 + 16) = 2;
  *(v59 + 24) = v65;
  sub_1ABA9594C(v72);
  v67(v59 + v66, v26, v73);
  v68 = *(v75 + 24);
  if (a10)
  {
    LOBYTE(v69) = 3;
  }

  else if (v71 >= 4)
  {
    sub_1ABDC31F8();
    LOBYTE(v69) = a14;
  }

  else
  {
    v69 = 0x2010003u >> (8 * v71);
  }

  a14 = v69;
  sub_1ABDD7380(&a14, v76, &v77);
  if (!v31)
  {
    v70 = v78;
    sub_1ABA93E20(&v77, v78);
    sub_1ABDD0B1C(v70);
    sub_1ABA84B54(&v77);
  }

  sub_1ABDD8518(v59);
  sub_1ABBA4F10(v59);
  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABDD7380@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(v3 + 16);
  LOBYTE(v23) = *a1;
  sub_1ABDDE668(&v23, a2);
  if (v25)
  {
    return sub_1ABA946C0(&v24, a3);
  }

  sub_1ABAB480C(&v24, &qword_1EB4D9BF8, &qword_1ABF62500);
  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA7DD18();
  }

  v9 = sub_1ABF237F4();
  sub_1ABAA2318(v9, qword_1EB4CE7F0);
  v10 = sub_1ABF237D4();
  v11 = sub_1ABF24644();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = sub_1ABA82874();
    *&v24 = v13;
    *v12 = 136315394;
    LOBYTE(v23) = v6;
    sub_1ABAD219C(&qword_1EB4D9C00, &qword_1ABF62508);
    v14 = sub_1ABF23C74();
    v16 = sub_1ABADD6D8(v14, v15, &v24);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a2;
    _os_log_impl(&dword_1ABA78000, v10, v11, "KTSError: Could not get result for cadence %s with offset %ld", v12, 0x16u);
    sub_1ABA84B54(v13);
    v17 = sub_1ABA8EBB8();
    MEMORY[0x1AC5AB8B0](v17);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA8C324();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD00000000000002BLL, 0x80000001ABF909C0);
  LOBYTE(v23) = v6;
  sub_1ABAD219C(&qword_1EB4D9C00, &qword_1ABF62508);
  v18 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v18);

  MEMORY[0x1AC5A9410](0x666F206874697720, 0xED00002074657366);
  v23 = a2;
  v19 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v19);

  v20 = v24;
  sub_1ABDBF718();
  v21 = sub_1ABA7BD00();
  *v22 = v20;
  return sub_1ABA90A68(v21, v22);
}

void sub_1ABDD7608()
{
  sub_1ABA7BCA8();
  v52 = v0;
  v4 = sub_1ABF23744();
  v5 = sub_1ABA7BB64(v4);
  v49 = v6;
  v50 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C068();
  v48 = v9;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1ABA9939C();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v20 = sub_1ABF23774();
  v47 = sub_1ABA7BB64(v20);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7BC58();
  sub_1ABAA23EC();
  v46 = type metadata accessor for LogSignpost();
  v23 = sub_1ABA7BBB0(v46);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7BC58();
  v29 = v28 - v27;
  if (qword_1ED871F20 != -1)
  {
    v26 = sub_1ABA7D608();
  }

  sub_1ABA90318(v26, qword_1ED871EF8);
  (*(v14 + 16))(v19);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v30 = sub_1ABF23764();
  v31 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v30, v31, v33, "KTS.InProcessService.ktsSegmentForSourceId", "", v32, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v49 + 16))(v48, v3, v50);
  v34 = sub_1ABF237B4();
  sub_1ABA806BC(v34);
  sub_1ABF237A4();
  (*(v49 + 8))(v3, v50);
  sub_1ABA83B14("KTS.InProcessService.ktsSegmentForSourceId");
  sub_1ABA9594C(v46);
  v36(v29 + v35, v2, v47);
  v37 = *(v52 + 24);
  sub_1ABDD7A38();
  if (!v1)
  {
    v53 = sub_1ABAB11D4();
    v39 = v38;

    sub_1ABDCF614();
    v41 = v40;
    sub_1ABDCFB6C();
    v51 = v42;
    sub_1ABDD8988();
    v43 = v41;
    v44 = v51;
    v45 = sub_1ABDD3A5C();
    sub_1ABDD89D8(v53, v39, v43, v44, v45, off_1E7960270);
  }

  sub_1ABDD8518(v29);
  sub_1ABBA4F10(v29);
  sub_1ABAA2DB8();
  sub_1ABA7BC90();
}

void sub_1ABDD7A38()
{
  sub_1ABA96AD0();
  KTSIndexManager.ktsSegmentForSourceId(sourceId:)(v2, v3);
  if (!v0)
  {
    if (v21)
    {
      sub_1ABAA2018();
      *v1 = v5;
      *(v1 + 8) = v4;
      *(v1 + 16) = v6;
      *(v1 + 24) = v22;
    }

    else
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v7 = sub_1ABF237F4();
      sub_1ABAA2318(v7, qword_1EB4CE7F0);

      v8 = sub_1ABF237D4();
      v9 = sub_1ABF24644();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = sub_1ABA8E2E8();
        v20 = sub_1ABA82874();
        *v10 = 136315138;
        v11 = sub_1ABA7D0EC();
        *(v10 + 4) = sub_1ABADD6D8(v11, v12, v13);
        sub_1ABA96138(&dword_1ABA78000, v14, v15, "KTSError: Could not get result for request %s");
        sub_1ABA84B54(v20);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        v16 = sub_1ABA8EBB8();
        MEMORY[0x1AC5AB8B0](v16);
      }

      sub_1ABA8C324();
      sub_1ABF24AB4();

      sub_1ABA83AFC();
      v17 = sub_1ABA7D0EC();
      MEMORY[0x1AC5A9410](v17);
      sub_1ABDBF718();
      v18 = sub_1ABA7BD00();
      *v19 = v20;
      v19[1] = 0;
      sub_1ABA90A68(v18, v19);
    }
  }
}

void sub_1ABDD7BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v25;
  a20 = v26;
  v73 = v20;
  v28 = v27;
  v72 = sub_1ABF23744();
  v29 = sub_1ABA7BB64(v72);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7C068();
  v71 = v34;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v35);
  v36 = sub_1ABA82F5C();
  v37 = sub_1ABA7BB64(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7BC58();
  sub_1ABAA1A94();
  v70 = sub_1ABF23774();
  v42 = sub_1ABA7BB64(v70);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7BC58();
  sub_1ABA8E3FC();
  v69 = type metadata accessor for LogSignpost();
  v47 = sub_1ABA7BBB0(v69);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7BC58();
  v53 = v52 - v51;
  v68 = *v28;
  if (qword_1ED871F20 != -1)
  {
    v50 = sub_1ABA7D608();
  }

  sub_1ABA90318(v50, qword_1ED871EF8);
  (*(v39 + 16))(v23);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v54 = sub_1ABF23764();
  v55 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v56 = swift_slowAlloc();
    *v56 = 0;
    v57 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v54, v55, v57, "KTS.InProcessService.tripForSegmentId", "", v56, 2u);
    v58 = sub_1ABA8EBB8();
    MEMORY[0x1AC5AB8B0](v58);
  }

  (*(v31 + 16))(v71, v22, v72);
  v59 = sub_1ABF237B4();
  sub_1ABA806BC(v59);
  sub_1ABAA1808();
  v60 = sub_1ABF237A4();
  (*(v31 + 8))(v22, v72);
  *v53 = "KTS.InProcessService.tripForSegmentId";
  *(v53 + 8) = 37;
  *(v53 + 16) = 2;
  *(v53 + 24) = v60;
  (*(v44 + 32))(v53 + *(v69 + 24), v24, v70);
  v61 = *(v73 + 24);
  a10 = v68;
  sub_1ABDD7F94(&a10, &v74);
  if (!v21)
  {
    v62 = EntityIdentifier.stringValue.getter();
    v64 = v63;
    sub_1ABDCCA14();
    v66 = v65;
    sub_1ABDCCA3C();
    sub_1ABDD89D8(v62, v64, v66, v67, 0, off_1E7960248);
    sub_1ABAA1808();
  }

  sub_1ABDD8518(v53);
  sub_1ABBA4F10(v53);
  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

void sub_1ABDD7F94(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = *(v2 + 16);
  v28 = *a1;
  KTSIndexManager.tripForSegmentId(segmentId:)();
  if (!v3)
  {
    if (v27)
    {
      sub_1ABAA2018();
      *a2 = v8;
      a2[1] = v7;
      a2[2] = v9;
    }

    else
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v10 = sub_1ABF237F4();
      sub_1ABAA2318(v10, qword_1EB4CE7F0);
      v11 = sub_1ABF237D4();
      v12 = sub_1ABF24644();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = sub_1ABA8E2E8();
        v14 = sub_1ABA82874();
        v26 = v14;
        *v13 = 136315138;
        v28 = v5;
        v15 = EntityIdentifier.description.getter();
        v17 = sub_1ABADD6D8(v15, v16, &v26);

        *(v13 + 4) = v17;
        sub_1ABAA1870(&dword_1ABA78000, v18, v19, "KTSError: Could not get result for request %s");
        sub_1ABA84B54(v14);
        v20 = sub_1ABA8EBB8();
        MEMORY[0x1AC5AB8B0](v20);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABA8C324();
      sub_1ABF24AB4();

      sub_1ABA83AFC();
      v28 = v5;
      v21 = EntityIdentifier.description.getter();
      MEMORY[0x1AC5A9410](v21);

      v22 = v26;
      v23 = v27;
      sub_1ABDBF718();
      v24 = sub_1ABA7BD00();
      *v25 = v22;
      v25[1] = v23;
      sub_1ABA90A68(v24, v25);
    }
  }
}

void sub_1ABDD8144()
{
  sub_1ABA7BCA8();
  v46 = v0;
  v45 = sub_1ABF23744();
  v5 = sub_1ABA7BB64(v45);
  v44 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C068();
  v43 = v9;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1ABA9939C();
  v12 = sub_1ABA7BB64(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v17 = sub_1ABF23774();
  v42 = sub_1ABA7BB64(v17);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7BC58();
  sub_1ABA9A61C();
  v41 = type metadata accessor for LogSignpost();
  v20 = sub_1ABA7BBB0(v41);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  v26 = v25 - v24;
  if (qword_1ED871F20 != -1)
  {
    v23 = sub_1ABA7D608();
  }

  sub_1ABA90318(v23, qword_1ED871EF8);
  (*(v14 + 16))(v3);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v27 = sub_1ABF23764();
  v28 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v29 = swift_slowAlloc();
    *v29 = 0;
    v30 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v27, v28, v30, "KTS.InProcessService.ktsSegmentForSourceId", "", v29, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v44 + 16))(v43, v4, v45);
  v31 = sub_1ABF237B4();
  sub_1ABA806BC(v31);
  sub_1ABAA59DC();
  (*(v44 + 8))(v4, v45);
  sub_1ABAA1D44("KTS.InProcessService.ktsSegmentForSourceId");
  sub_1ABA9594C(v41);
  v33(v26 + v32, v2, v42);
  v34 = *(v46 + 24);
  sub_1ABDD8784();
  if (!v1)
  {
    v35 = EntityIdentifier.stringValue.getter();
    v37 = v36;
    sub_1ABDCCA14();
    v39 = v38;
    sub_1ABDCCA3C();
    sub_1ABDD89D8(v35, v37, v39, v40, 0, off_1E7960248);
  }

  sub_1ABDD8518(v26);
  sub_1ABBA4F10(v26);
  sub_1ABA94BBC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABDD8518(uint64_t a1)
{
  v3 = sub_1ABF23784();
  v4 = sub_1ABA7BB64(v3);
  v29 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v8 = sub_1ABF23744();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = type metadata accessor for LogSignpost();
  v18 = *a1;
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = a1 + *(v17 + 24);
  v22 = sub_1ABF23764();
  sub_1ABF23794();
  v28 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v16, v8);
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_9:

      sub_1ABF237C4();

      if ((*(v29 + 88))(v1, v3) == *MEMORY[0x1E69E93E8])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(v29 + 8))(v1, v3);
        v24 = "";
      }

      sub_1ABA8179C();
      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v22, v28, v26, v18, v24, v25, 2u);
      v27 = sub_1ABA8EBB8();
      MEMORY[0x1AC5AB8B0](v27);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v18 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      v18 = &v30;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_1ABDD8784()
{
  sub_1ABA96AD0();
  KTSIndexManager.tripForSourceId(sourceId:)();
  if (!v0)
  {
    if (v19)
    {
      sub_1ABAA2018();
      *v1 = v3;
      v1[1] = v2;
      v1[2] = v4;
    }

    else
    {
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v5 = sub_1ABF237F4();
      sub_1ABAA2318(v5, qword_1EB4CE7F0);

      v6 = sub_1ABF237D4();
      v7 = sub_1ABF24644();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = sub_1ABA8E2E8();
        v18 = sub_1ABA82874();
        *v8 = 136315138;
        v9 = sub_1ABA7D0EC();
        *(v8 + 4) = sub_1ABADD6D8(v9, v10, v11);
        sub_1ABA96138(&dword_1ABA78000, v12, v13, "KTSError: Could not get result for request %s");
        sub_1ABA84B54(v18);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        v14 = sub_1ABA8EBB8();
        MEMORY[0x1AC5AB8B0](v14);
      }

      sub_1ABA8C324();
      sub_1ABF24AB4();

      sub_1ABA83AFC();
      v15 = sub_1ABA7D0EC();
      MEMORY[0x1AC5A9410](v15);
      sub_1ABDBF718();
      v16 = sub_1ABA7BD00();
      *v17 = v18;
      v17[1] = 0;
      sub_1ABA90A68(v16, v17);
    }
  }
}

uint64_t sub_1ABDD8920()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABDD8988()
{
  result = qword_1EB4D9B70;
  if (!qword_1EB4D9B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D9B70);
  }

  return result;
}

id sub_1ABDD89D8(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, Class *a6)
{
  v9 = objc_allocWithZone(*a6);
  sub_1ABA7D0F8();
  v10 = sub_1ABF23BD4();

  v11 = [v9 initWithIdentifier:v10 context:a3 data:a4 metadata:a5];

  swift_unknownObjectRelease();
  return v11;
}

id KTSClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id KTSClient.init()()
{
  v0 = objc_allocWithZone(type metadata accessor for KTSClient());
  v1 = KTSClient.init(throwing:)(1);
  swift_getObjectType();
  sub_1ABAA10E4();
  swift_deallocPartialClassInstance();
  return v1;
}

id KTSClient.init(throwing:)(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for ViewService();
  v6 = static ViewService.clientService.getter(v5);
  v7 = type metadata accessor for KTSInProcessService();
  swift_allocObject();
  v8 = sub_1ABDD3B78(v6);
  if (v2)
  {
    if (a1)
    {
      if (qword_1EB4CE7E8 != -1)
      {
        swift_once();
      }

      v9 = sub_1ABF237F4();
      sub_1ABA7AA24(v9, qword_1EB4CE7F0);
      v10 = sub_1ABF237D4();
      v11 = sub_1ABF24684();
      if (os_log_type_enabled(v10, v11))
      {
        sub_1ABA8179C();
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_1ABA78000, v10, v11, "Some or all KTS tables were not available, please try loading via GDXPCViewService().performUpdate(forViewNames: KTSViewName.allCases).", v12, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      swift_willThrow();
      type metadata accessor for KTSClient();
      sub_1ABAA10E4();
      return swift_deallocPartialClassInstance();
    }

    else
    {
      result = sub_1ABF24CD4();
      __break(1u);
    }
  }

  else
  {
    v16 = v7;
    v17 = &off_1F2084838;
    *&v15 = v8;
    sub_1ABA946C0(&v15, v3 + OBJC_IVAR____TtC20IntelligencePlatform9KTSClient_service);
    v14.receiver = v3;
    v14.super_class = type metadata accessor for KTSClient();
    return objc_msgSendSuper2(&v14, sel_init);
  }

  return result;
}

void sub_1ABDD8EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v72 = v11;
  v71 = v10;
  v14 = v13;
  v69 = sub_1ABF23744();
  v15 = sub_1ABA7BB64(v69);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7AC18();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v26 = sub_1ABF237F4();
  v27 = sub_1ABA7BB64(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  v68 = sub_1ABF23774();
  v35 = sub_1ABA7BB64(v68);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7BC58();
  sub_1ABA8E3FC();
  v67 = type metadata accessor for LogSignpost();
  v40 = sub_1ABA7BBB0(v67);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7BC58();
  v70 = v44 - v43;
  v45 = memcpy(v77, v14, sizeof(v77));
  if (qword_1ED871F20 != -1)
  {
LABEL_21:
    v45 = sub_1ABA7D608();
  }

  sub_1ABA90318(v45, qword_1ED871EF8);
  (*(v29 + 16))(v34);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v46 = sub_1ABF23764();
  v47 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v46, v47, v49, "KTS.Client.request", "", v48, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v50 = v69;
  (*(v17 + 16))(v22, v25, v69);
  v51 = sub_1ABF237B4();
  sub_1ABA806BC(v51);
  sub_1ABA96DF4();
  (*(v17 + 8))(v25, v50);
  v17 = v70;
  sub_1ABAA1890("KTS.Client.request");
  (*(v37 + 32))(v17 + *(v67 + 24), v12, v68);
  v52 = sub_1ABDC33A0();
  v25 = (v71 + OBJC_IVAR____TtC20IntelligencePlatform9KTSClient_service);
  sub_1ABA8EBC8();
  v53 = v72;
  sub_1ABDD3C4C(v52, v54, v55, v56, v57, v58, v59, v60, v67, v68, v69, v70, v71, v72, v73, *(&v73 + 1), v74, v75, v76, v77[0]);
  v37 = v53;
  if (v53)
  {

LABEL_19:
    sub_1ABDDC19C(v17);
    sub_1ABBA4F10(v17);
    sub_1ABA9EFCC();
    sub_1ABA7BC90();
    return;
  }

  v62 = v61;
  v63 = sub_1ABAAB7C8(v61);
  if (!v63)
  {

    goto LABEL_19;
  }

  v22 = v63;
  v68 = v52;
  sub_1ABA90A84(MEMORY[0x1E69E7CC0]);
  sub_1ABADEA4C();
  if ((v22 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v12 = 0;
  v29 = a10;
  v72 = v62 & 0xC000000000000001;
  v69 = v62 & 0xFFFFFFFFFFFFFF8;
  v71 = v22;
  while (1)
  {
    v34 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (!v72)
    {
      break;
    }

    MEMORY[0x1AC5AA170](v12, v62);
LABEL_14:
    sub_1ABA8EBC8();
    v65 = sub_1ABDD3AD0();
    swift_getObjectType();
    sub_1ABDD098C(v65, &v73);
    swift_unknownObjectRelease();

    a10 = v29;
    v22 = *(v29 + 16);
    v66 = *(v29 + 24);
    v17 = v22 + 1;
    if (v22 >= v66 >> 1)
    {
      sub_1ABA8C334(v66);
      sub_1ABADEA4C();
    }

    *(v29 + 16) = v17;
    sub_1ABA946C0(&v73, v29 + 40 * v22 + 32);
    ++v12;
    if (v34 == v71)
    {

      v17 = v70;
      goto LABEL_19;
    }
  }

  if (v12 < *(v69 + 16))
  {
    v64 = *(v62 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    goto LABEL_14;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1ABDD945C()
{
  sub_1ABA7BCA8();
  v83 = v0;
  v84 = v1;
  v5 = v4;
  v6 = sub_1ABF23744();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v82 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1ABA9939C();
  v15 = sub_1ABA7BB64(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7F708();
  v20 = sub_1ABF23774();
  v21 = sub_1ABA7BB64(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v78 = type metadata accessor for LogSignpost();
  v24 = sub_1ABA7BBB0(v78);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v81 = v29 - v28;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    sub_1ABA90318(v27, qword_1ED871EF8);
    (*(v17 + 16))(v2);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v30 = sub_1ABF23764();
    sub_1ABF24714();
    if (sub_1ABF247D4())
    {
      sub_1ABA8179C();
      v31 = swift_slowAlloc();
      v32 = sub_1ABAB5D80(v31);
      sub_1ABA8877C(&dword_1ABA78000, v33, v34, v32, "KTS.Client.requestBatch", "");
      v5 = v6;
      v6 = v9;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    (*(v9 + 16))(v82, v3, v6);
    v35 = sub_1ABF237B4();
    sub_1ABA806BC(v35);
    sub_1ABF237A4();
    v36 = sub_1ABAB53A4();
    v37(v36);
    sub_1ABA97F80("KTS.Client.requestBatch");
    v38 = sub_1ABAA1AA0(v78);
    v39(v38);
    v40 = *(v5 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    if (v40)
    {
      v89 = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      v42 = (v5 + 32);
      for (i = v40 - 1; ; --i)
      {
        memcpy(v88, v42, sizeof(v88));
        v44 = BYTE9(v88[10]);
        memcpy(v86, v42, sizeof(v86));
        sub_1ABDD8AD0(v88, v85);
        sub_1ABDD3560(v88, v85);
        KTSQueryParams.convertToGDKTSQueryParams()(v45);
        v47 = v46;
        memcpy(v87, v86, 0xA9uLL);
        sub_1ABDD35BC(v87);
        v48 = objc_allocWithZone(GDKTSDataRequest);
        if (v44 == 3)
        {
          [v48 initWithParameters_];
        }

        else
        {
          [v48 initWithParameters:v47 cadence:v44 + 1];
        }

        sub_1ABDD8B2C(v88);
        sub_1ABF24B94();
        v49 = *(v89 + 16);
        sub_1ABF24BD4();
        sub_1ABA90200();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        if (!i)
        {
          break;
        }

        v42 += 192;
      }

      v50 = v89;
      v41 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v50 = MEMORY[0x1E69E7CC0];
    }

    v9 = v83 + OBJC_IVAR____TtC20IntelligencePlatform9KTSClient_service;
    sub_1ABA8EBC8();
    sub_1ABDD4444(v50, v51, v52, v53, v54, v55, v56, v57, v73, v74);
    v17 = v84;
    if (v84)
    {
      break;
    }

    v59 = v58;

    v60 = *(v59 + 16);
    if (!v60)
    {
      break;
    }

    v85[0] = v41;
    sub_1ABADEB6C();
    v61 = 0;
    v62 = v85[0];
    v63 = v59 + 32;
    v77 = v60;
    v78 = v59;
    v74 = v59 + 32;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      v5 = *(v63 + 8 * v61);
      if (v5 >> 62)
      {
        break;
      }

      v2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        goto LABEL_19;
      }

LABEL_33:
      v64 = v41;
LABEL_34:
      v85[0] = v62;
      v72 = *(v62 + 16);
      if (v72 >= *(v62 + 24) >> 1)
      {
        v76 = v61;
        sub_1ABADEB6C();
        v63 = v74;
        v61 = v76;
        v62 = v85[0];
      }

      ++v61;
      *(v62 + 16) = v72 + 1;
      *(v62 + 8 * v72 + 32) = v64;
      if (v61 == v77)
      {
        goto LABEL_37;
      }
    }

    v68 = v62;
    if (v5 < 0)
    {
      v69 = *(v63 + 8 * v61);
    }

    v70 = v61;
    v71 = sub_1ABF24CA4();
    v63 = v74;
    v61 = v70;
    v2 = v71;
    v62 = v68;
    if (!v71)
    {
      goto LABEL_33;
    }

LABEL_19:
    v75 = v61;
    v79 = v62;
    v87[0] = v41;

    sub_1ABADEA4C();
    if (v2 < 0)
    {
      goto LABEL_42;
    }

    v3 = 0;
    v64 = v87[0];
    v83 = v5;
    v84 = v5 & 0xC000000000000001;
    v80 = v5 & 0xFFFFFFFFFFFFFF8;
    v82 = v2;
    while (1)
    {
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v84)
      {
        MEMORY[0x1AC5AA170](v3, v5);
      }

      else
      {
        if (v3 >= *(v80 + 16))
        {
          goto LABEL_39;
        }

        v65 = *(v5 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      sub_1ABA8EBC8();
      v66 = sub_1ABDD3AD0();
      swift_getObjectType();
      sub_1ABDD098C(v66, v88);
      swift_unknownObjectRelease();

      v87[0] = v64;
      v67 = *(v64 + 16);
      v2 = v67 + 1;
      if (v67 >= *(v64 + 24) >> 1)
      {
        sub_1ABADEA4C();
        v64 = v87[0];
      }

      *(v64 + 16) = v2;
      sub_1ABA946C0(v88, v64 + 40 * v67 + 32);
      ++v3;
      v5 = v83;
      if (v6 == v82)
      {

        v41 = MEMORY[0x1E69E7CC0];
        v59 = v78;
        v62 = v79;
        v63 = v74;
        v61 = v75;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v27 = sub_1ABA7D608();
  }

LABEL_37:

  sub_1ABDDC19C(v81);
  sub_1ABBA4F10(v81);
  sub_1ABA7BC90();
}

void sub_1ABDD9B74()
{
  sub_1ABA7BCA8();
  v5 = v4;
  v44 = v6;
  v48 = sub_1ABF23744();
  v7 = sub_1ABA7BB64(v48);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v47 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1ABA83850();
  v15 = sub_1ABA7BB64(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  sub_1ABA8E3FC();
  v46 = sub_1ABF23774();
  v20 = sub_1ABA7BB64(v46);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  v45 = type metadata accessor for LogSignpost();
  v25 = sub_1ABA7BBB0(v45);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  v31 = memcpy(v49, v5, sizeof(v49));
  if (qword_1ED871F20 != -1)
  {
    v31 = sub_1ABA7D608();
  }

  sub_1ABA90318(v31, qword_1ED871EF8);
  (*(v17 + 16))(v3);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v32 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v33 = swift_slowAlloc();
    v34 = sub_1ABAA1D58(v33);
    sub_1ABAA3A3C(&dword_1ABA78000, v35, v36, v34, "KTS.Client.request", "");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v9 + 16))(v47, v2, v48);
  v37 = sub_1ABF237B4();
  sub_1ABA806BC(v37);
  sub_1ABA9793C();
  v38 = sub_1ABA97D00();
  v39(v38);
  *v30 = "KTS.Client.request";
  *(v30 + 8) = 18;
  *(v30 + 16) = 2;
  *(v30 + 24) = v32;
  (*(v22 + 32))(v30 + *(v45 + 24), v0, v46);
  v40 = sub_1ABDC33A0();
  sub_1ABA8EBC8();
  sub_1ABDD4C20();
  if (v1)
  {
  }

  else
  {
    v42 = v41;
    sub_1ABA8EBC8();
    v43 = sub_1ABDD3AD0();
    sub_1ABDCE194(v43, v44);
  }

  sub_1ABDDC19C(v30);
  sub_1ABBA4F10(v30);
  sub_1ABA7BC90();
}

void sub_1ABDD9F3C()
{
  sub_1ABA7BCA8();
  v70 = v0;
  v71 = v1;
  v5 = v4;
  v6 = sub_1ABF23744();
  v7 = sub_1ABA7BB64(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v69 = v12;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1ABA9939C();
  v15 = sub_1ABA7BB64(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  sub_1ABAA23EC();
  v20 = sub_1ABF23774();
  v21 = sub_1ABA7BB64(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v67 = type metadata accessor for LogSignpost();
  v24 = sub_1ABA7BBB0(v67);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  v72 = v29 - v28;
  if (qword_1ED871F20 != -1)
  {
LABEL_30:
    v27 = sub_1ABA7D608();
  }

  sub_1ABA90318(v27, qword_1ED871EF8);
  (*(v17 + 16))(v2);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v30 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v31 = swift_slowAlloc();
    v66 = v9;
    v32 = sub_1ABAB5D80(v31);
    sub_1ABA8877C(&dword_1ABA78000, v33, v34, v32, "KTS.Client.requestBatch", "");
    v5 = v6;
    v6 = v9;
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v9 + 16))(v69, v3, v6);
  v35 = sub_1ABF237B4();
  sub_1ABA806BC(v35);
  sub_1ABF237A4();
  v36 = sub_1ABAB53A4();
  v37(v36);
  sub_1ABA97F80("KTS.Client.requestBatch");
  v38 = sub_1ABAA1AA0(v67);
  v39(v38);
  v40 = *(v5 + 16);
  if (v40)
  {
    v77 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v41 = (v5 + 32);
    v42 = v40 - 1;
    v3 = off_1E7960000;
    while (1)
    {
      memcpy(v74, v41, 0xC0uLL);
      v43 = BYTE1(v74[21]);
      memcpy(v75, v41, sizeof(v75));
      sub_1ABDD8AD0(v74, v73);
      sub_1ABDD3560(v74, v73);
      KTSQueryParams.convertToGDKTSQueryParams()(v44);
      v46 = v45;
      memcpy(v76, v75, 0xA9uLL);
      sub_1ABDD35BC(v76);
      v47 = objc_allocWithZone(GDKTSDataRequest);
      if (v43 == 3)
      {
        [v47 initWithParameters_];
      }

      else
      {
        [v47 initWithParameters:v46 cadence:v43 + 1];
      }

      sub_1ABDD8B2C(v74);
      sub_1ABF24B94();
      v48 = *(v77 + 16);
      sub_1ABF24BD4();
      sub_1ABA90200();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!v42)
      {
        break;
      }

      --v42;
      v41 += 192;
    }

    v49 = v77;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v9 = v70 + OBJC_IVAR____TtC20IntelligencePlatform9KTSClient_service;
  sub_1ABA8EBC8();
  sub_1ABDD565C(v49, v50, v51, v52, v53, v54, v55, v56, v65, v66);
  v2 = v71;
  if (v71 || (v5 = v57, , (v58 = sub_1ABAAB7C8(v5)) == 0))
  {
LABEL_27:

    sub_1ABDDC19C(v72);
    sub_1ABBA4F10(v72);
    sub_1ABA7BC90();
    return;
  }

  v17 = v58;
  v76[0] = MEMORY[0x1E69E7CC0];
  sub_1ABADEB0C(0, v58 & ~(v58 >> 63), 0);
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

  v6 = 0;
  v59 = v76[0];
  v70 = v5;
  v71 = v5 & 0xC000000000000001;
  v68 = v5 & 0xFFFFFFFFFFFFFF8;
  v69 = v17;
  while (1)
  {
    if (v6 >= v17)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v3 = (v6 + 1);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_29;
    }

    if (v71)
    {
      v60 = MEMORY[0x1AC5AA170](v6, v5);
      goto LABEL_23;
    }

    if (v6 >= *(v68 + 16))
    {
      break;
    }

    v60 = *(v5 + 8 * v6 + 32);
LABEL_23:
    v61 = v60;
    sub_1ABA8EBC8();
    v62 = sub_1ABDD3AD0();
    sub_1ABDCE194(v62, v74);
    v2 = 0;

    memcpy(v73, v74, sizeof(v73));
    v76[0] = v59;
    v64 = *(v59 + 16);
    v63 = *(v59 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_1ABADEB0C((v63 > 1), v64 + 1, 1);
      v59 = v76[0];
    }

    *(v59 + 16) = v64 + 1;
    memcpy((v59 + 224 * v64 + 32), v73, 0xE0uLL);
    v17 = v69;
    if (v3 == v69)
    {
      goto LABEL_27;
    }

    ++v6;
    v5 = v70;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1ABDDA914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v87 = v10;
  *&v88 = v11;
  v13 = v12;
  v85 = v14;
  v86 = v15;
  v83 = sub_1ABF23744();
  v16 = sub_1ABA7BB64(v83);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1ABA9939C();
  v21 = sub_1ABA7BB64(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7F708();
  v80 = sub_1ABF23774();
  v24 = sub_1ABA7BB64(v80);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v78 = type metadata accessor for LogSignpost();
  v27 = sub_1ABA7BBB0(v78);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v82 = v31 - v30;
  v79 = *v13;
  if (qword_1ED871F20 != -1)
  {
LABEL_30:
    sub_1ABA7D608();
  }

  sub_1ABA7AA24(v20, qword_1ED871EF8);
  v32 = sub_1ABAB5778();
  v33(v32);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v34 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    *swift_slowAlloc() = 0;
    v35 = sub_1ABF23724();
    sub_1ABA90DC8(&dword_1ABA78000, v36, v37, v35, "KTS.Client.ktsSegmentsForStartAndEnd", "");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v38 = sub_1ABAA2A34();
  v39(v38);
  v40 = sub_1ABF237B4();
  sub_1ABA806BC(v40);
  sub_1ABF237A4();
  v41 = sub_1ABA953F0();
  v42(v41);
  v20 = v82;
  sub_1ABAB5588("KTS.Client.ktsSegmentsForStartAndEnd");
  v43 = sub_1ABA82F7C(v78);
  v44(v43);
  v87 = (v87 + OBJC_IVAR____TtC20IntelligencePlatform9KTSClient_service);
  sub_1ABA93E64(v87, v89);
  v45 = sub_1ABA93E20(v89, v90);
  v50 = 0;
  v51 = 0;
  switch(v79)
  {
    case 1:
      break;
    case 2:
      v50 = 0;
      v51 = 3;
      break;
    case 3:
      v50 = 0;
      v51 = 2;
      break;
    case 4:
      v50 = 0;
      v51 = 4;
      break;
    case 5:
      v50 = 0;
      v51 = 5;
      break;
    case 6:
      v50 = 0;
      v51 = 6;
      break;
    case 7:
      v50 = 0;
      v51 = 7;
      break;
    case 8:
      v51 = 0;
      v50 = 1;
      break;
    default:
      v50 = 0;
      v51 = 1;
      break;
  }

  v52 = *v45;
  sub_1ABDD5C7C(v85, v86, v51, v50, v46, v47, v48, v49, v78, v79);
  if (v88)
  {
    sub_1ABA84B54(v89);
LABEL_28:
    sub_1ABDDC19C(v20);
    sub_1ABBA4F10(v20);
    sub_1ABA9EFCC();
    sub_1ABA7BC90();
    return;
  }

  v54 = v53;
  sub_1ABA84B54(v89);
  v55 = sub_1ABAAB7C8(v54);
  if (!v55)
  {

    goto LABEL_28;
  }

  v56 = v55;
  v57 = sub_1ABA90A84(MEMORY[0x1E69E7CC0]);
  sub_1ABADEBAC(v57, v58, v59);
  if (v56 < 0)
  {
    goto LABEL_32;
  }

  v60 = 0;
  v61 = a10;
  v85 = v54;
  v86 = v54 & 0xC000000000000001;
  v81 = v54 & 0xFFFFFFFFFFFFFF8;
  v84 = v56;
  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    *&v88 = v61;
    if (!v86)
    {
      break;
    }

    v63 = MEMORY[0x1AC5AA170](v60, v54);
LABEL_23:
    v64 = v63;
    v65 = *sub_1ABA93E20(v87, v87[3]);
    sub_1ABDD3AD0();
    sub_1ABAB5908();
    sub_1ABDCEA74(v66, v67);

    v68 = v89[0];
    v20 = v89[1];
    v69 = v89[2];
    v70 = v90;
    v61 = v88;
    a10 = v88;
    v72 = *(v88 + 16);
    v71 = *(v88 + 24);
    if (v72 >= v71 >> 1)
    {
      v74 = sub_1ABA8C334(v71);
      v88 = v75;
      sub_1ABADEBAC(v74, v76, v77);
      v70 = v88;
      v61 = a10;
    }

    *(v61 + 16) = v72 + 1;
    v73 = v61 + 40 * v72;
    *(v73 + 32) = v68;
    *(v73 + 40) = v20;
    *(v73 + 48) = v69;
    *(v73 + 56) = v70;
    ++v60;
    v54 = v85;
    if (v62 == v84)
    {

      v20 = v82;
      goto LABEL_28;
    }
  }

  if (v60 < *(v81 + 16))
  {
    v63 = *(v54 + 8 * v60 + 32);
    goto LABEL_23;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1ABDDAE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v75 = v11;
  v71 = v10;
  v13 = v12;
  v69 = sub_1ABF23744();
  v14 = sub_1ABA7BB64(v69);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1ABA9939C();
  v19 = sub_1ABA7BB64(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7F708();
  v68 = sub_1ABF23774();
  v22 = sub_1ABA7BB64(v68);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v66 = type metadata accessor for LogSignpost();
  v25 = sub_1ABA7BBB0(v66);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v72 = v29 - v28;
  v67 = *v13;
  if (qword_1ED871F20 != -1)
  {
LABEL_21:
    sub_1ABA7D608();
  }

  sub_1ABA7AA24(v18, qword_1ED871EF8);
  v30 = sub_1ABAB5778();
  v31(v30);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v32 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    *swift_slowAlloc() = 0;
    v33 = sub_1ABF23724();
    sub_1ABA90DC8(&dword_1ABA78000, v34, v35, v33, "KTS.Client.ktsDataForStartAndEnd", "");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v36 = sub_1ABAA2A34();
  v37(v36);
  v38 = sub_1ABF237B4();
  sub_1ABA806BC(v38);
  sub_1ABF237A4();
  v39 = sub_1ABA953F0();
  v40(v39);
  v18 = v72;
  sub_1ABAB5588("KTS.Client.ktsDataForStartAndEnd");
  v41 = sub_1ABA82F7C(v66);
  v42(v41);
  sub_1ABA93E64(v71 + OBJC_IVAR____TtC20IntelligencePlatform9KTSClient_service, &v76);
  v43 = *sub_1ABA93E20(&v76, v78);
  sub_1ABDD6698();
  if (v75)
  {
    sub_1ABA84B54(&v76);
LABEL_19:
    sub_1ABDDC19C(v18);
    sub_1ABBA4F10(v18);
    sub_1ABA9EFCC();
    sub_1ABA7BC90();
    return;
  }

  v45 = v44;
  sub_1ABA84B54(&v76);
  v46 = sub_1ABAAB7C8(v45);
  if (!v46)
  {

    goto LABEL_19;
  }

  v47 = v46;
  v48 = sub_1ABA90A84(MEMORY[0x1E69E7CC0]);
  sub_1ABADEBCC(v48, v49, v50);
  if (v47 < 0)
  {
    goto LABEL_23;
  }

  v51 = 0;
  v52 = a10;
  v74 = v45;
  v75 = v45 & 0xC000000000000001;
  v71 = v45 & 0xFFFFFFFFFFFFFF8;
  v73 = v47;
  while (1)
  {
    v53 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (!v75)
    {
      break;
    }

    v54 = MEMORY[0x1AC5AA170](v51, v45);
LABEL_14:
    v55 = v54;
    sub_1ABA8EBC8();
    sub_1ABDD3AD0();
    sub_1ABAB5908();
    sub_1ABDCE4E0(v56, v57);

    v58 = v76;
    v59 = v77;
    a10 = v52;
    v18 = *(v52 + 16);
    v60 = *(v52 + 24);
    if (v18 >= v60 >> 1)
    {
      v62 = sub_1ABA8C334(v60);
      v70 = v63;
      sub_1ABADEBCC(v62, v64, v65);
      v59 = v70;
    }

    *(v52 + 16) = v18 + 1;
    v61 = v52 + 24 * v18;
    *(v61 + 32) = v58;
    *(v61 + 40) = v59;
    ++v51;
    v45 = v74;
    if (v53 == v73)
    {

      v18 = v72;
      goto LABEL_19;
    }
  }

  if (v51 < *(v71 + 16))
  {
    v54 = *(v45 + 8 * v51 + 32);
    goto LABEL_14;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1ABDDB728()
{
  sub_1ABA7BCA8();
  v3 = sub_1ABA82908(v1, v2);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1ABAABD54();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = sub_1ABF23774();
  v18 = sub_1ABA7BB64(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  sub_1ABAA23EC();
  v44 = type metadata accessor for LogSignpost();
  v21 = sub_1ABA7BBB0(v44);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  if (qword_1ED871F20 != -1)
  {
    v24 = sub_1ABA7D608();
  }

  sub_1ABA90318(v24, qword_1ED871EF8);
  (*(v11 + 16))(v16);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v25 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v26 = swift_slowAlloc();
    v27 = sub_1ABA96AE8(v26);
    sub_1ABA95580(&dword_1ABA78000, v28, v29, v27, "KTS.Client.fetchKTSSegmentForId", "");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v30 = sub_1ABAA323C();
  v31(v30);
  v32 = sub_1ABF237B4();
  sub_1ABA806BC(v32);
  sub_1ABA96DF4();
  v33 = sub_1ABAA0FB0();
  v34(v33);
  sub_1ABA83B14("KTS.Client.fetchKTSSegmentForId");
  v35 = sub_1ABAA3640();
  v36(v35);
  sub_1ABA94C54();
  sub_1ABA8B114();
  sub_1ABDD7608();
  if (!v45)
  {
    v38 = v37;
    if (v37)
    {
      sub_1ABA94C54();
      sub_1ABDD3AD0();
      sub_1ABA88A3C();
      sub_1ABDCEA74(v42, v43);

      goto LABEL_7;
    }

    sub_1ABA8430C();
    sub_1ABF24AB4();
    sub_1ABAB5190();
    v39 = sub_1ABA8B114();
    MEMORY[0x1AC5A9410](v39);
    sub_1ABDBF718();
    v40 = sub_1ABA7BD00();
    sub_1ABA81AD0(v40, v41);
  }

  swift_willThrow();
LABEL_7:
  sub_1ABDDC19C(v0);
  sub_1ABBA4F10(v0);
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void sub_1ABDDBE20()
{
  sub_1ABA7BCA8();
  v3 = sub_1ABA82908(v1, v2);
  v4 = sub_1ABA7BB64(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1ABAABD54();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = sub_1ABF23774();
  v18 = sub_1ABA7BB64(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  sub_1ABAA23EC();
  v44 = type metadata accessor for LogSignpost();
  v21 = sub_1ABA7BBB0(v44);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7BC58();
  sub_1ABAA26DC();
  if (qword_1ED871F20 != -1)
  {
    v24 = sub_1ABA7D608();
  }

  sub_1ABA90318(v24, qword_1ED871EF8);
  (*(v11 + 16))(v16);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v25 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v26 = swift_slowAlloc();
    v27 = sub_1ABA96AE8(v26);
    sub_1ABA95580(&dword_1ABA78000, v28, v29, v27, "KTS.Client.fetchKTSSegmentForId", "");
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v30 = sub_1ABAA323C();
  v31(v30);
  v32 = sub_1ABF237B4();
  sub_1ABA806BC(v32);
  sub_1ABA96DF4();
  v33 = sub_1ABAA0FB0();
  v34(v33);
  sub_1ABA83B14("KTS.Client.fetchKTSSegmentForId");
  v35 = sub_1ABAA3640();
  v36(v35);
  sub_1ABA94C54();
  sub_1ABA8B114();
  sub_1ABDD8144();
  if (!v45)
  {
    v38 = v37;
    if (v37)
    {
      sub_1ABA94C54();
      sub_1ABDD3AD0();
      sub_1ABA88A3C();
      sub_1ABDCE4E0(v42, v43);

      goto LABEL_7;
    }

    sub_1ABA8430C();
    sub_1ABF24AB4();
    sub_1ABAB5190();
    v39 = sub_1ABA8B114();
    MEMORY[0x1AC5A9410](v39);
    sub_1ABDBF718();
    v40 = sub_1ABA7BD00();
    sub_1ABA81AD0(v40, v41);
  }

  swift_willThrow();
LABEL_7:
  sub_1ABDDC19C(v0);
  sub_1ABBA4F10(v0);
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

uint64_t sub_1ABDDC19C(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v3 = sub_1ABA7BB64(v2);
  v33 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v7 = sub_1ABF23744();
  v8 = sub_1ABA7BB64(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  v16 = type metadata accessor for LogSignpost();
  v17 = *a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = a1 + *(v16 + 24);
  v21 = sub_1ABF23764();
  sub_1ABF23794();
  v32 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v15, v7);
  }

  if ((v18 & 1) == 0)
  {
    if (v17)
    {
LABEL_9:

      sub_1ABF237C4();

      v23 = *(v33 + 88);
      v24 = sub_1ABA90200();
      if (v25(v24) == *MEMORY[0x1E69E93E8])
      {
        v26 = "[Error] Interval already ended";
      }

      else
      {
        v27 = *(v33 + 8);
        v28 = sub_1ABA90200();
        v29(v28);
        v26 = "";
      }

      sub_1ABA8179C();
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v21, v32, v31, v17, v26, v30, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v17 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v17 & 0xFFFFF800) != 0xD800)
  {
    if (v17 >> 16 <= 0x10)
    {
      v17 = &v34;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id KTSClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for KTSClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of KTSClient.request(_:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 96))();
}

uint64_t dispatch thunk of KTSClient.requestBatch(_:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 104))();
}

uint64_t dispatch thunk of KTSClient.sliceData(request:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABAA2DC8();
  return (*(v3 + 112))();
}

uint64_t dispatch thunk of KTSClient.sliceData(requestBatch:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 120))();
}

uint64_t dispatch thunk of KTSClient.fetchMostRecent(cadence:offset:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABAA2DC8();
  return (*(v3 + 128))();
}

uint64_t dispatch thunk of KTSClient.fetchAllKTSSegmentData(from:to:inclusionType:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 136))();
}

uint64_t dispatch thunk of KTSClient.fetchAllKTSData(from:to:inclusionType:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABA7ABF0();
  return (*(v3 + 144))();
}

uint64_t dispatch thunk of KTSClient.ktsSegmentForSegmentId(segmentId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABAA2DC8();
  return (*(v3 + 152))();
}

uint64_t dispatch thunk of KTSClient.ktsSegmentForSourceId(sourceId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABAA2DC8();
  return (*(v3 + 160))();
}

uint64_t dispatch thunk of KTSClient.tripForSegmentId(segmentId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABAA2DC8();
  return (*(v3 + 168))();
}

uint64_t dispatch thunk of KTSClient.tripForSourceId(sourceId:)()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  sub_1ABAA2DC8();
  return (*(v3 + 176))();
}

uint64_t sub_1ABDDC774@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 112) = v1;
  *(v3 - 104) = v2;
  *(v3 - 160) = a1;

  return sub_1ABF23744();
}

uint64_t KTSDatabaseEngine.init(db:table:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[2] = result;
  a5[3] = a2;
  *a5 = a3;
  a5[1] = a4;
  return result;
}

uint64_t KTSDatabaseEngine.executeQuery(params:entities:)(void *__src, uint64_t a2, void *a3)
{
  v5 = v4;
  memcpy(v34, __src, 0xA9uLL);
  v8 = v3[1];
  v9 = v3[2];
  v30 = *v3;
  v31 = v3[3];
  v10 = a3[2];
  v35 = sub_1ABF24154();
  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABF237F4();
  sub_1ABA7AA24(v11, qword_1EB4CE7F0);

  sub_1ABDD3560(v34, v33);

  swift_unknownObjectRetain();
  v12 = sub_1ABF237D4();
  v13 = sub_1ABF24644();
  swift_unknownObjectRelease();

  sub_1ABDD35BC(v34);

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 136315138;
    v32 = v15;
    memcpy(v33, v34, 0xA9uLL);
    sub_1ABDDCBF0(v33, a2);
    if (v4)
    {

      v16 = 0;
      v17 = 0;
    }

    v33[0] = v16;
    v33[1] = v17;
    sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
    v18 = sub_1ABF23C74();
    v20 = sub_1ABADD6D8(v18, v19, &v32);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1ABA78000, v12, v13, "Executing params SQL: %s", v14, 0xCu);
    sub_1ABA84B54(v15);
    MEMORY[0x1AC5AB8B0](v15, -1, -1);
    MEMORY[0x1AC5AB8B0](v14, -1, -1);

    v5 = 0;
  }

  else
  {
  }

  ObjectType = swift_getObjectType();
  MEMORY[0x1EEE9AC00](ObjectType);
  v28 = a3[3];
  v29 = a3[4];
  v22 = v9;
  v23 = sub_1ABF22464();
  if (v5)
  {
  }

  else
  {
    v24 = v35;
    if ((v34[152] & 1) == 0)
    {
      v33[0] = v35;
      MEMORY[0x1EEE9AC00](v23);
      sub_1ABA7F724();

      sub_1ABA8F878();
      v25 = sub_1ABA80F7C();

      v35 = v25;
      v24 = v25;
    }

    if ((v34[168] & 1) == 0)
    {
      v33[0] = v24;
      MEMORY[0x1EEE9AC00](v23);
      sub_1ABA7F724();

      sub_1ABA8F878();
      v27 = sub_1ABA80F7C();

      v35 = v27;
    }

    sub_1ABAD219C(&qword_1EB4D14A8, &qword_1ABF33630);
    v22 = sub_1ABF24C44();
  }

  return v22;
}

void sub_1ABDDCBF0(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0xA9uLL);
  v5 = *v2;
  v6 = v2[1];
  v7 = sub_1ABDE24A4(a2);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1ABF24AB4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x80000001ABF90EF0;
  MEMORY[0x1AC5A9410](v5, v6);
  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  v8 = 0;
  v41 = *(v7 + 16);
  v43 = v7;
  v9 = v7 + 56;
  v40 = MEMORY[0x1E69E7CC0];
  v39 = v7 + 56;
LABEL_2:
  v10 = (v9 + 32 * v8);
  while (v41 != v8)
  {
    if (v8 >= *(v43 + 16))
    {
      __break(1u);
      return;
    }

    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    __dst[0] = *(v10 - 3);
    __dst[1] = v11;
    __dst[2] = v12;
    LOWORD(__dst[3]) = v13;
    v14 = sub_1ABA7DD38();
    sub_1ABDDDB84(v14, v15, v16, v17);
    v18 = sub_1ABDE280C();
    if (v3)
    {

      v35 = sub_1ABA7DD38();
      sub_1ABDDDB98(v35, v36, v37, v38);

      return;
    }

    v20 = v18;
    v21 = v19;
    v10 += 16;
    ++v8;
    v22 = sub_1ABA7DD38();
    sub_1ABDDDB98(v22, v23, v24, v25);
    if (v21)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v26 = v40;
      }

      else
      {
        v29 = *(v40 + 16);
        sub_1ABAAA4F4();
        v26 = v30;
      }

      v27 = *(v26 + 16);
      if (v27 >= *(v26 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v26 = v31;
      }

      *(v26 + 16) = v27 + 1;
      v40 = v26;
      v28 = v26 + 16 * v27;
      *(v28 + 32) = v20;
      *(v28 + 40) = v21;
      v9 = v39;
      goto LABEL_2;
    }
  }

  if (*(v40 + 16))
  {
    __dst[0] = v40;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v32 = sub_1ABF23B54();
    v34 = v33;

    __dst[0] = 0x20455245485720;
    __dst[1] = 0xE700000000000000;
    MEMORY[0x1AC5A9410](v32, v34);

    MEMORY[0x1AC5A9410](__dst[0], __dst[1]);
  }
}

void sub_1ABDDCEB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27 = a2;
  v31 = a1;
  v17 = sub_1ABF22854();
  v26 = *(v17 - 8);
  v18 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = a3;
  *(&v28 + 1) = a4;
  *&v29 = a5;
  *(&v29 + 1) = a6;
  sub_1ABDDCBF0(a7, a8);
  if (!v10)
  {
    v22 = v26;
    v21 = v27;
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v23 = *(a10 + 8);
    sub_1ABF22844();
    v24 = sub_1ABF22564();

    (*(v22 + 8))(v20, v17);
    sub_1ABDDDB1C(&v28);
    v25 = *v21;
    *v21 = v24;
  }
}

uint64_t sub_1ABDDD074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 88))(v18, a3, a5);
  if (!v5)
  {
    v7 = v19;
    v8 = v20;
    sub_1ABA93E20(v18, v19);
    v9 = (*(v8 + 48))(v7, v8);
    v11 = v9;
    v12 = *(v9 + 16);
    if (v12)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1ABADDFFC(0, v12, 0);
      v13 = v21;
      v14 = *(v21 + 16);
      v15 = 32;
      do
      {
        v16 = *(v11 + v15);
        v21 = v13;
        v17 = *(v13 + 24);
        if (v14 >= v17 >> 1)
        {
          sub_1ABADDFFC((v17 > 1), v14 + 1, 1);
          v13 = v21;
        }

        *(v13 + 16) = v14 + 1;
        *(v13 + 8 * v14 + 32) = v16;
        v15 += 400;
        ++v14;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABA84B54(v18);
    LOBYTE(a2) = sub_1ABD51FB4(a2, v13);
  }

  return a2 & 1;
}

uint64_t sub_1ABDDD204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 88))(v18, a3, a5);
  if (!v5)
  {
    v7 = v19;
    v8 = v20;
    sub_1ABA93E20(v18, v19);
    v9 = (*(v8 + 96))(v7, v8);
    v11 = v9;
    v12 = *(v9 + 16);
    if (v12)
    {
      v21 = MEMORY[0x1E69E7CC0];
      sub_1ABADDFFC(0, v12, 0);
      v13 = v21;
      v14 = *(v21 + 16);
      v15 = 32;
      do
      {
        v16 = *(v11 + v15);
        v21 = v13;
        v17 = *(v13 + 24);
        if (v14 >= v17 >> 1)
        {
          sub_1ABADDFFC((v17 > 1), v14 + 1, 1);
          v13 = v21;
        }

        *(v13 + 16) = v14 + 1;
        *(v13 + 8 * v14 + 32) = v16;
        v15 += 400;
        ++v14;
        --v12;
      }

      while (v12);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    sub_1ABA84B54(v18);
    LOBYTE(a2) = sub_1ABD51FB4(a2, v13);
  }

  return a2 & 1;
}

uint64_t KTSDatabaseEngine.fetchRecent(offset:)(uint64_t a1, uint64_t a2)
{
  if (a1 <= 0)
  {
    v7 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v9 = v2[1];
    ObjectType = swift_getObjectType();
    v14 = &v12;
    MEMORY[0x1EEE9AC00](ObjectType);
    v10 = *(a2 + 16);
    v11 = *(a2 + 32);
    sub_1ABAD219C(qword_1EB4D9CF8, &qword_1ABF62570);
    return sub_1ABF22464();
  }

  else
  {
    sub_1ABDBF718();
    swift_allocError();
    *v3 = 0xD0000000000000D1;
    *(v3 + 8) = 0x80000001ABF90DE0;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABDDD4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v48 = a1;
  v52 = a6;
  v47 = a4;
  v50 = sub_1ABF22854();
  v46 = *(v50 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1ABF247E4();
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v51 = &v41 - v19;
  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v45 = a5;
  v20 = sub_1ABF237F4();
  sub_1ABA7AA24(v20, qword_1EB4CE7F0);

  swift_unknownObjectRetain();
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24644();
  swift_unknownObjectRelease();

  v23 = os_log_type_enabled(v21, v22);
  v44 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = a7;
    v26 = swift_slowAlloc();
    *&v53[0] = v26;
    *v24 = 136315394;
    *(v24 + 4) = sub_1ABADD6D8(a2, a3, v53);
    *(v24 + 12) = 2048;
    v27 = v47;
    *(v24 + 14) = v47;
    _os_log_impl(&dword_1ABA78000, v21, v22, "Fetching from %s: offset %ld", v24, 0x16u);
    sub_1ABA84B54(v26);
    v28 = v26;
    a7 = v25;
    MEMORY[0x1AC5AB8B0](v28, -1, -1);
    MEMORY[0x1AC5AB8B0](v24, -1, -1);

    v29 = v52;
  }

  else
  {

    v29 = v52;
    v27 = v47;
  }

  *&v53[0] = 0;
  *(&v53[0] + 1) = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x2A205443454C4553, 0xEE00204D4F524620);
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF90EC0);
  v55 = v27;
  v30 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v30);

  v54 = 0;
  memset(v53, 0, sizeof(v53));
  v31 = *(v29 + 8);
  sub_1ABF22844();
  v32 = v51;
  v33 = v49;
  v34 = v45;
  sub_1ABF22574();
  if (v33)
  {

    (*(v46 + 8))(v14, v50);
    return sub_1ABDDDB1C(v53);
  }

  (*(v46 + 8))(v14, v50);
  sub_1ABDDDB1C(v53);
  if (sub_1ABA7E1E0(v32, 1, v34) == 1)
  {
    result = (*(v43 + 8))(v32, v44);
LABEL_12:
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
    return result;
  }

  v37 = v42;
  v36 = v43;
  v38 = v44;
  (*(v43 + 16))(v42, v32, v44);
  if (sub_1ABA7E1E0(v37, 1, v34) == 1)
  {
    v39 = *(v36 + 8);
    v39(v32, v38);
    result = (v39)(v37, v38);
    goto LABEL_12;
  }

  *(a7 + 24) = v34;
  *(a7 + 32) = v29;
  *(a7 + 40) = a8;
  v40 = sub_1ABA93DC0(a7);
  (*(*(v34 - 8) + 32))(v40, v37, v34);
  return (*(v36 + 8))(v32, v38);
}

uint64_t sub_1ABDDDA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[7];
  v4 = v2[8];
  return sub_1ABDDD4EC(a1, v2[5], v2[6], v2[9], v2[2], v2[3], a2, v2[4]);
}

uint64_t sub_1ABDDDAC8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABDDDB1C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&unk_1EB4D38A0, &qword_1ABF3A8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABDDDB84(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0xE000) == 0xA000)
  {
  }

  return result;
}

uint64_t sub_1ABDDDB98(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0xE000) == 0xA000)
  {
  }

  return result;
}

IntelligencePlatform::KTSViewName_optional __swiftcall KTSViewName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KTSViewName.rawValue.getter()
{
  result = 0x656D67655373746BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABDDDCA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1ABAD18F0();
}

unint64_t sub_1ABDDDCB8()
{
  result = qword_1EB4D9D80;
  if (!qword_1EB4D9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9D80);
  }

  return result;
}

unint64_t sub_1ABDDDD30@<X0>(unint64_t *a1@<X8>)
{
  result = KTSViewName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABDDDD5C()
{
  result = qword_1EB4D9D88;
  if (!qword_1EB4D9D88)
  {
    sub_1ABAE2850(&qword_1EB4D9D90, &qword_1ABF626C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9D88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSViewName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1ABDDDEAC()
{
  sub_1ABA90334();
  v29[1] = *MEMORY[0x1E69E9840];
  sub_1ABA99644();
  sub_1ABA8C34C();
  v3 = *(v0 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v4 = sub_1ABF23BD4();
  v29[0] = 0;
  v5 = [v3 requestAssertionForViewName:v4 error:v29];

  v6 = v29[0];
  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v7[5];
    v8 = v7[6];
    sub_1ABA93E20(v7 + 2, v9);
    v10 = *(v8 + 8);
    v11 = v6;
    v12 = v10(v5, v9, v8);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = v12;
      v16 = v13;
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA7DD18();
      }

      v17 = sub_1ABF237F4();
      sub_1ABA7AA24(v17, qword_1EB4CE7F0);
      v18 = sub_1ABF237D4();
      v19 = sub_1ABF24644();
      v20 = v2;
      if (os_log_type_enabled(v18, v19))
      {
        v21 = v16;
        v22 = sub_1ABA8E2E8();
        v23 = swift_slowAlloc();
        v29[0] = v23;
        *v22 = 136315138;
        sub_1ABA8C34C();
        sub_1ABA99644();
        *(v22 + 4) = sub_1ABADD6D8(v24, v25, v26);
        _os_log_impl(&dword_1ABA78000, v18, v19, "Got assertion for %s.", v22, 0xCu);
        sub_1ABA84B54(v23);
        sub_1ABA937B8();
        v27 = v22;
        v16 = v21;
        MEMORY[0x1AC5AB8B0](v27, -1, -1);
      }

      sub_1ABDEAD7C(v5, v15, v16, v20);
    }
  }

  else
  {
    v14 = v29[0];
    sub_1ABF21BE4();

    swift_willThrow();
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t KTSIndexManager.__allocating_init(viewService:)(void *a1)
{
  v2 = swift_allocObject();
  KTSIndexManager.init(viewService:)(a1);
  return v2;
}

void sub_1ABDDE668(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 3)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[8];
    sub_1ABDE0FD4(a2);
  }

  else
  {
    v8 = v2[9];
    if (!*(v8 + 16) || (v9 = *a1, v10 = sub_1ABAF8A44(), (v11 & 1) == 0))
    {
      v28 = 0u;
      v29 = 0u;
      v27 = 0u;
      goto LABEL_9;
    }

    v12 = (*(v8 + 56) + 40 * v10);
    v14 = v12[1];
    v13 = v12[2];
    v15 = v12[3];
    v16 = v12[4];

    swift_unknownObjectRetain();
    sub_1ABDE0FD4(a2);
    swift_unknownObjectRelease();
  }

  if (*(&v28 + 1))
  {
    sub_1ABDE4244(&v27, &v30);
    v17 = v32;
    v18 = v33;
    v19 = sub_1ABA93E20(&v30, v32);
    KTSRecordProtocol.toData()(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, SWORD2(v26), SBYTE6(v26), HIBYTE(v26), v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32);
    sub_1ABA84B54(&v30);
    return;
  }

LABEL_9:
  sub_1ABA925A4(&v27, qword_1EB4D9CF8, &qword_1ABF62570);
  sub_1ABA9923C();
}

void KTSIndexManager.ktsSegmentForSegmentId(segmentId:)(uint64_t *a1)
{
  v3 = v1[8];
  sub_1ABDE1D54(*a1, v1[5], v1[6], v1[7], &v29);
  if (!v2)
  {
    if (v30)
    {
      sub_1ABDE4244(&v29, v31);
      v34 = 0;
      v4 = v32;
      v5 = v33;
      v6 = sub_1ABA93E20(v31, v32);
      v28[3] = v4;
      v28[4] = v5;
      v7 = sub_1ABA93DC0(v28);
      v8 = (*(*(v4 - 8) + 16))(v7, v6, v4);
      sub_1ABAA4AF4(v8);
      sub_1ABA84B54(v28);
      if (v30)
      {
        sub_1ABAD219C(&qword_1EB4D1530, &qword_1ABF336C0);
        v9 = swift_dynamicCast();
        if (v9)
        {
          sub_1ABA83B44(v9, v10, v11, v12, v13, v14, v27, v28[0], v28[1], v28[2]);
          return;
        }
      }

      else
      {
        sub_1ABA925A4(&v29, &qword_1EB4D9BF8, &qword_1ABF62500);
      }

      sub_1ABA84B54(v31);
    }

    else
    {
      sub_1ABA925A4(&v29, qword_1EB4D9CF8, &qword_1ABF62570);
    }

    sub_1ABA88E10();
    v15 = sub_1ABA7BD00();
    sub_1ABA8C360(v15, v16);
  }

  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA8F864();
    swift_once();
  }

  v17 = sub_1ABF237F4();
  sub_1ABA7AA24(v17, qword_1EB4CE7F0);
  v18 = v2;
  v19 = sub_1ABF237D4();
  v20 = sub_1ABF24664();

  if (os_log_type_enabled(v19, v20))
  {
    sub_1ABA8C938();
    v21 = swift_slowAlloc();
    sub_1ABAA61A8();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v2;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    sub_1ABAA501C(&dword_1ABA78000, v25, v26, "KTSIndexManager error: %@.");
    sub_1ABA925A4(v22, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  else
  {
  }

  sub_1ABA9923C();
}

void KTSIndexManager.ktsSegmentForSourceId(sourceId:)(uint64_t a1, uint64_t a2)
{
  v4 = v2[7];
  v5 = v2[8];
  sub_1ABDE1FB4(a1, a2, v2[5], v2[6], &v31);
  if (!v3)
  {
    if (v32)
    {
      sub_1ABDE4244(&v31, v33);
      v36 = 0;
      v6 = v34;
      v7 = v35;
      v8 = sub_1ABA93E20(v33, v34);
      v30[3] = v6;
      v30[4] = v7;
      v9 = sub_1ABA93DC0(v30);
      v10 = (*(*(v6 - 8) + 16))(v9, v8, v6);
      sub_1ABAA4AF4(v10);
      sub_1ABA84B54(v30);
      if (v32)
      {
        sub_1ABAD219C(&qword_1EB4D1530, &qword_1ABF336C0);
        v11 = swift_dynamicCast();
        if (v11)
        {
          sub_1ABA83B44(v11, v12, v13, v14, v15, v16, v29, v30[0], v30[1], v30[2]);
          return;
        }
      }

      else
      {
        sub_1ABA925A4(&v31, &qword_1EB4D9BF8, &qword_1ABF62500);
      }

      sub_1ABA84B54(v33);
    }

    else
    {
      sub_1ABA925A4(&v31, qword_1EB4D9CF8, &qword_1ABF62570);
    }

    sub_1ABA88E10();
    v17 = sub_1ABA7BD00();
    sub_1ABA8C360(v17, v18);
  }

  if (qword_1EB4CE7E8 != -1)
  {
    sub_1ABA8F864();
    swift_once();
  }

  v19 = sub_1ABF237F4();
  sub_1ABA7AA24(v19, qword_1EB4CE7F0);
  v20 = v3;
  v21 = sub_1ABF237D4();
  v22 = sub_1ABF24664();

  if (os_log_type_enabled(v21, v22))
  {
    sub_1ABA8C938();
    v23 = swift_slowAlloc();
    sub_1ABAA61A8();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v3;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    sub_1ABAA501C(&dword_1ABA78000, v27, v28, "KTSIndexManager error: %@.");
    sub_1ABA925A4(v24, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  else
  {
  }

  sub_1ABA9923C();
}

uint64_t KTSIndexManager.tripForSegmentId(segmentId:)()
{
  sub_1ABA88E10();
  v0 = sub_1ABA7BD00();
  return sub_1ABA90340(v0, v1);
}

uint64_t KTSIndexManager.tripForSourceId(sourceId:)()
{
  sub_1ABA88E10();
  v0 = sub_1ABA7BD00();
  return sub_1ABA90340(v0, v1);
}

uint64_t *sub_1ABDDEF94(uint64_t *__src)
{
  v3 = v2;
  memcpy(__dst, __src, 0xA9uLL);
  LODWORD(v5) = *(__src + 169);
  sub_1ABAD219C(&qword_1EB4D9DF0, &qword_1ABF627D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34060;
  *(inited + 40) = *(__src + 152);
  v7 = __src[18];
  *(inited + 32) = v7;
  *(inited + 48) = __src[20];
  *(inited + 56) = *(__src + 168);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  if (*(inited + 40))
  {
    goto LABEL_4;
  }

  sub_1ABAD89C8();
  v9 = v10;
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    goto LABEL_51;
  }

  while (1)
  {
    *(v9 + 16) = v13;
    *(v9 + 8 * v12 + 32) = v7;
LABEL_4:
    v14 = *(inited + 48);
    v15 = *(inited + 56);

    if ((v15 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = *(v9 + 16);
        sub_1ABA7BEF0();
        sub_1ABAD89C8();
        v9 = v73;
      }

      v17 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1ABA7BBEC(v16);
        sub_1ABAD89C8();
        v9 = v74;
      }

      *(v9 + 16) = v17 + 1;
      *(v9 + 8 * v17 + 32) = v14;
    }

    if (v5 != 3)
    {
      break;
    }

    v18 = sub_1ABDE025C(__dst, v9, v1[5], v1[6], v1[7], v1[8]);
    LODWORD(v5) = v3;
    if (v3)
    {
      goto LABEL_24;
    }

    inited = v18;

    if (!inited)
    {
      goto LABEL_39;
    }

    v13 = *(inited + 16);
    if (!v13)
    {

LABEL_39:
      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA8F864();
        swift_once();
      }

      v64 = sub_1ABF237F4();
      sub_1ABA7AA24(v64, qword_1EB4CE7F0);
      v65 = sub_1ABF237D4();
      v66 = sub_1ABF24664();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1ABA78000, v65, v66, "KTSIndexManager trip index did not return result for query", v67, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

LABEL_49:

      return MEMORY[0x1E69E7CC0];
    }

    v90 = v8;
    v1 = &v90;
    sub_1ABADEA4C();
    v12 = 0;
    v3 = v90;
    v7 = inited + 32;
    while (1)
    {
      v11 = *(inited + 16);
      if (v12 >= v11)
      {
        break;
      }

      sub_1ABB2D510(v7, &v82);
      v19 = v85;
      v20 = v87;
      v21 = sub_1ABA93E20(&v82, v85);
      v22 = v19;
      v1 = v21;
      KTSRecordProtocol.toData()(v22, v20, v21, v23, v24, v25, v26, v27, v75, v76, SWORD2(v76), SBYTE6(v76), HIBYTE(v76), v78, v80, v82, v83, v84, v85, v86, v87, *&v88[0], *(&v88[0] + 1));
      sub_1ABA84B54(&v82);
      v90 = v3;
      v8 = v3[2];
      v28 = v3[3];
      if (v8 >= v28 >> 1)
      {
        sub_1ABA7BBEC(v28);
        v1 = &v90;
        sub_1ABADEA4C();
        v3 = v90;
      }

      ++v12;
      v3[2] = v8 + 1;
      sub_1ABA946C0(v88, &v3[5 * v8 + 4]);
      v7 += 48;
      if (v13 == v12)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_51:
    sub_1ABA7BBEC(v11);
    sub_1ABAD89C8();
    v9 = v71;
  }

  v29 = v1[9];
  if (*(v29 + 16))
  {
    v30 = sub_1ABAF8A44();
    if (v31)
    {
      v32 = (*(v29 + 56) + 40 * v30);
      v33 = *v32;
      v5 = v32[1];
      v34 = v32[2];
      v35 = v32[3];
      v36 = v32[4];
      swift_unknownObjectRetain();
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      v37 = sub_1ABDDFCDC(__dst, v9, v5, v34, v35, v36);
      LOBYTE(v5) = v3;
      if (v3)
      {
        swift_unknownObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease();
LABEL_24:

        return v3;
      }

      v50 = v37;
      v81 = v35;
      swift_unknownObjectRelease();

      if (v50)
      {
        v51 = v50[2];
        if (v51)
        {
          v77 = v34;
          v79 = v33;
          v90 = v8;
          sub_1ABADEA4C();
          v52 = 0;
          v3 = v90;
          v53 = (v50 + 4);
          while (v52 < v50[2])
          {
            sub_1ABB2D510(v53, &v82);
            v54 = v85;
            v55 = v87;
            v56 = sub_1ABA93E20(&v82, v85);
            KTSRecordProtocol.toData()(v54, v55, v56, v57, v58, v59, v60, v61, v75, v77, SWORD2(v77), SBYTE6(v77), HIBYTE(v77), v79, v81, v82, v83, v84, v85, v86, v87, *&v88[0], *(&v88[0] + 1));
            sub_1ABA84B54(&v82);
            v90 = v3;
            v63 = v3[2];
            v62 = v3[3];
            if (v63 >= v62 >> 1)
            {
              sub_1ABA7BBEC(v62);
              sub_1ABADEA4C();
              v3 = v90;
            }

            ++v52;
            v3[2] = v63 + 1;
            sub_1ABA946C0(v88, &v3[5 * v63 + 4]);
            v53 += 48;
            if (v51 == v52)
            {
              swift_unknownObjectRelease();

              swift_unknownObjectRelease();
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_53;
        }
      }

      if (qword_1EB4CE7E8 != -1)
      {
        sub_1ABA8F864();
        swift_once();
      }

      v68 = sub_1ABF237F4();
      sub_1ABA7AA24(v68, qword_1EB4CE7F0);
      v65 = sub_1ABF237D4();
      v69 = sub_1ABF24664();
      if (os_log_type_enabled(v65, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1ABA78000, v65, v69, "KTSIndexManager Cadence tables did not return result for query", v70, 2u);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_49;
    }
  }

  if (qword_1EB4CE7E8 != -1)
  {
LABEL_53:
    sub_1ABA8F864();
    swift_once();
  }

  v38 = sub_1ABF237F4();
  sub_1ABA7AA24(v38, qword_1EB4CE7F0);
  v39 = sub_1ABF237D4();
  v40 = sub_1ABF24664();
  if (os_log_type_enabled(v39, v40))
  {
    sub_1ABA8C938();
    v41 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v82 = v3;
    *v41 = 136315138;
    LOBYTE(v88[0]) = v5;
    v42 = sub_1ABF23C74();
    v44 = sub_1ABADD6D8(v42, v43, &v82);

    *(v41 + 4) = v44;
    _os_log_impl(&dword_1ABA78000, v39, v40, "KTSIndexManager error: can't find a table for Cadence: %s", v41, 0xCu);
    sub_1ABA84B54(v3);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA8E40C();
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000037, 0x80000001ABF91120);
  LOBYTE(v88[0]) = v5;
  v45 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v45);

  v46 = v82;
  v47 = v83;
  sub_1ABDBF718();
  sub_1ABA7BD00();
  *v48 = v46;
  *(v48 + 8) = v47;
  *(v48 + 16) = 4;
  swift_willThrow();
  return v3;
}

uint64_t sub_1ABDDF770(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_1ABF21EB4();
  v9 = sub_1ABA7BB64(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  if (*a3 == 8)
  {
    v23 = 1;
  }

  else
  {
    v23 = *a3;
  }

  sub_1ABAE6A34(a1, &v55 - v21);
  if (sub_1ABA7E1E0(v22, 1, v8) == 1)
  {
    sub_1ABA925A4(v22, &qword_1EB4D9BF0, &qword_1ABF34240);
    v24 = 0;
  }

  else
  {
    sub_1ABF21E14();
    v24 = v25;
    (*(v11 + 8))(v22, v8);
  }

  sub_1ABAE6A34(a2, v19);
  if (sub_1ABA7E1E0(v19, 1, v8) == 1)
  {
    sub_1ABA925A4(v19, &qword_1EB4D9BF0, &qword_1ABF34240);
    sub_1ABF21E74();
    v19 = v15;
  }

  sub_1ABF21E14();
  v27 = v26;
  (*(v11 + 8))(v19, v8);
  LOBYTE(v65[0]) = 0;
  LOBYTE(v60) = 0;
  v73 = 1;
  v72 = 1;
  v71 = 1;
  v70 = 1;
  v69 = 1;
  v68 = 1;
  v67 = 1;
  v66 = 1;
  v74 = v24;
  v75 = 0;
  v76 = v27;
  v77 = 0;
  v78 = v23;
  v79 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 1;
  v83 = 0;
  v84 = 1;
  v85 = 0;
  v86 = 1;
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 1;
  v91 = 5;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 1;
  v96 = 0;
  v97 = 1;
  v37 = sub_1ABDE025C(&v74, 0, v4[5], v4[6], v4[7], v4[8]);
  sub_1ABDD35BC(&v74);
  if (!v37)
  {
    return 0;
  }

  v38 = 0;
  v59 = v37[2];
  v39 = v37 + 4;
  v57 = v37 + 4;
  v58 = MEMORY[0x1E69E7CC0];
LABEL_15:
  for (i = &v39[6 * v38]; ; i += 48)
  {
    if (v59 == v38)
    {

      return v58;
    }

    if (v38 >= v37[2])
    {
      break;
    }

    sub_1ABB2D510(i, v65);
    sub_1ABDE2E30(v65, &v60);
    sub_1ABA84B54(v65);
    v42 = v60;
    v41 = v61;
    v44 = v62;
    v43 = v63;
    v45 = v64;
    if (v61)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = *(v58 + 16);
        sub_1ABA7BEF0();
        sub_1ABADC430();
        v58 = v52;
      }

      v46 = v58;
      v48 = *(v58 + 16);
      v47 = *(v58 + 24);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        sub_1ABA7BBEC(v47);
        v56 = v53;
        sub_1ABADC430();
        v49 = v56;
        v46 = v54;
      }

      ++v38;
      *(v46 + 16) = v49;
      v58 = v46;
      v50 = (v46 + 40 * v48);
      v50[4] = v42;
      v50[5] = v41;
      v50[6] = v44;
      v50[7] = v43;
      v50[8] = v45;
      v39 = v57;
      goto LABEL_15;
    }

    sub_1ABDE4314(v60, 0);
    ++v38;
  }

  __break(1u);
  sub_1ABA8F864();
  swift_once();
  v28 = sub_1ABF237F4();
  sub_1ABA7AA24(v28, qword_1EB4CE7F0);
  v29 = 0;
  v30 = sub_1ABF237D4();
  v31 = sub_1ABF24664();

  if (os_log_type_enabled(v30, v31))
  {
    sub_1ABA8C938();
    v32 = swift_slowAlloc();
    sub_1ABAA61A8();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    v34 = 0;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v32 + 4) = v35;
    *v33 = v35;
    _os_log_impl(&dword_1ABA78000, v30, v31, "KTSIndexManager error: Can't fetch trip history, error %@", v32, 0xCu);
    sub_1ABA925A4(v33, &unk_1EB4D57F0, &qword_1ABF390C0);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t *sub_1ABDDFCDC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v50 = MEMORY[0x1E69E7CC0];
  if (qword_1EB4CE7E8 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1EB4CE7F0);

    sub_1ABDD3560(a1, v47);

    swift_unknownObjectRetain();
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24644();
    swift_unknownObjectRelease();

    sub_1ABDD35BC(a1);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v13 = 136315138;
      v14 = v45;
      sub_1ABDE07DC(a1, a2, v44, a4);
      v42 = a6;
      v43 = a1;
      if (v14)
      {

        v15 = 0;
        v16 = 0;
      }

      v45 = 0;
      v47[0] = v15;
      v47[1] = v16;
      sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
      v17 = sub_1ABF23C74();
      v19 = sub_1ABADD6D8(v17, v18, &v46);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1ABA78000, v11, v12, "Executing params SQL: %s", v13, 0xCu);
      v20 = v41;
      sub_1ABA84B54(v41);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);

      a1 = v43;
    }

    else
    {
    }

    ObjectType = swift_getObjectType();
    v22 = &v40;
    MEMORY[0x1EEE9AC00](ObjectType);
    v23 = v45;
    sub_1ABF22464();
    a6 = v23;
    if (v23)
    {

      return v22;
    }

    v24 = *(a1 + 152);
    v25 = a1;
    a1 = v50;
    v26 = 32;
    v43 = v25;
    if (v24)
    {
      break;
    }

    v28 = 0;
    a2 = *(v25 + 144);
    a4 = *(v50 + 16);
    v27 = MEMORY[0x1E69E7CC0];
LABEL_11:
    for (i = v26 + 96 * v28; ; i += 96)
    {
      if (a4 == v28)
      {

        v50 = v27;
        goto LABEL_22;
      }

      if (v28 >= *(a1 + 16))
      {
        break;
      }

      memcpy(__dst, (a1 + i), 0x60uLL);
      sub_1ABDE45C4(__dst, v47);
      if (sub_1ABDE0E18(__dst, a2, sub_1ABD99104))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v26;
        v46 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABADEA8C(0, *(v27 + 16) + 1, 1);
          v27 = v46;
        }

        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          sub_1ABADEA8C((v31 > 1), v32 + 1, 1);
          v33 = v32 + 1;
          v27 = v46;
        }

        ++v28;
        *(v27 + 16) = v33;
        memcpy((v27 + 96 * v32 + 32), __dst, 0x60uLL);
        v26 = v45;
        goto LABEL_11;
      }

      sub_1ABDE4790(__dst);
      ++v28;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v27 = v50;
LABEL_22:
  if (*(v43 + 168))
  {
    v34 = v27;
  }

  else
  {
    v45 = v26;
    a2 = 0;
    v35 = *(v43 + 160);
    a4 = *(v27 + 16);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_25:
    a1 = v45 + 96 * a2;
    while (a4 != a2)
    {
      if (a2 >= *(v27 + 16))
      {
        goto LABEL_40;
      }

      memcpy(v48, (v27 + a1), sizeof(v48));
      sub_1ABDE45C4(v48, v47);
      if (sub_1ABDE0E18(v48, v35, sub_1ABD9A4AC))
      {
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v34;
        if ((v36 & 1) == 0)
        {
          sub_1ABADEA8C(0, *(v34 + 16) + 1, 1);
          v34 = v46;
        }

        v38 = *(v34 + 16);
        v37 = *(v34 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1ABADEA8C((v37 > 1), v38 + 1, 1);
          v34 = v46;
        }

        ++a2;
        *(v34 + 16) = v38 + 1;
        memcpy((v34 + 96 * v38 + 32), v48, 0x60uLL);
        goto LABEL_25;
      }

      sub_1ABDE4790(v48);
      a1 += 96;
      ++a2;
    }

    v50 = v34;
  }

  v22 = sub_1ABE2A3F8(v34);

  return v22;
}

uint64_t *sub_1ABDE025C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a3;
  v50 = MEMORY[0x1E69E7CC0];
  if (qword_1EB4CE7E8 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v10 = sub_1ABF237F4();
    sub_1ABA7AA24(v10, qword_1EB4CE7F0);

    sub_1ABDD3560(a1, v47);

    swift_unknownObjectRetain();
    v11 = sub_1ABF237D4();
    v12 = sub_1ABF24644();
    swift_unknownObjectRelease();

    sub_1ABDD35BC(a1);

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v13 = 136315138;
      v14 = v45;
      sub_1ABDE07DC(a1, a2, v44, a4);
      v42 = a6;
      v43 = a1;
      if (v14)
      {

        v15 = 0;
        v16 = 0;
      }

      v45 = 0;
      v47[0] = v15;
      v47[1] = v16;
      sub_1ABAD219C(&qword_1EB4D33A8, &unk_1ABF627B0);
      v17 = sub_1ABF23C74();
      v19 = sub_1ABADD6D8(v17, v18, &v46);

      *(v13 + 4) = v19;
      _os_log_impl(&dword_1ABA78000, v11, v12, "Executing params SQL: %s", v13, 0xCu);
      v20 = v41;
      sub_1ABA84B54(v41);
      MEMORY[0x1AC5AB8B0](v20, -1, -1);
      MEMORY[0x1AC5AB8B0](v13, -1, -1);

      a1 = v43;
    }

    else
    {
    }

    ObjectType = swift_getObjectType();
    v22 = &v40;
    MEMORY[0x1EEE9AC00](ObjectType);
    v23 = v45;
    sub_1ABF22464();
    a6 = v23;
    if (v23)
    {

      return v22;
    }

    v24 = *(a1 + 152);
    v25 = a1;
    a1 = v50;
    v26 = 32;
    v43 = v25;
    if (v24)
    {
      break;
    }

    v28 = 0;
    a2 = *(v25 + 144);
    a4 = *(v50 + 16);
    v27 = MEMORY[0x1E69E7CC0];
LABEL_11:
    for (i = v26 + 112 * v28; ; i += 112)
    {
      if (a4 == v28)
      {

        v50 = v27;
        goto LABEL_22;
      }

      if (v28 >= *(a1 + 16))
      {
        break;
      }

      memcpy(__dst, (a1 + i), 0x70uLL);
      sub_1ABDE4398(__dst, v47);
      if (sub_1ABDE0C5C(__dst, a2, sub_1ABD97FBC))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v26;
        v46 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABADEA2C(0, *(v27 + 16) + 1, 1);
          v27 = v46;
        }

        v32 = *(v27 + 16);
        v31 = *(v27 + 24);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          sub_1ABADEA2C((v31 > 1), v32 + 1, 1);
          v33 = v32 + 1;
          v27 = v46;
        }

        ++v28;
        *(v27 + 16) = v33;
        memcpy((v27 + 112 * v32 + 32), __dst, 0x70uLL);
        v26 = v45;
        goto LABEL_11;
      }

      sub_1ABDE43F4(__dst);
      ++v28;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v27 = v50;
LABEL_22:
  if (*(v43 + 168))
  {
    v34 = v27;
  }

  else
  {
    v45 = v26;
    a2 = 0;
    v35 = *(v43 + 160);
    a4 = *(v27 + 16);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_25:
    a1 = v45 + 112 * a2;
    while (a4 != a2)
    {
      if (a2 >= *(v27 + 16))
      {
        goto LABEL_40;
      }

      memcpy(v48, (v27 + a1), sizeof(v48));
      sub_1ABDE4398(v48, v47);
      if (sub_1ABDE0C5C(v48, v35, sub_1ABD98064))
      {
        v36 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v34;
        if ((v36 & 1) == 0)
        {
          sub_1ABADEA2C(0, *(v34 + 16) + 1, 1);
          v34 = v46;
        }

        v38 = *(v34 + 16);
        v37 = *(v34 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1ABADEA2C((v37 > 1), v38 + 1, 1);
          v34 = v46;
        }

        ++a2;
        *(v34 + 16) = v38 + 1;
        memcpy((v34 + 112 * v38 + 32), v48, 0x70uLL);
        goto LABEL_25;
      }

      sub_1ABDE43F4(v48);
      a1 += 112;
      ++a2;
    }

    v50 = v34;
  }

  v22 = sub_1ABE2A2EC(v34);

  return v22;
}

void sub_1ABDE07DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABDE24A4(a2);
  sub_1ABA8E40C();
  sub_1ABF24AB4();

  MEMORY[0x1AC5A9410](a3, a4);
  MEMORY[0x1AC5A9410](41, 0xE100000000000000);
  v8 = 0;
  v38 = *(v7 + 16);
  v43 = v7;
  v9 = v7 + 56;
  v37 = MEMORY[0x1E69E7CC0];
  v36 = v7 + 56;
LABEL_2:
  v10 = (v9 + 32 * v8);
  while (v38 != v8)
  {
    if (v8 >= *(v43 + 16))
    {
      __break(1u);
      return;
    }

    v39 = *(v10 - 3);
    v40 = *(v10 - 2);
    v41 = *(v10 - 1);
    v42 = *v10;
    v11 = sub_1ABA7DD38();
    sub_1ABDDDB84(v11, v12, v13, v14);
    v15 = sub_1ABDE280C();
    if (v4)
    {

      v32 = sub_1ABA7DD38();
      sub_1ABDDDB98(v32, v33, v34, v35);

      return;
    }

    v17 = v15;
    v18 = v16;
    v10 += 16;
    ++v8;
    v19 = sub_1ABA7DD38();
    sub_1ABDDDB98(v19, v20, v21, v22);
    if (v18)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v23 = v37;
      }

      else
      {
        v26 = *(v37 + 16);
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v23 = v27;
      }

      v24 = *(v23 + 16);
      if (v24 >= *(v23 + 24) >> 1)
      {
        sub_1ABAAA4F4();
        v23 = v28;
      }

      *(v23 + 16) = v24 + 1;
      v37 = v23;
      v25 = v23 + 16 * v24;
      *(v25 + 32) = v17;
      *(v25 + 40) = v18;
      v9 = v36;
      goto LABEL_2;
    }
  }

  if (*(v37 + 16))
  {
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v29 = sub_1ABF23B54();
    v31 = v30;

    MEMORY[0x1AC5A9410](v29, v31);

    MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
  }
}

void sub_1ABDE0A80(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t))
{
  v27 = a2;
  v30 = a1;
  v14 = sub_1ABF22854();
  v15 = sub_1ABA7BB64(v14);
  v26 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABDE07DC(a7, a8, a3, a4);
  if (!v9)
  {
    v22 = v26;
    v21 = v27;
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v23 = sub_1ABF22844();
    a9(v23);
    v24 = sub_1ABF22564();

    (*(v22 + 8))(v20, v14);
    sub_1ABA925A4(v28, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    v25 = *v21;
    *v21 = v24;
  }
}

uint64_t sub_1ABDE0C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = objc_autoreleasePoolPush();
  v9 = sub_1ABF217F4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1ABF217E4();
  type metadata accessor for KTSContextRepresentation();
  sub_1ABDE47E4(&qword_1EB4D95C8, type metadata accessor for KTSContextRepresentation);
  sub_1ABA94C90();
  if (v3)
  {

    objc_autoreleasePoolPop(v8);
  }

  else
  {

    objc_autoreleasePoolPop(v8);
    if (*(a3() + 16))
    {
      sub_1ABA97D14();
      v13 = v18;
      v14 = *(v18 + 16);
      do
      {
        sub_1ABA9A64C();
        if (v16)
        {
          sub_1ABADDFFC((v15 > 1), v7, 1);
          v13 = v18;
        }

        sub_1ABA81B10();
      }

      while (!v17);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(a2) = sub_1ABD51FB4(a2, v13);
  }

  return a2 & 1;
}

uint64_t sub_1ABDE0E18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = objc_autoreleasePoolPush();
  v9 = sub_1ABF217F4();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1ABF217E4();
  type metadata accessor for KTSContextAggregateRepresentation();
  sub_1ABDE47E4(&qword_1EB4D95D8, type metadata accessor for KTSContextAggregateRepresentation);
  sub_1ABA94C90();
  if (v3)
  {

    objc_autoreleasePoolPop(v8);
  }

  else
  {

    objc_autoreleasePoolPop(v8);
    if (*(a3() + 16))
    {
      sub_1ABA97D14();
      v13 = v18;
      v14 = *(v18 + 16);
      do
      {
        sub_1ABA9A64C();
        if (v16)
        {
          sub_1ABADDFFC((v15 > 1), v7, 1);
          v13 = v18;
        }

        sub_1ABA81B10();
      }

      while (!v17);
    }

    else
    {

      v13 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(a2) = sub_1ABD51FB4(a2, v13);
  }

  return a2 & 1;
}

uint64_t sub_1ABDE0FD4(uint64_t a1)
{
  if (a1 < 1)
  {
    ObjectType = swift_getObjectType();
    v6 = &v4;
    MEMORY[0x1EEE9AC00](ObjectType);
    sub_1ABAD219C(qword_1EB4D9CF8, &qword_1ABF62570);
    return sub_1ABF22464();
  }

  else
  {
    sub_1ABA88E10();
    sub_1ABA7BD00();
    *v2 = 0xD0000000000000D1;
    *(v2 + 8) = v1;
    *(v2 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1ABDE1104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v34 = a2;
  v35 = a1;
  v32 = a5;
  v7 = sub_1ABF22854();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABF237F4();
  sub_1ABA7AA24(v11, qword_1EB4CE7F0);

  swift_unknownObjectRetain();
  v12 = sub_1ABF237D4();
  v13 = sub_1ABF24644();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v8;
    v16 = v7;
    v17 = v15;
    *&__src[0] = v15;
    *v14 = 136315394;
    v18 = v34;
    *(v14 + 4) = sub_1ABADD6D8(v34, a3, __src);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    _os_log_impl(&dword_1ABA78000, v12, v13, "Fetching from %s: offset %ld", v14, 0x16u);
    sub_1ABA84B54(v17);
    v19 = v17;
    v7 = v16;
    v8 = v31;
    MEMORY[0x1AC5AB8B0](v19, -1, -1);
    MEMORY[0x1AC5AB8B0](v14, -1, -1);
  }

  else
  {

    v18 = v34;
  }

  v20 = v33;
  *&v38[0] = 0;
  *(&v38[0] + 1) = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x2A205443454C4553, 0xEE00204D4F524620);
  MEMORY[0x1AC5A9410](v18, a3);
  MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF90EC0);
  v37[0] = a4;
  v21 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v21);

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_1ABF22844();
  sub_1ABDE4448();
  v22 = v42;
  sub_1ABF22574();
  if (v22)
  {

    (*(v8 + 8))(v20, v7);
    return sub_1ABA925A4(v39, &unk_1EB4D38A0, &qword_1ABF3A8B0);
  }

  else
  {

    (*(v8 + 8))(v20, v7);
    sub_1ABA925A4(v39, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    v24 = *&__src[1];
    if (*&__src[1])
    {
      v38[0] = __src[0];
      memcpy(&v38[1] + 8, &__src[1] + 8, 0x58uLL);
      v25 = sub_1ABDE4678();
      v26 = sub_1ABDE46CC();
      v27 = swift_allocObject();
      v28 = v32;
      *v32 = v27;
      *(v27 + 16) = __src[0];
      *(v27 + 32) = v24;
      memcpy((v27 + 40), &__src[1] + 8, 0x58uLL);
      memcpy(v37, __src, sizeof(v37));
      *&v38[1] = v24;
      sub_1ABDE4398(v38, &v36);
      result = sub_1ABA925A4(v37, &qword_1EB4D9DD8, &qword_1ABF627C8);
      v29 = &type metadata for KTSSegmentRecord;
    }

    else
    {
      memcpy(v38, __src, sizeof(v38));
      result = sub_1ABA925A4(v38, &qword_1EB4D9DD8, &qword_1ABF627C8);
      v29 = 0;
      v25 = 0;
      v26 = 0;
      v28 = v32;
      v32[1] = 0;
      v28[2] = 0;
      *v28 = 0;
    }

    v28[3] = v29;
    v28[4] = v25;
    v28[5] = v26;
  }

  return result;
}

uint64_t sub_1ABDE1594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v35 = a2;
  v36 = a1;
  v33 = a5;
  v7 = sub_1ABF22854();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v11 = sub_1ABF237F4();
  sub_1ABA7AA24(v11, qword_1EB4CE7F0);

  swift_unknownObjectRetain();
  v12 = sub_1ABF237D4();
  v13 = sub_1ABF24644();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v8;
    v16 = v7;
    v17 = v15;
    *&__src[0] = v15;
    *v14 = 136315394;
    v18 = v35;
    *(v14 + 4) = sub_1ABADD6D8(v35, a3, __src);
    *(v14 + 12) = 2048;
    *(v14 + 14) = a4;
    _os_log_impl(&dword_1ABA78000, v12, v13, "Fetching from %s: offset %ld", v14, 0x16u);
    sub_1ABA84B54(v17);
    v19 = v17;
    v7 = v16;
    v8 = v32;
    MEMORY[0x1AC5AB8B0](v19, -1, -1);
    MEMORY[0x1AC5AB8B0](v14, -1, -1);
  }

  else
  {

    v18 = v35;
  }

  v20 = v34;
  *&v39[0] = 0;
  *(&v39[0] + 1) = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0x2A205443454C4553, 0xEE00204D4F524620);
  MEMORY[0x1AC5A9410](v18, a3);
  MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF90EC0);
  v38[0] = a4;
  v21 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v21);

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1ABF22844();
  sub_1ABDE44C8();
  v22 = v43;
  sub_1ABF22574();
  if (v22)
  {

    (*(v8 + 8))(v20, v7);
    return sub_1ABA925A4(v40, &unk_1EB4D38A0, &qword_1ABF3A8B0);
  }

  else
  {

    (*(v8 + 8))(v20, v7);
    sub_1ABA925A4(v40, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    v24 = *&__src[3];
    if (LOBYTE(__src[3]) == 2)
    {
      memcpy(v39, __src, sizeof(v39));
      result = sub_1ABA925A4(v39, &qword_1EB4D9DC0, &qword_1ABF627C0);
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = v33;
      v33[1] = 0;
      v28[2] = 0;
      *v28 = 0;
    }

    else
    {
      v39[0] = __src[0];
      v39[1] = __src[1];
      v39[2] = __src[2];
      *(&v39[3] + 8) = *(&__src[3] + 8);
      *(&v39[4] + 8) = *(&__src[4] + 8);
      *(&v39[5] + 1) = *(&__src[5] + 1);
      v26 = sub_1ABDE451C();
      v27 = sub_1ABDE4570();
      v29 = swift_allocObject();
      v28 = v33;
      *v33 = v29;
      v30 = __src[1];
      *(v29 + 16) = __src[0];
      *(v29 + 32) = v30;
      *(v29 + 48) = __src[2];
      *(v29 + 64) = v24;
      *(v29 + 72) = *(&__src[3] + 8);
      *(v29 + 88) = *(&__src[4] + 8);
      *(v29 + 104) = *(&__src[5] + 1);
      memcpy(v38, __src, sizeof(v38));
      *&v39[3] = v24;
      sub_1ABDE45C4(v39, &v37);
      result = sub_1ABA925A4(v38, &qword_1EB4D9DC0, &qword_1ABF627C0);
      v25 = &type metadata for KTSSliceRecord;
    }

    v28[3] = v25;
    v28[4] = v26;
    v28[5] = v27;
  }

  return result;
}

uint64_t sub_1ABDE1A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D9DF8, &unk_1ABF627D8);
  sub_1ABF22464();
  if (!v4)
  {
    a4 = sub_1ABE2A2EC(v7);
  }

  return a4;
}

uint64_t sub_1ABDE1B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v13 = sub_1ABF22854();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22[0] = 0;
  *(&v22[0] + 1) = 0xE000000000000000;
  sub_1ABF24AB4();

  strcpy(v22, "SELECT * from ");
  HIBYTE(v22[0]) = -18;
  MEMORY[0x1AC5A9410](a2, a3);
  MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
  MEMORY[0x1AC5A9410](a6, a7);
  MEMORY[0x1AC5A9410](540884256, 0xE400000000000000);
  v24 = a8;
  v18 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v18);

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1ABF22844();
  sub_1ABDE4448();
  v19 = sub_1ABF22564();

  (*(v14 + 8))(v17, v13);
  sub_1ABA925A4(v22, &unk_1EB4D38A0, &qword_1ABF3A8B0);
  return v19;
}

_OWORD *sub_1ABDE1D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  result = sub_1ABDE1A48(a1, a2, a3, a4);
  if (!v5)
  {
    v11 = result;
    if (result)
    {
      sub_1ABB2BBD0(result, &v19);
      if (v20)
      {
        sub_1ABDE4244(&v19, v21);
        v12 = *(v11 + 2);

        if (v12 == 1)
        {
          return sub_1ABDE4244(v21, a5);
        }

        *&v19 = 0;
        *(&v19 + 1) = 0xE000000000000000;
        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0x6C6261742053544BLL, 0xEA00000000002065);
        MEMORY[0x1AC5A9410](a2, a3);
        MEMORY[0x1AC5A9410](0xD000000000000031, 0x80000001ABF91220);
        v22 = a1;
        v16 = EntityIdentifier.description.getter();
        MEMORY[0x1AC5A9410](v16);

        v17 = v19;
        sub_1ABDBF718();
        swift_allocError();
        *v18 = v17;
        *(v18 + 16) = 3;
        swift_willThrow();
        return sub_1ABA84B54(v21);
      }

      sub_1ABA925A4(&v19, qword_1EB4D9CF8, &qword_1ABF62570);
    }

    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0x6C6261742053544BLL, 0xEA00000000002065);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD000000000000030, 0x80000001ABF911E0);
    *&v19 = a1;
    v13 = EntityIdentifier.description.getter();
    MEMORY[0x1AC5A9410](v13);

    v14 = v21[0];
    sub_1ABDBF718();
    swift_allocError();
    *v15 = v14;
    *(v15 + 16) = 3;
    return swift_willThrow();
  }

  return result;
}

void *sub_1ABDE1FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D9DF8, &unk_1ABF627D8);
  result = sub_1ABF22464();
  if (!v5)
  {
    v12 = *(__dst[0] + 16);
    if (v12)
    {
      memcpy(__dst, (__dst[0] + 32), 0x70uLL);
      sub_1ABDE4398(__dst, &v18);

      if (v12 == 1)
      {
        a5[3] = &type metadata for KTSSegmentRecord;
        a5[4] = sub_1ABDE4678();
        a5[5] = sub_1ABDE46CC();
        v13 = swift_allocObject();
        *a5 = v13;
        return memcpy((v13 + 16), __dst, 0x70uLL);
      }

      else
      {
        v18 = 0;
        v19 = 0xE000000000000000;
        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0x6C6261742053544BLL, 0xEA00000000002065);
        MEMORY[0x1AC5A9410](a3, a4);
        MEMORY[0x1AC5A9410](0xD000000000000031, 0x80000001ABF91160);
        MEMORY[0x1AC5A9410](a1, a2);
        v15 = v18;
        v16 = v19;
        sub_1ABDBF718();
        swift_allocError();
        *v17 = v15;
        *(v17 + 8) = v16;
        *(v17 + 16) = 3;
        swift_willThrow();
        return sub_1ABDE43F4(__dst);
      }
    }

    else
    {

      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x6C6261742053544BLL, 0xEA00000000002065);
      MEMORY[0x1AC5A9410](a3, a4);
      MEMORY[0x1AC5A9410](0xD000000000000030, 0x80000001ABF911A0);
      MEMORY[0x1AC5A9410](a1, a2);
      sub_1ABDBF718();
      swift_allocError();
      *v14 = 0;
      *(v14 + 8) = 0xE000000000000000;
      *(v14 + 16) = 3;
      return swift_willThrow();
    }
  }

  return result;
}
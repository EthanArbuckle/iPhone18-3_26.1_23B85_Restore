uint64_t NTPBPersonalizationAggregate.updatedAt.getter()
{
  [v0 timestamp];

  return sub_1C6D75F00();
}

uint64_t sub_1C6B69228(uint64_t a1, void **a2)
{
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  result = sub_1C6D75F10();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 1.84467441e19)
  {
    [v9 setTimestamp_];
    return (*(v5 + 8))(v8, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t NTPBPersonalizationAggregate.updatedAt.setter(uint64_t a1)
{
  v2 = v1;
  result = sub_1C6D75F10();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [v2 setTimestamp_];
  v7 = sub_1C6D75F50();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*NTPBPersonalizationAggregate.updatedAt.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1C6D75F50();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  [v1 timestamp];
  sub_1C6D75F00();
  return sub_1C6B69570;
}

void sub_1C6B69570(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v10 = *(*a1 + 32);
    sub_1C6D75F10();
    v12 = v11 * 1000.0;
    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v12 > -1.0)
      {
        if (v12 < 1.84467441e19)
        {
          v6 = *(v2 + 24);
          v5 = *(v2 + 32);
          v13 = *(v2 + 8);
          v14 = *(v2 + 16);
          [*v2 setTimestamp_];
          (*(v14 + 8))(v5, v13);
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  (*(*(v2 + 16) + 16))(*(v2 + 24), *(*a1 + 32), *(v2 + 8));
  sub_1C6D75F10();
  v4 = v3 * 1000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 <= -1.0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  [*v2 setTimestamp_];
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
LABEL_10:
  free(v5);
  free(v6);

  free(v2);
}

unint64_t sub_1C6B69714()
{
  result = qword_1EDCEA4E8;
  if (!qword_1EDCEA4E8)
  {
    sub_1C6B6976C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA4E8);
  }

  return result;
}

unint64_t sub_1C6B6976C()
{
  result = qword_1EDCEA4D0;
  if (!qword_1EDCEA4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA4D0);
  }

  return result;
}

id (*sub_1C6B697C8(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 clicks];
  *a1 = v4;
  return sub_1C6B6981C;
}

id (*sub_1C6B69844(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 impressions];
  *a1 = v4;
  return sub_1C6B69898;
}

id (*sub_1C6B698C4(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 eventCount];
  return sub_1C6B69918;
}

uint64_t sub_1C6B6992C(uint64_t a1)
{
  v3 = *v1;
  result = sub_1C6D75F10();
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  [v3 setTimestamp_];
  v7 = sub_1C6D75F50();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*sub_1C6B69A04(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = NTPBPersonalizationAggregate.updatedAt.modify(v3);
  return sub_1C6B69A78;
}

void sub_1C6B69A78(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_1C6B69AC0()
{
  result = [*v0 featureKey];
  if (result)
  {
    v2 = result;
    v3 = sub_1C6D795A0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B69B50()
{
  [*v0 timestamp];

  return sub_1C6D75F00();
}

id XavierGroupingService.__allocating_init(cloudContext:allowlistProvider:)(void *a1, uint64_t a2)
{
  v4 = [a1 appConfigurationManager];
  result = [a1 paidAccessChecker];
  if (result)
  {
    v6 = result;
    v7 = [a1 deviceIsiPad];
    v8 = swift_allocObject();
    v9 = [objc_msgSend(v4 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v8 + 16) = v9;
    *(v8 + 24) = v6;
    *(v8 + 32) = a2;
    *(v8 + 40) = v7;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B69CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1C6B39280(0, v1, 0);
  v2 = v26;
  v4 = a1 + 64;
  v5 = -1 << *(a1 + 32);
  result = sub_1C6D79CC0();
  v7 = result;
  v8 = 0;
  v25 = *(a1 + 36);
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v11 = (*(a1 + 48) + 16 * v7);
    v12 = v11[1];
    v24 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = sub_1C6B39280((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v24;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v16 = *(a1 + 64 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v25 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 72 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_1C6B360A8(v7, v25, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v7, v25, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t XavierGroupingService.__allocating_init(appConfigurationManager:paidAccessChecker:allowlistProvider:deviceIsiPad:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  v9 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v8 + 16) = v9;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t XavierGroupingService.init(appConfigurationManager:paidAccessChecker:allowlistProvider:deviceIsiPad:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v4 + 16) = v8;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t XavierGroupingService.bestOf(scoredItems:context:allowClusteringFallback:minClusterSize:maxClusterSize:bundleArticleQuotas:maxInaccessibleHeadlines:maxEvergreenHeadlines:maxPublisherOccurrences:maxPublisherOccurrencesByPublisherID:topicDiversity:maxAIGCHeadlines:)(uint64_t a1, uint64_t a2, int a3, int64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, char a10, unint64_t a11, char a12, unint64_t a13, char a14, unint64_t a15, void (**a16)(unint64_t, char *, uint64_t), uint64_t a17, char a18)
{
  v265 = a8;
  LODWORD(v288) = a7;
  v260 = a3;
  v283 = a1;
  v277 = sub_1C6D762D0();
  v23 = *(v277 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v277);
  v279 = &v248 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v276 = &v248 - v27;
  v296 = sub_1C6D79040();
  v290 = *(v296 - 8);
  v28 = *(v290 + 64);
  v29 = MEMORY[0x1EEE9AC00](v296);
  v278 = &v248 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v286 = &v248 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v285 = &v248 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v292 = &v248 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v291 = &v248 - v37;
  v38 = MEMORY[0x1E69E6720];
  sub_1C6B6C454(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], MEMORY[0x1E69E6720]);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v264 = &v248 - v41;
  sub_1C6B6C454(0, &qword_1EDCE6248, MEMORY[0x1E69E34E0], v38);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v266 = &v248 - v44;
  v269 = sub_1C6D76770();
  v268 = *(v269 - 8);
  v45 = *(v268 + 64);
  MEMORY[0x1EEE9AC00](v269);
  v267 = &v248 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B6C454(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], v38);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v287 = (&v248 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = MEMORY[0x1EEE9AC00](v49);
  v273 = (&v248 - v52);
  MEMORY[0x1EEE9AC00](v51);
  v272 = (&v248 - v53);
  v294 = sub_1C6D76130();
  v297 = *(v294 - 8);
  v54 = *(v297 + 64);
  v55 = MEMORY[0x1EEE9AC00](v294);
  v293 = &v248 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v289 = &v248 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v248 - v59;
  v256 = sub_1C6D76F60();
  v255 = *(v256 - 8);
  v61 = *(v255 + 64);
  MEMORY[0x1EEE9AC00](v256);
  v274 = &v248 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = v18;
  v63 = *(v18 + 16);
  v275 = a2;
  v64 = sub_1C6D79110();
  v65 = [objc_opt_self() currentDevice];
  v66 = [v65 userInterfaceIdiom];

  v67 = [objc_opt_self() rulesWithTreatment:v63 configurationSet:v64 deviceIsiPad:v66 == 1 limitUnpaidArticles:1 enforcePublisherCap:1 todayFeedEnabled:1];
  v258 = v63;

  if (a5)
  {
    a4 = [v67 minIdealClusterSize];
    if (a4 < 0)
    {
      goto LABEL_147;
    }
  }

  if (v288)
  {
    a6 = [v67 maxIdealClusterSize];
    if (a6 < 0)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      swift_once();
      goto LABEL_8;
    }
  }

  v68 = *(v283 + 16);
  if (v68 < a4)
  {
    v69 = sub_1C6D761F0();
    sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210]);
    swift_allocError();
    *v70 = v68;
    v70[1] = a4;
    (*(*(v69 - 8) + 104))(v70, *MEMORY[0x1E69E3208], v69);
    swift_willThrow();

    return v68;
  }

  v249 = v23;
  v281 = a4;
  v270 = v68;
  v284 = v67;
  if (qword_1EDCEA6A0 != -1)
  {
    goto LABEL_149;
  }

LABEL_8:
  v71 = qword_1EDCEA6A8;
  sub_1C6B1D314();
  v259 = v72;
  v73 = swift_allocObject();
  v74 = MEMORY[0x1E69E6530];
  *(v73 + 16) = xmmword_1C6D80210;
  v75 = MEMORY[0x1E69E65A8];
  *(v73 + 56) = v74;
  *(v73 + 64) = v75;
  v76 = v270;
  *(v73 + 32) = v270;
  v77 = sub_1C6D79170();
  v78 = sub_1C6B754C0(&qword_1EDCDFCB8, MEMORY[0x1E69B5A30]);
  v280 = v77;
  v282 = v78;
  v79 = sub_1C6D7A0E0();
  v81 = v80;
  *(v73 + 96) = MEMORY[0x1E69E6158];
  v82 = sub_1C6B2064C();
  *(v73 + 72) = v79;
  *(v73 + 80) = v81;
  v83 = v74;
  v84 = v75;
  v85 = v82;
  *(v73 + 136) = v74;
  *(v73 + 144) = v84;
  v86 = v281;
  *(v73 + 104) = v82;
  *(v73 + 112) = v86;
  *(v73 + 176) = v83;
  *(v73 + 184) = v84;
  v271 = a6;
  *(v73 + 152) = a6;
  sub_1C6D79AC0();
  v257 = v71;
  sub_1C6D78D30();

  v87 = v283;
  v250 = v85;
  if (v76)
  {
    v299 = MEMORY[0x1E69E7CC0];
    sub_1C6B39354(0, v76, 0);
    v88 = v299;
    v73 = v87 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
    v85 = v297 + 32;
    v89 = *(v290 + 72);
    v79 = v294;
    do
    {
      v90 = v298;
      sub_1C6B6C4B8(v73, v295, v60);
      v298 = v90;
      v299 = v88;
      v92 = v88[2];
      v91 = v88[3];
      v87 = v92 + 1;
      if (v92 >= v91 >> 1)
      {
        sub_1C6B39354(v91 > 1, v92 + 1, 1);
        v79 = v294;
        v88 = v299;
      }

      v88[2] = v87;
      (*(v297 + 32))(v88 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v92, v60, v79);
      v73 += v89;
      --v76;
    }

    while (v76);
  }

  v93 = [v284 maxNativeAdCount];
  if ((v93 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_151;
  }

  if (__OFADD__(v271, v93))
  {
    v94 = v271;
  }

  else
  {
    v94 = (v271 + v93);
  }

  sub_1C6B6C454(0, &qword_1EDCDF5C8, MEMORY[0x1E69E35E0], MEMORY[0x1E69E6F90]);
  v95 = sub_1C6D76F30();
  v96 = *(v95 - 8);
  v97 = (*(v96 + 80) + 32) & ~*(v96 + 80);
  v288 = *(v96 + 72);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1C6D80220;
  if (a10)
  {
    v99 = [v284 maxUnpaidArticles];
    if ((v99 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v99 = a9;
LABEL_21:
  v253 = v98;
  v100 = (v98 + v97);
  *v100 = v99;
  v101 = *MEMORY[0x1E69E35B0];
  v103 = *(v96 + 104);
  v102 = v96 + 104;
  v263 = v103;
  v103(v100, v101, v95);
  if (a12)
  {
    v104 = v284;
    v105 = [v284 maxEvergreenArticles];
    if ((v105 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v105 = a11;
  v104 = v284;
LABEL_25:
  v106 = v288;
  *(v100 + v288) = v105;
  v107 = *MEMORY[0x1E69E35B8];
  v262 = v102;
  v108 = v263;
  v263(v100 + v106, v107, v95);
  if (a14)
  {
    v109 = [v104 maxPublisherOccurrences];
    if ((v109 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  v109 = a13;
LABEL_29:
  v261 = v95;
  v251 = v94;
  if (a15)
  {
    v110 = a15;
  }

  else
  {
    v110 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  }

  v111 = v272;
  v112 = (v100 + 2 * v288);
  *v112 = v109;
  v112[1] = v110;
  v108(v112, *MEMORY[0x1E69E35C8], v261);
  v272 = a16;
  sub_1C6B753E0(a16, v111, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  v113 = sub_1C6D792C0();
  v114 = *(v113 - 8);
  v115 = v111;
  v116 = *(v114 + 48);
  v117 = v116(v115, 1, v113);

  if (v117 == 1)
  {
    sub_1C6B75460(v115, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
LABEL_35:
    [v284 topicDiversityThreshold];
    v252 = v121;
    goto LABEL_37;
  }

  v118 = sub_1C6D792B0();
  v120 = v119;
  (*(v114 + 8))(v115, v113);
  if (v120)
  {
    goto LABEL_35;
  }

  v252 = v118;
LABEL_37:
  v122 = v273;
  sub_1C6B753E0(v272, v273, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  if (v116(v122, 1, v113) == 1)
  {
    sub_1C6B75460(v122, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
  }

  else
  {
    v254 = sub_1C6D792A0();
    v124 = v123;
    (*(v114 + 8))(v122, v113);
    if ((v124 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v254 = [v258 topicDiversityWindowSize];
LABEL_41:
  v125 = v287;
  sub_1C6B753E0(v272, v287, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  if (v116(v125, 1, v113) == 1)
  {
    sub_1C6B75460(v125, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
    v85 = v288;
    v126 = v263;
  }

  else
  {
    v127 = v125;
    v128 = sub_1C6D79290();
    (*(v114 + 8))(v127, v113);
    v85 = v288;
    v126 = v263;
    if (v128)
    {
      goto LABEL_50;
    }
  }

  v129 = *(v295 + 32);
  if (!v129 || (v130 = [v129 allowlist]) == 0)
  {
    v135 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v131 = v130;
  v132 = [v130 defaultTags];

  if (v132)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v133 = sub_1C6D79490();

    v134 = v298;
    v135 = sub_1C6B69CA0(v133);
    v298 = v134;

LABEL_49:
    sub_1C6B1E610(v135);

LABEL_50:
    v87 = 3 * v85;
    sub_1C6D76720();
    v73 = v261;
    v79 = v262;
    v126(v100 + 3 * v85, *MEMORY[0x1E69E35C0], v261);
    v136 = [v284 thumbnailMinHammingDistance];
    if ((v136 & 0x8000000000000000) == 0)
    {
      v137 = v85;
      v138 = 4 * v85;
      *(v100 + v138) = v136;
      v126(v100 + v138, *MEMORY[0x1E69E35D0], v73);
      v139 = 1000;
      if ((a18 & 1) == 0)
      {
        v139 = a17;
      }

      *(v100 + v138 + v137) = v139;
      v126(v100 + v138 + v137, *MEMORY[0x1E69E35D8], v73);
      v140 = v264;
      sub_1C6B753E0(v265, v264, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0]);
      v141 = sub_1C6D791E0();
      v142 = *(v141 - 8);
      if ((*(v142 + 48))(v140, 1, v141) == 1)
      {
        sub_1C6B75460(v140, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], MEMORY[0x1E69E6720], sub_1C6B6C454);
        v143 = v268;
        v144 = v266;
        v145 = v269;
        v146 = (*(v268 + 56))(v266, 1, 1, v269);
        v147 = v267;
        MEMORY[0x1CCA52C30](v146);
        if ((*(v143 + 48))(v144, 1, v145) != 1)
        {
          sub_1C6B75460(v144, &qword_1EDCE6248, MEMORY[0x1E69E34E0], MEMORY[0x1E69E6720], sub_1C6B6C454);
        }
      }

      else
      {
        v148 = v266;
        sub_1C6D791D0();
        (*(v142 + 8))(v140, v141);
        v143 = v268;
        v145 = v269;
        (*(v268 + 56))(v148, 0, 1, v269);
        v147 = v267;
        (*(v143 + 32))(v267, v148, v145);
      }

      v149 = [objc_msgSend(*(v295 + 24) bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      [v149 isSubscribed];

      v150 = v298;
      sub_1C6D76BF0();
      if (v150)
      {
        (*(v143 + 8))(v147, v145);

        v151 = v150;
        v266 = 0;
        v79 = v275;
        goto LABEL_128;
      }

      v266 = 0;
      (*(v143 + 8))(v147, v145);

      v152 = v270;
      if (v270)
      {
        v288 = *(v290 + 16);
        v60 = (v283 + ((*(v290 + 80) + 32) & ~*(v290 + 80)));
        v153 = *(v290 + 72);
        v273 = (v290 + 32);
        v287 = (v290 + 8);
        v295 = v290 + 16;
        v272 = (v290 + 40);
        v298 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          v155 = v291;
          v156 = v296;
          v157 = v288;
          (v288)(v291, v60, v296);
          a6 = sub_1C6D78FF0();
          v159 = v158;
          v157(v292, v155, v156);
          v160 = v298;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v299 = v160;
          v163 = sub_1C6B5DEA8(a6, v159);
          v164 = v160[2];
          v165 = (v162 & 1) == 0;
          v166 = v164 + v165;
          if (__OFADD__(v164, v165))
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v167 = v162;
          if (v160[3] >= v166)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v162)
              {
                goto LABEL_61;
              }
            }

            else
            {
              sub_1C6B730E0(MEMORY[0x1E69B5910], &qword_1EDCDF6E0, MEMORY[0x1E69B5910]);
              if (v167)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            sub_1C6B6F374(v166, isUniquelyReferenced_nonNull_native, MEMORY[0x1E69B5910], &qword_1EDCDF6E0, MEMORY[0x1E69B5910]);
            v168 = sub_1C6B5DEA8(a6, v159);
            if ((v167 & 1) != (v169 & 1))
            {
              goto LABEL_155;
            }

            v163 = v168;
            if (v167)
            {
LABEL_61:

              v298 = v299;
              v154 = v296;
              (*v272)(v299[7] + v163 * v153, v292, v296);
              (*v287)(v291, v154);
              goto LABEL_62;
            }
          }

          v170 = v299;
          v299[(v163 >> 6) + 8] |= 1 << v163;
          v171 = (v170[6] + 16 * v163);
          *v171 = a6;
          v171[1] = v159;
          v172 = v296;
          (*v273)(v170[7] + v163 * v153, v292, v296);
          (*v287)(v291, v172);
          v173 = v170[2];
          v174 = __OFADD__(v173, 1);
          v175 = v173 + 1;
          if (v174)
          {
            goto LABEL_146;
          }

          v298 = v170;
          v170[2] = v175;
LABEL_62:
          v60 += v153;
          v152 = (v152 - 1);
          if (!v152)
          {
            goto LABEL_75;
          }
        }
      }

      v298 = MEMORY[0x1E69E7CC8];
LABEL_75:
      v176 = sub_1C6D76F50();
      v177 = *(v176 + 16);
      if (v177)
      {
        v292 = *(v297 + 16);
        v178 = (*(v297 + 80) + 32) & ~*(v297 + 80);
        v263 = v176;
        v179 = v176 + v178;
        v291 = *(v297 + 72);
        v287 = (v290 + 16);
        v273 = (v249 + 16);
        v272 = (v249 + 88);
        LODWORD(v269) = *MEMORY[0x1E69E3280];
        LODWORD(v267) = *MEMORY[0x1E69E3288];
        LODWORD(v265) = *MEMORY[0x1E69E3260];
        LODWORD(v264) = *MEMORY[0x1E69E3238];
        LODWORD(v262) = *MEMORY[0x1E69E3270];
        LODWORD(v261) = *MEMORY[0x1E69E3250];
        LODWORD(v258) = *MEMORY[0x1E69E3248];
        LODWORD(v254) = *MEMORY[0x1E69E3240];
        LODWORD(v253) = *MEMORY[0x1E69E3258];
        LODWORD(v252) = *MEMORY[0x1E69E3230];
        v288 = v249 + 8;
        v268 = v290 + 8;
        LODWORD(v251) = *MEMORY[0x1E69E3268];
        v295 = v297 + 16;
        v180 = (v297 + 8);
        LODWORD(v249) = *MEMORY[0x1E69E3278];
        v181 = v289;
        v182 = v298;
        (v292)(v289, v176 + v178, v294);
        while (1)
        {
          v184 = sub_1C6D76110();
          if (v182[2])
          {
            v186 = sub_1C6B5DEA8(v184, v185);
            v188 = v187;
            v181 = v289;

            if (v188)
            {
              (*(v290 + 16))(v285, v182[7] + *(v290 + 72) * v186, v296);
              v189 = sub_1C6D79010();
              v190 = [v189 debugFields];

              v191 = v276;
              sub_1C6D76120();
              v192 = v279;
              v193 = v277;
              (*v273)(v279, v191, v277);
              v194 = (*v272)(v192, v193);
              if (v194 == v269)
              {
                (*v288)(v191, v193);
                v195 = 1;
              }

              else if (v194 == v267)
              {
                (*v288)(v191, v193);
                v195 = 5;
              }

              else if (v194 == v265)
              {
                (*v288)(v191, v193);
                v195 = 6;
              }

              else if (v194 == v264)
              {
                (*v288)(v191, v193);
                v195 = 2;
              }

              else if (v194 == v262)
              {
                (*v288)(v191, v193);
                v195 = 3;
              }

              else if (v194 == v261)
              {
                (*v288)(v191, v193);
                v195 = 10;
              }

              else if (v194 == v258)
              {
                (*v288)(v191, v193);
                v195 = 4;
              }

              else if (v194 == v254)
              {
                (*v288)(v191, v193);
                v195 = 7;
              }

              else if (v194 == v253)
              {
                (*v288)(v191, v193);
                v195 = 8;
              }

              else if (v194 == v252)
              {
                (*v288)(v191, v193);
                v195 = 9;
              }

              else if (v194 == v251)
              {
                (*v288)(v191, v193);
                v195 = 11;
              }

              else
              {
                if (v194 == v249)
                {
                  (*v288)(v191, v193);
                }

                else
                {
                  sub_1C6D79AA0();
                  sub_1C6D78D30();
                  v196 = *v288;
                  (*v288)(v191, v193);
                  v196(v279, v193);
                }

                v195 = 0;
              }

              [v190 setGroupingReason_];

              (*v268)(v285, v296);
              v181 = v289;
            }
          }

          else
          {
          }

          v183 = v294;
          (*v180)(v181, v294);
          v179 += v291;
          if (!--v177)
          {
            break;
          }

          (v292)(v181, v179, v183);
        }

        v197 = v281;
      }

      else
      {

        v197 = v281;
        v182 = v298;
      }

      v198 = sub_1C6D76F40();
      v199 = *(v198 + 16);
      if (!v199)
      {

        v68 = MEMORY[0x1E69E7CC0];
LABEL_126:
        v218 = v68[2];
        v79 = v275;
        if (v218 >= v197)
        {
          (*(v255 + 8))(v274, v256);

          return v68;
        }

        v219 = sub_1C6D761F0();
        sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210]);
        v151 = swift_allocError();
        *v220 = v218;
        v220[1] = v197;
        (*(*(v219 - 8) + 104))(v220, *MEMORY[0x1E69E3208], v219);
        swift_willThrow();
        (*(v255 + 8))(v274, v256);
        v266 = 0;
LABEL_128:
        sub_1C6D79AA0();
        v221 = swift_allocObject();
        *(v221 + 16) = xmmword_1C6D7F520;
        v222 = MEMORY[0x1E69E6530];
        *(v221 + 56) = MEMORY[0x1E69E6530];
        v223 = MEMORY[0x1E69E65A8];
        *(v221 + 64) = MEMORY[0x1E69E65A8];
        *(v221 + 32) = v270;
        v224 = sub_1C6D7A0E0();
        v225 = MEMORY[0x1E69E6158];
        v73 = v250;
        *(v221 + 96) = MEMORY[0x1E69E6158];
        *(v221 + 104) = v73;
        *(v221 + 72) = v224;
        *(v221 + 80) = v226;
        *(v221 + 136) = v222;
        *(v221 + 144) = v223;
        *(v221 + 112) = v281;
        *(v221 + 176) = v222;
        *(v221 + 184) = v223;
        *(v221 + 152) = v271;
        v299 = v151;
        v227 = v151;
        sub_1C6B10A98(0, &qword_1EDCEA410);
        v228 = sub_1C6D795F0();
        *(v221 + 216) = v225;
        *(v221 + 224) = v73;
        *(v221 + 192) = v228;
        *(v221 + 200) = v229;
        sub_1C6D78D30();

        if ((v260 & 1) == 0)
        {
          v68 = swift_allocObject();
          *(v68 + 1) = xmmword_1C6D7E630;
          v240 = sub_1C6D7A0E0();
          v68[7] = v225;
          v68[8] = v73;
          v68[4] = v240;
          v68[5] = v241;
          sub_1C6D79AC0();
          sub_1C6D78D30();

          swift_willThrow();

          return v68;
        }

        v298 = v151;
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1C6D7EB10;
        v230 = sub_1C6D7A0E0();
        *(v87 + 56) = v225;
        *(v87 + 64) = v73;
        *(v87 + 32) = v230;
        *(v87 + 40) = v231;
        *(v87 + 96) = v222;
        *(v87 + 104) = v223;
        v232 = v271;
        *(v87 + 72) = v271;
        sub_1C6D79AC0();
        sub_1C6D78D30();

        v85 = v283;
        v233 = sub_1C6B6CE74(v232, v283, MEMORY[0x1E69B5910]);
        v237 = (v236 >> 1) - v235;
        if (!__OFSUB__(v236 >> 1, v235))
        {
          v79 = v233;
          v238 = v281;
          if (v237 < v281)
          {
            v68 = sub_1C6D761F0();
            sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210]);
            swift_allocError();
            *v239 = v237;
            v239[1] = v238;
            (*(*(v68 - 1) + 104))(v239, *MEMORY[0x1E69E3208], v68);
            swift_willThrow();

            swift_unknownObjectRelease();
            return v68;
          }

          v85 = v235;
          v73 = v234;
          v87 = v236;
          if ((v236 & 1) == 0)
          {

LABEL_135:
            sub_1C6B6E5F0(v79, v73, v85, v87, &qword_1EDCEA430, MEMORY[0x1E69B5910], MEMORY[0x1E69B5910]);
            v68 = v242;

            v243 = v298;
LABEL_143:

            swift_unknownObjectRelease();
            return v68;
          }

          sub_1C6D7A190();
          swift_unknownObjectRetain_n();

          v244 = swift_dynamicCastClass();
          if (!v244)
          {
            swift_unknownObjectRelease();
            v244 = MEMORY[0x1E69E7CC0];
          }

          v245 = *(v244 + 16);

          if (v245 == v237)
          {
            v68 = swift_dynamicCastClass();

            v246 = v298;
            if (!v68)
            {
              swift_unknownObjectRelease();
              v68 = MEMORY[0x1E69E7CC0];
            }

            v243 = v246;
            goto LABEL_143;
          }

LABEL_153:
          swift_unknownObjectRelease();
          goto LABEL_135;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v200 = *(v297 + 16);
      v297 += 16;
      v298 = v200;
      v201 = (*(v297 + 64) + 32) & ~*(v297 + 64);
      v289 = v198;
      v202 = v198 + v201;
      v295 = *(v297 + 56);
      v203 = (v297 - 8);
      v291 = v290 + 16;
      v292 = (v290 + 32);
      v68 = MEMORY[0x1E69E7CC0];
      (v200)(v293, v198 + v201, v294);
      while (1)
      {
        v205 = sub_1C6D76110();
        if (!v182[2])
        {
          break;
        }

        v207 = sub_1C6B5DEA8(v205, v206);
        v209 = v208;

        if ((v209 & 1) == 0)
        {
          goto LABEL_114;
        }

        v210 = v290;
        v211 = *(v290 + 72);
        v212 = v182[7] + v211 * v207;
        v213 = v278;
        v214 = v296;
        (*(v290 + 16))(v278, v212, v296);
        (*v203)(v293, v294);
        v215 = *(v210 + 32);
        v215(v286, v213, v214);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1C6B658F8(0, v68[2] + 1, 1, v68);
        }

        v217 = v68[2];
        v216 = v68[3];
        if (v217 >= v216 >> 1)
        {
          v68 = sub_1C6B658F8(v216 > 1, v217 + 1, 1, v68);
        }

        v68[2] = v217 + 1;
        v215(v68 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + v217 * v211, v286, v296);
        v204 = v294;
LABEL_115:
        v202 += v295;
        if (!--v199)
        {

          v197 = v281;
          goto LABEL_126;
        }

        (v298)(v293, v202, v204);
      }

LABEL_114:
      v204 = v294;
      (*v203)(v293, v294);
      goto LABEL_115;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  __break(1u);
LABEL_155:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

void sub_1C6B6C454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B6C4B8@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v5 = sub_1C6D762D0();
  v58 = *(v5 - 8);
  v59 = v5;
  v6 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C6D79030();
  v9 = [v8 topics];
  if (v9)
  {
    v10 = v9;
    sub_1C6B0C69C(0, &qword_1EDCEA8F0, 0x1E69B6D00);
    v11 = sub_1C6D79780();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  *&v64 = MEMORY[0x1E69E7CD0];
  v68 = MEMORY[0x1E69E7CD0];
  v69 = MEMORY[0x1E69E7CD0];
  if (v11 >> 62)
  {
    goto LABEL_24;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v8; v12; i = v8)
  {
    v55 = a1;
    v61 = a2;
    v13 = 0;
    v63 = v11 & 0xC000000000000001;
    a2 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v63)
      {
        v14 = MEMORY[0x1CCA56240](v13, v11);
      }

      else
      {
        if (v13 >= *(a2 + 16))
        {
          goto LABEL_23;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [v14 tagID];
      if (v17)
      {
        v8 = v11;
        v18 = v17;
        v19 = sub_1C6D795A0();
        v21 = v20;

        a1 = &v64;
        sub_1C6B1E6A8(&v66, v19, v21);

        if ([v15 isManagedTopic])
        {

          a1 = &v69;
          sub_1C6B1E6A8(&v66, v19, v21);
        }

        if ([v15 isManagedTopicWinner])
        {
          a1 = &v68;
          sub_1C6B1E6A8(&v66, v19, v21);
        }

        else
        {
        }

        v11 = v8;
      }

      else
      {
      }

      ++v13;
      if (v16 == v12)
      {
        v63 = v64;
        v56 = v68;
        a2 = v61;
        v8 = i;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v12 = sub_1C6D79E90();
  }

  v56 = MEMORY[0x1E69E7CD0];
  v63 = MEMORY[0x1E69E7CD0];
LABEL_26:

  v54[3] = sub_1C6D78FF0();
  v55 = v22;
  v54[2] = sub_1C6D79000();
  v54[1] = v23;

  v24 = sub_1C6D79010();
  [v24 sortingScore];

  v25 = *(a2 + 24);
  v26 = [v8 isPaid];
  v27 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
  if ([v8 respondsToSelector_])
  {
    v28 = [v8 isBundlePaid];
  }

  else
  {
    v28 = 0;
  }

  v29 = [v8 publisherID];
  if (v29)
  {
    v30 = v29;
    v54[0] = sub_1C6D795A0();
    v61 = v31;
  }

  else
  {
    v54[0] = 0;
    v61 = 0;
  }

  if (!v26)
  {
    v33 = v61;
    if (v28)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v32 = [v25 purchaseProvider];
  v33 = v61;
  if (!v61)
  {
    swift_unknownObjectRelease();
    if (!v28)
    {
      goto LABEL_60;
    }

    goto LABEL_40;
  }

  v34 = [v32 purchasedTagIDs];
  v35 = sub_1C6D79960();

  LOBYTE(v34) = sub_1C6B1E978(v54[0], v61, v35);
  v27 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;

  v33 = v61;
  swift_unknownObjectRelease();
  if (v34)
  {
LABEL_38:

    LODWORD(v54[0]) = 1;
    goto LABEL_64;
  }

  if (!v28)
  {
    goto LABEL_60;
  }

LABEL_40:
  if (!v33)
  {
LABEL_61:
    LODWORD(v54[0]) = 0;
    goto LABEL_64;
  }

  v36 = [objc_msgSend(v25 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v36, v36 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  v37 = MEMORY[0x1E69E7CA0];
  if (!*(&v65 + 1))
  {
    sub_1C6B75460(&v66, &qword_1EDCE7CC0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1C6B75C34);
    goto LABEL_50;
  }

  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    v38 = 0;
    v40 = 0;
    goto LABEL_51;
  }

  v38 = v69;
  v39 = [v69 integerValue];
  if (v39 == -1)
  {

    v8 = i;
    goto LABEL_63;
  }

  v40 = v39;
LABEL_51:
  if (objc_getAssociatedObject(v36, ~v40))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (*(&v65 + 1))
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v41 = v38;
      v42 = v69;
      v43 = [v42 integerValue];

      v8 = i;
      if ((v43 ^ v40))
      {
        goto LABEL_63;
      }

LABEL_60:

      goto LABEL_61;
    }
  }

  else
  {
    sub_1C6B75460(&v66, &qword_1EDCE7CC0, v37 + 8, MEMORY[0x1E69E6720], sub_1C6B75C34);
  }

  v8 = i;
  if ((v40 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_63:
  v44 = [objc_msgSend(v25 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  v45 = [v44 bundleChannelIDs];

  v46 = sub_1C6D79570();
  LODWORD(v54[0]) = [v45 containsObject_];

LABEL_64:
  v47 = [objc_msgSend(v25 bundleSubscriptionProvider];
  swift_unknownObjectRelease();
  [v47 containsItem_];

  if ([v8 v27[63]])
  {
    [v8 isAIGenerated];
  }

  if ([v8 v27[63]])
  {
    [v8 isEvergreen];
  }

  if ([v8 v27[63]])
  {
    v48 = [v8 thumbnailPerceptualHash];
    if (v48)
    {
      v49 = v48;
      v50 = sub_1C6D75E60();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xF000000000000000;
    }

    *&v66 = v50;
    *(&v66 + 1) = v52;
    sub_1C6B75C34(0, &qword_1EDCE63A0, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1C6D79BF0();
    sub_1C6B75B88(v50, v52);
  }

  (*(v58 + 104))(v57, *MEMORY[0x1E69E3278], v59);
  sub_1C6D76100();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C6B6CE74(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v4 = *(a3(0) - 8);
    v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1C6B6CF0C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t XavierGroupingService.deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t XavierGroupingService.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *XavierGroupingService.bestOfGroup(fromHeadlines:configurationSet:)(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  if (a1 >> 62)
  {
    sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);

    v8 = sub_1C6D79EC0();
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1C6D7A180();
    sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v8 = a1;
    if (!swift_dynamicCastMetatype())
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = a1;
      if (v12)
      {
        v13 = (v7 + 32);
        while (1)
        {
          v14 = *v13;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          ++v13;
          if (!--v12)
          {
            v8 = a1;
            goto LABEL_3;
          }
        }

        v8 = v7 | 1;
      }
    }
  }

LABEL_3:
  v9 = sub_1C6B6D328(a1);
  v10 = XavierGroupingService.bestOfGroup(fromFeedItems:scoreProfiles:configurationSet:)(v8, v9, a2);

  if (!v3)
  {
    v4 = sub_1C6B6DAB4(v10);

    if (!v4)
    {
      if (qword_1EDCEA6A0 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6D78D30();
      v15 = sub_1C6D761F0();
      sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210]);
      swift_allocError();
      v4 = v16;
      sub_1C6B75508(0, &qword_1EDCEA900, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
      v18 = v17;
      sub_1C6B75508(0, &qword_1EDCE6610, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
      *v4 = v18;
      v4[1] = v19;
      (*(*(v15 - 8) + 104))(v4, *MEMORY[0x1E69E3200], v15);
      swift_willThrow();
    }
  }

  return v4;
}

id sub_1C6B6D328(unint64_t a1)
{
  v2 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:0];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C6D79E90())
  {
    v4 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1CCA56240](v4, a1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v7 = [v5 scoreProfile];
      [v2 setObject:v7 forKey:v5];
      swift_unknownObjectRelease();

      ++v4;
      if (v6 == i)
      {
        return v2;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(a1 + 8 * v4 + 32);
    swift_unknownObjectRetain();
    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return v2;
}

size_t XavierGroupingService.bestOfGroup(fromFeedItems:scoreProfiles:configurationSet:)(unint64_t a1, void *a2, uint64_t a3)
{
  v54 = a2;
  v53 = sub_1C6D79040();
  v6 = *(v53 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B6C454(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v44 - v13);
  sub_1C6B6C454(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v10);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = &v44 - v17;
  v18 = sub_1C6D79170();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v22 = sub_1C6D79E90();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  v51 = v18;
  if (v22)
  {
    v47 = v3;
    v56 = MEMORY[0x1E69E7CC0];
    v55 = v22;
    result = sub_1C6B393A4(0, v22 & ~(v22 >> 63), 0);
    if (v55 < 0)
    {
      __break(1u);
      return result;
    }

    v44 = a3;
    v45 = v14;
    v46 = v19;
    v25 = a1;
    v26 = 0;
    v23 = v56;
    v52 = v25;
    v27 = v25 & 0xC000000000000001;
    v3 = v47;
    do
    {
      if (v27)
      {
        v28 = MEMORY[0x1CCA56240](v26, v52);
      }

      else
      {
        v28 = *(v52 + 8 * v26 + 32);
        swift_unknownObjectRetain();
      }

      v29 = [v54 objectForKey_];
      sub_1C6D79020();
      v56 = v23;
      v31 = *(v23 + 16);
      v30 = *(v23 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C6B393A4(v30 > 1, v31 + 1, 1);
        v3 = v47;
        v23 = v56;
      }

      ++v26;
      *(v23 + 16) = v31 + 1;
      (*(v6 + 32))(v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v9, v53);
    }

    while (v55 != v26);
    v32 = v50;
    v14 = v45;
    v19 = v46;
    a3 = v44;
  }

  else
  {
    v32 = v50;
  }

  v33 = v48;
  FCFeedPersonalizationConfigurationSet.context.getter(a3, v48);
  v34 = [*(v3 + 16) forYouGroupAllowUnfilteredArticles];
  v35 = sub_1C6D791E0();
  v36 = v49;
  (*(*(v35 - 8) + 56))(v49, 1, 1, v35);
  v37 = sub_1C6D792C0();
  (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
  v38 = XavierGroupingService.bestOf(scoredItems:context:allowClusteringFallback:minClusterSize:maxClusterSize:bundleArticleQuotas:maxInaccessibleHeadlines:maxEvergreenHeadlines:maxPublisherOccurrences:maxPublisherOccurrencesByPublisherID:topicDiversity:maxAIGCHeadlines:)(v23, v33, v34, 0, 1, 0, 1, v36, 0, 1, 0, 1, 0, 1, 0, v14, 0, 1);
  if (v32)
  {

    v39 = MEMORY[0x1E69E6720];
    sub_1C6B75460(v14, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
    sub_1C6B75460(v36, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v39, sub_1C6B6C454);
    (*(v19 + 8))(v33, v51);
  }

  else
  {
    v40 = v38;

    v41 = MEMORY[0x1E69E6720];
    sub_1C6B75460(v14, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
    sub_1C6B75460(v36, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], v41, sub_1C6B6C454);
    (*(v19 + 8))(v33, v51);
    v42 = sub_1C6B6DEB4(v40);

    v43 = [v42 sortedItems];

    sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v39 = sub_1C6D79780();
  }

  return v39;
}

uint64_t sub_1C6B6DAB4(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C6D79E90();
    sub_1C6D79DF0();
    v3 = sub_1C6D79E90();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C6D79DF0();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA56240](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        if (!swift_dynamicCastObjCProtocolConditional())
        {
          goto LABEL_13;
        }

        sub_1C6D79DC0();
        v7 = *(v9 + 16);
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_1C6B6DC2C(unint64_t a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_15:
    sub_1C6D79E90();
    sub_1C6D79DF0();
    v3 = sub_1C6D79E90();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1C6D79DF0();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1CCA56240](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_1C6D79DC0();
        v7 = *(v9 + 16);
        sub_1C6D79E00();
        sub_1C6D79E10();
        sub_1C6D79DD0();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

id sub_1C6B6DEB4(uint64_t a1)
{
  v2 = sub_1C6D79040();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v27 = [objc_allocWithZone(MEMORY[0x1E69B52C0]) init];
  v25 = a1;
  v9 = *(a1 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  sub_1C6D79DF0();
  if (v9)
  {
    v10 = *(v26 + 16);
    v11 = v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v28 = *(v26 + 72);
    v29 = v10;
    v30 = (v26 + 16);
    v12 = (v26 + 8);
    v13 = v9;
    do
    {
      v29(v6, v11, v2);
      sub_1C6D79030();
      (*v12)(v6, v2);
      sub_1C6D79DC0();
      v14 = *(v31 + 16);
      sub_1C6D79E00();
      sub_1C6D79E10();
      sub_1C6D79DD0();
      v11 += v28;
      --v13;
    }

    while (v13);
  }

  sub_1C6B0F7A8(0, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
  v15 = sub_1C6D79760();

  [v27 setSortedItems_];

  v30 = [objc_allocWithZone(MEMORY[0x1E69B53A0]) init];
  if (v9)
  {
    v16 = *(v26 + 16);
    v17 = v25 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v18 = *(v26 + 72);
    v19 = (v26 + 8);
    do
    {
      v16(v8, v17, v2);
      v20 = sub_1C6D79010();
      [v30 setObject:v20 forKey:sub_1C6D79030()];

      swift_unknownObjectRelease();
      (*v19)(v8, v2);
      v17 += v18;
      --v9;
    }

    while (v9);
  }

  v21 = v27;
  v22 = v30;
  [v27 setScoreProfiles_];

  return v21;
}

void sub_1C6B6E2D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      sub_1C6B75C34(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6B6E3BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1C6B75C34(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6B6E4AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1C6B0C69C(0, &qword_1EC1D6EA8, 0x1E69B6CC8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1C6B75C34(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1C6B6E5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1C6B6C454(0, a5, a6, MEMORY[0x1E69E6F90]);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        v17 = *(a7(0) - 8);
        v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v19 = *(v17 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_1C6B6E7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1C6B67648(*(a1 + 16), 0);
  v4 = sub_1C6B686DC(&v6, v3 + 4, v1, a1);

  sub_1C6B688C4();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1C6B6E868(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &qword_1EDCEA470);
  v37 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B6EB54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &qword_1EDCDF648);
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_1C6D7A250();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1C6B6EDEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &qword_1EC1D6EC0);
  v40 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B6F10C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B75B9C();
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 4 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      result = MEMORY[0x1CCA56710](*(v8 + 40), v22, 4);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B6F374(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  sub_1C6B75B1C(0, a4, a5);
  v51 = a2;
  result = sub_1C6D79F00();
  v17 = result;
  if (*(v14 + 16))
  {
    v47 = v8;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_1C6B6F710(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &qword_1EDCE64D8);
  v37 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B6F9C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &qword_1EC1D6B70);
  v38 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B6FCF0(uint64_t a1, char a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_1C6B75B1C(0, a3, a4);
  v40 = a2;
  result = sub_1C6D79F00();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1C6B6FFA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B755F8(0, &unk_1EDCDF6B0, MEMORY[0x1E69E6EC8]);
  v38 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B702C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1C6D770E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1C6B75810();
  v43 = a2;
  result = sub_1C6D79F00();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v7 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_1C6B754C0(&unk_1EDCE61C0, MEMORY[0x1E69E39F8]);
      result = sub_1C6D79500();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v7 = v41;
      v11 = v42;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1C6B706BC(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1C6B75AA0(0, a3, a4, a5);
  v41 = a2;
  result = sub_1C6D79F00();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v41 & 1) == 0)
      {
        v29 = v25[1];
      }

      v30 = *(v11 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_1C6B70A14(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1C6D78810();
  v6 = *(v52 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1C6B61488();
  v47 = a2;
  result = sub_1C6D79F00();
  v12 = result;
  if (*(v9 + 16))
  {
    v44 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v45 = (v6 + 16);
    v48 = (v6 + 32);
    v19 = result + 64;
    v46 = v6;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v26 = v23 | (v13 << 6);
      v27 = *(v9 + 56);
      v28 = *(v9 + 48) + 56 * v26;
      v29 = *v28;
      v50 = *(v28 + 8);
      v49 = *(v28 + 24);
      v30 = *(v28 + 40);
      v31 = *(v28 + 48);
      v32 = *(v6 + 72);
      v33 = v27 + v32 * v26;
      if (v47)
      {
        (*v48)(v51, v33, v52);
      }

      else
      {
        (*v45)(v51, v33, v52);
      }

      *v53 = v29;
      *&v53[8] = v50;
      *&v53[24] = v49;
      *&v53[40] = v30;
      v54 = v31;
      v34 = *(v12 + 40);
      sub_1C6D7A260();
      sub_1C6BFDBDC();
      result = sub_1C6D7A2B0();
      v35 = -1 << *(v12 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v20 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = *(v12 + 48) + 56 * v20;
      v22 = *&v53[16];
      *v21 = *v53;
      *(v21 + 16) = v22;
      *(v21 + 32) = *&v53[32];
      *(v21 + 48) = v54;
      result = (*v48)(*(v12 + 56) + v32 * v20, v51, v52);
      ++*(v12 + 16);
      v6 = v46;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v9 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero((v9 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1C6B70E44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B61688();
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      v23 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D7A290();
      result = sub_1C6D7A2B0();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B710FC(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  a3(0);
  v39 = a2;
  result = sub_1C6D79F00();
  v9 = result;
  if (*(v6 + 16))
  {
    v37 = v4;
    v38 = v6;
    v10 = 0;
    v11 = (v6 + 64);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v22 = v19 | (v10 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v6 + 56) + 8 * v22);
      if ((v39 & 1) == 0)
      {
        v27 = v23[1];
      }

      v28 = *(v9 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v6 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v4 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v6 + 32);
    v4 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_35:
  *v4 = v9;
  return result;
}

uint64_t sub_1C6B71400(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  sub_1C6B75B1C(0, a4, a5);
  v51 = a2;
  result = sub_1C6D79F00();
  v18 = result;
  if (*(v15 + 16))
  {
    v48 = v9;
    v49 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v50 + 72);
      v37 = v32 + v36 * v31;
      if (v51)
      {
        sub_1C6B759B4(v37, v52, v53);
      }

      else
      {
        sub_1C6B7594C(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = sub_1C6B759B4(v52, *(v18 + 56) + v36 * v26, v53);
      ++*(v18 + 16);
      v15 = v49;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_1C6B71770(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &unk_1EDCDF628);
  v35 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 4 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v35 & 1) == 0)
      {
      }

      result = MEMORY[0x1CCA56710](*(v8 + 40), v22, 4);
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 4 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B71A0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B62490(0, &qword_1EDCDF650);
  v38 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 4 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B71CC0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_1C6B75B1C(0, &qword_1EDCDF638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v40 = a2;
  result = sub_1C6D79F00();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 4 * v25);
      v27 = *(v39 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v40)
      {
        sub_1C6B759B4(v28, v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      }

      else
      {
        sub_1C6B7594C(v28, v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      }

      result = MEMORY[0x1CCA56710](*(v13 + 40), v26, 4);
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 4 * v21) = v26;
      result = sub_1C6B759B4(v9, *(v13 + 56) + v27 * v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v36 = 1 << *(v10 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero((v10 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1C6B72098(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1C6B7558C(0, a3, a4, a5, sub_1C6B0F7A8);
  v41 = a2;
  result = sub_1C6D79F00();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v41 & 1) == 0)
      {
        v29 = v25[1];

        swift_unknownObjectRetain();
      }

      v30 = *(v11 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

uint64_t sub_1C6B72354(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B75B1C(0, &qword_1EDCDF670, type metadata accessor for FCSubscriptionOrigin);
  v38 = a2;
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B72614(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1C6B7568C();
  result = sub_1C6D79F00();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      v24 = *(v8 + 40);
      result = sub_1C6D79BB0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1C6B728F8(uint64_t a1, char a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1C6B7558C(0, a3, a4, a5, sub_1C6B0C69C);
  v42 = a2;
  result = sub_1C6D79F00();
  v11 = result;
  if (*(v8 + 16))
  {
    v40 = v6;
    v41 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v42 & 1) == 0)
      {
        v29 = v25[1];

        v30 = v28;
      }

      v31 = *(v11 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v8 + 32);
    v6 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

void *sub_1C6B72BD8()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCEA470);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B72D88()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCDF648);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B72F08()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EC1D6EC0);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B730E0(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v38 - v8;
  sub_1C6B75B1C(0, a2, a3);
  v9 = *v3;
  v10 = sub_1C6D79EF0();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_1C6B7337C()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCE64D8);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B734F8()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EC1D6B70);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B736E8(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  sub_1C6B75B1C(0, a1, a2);
  v4 = *v2;
  v5 = sub_1C6D79EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1C6B73864()
{
  v1 = v0;
  sub_1C6B755F8(0, &unk_1EDCDF6B0, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B73A4C()
{
  v1 = v0;
  v32 = sub_1C6D770E0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B75810();
  v4 = *v0;
  v5 = sub_1C6D79EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = (v4 + 64);
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, v28, 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_21;
      }

      v18 = *(v28 + v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1C6B73CE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = v3;
  sub_1C6B75AA0(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1C6B73F00()
{
  v1 = v0;
  v40 = sub_1C6D78810();
  v42 = *(v40 - 8);
  v2 = v42[8];
  MEMORY[0x1EEE9AC00](v40);
  v39 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61488();
  v4 = *v0;
  v5 = sub_1C6D79EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v37[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v12;
    v13 = 1 << *(v4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v4 + 64);
    v16 = (v13 + 63) >> 6;
    v37[1] = v42 + 4;
    v37[2] = v42 + 2;
    v38 = v4;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v45 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 56 * v20;
        v22 = *(v4 + 56);
        v23 = *(v4 + 48) + 56 * v20;
        v24 = *v23;
        v25 = *(v23 + 40);
        v26 = *(v23 + 48);
        v27 = v42;
        v28 = v42[9] * v20;
        v29 = v42[2];
        v30 = *(v23 + 8);
        v43 = *(v23 + 24);
        v44 = v30;
        v31 = v39;
        v32 = v40;
        v29(v39, v22 + v28, v40);
        v33 = v41;
        v34 = *(v41 + 48) + v21;
        *v34 = v24;
        v35 = v44;
        *(v34 + 24) = v43;
        *(v34 + 8) = v35;
        *(v34 + 40) = v25;
        *(v34 + 48) = v26;
        v36 = *(v33 + 56) + v28;
        v4 = v38;
        (v27[4])(v36, v31, v32);

        v15 = v45;
      }

      while (v45);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v37[0];
        v6 = v41;
        goto LABEL_21;
      }

      v19 = *(v8 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v45 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1C6B741C8()
{
  v1 = v0;
  sub_1C6B61688();
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B74348(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_1C6D79EF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1C6B74518(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v39 - v10;
  sub_1C6B75B1C(0, a2, a3);
  v11 = *v4;
  v12 = sub_1C6D79EF0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_1C6B7594C(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_1C6B759B4(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_1C6B7479C()
{
  v1 = v0;
  sub_1C6B62490(0, &unk_1EDCDF628);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B74918()
{
  v1 = v0;
  sub_1C6B62490(0, &qword_1EDCDF650);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B74A94()
{
  v1 = v0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B75B1C(0, &qword_1EDCDF638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v5 = *v0;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v29 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v11 << 6);
        v22 = *(*(v5 + 48) + 4 * v21);
        v23 = v27;
        v24 = *(v28 + 72) * v21;
        sub_1C6B7594C(*(v5 + 56) + v24, v27, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
        v25 = v29;
        *(*(v29 + 48) + 4 * v21) = v22;
        result = sub_1C6B759B4(v23, *(v25 + 56) + v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v26;
        v7 = v29;
        goto LABEL_21;
      }

      v20 = *(v5 + 64 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

void *sub_1C6B74D54(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C6B7558C(0, a1, a2, a3, sub_1C6B0F7A8);
  v5 = *v3;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = swift_unknownObjectRetain();
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1C6B74ED8()
{
  v1 = v0;
  sub_1C6B75B1C(0, &qword_1EDCDF670, type metadata accessor for FCSubscriptionOrigin);
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C6B75060()
{
  v1 = v0;
  sub_1C6B7568C();
  v2 = *v0;
  v3 = sub_1C6D79EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1C6B75238(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1C6B7558C(0, a1, a2, a3, sub_1C6B0C69C);
  v5 = *v3;
  v6 = sub_1C6D79EF0();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

uint64_t sub_1C6B753E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B6C454(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B75460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1C6B754C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6B75508(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1C6B0F7A8(255, a3, a4);
    v5 = sub_1C6D79820();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B7558C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1C6D79F30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1C6B755F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = MEMORY[0x1E69E6158];
    sub_1C6B75C34(255, &qword_1EDCE7F40, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1C6B7568C()
{
  if (!qword_1EC1D96D0)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF860, 0x1E69B5450);
    sub_1C6B0F7A8(255, &qword_1EDCDF840, &protocolRef_FCPersonalizationAggregate);
    sub_1C6B75728();
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D96D0);
    }
  }
}

unint64_t sub_1C6B75728()
{
  result = qword_1EDCDF850;
  if (!qword_1EDCDF850)
  {
    sub_1C6B0C69C(255, &qword_1EDCDF860, 0x1E69B5450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDF850);
  }

  return result;
}

void sub_1C6B75790()
{
  if (!qword_1EDCEA478)
  {
    sub_1C6B75508(255, &qword_1EDCEA900, &qword_1EDCEA8E0, &protocolRef_FCFeedPersonalizingItem);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA478);
    }
  }
}

void sub_1C6B75810()
{
  if (!qword_1EDCDF750)
  {
    sub_1C6D770E0();
    sub_1C6B6C454(255, &unk_1EDCDFA10, sub_1C6B758EC, MEMORY[0x1E69E62F8]);
    sub_1C6B754C0(&unk_1EDCE61C0, MEMORY[0x1E69E39F8]);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF750);
    }
  }
}

void sub_1C6B758EC()
{
  if (!qword_1EDCDFB10)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB10);
    }
  }
}

uint64_t sub_1C6B7594C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B759B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6B75A1C()
{
  if (!qword_1EC1D6F30)
  {
    sub_1C6B755F8(255, &qword_1EC1D6F38, MEMORY[0x1E69E5E28]);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6F30);
    }
  }
}

void sub_1C6B75AA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B6C454(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1C6D79F30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B75B1C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79F30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B75B88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6B1C9F0(a1, a2);
  }

  return a1;
}

void sub_1C6B75B9C()
{
  if (!qword_1EDCDF620)
  {
    sub_1C6B6C454(255, &qword_1EDCDFA60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle, MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF620);
    }
  }
}

void sub_1C6B75C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t dispatch thunk of TagEvaluatorType.evaluate(tags:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))();
}

{
  return (*(a3 + 16))();
}

uint64_t sub_1C6B75CC4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B75D04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D75F80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  if (qword_1EDCE2538 != -1)
  {
    swift_once();
  }

  sub_1C6B1A2FC(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C6D7EB10;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  v12 = sub_1C6D75F60();
  v14 = v13;
  *(v9 + 96) = MEMORY[0x1E69E6158];
  *(v9 + 104) = sub_1C6B2064C();
  *(v9 + 72) = v12;
  *(v9 + 80) = v14;
  sub_1C6D79AC0();
  sub_1C6D78D30();

  sub_1C6B761BC();
  v15 = MEMORY[0x1CCA56010](25);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1;
  sub_1C6B76224();

  v17 = sub_1C6D78390();

  (*(v5 + 8))(v8, v4);
  return v17;
}

uint64_t sub_1C6B75F70()
{
  sub_1C6B1A2FC(0, &qword_1EC1D6F40, sub_1C6B76224, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1C6D78350();
}

uint64_t sub_1C6B76004(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a5[6];
  v8 = a5[7];
  v10 = a5[5];
  __swift_project_boxed_opaque_existential_1(a5 + 2, v10);
  v11 = (*(v9 + 8))(v10, v9);
  v13 = sub_1C6BB25FC(v8, v11 & 1, a6);
  a1(&v13);
}

uint64_t sub_1C6B76118(uint64_t a1)
{
  v4 = *(*v1 + 48);
  v3 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v5);
  v6 = (*(v4 + 8))(v5, v4);
  return sub_1C6BB25FC(v3, v6 & 1, a1);
}

unint64_t sub_1C6B761BC()
{
  result = qword_1EDCE7EB0;
  if (!qword_1EDCE7EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE7EB0);
  }

  return result;
}

uint64_t sub_1C6B76208()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1C6B75F70();
}

void sub_1C6B76224()
{
  if (!qword_1EDCDFBD8)
  {
    v0 = sub_1C6D794F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDFBD8);
    }
  }
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.tagID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.tagID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.duration.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  sub_1C6B764C8(v1 + *(v7 + 24), v6);
  v8 = sub_1C6D78A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D789F0();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B7655C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView()
{
  result = qword_1EDCE4AA8;
  if (!qword_1EDCE4AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B764C8(uint64_t a1, uint64_t a2)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B7655C(uint64_t a1)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B765E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  sub_1C6B764C8(a1 + *(v8 + 24), v7);
  v9 = sub_1C6D78A00();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D789F0();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B7655C(v7);
  }

  return result;
}

uint64_t sub_1C6B76754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
  sub_1C6B7655C(a2 + v9);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
  sub_1C6B7655C(v1 + v3);
  v4 = sub_1C6D78A00();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventTagFeedView.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D78A00();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
  *(v5 + 12) = v16;
  sub_1C6B764C8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D789F0();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B7655C(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B76B50;
}

void sub_1C6B76B50(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6B7655C(v9 + v3);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6B7655C(v9 + v3);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_Personalization_SessionEventTagFeedView.hasDuration.getter()
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  sub_1C6B764C8(v0 + *(v5 + 24), v4);
  v6 = sub_1C6D78A00();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B7655C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventTagFeedView.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
  sub_1C6B7655C(v0 + v1);
  v2 = sub_1C6D78A00();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v3 = &a1[*(v2 + 20)];
  sub_1C6D78A30();
  v4 = *(v2 + 24);
  v5 = sub_1C6D78A00();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_1C6B76FF8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE4AD0);
  __swift_project_value_buffer(v0, qword_1EDCE4AD0);
  sub_1C6B780C4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "tag_id";
  *(v7 + 8) = 6;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventTagFeedView._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4AD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }

    else if (result == 2)
    {
      sub_1C6B77318();
    }
  }

  return result;
}

uint64_t sub_1C6B77318()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 24);
  sub_1C6D78A00();
  sub_1C6B7807C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1C6D78CC0(), !v1))
  {
    result = sub_1C6B77478(v0);
    if (!v1)
    {
      v6 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView() + 20);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B77478(uint64_t a1)
{
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1C6D78A00();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  sub_1C6B764C8(a1 + *(v11 + 24), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B7655C(v5);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1C6B7807C(&qword_1EDCDFD08, MEMORY[0x1E69AAB70]);
  sub_1C6D78CF0();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Com_Apple_News_Personalization_SessionEventTagFeedView.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  sub_1C6B7807C(&qword_1EC1D6F48, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B77720@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_1C6D78A30();
  v5 = *(a1 + 24);
  v6 = sub_1C6D78A00();
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C6B777F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B7807C(&qword_1EC1D6F58, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B77870@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE4AC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE4AD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B77918(uint64_t a1)
{
  v2 = sub_1C6B7807C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B77984()
{
  sub_1C6B7807C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B24_SessionEventTagFeedViewV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D78A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B780C4(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  sub_1C6B77F8C();
  v14 = v13;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_10;
  }

  v27 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView();
  v18 = *(v27 + 24);
  v19 = *(v14 + 48);
  sub_1C6B764C8(a1 + v18, v17);
  sub_1C6B764C8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B7655C(v17);
LABEL_12:
      v24 = *(v27 + 20);
      sub_1C6D78A40();
      sub_1C6B7807C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_9;
  }

  sub_1C6B764C8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    sub_1C6B78020(v17);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v17[v19], v4);
  sub_1C6B7807C(&qword_1EC1D6F68, MEMORY[0x1E69AAB70]);
  v22 = sub_1C6D79560();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_1C6B7655C(v17);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6B77EC8()
{
  sub_1C6D78A40();
  if (v0 <= 0x3F)
  {
    sub_1C6B780C4(319, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B77F8C()
{
  if (!qword_1EC1D6F60)
  {
    sub_1C6B780C4(255, &qword_1EDCDFD00, MEMORY[0x1E69AAB70], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6F60);
    }
  }
}

uint64_t sub_1C6B78020(uint64_t a1)
{
  sub_1C6B77F8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B7807C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6B780C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_Envelope.data.getter()
{
  v1 = *(v0 + 8);
  sub_1C6B1CD10(v1, *(v0 + 16));
  return v1;
}

uint64_t Com_Apple_News_Personalization_Envelope.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6B1C9F0(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Com_Apple_News_Personalization_Envelope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Envelope() + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_Envelope()
{
  result = qword_1EC1D6FA8;
  if (!qword_1EC1D6FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Envelope.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Envelope() + 24);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_Envelope.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1C6D7F510;
  v1 = a1 + *(type metadata accessor for Com_Apple_News_Personalization_Envelope() + 24);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B783F4()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6F70);
  __swift_project_value_buffer(v0, qword_1EC1D6F70);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "version";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "data";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_Envelope._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6F70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_Envelope.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B90();
    }

    else if (result == 2)
    {
      sub_1C6D78B20();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Envelope.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C6D78CD0(), !v1))
  {
    v3 = *(v0 + 8);
    v4 = *(v0 + 16);
    v5 = v4 >> 62;
    if ((v4 >> 62) > 1)
    {
      if (v5 != 2)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 16);
      v7 = *(v3 + 24);
    }

    else
    {
      if (!v5)
      {
        if ((v4 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        result = sub_1C6D78C80();
        if (v1)
        {
          return result;
        }

        goto LABEL_12;
      }

      v6 = v3;
      v7 = v3 >> 32;
    }

    if (v6 != v7)
    {
      goto LABEL_11;
    }

LABEL_12:
    v8 = v0 + *(type metadata accessor for Com_Apple_News_Personalization_Envelope() + 24);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_Personalization_Envelope.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (sub_1C6B5E090(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_News_Personalization_Envelope() + 24);
  sub_1C6D78A40();
  sub_1C6B78F18(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Personalization_Envelope.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_Envelope();
  sub_1C6B78F18(&qword_1EC1D6F88, type metadata accessor for Com_Apple_News_Personalization_Envelope);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B788FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = xmmword_1C6D7F510;
  v2 = a2 + *(a1 + 24);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B78948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B789BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C6B78A30(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C6B78A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B78F18(&qword_1EC1D6FB8, type metadata accessor for Com_Apple_News_Personalization_Envelope);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B78B00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5940 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6F70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B78BA8(uint64_t a1)
{
  v2 = sub_1C6B78F18(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B78C14()
{
  sub_1C6B78F18(&qword_1EC1D6F98, type metadata accessor for Com_Apple_News_Personalization_Envelope);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B78C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_1C6B5E090(*(a1 + 8), *(a1 + 16), *(a2 + 8), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_1C6D78A40();
  sub_1C6B78F18(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B78E94()
{
  result = sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C6B78F18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6B78F68()
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](0);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B78FAC()
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](0);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B78FEC(uint64_t *a1, void *a2, uint64_t a3)
{
  sub_1C6B16F28(a1, v3 + 16);
  *(v3 + 56) = a3;

  v7 = [a2 cachedSubscription];
  if (objc_getAssociatedObject(v7, v7 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_1C6B79FDC(&v16);
    goto LABEL_9;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  v8 = v13;
  v9 = [v13 integerValue];
  if (v9 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v7, ~v9))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    sub_1C6B79FDC(&v16);
    goto LABEL_17;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    swift_unknownObjectRelease();
    v11 = -35;
    goto LABEL_18;
  }

  v10 = [v13 integerValue];

  swift_unknownObjectRelease();
  v11 = v10 - 35;
LABEL_18:
  __swift_destroy_boxed_opaque_existential_1(a1);

  *(v3 + 64) = ((v11 ^ v9) & 1) == 0;
  return v3;
}

unint64_t sub_1C6B791F4(unint64_t a1)
{
  v3 = sub_1C6D783E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_44:
    v58 = MEMORY[0x1E69E7CC0];

    return sub_1C6B6072C(v58);
  }

  v14 = sub_1C6D79E90();
  if (!v14)
  {
    goto LABEL_44;
  }

LABEL_3:
  v66 = v10;
  v15 = v1[7];
  MEMORY[0x1EEE9AC00](v14);
  *(&v59 - 2) = v1;
  *(&v59 - 1) = a1;
  sub_1C6D784F0();
  sub_1C6D78500();
  v16 = v69;

  v17 = [v16 myMagazinesConfiguration];

  if (!v17)
  {
    sub_1C6B7A104();
    v21 = swift_allocError();
    swift_willThrow();
    (*(v66 + 8))(v13, v9);
    if (qword_1EC1D5A88 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6B1D314();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C6D7E630;
    v67 = 0;
    v68 = 0xE000000000000000;
    v70 = v21;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    v23 = v67;
    v24 = v68;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C6B2064C();
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    sub_1C6D78D30();

    v25 = sub_1C6B6072C(MEMORY[0x1E69E7CC0]);

    return v25;
  }

  v18 = [v17 scoreOutputName];
  v59 = v17;
  v19 = v18;
  sub_1C6D795A0();
  v65 = v9;

  v20 = v65;
  sub_1C6D783C0();
  sub_1C6B7A1B0(&qword_1EDCE7A60, sub_1C6B7A08C);
  v27 = sub_1C6D786D0();
  (*(v4 + 8))(v7, v3);
  if (a1 >> 62)
  {
    v28 = sub_1C6D79E90();
  }

  else
  {
    v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v28)
  {
    v25 = MEMORY[0x1E69E7CC8];
LABEL_40:

LABEL_42:

    (*(v66 + 8))(v13, v20);
    return v25;
  }

  v29 = 0;
  v63 = a1 & 0xFFFFFFFFFFFFFF8;
  v64 = a1 & 0xC000000000000001;
  v62 = v27 + 32;
  v25 = MEMORY[0x1E69E7CC8];
  v60 = v13;
  v61 = a1;
  while (v64)
  {
    v32 = MEMORY[0x1CCA56240](v29, a1);
LABEL_22:
    v33 = *(v27 + 16);
    if (v29 == v33)
    {
      v57 = v32;

      v59 = v57;
      goto LABEL_42;
    }

    if (v29 >= v33)
    {
      goto LABEL_48;
    }

    v34 = v28;
    v35 = v27;
    v36 = *(v62 + 4 * v29);
    v37 = v32;
    v38 = [v32 itemID];
    v39 = sub_1C6D795A0();
    v41 = v40;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v25;
    v44 = sub_1C6B5DEA8(v39, v41);
    v45 = v25[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      goto LABEL_49;
    }

    v48 = v43;
    if (v25[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v51 = v36 <= 0.5;
        if (v43)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1C6B734F8();
        v51 = v36 <= 0.5;
        if (v48)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1C6B6F9C8(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_1C6B5DEA8(v39, v41);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_51;
      }

      v44 = v49;
      v51 = v36 <= 0.5;
      if (v48)
      {
LABEL_14:
        v30 = !v51;

        v25 = v67;
        *(v67[7] + v44) = v30;

        goto LABEL_18;
      }
    }

    v52 = !v51;
    v25 = v67;
    v67[(v44 >> 6) + 8] |= 1 << v44;
    v53 = (v25[6] + 16 * v44);
    *v53 = v39;
    v53[1] = v41;
    *(v25[7] + v44) = v52;

    v54 = v25[2];
    v55 = __OFADD__(v54, 1);
    v56 = v54 + 1;
    if (v55)
    {
      goto LABEL_50;
    }

    v25[2] = v56;
LABEL_18:
    ++v29;
    v28 = v34;
    v31 = v34 == v29;
    v20 = v65;
    v27 = v35;
    v13 = v60;
    a1 = v61;
    if (v31)
    {
      goto LABEL_40;
    }
  }

  if (v29 < *(v63 + 16))
  {
    v32 = *(a1 + 8 * v29 + 32);
    goto LABEL_22;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

void sub_1C6B798F0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a2;
  v8 = sub_1C6D78810();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C6D75F80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [*(a1 + 24) myMagazinesConfiguration];
  if (!v17)
  {
    sub_1C6B7A104();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v18 = v17;
  v62 = v11;
  v64 = a4;
  sub_1C6D75F70();
  v19 = sub_1C6D75F60();
  v60 = v20;
  (*(v13 + 8))(v16, v12);
  v21 = [v18 scoreOutputName];
  v22 = sub_1C6D795A0();
  v59[1] = v23;

  v66 = [v18 maxTopicIds];
  v68 = [v18 fullBodyEmbeddingDimension];
  v67 = [v18 titleEmbeddingDimension];
  v61 = v19;
  if (a3 >> 62)
  {
    v24 = sub_1C6D79E90();
  }

  else
  {
    v24 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E7CC0];
  v63 = v18;
  v59[2] = v22;
  if (v24)
  {
    v71 = MEMORY[0x1E69E7CC0];
    sub_1C6B39464(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v59[0] = v4;
    v26 = 0;
    v25 = v71;
    v27 = v65;
    LODWORD(v28) = *(v65 + 64);
    v29 = a3;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1CCA56240](v26, v29);
      }

      else
      {
        v30 = *(v29 + 8 * v26 + 32);
      }

      sub_1C6C33510(v68, v66, v67, v30, 1, v28, v69);
      v71 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C6B39464((v31 > 1), v32 + 1, 1);
        v27 = v65;
        v25 = v71;
      }

      ++v26;
      *(v25 + 16) = v32 + 1;
      v33 = v25 + 232 * v32;
      v34 = v69[0];
      v35 = v69[2];
      *(v33 + 48) = v69[1];
      *(v33 + 64) = v35;
      *(v33 + 32) = v34;
      v36 = v69[3];
      v37 = v69[4];
      v38 = v69[6];
      *(v33 + 112) = v69[5];
      *(v33 + 128) = v38;
      *(v33 + 80) = v36;
      *(v33 + 96) = v37;
      v39 = v69[7];
      v40 = v69[8];
      v41 = v69[10];
      *(v33 + 176) = v69[9];
      *(v33 + 192) = v41;
      *(v33 + 144) = v39;
      *(v33 + 160) = v40;
      v42 = v69[11];
      v43 = v69[12];
      v44 = v69[13];
      *(v33 + 256) = v70;
      *(v33 + 224) = v43;
      *(v33 + 240) = v44;
      *(v33 + 208) = v42;
      v29 = a3;
    }

    while (v24 != v26);
  }

  else
  {
    v27 = v65;
  }

  v45 = v27[5];
  v46 = v27[6];
  __swift_project_boxed_opaque_existential_1(v27 + 2, v45);
  (*(v46 + 16))(v25, v68, v67, v45, v46);

  sub_1C6B7A158();
  v47 = sub_1C6D783E0();
  v48 = *(v47 - 8);
  v49 = *(v48 + 72);
  v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1C6D7E630;
  sub_1C6D783C0();
  sub_1C6C07550(v51);
  swift_setDeallocating();
  (*(v48 + 8))(v51 + v50, v47);
  swift_deallocClassInstance();
  v52 = v60;

  v53 = v61;
  sub_1C6D78790();
  if (qword_1EC1D5A88 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1C6D7EB10;
  v55 = MEMORY[0x1E69E6158];
  *(v54 + 56) = MEMORY[0x1E69E6158];
  v56 = sub_1C6B2064C();
  *(v54 + 64) = v56;
  *(v54 + 32) = v53;
  *(v54 + 40) = v52;
  sub_1C6D787B0();
  sub_1C6B7A1B0(&qword_1EDCE5CD0, MEMORY[0x1E6996158]);
  v57 = sub_1C6D7A0E0();
  *(v54 + 96) = v55;
  *(v54 + 104) = v56;
  *(v54 + 72) = v57;
  *(v54 + 80) = v58;
  sub_1C6D79AC0();
  sub_1C6D78D30();
}

uint64_t sub_1C6B79F54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B79FDC(uint64_t a1)
{
  sub_1C6B7A038();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6B7A038()
{
  if (!qword_1EDCE7CC0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7CC0);
    }
  }
}

void sub_1C6B7A08C()
{
  if (!qword_1EDCE7A50)
  {
    sub_1C6B134B8();
    v0 = sub_1C6D78510();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE7A50);
    }
  }
}

unint64_t sub_1C6B7A104()
{
  result = qword_1EC1D6FC0;
  if (!qword_1EC1D6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D6FC0);
  }

  return result;
}

void sub_1C6B7A158()
{
  if (!qword_1EDCE64A0)
  {
    sub_1C6D783E0();
    v0 = sub_1C6D7A0F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE64A0);
    }
  }
}

uint64_t sub_1C6B7A1B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6B7A214()
{
  result = qword_1EC1D6FC8;
  if (!qword_1EC1D6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D6FC8);
  }

  return result;
}

uint64_t sub_1C6B7A268()
{
  v1 = *(*(sub_1C6D768B0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v2 = *(*(sub_1C6D76950() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v3 = *(*(sub_1C6D76920() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v4 = *(*(sub_1C6D76820() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  [v0 heavyClickMinimumDuration];
  sub_1C6D76800();
  [v0 sportsTagSeenMinimumDuration];
  [v0 sportsTagSeenEnableFeedSource];
  [v0 sportsTagSeenEnableSportsManagementDetailSource];
  [v0 sportsTagSeenEnableSportsManagementSource];
  sub_1C6D76900();
  [v0 trackListenedMinimumDuration];
  sub_1C6D76930();
  [v0 trackVisitedMinimumDuration];
  sub_1C6D76890();
  return sub_1C6D769E0();
}

uint64_t sub_1C6B7A480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  sub_1C6B7E734();
  v4 = *(*(v3 - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v71 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7E910();
  v7 = *(*(v6 - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v79 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1C6D76740();
  v67 = *(v68 - 8);
  v9 = v67[8];
  (MEMORY[0x1EEE9AC00])();
  v78 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EAA4();
  v12 = *(*(v11 - 8) + 64);
  (MEMORY[0x1EEE9AC00])();
  v77 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_1C6D76700() - 8) + 64);
  v15 = (MEMORY[0x1EEE9AC00])();
  v93 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v92 = v62 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v91 = v62 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v90 = v62 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v89 = v62 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v84 = v62 - v25;
  sub_1C6B7EC38();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v86 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1C6D76730();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v85 = v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1C6D76770();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v80 = v62 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7EC90();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v76 = v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [objc_opt_self() currentDevice];
  v39 = [v38 userInterfaceIdiom];

  v40 = [v1 minClusterSizeIPhone];
  v41 = [v1 minClusterSizeIPad];
  v42 = [v1 maxClusterSizeIPhone];
  v43 = [v1 maxClusterSizeIPad];
  if (v39 == 1)
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  v70 = v44;
  if (v39 == 1)
  {
    v45 = v41;
  }

  else
  {
    v45 = v40;
  }

  v69 = v45;
  v46 = &selRef_minClusterSizeIPadAutoFavorite;
  if (v39 == 1)
  {
    v47 = &selRef_maxClusterSizeIPadAutoFavorite;
  }

  else
  {
    v46 = &selRef_minClusterSizeIPhoneAutoFavorite;
    v47 = &selRef_maxClusterSizeIPhoneAutoFavorite;
  }

  if (v39 == 1)
  {
    v48 = &selRef_minMoreForYouSizeIPad;
  }

  else
  {
    v48 = &selRef_minMoreForYouSizeIPhone;
  }

  if (v39 == 1)
  {
    v49 = &selRef_maxMoreForYouSizeIPad;
  }

  else
  {
    v49 = &selRef_maxMoreForYouSizeIPhone;
  }

  if (v39 == 1)
  {
    v50 = &selRef_maxUnpaidArticlesIPad;
  }

  else
  {
    v50 = &selRef_maxUnpaidArticlesIPhone;
  }

  if (v39 == 1)
  {
    v51 = &selRef_maxPublisherOccurrencesIPad;
  }

  else
  {
    v51 = &selRef_maxPublisherOccurrencesIPhone;
  }

  v75 = [v2 *v46];
  v74 = [v2 *v47];
  v66 = [v2 *v48];
  v65 = [v2 *v49];
  v88 = [v2 *v50];
  v87 = [v2 *v51];
  v73 = v2;
  v64 = [v2 maxEvergreenArticlesPerGroup];
  v63 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1CCA52C30]();
  sub_1C6D76710();
  v82 = sub_1C6D766C0();
  v52 = *(v82 - 8);
  v81 = *(v52 + 56);
  v83 = v52 + 56;
  v53 = v86;
  v81(v86, 1, 1, v82);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v62[1] = sub_1C6D76680();
  sub_1C6D76690();
  sub_1C6D766A0();
  sub_1C6D76670();
  sub_1C6D76640();
  sub_1C6D76650();
  sub_1C6D766B0();
  sub_1C6D76660();
  sub_1C6B7E8C8(&qword_1EDCE6288, MEMORY[0x1E69E3478]);
  sub_1C6B7E8C8(&qword_1EDCE6290, MEMORY[0x1E69E3448]);
  sub_1C6D766D0();
  v63 = [v2 maxEvergreenArticlesPerGroup];
  v64 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1CCA52C30]();
  sub_1C6D76710();
  v81(v53, 1, 1, v82);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D76580();
  sub_1C6D76590();
  sub_1C6D765A0();
  sub_1C6D76570();
  sub_1C6D76540();
  sub_1C6D76550();
  sub_1C6D765B0();
  sub_1C6D76560();
  sub_1C6B7E8C8(&qword_1EDCE62A8, MEMORY[0x1E69E33D8]);
  sub_1C6B7E8C8(&qword_1EDCE62B0, MEMORY[0x1E69E33A8]);
  v54 = v86;
  sub_1C6D766D0();
  v55 = v73;
  [v73 channelScoreWeight];
  v75 = v56;
  (v67[13])(v78, *MEMORY[0x1E69E34D8], v68);
  v57 = MEMORY[0x1E69E7CC0];
  v74 = sub_1C6B60950(MEMORY[0x1E69E7CC0]);
  [v55 managedTopicMultiplier];
  v68 = v58;
  [v55 managedWinnerTopicMultiplier];
  v67 = [v55 maxNumberOfTotalTopicAndChannelGroups];
  v63 = [v55 maxEvergreenArticlesPerGroup];
  v64 = sub_1C6B6061C(v57);
  MEMORY[0x1CCA52C30]();
  sub_1C6D76710();
  v81(v54, 1, 1, v82);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D76600();
  sub_1C6D76610();
  sub_1C6D76620();
  sub_1C6D765F0();
  sub_1C6D765C0();
  sub_1C6D765D0();
  sub_1C6D76630();
  sub_1C6D765E0();
  sub_1C6B7E8C8(&qword_1EDCE6298, MEMORY[0x1E69E3428]);
  sub_1C6B7E8C8(&qword_1EDCE62A0, MEMORY[0x1E69E33F8]);
  v59 = v86;
  sub_1C6D766D0();
  v60 = v73;
  [v73 relatedTopicMultiplier];
  [v60 relatedTopicRatioFilter];
  v66 = [v60 thumbnailMinHammingDistance];
  [v60 topicAutofavoritedMultiplier];
  v64 = [v60 maxEvergreenArticlesPerGroup];
  v65 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  sub_1C6D766F0();
  sub_1C6D76750();
  sub_1C6D76710();
  v81(v59, 1, 1, v82);
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  sub_1C6D766F0();
  v83 = sub_1C6D76460();
  sub_1C6D76470();
  sub_1C6D76480();
  sub_1C6D76450();
  sub_1C6D76430();
  sub_1C6D76440();
  sub_1C6D76490();
  sub_1C6D764A0();
  sub_1C6B7E8C8(&qword_1EDCE62D0, MEMORY[0x1E69E3328]);
  sub_1C6B7E8C8(&qword_1EDCE62C8, MEMORY[0x1E69E3338]);
  sub_1C6D766D0();
  [v60 topicFavoritedMultiplier];
  [v60 topicGroupSizeMultiplier];
  [v60 topicGroupableMultiplier];
  [v60 topicScoreWeight];
  [v60 topicSpecificityMultiplier];
  return sub_1C6D764B0();
}
uint64_t sub_1C46B2304()
{
  sub_1C43FBCD4();
  v1 = v0[64];
  v0[19] = v0[72];
  v0[73] = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();

  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1C46B239C()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 280);
  v4 = *(v0 + 232);
  v5 = *(v0 + 120);

  *(v0 + 160) = v2;
  v110 = (v0 + 16);
  v6 = v2;
  v7 = &unk_1C4F0C000;
  if (swift_dynamicCast())
  {
    v107 = (v0 + 160);
    v8 = *(v0 + 560);
    v9 = *(v0 + 400);
    v10 = *(v0 + 280);
    v11 = *(v0 + 240);
    v12 = *(v0 + 248);
    v13 = *(v0 + 232);

    v14 = *(v11 + 32);
    v15 = sub_1C4422A18();
    v16(v15);
    sub_1C4458484();
    if (v17)
    {
LABEL_4:
      v18 = *(v0 + 504);
      v19 = sub_1C4F00978();
      sub_1C43FCEE8(v19, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4F00968();
      v21 = sub_1C4F01CD8();

      v22 = sub_1C44020E0();
      v23 = *(v0 + 504);
      if (v22)
      {
        v24 = *(v0 + 496);
        v25 = sub_1C43FD084();
        v113 = sub_1C43FFD34();
        *v25 = v7[458];
        v26 = sub_1C4423664();
        v28 = sub_1C441D828(v26, v23, v27);

        *(v25 + 4) = v28;
        sub_1C4417FB0(&dword_1C43F8000, v29, v21, "HistoricalFeatureCollector: Signal %s requested cancellation during collection (change step). Data collection will be terminated.");
        sub_1C440962C(v113);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v104 = *(v0 + 552);
      v47 = *(v0 + 520);
      v48 = *(v0 + 472);
      v49 = *(v0 + 368);
      v50 = *(v0 + 336);
      v101 = *(v0 + 344);
      v51 = *(v0 + 328);
      v52 = *(v0 + 240);
      v53 = *(v0 + 248);
      v54 = *(v0 + 232);
      sub_1C4406A10();
      sub_1C46B6958(v55, v56);
      sub_1C441C114();
      v57 = swift_allocError();
      v59 = sub_1C46B6F68(v57, v58);
      v60(v59, v53, v54);
      swift_willThrow();

      (*(v52 + 8))(v53, v54);
      (*(v50 + 8))(v101, v51);
      sub_1C4420C3C(v49, &qword_1EC0B84B8, &unk_1C4F0D4F0);

      sub_1C440962C(v110);
      sub_1C44239FC(v104);
      sub_1C443211C();
      v102 = *(v0 + 248);
      v105 = *(v0 + 224);
      v108 = *(v0 + 216);
      v111 = *(v0 + 192);

      sub_1C43FBDA0();
LABEL_30:
      sub_1C4401D60();

      __asm { BRAA            X1, X16 }
    }
  }

  else
  {

    sub_1C4458484();
    if (!v17)
    {
      sub_1C44064A8();
      swift_once();
    }

    v100 = (v0 + 56);
    v107 = (v0 + 144);
    v30 = *(v0 + 576);
    v31 = *(v0 + 504);
    v109 = sub_1C4F00978();
    sub_1C43FCEE8(v109, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = v30;
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CD8();

    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 576);
    v37 = *(v0 + 520);
    v38 = *(v0 + 504);
    if (v35)
    {
      v39 = *(v0 + 496);
      sub_1C441024C();
      v40 = swift_slowAlloc();
      v41 = sub_1C4408660();
      v42 = sub_1C43FFD34();
      sub_1C449DA80(v42);
      *v40 = 136315394;
      v43 = sub_1C4423664();
      v4 = sub_1C441D828(v43, v38, v44);

      *(v40 + 4) = v4;
      *(v40 + 12) = 2112;
      v45 = v36;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 14) = v46;
      *v41 = v46;
      _os_log_impl(&dword_1C43F8000, v33, v34, "HistoricalFeatureCollector: Signal %s threw error during a timepoint. This timepoint will not be collected. %@", v40, 0x16u);
      sub_1C4420C3C(v41, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C4435858();
      v7 = &unk_1C4F0C000;
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
      v61 = *(v0 + 520);
    }

    sub_1C440962C(v110);
    v62 = *(v0 + 488);
    isa = (*(v0 + 480) - 1) & *(v0 + 480);
    v99 = *(v0 + 560);
    v106 = *(v0 + 552);
    v98 = *(v0 + 544);
    v103 = v7[458];
LABEL_14:
    if (isa)
    {
      v33 = *(v0 + 472);
      goto LABEL_21;
    }

    while (!__OFADD__(v62, 1))
    {
      v64 = 1 << *(v0 + 593);
      sub_1C4404220();
      if (v66 == v67)
      {
        v84 = sub_1C4404DF0();
        sub_1C4420C3C(v84, &qword_1EC0B84B8, &unk_1C4F0D4F0);

        v85 = sub_1C456902C(&qword_1EC0BB1B0, &qword_1C4F1E178);
        sub_1C4410AEC(v85);
        v86 = sub_1C4402EE8();
        v87(v86);
        *(v62 + isa) = v4;
        sub_1C442F160(v99);
        sub_1C44239FC(v106);
        sub_1C4412F00();
        sub_1C444146C();
        v112 = *(v0 + 192);

        sub_1C43FC1B0();
        goto LABEL_30;
      }

      isa = v33[v65 + 8].isa;
      ++v62;
      if (isa)
      {
        v62 = v65;
LABEL_21:
        *(v0 + 480) = isa;
        *(v0 + 488) = v62;
        v68 = *(v0 + 184);
        v69 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v70 = (v33[6].isa + 16 * (v69 | (v62 << 6)));
        v4 = *v70;
        *(v0 + 496) = *v70;
        *(v0 + 504) = v70[1];
        sub_1C44951C0(v68);
        v71 = v33[2].isa;
        v7 = v72;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v71)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v73 = sub_1C445FAA8(v4, v7);
          if (v74)
          {
            v75 = *(v0 + 368);
            v76 = sub_1C442DE54(v73);
            sub_1C442E860(v76, v100);
            sub_1C441D670(v100, v110);
            v77 = *(v0 + 40);
            v78 = *(v0 + 48);
            sub_1C440171C(v110);
            sub_1C46B51A0();
            v90 = *(v0 + 96);
            *(v0 + 520) = *(v0 + 104);
            v90();
            v91 = sub_1C4461F74().n128_u64[0];
            *(v0 + 560) = v99;
            *(v0 + 552) = v106;
            v92 = sub_1C440002C(v98, v91)[1];
            v93 = swift_task_alloc();
            v94 = sub_1C4405A14(v93);
            *v94 = v95;
            sub_1C441F71C();
            sub_1C4401D60();

            __asm { BRAA            X1, X16 }
          }
        }

        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        sub_1C43FCEE8(v109, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v33 = sub_1C4F00968();
        v79 = sub_1C4F01CE8();

        if (sub_1C44020E0())
        {
          v80 = sub_1C43FD084();
          v81 = sub_1C43FFD34();
          sub_1C449DA80(v81);
          *v80 = v103;
          v82 = sub_1C4423664();
          v4 = sub_1C441D828(v82, v7, v83);

          *(v80 + 4) = v4;
          _os_log_impl(&dword_1C43F8000, v33, v79, "HistoricalFeatureCollector: --INVARIANT VIOLATION-- Unexpectedly missing signal for %s. It will be skipped for this iteration.", v80, 0xCu);
          sub_1C4435858();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  sub_1C44064A8();
  swift_once();
  goto LABEL_4;
}

void sub_1C46B3050(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v224 = a6;
  v227 = a5;
  v229 = a3;
  v231 = a2;
  v217 = a1;
  v9 = *v6;
  v10 = type metadata accessor for FeatureValue(0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v212 - v18;
  v230 = sub_1C4EFDAF8();
  v20 = sub_1C43FCDF8(v230);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v232 = (v25 - v26);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v225 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v212 - v30;
  v32 = *(v9 + 80);
  v33 = *(v9 + 88);
  v34 = type metadata accessor for HistoricalSampleTask.SignalSpec();
  sub_1C43FCE50(v34);
  (*(v35 + 16))(&v236, a4);
  v228 = v6;
  v233 = 0;
  if (!v242)
  {
    v221 = v19;
    v78 = 0;
    v79 = v240;
    v80 = v240 + 64;
    v81 = 1 << *(v240 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v83 = v82 & *(v240 + 64);
    v84 = (v81 + 63) >> 6;
    v225 = (v22 + 8);
    *&v36 = 136315906;
    v220 = v36;
    v85 = v229;
    v226 = v240;
    *&v222 = v31;
    while (v83)
    {
      v86 = v78;
LABEL_30:
      v87 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v88 = v87 | (v86 << 6);
      v89 = (*(v79 + 48) + 16 * v88);
      v90 = *v89;
      v91 = v89[1];
      v92 = *(*(v79 + 56) + 8 * v88);
      swift_bridgeObjectRetain_n();

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v224 = v90;
      sub_1C4EFDAC8();
      v93 = v227;
      if (v227[2] && (v232 = v92, sub_1C457AAB4(), (v95 & 1) != 0))
      {
        v223 = sub_1C4459B20(v94);
        if (v93 && (sub_1C457AAB4(), (v97 & 1) != 0))
        {
          v98 = v93[7] + 16 * v96;
          v85 = *v98;
          v99 = *(v98 + 8);
          v100 = sub_1C43FEDF8();
          sub_1C46631DC(v100, v101);
        }

        else
        {
          v104 = sub_1C43FEDF8();
          sub_1C46B6838(v104, v105);
        }

        v106 = sub_1C43FEDF8();
        v107 = v223;
        v108 = v233;
        sub_1C46D43EC(v106, v109, v110);
        v233 = v108;
        if (v108)
        {
          v111 = sub_1C43FEDF8();
          sub_1C46B6850(v111, v112);
          v113 = v228;
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v114 = sub_1C4F00978();
          sub_1C43FCEE8(v114, qword_1EDDFECB8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C44B8F2C();

          v115 = v233;
          v116 = v233;
          v117 = sub_1C4F00968();
          v118 = sub_1C4F01CD8();

          if (os_log_type_enabled(v117, v118))
          {
            sub_1C4485D10();
            v219 = sub_1C447F928();
            v235[0] = v219;
            sub_1C44305CC(&v244);
            v119 = sub_1C447CD80(&v243);
            sub_1C4461C64(v119, v120);
            LODWORD(v216) = v118;
            sub_1C4460618();
            *(v85 + 4) = v118;
            v121 = sub_1C4440FE4();
            sub_1C4440978(v121);
            v123 = sub_1C441D828(v224, v91, v122);

            *(v85 + 24) = v123;
            *(v85 + 32) = v113;
            v234 = v115;
            v124 = v115;
            sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
            v125 = sub_1C448037C();
            v127 = v115;
            v128 = sub_1C4461C64(v125, v126);

            *(v85 + 34) = v128;
            sub_1C44149D4(&v243);
            sub_1C4495CC4(v129, v130, v131, "%s: Failed to serialize feature %s::%s: %s");
            swift_arrayDestroy();
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v85 = v229;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }

          v136 = sub_1C4423B08();
          v137(v136);
          v233 = 0;
          v78 = v86;
          v79 = v226;
        }

        else
        {

          v132 = sub_1C43FEDF8();
          sub_1C46B6850(v132, v133);
          swift_setAtWritableKeyPath();

          v134 = sub_1C4423B08();
          v135(v134);
          v78 = v86;
          v85 = v229;
          v79 = v226;
        }
      }

      else
      {
        v102 = sub_1C4413ED8();
        v103(v102);

        v78 = v86;
      }
    }

    while (1)
    {
      v86 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      if (v86 >= v84)
      {
LABEL_83:

        sub_1C440962C(&v236);
        return;
      }

      v83 = *(v80 + 8 * v86);
      ++v78;
      if (v83)
      {
        goto LABEL_30;
      }
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v242 == 1)
  {
    v37 = 0;
    v38 = v240;
    sub_1C441D1B0();
    v41 = v40 & v39;
    v43 = (v42 + 63) >> 6;
    v232 = (v22 + 8);
    *&v45 = *(v44 + 2648);
    v222 = v45;
    v46 = v224;
    v47 = v225;
    v226 = v38;
    if ((v40 & v39) != 0)
    {
      goto LABEL_8;
    }

    while (1)
    {
      v48 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v48 >= v43)
      {
        goto LABEL_83;
      }

      v41 = *(v7 + 8 * v48);
      ++v37;
      if (v41)
      {
        v37 = v48;
        do
        {
LABEL_8:
          v49 = __clz(__rbit64(v41)) | (v37 << 6);
          v50 = *(v38 + 56);
          v51 = (*(v38 + 48) + 16 * v49);
          v52 = *v51;
          v53 = v51[1];
          v54 = *(v50 + 8 * v49);
          swift_bridgeObjectRetain_n();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

          sub_1C4EFDAC8();
          if (*(v46 + 16) && (sub_1C457AAB4(), (v56 & 1) != 0))
          {
            v227 = &v212;
            v57 = *(*(v46 + 56) + 8 * v55);
            MEMORY[0x1EEE9AC00](v55);
            *(&v212 - 2) = v228;
            *(&v212 - 1) = v47;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            sub_1C445BD24();
            v233 = v47;
            if (v47)
            {
              v223 = v54;
              v221 = v52;

              if (qword_1EDDFECB0 != -1)
              {
                sub_1C44064A8();
                swift_once();
              }

              v58 = sub_1C4F00978();
              sub_1C43FCEE8(v58, qword_1EDDFECB8);
              sub_1C44B8F2C();
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

              v59 = v233;
              v60 = v233;
              v61 = sub_1C4F00968();
              v62 = sub_1C4F01CD8();

              LODWORD(v227) = v62;
              if (os_log_type_enabled(v61, v62))
              {
                sub_1C4485D10();
                v235[0] = sub_1C447F928();
                sub_1C44305CC(&v245);
                v63 = sub_1C447CD80(&v244);
                v65 = sub_1C4461C64(v63, v64);

                *(v57 + 4) = v65;
                v66 = sub_1C4440FE4();
                sub_1C4440978(v66);
                v67 = sub_1C442B9BC();
                v69 = sub_1C441D828(v67, v53, v68);

                *(v57 + 24) = v69;
                *(v57 + 32) = v65;
                v70 = v233;
                v234 = v233;
                v71 = v233;
                sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
                v72 = sub_1C448037C();
                v74 = sub_1C4461C64(v72, v73);

                *(v57 + 34) = v74;
                sub_1C44149D4(&v244);
                sub_1C4495CC4(v75, v76, v77, "%s: Failed to serialize feature %s::%s: %s");
                swift_arrayDestroy();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C43FBCFC();
                MEMORY[0x1C6942830]();
                sub_1C44512C4();
              }

              else
              {

                sub_1C44512C4();
              }

              v233 = 0;
            }

            else
            {
              sub_1C4406834();

              sub_1C443EEEC();
              swift_setAtWritableKeyPath();
            }

            v46 = v224;
            v47 = v225;
          }

          else
          {
          }

          v41 &= v41 - 1;
          (*v232)(v47, v230);
          v38 = v226;
        }

        while (v41);
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  v215 = v16;
  v138 = 0;
  v139 = v241;
  sub_1C441D1B0();
  v142 = v141 & v140;
  v144 = (v143 + 63) >> 6;
  v221 = (v22 + 8);
  *&v146 = *(v145 + 2648);
  v214 = v146;
  v147 = v229;
  v226 = v139;
  v148 = v224;
  *&v220 = v144;
  v219 = v7;
  if ((v141 & v140) == 0)
  {
    goto LABEL_47;
  }

  do
  {
LABEL_51:
    v150 = (v138 << 10) | (16 * __clz(__rbit64(v142)));
    v151 = (*(v139 + 48) + v150);
    v152 = *v151;
    v153 = v151[1];
    v154 = *(v139 + 56) + v150;
    v155 = *v154;
    v156 = *(v154 + 8);
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v223 = v155;

    *&v222 = v156;

    v218 = v152;
    v225 = v153;
    sub_1C4EFDAC8();
    v157 = v227;
    if (!v227[2])
    {
      v144 = v220;
LABEL_58:
      v7 = v219;
      goto LABEL_69;
    }

    sub_1C457AAB4();
    v144 = v220;
    if ((v159 & 1) == 0)
    {
      v148 = v224;
      goto LABEL_58;
    }

    v216 = sub_1C4459B20(v158);
    v7 = v219;
    if (v157 && (sub_1C457AAB4(), (v161 & 1) != 0))
    {
      v162 = v157[7] + 16 * v160;
      v147 = *v162;
      v163 = *(v162 + 8);
      v164 = sub_1C43FEDF8();
      sub_1C46631DC(v164, v165);
    }

    else
    {
      v166 = sub_1C43FEDF8();
      sub_1C46B6838(v166, v167);
    }

    v168 = sub_1C43FEDF8();
    v169 = v216;
    v170 = v233;
    sub_1C46D43EC(v168, v171, v172);
    v233 = v170;
    v173 = sub_1C43FEDF8();
    if (v170)
    {
      sub_1C46B6850(v173, v174);
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v175 = sub_1C4F00978();
      sub_1C43FCEE8(v175, qword_1EDDFECB8);
      sub_1C44B8F2C();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v176 = v233;
      v177 = v233;
      v178 = sub_1C4F00968();
      sub_1C4F01CD8();

      if (sub_1C4440D08())
      {
        sub_1C4485D10();
        v235[0] = sub_1C447F928();
        sub_1C44305CC(v239);
        v179 = sub_1C447CD80(v238);
        sub_1C4461C64(v179, v180);
        sub_1C4460618();
        *(v147 + 4) = v176;
        *(v147 + 12) = 2080;
        *(v147 + 14) = sub_1C441D828(v231, v229, v235);
        *(v147 + 22) = 2080;
        *(v147 + 24) = sub_1C441D828(v218, v225, v235);
        *(v147 + 32) = 2080;
        v234 = v176;
        v181 = v176;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v182 = sub_1C448037C();
        sub_1C4461C64(v182, v183);
        sub_1C4460618();
        *(v147 + 34) = v176;
        sub_1C44149D4(v238);
        sub_1C4495CC4(v184, v185, v186, "%s: Failed to serialize feature %s::%s: %s");
        swift_arrayDestroy();
        v187 = sub_1C43FEDE8();
        MEMORY[0x1C6942830](v187);
        v147 = v229;
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      else
      {
      }

      v233 = 0;
    }

    else
    {
      sub_1C46B6850(v173, v174);
      swift_setAtWritableKeyPath();

      v147 = v229;
    }

    v139 = v226;
    v148 = v224;
LABEL_69:
    if (v148[2] && (sub_1C457AAB4(), (v189 & 1) != 0))
    {
      v147 = *(v148[7] + 8 * v188);
      MEMORY[0x1EEE9AC00](v188);
      v190 = v232;
      *(&v212 - 2) = v228;
      *(&v212 - 1) = v190;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445BD24();
      v233 = v148;
      if (v148)
      {

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v191 = sub_1C4F00978();
        sub_1C43FCEE8(v191, qword_1EDDFECB8);
        sub_1C44B8F2C();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v192 = v228;

        v193 = v233;
        v194 = v233;
        v195 = sub_1C4F00968();
        v196 = sub_1C4F01CD8();

        LODWORD(v216) = v196;
        if (sub_1C4440D08())
        {
          sub_1C4485D10();
          v213 = sub_1C447F928();
          v235[0] = v213;
          sub_1C44305CC(v239);
          v197 = sub_1C447CD80(v237);
          sub_1C4461C64(v197, v198);
          v199 = v233;
          sub_1C4460618();
          *(v147 + 4) = v193;
          v200 = sub_1C4440FE4();
          sub_1C4440978(v200);
          v202 = sub_1C441D828(v218, v225, v201);

          *(v147 + 24) = v202;
          *(v147 + 32) = v192;
          v203 = v199;
          v234 = v199;
          v204 = v199;
          sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
          v205 = sub_1C448037C();
          v207 = sub_1C4461C64(v205, v206);

          *(v147 + 34) = v207;
          sub_1C44149D4(v237);
          sub_1C4495CC4(v208, v209, v210, "%s: Failed to serialize feature %s::%s: %s");
          swift_arrayDestroy();
          v211 = sub_1C43FEDE8();
          MEMORY[0x1C6942830](v211);
          v147 = v229;
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();

          sub_1C44512C4();
        }

        else
        {

          sub_1C44512C4();
        }

        v233 = 0;
      }

      else
      {
        sub_1C4406834();

        sub_1C443EEEC();
        swift_setAtWritableKeyPath();

        sub_1C44512C4();
        v147 = v229;
      }

      v139 = v226;
      v148 = v224;
    }

    else
    {

      sub_1C44512C4();
    }

    v142 &= v142 - 1;
    (*v221)(v232, v230);
  }

  while (v142);
LABEL_47:
  while (1)
  {
    v149 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      break;
    }

    if (v149 >= v144)
    {
      goto LABEL_83;
    }

    v142 = *(v7 + 8 * v149);
    ++v138;
    if (v142)
    {
      v138 = v149;
      goto LABEL_51;
    }
  }

LABEL_86:
  __break(1u);
}

uint64_t sub_1C46B4074@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = *(a2 + 72);
  v10 = *(a2 + 80);
  v11 = sub_1C465C1D4(a3, *(a2 + 64));
  if (v12 == 0xFF)
  {
    sub_1C46B6838(v9, v10);
    v13 = v9;
    v14 = v10;
  }

  else
  {
    v13 = v11;
    v14 = v12;
  }

  sub_1C46D43EC(v13, v14, a5);
  result = sub_1C46B6850(v13, v14);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_1C46B412C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);

  sub_1C46B6850(v6, v7);
  sub_1C440962C((v0 + 88));
  sub_1C46B5C54(v0 + qword_1EC151B98, type metadata accessor for BehaviorDigestTaskIdentifier);
  v8 = *(v0 + qword_1EC0BB058 + 8);
  v9 = *(v0 + qword_1EC0BB058 + 16);
  v10 = *(v0 + qword_1EC0BB058 + 24);
  v11 = *(v0 + qword_1EC0BB058 + 32);
  v12 = *(v0 + qword_1EC0BB058 + 40);
  v13 = *(v0 + qword_1EC0BB058 + 48);
  v14 = *(v0 + qword_1EC0BB058 + 56);
  sub_1C46B6AD4(*(v0 + qword_1EC0BB058));
  v15 = *(v0 + qword_1EC0BB060);

  v16 = *(v0 + qword_1EC0BB068);

  v17 = *(v0 + qword_1EC151BA0);

  return v0;
}

uint64_t sub_1C46B4220(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C46B4294(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C46B42D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1C46B432C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C46B436C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46B43CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C46B4414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46B4450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C46B44A0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1C46B4504()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C46AD3AC();
}

void sub_1C46B4598(uint64_t a1, uint64_t a2)
{
  *&v129 = a2;
  v132 = sub_1C4EFDAF8();
  v2 = *(v132 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v5 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46AA75C();
  v7 = v6;
  sub_1C456902C(&qword_1EC0BAB10, &qword_1C4F16C20);
  v8 = sub_1C4F02538();
  v9 = v8;
  v10 = 0;
  v11 = *(v7 + 64);
  v117 = v7 + 64;
  v12 = 1 << *(v7 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v131 = v2 + 16;
  v120 = v2;
  v130 = (v2 + 8);
  v126 = v8 + 64;
  v124 = v8;
  v119 = v7;
  v118 = v15;
  if ((v13 & v11) != 0)
  {
LABEL_4:
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_10;
  }

LABEL_5:
  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v10 >= v15)
    {
      break;
    }

    v18 = *(v117 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v7 + 56) + 8 * v19);
      v24 = *(v23 + 16);
      if (v24)
      {
        v123 = *v20;
        v125 = v19;
        v127 = v14;
        v128 = v10;
        v134[0] = MEMORY[0x1E69E7CC0];
        *&v122 = v21;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44CD9C0();
        v25 = v23;
        v26 = v134[0];
        v27 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v121 = v25;
        v28 = v25 + v27;
        v133 = *(v120 + 72);
        v29 = *(v120 + 16);
        do
        {
          v30 = v132;
          v29(v5, v28, v132);
          v31 = sub_1C4EFDAE8();
          v33 = v32;
          (*v130)(v5, v30);
          v134[0] = v26;
          v34 = *(v26 + 16);
          if (v34 >= *(v26 + 24) >> 1)
          {
            sub_1C44CD9C0();
            v26 = v134[0];
          }

          *(v26 + 16) = v34 + 1;
          v35 = v26 + 16 * v34;
          *(v35 + 32) = v31;
          *(v35 + 40) = v33;
          v28 += v133;
          --v24;
        }

        while (v24);

        v9 = v124;
        v7 = v119;
        v10 = v128;
        v15 = v118;
        v14 = v127;
        v19 = v125;
        v22 = v123;
        v36 = v122;
      }

      else
      {
        v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v26 = MEMORY[0x1E69E7CC0];
      }

      *(v126 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v37 = (v9[6] + 16 * v19);
      *v37 = v22;
      v37[1] = v36;
      *(v9[7] + 8 * v19) = v26;
      v38 = v9[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_83;
      }

      v9[2] = v40;
      if (v14)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  v41 = v129;
  v42 = sub_1C4F02538();
  v44 = 0;
  v47 = *(v41 + 64);
  v46 = v41 + 64;
  v45 = v47;
  v48 = 1 << *(v46 - 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v45;
  v51 = (v48 + 63) >> 6;
  v125 = v42;
  v133 = v42 + 64;
  if ((v49 & v45) != 0)
  {
    do
    {
      v52 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_29:
      v57 = v52 | (v44 << 6);
      v58 = (*(v129 + 48) + 16 * v57);
      v60 = *v58;
      v59 = v58[1];
      sub_1C46B69E8(*(v129 + 56) + 56 * v57, v134);
      sub_1C46B69E8(v134, &v138);
      if (v139 && v139 != 1)
      {
        sub_1C460986C(&v138, &v135);
      }

      else
      {
        sub_1C441D670(&v138, &v135);
      }

      v61 = v136;
      v62 = v137;
      v63 = sub_1C4409678(&v135, v136);
      v141 = v61;
      v142 = *(v62 + 8);
      v64 = sub_1C4422F90(&v140);
      (*(*(v61 - 8) + 16))(v64, v63, v61);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440962C(&v135);
      v65 = v141;
      v66 = v142;
      sub_1C4409678(&v140, v141);
      v67 = (*(v66 + 8))(v65, v66);
      sub_1C46B6A20(v134);
      sub_1C440962C(&v140);
      *(v133 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      v68 = v125;
      v69 = (*(v125 + 48) + 16 * v57);
      *v69 = v60;
      v69[1] = v59;
      *(*(v68 + 56) + 8 * v57) = v67;
      v70 = *(v68 + 16);
      v39 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v39)
      {
        goto LABEL_84;
      }

      *(v68 + 16) = v71;
    }

    while (v50);
  }

  v53 = v44;
  v54 = v126;
  v55 = v125;
  while (1)
  {
    v44 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_80;
    }

    if (v44 >= v51)
    {
      break;
    }

    v56 = *(v46 + 8 * v44);
    ++v53;
    if (v56)
    {
      v52 = __clz(__rbit64(v56));
      v50 = (v56 - 1) & v56;
      goto LABEL_29;
    }
  }

  v72 = 0;
  v73 = v124;
  v74 = 1 << *(v124 + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v76 = v75 & *(v124 + 64);
  v77 = (v74 + 63) >> 6;
  p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
  *&v43 = 136315138;
  v122 = v43;
  *&v43 = 136315394;
  v129 = v43;
  v123 = v77;
  if (!v76)
  {
LABEL_41:
    while (1)
    {
      v79 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_81;
      }

      if (v79 >= v77)
      {

        return;
      }

      v76 = *(v54 + 8 * v79);
      ++v72;
      if (v76)
      {
        goto LABEL_44;
      }
    }
  }

  while (2)
  {
    v79 = v72;
LABEL_44:
    v128 = (v76 - 1) & v76;
    v127 = v79;
    v80 = __clz(__rbit64(v76)) | (v79 << 6);
    v81 = *(v73 + 56);
    v82 = *(v73 + 48) + 16 * v80;
    v83 = *(v82 + 8);
    v130 = *v82;
    v84 = *(v81 + 8 * v80);
    v85 = *(v55 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v85)
    {
      goto LABEL_68;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v86 = sub_1C445FAA8(v130, v83);
    if ((v87 & 1) == 0)
    {

LABEL_68:
      if (p_info[406] != -1)
      {
        swift_once();
      }

      v108 = sub_1C4F00978();
      sub_1C442B738(v108, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v109 = sub_1C4F00968();
      v110 = sub_1C4F01CE8();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = v83;
        v113 = swift_slowAlloc();
        v134[0] = v113;
        *v111 = v122;
        v114 = sub_1C441D828(v130, v112, v134);

        *(v111 + 4) = v114;
        _os_log_impl(&dword_1C43F8000, v109, v110, "HistoricalFeatureCollector: Signal %s not available. It will not be collected. Provide this signal in the HistoricalFeatureCollector initializer.", v111, 0xCu);
        sub_1C440962C(v113);
        MEMORY[0x1C6942830](v113, -1, -1);
        v115 = v111;
        p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
        MEMORY[0x1C6942830](v115, -1, -1);
      }

      else
      {
      }

LABEL_74:
      v72 = v127;
LABEL_75:
      v77 = v123;
      v76 = v128;
      if (!v128)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  v133 = *(v84 + 16);
  if (!v133)
  {

    goto LABEL_74;
  }

  v88 = *(*(v55 + 56) + 8 * v86);
  v132 = v84 + 32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = 0;
  v131 = v84;
  while (v89 < *(v84 + 16))
  {
    v90 = (v132 + 16 * v89);
    v91 = *v90;
    v92 = v90[1];
    if (*(v88 + 16))
    {
      v93 = *(v88 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v94 = sub_1C4F02B68();
      v95 = ~(-1 << *(v88 + 32));
      while (1)
      {
        v96 = v94 & v95;
        if (((*(v88 + 56 + (((v94 & v95) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v94 & v95)) & 1) == 0)
        {
          break;
        }

        v97 = (*(v88 + 48) + 16 * v96);
        if (*v97 != v91 || v97[1] != v92)
        {
          v99 = sub_1C4F02938();
          v94 = v96 + 1;
          if ((v99 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    if (p_info[406] != -1)
    {
      swift_once();
    }

    v100 = sub_1C4F00978();
    sub_1C442B738(v100, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v101 = sub_1C4F00968();
    v102 = v83;
    v103 = sub_1C4F01CE8();

    if (os_log_type_enabled(v101, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v134[0] = v105;
      *v104 = v129;
      *(v104 + 4) = sub_1C441D828(v130, v102, v134);
      *(v104 + 12) = 2080;
      v106 = sub_1C441D828(v91, v92, v134);

      *(v104 + 14) = v106;
      _os_log_impl(&dword_1C43F8000, v101, v103, "HistoricalFeatureCollector: Signal %s does not provide feature %s. It will not be collected. Ensure that the signal provides this feature.", v104, 0x16u);
      swift_arrayDestroy();
      v107 = v105;
      p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
      MEMORY[0x1C6942830](v107, -1, -1);
      MEMORY[0x1C6942830](v104, -1, -1);
    }

    else
    {
    }

    v83 = v102;
    v84 = v131;
LABEL_65:
    if (++v89 == v133)
    {

      v72 = v127;
      v73 = v124;
      v54 = v126;
      v55 = v125;
      goto LABEL_75;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_1C46B5104(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    sub_1C4868084(a2);
    if (v5)
    {
      if (*(a1 + 16))
      {
        sub_1C445FAA8(v4, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (v3)
  {

    sub_1C46B63CC(a1, a2);
  }
}

void sub_1C46B51A0()
{
  sub_1C43FE96C();
  sub_1C441B34C(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1C43FCDF8(AssociatedTypeWitness);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = sub_1C442500C();
  v10(v9);
  if (!v0)
  {
    sub_1C43FE5F8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C44586A4(AssociatedConformanceWitness);
    (*(v6 + 8))(v1, AssociatedTypeWitness);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C46B5298()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C442F080;

  return sub_1C46AEBAC();
}

uint64_t sub_1C46B5328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C46B53F4;

  return (sub_1C49827A0)(a1, a2, a3);
}

uint64_t sub_1C46B53F4()
{
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_1C46B5508()
{
  result = qword_1EC0BB170;
  if (!qword_1EC0BB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB170);
  }

  return result;
}

uint64_t sub_1C46B555C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v10 = *(v44 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v34 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 + 16);
  if (*(v19 + 16) && (result = sub_1C445FAA8(a1, a2), (v20 & 1) != 0))
  {
    v21 = *(*(v19 + 56) + 8 * result);
    v22 = a3[3];
    v23 = a3[4];
    v37 = a1;
    v38 = v23;
    v39 = v22;
    v40 = a2;
    v24 = sub_1C4409678(a3, v22);
    v25 = *(a4 + 32);
    v26 = *(v25 + 16);
    if (v26)
    {
      v34[1] = v24;
      v36 = a5;
      v45 = MEMORY[0x1E69E7CC0];
      v35 = v21;
      swift_bridgeObjectRetain_n();
      sub_1C459D270();
      v27 = v45;
      v28 = v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v29 = *(v10 + 72);
      v41 = v14 + 32;
      v42 = v29;
      do
      {
        v30 = v43;
        sub_1C445FFA8(v28, v43, &qword_1EC0B84B8, &unk_1C4F0D4F0);
        (*(v14 + 16))(v18, v30 + *(v44 + 36), v13);
        sub_1C4420C3C(v30, &qword_1EC0B84B8, &unk_1C4F0D4F0);
        v45 = v27;
        v31 = *(v27 + 16);
        if (v31 >= *(v27 + 24) >> 1)
        {
          sub_1C459D270();
          v27 = v45;
        }

        *(v27 + 16) = v31 + 1;
        (*(v14 + 32))(v27 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v31, v18, v13);
        v28 += v42;
        --v26;
      }

      while (v26);
      v32 = v35;
      a5 = v36;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v32 = v21;
    }

    sub_1C46B5A58();

    v46(&v47, v33);

    *a5 = v32;
    *(a5 + 8) = v47;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }

  return result;
}

void sub_1C46B5A58()
{
  sub_1C43FE96C();
  sub_1C441B34C(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1C43FCDF8(AssociatedTypeWitness);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = sub_1C442500C();
  v10(v9);
  if (!v0)
  {
    sub_1C43FE5F8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C44586A4(AssociatedConformanceWitness);
    (*(v6 + 8))(v1, AssociatedTypeWitness);
  }

  sub_1C43FBC80();
}

double sub_1C46B5B50@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = *(v1 + 4);
  sub_1C46AC81C(v7);
  v13 = v10;
  sub_1C4420C3C(&v13, &qword_1EC0BB178, &qword_1C4F1E128);
  v14 = *(&v10 + 1);
  sub_1C4420C3C(&v14, &qword_1EC0BB180, &unk_1C4F1E130);
  v15 = v11;
  sub_1C4420C3C(&v15, &qword_1EC0BB188, &unk_1C4F32380);
  v16 = *(&v11 + 1);
  sub_1C4420C3C(&v16, &qword_1EC0BB188, &unk_1C4F32380);
  v17 = v12;
  sub_1C4420C3C(&v17, &qword_1EC0BB190, &qword_1C4F1E140);
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C46B5C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_1C46B5CAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v6 = sub_1C43FE5F8();
    sub_1C46B5EFC(v6, v7, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_1C46B5D48(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v14 = sub_1C43FE5F8();
      v4 = sub_1C46B5CAC(v14, v15, v4, a2);
      v16 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v16);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  sub_1C4501018(0, v7, v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C43FE5F8();
  sub_1C46B5EFC(v9, v10, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v11;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1C46B5EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v7 = a3 + 64;
  v6 = *(a3 + 64);
  v8 = *(a3 + 32);
  sub_1C43FD030();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  while (v11)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v17 = v14 | (v5 << 6);
    if (*(a4 + 16))
    {
      v18 = *(*(a3 + 56) + 8 * v17);
      v19 = (*(a3 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445FAA8(v20, v21);
      v23 = v22;

      if (v23)
      {
        *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
LABEL_14:
          sub_1C4586E60();
          sub_1C4416A80();

          return;
        }
      }
    }
  }

  v15 = v5;
  while (1)
  {
    v5 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v5 >= v13)
    {
      goto LABEL_14;
    }

    v16 = *(v7 + 8 * v5);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C46B6064(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = *v2;
  result = sub_1C4C62C14(a1, a2, v18);
  if (!v3)
  {
    v38 = a2;
    if (v20)
    {
      return *(v18 + 16);
    }

    else
    {
      v37 = a1;
      v35 = v4;
      v21 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v22 = v18;
        v36 = v8;
        while (1)
        {
          v23 = *(v22 + 16);
          if (v21 == v23)
          {
            break;
          }

          if (v21 >= v23)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v41 = result;
          v42 = v22;
          v24 = v12;
          v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v25 = v22 + v39;
          v26 = *(v8 + 72);
          v43 = v21;
          v40 = v26 * v21;
          sub_1C445FFA8(v22 + v39 + v26 * v21, v17, &qword_1EC0B89E8, &unk_1C4F3E630);
          v27 = v37(v17);
          sub_1C4420C3C(v17, &qword_1EC0B89E8, &unk_1C4F3E630);
          if (v27)
          {
            v8 = v36;
            v12 = v24;
            result = v41;
            v22 = v42;
            v28 = v43;
          }

          else
          {
            result = v41;
            v28 = v43;
            if (v43 == v41)
            {
              v8 = v36;
              v12 = v24;
              v22 = v42;
            }

            else
            {
              if ((v41 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v29 = *(v42 + 16);
              if (v41 >= v29)
              {
                goto LABEL_24;
              }

              v30 = v26 * v41;
              result = sub_1C445FFA8(v25 + v30, v15, &qword_1EC0B89E8, &unk_1C4F3E630);
              if (v43 >= v29)
              {
                goto LABEL_25;
              }

              v31 = v25 + v40;
              v12 = v24;
              sub_1C445FFA8(v31, v24, &qword_1EC0B89E8, &unk_1C4F3E630);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C48347EC(v42);
                v42 = v34;
              }

              v32 = v42;
              v33 = v42 + v39;
              result = sub_1C46B6894(v12, v42 + v39 + v30);
              if (v43 >= *(v32 + 16))
              {
                goto LABEL_26;
              }

              sub_1C46B6894(v15, v33 + v40);
              v28 = v43;
              v8 = v36;
              *v35 = v32;
              result = v41;
              v22 = v32;
            }

            ++result;
          }

          v21 = v28 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C46B63CC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C4501018(0, v5, v6);
    v7 = sub_1C46B6558(v6, v5, v3, a2);
  }

  else
  {
    v10 = swift_slowAlloc();
    v7 = sub_1C46B6748(v10, v5, sub_1C46B67FC);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

uint64_t sub_1C46B6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v34 = a4 + 56;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v12 = 0;
  v31 = v9;
  v32 = v5;
  do
  {
    v29 = v11;
LABEL_6:
    while (2)
    {
      if (!v8)
      {
        while (1)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v13 >= v9)
          {
            v28 = 0;
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v13);
          ++v12;
          if (v8)
          {
            v12 = v13;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_11:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = (*(a3 + 48) + ((v12 << 10) | (16 * v14)));
      v17 = *v15;
      v16 = v15[1];
      v18 = *(a4 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v19 = sub_1C4F02B68();
      v20 = ~(-1 << *(a4 + 32));
      do
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = 1 << (v19 & v20);
        if ((v23 & *(v34 + 8 * v22)) == 0)
        {

          v9 = v31;
          v5 = v32;
          goto LABEL_6;
        }

        v24 = (*(a4 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_1C4F02938();
        v19 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v31;
      v27 = *(a1 + 8 * v22);
      *(a1 + 8 * v22) = v27 | v23;
      v5 = v32;
      if ((v27 & v23) != 0)
      {
        continue;
      }

      break;
    }

    v11 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_27;
    }
  }

  while (v11 != *(a4 + 16));
  v28 = 1;
LABEL_25:

  return v28;
}

void *sub_1C46B6748(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1C46B67C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C46B6558(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1C46B6838(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1C46631DC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1C46B6850(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1C46B6868(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1C46B6868(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C46B6894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C46B6904()
{
  result = qword_1EC0BB1E0;
  if (!qword_1EC0BB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB1E0);
  }

  return result;
}

uint64_t sub_1C46B6958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46B69A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50(v5);
  v7 = *(v6 + 32);
  v8 = sub_1C43FBC98();
  v9(v8);
  return v4;
}

uint64_t sub_1C46B6A84@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1C451C9A0(a1);
}

uint64_t sub_1C46B6AD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C46B6B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1C43FCE50(v4);
  v6 = *(v5 + 16);
  v7 = sub_1C43FBC98();
  v8(v7);
  return a2;
}

uint64_t sub_1C46B6BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1C46B6C50()
{
  type metadata accessor for Configuration();
  if (v0 <= 0x3F)
  {
    sub_1C46B6CDC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C46B6CDC()
{
  if (!qword_1EC0BB208)
  {
    sub_1C4461BB8(255, &qword_1EDDDBB00, 0x1E69A9EA8);
    v0 = sub_1C4F017A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0BB208);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HistoricalFeatureCollector.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C46B6DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46B6E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C46B6E88(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1C46B6EC4()
{
  result = qword_1EC0BB210;
  if (!qword_1EC0BB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB210);
  }

  return result;
}

uint64_t sub_1C46B6F68(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

id sub_1C46B6F7C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_1C44F920C();
    v4 = sub_1C4637EC8();
    v5 = *(v0 + 16);
    *(v3 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_1C46B6FDC(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  sub_1C4F02248();

  MEMORY[0x1C6940010](a1, a2);

  MEMORY[0x1C6940010](0x6669746E6564692ELL, 0xEB00000000726569);
  v2[3] = 0xD000000000000017;
  v2[4] = 0x80000001C4F920E0;
  return v2;
}

uint64_t sub_1C46B7098()
{
  v1 = v0;
  v2 = sub_1C4EF9D38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C46B6F7C();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = sub_1C4F01108();
  v11 = [v7 stringForKey_];

  if (v11)
  {
    v12 = sub_1C4F01138();

    return v12;
  }

  else
  {
    sub_1C4EF9058();
    v14 = sub_1C4EF9CF8();
    (*(v3 + 8))(v6, v2);
    v15 = *(v1 + 16);
    v16 = sub_1C4F01108();
    v17 = sub_1C4F01108();
    [v15 setObject:v16 forKey:v17];

    return v14;
  }
}

void sub_1C46B7244()
{
  v1 = sub_1C46B6F7C();
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = sub_1C4F01108();
  [v1 setURL:0 forKey:v4];
}

uint64_t sub_1C46B72AC()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1C46B72D4()
{
  sub_1C46B72AC();

  return swift_deallocClassInstance();
}

uint64_t Date.dateComponentsJSONString(isAllDay:calendar:)(char a1)
{
  v2 = sub_1C4EF9648();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  if (a1)
  {
    if (qword_1EDDE6518 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDE2CDC0;
  }

  else
  {
    if (qword_1EDDF4920 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDE2D428;
  }

  v12 = *v11;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9EA8();

  v13 = sub_1C44CDAD4();
  (*(v5 + 8))(v10, v2);
  return v13;
}

uint64_t sub_1C46B7494()
{
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v0 = sub_1C4EF9F68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6969AC0], v0);
  v6(v5 + v2, *MEMORY[0x1E6969A68], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E6969A78], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E6969A48], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x1E6969A58], v0);
  qword_1EDE2D420 = v4;
  return result;
}

void sub_1C46B760C()
{
  if (qword_1EDDF45A0 != -1)
  {
    sub_1C442C700();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4597E5C();
  qword_1EDE2CDC0 = v0;
}

void sub_1C46B7658()
{
  if (qword_1EDDF45A0 != -1)
  {
    sub_1C442C700();
  }

  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v0 = sub_1C4EF9F68();
  sub_1C43FCDF8(v0);
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0C890;
  v7 = *(v2 + 104);
  v7(v6 + v5, *MEMORY[0x1E6969A88], v0);
  v7(v6 + v5 + v4, *MEMORY[0x1E6969A98], v0);
  v7(v6 + v5 + 2 * v4, *MEMORY[0x1E6969A00], v0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3D34(v6);
  sub_1C4597E5C();
  qword_1EDE2D428 = v8;
}

uint64_t type metadata accessor for DateFetcher()
{
  result = qword_1EDDF9390;
  if (!qword_1EDDF9390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46B784C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for DecayingHistogramState()
{
  result = qword_1EDDF3E98;
  if (!qword_1EDDF3E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C46B792C()
{
  sub_1C4461BB8(319, &qword_1EDDFA4B0, 0x1E69A4688);
  if (v0 <= 0x3F)
  {
    sub_1C45C2C2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C46B79C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  sub_1C442C720();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = sub_1C4F01F48();
  sub_1C43FCDF8(v22);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1C440BAA8(&v20 - v15, 1, 1, AssociatedTypeWitness);
  v21 = a2;
  v17 = v23;
  sub_1C46B7D18(v16, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5);
  if (v17)
  {
    (*(v11 + 8))(v16, v22);
  }

  else
  {
    v19 = v18;
    v23 = a5;
    (*(v11 + 8))(v16, v22);
    if (v19 != 0.0)
    {
      sub_1C46B7D18(v20, v21, a3 | ((HIDWORD(a3) & 1) << 32), a4, v23);
    }
  }
}

void sub_1C46B7B6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v22 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1C4F01F48();
  sub_1C43FCDF8(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1C440BAA8(&v21 - v15, 1, 1, AssociatedTypeWitness);
  v25 = 1;
  v17 = v24;
  sub_1C46B7D18(a2, v16, 0x100000000, a4, a5);
  if (v17)
  {
    (*(v11 + 8))(v16, v9);
  }

  else
  {
    v19 = v18;
    v20 = v23;
    (*(v11 + 8))(v16, v9);
    if (v19 != 0.0)
    {
      sub_1C46B7D18(a2, v22, v20 | ((HIDWORD(v20) & 1) << 32), a4, a5);
    }
  }
}

void sub_1C46B7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a3;
  v72 = a2;
  v74 = a1;
  v7 = type metadata accessor for DecayingHistogramState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C442C720();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1C4F01F48();
  v12 = sub_1C43FCDF8(v11);
  v70 = v13;
  v71 = v12;
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64[-v17];
  v73 = AssociatedTypeWitness;
  v67 = *(AssociatedTypeWitness - 8);
  v19 = *(v67 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v64[-v21];
  sub_1C442C720();
  v22 = swift_getAssociatedTypeWitness();
  v23 = sub_1C4F01F48();
  sub_1C43FCDF8(v23);
  v25 = v24;
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64[-v29];
  v31 = *(v22 - 8);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v64[-v34];
  (*(v25 + 16))(v30, v74, v23);
  if (sub_1C44157D4(v30, 1, v22) == 1)
  {
    v74 = a5;
    (*(v25 + 8))(v30, v23);
    v65 = 0xFFFF;
    v36 = v75;
  }

  else
  {
    (*(v31 + 32))(v35, v30, v22);
    v37 = v75;
    v38 = (*(a5 + 72))(v35, a4, a5);
    v36 = v37;
    if (v37)
    {
      (*(v31 + 8))(v35, v22);
      return;
    }

    v65 = v38;
    v74 = a5;
    (*(v31 + 8))(v35, v22);
  }

  v40 = v70;
  v39 = v71;
  (*(v70 + 16))(v18, v72, v71);
  v41 = v73;
  v42 = a4;
  if (sub_1C44157D4(v18, 1, v73) == 1)
  {
    (*(v40 + 8))(v18, v39);
    v43 = -1;
    v44 = v74;
  }

  else
  {
    v45 = v67;
    v46 = v66;
    (*(v67 + 32))();
    v44 = v74;
    v47 = (*(v74 + 80))(v46, v42, v74);
    if (v36)
    {
      (*(v45 + 8))(v46, v41);
      return;
    }

    v43 = v47;
    (*(v45 + 8))(v46, v41);
  }

  v48 = *(v44 + 48);
  if ((v68 & 0x100000000) != 0)
  {
    v59 = v69;
    v60 = sub_1C440BB4C();
    v61(v60);
    v53 = *v59;
    sub_1C46B8D58(v59);
    [v53 lookupUnsmoothedA:v65 b:v43];
  }

  else
  {
    v49 = 1.0 / *&v68;
    v50 = v69;
    v51 = sub_1C440BB4C();
    v52(v51);
    v53 = *v50;
    sub_1C46B8D58(v50);
    v54 = *(v44 + 32);
    v55 = sub_1C440BB4C();
    v57 = v56(v55);
    *&v58 = v49;
    [v53 lookupSmoothedWithBucketCount:v57 distanceScale:v65 a:v43 b:v58];
  }

  v62 = sub_1C440BB4C();
  sub_1C46B8274(v62, v63);
}

double sub_1C46B8274(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for DecayingHistogramState();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EF9CD8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  v22 = *(a2 + 48);
  v30 = a1;
  v31 = v2;
  v22(a1, a2);
  sub_1C4467FE0(&v13[*(v10 + 28)], v8);
  sub_1C46B8D58(v13);
  if (sub_1C44157D4(v8, 1, v14) == 1)
  {
    sub_1C44686E4(v8);
    return 1.0;
  }

  else
  {
    (*(v15 + 32))(v21, v8, v14);
    v24 = v30;
    v25 = (*(a2 + 40))(v30, a2);
    v25();

    v26 = (*(a2 + 24))(v24, a2);
    sub_1C4EF9B78();
    v23 = 1.0;
    if (v27 > 0.0)
    {
      v23 = exp2(-v27 / v26);
    }

    v28 = *(v15 + 8);
    v28(v19, v14);
    v28(v21, v14);
  }

  return v23;
}

uint64_t sub_1C46B8530()
{
  v0 = sub_1C4F025D8();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46B8584(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6172676F74736968;
  }
}

uint64_t sub_1C46B85CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C46863F4();
}

uint64_t sub_1C46B85F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C46B8530();
  *a2 = result;
  return result;
}

uint64_t sub_1C46B8620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46B8584(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C46B8654@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46B8530();
  *a1 = result;
  return result;
}

uint64_t sub_1C46B8688(uint64_t a1)
{
  v2 = sub_1C46B8DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46B86C4(uint64_t a1)
{
  v2 = sub_1C46B8DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46B8700@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = *(*(sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0) - 8) + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = sub_1C456902C(&qword_1EC0BB220, &qword_1C4F1E4D8);
  sub_1C43FCDF8(v8);
  v42 = v9;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v13 = type metadata accessor for DecayingHistogramState();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = (&v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v15 + 28);
  v19 = sub_1C4EF9CD8();
  v44 = v17;
  v45 = v18;
  sub_1C440BAA8(v17 + v18, 1, 1, v19);
  v20 = a1[3];
  v21 = a1[4];
  v43 = a1;
  sub_1C4409678(a1, v20);
  sub_1C46B8DB4();
  sub_1C4F02BC8();
  if (v2)
  {
    goto LABEL_3;
  }

  v22 = v42;
  v23 = v7;
  v48 = 0;
  sub_1C444C16C();
  sub_1C4F026C8();
  v24 = v46;
  v25 = v47;
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDFA4B0, 0x1E69A4688);
  v26 = sub_1C4F01D38();
  v39 = v24;
  v40 = v25;
  v29 = (v22 + 8);
  if (!v26)
  {
    sub_1C461B7AC();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();
    sub_1C4434000(v39, v40);
    v35 = *v29;
    v36 = sub_1C4400068();
    v37(v36);
LABEL_3:
    v27 = v44;
    sub_1C440962C(v43);
    return sub_1C44686E4(v27 + v45);
  }

  v30 = v44;
  *v44 = v26;
  LOBYTE(v46) = 1;
  sub_1C4498DE4(&unk_1EDDFCD60);
  sub_1C4F02658();
  v31 = *v29;
  v32 = sub_1C4400068();
  v33(v32);
  sub_1C4434000(v39, v40);
  sub_1C45AD734(v23, v30 + v45);
  sub_1C46B8E08(v30, v41);
  sub_1C440962C(v43);
  return sub_1C46B8D58(v30);
}

uint64_t sub_1C46B8AB8(void *a1)
{
  v3 = v1;
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1C456902C(&qword_1EC0BB228, &qword_1C4F1E4E0);
  sub_1C43FCDF8(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25[-v11];
  v13 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46B8DB4();
  sub_1C4F02BF8();
  v14 = objc_opt_self();
  v15 = *v3;
  v26[0] = 0;
  v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v26];
  v17 = v26[0];
  if (v16)
  {
    v18 = sub_1C4EF9A68();
    v20 = v19;

    v26[0] = v18;
    v26[1] = v20;
    v25[7] = 0;
    sub_1C446E5F8();
    sub_1C4F027E8();
    if (!v2)
    {
      v21 = *(type metadata accessor for DecayingHistogramState() + 20);
      LOBYTE(v26[0]) = 1;
      sub_1C4EF9CD8();
      sub_1C4498DE4(&qword_1EDDFCD80);
      sub_1C4F02778();
    }

    (*(v7 + 8))(v12, v5);
    result = sub_1C4434000(v18, v20);
  }

  else
  {
    v23 = v17;
    sub_1C4EF97A8();

    swift_willThrow();
    result = (*(v7 + 8))(v12, v5);
  }

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C46B8D58(uint64_t a1)
{
  v2 = type metadata accessor for DecayingHistogramState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C46B8DB4()
{
  result = qword_1EDDF3EC8[0];
  if (!qword_1EDDF3EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF3EC8);
  }

  return result;
}

uint64_t sub_1C46B8E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecayingHistogramState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for DecayingHistogramState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistogramError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46B9028()
{
  result = qword_1EC0BB230;
  if (!qword_1EC0BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB230);
  }

  return result;
}

unint64_t sub_1C46B9080()
{
  result = qword_1EC0BB238;
  if (!qword_1EC0BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB238);
  }

  return result;
}

unint64_t sub_1C46B90D8()
{
  result = qword_1EDDF3EB8;
  if (!qword_1EDDF3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3EB8);
  }

  return result;
}

unint64_t sub_1C46B9130()
{
  result = qword_1EDDF3EC0;
  if (!qword_1EDDF3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3EC0);
  }

  return result;
}

uint64_t type metadata accessor for Deduper()
{
  result = qword_1EDDDC078;
  if (!qword_1EDDDC078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Deduper.stageName.getter()
{
  result = sub_1C4416FB0();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t Deduper.pipelineType.getter()
{
  result = sub_1C4416FB0();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t Deduper.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for Deduper();
  *(a4 + v8[6]) = 3;
  sub_1C4400074();
  sub_1C44309B8(a1, a4);
  sub_1C4471E40(a2, a4 + v8[5]);
  result = sub_1C4471E40(a1, a4 + v8[7]);
  *(a4 + v8[8]) = v7;
  return result;
}

uint64_t Deduper.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46B9448, 0, 0);
}

uint64_t sub_1C46B9448()
{
  v20 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for Deduper();
  v3 = v1 + *(v2 + 20);
  if (*(v3 + *(type metadata accessor for Source() + 28)) == 1)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C46B9684(v4);
    v7 = *(v5 + 8);
    v7(v4, v6);
    sub_1C4EFD4C8();
    sub_1C46B9684(v4);
    v7(v4, v6);
    sub_1C4EF9AE8();
    sub_1C43FBD94();
    sub_1C464C358();
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DE10);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v0[2] = v2;
      sub_1C456902C(&qword_1EC0BA558, &qword_1C4F14288);
      v13 = sub_1C4F01198();
      v15 = sub_1C441D828(v13, v14, &v19);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v9, v10, "<%s - Skipping because Deduping is disabled for this source>", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }

  v16 = v0[6];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1C46B9684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Deduper();
  v9 = v2 + *(v8 + 28);
  v10 = *(v9 + *(type metadata accessor for PhaseStores() + 24));
  v25 = *(v2 + *(v8 + 32));
  v11 = v25;
  v12 = sub_1C4EFD548();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v14(v7, a1, v12);
  sub_1C43FBD94();
  sub_1C440BAA8(v15, v16, v17, v12);
  v18 = sub_1C44B0950(&v25);
  sub_1C4420C3C(v7, &qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C46B9844(v18, 0.99);

  v24 = v11;
  v14(v7, a1, v12);
  sub_1C43FBD94();
  sub_1C440BAA8(v19, v20, v21, v12);
  sub_1C44ABA54(&v24, v7);
  sub_1C4420C3C(v7, &qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C4B46D80();
}

uint64_t sub_1C46B9844(uint64_t a1, float a2)
{
  v4 = 0;
  v123 = sub_1C456902C(&qword_1EC0BB240, "nG\v");
  v5 = sub_1C43FBCE0(v123);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v111 - v10;
  v132 = sub_1C4EFF0C8();
  v11 = sub_1C43FCDF8(v132);
  v131 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v111 - v20;
  v130 = type metadata accessor for EntityMatch(0);
  v21 = sub_1C43FCDF8(v130);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v111 - v31;
  v134 = sub_1C46BA4AC();
  v33 = *(a1 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v113 = 0;
  v129 = v23;
  while (v33 != v4)
  {
    v35 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v36 = *(v23 + 72);
    sub_1C4406A28();
    sub_1C44309B8(v37, v32);
    v38 = &v32[*(v130 + 24)];
    if (sub_1C4EFEFF8())
    {
      sub_1C44E383C(v32);
      ++v4;
    }

    else
    {
      sub_1C441937C();
      sub_1C4471E40(v32, v128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v135 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = *(v34 + 16);
        sub_1C459DDD8();
        v34 = v135;
      }

      v41 = *(v34 + 16);
      v42 = v34;
      if (v41 >= *(v34 + 24) >> 1)
      {
        sub_1C459DDD8();
        v42 = v135;
      }

      ++v4;
      *(v42 + 16) = v41 + 1;
      v34 = v42;
      sub_1C441937C();
      sub_1C4471E40(v128, v43);
      v23 = v129;
    }
  }

  sub_1C44B2C94(v34, v133, a2);
  sub_1C44B35B4();
  v135 = v133[0];
  v136 = v133[1];
  v137 = v133[2];
  v44 = sub_1C44B3BBC(a2);
  v117 = *(v44 + 16);
  if (v117)
  {
    v45 = 0;
    v114 = v44;
    v116 = v44 + 32;
    v46 = v131 + 16;
    v47 = (v131 + 8);
    v48 = v127;
    v49 = v130;
    v124 = (v131 + 8);
    while (1)
    {
      v50 = *(v116 + 8 * v45);
      v128 = v45 + 1;
      sub_1C440BAA8(v48, 1, 1, v49);
      v51 = 1 << *(v50 + 32);
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v53 = v52 & *(v50 + 56);
      v54 = (v51 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v56 = 0;
      for (i = 0.0; v53; i = v69)
      {
LABEL_20:
        (*(v131 + 16))(v16, *(v50 + 48) + *(v131 + 72) * (__clz(__rbit64(v53)) | (v56 << 6)), v132);
        v59 = v134;
        if (*(v134 + 16) && (sub_1C44E3664(), (v61 & 1) != 0))
        {
          v62 = v16;
          v63 = v46;
          v64 = *(v59 + 56) + *(v129 + 72) * v60;
          sub_1C4406A28();
          v65 = v126;
          sub_1C44309B8(v66, v126);
          sub_1C441937C();
          v67 = v125;
          sub_1C4471E40(v65, v125);
          v68 = v130;
          v69 = *(v67 + *(v130 + 28));
          if (i >= v69)
          {
            sub_1C44E383C(v67);
            v69 = i;
          }

          else
          {
            v70 = v127;
            sub_1C4420C3C(v127, &qword_1EC0BB248, &qword_1C4F1E7C8);
            sub_1C441937C();
            sub_1C4471E40(v67, v70);
            sub_1C43FBD94();
            sub_1C440BAA8(v71, v72, v73, v68);
          }

          v46 = v63;
          v16 = v62;
          v47 = v124;
        }

        else
        {
          v69 = i;
        }

        v53 &= v53 - 1;
        result = (*v47)(v16, v132);
      }

      while (1)
      {
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v58 >= v54)
        {
          break;
        }

        v53 = *(v50 + 56 + 8 * v58);
        ++v56;
        if (v53)
        {
          v56 = v58;
          goto LABEL_20;
        }
      }

      v48 = v127;
      v74 = v118;
      sub_1C46BAFF4(v127, v118);
      v49 = v130;
      if (sub_1C44157D4(v74, 1, v130) == 1)
      {

        sub_1C4420C3C(v74, &qword_1EC0BB248, &qword_1C4F1E7C8);
      }

      else
      {
        sub_1C441937C();
        v75 = v115;
        v76 = sub_1C4471E40(v74, v115);
        MEMORY[0x1EEE9AC00](v76);
        *(&v111 - 2) = &v134;
        *(&v111 - 1) = v75;
        v77 = v113;
        sub_1C4D37408();
        v113 = v77;

        sub_1C44E383C(v75);
      }

      v45 = v128;
      sub_1C4420C3C(v48, &qword_1EC0BB248, &qword_1C4F1E7C8);
      if (v45 == v117)
      {

        v23 = v129;
        goto LABEL_35;
      }
    }
  }

LABEL_35:
  v141 = *(&v135 + 1);
  v142 = v135;
  v139 = *(&v136 + 1);
  v140 = v136;
  v78 = *(v134 + 16);
  if (v78)
  {
    v138 = MEMORY[0x1E69E7CC0];
    v79 = v134;
    sub_1C459DDD8();
    v80 = v79;
    v130 = v138;
    result = sub_1C4703354(v79);
    v83 = result;
    v84 = 0;
    v128 = v80 + 64;
    v118 = v131 + 16;
    v117 = v131 + 32;
    v116 = v131 + 8;
    v112 = v80 + 72;
    v114 = v78;
    v115 = v80;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v83 < 1 << *(v80 + 32))
      {
        v85 = v83 >> 6;
        if ((*(v128 + 8 * (v83 >> 6)) & (1 << v83)) == 0)
        {
          goto LABEL_60;
        }

        if (*(v80 + 36) != v81)
        {
          goto LABEL_61;
        }

        LODWORD(v124) = v82;
        v126 = v81;
        v125 = v84;
        v86 = v23;
        v87 = v132;
        v88 = v123;
        v89 = *(v123 + 48);
        v90 = v131;
        v91 = v120;
        (*(v131 + 16))(v120, *(v80 + 48) + *(v131 + 72) * v83, v132);
        v92 = *(v80 + 56);
        v127 = *(v86 + 72);
        sub_1C4406A28();
        sub_1C44309B8(v93, &v91[v89]);
        v94 = v121;
        (*(v90 + 32))(v121, v91, v87);
        sub_1C4471E40(&v91[v89], v94 + *(v88 + 48));
        v95 = v122;
        sub_1C46BB064(v94, v122);
        v96 = v119;
        sub_1C4471E40(v95 + *(v88 + 48), v119);
        (*(v90 + 8))(v95, v87);
        v138 = v130;
        v97 = *(v130 + 16);
        if (v97 >= *(v130 + 24) >> 1)
        {
          sub_1C459DDD8();
          v130 = v138;
        }

        v98 = v130;
        *(v130 + 16) = v97 + 1;
        v23 = v129;
        v99 = v98 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
        sub_1C441937C();
        result = sub_1C4471E40(v96, v100);
        v80 = v115;
        v101 = 1 << *(v115 + 32);
        if (v83 >= v101)
        {
          goto LABEL_62;
        }

        v102 = *(v128 + 8 * v85);
        if ((v102 & (1 << v83)) == 0)
        {
          goto LABEL_63;
        }

        if (*(v115 + 36) != v126)
        {
          goto LABEL_64;
        }

        v103 = v102 & (-2 << (v83 & 0x3F));
        if (v103)
        {
          v101 = __clz(__rbit64(v103)) | v83 & 0x7FFFFFFFFFFFFFC0;
          v104 = v114;
          v105 = v125;
        }

        else
        {
          v106 = v85 << 6;
          v107 = v85 + 1;
          v108 = (v112 + 8 * v85);
          v104 = v114;
          v105 = v125;
          while (v107 < (v101 + 63) >> 6)
          {
            v110 = *v108++;
            v109 = v110;
            v106 += 64;
            ++v107;
            if (v110)
            {
              result = sub_1C440951C(v83, v126, v124 & 1);
              v101 = __clz(__rbit64(v109)) + v106;
              goto LABEL_52;
            }
          }

          result = sub_1C440951C(v83, v126, v124 & 1);
        }

LABEL_52:
        v84 = v105 + 1;
        if (v84 == v104)
        {
          sub_1C4420C3C(&v142, &qword_1EC0BB250, &unk_1C4F1E7D0);
          sub_1C4420C3C(&v141, &qword_1EC0BB258, &unk_1C4F4F980);
          sub_1C4420C3C(&v140, &qword_1EC0BB260, &unk_1C4F1E7E0);
          sub_1C4420C3C(&v139, &qword_1EC0BB268, &unk_1C4F4F990);
          goto LABEL_57;
        }

        v82 = 0;
        v81 = *(v80 + 36);
        v83 = v101;
        if (v101 < 0)
        {
          break;
        }
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
    sub_1C4420C3C(&v142, &qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4420C3C(&v141, &qword_1EC0BB258, &unk_1C4F4F980);
    sub_1C4420C3C(&v140, &qword_1EC0BB260, &unk_1C4F1E7E0);
    sub_1C4420C3C(&v139, &qword_1EC0BB268, &unk_1C4F4F990);
    v130 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v138 = *(&v137 + 1);
    sub_1C4420C3C(&v138, &qword_1EC0BB270, qword_1C4F1E7F0);

    return v130;
  }

  return result;
}

uint64_t sub_1C46BA4AC()
{
  sub_1C43FBE94();
  v1 = sub_1C4EFF0C8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityMatch(0);
  v9 = *(*(v8 - 1) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v54 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v54 = &v54 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v54 - v21;
  v23 = *(v0 + 16);
  if (!v23)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v24 = v8[6];
  v25 = v0 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v64 = *(v20 + 72);
  v62 = (v4 + 16);
  v26 = v4;
  v27 = MEMORY[0x1E69E7CC8];
  v56 = v26;
  v57 = v24;
  v58 = v8;
  v59 = (v26 + 8);
  v60 = &v54 - v21;
  v61 = v19;
  while (1)
  {
    sub_1C44309B8(v25, v22);
    if ((sub_1C4EFEFF8() & 1) == 0)
    {
      sub_1C44E383C(v22);
      goto LABEL_19;
    }

    sub_1C44309B8(v22, v19);
    v28 = v8[5];
    if (v27[2])
    {
      sub_1C44E3664();
      if (v29)
      {
        v30 = v27[7];
        sub_1C4406A28();
        v31 = v55;
        sub_1C44309B8(v32, v55);
        sub_1C441937C();
        v33 = v31;
        v34 = v54;
        sub_1C4471E40(v33, v54);
        if (*&v22[v8[7]] >= *(v34 + v8[7]))
        {
          sub_1C44E383C(v34);
        }

        else
        {
          sub_1C44E383C(v19);
          sub_1C441937C();
          sub_1C4471E40(v34, v19);
        }
      }
    }

    v35 = v22;
    v36 = *v62;
    (*v62)(v63, &v35[v28], v1);
    sub_1C4406A28();
    v37 = v19;
    v38 = v12;
    sub_1C44309B8(v37, v12);
    swift_isUniquelyReferenced_nonNull_native();
    v65 = v27;
    sub_1C44E3664();
    if (__OFADD__(v27[2], (v40 & 1) == 0))
    {
      break;
    }

    v41 = v39;
    v42 = v40;
    sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_25;
      }

      v41 = v43;
    }

    v27 = v65;
    if (v42)
    {
      v45 = v65[7] + v41 * v64;
      v12 = v38;
      sub_1C46BB0F0(v38, v45);
      (*v59)(v63, v1);
      v19 = v61;
      sub_1C44E383C(v61);
      v22 = v60;
      sub_1C44E383C(v60);
    }

    else
    {
      v65[(v41 >> 6) + 8] |= 1 << v41;
      v46 = v56;
      v47 = v63;
      v36((v27[6] + *(v56 + 72) * v41), v63, v1);
      v48 = v27[7];
      sub_1C441937C();
      v12 = v38;
      sub_1C4471E40(v38, v49);
      (*(v46 + 8))(v47, v1);
      v19 = v61;
      sub_1C44E383C(v61);
      v22 = v60;
      sub_1C44E383C(v60);
      v50 = v27[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_24;
      }

      v27[2] = v52;
    }

    v8 = v58;
LABEL_19:
    v25 += v64;
    if (!--v23)
    {
      return v27;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46BA984(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44 = a3;
  v48 = a2;
  v4 = type metadata accessor for EntityMatch(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C4EFD548();
  v50 = *(v51 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  v16 = sub_1C4EFF0C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v40 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v45 = v17;
  v25 = *(v17 + 16);
  v47 = &v40 - v26;
  v25();
  v27 = *(v50 + 16);
  v49 = v9;
  v28 = v9;
  v29 = v44;
  v27(v28, v44, v51);
  v43 = v24;
  (v25)(v24, a1, v16);
  v30 = v29 + v4[6];
  v46 = v21;
  (v25)(v21, v30, v16);
  v31 = *(v29 + v4[7]);
  v32 = *(v29 + v4[8]);
  v33 = *(v29 + v4[9]);
  v34 = a1;
  v35 = v42;
  sub_1C465C5B0(v34, *v48);
  if (sub_1C44157D4(v35, 1, v4))
  {
    sub_1C4420C3C(v35, &qword_1EC0BB248, &qword_1C4F1E7C8);
    v36 = 0;
  }

  else
  {
    v37 = v41;
    sub_1C44309B8(v35, v41);
    sub_1C4420C3C(v35, &qword_1EC0BB248, &qword_1C4F1E7C8);
    v36 = *(v37 + v4[10]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44E383C(v37);
  }

  (*(v50 + 32))(v15, v49, v51);
  v38 = *(v45 + 32);
  v38(&v15[v4[5]], v43, v16);
  v38(&v15[v4[6]], v46, v16);
  *&v15[v4[7]] = v31;
  *&v15[v4[8]] = v32;
  v15[v4[9]] = v33;
  *&v15[v4[10]] = v36;
  sub_1C440BAA8(v15, 0, 1, v4);
  return sub_1C4C809F8();
}

uint64_t sub_1C46BADC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Deduper.execute()();
}

uint64_t sub_1C46BAE54(uint64_t a1)
{
  result = sub_1C46BAEDC(&qword_1EDDDC088);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46BAE98(uint64_t a1)
{
  result = sub_1C46BAEDC(&qword_1EDDDC098);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46BAEDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Deduper();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C46BAF48()
{
  result = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Source();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for PhaseStores();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46BAFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46BB064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB240, "nG\v");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46BB0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityMatch(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46BB164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4F00978();
  v6 = sub_1C43FCDF8(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C4EFB5F8();
  v14 = sub_1C43FCDF8(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C442C730();
  sub_1C4EFD9F8();
  v19 = *(a3 + 16);
  sub_1C46BC6FC();
  sub_1C4EFB5D8();
  if (v3)
  {
    v20 = *(v16 + 8);
    v21 = sub_1C43FC1C0();
    return v22(v21);
  }

  else
  {
    v24 = *(v16 + 8);
    v25 = sub_1C43FC1C0();
    v26(v25);
    sub_1C4F00178();
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = sub_1C43FCED0();
      *v29 = 0;
      _os_log_impl(&dword_1C43F8000, v27, v28, "DefaultResolverInteractionsViewGenerator: finished database migration.", v29, 2u);
      sub_1C43FBE2C();
    }

    return (*(v8 + 8))(v12, v5);
  }
}

uint64_t sub_1C46BB340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 16);
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  return sub_1C446C37C(sub_1C46BC374, v6);
}

uint64_t sub_1C46BB38C(uint64_t a1)
{
  v3 = sub_1C4F00978();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v38 = v9;
  sub_1C43FD1D0();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  sub_1C4F00178();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CB8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = sub_1C43FCED0();
    *v18 = 0;
    _os_log_impl(&dword_1C43F8000, v16, v17, "DefaultResolverInteractionsViewGenerator: drop indexes.", v18, 2u);
    sub_1C43FBE2C();
  }

  v19 = *(v6 + 8);
  v19(v15, v3);
  result = sub_1C46BB670(a1);
  if (!v1)
  {
    v23 = v22;
    v36 = result;
    v37 = v21;
    sub_1C4F00178();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CB8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = sub_1C43FCED0();
      v35 = a1;
      *v26 = 0;
      sub_1C4408858(&dword_1C43F8000, v27, v28, "DefaultResolverInteractionsViewGenerator: clear all tables.");
      a1 = v35;
      sub_1C43FBE2C();
    }

    v19(v13, v3);
    sub_1C448DE08(&unk_1F43D8658);
    sub_1C46A9F14(v29);

    sub_1C4F00178();
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CB8();
    if (os_log_type_enabled(v30, v31))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4408858(&dword_1C43F8000, v32, v33, "DefaultResolverInteractionsViewGenerator: restore indexes.");
      sub_1C43FBE2C();
    }

    v19(v38, v3);
    sub_1C46BBC64(a1, v36, v37, v23);
  }

  return result;
}

uint64_t sub_1C46BB670(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1C4EFB768();
  v6 = sub_1C43FCDF8(v5);
  v86 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4F00978();
  v13 = sub_1C43FCDF8(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C442C730();
  sub_1C4F00178();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_1C43FCED0();
    v87 = v11;
    *v20 = 0;
    _os_log_impl(&dword_1C43F8000, v18, v19, "DefaultResolverInteractionsViewGenerator: DefaultResolverInteractionsDatabaseTable: dropping indexes", v20, 2u);
    v3 = v2;
    v11 = v87;
    sub_1C43FBE2C();
  }

  (*(v15 + 8))(v1, v12);
  v21 = sub_1C46A9F90(0, 0, 0x7865646E69, 0xE500000000000000);
  if (v3)
  {
    return v12;
  }

  v12 = v21;
  v89 = a1;
  v87 = v11;
  v84 = v5;
  v23 = v21 + 64;
  v22 = *(v21 + 64);
  v24 = *(v21 + 32);
  sub_1C43FD030();
  v27 = v26 & v25;
  v29 = (v28 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v30 = 0;
  if (v27)
  {
    while (1)
    {
      v31 = v30;
LABEL_9:
      sub_1C43FD47C();
      v33 = (*(v12 + 48) + v32);
      v34 = *v33;
      v35 = v33[1];
      v36 = *(*(v12 + 56) + v32 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4402EF8();
      sub_1C4EFBF58();
      if (v34)
      {

        goto LABEL_13;
      }

      v27 &= v27 - 1;

      v30 = v31;
      if (!v27)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v31 >= v29)
    {
      break;
    }

    v27 = *(v23 + 8 * v31);
    ++v30;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  sub_1C4402EF8();
  v41 = sub_1C46A9F90(v37, v38, v39, v40);
  v42 = sub_1C46BC40C(v41);

  v44 = v42 + 64;
  v43 = *(v42 + 64);
  v45 = *(v42 + 32);
  sub_1C43FD030();
  v48 = v47 & v46;
  v50 = (v49 + 63) >> 6;

  v52 = 0;
  v85 = v42;
  if (v48)
  {
    while (1)
    {
      v53 = v52;
LABEL_19:
      sub_1C43FD47C();
      v55 = (*(v42 + 48) + v54);
      v57 = *v55;
      v56 = v55[1];
      v58 = *(*(v42 + 56) + v54 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4402EF8();
      sub_1C4EFBF68();
      if (v57)
      {
        break;
      }

      v48 &= v48 - 1;

      v52 = v53;
      v42 = v85;
      if (!v48)
      {
        goto LABEL_16;
      }
    }

    return v12;
  }

  while (1)
  {
LABEL_16:
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    if (v53 >= v50)
    {
      break;
    }

    v48 = *(v44 + 8 * v53);
    ++v52;
    if (v48)
    {
      goto LABEL_19;
    }
  }

  v59 = sub_1C46A9F90(0, 0, 0x72656767697274, 0xE700000000000000);
  v60 = v59;
  v62 = v59 + 64;
  v61 = *(v59 + 64);
  v63 = *(v59 + 32);
  sub_1C43FD030();
  v66 = v65 & v64;
  v68 = (v67 + 63) >> 6;
  v86 += 8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v69 = 0;
  v81 = v68;
  v82 = v62;
  v83 = result;
  if (!v66)
  {
LABEL_27:
    while (1)
    {
      v70 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_38;
      }

      if (v70 >= v68)
      {

        return v12;
      }

      v66 = *(v62 + 8 * v70);
      ++v69;
      if (v66)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v70 = v69;
LABEL_30:
    v71 = (v70 << 10) | (16 * __clz(__rbit64(v66)));
    v72 = (*(v60 + 48) + v71);
    v73 = *v72;
    v74 = v72[1];
    v75 = *(*(v60 + 56) + v71 + 8);
    strcpy(v88, "DROP TRIGGER ");
    v88[7] = -4864;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v73, v74);
    sub_1C4EFB758();
    sub_1C4402EF8();
    sub_1C4EFBFF8();
    if (v73)
    {
      break;
    }

    v66 &= v66 - 1;

    v76 = sub_1C440E088();
    result = v77(v76);
    v69 = v70;
    v62 = v82;
    v60 = v83;
    v68 = v81;
    if (!v66)
    {
      goto LABEL_27;
    }
  }

LABEL_36:

  v78 = sub_1C440E088();
  v79(v78);
LABEL_13:

  return v12;
}

uint64_t sub_1C46BBC64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v90 = a4;
  v91 = a2;
  v92 = a3;
  v93 = a1;
  v96 = sub_1C4EFB768();
  v5 = sub_1C43FCDF8(v96);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  v86 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v85 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v85 - v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C4F00978();
  v17 = sub_1C43FCDF8(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C442C730();
  sub_1C4F00178();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CC8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = sub_1C43FCED0();
    *v24 = 0;
    _os_log_impl(&dword_1C43F8000, v22, v23, "DefaultResolverInteractionsViewGenerator: DefaultResolverInteractionsDatabaseTable: restoring indexes", v24, 2u);
    sub_1C43FBE2C();
  }

  v25 = *(v19 + 8);
  v26 = sub_1C43FC1C0();
  v27(v26);
  v29 = *(v91 + 64);
  v28 = v91 + 64;
  v30 = *(v91 + 32);
  sub_1C43FD030();
  v33 = v32 & v31;
  v35 = (v34 + 63) >> 6;
  v94 = v7 + 8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v37 = 0;
  if (v33)
  {
    while (1)
    {
      v38 = v37;
LABEL_8:
      sub_1C441F748((v38 << 10) | (16 * __clz(__rbit64(v33))));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FC1C0();
      sub_1C4EFBFF8();
      if (v4)
      {
        break;
      }

      v33 &= v33 - 1;

      v39 = sub_1C440008C();
      result = v40(v39, v96);
      v37 = v38;
      if (!v33)
      {
        goto LABEL_5;
      }
    }

    v80 = sub_1C440008C();
    return v81(v80, v96);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v38 >= v35)
      {
        break;
      }

      v33 = *(v28 + 8 * v38);
      ++v37;
      if (v33)
      {
        goto LABEL_8;
      }
    }

    v42 = *(v92 + 64);
    v41 = v92 + 64;
    v43 = *(v92 + 32);
    sub_1C43FD030();
    v46 = v45 & v44;
    v48 = (v47 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v49 = 0;
    v50 = v4;
    if (!v46)
    {
      goto LABEL_13;
    }

    do
    {
      v51 = v49;
LABEL_16:
      sub_1C441F748((v51 << 10) | (16 * __clz(__rbit64(v46))));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FC1C0();
      sub_1C4EFBFF8();
      if (v4)
      {

        v82 = sub_1C440008C();
        return v83(v82, v96);
      }

      v46 &= v46 - 1;

      v52 = sub_1C440008C();
      result = v53(v52, v96);
      v49 = v51;
    }

    while (v46);
LABEL_13:
    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v51 >= v48)
      {

        v55 = *(v90 + 64);
        v54 = (v90 + 64);
        v56 = *(v90 + 32);
        sub_1C43FD030();
        v59 = v58 & v57;
        v61 = (v60 + 63) >> 6;
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v62 = 0;
        v87 = v41;
        if (!v59)
        {
LABEL_21:
          v64 = v88;
          while (1)
          {
            v63 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_46;
            }

            if (v63 >= v61)
            {
              v91 = v50;

              v66 = 1 << *(v92 + 32);
              v67 = -1;
              if (v66 < 64)
              {
                v67 = ~(-1 << v66);
              }

              v68 = v67 & *(v92 + 64);
              v69 = (v66 + 63) >> 6;
              v90 = "DataCollectionMetadata.";
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v70 = 0;
              if (v68)
              {
                while (1)
                {
                  v71 = v70;
LABEL_35:
                  v72 = (v71 << 10) | (16 * __clz(__rbit64(v68)));
                  v73 = (*(result + 48) + v72);
                  v74 = *v73;
                  v75 = v73[1];
                  v76 = *(*(result + 56) + v72 + 8);
                  v95[0] = 0;
                  v95[1] = 0xE000000000000000;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F02248();

                  strcpy(v95, "INSERT INTO ");
                  BYTE5(v95[1]) = 0;
                  HIWORD(v95[1]) = -5120;
                  MEMORY[0x1C6940010](v74, v75);
                  MEMORY[0x1C6940010](40, 0xE100000000000000);
                  MEMORY[0x1C6940010](v74, v75);
                  MEMORY[0x1C6940010](0xD000000000000014, v90 | 0x8000000000000000);
                  v77 = v86;
                  sub_1C4EFB758();
                  sub_1C43FC1C0();
                  v78 = v91;
                  sub_1C4EFBFF8();
                  v91 = v78;
                  if (v78)
                  {
                    break;
                  }

                  v68 &= v68 - 1;
                  sub_1C440A8E0();
                  v79(v77, v96);

                  v70 = v71;
                  result = v92;
                  if (!v68)
                  {
                    goto LABEL_32;
                  }
                }

                sub_1C440A8E0();
                v84(v77, v96);
              }

LABEL_32:
              while (1)
              {
                v71 = v70 + 1;
                if (__OFADD__(v70, 1))
                {
                  goto LABEL_47;
                }

                if (v71 >= v69)
                {
                }

                v68 = *(v41 + 8 * v71);
                ++v70;
                if (v68)
                {
                  goto LABEL_35;
                }
              }
            }

            v59 = *&v54[8 * v63];
            ++v62;
            if (v59)
            {
              goto LABEL_25;
            }
          }
        }

        while (1)
        {
          v63 = v62;
          v64 = v88;
LABEL_25:
          sub_1C441F748((v63 << 10) | (16 * __clz(__rbit64(v59))));
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFB758();
          sub_1C43FC1C0();
          sub_1C4EFBFF8();
          if (v50)
          {
            break;
          }

          v59 &= v59 - 1;

          sub_1C440A8E0();
          result = v65(v64, v96);
          v62 = v63;
          v41 = v87;
          if (!v59)
          {
            goto LABEL_21;
          }
        }

        sub_1C440A8E0();
        v82 = v64;
        return v83(v82, v96);
      }

      v46 = *(v41 + 8 * v51);
      ++v49;
      if (v46)
      {
        goto LABEL_16;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C46BC374(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1C46BB38C(a1);
}

void *sub_1C46BC394(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C46BC570(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_1C46BC40C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1C46BC394(v9, v4, v2);
      MEMORY[0x1C6942830](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C46BC570(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1C46BC570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a3 + 56) + 16 * v12 + 8);
    sub_1C4F00FF8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F013F8();

    if (v17)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C458721C();
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t sub_1C46BC6FC()
{
  result = qword_1EDDFEDB0;
  if (!qword_1EDDFEDB0)
  {
    type metadata accessor for ErrorHandlingDatabasePool(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEDB0);
  }

  return result;
}

uint64_t sub_1C46BC754()
{
  sub_1C43FBCD4();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  v4 = *(*(type metadata accessor for PhaseStores() - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for Source();
  v1[19] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v7 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C46BC824()
{
  v160 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  sub_1C441F770();
  sub_1C448CAE8(v3, v4, v5);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 176);
  v7 = sub_1C442B738(*(v0 + 152), &unk_1EDDFD088);
  v9 = *v6;
  v8 = v6[1];
  v10 = *v7 == v9 && v7[1] == v8;
  if (v10 || (sub_1C43FEC00() & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v11 = sub_1C43FBC98();
    sub_1C448CAE8(v11, v12, v13);
    *(v0 + 424) = 2;
    [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v14 = type metadata accessor for ContactsPersonPhase();
    *(v0 + 184) = v14;
    sub_1C44099C4(v14);
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    sub_1C4408878(v15);
    sub_1C440F4D4(v16);
    sub_1C4410B00();

    return sub_1C44758E8(v17, v18, v19, v20);
  }

  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v23 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD270);
  sub_1C4406A40(v23);
  v25 = v10 && v24 == v8;
  if (v25 || (sub_1C43FEC00() & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v26 = sub_1C43FBC98();
    sub_1C448CAE8(v26, v27, v28);
    *(v0 + 423) = 2;
    v29 = type metadata accessor for BMAppleMusicEventPhase();
    *(v0 + 208) = v29;
    sub_1C44099C4(v29);
    v30 = swift_task_alloc();
    *(v0 + 216) = v30;
    *v30 = v0;
    sub_1C4408878(v30);
    sub_1C440F4D4(v31);
    sub_1C4410B00();

    return sub_1C4656CD4(v32, v33);
  }

  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v35 = sub_1C442B738(*(v0 + 152), qword_1EDDFED10);
  sub_1C4406A40(v35);
  v37 = v10 && v36 == v8;
  if (v37 || (sub_1C43FEC00() & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v38 = sub_1C43FBC98();
    sub_1C448CAE8(v38, v39, v40);
    *(v0 + 422) = 2;
    v41 = type metadata accessor for LifeEventPhase();
    *(v0 + 232) = v41;
    sub_1C44099C4(v41);
    v42 = swift_task_alloc();
    *(v0 + 240) = v42;
    *v42 = v0;
    sub_1C4408878(v42);
    sub_1C440F4D4(v43);
    sub_1C4410B00();

    return sub_1C49C9C78(v44, v45);
  }

  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v47 = sub_1C442B738(*(v0 + 152), qword_1EDDFD2A8);
  sub_1C4406A40(v47);
  v49 = v10 && v48 == v8;
  if (v49 || (sub_1C43FEC00() & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v50 = sub_1C43FBC98();
    sub_1C448CAE8(v50, v51, v52);
    *(v0 + 421) = 2;
    v53 = type metadata accessor for FutureLifeEventPhase();
    *(v0 + 256) = v53;
    sub_1C44099C4(v53);
    v54 = swift_task_alloc();
    *(v0 + 264) = v54;
    *v54 = v0;
    sub_1C4408878(v54);
    sub_1C440F4D4(v55);
    sub_1C4410B00();

    return sub_1C4813E7C(v56, v57);
  }

  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v59 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD290);
  sub_1C4406A40(v59);
  v61 = v10 && v60 == v8;
  if (v61 || (sub_1C43FEC00() & 1) != 0)
  {
    sub_1C441C920();
    if (Configuration.isWalletOrderSourcesEnabled.getter())
    {
      v62 = *(v0 + 144);
      v63 = *(v0 + 128);
      sub_1C4419394();
      sub_1C448CAE8(v64, v65, v66);
      *(v0 + 420) = 2;
      v67 = type metadata accessor for WalletEmailOrderEventPhase();
      *(v0 + 280) = v67;
      sub_1C44099C4(v67);
      v68 = swift_task_alloc();
      *(v0 + 288) = v68;
      *v68 = v0;
      sub_1C4408878(v68);
      sub_1C440F4D4(v69);
      sub_1C4410B00();

      return sub_1C4D44064(v70, v71);
    }

LABEL_107:
    sub_1C442FCC4();
    sub_1C4412F1C();

    sub_1C43FC1B0();
    sub_1C4410B00();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v73 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD1D0);
  sub_1C4406A40(v73);
  v75 = v10 && v74 == v8;
  if (v75 || (sub_1C43FEC00() & 1) != 0)
  {
    sub_1C441C920();
    if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
    {
      goto LABEL_107;
    }

    v76 = *(v0 + 144);
    v77 = *(v0 + 128);
    sub_1C4419394();
    sub_1C448CAE8(v78, v79, v80);
    *(v0 + 419) = 2;
    v81 = type metadata accessor for WalletTrackedOrderEventPhase();
    *(v0 + 304) = v81;
    sub_1C44099C4(v81);
    v82 = swift_task_alloc();
    *(v0 + 312) = v82;
    *v82 = v0;
    sub_1C4408878(v82);
    sub_1C440F4D4(v83);
    sub_1C4410B00();

    return sub_1C4D58F70(v84, v85);
  }

  else
  {
    if (qword_1EDDFD1A0 != -1)
    {
      swift_once();
    }

    v87 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD1A8);
    sub_1C4406A40(v87);
    v89 = v10 && v88 == v8;
    if (v89 || (sub_1C43FEC00() & 1) != 0)
    {
      sub_1C441C920();
      if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
      {
        goto LABEL_107;
      }

      v90 = *(v0 + 144);
      v91 = *(v0 + 128);
      sub_1C4419394();
      sub_1C448CAE8(v92, v93, v94);
      *(v0 + 418) = 2;
      v95 = type metadata accessor for WalletTransactionOrderEventPhase();
      *(v0 + 328) = v95;
      sub_1C44099C4(v95);
      v96 = swift_task_alloc();
      *(v0 + 336) = v96;
      *v96 = v0;
      sub_1C4408878(v96);
      sub_1C440F4D4(v97);
      sub_1C4410B00();

      return sub_1C4D5D318(v98, v99);
    }

    else
    {
      if (qword_1EDDFD1F0 != -1)
      {
        swift_once();
      }

      v101 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD1F8);
      sub_1C4406A40(v101);
      v103 = v10 && v102 == v8;
      if (v103 || (sub_1C43FEC00() & 1) != 0)
      {
        sub_1C441C920();
        if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
        {
          goto LABEL_107;
        }

        v104 = *(v0 + 144);
        v105 = *(v0 + 128);
        sub_1C4419394();
        sub_1C448CAE8(v106, v107, v108);
        *(v0 + 417) = 2;
        v109 = type metadata accessor for WalletClassicOrderEventPhase();
        *(v0 + 352) = v109;
        sub_1C44099C4(v109);
        v110 = swift_task_alloc();
        *(v0 + 360) = v110;
        *v110 = v0;
        sub_1C4408878(v110);
        sub_1C440F4D4(v111);
        sub_1C4410B00();

        return sub_1C4D3F768(v112, v113);
      }

      else
      {
        if (qword_1EDDFD178 != -1)
        {
          swift_once();
        }

        v115 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD180);
        v116 = *(v0 + 176);
        if (*v115 == v9 && v115[1] == v8)
        {
          sub_1C448D818(*(v0 + 176));
        }

        else
        {
          v118 = sub_1C43FEC00();
          sub_1C448D818(v116);
          if ((v118 & 1) == 0)
          {
            if (qword_1EDDFDCF8 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (qword_1EDDFF3C8)
            {
              (*(off_1EDDFF3D0 + 2))();
              v120 = *(v119 + 32);
              v158 = v120 + *v120;
              v121 = v120[1];
              v122 = swift_task_alloc();
              *(v0 + 400) = v122;
              *v122 = v0;
              v122[1] = sub_1C46BE208;
              v123 = *(v0 + 128);
              v124 = *(v0 + 136);
              sub_1C4410B00();

              __asm { BRAA            X5, X16 }
            }

            *(v0 + 88) = 0;
            *(v0 + 72) = 0u;
            *(v0 + 56) = 0u;
            sub_1C46BE56C(v0 + 56);
            if (qword_1EDDFD028 != -1)
            {
              sub_1C43FE9B4();
            }

            v138 = *(v0 + 168);
            v139 = *(v0 + 136);
            v140 = sub_1C4F00978();
            sub_1C442B738(v140, qword_1EDE2DE10);
            sub_1C441F770();
            v141 = sub_1C43FBC98();
            sub_1C448CAE8(v141, v142, v143);
            v144 = sub_1C4F00968();
            v145 = sub_1C4F01CF8();
            v146 = os_log_type_enabled(v144, v145);
            v147 = *(v0 + 168);
            if (v146)
            {
              v148 = *(v0 + 160);
              v149 = swift_slowAlloc();
              v150 = swift_slowAlloc();
              v159 = v150;
              *v149 = 136315138;
              sub_1C448B210(v147, v148);
              v151 = *v148;
              v152 = v148[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C448D818(v148);
              v153 = sub_1C441D828(v151, v152, &v159);

              *(v149 + 4) = v153;
              sub_1C43FBD74(&dword_1C43F8000, v154, v155, "Delta Pipeline not setup for %s");
              sub_1C440962C(v150);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            else
            {

              sub_1C448D818(v147);
            }

            goto LABEL_107;
          }
        }

        v127 = *(v0 + 144);
        v128 = *(v0 + 128);
        sub_1C4419394();
        sub_1C448CAE8(v129, v130, v131);
        *(v0 + 416) = 2;
        v132 = type metadata accessor for IPEntityTaggingPersonInferencePhase();
        *(v0 + 376) = v132;
        sub_1C44099C4(v132);
        v133 = swift_task_alloc();
        *(v0 + 384) = v133;
        *v133 = v0;
        sub_1C4408878(v133);
        sub_1C440F4D4(v134);
        sub_1C4410B00();

        return sub_1C499AA04(v135, v136);
      }
    }
  }
}

uint64_t sub_1C46BD440()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 192);
  *v2 = *v0;
  *(v1 + 200) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BD528()
{
  sub_1C43FCF70();
  v1 = *(v0 + 200);
  sub_1C440E09C(*(v0 + 184));
  v2 = sub_1C46BE5D4(qword_1EDDE5548, type metadata accessor for ContactsPersonPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BD5C8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 216);
  *v2 = *v0;
  *(v1 + 224) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BD6B0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 224);
  sub_1C440E09C(*(v0 + 208));
  v2 = sub_1C46BE5D4(&qword_1EDDE3238, type metadata accessor for BMAppleMusicEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BD750()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 248) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BD838()
{
  sub_1C43FCF70();
  v1 = *(v0 + 248);
  sub_1C440E09C(*(v0 + 232));
  v2 = sub_1C46BE5D4(qword_1EDDE9708, type metadata accessor for LifeEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BD8D8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BD9C0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 272);
  sub_1C440E09C(*(v0 + 256));
  v2 = sub_1C46BE5D4(qword_1EDDE4640, type metadata accessor for FutureLifeEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BDA60()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 288);
  *v2 = *v0;
  *(v1 + 296) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BDB48()
{
  sub_1C43FCF70();
  v1 = *(v0 + 296);
  sub_1C440E09C(*(v0 + 280));
  v2 = sub_1C46BE5D4(&qword_1EC0BB298, type metadata accessor for WalletEmailOrderEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BDBE8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 312);
  *v2 = *v0;
  *(v1 + 320) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BDCD0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 320);
  sub_1C440E09C(*(v0 + 304));
  v2 = sub_1C46BE5D4(&qword_1EC0BB290, type metadata accessor for WalletTrackedOrderEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BDD70()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 336);
  *v2 = *v0;
  *(v1 + 344) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BDE58()
{
  sub_1C43FCF70();
  v1 = *(v0 + 344);
  sub_1C440E09C(*(v0 + 328));
  v2 = sub_1C46BE5D4(&qword_1EC0BB288, type metadata accessor for WalletTransactionOrderEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BDEF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 360);
  *v2 = *v0;
  *(v1 + 368) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BDFE0()
{
  sub_1C43FCF70();
  v1 = *(v0 + 368);
  sub_1C440E09C(*(v0 + 352));
  v2 = sub_1C46BE5D4(&qword_1EC0BB280, type metadata accessor for WalletClassicOrderEventPhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BE080()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  v4 = *(v3 + 384);
  *v2 = *v0;
  *(v1 + 392) = v5;

  v6 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C46BE168()
{
  sub_1C43FCF70();
  v1 = *(v0 + 392);
  sub_1C440E09C(*(v0 + 376));
  v2 = sub_1C46BE5D4(&qword_1EC0BB278, type metadata accessor for IPEntityTaggingPersonInferencePhase);
  sub_1C442C74C(v2);

  sub_1C43FC1B0();

  return v3();
}

uint64_t sub_1C46BE208()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 400);
  v8 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {
    v6 = sub_1C46BE4F0;
  }

  else
  {
    v6 = sub_1C46BE30C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C46BE30C()
{
  v23 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    sub_1C441D670((v0 + 56), v0 + 16);
    sub_1C441D670((v0 + 16), v1);
  }

  else
  {
    sub_1C46BE56C(v0 + 56);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v2 = *(v0 + 168);
    v3 = *(v0 + 136);
    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DE10);
    sub_1C441F770();
    v5 = sub_1C43FBC98();
    sub_1C448CAE8(v5, v6, v7);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 168);
    if (v10)
    {
      v12 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      sub_1C448B210(v11, v12);
      v15 = *v12;
      v16 = v12[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v12);
      v17 = sub_1C441D828(v15, v16, &v22);

      *(v13 + 4) = v17;
      sub_1C43FBD74(&dword_1C43F8000, v18, v19, "Delta Pipeline not setup for %s");
      sub_1C440962C(v14);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C448D818(v11);
    }

    sub_1C442FCC4();
  }

  sub_1C4412F1C();

  sub_1C43FC1B0();

  return v20();
}

uint64_t sub_1C46BE4F0()
{
  sub_1C43FCF70();
  sub_1C4412F1C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 408);

  return v1();
}

uint64_t sub_1C46BE56C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2ED0, qword_1C4F1E888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46BE5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C46BE628(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C46BE644(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46BE684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C46BE6C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C46BE6F0(uint64_t *a1, void *a2)
{
  v4 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for Source();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  String.sourceBasedOnPrefix.getter();
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    sub_1C46A1238(v7);
    return 0;
  }

  sub_1C448B210(v7, v11);
  if (*v11 == *a2 && v11[1] == a2[1])
  {
    sub_1C448D818(v11);
  }

  else
  {
    v16 = sub_1C4F02938();
    sub_1C448D818(v11);
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C46BE844(uint64_t a1, int a2)
{
  LODWORD(v311) = a2;
  v316 = type metadata accessor for ScreenTimeStructs.Software(0);
  v3 = sub_1C43FBCE0(v316);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  v317 = v6;
  sub_1C43FBE44();
  v7 = sub_1C4EFC388();
  v319 = sub_1C43FCDF8(v7);
  v320 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v319);
  sub_1C43FBD08();
  v312 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v323 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v315 = &v284 - v16;
  sub_1C43FBE44();
  v298 = sub_1C4EFC3B8();
  v17 = sub_1C43FCDF8(v298);
  v300 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v22 = sub_1C43FD2C8(v21);
  v295 = type metadata accessor for ScreenTimeStructs.AgentAffiliationRelationshipType(v22);
  v23 = sub_1C43FBCE0(v295);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v27 = sub_1C43FD2C8(v26);
  v294 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(v27);
  v28 = sub_1C43FBCE0(v294);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v31);
  *&v310 = sub_1C4EFC528();
  v32 = sub_1C43FCDF8(v310);
  v309 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD2D8();
  v308 = v36;
  v37 = sub_1C456902C(&qword_1EC0BB2A0, &qword_1C4F1E970);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = sub_1C43FD2C8(&v284 - v39);
  v306 = type metadata accessor for ScreenTimeStructs.IdentifierRelationshipType(v40);
  v41 = sub_1C43FBCE0(v306);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD2D8();
  v314 = v44;
  v45 = sub_1C456902C(&qword_1EC0BB2A8, &qword_1C4F1E978);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  sub_1C43FBD08();
  v49 = v47 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v284 - v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  v303 = &v284 - v57;
  v58 = sub_1C456902C(&qword_1EC0BB2B0, &qword_1C4F7C900);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v61 = sub_1C43FD2C8(&v284 - v60);
  v62 = type metadata accessor for ScreenTimeStructs.AddressRelationshipType(v61);
  v63 = sub_1C43FBCE0(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD2D8();
  v313 = v66;
  v67 = sub_1C43FBE44();
  v318 = type metadata accessor for ScreenTimeStructs.Person(v67);
  v68 = sub_1C43FBCE0(v318);
  v70 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FD2D8();
  v325 = v71;
  sub_1C43FBE44();
  v72 = sub_1C4EFC438();
  v73 = sub_1C43FCDF8(v72);
  v75 = v74;
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v284 - v83;
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBF38();
  v321 = v86;
  MEMORY[0x1EEE9AC00](v87);
  v89 = &v284 - v88;
  v332 = MEMORY[0x1E69E7CC0];
  v324 = a1;
  sub_1C4EFC448();
  sub_1C4EFC418();
  v91 = v90;
  v92 = *(v75 + 8);
  v322 = v72;
  v326 = v92;
  v327 = (v75 + 8);
  v92(v89, v72);
  if (!v91)
  {
    if (qword_1EDDFECB0 == -1)
    {
LABEL_7:
      v106 = sub_1C4F00978();
      sub_1C442B738(v106, qword_1EDDFECB8);
      v107 = sub_1C4F00968();
      v108 = sub_1C4F01CF8();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_1C43F8000, v107, v108, "DeviceActivityDate has no associated device ID", v109, 2u);
        MEMORY[0x1C6942830](v109, -1, -1);
      }

      return MEMORY[0x1E69E7CC0];
    }

LABEL_60:
    sub_1C44064A8();
    swift_once();
    goto LABEL_7;
  }

  if (qword_1EDDE92F0 != -1)
  {
    swift_once();
  }

  v93 = type metadata accessor for SourceIdPrefix();
  v94 = sub_1C442B738(v93, qword_1EDE2D020);
  String.base64EncodedSHA(withPrefix:)();
  v96 = v95;
  v98 = v97;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v99 = v328;
  sub_1C4E7196C(v96, v98, v100, v101, v102, v103, v104, v105, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295);
  v328 = v99;
  if (!v99)
  {
    v287 = v52;
    v285 = v94;
    v288 = v49;
    v289 = v96;
    v290 = v98;
    v293 = v93;
    sub_1C4EFEEF8();
    v110 = v313;
    sub_1C4425A54();
    *(v112 - 256) = v111;
    sub_1C440BAA8(v113, v114, v115, v111);
    v116 = v110 + v62[5];
    sub_1C4EFD1D8();
    v117 = v62[6];
    if (qword_1EDDFD340 != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Source();
    sub_1C442B738(v118, qword_1EDDFD348);
    sub_1C442C770();
    v291 = v119;
    sub_1C448CB4C(v119, v110 + v117, v120);
    v121 = v110 + v62[7];
    sub_1C4EFE518();
    v122 = (v110 + v62[8]);
    v123 = v321;
    v286 = v62;
    v124 = v324;
    sub_1C4EFC448();
    v125 = sub_1C4EFC428();
    v127 = v126;
    v128 = v322;
    v129 = v326;
    v326(v123, v322);
    *v122 = v125;
    v122[1] = v127;
    v130 = v301;
    sub_1C448CB4C(v110, v301, type metadata accessor for ScreenTimeStructs.AddressRelationshipType);
    sub_1C440BAA8(v130, 0, 1, v286);
    v131 = v325;
    sub_1C4E723D8(v130);
    sub_1C4EFC448();
    sub_1C4408884(&v329);
    sub_1C4EFC3F8();
    v129(v84, v128);
    v132 = sub_1C4EF9788();
    sub_1C43FD490(v124);
    if (v133)
    {
      sub_1C46BFD7C(v124);
      v134 = 0;
      v129 = 0;
    }

    else
    {
      v134 = v124;
      sub_1C4EF9708();
      sub_1C43FC1CC();
      sub_1C4412F38();
      (*(v135 + 8))(v124, v132);
    }

    v136 = (v131 + v318[9]);
    v137 = v136[1];

    *v136 = v134;
    v136[1] = v129;
    v138 = v302;
    sub_1C4EFC448();
    sub_1C440D298(&v331);
    v139 = sub_1C440F4E0();
    v140(v139);
    sub_1C43FD490(v129);
    v141 = v315;
    if (v133)
    {
      sub_1C46BFD7C(v129);
      v138 = 0;
      v142 = 0;
    }

    else
    {
      v142 = v129;
      sub_1C4EF9718();
      sub_1C440D158();
      sub_1C4412F38();
      v144 = *(v143 + 8);
      v145 = sub_1C44000C4();
      v146(v145);
    }

    v147 = v318;
    v148 = (v131 + v318[17]);
    v149 = v148[1];

    *v148 = v138;
    v148[1] = v142;
    sub_1C4408884(v330);
    sub_1C4EFC448();
    sub_1C440D298(&v333);
    v150 = sub_1C440F4E0();
    v151(v150);
    sub_1C43FD490(v148);
    if (v133)
    {
      sub_1C46BFD7C(v148);
      v138 = 0;
      v152 = 0;
    }

    else
    {
      v152 = v148;
      sub_1C4EF9778();
      sub_1C440D158();
      sub_1C4412F38();
      v154 = *(v153 + 8);
      v155 = sub_1C44000C4();
      v156(v155);
    }

    v157 = (v131 + v147[21]);
    v158 = v157[1];

    *v157 = v138;
    v157[1] = v152;
    sub_1C4408884(&v332);
    sub_1C4EFC448();
    sub_1C440D298(&v335);
    v159 = sub_1C440F4E0();
    v160(v159);
    sub_1C43FD490(v157);
    if (v133)
    {
      sub_1C46BFD7C(v157);
      v138 = 0;
      v161 = 0;
    }

    else
    {
      v161 = v157;
      sub_1C4EF9728();
      sub_1C440D158();
      sub_1C4412F38();
      v163 = *(v162 + 8);
      v164 = sub_1C44000C4();
      v165(v164);
    }

    v166 = (v131 + v147[15]);
    v167 = v166[1];

    *v166 = v138;
    v166[1] = v161;
    sub_1C4408884(&v334);
    sub_1C4EFC448();
    sub_1C440D298(&v312);
    v168 = sub_1C440F4E0();
    v169(v168);
    sub_1C43FD490(v166);
    if (v133)
    {
      sub_1C46BFD7C(v166);
      v171 = 0;
    }

    else
    {
      sub_1C4EF9738();
      v171 = v170;
      sub_1C4412F38();
      v173 = *(v172 + 8);
      v174 = sub_1C44000C4();
      v175(v174);
    }

    v176 = (v131 + v147[13]);
    v177 = v176[1];

    v178 = v305;
    sub_1C4EFC448();
    v179 = v288;
    sub_1C4EFC3F8();
    v326(v178, v128);
    sub_1C43FD490(v179);
    if (v133)
    {
      sub_1C46BFD7C(v179);
      v180 = 0;
      v178 = 0;
    }

    else
    {
      v180 = v179;
      sub_1C4EF9748();
      sub_1C43FC1CC();
      sub_1C4412F38();
      (*(v181 + 8))(v179, v132);
    }

    v182 = v328;

    *v176 = v180;
    v176[1] = v178;
    v183 = v314;
    sub_1C4425A54();
    sub_1C440BAA8(v185, v186, v187, *(v184 - 256));
    v188 = v306;
    v189 = v183 + v306[5];
    sub_1C4EFD258();
    v190 = v188[6];
    sub_1C442C770();
    sub_1C448CB4C(v291, v183 + v191, v192);
    v193 = v183 + v188[7];
    sub_1C4EFE558();
    v194 = v188[9];
    v195 = (v183 + v188[8]);
    sub_1C4EFE658();
    v196 = v188[10];
    v197 = v321;
    sub_1C4EFC448();
    sub_1C4EFC418();
    sub_1C440D158();
    v326(v197, v322);
    *v195 = v171;
    v195[1] = v197;
    *(v183 + v196) = xmmword_1C4F1E960;
    v198 = v307;
    sub_1C448CB4C(v183, v307, type metadata accessor for ScreenTimeStructs.IdentifierRelationshipType);
    sub_1C440BAA8(v198, 0, 1, v188);
    v199 = v325;
    sub_1C4E724E0(v198);
    if (v311)
    {
      v200 = v199 + v318[11];
      v201 = *(v200 + 8);

      *v200 = xmmword_1C4F17530;
    }

    v202 = v321;
    sub_1C4EFC448();
    v94 = sub_1C4EFC408();
    v326(v202, v322);
    v203 = v309;
    v204 = v308;
    v205 = v310;
    (*(v309 + 104))(v308, *MEMORY[0x1E69667D0], v310);
    v206 = sub_1C4EFC518();
    (*(v203 + 8))(v204, v205);
    v207 = v323;
    if (v94 == v206)
    {
      String.base64EncodedSHA(withPrefix:)();
      v208 = v299;
      sub_1C4DDB44C();
      if (v182)
      {
LABEL_38:

        sub_1C440009C();
        sub_1C441F788();
        sub_1C4406A54();
        v235 = v199;
LABEL_39:
        sub_1C46BFDE4(v235, v234);
        return v94;
      }

      v209 = v208 + *(v294 + 36);
      v210 = *(v209 + 8);

      *v209 = xmmword_1C4F17530;
      v211 = v296;
      sub_1C4425A54();
      sub_1C440BAA8(v213, v214, v215, *(v212 - 256));
      v216 = v295;
      v217 = v211 + v295[5];
      sub_1C4EFD318();
      v218 = v216[6];
      sub_1C442C770();
      sub_1C448CB4C(v291, v211 + v219, v220);
      v221 = v211 + v216[7];
      sub_1C4EFE808();
      v222 = v216[9];
      v94 = (v211 + v216[8]);
      sub_1C4EFE878();
      v223 = (v211 + v216[10]);
      *v223 = 0;
      v223[1] = 0;
      v224 = v211 + v216[11];
      sub_1C4EFE2A8();
      v225 = (v211 + v216[12]);
      *v225 = 0;
      v225[1] = 0;
      v226 = v211 + v216[13];
      sub_1C4EFEB48();
      v227 = (v211 + v216[14]);
      v228 = *MEMORY[0x1E695C590];
      *v227 = sub_1C4F01138();
      v227[1] = v229;
      *v94 = sub_1C4EFF048();
      v94[1] = v230;
      sub_1C46BFDE4(v211, type metadata accessor for ScreenTimeStructs.AgentAffiliationRelationshipType);
      sub_1C46BFDE4(v208, type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person);
    }

    v231 = sub_1C4434F60();
    v233 = sub_1C4E725E8(v231, v290, v232);
    if (v182)
    {
      goto LABEL_38;
    }

    v237 = v233;

    sub_1C49D3614(v237);
    result = sub_1C4EFC3C8();
    v304 = *(result + 16);
    if (!v304)
    {
LABEL_57:

      v94 = v332;
      sub_1C440009C();
      sub_1C441F788();
      sub_1C4406A54();
      sub_1C46BFDE4(v199, v283);
      return v94;
    }

    v239 = 0;
    v308 = result + ((*(v300 + 80) + 32) & ~*(v300 + 80));
    v307 = v300 + 16;
    v306 = (v300 + 8);
    v240 = v319;
    v327 = (v320 + 8);
    *&v238 = 136315138;
    v310 = v238;
    v311 = v320 + 16;
    v305 = result;
    while (1)
    {
      if (v239 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v241 = v300;
      v242 = *(v300 + 72);
      v309 = v239;
      v243 = v308 + v242 * v239;
      v244 = v297;
      v245 = v298;
      (*(v300 + 16))(v297, v243, v298);
      sub_1C4EFC398();

      v246 = sub_1C4EFC3A8();
      (*(v241 + 8))(v244, v245);
      v318 = *(v246 + 16);
      if (v318)
      {
        break;
      }

LABEL_56:
      v239 = v309 + 1;

      v199 = v325;
      result = v305;
      if (v239 == v304)
      {
        goto LABEL_57;
      }
    }

    v247 = 0;
    v321 = v246 + ((*(v320 + 80) + 32) & ~*(v320 + 80));
    v322 = v246;
    while (v247 < *(v246 + 16))
    {
      v328 = 0;
      v248 = *(v320 + 72);
      v324 = v247;
      v249 = v321 + v248 * v247;
      v250 = *(v320 + 16);
      v250(v141, v249, v240);
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v251 = sub_1C4F00978();
      sub_1C442B738(v251, qword_1EDDFECB8);
      v250(v207, v141, v240);
      v252 = sub_1C4F00968();
      v253 = sub_1C4F01CC8();
      if (os_log_type_enabled(v252, v253))
      {
        v254 = swift_slowAlloc();
        v255 = swift_slowAlloc();
        v329 = v255;
        *v254 = v310;
        v250(v312, v207, v240);
        v256 = sub_1C4F01198();
        v258 = v257;
        v326 = *v327;
        v326(v207, v240);
        v259 = sub_1C441D828(v256, v258, &v329);

        *(v254 + 4) = v259;
        v260 = v328;
        v261 = v317;
        _os_log_impl(&dword_1C43F8000, v252, v253, "Processing app activity: %s", v254, 0xCu);
        sub_1C440962C(v255);
        v262 = v255;
        v141 = v315;
        MEMORY[0x1C6942830](v262, -1, -1);
        MEMORY[0x1C6942830](v254, -1, -1);
      }

      else
      {

        v326 = *v327;
        v326(v207, v240);
        v261 = v317;
        v260 = v328;
      }

      sub_1C4EFC368();
      sub_1C440D158();
      v263 = v293;
      if (qword_1EDDE92F8 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v263, qword_1EDE2D038);
      String.base64EncodedSHA(withPrefix:)();
      v265 = v264;
      v94 = v266;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4E7351C(v265, v94, v267, v268, v269, v270, v271, v272, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295);
      if (v260)
      {

        v326(v141, v319);

        sub_1C440009C();
        sub_1C441F788();
        sub_1C4406A54();
        v235 = v325;
        goto LABEL_39;
      }

      v273 = v141;
      sub_1C4EFC368();
      sub_1C43FC1CC();
      v274 = v316;
      v275 = v141;
      v276 = (v261 + *(v316 + 44));
      v277 = v276[1];

      *v276 = v273;
      v276[1] = v263;
      sub_1C4EFC378();
      sub_1C43FC1CC();
      v278 = (v261 + *(v274 + 36));
      v279 = v278[1];

      *v278 = v275;
      v278[1] = v263;
      v280 = sub_1C4434F60();
      v282 = sub_1C4E73DDC(v280, v94, v281);
      v247 = v324 + 1;

      sub_1C49D3614(v282);
      v240 = v319;
      v326(v275, v319);
      sub_1C440E0A8();
      v141 = v275;
      v246 = v322;
      v207 = v323;
      if (v318 == v247)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  return v94;
}

uint64_t sub_1C46BFD7C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB2A8, &qword_1C4F1E978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46BFDE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1C46BFE84(char a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001C4F92140;
  sub_1C4577DBC();
  *(inited + 48) = sub_1C4A3B8F8(a1);
  return sub_1C4F00F28();
}

uint64_t sub_1C46BFF30@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EF9CD8();
  sub_1C43FCE50(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for DeviceAirplaneModeEvent();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46BFFB4(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v17 - v5;
  v7 = sub_1C456902C(&qword_1EC0BB2C0, &qword_1C4F1EA08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v15 = [v14 Wireless];
  swift_unknownObjectRelease();
  v16 = [v15 AirplaneMode];
  swift_unknownObjectRelease();
  sub_1C46751DC();

  if (!v1)
  {
    sub_1C46C02F4(v13, v11, &qword_1EC0BB2C0, &qword_1C4F1EA08);
    sub_1C46C02F4(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A620();
    sub_1C46C0350(v13);
  }
}

void sub_1C46C01B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB2B8, &unk_1C4F1E9F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v9 - v7;
  sub_1C46BFFB4(a1);
  if (!v2)
  {
    sub_1C46C0284(v8, a2);
  }
}

uint64_t sub_1C46C0284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB2B8, &unk_1C4F1E9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C02F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C456902C(a3, a4);
  sub_1C43FCE50(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46C0350(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB2C0, &qword_1C4F1EA08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceAirplaneModeEvent()
{
  result = qword_1EDDE2598;
  if (!qword_1EDDE2598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C042C()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceBacklightContent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C46C0548(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C065C(char a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001C4F92160;
  sub_1C4577DBC();
  *(inited + 48) = sub_1C4A3B8F8(a1);
  return sub_1C4F00F28();
}

void sub_1C46C0708()
{
  v0 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v1 = [v0 Display];
  swift_unknownObjectRelease();
  v2 = [v1 Backlight];
  swift_unknownObjectRelease();
  sub_1C4581248();
}

uint64_t type metadata accessor for DeviceBacklightEvent()
{
  result = qword_1EDDE49B0;
  if (!qword_1EDDE49B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C0864()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceBacklightContent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46C09BC()
{
  result = qword_1EDDDE920;
  if (!qword_1EDDDE920)
  {
    sub_1C4572308(&qword_1EC0BB2D8, "\\F\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE920);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceBluetoothDataProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C0B38(char a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001C4F92180;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001C4F921A0;
  sub_1C4577DBC();
  *(inited + 72) = sub_1C4A3B8F8(a1);
  return sub_1C4F00F28();
}

uint64_t sub_1C46C0C24(char a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = sub_1C46C0B38(a1);
  if (a3)
  {
    v13 = sub_1C45FB538();
    if (v13)
    {
      v14 = v13;
      v15 = sub_1C4EF9CD8();
      sub_1C440BAA8(v11, 1, 1, v15);
      sub_1C4886564(a2, a3, v11);
      v17 = v16;
      sub_1C45942C8(v14);
      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v17)
      {
        sub_1C4577DBC();
        if (sub_1C4594E18())
        {
          swift_isUniquelyReferenced_nonNull_native();
          v26 = v12;
          sub_1C4660314();
          return v26;
        }

        else
        {
          v18 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4F921C0);
          if (v19)
          {
            v20 = v18;
            swift_isUniquelyReferenced_nonNull_native();
            v26 = v12;
            v21 = *(v12 + 24);
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v12 = v26;
            v22 = *(*(v26 + 48) + 16 * v20 + 8);

            v23 = *(*(v12 + 56) + 8 * v20);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1C46C0E48@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  (*(v13 + 32))(a6, a1);
  result = type metadata accessor for DeviceBluetoothEvent();
  *(a6 + *(result + 20)) = a2;
  v15 = a6 + *(result + 24);
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  return result;
}

uint64_t sub_1C46C0EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C46C0F20(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v21 - v7;
  v9 = sub_1C456902C(&qword_1EC0BB2E8, &qword_1C4F1EBF8);
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - v16;
  v18 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v19 = [v18 Wireless];
  swift_unknownObjectRelease();
  v20 = [v19 Bluetooth];
  swift_unknownObjectRelease();
  sub_1C467485C();

  if (!v1)
  {
    sub_1C445FFF0(v17, v15, &qword_1EC0BB2E8, &qword_1C4F1EBF8);
    sub_1C445FFF0(a1, v8, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C4939E80();
    sub_1C4420C3C(v17, &qword_1EC0BB2E8, &qword_1C4F1EBF8);
  }
}

void sub_1C46C1124(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB2E0, &unk_1C4F1EBE8);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v11 - v9;
  sub_1C46C0F20(a1);
  if (!v2)
  {
    sub_1C46C11F4(v10, a2);
  }
}

uint64_t sub_1C46C11F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB2E0, &unk_1C4F1EBE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DeviceBluetoothEvent()
{
  result = qword_1EDDE48E8;
  if (!qword_1EDDE48E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C12D8()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C46C136C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C46C3994(a1, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C46C13F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C46C144C(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_1C46C144C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v60 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() userIsFirstBacklightOnAfterWakeup];
  if (!v13)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = a2;
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C43F8000, v17, v18, "Could not initialize userIsFirstBacklightOnAfterWakeup stream", v20, 2u);
      v21 = v20;
      a2 = v19;
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    goto LABEL_29;
  }

  v14 = v13;
  sub_1C445FFF0(a1, v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = sub_1C44157D4(v7, 1, v8);
  v63 = v9;
  v64 = v8;
  if (v15 == 1)
  {
    sub_1C4EF9BE8();
    if (sub_1C44157D4(v7, 1, v8) != 1)
    {
      sub_1C44686E4(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
  }

  sub_1C4461BB8(0, &unk_1EDDF0550, 0x1E6997968);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = sub_1C4EF9BF8();
  v24 = sub_1C4EF9BF8();
  v25 = [ObjCClassFromMetadata predicateForEventsWithStartOrEndInDateRangeWithFrom:v23 to:v24];

  if (v25)
  {
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v26 = swift_allocObject();
    v62 = xmmword_1C4F0FCC0;
    *(v26 + 16) = xmmword_1C4F0FCC0;
    *(v26 + 32) = v14;
    v27 = swift_allocObject();
    *(v27 + 16) = v62;
    v28 = objc_opt_self();
    v29 = v14;
    v30 = [v28 startDateSortDescriptorAscending_];
    if (v30)
    {
      *(v27 + 32) = v30;
      *&v62 = v25;
      v31 = sub_1C46C1BB4(v25, v26, 0, 4, v27);
      [v31 setReadMetadata_];
      v32 = [objc_allocWithZone(MEMORY[0x1E69979A0]) init];
      v65[0] = 0;
      v33 = [v32 executeQuery:v31 error:v65];

      v34 = v65[0];
      if (v33)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v65[0] = 0;
          sub_1C4461BB8(0, &qword_1EDDF0368, 0x1E6997960);
          v35 = v34;
          v36 = v33;
          sub_1C4F01668();

          v37 = v65[0];
          if (v65[0])
          {

            (*(v63 + 8))(v12, v64);
LABEL_30:
            *a2 = v37;
            v59 = *MEMORY[0x1E69E9840];
            return;
          }
        }

        else
        {
          v52 = v34;
        }

        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        v53 = sub_1C4F00978();
        sub_1C442B738(v53, qword_1EDDFECB8);
        v54 = sub_1C4F00968();
        v55 = sub_1C4F01CF8();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = v29;
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1C43F8000, v54, v55, "Could not convert results to [_DKEvent] in MotionStateSignal", v57, 2u);
          v58 = v57;
          v29 = v56;
          MEMORY[0x1C6942830](v58, -1, -1);
        }
      }

      else
      {
        v38 = v65[0];
        v39 = sub_1C4EF97A8();

        swift_willThrow();
        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        v40 = sub_1C4F00978();
        sub_1C442B738(v40, qword_1EDDFECB8);
        v41 = v39;
        v42 = sub_1C4F00968();
        v43 = sub_1C4F01CF8();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v61 = v29;
          v45 = v44;
          v60 = swift_slowAlloc();
          v65[0] = v60;
          *v45 = 136315138;
          swift_getErrorValue();
          v46 = sub_1C4F02A38();
          v48 = a2;
          v49 = sub_1C441D828(v46, v47, v65);

          *(v45 + 4) = v49;
          a2 = v48;
          _os_log_impl(&dword_1C43F8000, v42, v43, "Error executing CoreDuet query to fetch last event in Motion State stream - %s", v45, 0xCu);
          v50 = v60;
          sub_1C440962C(v60);
          MEMORY[0x1C6942830](v50, -1, -1);
          v51 = v45;
          v29 = v61;
          MEMORY[0x1C6942830](v51, -1, -1);
        }

        else
        {
        }
      }

      (*(v63 + 8))(v12, v64);
LABEL_29:
      v37 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1C46C1BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_1C4461BB8(0, &unk_1EDDF0480, 0x1E6997970);
  v9 = sub_1C4F01658();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C4461BB8(0, &unk_1EDDF0458, 0x1E696AEB0);
  v10 = sub_1C4F01658();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() eventQueryWithPredicate:a1 eventStreams:v9 offset:a3 limit:a4 sortDescriptors:v10];

  return v11;
}

void sub_1C46C1D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v36 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v36;
  do
  {
    if (byte_1F43D2870[v29 + 32] == 1)
    {
      v31 = "mins_since_last_backlight_on";
    }

    else
    {
      v31 = "mins_since_first_backlight_on";
    }

    if (byte_1F43D2870[v29 + 32])
    {
      v32 = 0xD00000000000001DLL;
    }

    else
    {
      v32 = 0xD00000000000001CLL;
    }

    if (byte_1F43D2870[v29 + 32])
    {
      v33 = v31;
    }

    else
    {
      v33 = "deviceDisplaySignal";
    }

    v37 = v30;
    v34 = *(v30 + 16);
    if (v34 >= *(v30 + 24) >> 1)
    {
      sub_1C44CD9C0();
      v30 = v37;
    }

    ++v29;
    *(v30 + 16) = v34 + 1;
    v35 = v30 + 16 * v34;
    *(v35 + 32) = v32;
    *(v35 + 40) = v33 | 0x8000000000000000;
  }

  while (v29 != 3);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void sub_1C46C1E5C()
{
  sub_1C43FEE04();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(v0 + 24);
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v10);
  (*(v11 + 16))(v7, v2, v10);
  sub_1C440E0D0();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C43FD4B0();
  v14 = [v9 publisherWithOptions_];

  sub_1C44000D0();
  v23 = 1107296256;
  v24 = sub_1C45BC0BC;
  v25 = &unk_1F43E7DC0;
  v15 = _Block_copy(&v22);
  v16 = [v14 filterWithIsIncluded_];
  _Block_release(v15);

  v26 = nullsub_1;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  sub_1C440A8EC();
  v24 = v17;
  v25 = &unk_1F43E7DE8;
  v18 = _Block_copy(&v22);
  v26 = sub_1C46C3C94;
  v27 = v8;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C44405F8;
  v25 = &unk_1F43E7E10;
  v19 = _Block_copy(&v22);

  v20 = [v16 sinkWithCompletion:v18 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v18);

  sub_1C440D2B4();
  v21 = *(v8 + 16);

  sub_1C44085C4();
  sub_1C4416FC8();
}

id sub_1C46C20FC(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 hasBacklightLevel];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v5, "mostRecentBacklightOnEvent: backlight event is nil", v6, 2u);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void sub_1C46C220C()
{
  sub_1C43FEE04();
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C46C1E5C();
  if (v10)
  {
    v11 = v10;
    [v10 timestamp];
    sub_1C4EF9AC8();
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0xD00000000000001CLL;
    *(inited + 40) = 0x80000001C4F915D0;
    sub_1C4EF9B78();
    sub_1C442C788(v13 / 60.0);
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F00F28();

    (*(v4 + 8))(v9, v1);
    sub_1C44085C4();
    sub_1C4416FC8();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      sub_1C440BAE8(&dword_1C43F8000, v18, v19, "DeviceDisplaySignal: backlight event is nil");
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4416FC8();

    sub_1C4F00F28();
  }
}

void sub_1C46C249C(uint64_t a1)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v31 - v14;
  v16 = *(v1 + 40);
  v34 = a1;
  v35 = v3;
  v32 = v11;
  v33 = v6;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    sub_1C440BAA8(&v31 - v14, 1, 1, v3);
    v17 = sub_1C46C13F0(v15);
    sub_1C44686E4(v15);
  }

  v18 = sub_1C4428DA0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; ; ++i)
  {
    if (v18 == i)
    {

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C4F00F28();
      return;
    }

    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1C6940F90](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v20 = *(v17 + 8 * i + 32);
    }

    v21 = v20;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v22 = [v20 value];
    if (!v22)
    {
      goto LABEL_19;
    }

    v23 = v22;
    v24 = [v22 integerValue];

    if (v24 == 1)
    {
      break;
    }
  }

  v25 = [v21 startDate];
  if (v25)
  {
    v26 = v25;

    v27 = v32;
    sub_1C4EF9C78();

    sub_1C4EF9B78();
    v29 = v28;
    (*(v33 + 8))(v27, v35);
    sub_1C442C788(v29 / 60.0);
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    sub_1C4402F04(inited, "mins_since_first_backlight_on");
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F00F28();

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1C46C27F8()
{
  sub_1C43FEE04();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(v0 + 32);
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v10);
  (*(v11 + 16))(v7, v2, v10);
  sub_1C440E0D0();
  v12 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v13 = sub_1C43FD4B0();
  v14 = [v9 publisherWithOptions_];

  sub_1C44000D0();
  v23 = 1107296256;
  v24 = sub_1C45BC0BC;
  v25 = &unk_1F43E7D20;
  v15 = _Block_copy(&v22);
  v16 = [v14 filterWithIsIncluded_];
  _Block_release(v15);

  v26 = nullsub_1;
  v27 = 0;
  v22 = MEMORY[0x1E69E9820];
  sub_1C440A8EC();
  v24 = v17;
  v25 = &unk_1F43E7D48;
  v18 = _Block_copy(&v22);
  v26 = sub_1C46C3CDC;
  v27 = v8;
  v22 = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C44405F8;
  v25 = &unk_1F43E7D70;
  v19 = _Block_copy(&v22);

  v20 = [v16 sinkWithCompletion:v18 receiveInput:v19];

  _Block_release(v19);
  _Block_release(v18);

  sub_1C440D2B4();
  v21 = *(v8 + 16);

  sub_1C44085C4();
  sub_1C4416FC8();
}

uint64_t sub_1C46C2A98(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];

    return v3 ^ 1;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "mostRecentScreenUnlockEvent: backlight event is nil", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    return 0;
  }
}

id sub_1C46C2BAC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1C46C2C10()
{
  sub_1C43FEE04();
  v1 = sub_1C4EF9CD8();
  v2 = sub_1C43FCDF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C46C27F8();
  if (v10)
  {
    v11 = v10;
    [v10 timestamp];
    sub_1C4EF9AC8();
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    sub_1C4402F04(inited, "mins_since_last_screen_unlock");
    sub_1C4EF9B78();
    sub_1C442C788(v13 / 60.0);
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F00F28();

    (*(v4 + 8))(v9, v1);
    sub_1C44085C4();
    sub_1C4416FC8();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      sub_1C440BAE8(&dword_1C43F8000, v18, v19, "DeviceDisplaySignal: screenLockEvent event is nil");
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4416FC8();

    sub_1C4F00F28();
  }
}

void sub_1C46C2E90(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v44);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for FeatureProviderSnapshot(0);
  v14 = sub_1C43FCDF8(v13);
  v42 = v15;
  v43 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *(a2 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v38 = a3;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v22 = v46;
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v25 = a2 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v40 = *(v23 + 56);
    v41 = v24;
    v39 = (v23 - 8);
    do
    {
      v41(v12, v25, v44);
      v41(v20, v12, v44);
      sub_1C46C220C();
      v27 = v26;
      sub_1C46C2C10();
      v29 = v28;
      sub_1C46C249C(v12);
      v31 = v30;
      v32 = sub_1C46C136C(v29, v27);
      v33 = sub_1C46C136C(v31, v32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v34 = sub_1C46C3580(v33, a1);

      sub_1C465CF34(v34);
      v36 = v35;

      (*v39)(v12, v44);
      *(v20 + *(v43 + 20)) = v36;
      v37 = *(v46 + 16);
      if (v37 >= *(v46 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v46 + 16) = v37 + 1;
      sub_1C4586A54(v20, v46 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v37);
      v25 += v40;
      --v21;
    }

    while (v21);
    a3 = v38;
  }

  *a3 = v22;
}

uint64_t sub_1C46C316C()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  sub_1C46C220C();
  v10 = v9;
  sub_1C46C2C10();
  v12 = v11;
  sub_1C46C249C(v8);
  v14 = v13;
  v15 = sub_1C46C136C(v12, v10);
  v16 = sub_1C46C136C(v14, v15);
  (*(v3 + 8))(v8, v0);
  return v16;
}

unint64_t sub_1C46C34E4(uint64_t a1)
{
  result = sub_1C46C350C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46C350C()
{
  result = qword_1EC0BB300;
  if (!qword_1EC0BB300)
  {
    type metadata accessor for DeviceDisplaySignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB300);
  }

  return result;
}

void *sub_1C46C3580(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

__n128 sub_1C46C3744@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = sub_1C4EFDAB8();
  sub_1C43FBCE0(v10);
  v13 = *(a3 + 16);
  v14 = *a3;
  (*(v11 + 16))(a1, a2);
  sub_1C445FFF0(a3, v15, &qword_1EC0B9A20, &unk_1C4F10DF0);
  result = v14;
  *a4 = v14;
  *(a4 + 16) = v13;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

uint64_t sub_1C46C37F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C442E860(a4, a1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return a2;
}

uint64_t sub_1C46C3838(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = a4;
  return a2;
}

uint64_t sub_1C46C3880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C4EFEFB8();
  sub_1C43FBCE0(v8);
  (*(v9 + 16))(a1, a3);
  return sub_1C442E860(a4, a2);
}

uint64_t sub_1C46C38F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return a2;
}

uint64_t sub_1C46C3940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C445FFF0(a4, a1, &qword_1EC0B9AE0, &qword_1C4F16C40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return a2;
}

uint64_t sub_1C46C3994(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v63 = a5;
  sub_1C46C3564(a1, v58);
  v7 = v58[1];
  v8 = v60;
  v9 = v61;
  v51 = v62;
  v52 = v58[0];
  v48 = v59;
  v10 = (v59 + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v49 = a3;

  v50 = v7;
  if (v9)
  {
    while (1)
    {
      v53 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v52 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v52 + 56) + 8 * v13);
      v57[0] = *v14;
      v57[1] = v15;
      v57[2] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v16;
      v51(&v54, v57);

      v18 = v54;
      v19 = v55;
      v20 = v56;
      v21 = *v63;
      v29 = sub_1C445FAA8(v54, v55);
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v53 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02468();
        }
      }

      else
      {
        v34 = v63;
        sub_1C46795D8(v32, v53 & 1, v23, v24, v25, v26, v27, v28, v47, v48, v49, SBYTE4(v49));
        v35 = *v34;
        v36 = sub_1C445FAA8(v18, v19);
        if ((v33 & 1) != (v37 & 1))
        {
          goto LABEL_24;
        }

        v29 = v36;
      }

      v9 &= v9 - 1;
      v38 = *v63;
      if (v33)
      {
        v39 = *(v38[7] + 8 * v29);

        v40 = v38[7];
        v41 = *(v40 + 8 * v29);
        *(v40 + 8 * v29) = v39;
      }

      else
      {
        v38[(v29 >> 6) + 8] |= 1 << v29;
        v42 = (v38[6] + 16 * v29);
        *v42 = v18;
        v42[1] = v19;
        *(v38[7] + 8 * v29) = v20;
        v43 = v38[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_23;
        }

        v38[2] = v45;
      }

      a4 = 1;
      v8 = v11;
      v7 = v50;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1C449BB0C();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v53 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46C3C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C3838(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1C46C3CE0(uint64_t a1)
{
  v3 = BiomeLibrary();
  *(v1 + 16) = v3;
  *(v1 + 40) = a1;
  v4 = [objc_msgSend(v3 Device)];
  swift_unknownObjectRelease();
  v5 = [v4 Backlight];
  swift_unknownObjectRelease();
  *(v1 + 24) = v5;
  v6 = [objc_msgSend(*(v1 + 16) Device)];
  swift_unknownObjectRelease();
  *(v1 + 32) = v6;
  return v1;
}

uint64_t sub_1C46C3DBC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1C46C3DF4()
{
  sub_1C46C3DBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46C3E94()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x6C50656369766564;
  *(inited + 40) = 0xEF6E496465676775;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C46C3F54@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_1C4EF9CD8();
  sub_1C43FCE50(v8);
  (*(v9 + 32))(a4, a1);
  result = type metadata accessor for DevicePluggedInEvent();
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46C3FD8(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v17 - v5;
  v7 = sub_1C456902C(&qword_1EC0BB310, &qword_1C4F1EE08);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - v12;
  v14 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v15 = [v14 Power];
  swift_unknownObjectRelease();
  v16 = [v15 PluggedIn];
  swift_unknownObjectRelease();
  sub_1C4674ABC();

  if (!v1)
  {
    sub_1C46C02F4(v13, v11, &qword_1EC0BB310, &qword_1C4F1EE08);
    sub_1C46C02F4(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A068();
    sub_1C46C4318(v13);
  }
}

void sub_1C46C41D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BB308, &unk_1C4F1EDF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v9 - v7;
  sub_1C46C3FD8(a1);
  if (!v2)
  {
    sub_1C46C42A8(v8, a2);
  }
}

uint64_t sub_1C46C42A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB308, &unk_1C4F1EDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C4318(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB310, &qword_1C4F1EE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DevicePluggedInEvent()
{
  result = qword_1EDDE4820;
  if (!qword_1EDDE4820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C43F4()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1C46C4478(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C455C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C46C63CC(a1, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C46C45E0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v38 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v37 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v8 = v9;
LABEL_9:
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(v37 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v37 + 56) + 8 * v10);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v14;
      sub_1C46795D8(v15 + 1, 1, v18, v19, v20, v21, v22, v23, v35, v36, v37, SBYTE4(v37));
      v1 = v38;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = v14;
    }

    v24 = *(v1 + 40);
    sub_1C4F02AF8();
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v25 = v1 + 64;
    v26 = -1 << *(v1 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v1 + 64 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v1 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v1 + 48) + 16 * v29);
    *v34 = v12;
    v34[1] = v13;
    *(*(v1 + 56) + 8 * v29) = v14;
    ++*(v1 + 16);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v25 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C46C47FC()
{
  v1 = BiomeLibrary();
  *(v0 + 16) = v1;
  v2 = [objc_msgSend(v1 Device)];
  swift_unknownObjectRelease();
  v3 = [v2 LowPowerMode];
  swift_unknownObjectRelease();
  *(v0 + 24) = v3;
  v4 = [objc_msgSend(*(v0 + 16) Device)];
  swift_unknownObjectRelease();
  v5 = [v4 BatteryLevel];
  swift_unknownObjectRelease();
  *(v0 + 32) = v5;
  v6 = [objc_msgSend(*(v0 + 16) Device)];
  swift_unknownObjectRelease();
  v7 = [v6 PluggedIn];
  swift_unknownObjectRelease();
  *(v0 + 40) = v7;
  return v0;
}

void sub_1C46C49C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0();
  v29 = 0;
  v30 = v43;
  v31 = 0x80000001C4F8FD30;
  v32 = 0x80000001C4F8FCD0;
  v33 = 0x80000001C4F8FD10;
  v34 = 0x80000001C4F8FCF0;
  do
  {
    v35 = 0xEE0065646F6D5F72;
    v36 = 0x65776F705F776F6CLL;
    switch(byte_1F43D27C0[v29 + 32])
    {
      case 1:
        v36 = 0xD000000000000012;
        v35 = v34;
        break;
      case 2:
        v36 = 0xD000000000000015;
        v35 = v33;
        break;
      case 3:
        v36 = 0xD000000000000011;
        v35 = v32;
        break;
      case 4:
        v36 = 0xD000000000000023;
        v35 = v31;
        break;
      default:
        break;
    }

    v44 = v30;
    v37 = *(v30 + 16);
    if (v37 >= *(v30 + 24) >> 1)
    {
      v41 = v32;
      v42 = v31;
      v39 = v34;
      v40 = v33;
      sub_1C44CD9C0();
      v34 = v39;
      v33 = v40;
      v32 = v41;
      v31 = v42;
      v30 = v44;
    }

    ++v29;
    *(v30 + 16) = v37 + 1;
    v38 = v30 + 16 * v37;
    *(v38 + 32) = v36;
    *(v38 + 40) = v35;
  }

  while (v29 != 5);

  sub_1C4499940(v30, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C46C4B6C(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    sub_1C440BAE8(&dword_1C43F8000, v8, v9, "Unable to fetch recent event from LowPower Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C4C34(uint64_t a1)
{
  v1 = sub_1C46C4B6C(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((inited + 32), "low_power_mode");
    *(inited + 47) = -18;
    sub_1C4577DBC();
    *(inited + 48) = sub_1C4A3B8F8([v2 starting]);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v4 = sub_1C4F00F28();
    v5 = sub_1C467894C(v4);

    return v5;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v9))
    {
      v10 = sub_1C43FCED0();
      sub_1C43FBD24(v10);
      sub_1C440BAE8(&dword_1C43F8000, v11, v12, "DevicePowerSignal: Low power mode event is nil");
      sub_1C43FE9D4();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C46C4DE4(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    sub_1C440BAE8(&dword_1C43F8000, v8, v9, "Unable to fetch recent event from BatteryLevelStream Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C4EAC(uint64_t a1)
{
  v1 = sub_1C46C4DE4(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001C4F8FCF0;
    [v2 batteryPercentage];
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    *(inited + 56) = 0xD000000000000015;
    *(inited + 64) = 0x80000001C4F8FD10;
    sub_1C4577DBC();
    *(inited + 72) = sub_1C4A3B8F8([v2 fullyCharged]);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v5 = sub_1C4F00F28();
    v6 = sub_1C467894C(v5);

    return v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v8 = sub_1C4F00978();
    sub_1C43FCEE8(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v10))
    {
      v11 = sub_1C43FCED0();
      sub_1C43FBD24(v11);
      sub_1C440BAE8(&dword_1C43F8000, v12, v13, "DevicePowerSignal: BatteryLevel event is nil");
      sub_1C43FE9D4();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C46C50B4(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDDFECB8);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C43FBD24(v7);
    sub_1C440BAE8(&dword_1C43F8000, v8, v9, "Unable to fetch recent event from DevicePluggedIn Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C517C(uint64_t a1)
{
  v3 = sub_1C4EF9CD8();
  v4 = sub_1C43FCDF8(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &aBlock - v17;
  v19 = *(v1 + 40);
  (*(v6 + 16))(&aBlock - v17, a1, v3);
  sub_1C440BAA8(v18, 0, 1, v3);
  sub_1C440BAA8(v16, 1, 1, v3);
  v20 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v21 = sub_1C457A86C(v18, v16, 2, 0, 1);
  v22 = [v19 publisherWithOptions_];

  v38 = sub_1C46C5590;
  v39 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C45AF9C8;
  v37 = &unk_1F43E7FD0;
  v23 = _Block_copy(&aBlock);
  v24 = [v22 filterWithIsIncluded_];
  _Block_release(v23);

  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v38 = nullsub_1;
  v39 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C44405F8;
  v37 = &unk_1F43E8020;
  v26 = _Block_copy(&aBlock);
  v38 = sub_1C46C6688;
  v39 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1C4440590;
  v37 = &unk_1F43E8048;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 sinkWithCompletion:v26 receiveInput:v27];
  _Block_release(v27);
  _Block_release(v26);

  swift_beginAccess();
  v29 = *(v25 + 16);
  if (v29)
  {
    v30 = v29;
    [v30 timestamp];
    sub_1C4EF9AC8();
    sub_1C4EF9B78();
    v32 = v31;

    (*(v6 + 8))(v11, v3);

    *&result = round(v32 / 60.0 * 100.0) / 100.0;
  }

  else
  {

    *&result = 0.0;
  }

  return result;
}

id sub_1C46C5590(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v5, "timeSinceLastDeviceChargeStart: device plugged in event is nil", v6, 2u);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C46C56A0(uint64_t a1)
{
  v2 = sub_1C46C50B4(a1);
  if (v2)
  {
    v3 = v2;
    sub_1C4577DBC();
    v4 = sub_1C4F00F28();
    sub_1C4A3B8F8([v3 starting]);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
    v5 = sub_1C46C517C(a1);
    if (sub_1C4A3B944(v5, v6 & 1))
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v14 = sub_1C445FAA8(0xD000000000000023, 0x80000001C4F8FD30);
      if (v15)
      {
        v16 = v14;
        swift_isUniquelyReferenced_nonNull_native();
        v21 = v4;
        v17 = *(v4 + 24);
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();
        v4 = v21;
        v18 = *(*(v21 + 48) + 16 * v16 + 8);

        v19 = *(*(v21 + 56) + 8 * v16);
        sub_1C4F02478();
      }
    }

    v20 = sub_1C46C45E0(v4);

    return v20;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v9))
    {
      v10 = sub_1C43FCED0();
      sub_1C43FBD24(v10);
      sub_1C440BAE8(&dword_1C43F8000, v11, v12, "DevicePowerSignal: PluggedIn event is nil");
      sub_1C43FE9D4();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C46C5954(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v41);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = type metadata accessor for FeatureProviderSnapshot(0);
  v14 = sub_1C43FCDF8(v13);
  v39 = v15;
  v40 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = *(a2 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v22 = v43;
    v24 = *(v7 + 16);
    v23 = v7 + 16;
    v25 = a2 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
    v37 = *(v23 + 56);
    v38 = v24;
    v36 = (v23 - 8);
    do
    {
      v38(v12, v25, v41);
      v38(v20, v12, v41);
      v26 = sub_1C46C4C34(v12);
      v27 = sub_1C46C4EAC(v12);
      v28 = sub_1C46C56A0(v12);
      v29 = sub_1C46C455C(v27, v26);
      v30 = sub_1C46C455C(v28, v29);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v31 = sub_1C46C6208(v30, a1);

      sub_1C465CF34(v31);
      v33 = v32;

      (*v36)(v12, v41);
      *(v20 + *(v40 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v20, v43 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v34);
      v25 += v37;
      --v21;
    }

    while (v21);
    a3 = v35;
  }

  *a3 = v22;
}

uint64_t sub_1C46C5C30(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = a1 == 0x65776F705F776F6CLL && a2 == 0xEE0065646F6D5F72;
  if (v13 || (sub_1C43FD4D8() & 1) != 0)
  {
    sub_1C4EF9C88();
    sub_1C46C4C34(v12);
LABEL_7:
    (*(v7 + 8))(v12, v4);
    v14 = sub_1C44F9274(a1);

    return v14;
  }

  v16 = a1 == 0xD000000000000011 && 0x80000001C4F8FCD0 == a2;
  if (v16 || (sub_1C43FD4D8() & 1) != 0)
  {
    sub_1C4EF9C88();
    sub_1C46C56A0(v12);
    goto LABEL_7;
  }

  v17 = a1 == 0xD000000000000015 && 0x80000001C4F8FD10 == a2;
  if (v17 || (sub_1C43FD4D8() & 1) != 0 || (a1 == 0xD000000000000012 ? (v18 = 0x80000001C4F8FCF0 == a2) : (v18 = 0), v18 || (sub_1C43FD4D8() & 1) != 0))
  {
    sub_1C4EF9C88();
    sub_1C46C4EAC(v12);
    goto LABEL_7;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88();
  }

  v19 = sub_1C4F00978();
  sub_1C43FCEE8(v19, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1C441D828(a1, a2, &v24);
    _os_log_impl(&dword_1C43F8000, v20, v21, "Feature with name %s doesn't exist", v22, 0xCu);
    sub_1C440962C(v23);
    MEMORY[0x1C6942830](v23, -1, -1);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  return 0;
}

uint64_t sub_1C46C5F80()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C46C4C34(v8);
  v10 = sub_1C46C4EAC(v8);
  v11 = sub_1C46C56A0(v8);
  v12 = sub_1C46C455C(v10, v9);
  v13 = sub_1C46C455C(v11, v12);
  (*(v3 + 8))(v8, v0);
  return v13;
}
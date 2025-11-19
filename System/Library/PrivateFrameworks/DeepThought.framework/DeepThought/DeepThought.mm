_DWORD *sub_24868CADC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_24868CB08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24868CB70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24868CC14@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t _s11DeepThought19AggregationIntervalVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24868CCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2486B4DAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24868CDB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2486B4DAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24868CED4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t PenetrationRateCalculationTask.eventFilter.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_24868D00C(uint64_t a1, uint64_t (*a2)(void), char a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2(0);
  type metadata accessor for PenetrationRateCalculationTask();
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = v8;
  *(result + 32) = a4;
  *a5 = result;
  return result;
}

uint64_t sub_24868D08C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t SiriPenetrationRateResult.countsByAggregationInterval.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

BOOL sub_24868D27C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  a2(0);
  v6 = a3();
  a4(&v9, v6);

  v7 = v10;
  if (v10)
  {
  }

  return v7 != 0;
}

uint64_t _s11DeepThought24SiriPenetrationRateUtilsO07alignToC15ExecutionEvents04siriiJ00K8UIEvents0K13Conversations12timeDurationSay0aB15BiomeFoundation15FeaturizedEventCGAL_ALSayAI0R12ConversationCGSdtFZ_0(unint64_t a1, unint64_t a2, unint64_t a3, double a4)
{
  v138 = a3;
  v160 = sub_2486B4FCC();
  v156 = *(v160 - 8);
  v7 = *(v156 + 64);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_2486B4DAC();
  *&v144 = *(v150 - 8);
  v9 = *(v144 + 64);
  MEMORY[0x28223BE20](v150);
  v149 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_2486B53BC();
  v135 = *(v161 - 8);
  v11 = *(v135 + 64);
  v12 = MEMORY[0x28223BE20](v161);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v147 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v134 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v134 - v20;
  v22 = sub_2486B535C();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v158 = v22;
  swift_allocObject();
  result = sub_2486B530C();
  v151 = result;
  v134 = v14;
  if (a1 >> 62)
  {
    goto LABEL_133;
  }

  v27 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v162 = a2;
  v157 = v19;
  if (!v27)
  {
LABEL_16:
    v39 = *(v158 + 48);
    v40 = *(v158 + 52);
    swift_allocObject();
    v141 = sub_2486B530C();
    if (a2 >> 62)
    {
      v41 = sub_2486B56BC();
    }

    else
    {
      v41 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v151;
    if (v41)
    {
      result = sub_2486B506C();
      v164 = result;
      if (v41 >= 1)
      {
        v21 = 0;
        v163 = (a2 & 0xC000000000000001);
        v155 = (v135 + 8);
        v146 = (v144 + 8);
        v44 = *MEMORY[0x277D04490];
        v153 = (v156 + 104);
        v152 = (v156 + 8);
        *&v43 = 136315650;
        v145 = v43;
        LODWORD(v148) = v44;
        *&v154 = v41;
        while (1)
        {
          if (v163)
          {
            a1 = MEMORY[0x24C1D5E60](v21, a2);
          }

          else
          {
            a1 = *(a2 + 8 * v21 + 32);
          }

          sub_2486B505C();
          sub_2486B50FC();

          if (v167)
          {

            sub_2486B50EC();
            swift_retain_n();
            v45 = sub_2486B539C();
            v46 = sub_2486B55AC();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v165 = v48;
              *v47 = v145;
              sub_2486B512C();
              v49 = v149;
              sub_2486B4D5C();
              sub_24868EAC0();
              a2 = v150;
              v19 = sub_2486B57CC();
              v51 = v50;
              (*v146)(v49, a2);
              v52 = sub_2486965C0(v19, v51, &v165);

              *(v47 + 4) = v52;
              *(v47 + 12) = 2048;
              sub_2486B512C();
              v54 = v53;

              v55 = v54 / a4;
              if (COERCE__INT64(fabs(v54 / a4)) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_125;
              }

              if (v55 <= -9.22337204e18)
              {
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
                result = sub_2486B56BC();
                v27 = result;
                goto LABEL_3;
              }

              if (v55 >= 9.22337204e18)
              {
                goto LABEL_127;
              }

              *(v47 + 14) = v55;

              *(v47 + 22) = 2080;
              sub_2486B505C();
              sub_2486B50FC();

              if (v167)
              {
                v56 = v166;
              }

              else
              {
                v56 = 0;
              }

              if (v167)
              {
                v57 = v167;
              }

              else
              {
                v57 = 0xE000000000000000;
              }

              v58 = sub_2486965C0(v56, v57, &v165);

              *(v47 + 24) = v58;
              _os_log_impl(&dword_24868B000, v45, v46, "marker: trying to add the event to the siriUIEventsByBucketizedTimestamp at time %s with bucket %ld with %s", v47, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x24C1D6650](v48, -1, -1);
              MEMORY[0x24C1D6650](v47, -1, -1);

              v19 = v157;
              (*v155)(v157, v161);
              v42 = v151;
              a2 = v162;
            }

            else
            {

              (*v155)(v19, v161);
            }

            v59 = v159;
            v168 = v158;
            v169 = MEMORY[0x277D04568];
            v166 = v42;
            v44 = v148;
            v60 = v160;
            (*v153)(v159, v148, v160);

            sub_2486B532C();

            (*v152)(v59, v60);
            __swift_destroy_boxed_opaque_existential_1Tm(&v166);
            v41 = v154;
          }

          else
          {
          }

          if (v41 == ++v21)
          {
            goto LABEL_41;
          }
        }
      }

      goto LABEL_137;
    }

    v44 = *MEMORY[0x277D04490];
LABEL_41:
    v61 = v156;
    v62 = *(v156 + 104);
    v64 = v159;
    v63 = v160;
    v155 = (v156 + 104);
    *&v154 = v62;
    v62(v159, v44, v160);
    sub_2486B52EC();
    v65 = *(v61 + 8);
    v156 = v61 + 8;
    v153 = v65;
    v65(v64, v63);
    v66 = sub_2486B52DC();
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v21 = sub_2486B52AC();
    if (v138 >> 62)
    {
      a1 = sub_2486B56BC();
    }

    else
    {
      a1 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v70 = v147;
    v146 = v21;
    if (a1)
    {
      v71 = 0;
      v140 = v138 & 0xC000000000000001;
      v137 = v138 & 0xFFFFFFFFFFFFFF8;
      v136 = v138 + 32;
      v152 = (v135 + 8);
      *&v145 = v144 + 8;
      a2 = MEMORY[0x277D837D0];
      *&v69 = 136315394;
      v144 = v69;
      LODWORD(v148) = v44;
      v139 = a1;
      do
      {
        if (v140)
        {
          v72 = MEMORY[0x24C1D5E60](v71, v138);
          v73 = __OFADD__(v71, 1);
          v74 = v71 + 1;
          if (v73)
          {
            goto LABEL_120;
          }
        }

        else
        {
          if (v71 >= *(v137 + 16))
          {
            goto LABEL_128;
          }

          v75 = *(v136 + 8 * v71);

          v73 = __OFADD__(v71, 1);
          v74 = v71 + 1;
          if (v73)
          {
            goto LABEL_120;
          }
        }

        v143 = v74;
        v142 = v72;
        v76 = sub_2486B51EC();
        v19 = v76;
        if (v76 >> 62)
        {
          v77 = sub_2486B56BC();
          if (v77)
          {
LABEL_54:
            v164 = sub_2486B4FEC();
            if (v77 >= 1)
            {
              a1 = 0;
              v162 = v77;
              v163 = (v19 & 0xC000000000000001);
              v157 = v19;
              while (1)
              {
                if (v163)
                {
                  MEMORY[0x24C1D5E60](a1, v19);
                }

                else
                {
                  v80 = *(v19 + 8 * a1 + 32);
                }

                sub_2486B4FDC();
                sub_2486B523C();

                if (v167 || (sub_2486B500C(), sub_2486B4FFC(), sub_2486B523C(), , v167))
                {

                  sub_2486B50EC();
                  swift_retain_n();
                  a2 = sub_2486B539C();
                  v19 = sub_2486B55AC();
                  if (os_log_type_enabled(a2, v19))
                  {
                    v81 = swift_slowAlloc();
                    v82 = swift_slowAlloc();
                    v166 = v82;
                    *v81 = v144;
                    sub_2486B524C();
                    v83 = v149;
                    sub_2486B4D5C();
                    sub_24868EAC0();
                    v21 = v150;
                    v84 = sub_2486B57CC();
                    v86 = v85;
                    (*v145)(v83, v21);
                    v87 = sub_2486965C0(v84, v86, &v166);

                    *(v81 + 4) = v87;
                    *(v81 + 12) = 2048;
                    sub_2486B524C();
                    v89 = v88;

                    v90 = v89 / a4;
                    if (COERCE__INT64(fabs(v89 / a4)) > 0x7FEFFFFFFFFFFFFFLL)
                    {
                      __break(1u);
LABEL_117:
                      __break(1u);
LABEL_118:
                      __break(1u);
                      goto LABEL_119;
                    }

                    if (v90 <= -9.22337204e18)
                    {
                      goto LABEL_117;
                    }

                    if (v90 >= 9.22337204e18)
                    {
                      goto LABEL_118;
                    }

                    *(v81 + 14) = v90;

                    _os_log_impl(&dword_24868B000, a2, v19, "marker: trying to add the turn to the turnsByBucketizedTimestamp at time %s with bucket %ld", v81, 0x16u);
                    __swift_destroy_boxed_opaque_existential_1Tm(v82);
                    MEMORY[0x24C1D6650](v82, -1, -1);
                    MEMORY[0x24C1D6650](v81, -1, -1);

                    v70 = v147;
                    (*v152)(v147, v161);
                    v42 = v151;
                    v21 = v146;
                    v44 = v148;
                  }

                  else
                  {

                    (*v152)(v70, v161);
                  }

                  v78 = v159;
                  v168 = v158;
                  v169 = MEMORY[0x277D04568];
                  v166 = v42;
                  v79 = v160;
                  (v154)(v159, v44, v160);

                  sub_2486B52BC();

                  v153(v78, v79);
                  __swift_destroy_boxed_opaque_existential_1Tm(&v166);
                  a2 = MEMORY[0x277D837D0];
                  v19 = v157;
                }

                else
                {
                }

                if (v162 == ++a1)
                {
                  goto LABEL_45;
                }
              }
            }

LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }
        }

        else
        {
          v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v77)
          {
            goto LABEL_54;
          }
        }

LABEL_45:

        a1 = v139;
        v71 = v143;
      }

      while (v143 != v139);
    }

    v92 = v159;
    v91 = v160;
    (v154)(v159, v44, v160);
    sub_2486B534C();
    v153(v92, v91);
    v93 = v134;
    sub_2486B50EC();

    v19 = v141;

    a1 = sub_2486B539C();
    v94 = sub_2486B55AC();

    if (os_log_type_enabled(a1, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v166 = v96;
      *v95 = 136315650;
      v97 = sub_2486B533C();
      v99 = sub_2486965C0(v97, v98, &v166);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      v100 = sub_2486B533C();
      v102 = sub_2486965C0(v100, v101, &v166);

      *(v95 + 14) = v102;
      *(v95 + 22) = 2080;
      v103 = sub_2486B52CC();
      v105 = sub_2486965C0(v103, v104, &v166);

      *(v95 + 24) = v105;
      _os_log_impl(&dword_24868B000, a1, v94, "    marker: The detail of siriExecutionEventsByBucketizedTimestamp is %s,\n\n            The detail of siriUIEventsByBucketizedTimestamp is %s,\n\n            The detail of turnsByBucketizedTimestamp is %s,\n", v95, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1D6650](v96, -1, -1);
      MEMORY[0x24C1D6650](v95, -1, -1);
    }

    (*(v135 + 8))(v93, v161);
    v106 = sub_2486B531C();
    a2 = 0;
    v108 = v106 + 64;
    v107 = *(v106 + 64);
    v164 = v106;
    v109 = 1 << *(v106 + 32);
    v110 = -1;
    if (v109 < 64)
    {
      v110 = ~(-1 << v109);
    }

    v21 = v110 & v107;
    v111 = MEMORY[0x277D84F90];
    v159 = ((v109 + 63) >> 6);
    v160 = v106 + 64;
    while (1)
    {
      if (!v21)
      {
        while (1)
        {
          v112 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            break;
          }

          if (v112 >= v159)
          {
            goto LABEL_115;
          }

          v21 = *(v108 + 8 * v112);
          ++a2;
          if (v21)
          {
            a2 = v112;
            goto LABEL_83;
          }
        }

LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

LABEL_83:
      v113 = __clz(__rbit64(v21));
      v114 = *(*(v164 + 56) + ((a2 << 9) | (8 * v113)));
      if (v114 >> 62)
      {
        if ((v114 & 0x8000000000000000) != 0)
        {
          v132 = *(*(v164 + 56) + ((a2 << 9) | (8 * v113)));
        }

        v115 = sub_2486B56BC();
      }

      else
      {
        v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v116 = v111 >> 62;
      if (v111 >> 62)
      {
        v133 = sub_2486B56BC();
        v118 = v133 + v115;
        if (__OFADD__(v133, v115))
        {
LABEL_114:
          __break(1u);
LABEL_115:

          return v111;
        }
      }

      else
      {
        v117 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v118 = v117 + v115;
        if (__OFADD__(v117, v115))
        {
          goto LABEL_114;
        }
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v116)
      {
        goto LABEL_94;
      }

      v119 = v111 & 0xFFFFFFFFFFFFFF8;
      if (v118 > *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_93;
      }

LABEL_96:
      v121 = *(v119 + 16);
      v19 = *(v119 + 24);
      v122 = v114 >> 62;
      a1 = v114;
      if (v114 >> 62)
      {
        v124 = v119;
        v125 = sub_2486B56BC();
        v119 = v124;
        v123 = v125;
      }

      else
      {
        v123 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v21 &= v21 - 1;
      if (v123)
      {
        if (((v19 >> 1) - v121) < v115)
        {
          goto LABEL_130;
        }

        v19 = v119 + 8 * v121 + 32;
        v162 = v115;
        v163 = v111;
        v161 = v119;
        if (v122)
        {
          if (v123 < 1)
          {
            goto LABEL_132;
          }

          sub_24868EA14();
          v126 = 0;
          v127 = a1;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14E0, &unk_2486B6230);
            v128 = sub_2486A2BE4(&v166, v126, v127);
            a1 = *v129;

            (v128)(&v166, 0);
            *(v19 + 8 * v126++) = a1;
          }

          while (v123 != v126);
        }

        else
        {
          a1 &= 0xFFFFFFFFFFFFFF8uLL;
          sub_2486B513C();
          swift_arrayInitWithCopy();
        }

        v111 = v163;
        v108 = v160;
        if (v162 > 0)
        {
          v130 = *(v161 + 16);
          v73 = __OFADD__(v130, v162);
          v131 = v130 + v162;
          if (v73)
          {
            goto LABEL_131;
          }

          *(v161 + 16) = v131;
        }
      }

      else
      {

        if (v115 > 0)
        {
          goto LABEL_129;
        }
      }
    }

    if (v116)
    {
LABEL_94:
      sub_2486B56BC();
    }

    else
    {
      v119 = v111 & 0xFFFFFFFFFFFFFF8;
LABEL_93:
      v120 = *(v119 + 16);
    }

    v111 = sub_2486B565C();
    v119 = v111 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_96;
  }

  if (v27 >= 1)
  {
    v28 = 0;
    v164 = a1 & 0xC000000000000001;
    v163 = (v135 + 8);
    v155 = (v144 + 8);
    *&v26 = 136315394;
    v154 = v26;
    v153 = a1;
    v152 = v21;
    v148 = v27;
    while (1)
    {
      if (v164)
      {
        MEMORY[0x24C1D5E60](v28, a1);
      }

      else
      {
        v29 = *(a1 + 8 * v28 + 32);
      }

      sub_2486B50EC();
      swift_retain_n();
      v30 = sub_2486B539C();
      v31 = sub_2486B55AC();
      if (os_log_type_enabled(v30, v31))
      {
        a2 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v166 = v19;
        *a2 = v154;
        sub_2486B512C();
        v32 = v149;
        sub_2486B4D5C();
        sub_24868EAC0();
        v21 = v150;
        a1 = sub_2486B57CC();
        v34 = v33;
        (*v155)(v32, v21);
        v35 = sub_2486965C0(a1, v34, &v166);

        *(a2 + 4) = v35;
        *(a2 + 12) = 2048;
        sub_2486B512C();
        v37 = v36;

        v38 = v37 / a4;
        if (COERCE__INT64(fabs(v37 / a4)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_121;
        }

        if (v38 <= -9.22337204e18)
        {
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (v38 >= 9.22337204e18)
        {
          goto LABEL_123;
        }

        *(a2 + 14) = v38;

        _os_log_impl(&dword_24868B000, v30, v31, "marker: adding the event to the siriExecutionEventsByBucketizedTimestamp at time %s with bucket %ld", a2, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x24C1D6650](v19, -1, -1);
        MEMORY[0x24C1D6650](a2, -1, -1);

        v21 = v152;
        (*v163)(v152, v161);
        a2 = v162;
        v19 = v157;
        a1 = v153;
        v27 = v148;
      }

      else
      {

        (*v163)(v21, v161);
      }

      ++v28;
      sub_2486B512C();
      sub_2486B52FC();

      if (v27 == v28)
      {
        goto LABEL_16;
      }
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

unint64_t sub_24868E7B8(uint64_t a1)
{
  result = sub_24868E7E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24868E7E0()
{
  result = qword_27EEA14D8;
  if (!qword_27EEA14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA14D8);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24868E848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24868E890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPenetrationRateUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriPenetrationRateUtils(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24868EA14()
{
  result = qword_27EEA14E8;
  if (!qword_27EEA14E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEA14E0, &unk_2486B6230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA14E8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24868EAC0()
{
  result = qword_280DCC718;
  if (!qword_280DCC718)
  {
    sub_2486B4DAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DCC718);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t Date.getPreviousDate(calendar:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2486B4EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  (*(v3 + 104))(v6, *MEMORY[0x277CC9968], v2);
  sub_2486B4ECC();
  (*(v3 + 8))(v6, v2);
  v10 = sub_2486B4DAC();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a1, v9, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_24868ED58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v29 = a1;
  v25 = a4;
  v4 = sub_2486B4E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2486B4EAC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2486B4E7C();
  v26 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20]();
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v21 = &v25 - v20;
  (*(v15 + 104))(v18, *MEMORY[0x277CC9878], v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CC9900], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277CC98E8], v4);
  sub_2486B4EBC();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v26);
  v22 = sub_2486B4DAC();
  v23 = *(v22 - 8);
  result = (*(v23 + 48))(v21, 1, v22);
  if (result != 1)
  {
    return (*(v23 + 32))(v25, v21, v22);
  }

  __break(1u);
  return result;
}

uint64_t Date.getOffsetDateByDays(calendar:numOfDays:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2486B4EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  (*(v3 + 104))(v6, *MEMORY[0x277CC9968], v2);
  sub_2486B4ECC();
  (*(v3 + 8))(v6, v2);
  v10 = sub_2486B4DAC();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v9, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a1, v9, v10);
  }

  __break(1u);
  return result;
}

uint64_t static Calendar.currentUTC.getter()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F8, &qword_2486B68D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v5 - v1;
  sub_2486B4EDC();
  sub_2486B4F1C();
  v3 = sub_2486B4F2C();
  result = (*(*(v3 - 8) + 48))(v2, 1, v3);
  if (result != 1)
  {
    return sub_2486B4EEC();
  }

  __break(1u);
  return result;
}

uint64_t Calendar.numberOfDaysBetween(start:end:)()
{
  v0 = sub_2486B4D2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1500, &qword_2486B6330);
  v5 = sub_2486B4EFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2486B6240;
  (*(v6 + 104))(v9 + v8, *MEMORY[0x277CC9968], v5);
  sub_24868FAEC(v9);
  swift_setDeallocating();
  (*(v6 + 8))(v9 + v8, v5);
  swift_deallocClassInstance();
  sub_2486B4E8C();

  result = sub_2486B4D1C();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    (*(v1 + 8))(v4, v0);
    return v12;
  }

  return result;
}

uint64_t sub_24868F590()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  __swift_allocate_value_buffer(v0, qword_280DCC700);
  v1 = __swift_project_value_buffer(v0, qword_280DCC700);
  v2 = sub_2486B4DAC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static CustomDate.dateOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  return sub_24868FE44(v3, a1);
}

uint64_t static CustomDate.dateOverride.setter(uint64_t a1)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  sub_24868FEB4(a1, v3);
  swift_endAccess();
  return sub_24868FF24(a1);
}

uint64_t (*static CustomDate.dateOverride.modify())()
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  __swift_project_value_buffer(v0, qword_280DCC700);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24868F814@<X0>(uint64_t a1@<X8>)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  return sub_24868FE44(v3, a1);
}

uint64_t sub_24868F8AC(uint64_t a1)
{
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = __swift_project_value_buffer(v2, qword_280DCC700);
  swift_beginAccess();
  sub_24868FEB4(a1, v3);
  return swift_endAccess();
}

uint64_t static CustomDate.current()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  if (qword_280DCC6F8 != -1)
  {
    v12 = v4;
    swift_once();
    v4 = v12;
  }

  v7 = __swift_project_value_buffer(v4, qword_280DCC700);
  swift_beginAccess();
  sub_24868FE44(v7, v6);
  v8 = sub_2486B4DAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_2486B4D9C();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_24868FF24(v6);
  }

  return result;
}

uint64_t sub_24868FAEC(uint64_t a1)
{
  v2 = sub_2486B4EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1510, "n'");
    v10 = sub_2486B560C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2486907FC(&unk_280DCC830, MEMORY[0x277CC99D0]);
      v18 = sub_2486B53FC();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2486907FC(&qword_27EEA1518, MEMORY[0x277CC99D0]);
          v25 = sub_2486B542C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24868FE44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24868FEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24868FF24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s11DeepThought10CustomDateO15isTodayOrFuture4date8calendarSb10Foundation0D0V_AG8CalendarVtFZ_0(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v80 = a1;
  v87 = sub_2486B4E9C();
  v92 = *(v87 - 8);
  v2 = *(v92 + 64);
  MEMORY[0x28223BE20](v87);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2486B4EAC();
  v91 = *(v5 - 8);
  v6 = *(v91 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_2486B4E7C();
  v93 = *(v90 - 8);
  v9 = *(v93 + 64);
  MEMORY[0x28223BE20](v90);
  v84 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v79 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v81 = &v62 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v62 - v17;
  v19 = sub_2486B4DAC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v62 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v62 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v62 - v27;
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v82 = v28;
  v29 = __swift_project_value_buffer(v11, qword_280DCC700);
  swift_beginAccess();
  sub_24868FE44(v29, v18);
  v30 = *(v20 + 48);
  v31 = v30(v18, 1, v19);
  v78 = v20;
  v85 = v30;
  v86 = v20 + 48;
  v83 = v19;
  v89 = v26;
  if (v31 == 1)
  {
    sub_2486B4D9C();
    if (v30(v18, 1, v19) != 1)
    {
      sub_24868FF24(v18);
    }
  }

  else
  {
    (*(v20 + 32))(v26, v18, v19);
  }

  v32 = v93;
  v33 = *(v93 + 104);
  v34 = v84;
  v75 = *MEMORY[0x277CC9878];
  v76 = v93 + 104;
  v74 = v33;
  v33(v84);
  v35 = v91;
  v36 = *(v91 + 104);
  v72 = *MEMORY[0x277CC9900];
  v73 = v91 + 104;
  v71 = v36;
  v36(v8);
  v37 = v5;
  v38 = v92;
  v39 = *(v92 + 104);
  v69 = *MEMORY[0x277CC98E8];
  v40 = v87;
  v70 = v92 + 104;
  v68 = v39;
  v39(v4);
  v41 = v81;
  sub_2486B4EBC();
  v42 = *(v38 + 8);
  v92 = v38 + 8;
  v63 = v4;
  v67 = v42;
  v42(v4, v40);
  v43 = *(v35 + 8);
  v64 = v8;
  v77 = v37;
  v91 = v35 + 8;
  v66 = v43;
  v43(v8, v37);
  v44 = *(v32 + 8);
  v45 = v34;
  v46 = v90;
  v93 = v32 + 8;
  v65 = v44;
  v44(v45, v90);
  v47 = v83;
  v48 = v85(v41, 1, v83) == 1;
  result = v89;
  if (v48)
  {
    __break(1u);
  }

  else
  {
    v50 = v78;
    v89 = *(v78 + 8);
    (v89)(result, v47);
    v81 = *(v50 + 32);
    (v81)(v82, v41, v47);
    v51 = v84;
    v74(v84, v75, v46);
    v52 = v64;
    v53 = v77;
    v71(v64, v72, v77);
    v54 = v63;
    v55 = v87;
    v68(v63, v69, v87);
    v56 = v79;
    sub_2486B4EBC();
    v67(v54, v55);
    v57 = v83;
    v66(v52, v53);
    v65(v51, v46);
    result = (v85)(v56, 1, v57);
    if (result != 1)
    {
      v58 = v62;
      (v81)(v62, v56, v57);
      sub_2486907FC(&qword_27EEA1508, MEMORY[0x277CC9578]);
      v59 = v82;
      v60 = sub_2486B541C();
      v61 = v89;
      (v89)(v58, v57);
      (v61)(v59, v57);
      return (v60 & 1) == 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2486907FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriPenetrationRateSELFReporter.odmId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v4 = sub_2486B4DFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriPenetrationRateSELFReporter.__allocating_init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v9 = sub_2486B53BC();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  v10 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v11 = sub_2486B4DFC();
  (*(*(v11 - 8) + 32))(v7 + v10, a2, v11);
  return v7;
}

uint64_t SiriPenetrationRateSELFReporter.init(_:odmId:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v6 = sub_2486B53BC();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  v7 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v8 = sub_2486B4DFC();
  (*(*(v8 - 8) + 32))(v2 + v7, a2, v8);
  return v2;
}

uint64_t sub_248690A40(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;

  return MEMORY[0x2822009F8](sub_248690AB0, 0, 0);
}

void sub_248690AB0()
{
  v19 = v0;
  v1 = 0;
  v3 = v0[2];
  v2 = v0[3];
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v17 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v7 = (63 - v5) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = __clz(__rbit64(v6)) | (v1 << 6);
    v10 = *(v2 + 48) + 16 * v9;
    v11 = *(v10 + 8);
    v12 = *(*(v2 + 56) + 8 * v9);
    v6 &= v6 - 1;
    LODWORD(v18[0]) = *v10;
    v18[1] = v11;

    v13 = _s11DeepThought20SELFMessageConverterO27convertToODMSiriClientEvent19aggregationInterval6counts5odmId6loggerSo0g6SchemaghI0CSgAA011AggregationK0V_SayAA14CountsReportedVG10Foundation4UUIDV2os6LoggerVtFZ_0(v18, v12, v3 + v17);

    if (v13)
    {
      v14 = v0[2];
      sub_248690C20(v13);
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  v15 = v0[3];

  v16 = v0[1];

  v16();
}

uint64_t sub_248690C20(void *a1)
{
  v2 = sub_2486B4DFC();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = [objc_opt_self() sharedAnalytics];
  v11 = [v10 defaultMessageStream];

  sub_2486B4DEC();
  v12 = v3[2];
  v37 = v2;
  v12(v7, v9, v2);
  v13 = a1;
  v14 = sub_2486B539C();
  v15 = sub_2486B55AC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v11;
    v17 = v16;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v17 = 136315394;
    v18 = sub_2486B4DCC();
    v20 = v19;
    v35 = v9;
    v21 = v3[1];
    v22 = v7;
    v23 = v37;
    v21(v22, v37);
    v24 = sub_2486965C0(v18, v20, &v38);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v13;
    v25 = v33;
    *v33 = v13;
    v26 = v13;
    _os_log_impl(&dword_24868B000, v14, v15, "SELF reporter: reported task with stats, isolatedStreamUUID = %s, message = %@", v17, 0x16u);
    sub_248694A50(v25, &qword_27EEA1540, &qword_2486B6DC0);
    MEMORY[0x24C1D6650](v25, -1, -1);
    v27 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x24C1D6650](v27, -1, -1);
    v28 = v17;
    v11 = v36;
    MEMORY[0x24C1D6650](v28, -1, -1);

    v29 = v21;
    v9 = v35;
  }

  else
  {

    v29 = v3[1];
    v30 = v7;
    v23 = v37;
    v29(v30, v37);
  }

  v31 = sub_2486B4DDC();
  [v11 emitMessage:v13 isolatedStreamUUID:v31];

  return (v29)(v9, v23);
}

uint64_t sub_248690F44()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v4 = sub_2486B53BC();
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t SiriPenetrationRateSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriPenetrationRateSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId;
  v2 = sub_2486B4DFC();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger;
  v5 = sub_2486B53BC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_248691190(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_2486B54BC();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return MEMORY[0x2821FBFB0](a1, a2, a3, a4);
}

uint64_t sub_24869122C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2486B57BC() & 1;
  }
}

id _s11DeepThought20SELFMessageConverterO30convertLocaleStringToISOLocale6localeSo08SISchemaI0CSgSSSg_tFZ_0(uint64_t a1, void *a2)
{
  v2 = a2;
  if (a2)
  {

    v5 = sub_248691190(6, a1, v2, v4);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    LOBYTE(v5) = sub_24869122C(v5, v7, v9, v11, 0x454C41434F4CLL, 0xE600000000000000);

    if (v5)
    {
      v28 = a1;
      v29 = v2;
      sub_2486949FC();
      v12 = sub_2486B55EC();
      if (v12[2] == 3)
      {
        v13 = v12[6];
        v14 = v12[7];
        v15 = v12;

        v16 = sub_2486B543C();

        v17 = v16;
        if ([v17 isEqualToString:{@"ISOLANGUAGECODE_UNKNOWN", 95, 0xE100000000000000, v28, v29}])
        {
          v18 = 0;
        }

        else if ([v17 isEqualToString:@"AB"])
        {
          v18 = 1;
        }

        else if ([v17 isEqualToString:@"AA"])
        {
          v18 = 2;
        }

        else if ([v17 isEqualToString:@"AF"])
        {
          v18 = 3;
        }

        else if ([v17 isEqualToString:@"AK"])
        {
          v18 = 4;
        }

        else if ([v17 isEqualToString:@"SQ"])
        {
          v18 = 5;
        }

        else if ([v17 isEqualToString:@"AM"])
        {
          v18 = 6;
        }

        else if ([v17 isEqualToString:@"AR"])
        {
          v18 = 7;
        }

        else if ([v17 isEqualToString:@"AN"])
        {
          v18 = 8;
        }

        else if ([v17 isEqualToString:@"HY"])
        {
          v18 = 9;
        }

        else if ([v17 isEqualToString:@"AS"])
        {
          v18 = 10;
        }

        else if ([v17 isEqualToString:@"AV"])
        {
          v18 = 11;
        }

        else if ([v17 isEqualToString:@"AE"])
        {
          v18 = 12;
        }

        else if ([v17 isEqualToString:@"AY"])
        {
          v18 = 13;
        }

        else if ([v17 isEqualToString:@"AZ"])
        {
          v18 = 14;
        }

        else if ([v17 isEqualToString:@"BM"])
        {
          v18 = 15;
        }

        else if ([v17 isEqualToString:@"BA"])
        {
          v18 = 16;
        }

        else if ([v17 isEqualToString:@"EU"])
        {
          v18 = 17;
        }

        else if ([v17 isEqualToString:@"BE"])
        {
          v18 = 18;
        }

        else if ([v17 isEqualToString:@"BN"])
        {
          v18 = 19;
        }

        else if ([v17 isEqualToString:@"BI"])
        {
          v18 = 20;
        }

        else if ([v17 isEqualToString:@"BS"])
        {
          v18 = 21;
        }

        else if ([v17 isEqualToString:@"BR"])
        {
          v18 = 22;
        }

        else if ([v17 isEqualToString:@"BG"])
        {
          v18 = 23;
        }

        else if ([v17 isEqualToString:@"MY"])
        {
          v18 = 24;
        }

        else if ([v17 isEqualToString:@"CA"])
        {
          v18 = 25;
        }

        else if ([v17 isEqualToString:@"CH"])
        {
          v18 = 26;
        }

        else if ([v17 isEqualToString:@"CE"])
        {
          v18 = 27;
        }

        else if ([v17 isEqualToString:@"NY"])
        {
          v18 = 28;
        }

        else if ([v17 isEqualToString:@"ZH"])
        {
          v18 = 29;
        }

        else if ([v17 isEqualToString:@"CV"])
        {
          v18 = 30;
        }

        else if ([v17 isEqualToString:@"KW"])
        {
          v18 = 31;
        }

        else if ([v17 isEqualToString:@"CO"])
        {
          v18 = 32;
        }

        else if ([v17 isEqualToString:@"CR"])
        {
          v18 = 33;
        }

        else if ([v17 isEqualToString:@"HR"])
        {
          v18 = 34;
        }

        else if ([v17 isEqualToString:@"CS"])
        {
          v18 = 35;
        }

        else if ([v17 isEqualToString:@"DA"])
        {
          v18 = 36;
        }

        else if ([v17 isEqualToString:@"DV"])
        {
          v18 = 37;
        }

        else if ([v17 isEqualToString:@"NL"])
        {
          v18 = 38;
        }

        else if ([v17 isEqualToString:@"DZ"])
        {
          v18 = 39;
        }

        else if ([v17 isEqualToString:@"EN"])
        {
          v18 = 40;
        }

        else if ([v17 isEqualToString:@"EO"])
        {
          v18 = 41;
        }

        else if ([v17 isEqualToString:@"ET"])
        {
          v18 = 42;
        }

        else if ([v17 isEqualToString:@"EE"])
        {
          v18 = 43;
        }

        else if ([v17 isEqualToString:@"FO"])
        {
          v18 = 44;
        }

        else if ([v17 isEqualToString:@"FJ"])
        {
          v18 = 45;
        }

        else if ([v17 isEqualToString:@"FI"])
        {
          v18 = 46;
        }

        else if ([v17 isEqualToString:@"FR"])
        {
          v18 = 47;
        }

        else if ([v17 isEqualToString:@"FF"])
        {
          v18 = 48;
        }

        else if ([v17 isEqualToString:@"GL"])
        {
          v18 = 49;
        }

        else if ([v17 isEqualToString:@"KA"])
        {
          v18 = 50;
        }

        else if ([v17 isEqualToString:@"DE"])
        {
          v18 = 51;
        }

        else if ([v17 isEqualToString:@"EL"])
        {
          v18 = 52;
        }

        else if ([v17 isEqualToString:@"GN"])
        {
          v18 = 53;
        }

        else if ([v17 isEqualToString:@"GU"])
        {
          v18 = 54;
        }

        else if ([v17 isEqualToString:@"HT"])
        {
          v18 = 55;
        }

        else if ([v17 isEqualToString:@"HA"])
        {
          v18 = 56;
        }

        else if ([v17 isEqualToString:@"HE"])
        {
          v18 = 57;
        }

        else if ([v17 isEqualToString:@"HZ"])
        {
          v18 = 58;
        }

        else if ([v17 isEqualToString:@"HI"])
        {
          v18 = 59;
        }

        else if ([v17 isEqualToString:@"HO"])
        {
          v18 = 60;
        }

        else if ([v17 isEqualToString:@"HU"])
        {
          v18 = 61;
        }

        else if ([v17 isEqualToString:@"IA"])
        {
          v18 = 62;
        }

        else if ([v17 isEqualToString:@"ID"])
        {
          v18 = 63;
        }

        else if ([v17 isEqualToString:@"IE"])
        {
          v18 = 64;
        }

        else if ([v17 isEqualToString:@"GA"])
        {
          v18 = 65;
        }

        else if ([v17 isEqualToString:@"IG"])
        {
          v18 = 66;
        }

        else if ([v17 isEqualToString:@"IK"])
        {
          v18 = 67;
        }

        else if ([v17 isEqualToString:@"IO"])
        {
          v18 = 68;
        }

        else if ([v17 isEqualToString:@"IS"])
        {
          v18 = 69;
        }

        else if ([v17 isEqualToString:@"IT"])
        {
          v18 = 70;
        }

        else if ([v17 isEqualToString:@"IU"])
        {
          v18 = 71;
        }

        else if ([v17 isEqualToString:@"JA"])
        {
          v18 = 72;
        }

        else if ([v17 isEqualToString:@"JV"])
        {
          v18 = 73;
        }

        else if ([v17 isEqualToString:@"KL"])
        {
          v18 = 74;
        }

        else if ([v17 isEqualToString:@"KN"])
        {
          v18 = 75;
        }

        else if ([v17 isEqualToString:@"KR"])
        {
          v18 = 76;
        }

        else if ([v17 isEqualToString:@"KS"])
        {
          v18 = 77;
        }

        else if ([v17 isEqualToString:@"KK"])
        {
          v18 = 78;
        }

        else if ([v17 isEqualToString:@"KM"])
        {
          v18 = 79;
        }

        else if ([v17 isEqualToString:@"KI"])
        {
          v18 = 80;
        }

        else if ([v17 isEqualToString:@"RW"])
        {
          v18 = 81;
        }

        else if ([v17 isEqualToString:@"KY"])
        {
          v18 = 82;
        }

        else if ([v17 isEqualToString:@"KV"])
        {
          v18 = 83;
        }

        else if ([v17 isEqualToString:@"KG"])
        {
          v18 = 84;
        }

        else if ([v17 isEqualToString:@"KO"])
        {
          v18 = 85;
        }

        else if ([v17 isEqualToString:@"KU"])
        {
          v18 = 86;
        }

        else if ([v17 isEqualToString:@"KJ"])
        {
          v18 = 87;
        }

        else if ([v17 isEqualToString:@"LA"])
        {
          v18 = 88;
        }

        else if ([v17 isEqualToString:@"LB"])
        {
          v18 = 89;
        }

        else if ([v17 isEqualToString:@"LG"])
        {
          v18 = 90;
        }

        else if ([v17 isEqualToString:@"LI"])
        {
          v18 = 91;
        }

        else if ([v17 isEqualToString:@"LN"])
        {
          v18 = 92;
        }

        else if ([v17 isEqualToString:@"LO"])
        {
          v18 = 93;
        }

        else if ([v17 isEqualToString:@"LT"])
        {
          v18 = 94;
        }

        else if ([v17 isEqualToString:@"LU"])
        {
          v18 = 95;
        }

        else if ([v17 isEqualToString:@"LV"])
        {
          v18 = 96;
        }

        else if ([v17 isEqualToString:@"GV"])
        {
          v18 = 97;
        }

        else if ([v17 isEqualToString:@"MK"])
        {
          v18 = 98;
        }

        else if ([v17 isEqualToString:@"MG"])
        {
          v18 = 99;
        }

        else if ([v17 isEqualToString:@"MS"])
        {
          v18 = 100;
        }

        else if ([v17 isEqualToString:@"ML"])
        {
          v18 = 101;
        }

        else if ([v17 isEqualToString:@"MT"])
        {
          v18 = 102;
        }

        else if ([v17 isEqualToString:@"MI"])
        {
          v18 = 103;
        }

        else if ([v17 isEqualToString:@"MR"])
        {
          v18 = 104;
        }

        else if ([v17 isEqualToString:@"MH"])
        {
          v18 = 105;
        }

        else if ([v17 isEqualToString:@"MN"])
        {
          v18 = 106;
        }

        else if ([v17 isEqualToString:@"NA"])
        {
          v18 = 107;
        }

        else if ([v17 isEqualToString:@"NV"])
        {
          v18 = 108;
        }

        else if ([v17 isEqualToString:@"ND"])
        {
          v18 = 109;
        }

        else if ([v17 isEqualToString:@"NE"])
        {
          v18 = 110;
        }

        else if ([v17 isEqualToString:@"NG"])
        {
          v18 = 111;
        }

        else if ([v17 isEqualToString:@"NB"])
        {
          v18 = 112;
        }

        else if ([v17 isEqualToString:@"NN"])
        {
          v18 = 113;
        }

        else if ([v17 isEqualToString:@"NO"])
        {
          v18 = 114;
        }

        else if ([v17 isEqualToString:@"II"])
        {
          v18 = 115;
        }

        else if ([v17 isEqualToString:@"NR"])
        {
          v18 = 116;
        }

        else if ([v17 isEqualToString:@"OC"])
        {
          v18 = 117;
        }

        else if ([v17 isEqualToString:@"OJ"])
        {
          v18 = 118;
        }

        else if ([v17 isEqualToString:@"CU"])
        {
          v18 = 119;
        }

        else if ([v17 isEqualToString:@"OM"])
        {
          v18 = 120;
        }

        else if ([v17 isEqualToString:@"OR"])
        {
          v18 = 121;
        }

        else if ([v17 isEqualToString:@"OS"])
        {
          v18 = 122;
        }

        else if ([v17 isEqualToString:@"PA"])
        {
          v18 = 123;
        }

        else if ([v17 isEqualToString:@"PI"])
        {
          v18 = 124;
        }

        else if ([v17 isEqualToString:@"FA"])
        {
          v18 = 125;
        }

        else if ([v17 isEqualToString:@"PL"])
        {
          v18 = 126;
        }

        else if ([v17 isEqualToString:@"PS"])
        {
          v18 = 127;
        }

        else if ([v17 isEqualToString:@"PT"])
        {
          v18 = 128;
        }

        else if ([v17 isEqualToString:@"QU"])
        {
          v18 = 129;
        }

        else if ([v17 isEqualToString:@"RM"])
        {
          v18 = 130;
        }

        else if ([v17 isEqualToString:@"RN"])
        {
          v18 = 131;
        }

        else if ([v17 isEqualToString:@"RO"])
        {
          v18 = 132;
        }

        else if ([v17 isEqualToString:@"RU"])
        {
          v18 = 133;
        }

        else if ([v17 isEqualToString:@"SA"])
        {
          v18 = 134;
        }

        else if ([v17 isEqualToString:@"SC"])
        {
          v18 = 135;
        }

        else if ([v17 isEqualToString:@"SD"])
        {
          v18 = 136;
        }

        else if ([v17 isEqualToString:@"SE"])
        {
          v18 = 137;
        }

        else if ([v17 isEqualToString:@"SM"])
        {
          v18 = 138;
        }

        else if ([v17 isEqualToString:@"SG"])
        {
          v18 = 139;
        }

        else if ([v17 isEqualToString:@"SR"])
        {
          v18 = 140;
        }

        else if ([v17 isEqualToString:@"GD"])
        {
          v18 = 141;
        }

        else if ([v17 isEqualToString:@"SN"])
        {
          v18 = 142;
        }

        else if ([v17 isEqualToString:@"SI"])
        {
          v18 = 143;
        }

        else if ([v17 isEqualToString:@"SK"])
        {
          v18 = 144;
        }

        else if ([v17 isEqualToString:@"SL"])
        {
          v18 = 145;
        }

        else if ([v17 isEqualToString:@"SO"])
        {
          v18 = 146;
        }

        else if ([v17 isEqualToString:@"ST"])
        {
          v18 = 147;
        }

        else if ([v17 isEqualToString:@"ES"])
        {
          v18 = 148;
        }

        else if ([v17 isEqualToString:@"SU"])
        {
          v18 = 149;
        }

        else if ([v17 isEqualToString:@"SW"])
        {
          v18 = 150;
        }

        else if ([v17 isEqualToString:@"SS"])
        {
          v18 = 151;
        }

        else if ([v17 isEqualToString:@"SV"])
        {
          v18 = 152;
        }

        else if ([v17 isEqualToString:@"TA"])
        {
          v18 = 153;
        }

        else if ([v17 isEqualToString:@"TE"])
        {
          v18 = 154;
        }

        else if ([v17 isEqualToString:@"TG"])
        {
          v18 = 155;
        }

        else if ([v17 isEqualToString:@"TH"])
        {
          v18 = 156;
        }

        else if ([v17 isEqualToString:@"TI"])
        {
          v18 = 157;
        }

        else if ([v17 isEqualToString:@"BO"])
        {
          v18 = 158;
        }

        else if ([v17 isEqualToString:@"TK"])
        {
          v18 = 159;
        }

        else if ([v17 isEqualToString:@"TL"])
        {
          v18 = 160;
        }

        else if ([v17 isEqualToString:@"TN"])
        {
          v18 = 161;
        }

        else if ([v17 isEqualToString:@"TO"])
        {
          v18 = 162;
        }

        else if ([v17 isEqualToString:@"TR"])
        {
          v18 = 163;
        }

        else if ([v17 isEqualToString:@"TS"])
        {
          v18 = 164;
        }

        else if ([v17 isEqualToString:@"TT"])
        {
          v18 = 165;
        }

        else if ([v17 isEqualToString:@"TW"])
        {
          v18 = 166;
        }

        else if ([v17 isEqualToString:@"TY"])
        {
          v18 = 167;
        }

        else if ([v17 isEqualToString:@"UG"])
        {
          v18 = 168;
        }

        else if ([v17 isEqualToString:@"UK"])
        {
          v18 = 169;
        }

        else if ([v17 isEqualToString:@"UR"])
        {
          v18 = 170;
        }

        else if ([v17 isEqualToString:@"UZ"])
        {
          v18 = 171;
        }

        else if ([v17 isEqualToString:@"VE"])
        {
          v18 = 172;
        }

        else if ([v17 isEqualToString:@"VI"])
        {
          v18 = 173;
        }

        else if ([v17 isEqualToString:@"VO"])
        {
          v18 = 174;
        }

        else if ([v17 isEqualToString:@"WA"])
        {
          v18 = 175;
        }

        else if ([v17 isEqualToString:@"CY"])
        {
          v18 = 176;
        }

        else if ([v17 isEqualToString:@"WO"])
        {
          v18 = 177;
        }

        else if ([v17 isEqualToString:@"FY"])
        {
          v18 = 178;
        }

        else if ([v17 isEqualToString:@"XH"])
        {
          v18 = 179;
        }

        else if ([v17 isEqualToString:@"YI"])
        {
          v18 = 180;
        }

        else if ([v17 isEqualToString:@"YO"])
        {
          v18 = 181;
        }

        else if ([v17 isEqualToString:@"ZA"])
        {
          v18 = 182;
        }

        else if ([v17 isEqualToString:@"ZU"])
        {
          v18 = 183;
        }

        else if ([v17 isEqualToString:@"WUU"])
        {
          v18 = 184;
        }

        else if ([v17 isEqualToString:@"YUE"])
        {
          v18 = 185;
        }

        else
        {
          v18 = 0;
        }

        v20 = objc_opt_self();
        if (v15[2] >= 3uLL)
        {
          v21 = v20;
          v22 = v15[8];
          v23 = v15[9];

          v24 = sub_2486B543C();

          v2 = [v21 convertCountryCodeToSchemaCountryCode_];

          goto LABEL_758;
        }

        __break(1u);
        goto LABEL_754;
      }
    }

    else if (sub_2486B54AC() == 2)
    {
      sub_2486B548C();
      v19 = sub_2486B543C();

      v17 = v19;
      if ([v17 isEqualToString:@"ISOLANGUAGECODE_UNKNOWN"])
      {
        v18 = 0;
      }

      else if ([v17 isEqualToString:@"AB"])
      {
        v18 = 1;
      }

      else if ([v17 isEqualToString:@"AA"])
      {
        v18 = 2;
      }

      else if ([v17 isEqualToString:@"AF"])
      {
        v18 = 3;
      }

      else if ([v17 isEqualToString:@"AK"])
      {
        v18 = 4;
      }

      else if ([v17 isEqualToString:@"SQ"])
      {
        v18 = 5;
      }

      else if ([v17 isEqualToString:@"AM"])
      {
        v18 = 6;
      }

      else if ([v17 isEqualToString:@"AR"])
      {
        v18 = 7;
      }

      else if ([v17 isEqualToString:@"AN"])
      {
        v18 = 8;
      }

      else if ([v17 isEqualToString:@"HY"])
      {
        v18 = 9;
      }

      else if ([v17 isEqualToString:@"AS"])
      {
        v18 = 10;
      }

      else if ([v17 isEqualToString:@"AV"])
      {
        v18 = 11;
      }

      else if ([v17 isEqualToString:@"AE"])
      {
        v18 = 12;
      }

      else if ([v17 isEqualToString:@"AY"])
      {
        v18 = 13;
      }

      else if ([v17 isEqualToString:@"AZ"])
      {
        v18 = 14;
      }

      else if ([v17 isEqualToString:@"BM"])
      {
        v18 = 15;
      }

      else if ([v17 isEqualToString:@"BA"])
      {
        v18 = 16;
      }

      else if ([v17 isEqualToString:@"EU"])
      {
        v18 = 17;
      }

      else if ([v17 isEqualToString:@"BE"])
      {
        v18 = 18;
      }

      else if ([v17 isEqualToString:@"BN"])
      {
        v18 = 19;
      }

      else if ([v17 isEqualToString:@"BI"])
      {
        v18 = 20;
      }

      else if ([v17 isEqualToString:@"BS"])
      {
        v18 = 21;
      }

      else if ([v17 isEqualToString:@"BR"])
      {
        v18 = 22;
      }

      else if ([v17 isEqualToString:@"BG"])
      {
        v18 = 23;
      }

      else if ([v17 isEqualToString:@"MY"])
      {
        v18 = 24;
      }

      else if ([v17 isEqualToString:@"CA"])
      {
        v18 = 25;
      }

      else if ([v17 isEqualToString:@"CH"])
      {
        v18 = 26;
      }

      else if ([v17 isEqualToString:@"CE"])
      {
        v18 = 27;
      }

      else if ([v17 isEqualToString:@"NY"])
      {
        v18 = 28;
      }

      else if ([v17 isEqualToString:@"ZH"])
      {
        v18 = 29;
      }

      else if ([v17 isEqualToString:@"CV"])
      {
        v18 = 30;
      }

      else if ([v17 isEqualToString:@"KW"])
      {
        v18 = 31;
      }

      else if ([v17 isEqualToString:@"CO"])
      {
        v18 = 32;
      }

      else if ([v17 isEqualToString:@"CR"])
      {
        v18 = 33;
      }

      else if ([v17 isEqualToString:@"HR"])
      {
        v18 = 34;
      }

      else if ([v17 isEqualToString:@"CS"])
      {
        v18 = 35;
      }

      else if ([v17 isEqualToString:@"DA"])
      {
        v18 = 36;
      }

      else if ([v17 isEqualToString:@"DV"])
      {
        v18 = 37;
      }

      else if ([v17 isEqualToString:@"NL"])
      {
        v18 = 38;
      }

      else if ([v17 isEqualToString:@"DZ"])
      {
        v18 = 39;
      }

      else if ([v17 isEqualToString:@"EN"])
      {
        v18 = 40;
      }

      else if ([v17 isEqualToString:@"EO"])
      {
        v18 = 41;
      }

      else if ([v17 isEqualToString:@"ET"])
      {
        v18 = 42;
      }

      else if ([v17 isEqualToString:@"EE"])
      {
        v18 = 43;
      }

      else if ([v17 isEqualToString:@"FO"])
      {
        v18 = 44;
      }

      else if ([v17 isEqualToString:@"FJ"])
      {
        v18 = 45;
      }

      else if ([v17 isEqualToString:@"FI"])
      {
        v18 = 46;
      }

      else if ([v17 isEqualToString:@"FR"])
      {
        v18 = 47;
      }

      else if ([v17 isEqualToString:@"FF"])
      {
        v18 = 48;
      }

      else if ([v17 isEqualToString:@"GL"])
      {
        v18 = 49;
      }

      else if ([v17 isEqualToString:@"KA"])
      {
        v18 = 50;
      }

      else if ([v17 isEqualToString:@"DE"])
      {
        v18 = 51;
      }

      else if ([v17 isEqualToString:@"EL"])
      {
        v18 = 52;
      }

      else if ([v17 isEqualToString:@"GN"])
      {
        v18 = 53;
      }

      else if ([v17 isEqualToString:@"GU"])
      {
        v18 = 54;
      }

      else if ([v17 isEqualToString:@"HT"])
      {
        v18 = 55;
      }

      else if ([v17 isEqualToString:@"HA"])
      {
        v18 = 56;
      }

      else if ([v17 isEqualToString:@"HE"])
      {
        v18 = 57;
      }

      else if ([v17 isEqualToString:@"HZ"])
      {
        v18 = 58;
      }

      else if ([v17 isEqualToString:@"HI"])
      {
        v18 = 59;
      }

      else if ([v17 isEqualToString:@"HO"])
      {
        v18 = 60;
      }

      else if ([v17 isEqualToString:@"HU"])
      {
        v18 = 61;
      }

      else if ([v17 isEqualToString:@"IA"])
      {
        v18 = 62;
      }

      else if ([v17 isEqualToString:@"ID"])
      {
        v18 = 63;
      }

      else if ([v17 isEqualToString:@"IE"])
      {
        v18 = 64;
      }

      else if ([v17 isEqualToString:@"GA"])
      {
        v18 = 65;
      }

      else if ([v17 isEqualToString:@"IG"])
      {
        v18 = 66;
      }

      else if ([v17 isEqualToString:@"IK"])
      {
        v18 = 67;
      }

      else if ([v17 isEqualToString:@"IO"])
      {
        v18 = 68;
      }

      else if ([v17 isEqualToString:@"IS"])
      {
        v18 = 69;
      }

      else if ([v17 isEqualToString:@"IT"])
      {
        v18 = 70;
      }

      else if ([v17 isEqualToString:@"IU"])
      {
        v18 = 71;
      }

      else if ([v17 isEqualToString:@"JA"])
      {
        v18 = 72;
      }

      else if ([v17 isEqualToString:@"JV"])
      {
        v18 = 73;
      }

      else if ([v17 isEqualToString:@"KL"])
      {
        v18 = 74;
      }

      else if ([v17 isEqualToString:@"KN"])
      {
        v18 = 75;
      }

      else if ([v17 isEqualToString:@"KR"])
      {
        v18 = 76;
      }

      else if ([v17 isEqualToString:@"KS"])
      {
        v18 = 77;
      }

      else if ([v17 isEqualToString:@"KK"])
      {
        v18 = 78;
      }

      else if ([v17 isEqualToString:@"KM"])
      {
        v18 = 79;
      }

      else if ([v17 isEqualToString:@"KI"])
      {
        v18 = 80;
      }

      else if ([v17 isEqualToString:@"RW"])
      {
        v18 = 81;
      }

      else if ([v17 isEqualToString:@"KY"])
      {
        v18 = 82;
      }

      else if ([v17 isEqualToString:@"KV"])
      {
        v18 = 83;
      }

      else if ([v17 isEqualToString:@"KG"])
      {
        v18 = 84;
      }

      else if ([v17 isEqualToString:@"KO"])
      {
        v18 = 85;
      }

      else if ([v17 isEqualToString:@"KU"])
      {
        v18 = 86;
      }

      else if ([v17 isEqualToString:@"KJ"])
      {
        v18 = 87;
      }

      else if ([v17 isEqualToString:@"LA"])
      {
        v18 = 88;
      }

      else if ([v17 isEqualToString:@"LB"])
      {
        v18 = 89;
      }

      else if ([v17 isEqualToString:@"LG"])
      {
        v18 = 90;
      }

      else if ([v17 isEqualToString:@"LI"])
      {
        v18 = 91;
      }

      else if ([v17 isEqualToString:@"LN"])
      {
        v18 = 92;
      }

      else if ([v17 isEqualToString:@"LO"])
      {
        v18 = 93;
      }

      else if ([v17 isEqualToString:@"LT"])
      {
        v18 = 94;
      }

      else if ([v17 isEqualToString:@"LU"])
      {
        v18 = 95;
      }

      else if ([v17 isEqualToString:@"LV"])
      {
        v18 = 96;
      }

      else if ([v17 isEqualToString:@"GV"])
      {
        v18 = 97;
      }

      else if ([v17 isEqualToString:@"MK"])
      {
        v18 = 98;
      }

      else if ([v17 isEqualToString:@"MG"])
      {
        v18 = 99;
      }

      else if ([v17 isEqualToString:@"MS"])
      {
        v18 = 100;
      }

      else if ([v17 isEqualToString:@"ML"])
      {
        v18 = 101;
      }

      else if ([v17 isEqualToString:@"MT"])
      {
        v18 = 102;
      }

      else if ([v17 isEqualToString:@"MI"])
      {
        v18 = 103;
      }

      else if ([v17 isEqualToString:@"MR"])
      {
        v18 = 104;
      }

      else if ([v17 isEqualToString:@"MH"])
      {
        v18 = 105;
      }

      else if ([v17 isEqualToString:@"MN"])
      {
        v18 = 106;
      }

      else if ([v17 isEqualToString:@"NA"])
      {
        v18 = 107;
      }

      else if ([v17 isEqualToString:@"NV"])
      {
        v18 = 108;
      }

      else if ([v17 isEqualToString:@"ND"])
      {
        v18 = 109;
      }

      else if ([v17 isEqualToString:@"NE"])
      {
        v18 = 110;
      }

      else if ([v17 isEqualToString:@"NG"])
      {
        v18 = 111;
      }

      else if ([v17 isEqualToString:@"NB"])
      {
        v18 = 112;
      }

      else if ([v17 isEqualToString:@"NN"])
      {
        v18 = 113;
      }

      else if ([v17 isEqualToString:@"NO"])
      {
        v18 = 114;
      }

      else if ([v17 isEqualToString:@"II"])
      {
        v18 = 115;
      }

      else if ([v17 isEqualToString:@"NR"])
      {
        v18 = 116;
      }

      else if ([v17 isEqualToString:@"OC"])
      {
        v18 = 117;
      }

      else if ([v17 isEqualToString:@"OJ"])
      {
        v18 = 118;
      }

      else if ([v17 isEqualToString:@"CU"])
      {
        v18 = 119;
      }

      else if ([v17 isEqualToString:@"OM"])
      {
        v18 = 120;
      }

      else if ([v17 isEqualToString:@"OR"])
      {
        v18 = 121;
      }

      else if ([v17 isEqualToString:@"OS"])
      {
        v18 = 122;
      }

      else if ([v17 isEqualToString:@"PA"])
      {
        v18 = 123;
      }

      else if ([v17 isEqualToString:@"PI"])
      {
        v18 = 124;
      }

      else if ([v17 isEqualToString:@"FA"])
      {
        v18 = 125;
      }

      else if ([v17 isEqualToString:@"PL"])
      {
        v18 = 126;
      }

      else if ([v17 isEqualToString:@"PS"])
      {
        v18 = 127;
      }

      else if ([v17 isEqualToString:@"PT"])
      {
        v18 = 128;
      }

      else if ([v17 isEqualToString:@"QU"])
      {
        v18 = 129;
      }

      else if ([v17 isEqualToString:@"RM"])
      {
        v18 = 130;
      }

      else if ([v17 isEqualToString:@"RN"])
      {
        v18 = 131;
      }

      else if ([v17 isEqualToString:@"RO"])
      {
        v18 = 132;
      }

      else if ([v17 isEqualToString:@"RU"])
      {
        v18 = 133;
      }

      else if ([v17 isEqualToString:@"SA"])
      {
        v18 = 134;
      }

      else if ([v17 isEqualToString:@"SC"])
      {
        v18 = 135;
      }

      else if ([v17 isEqualToString:@"SD"])
      {
        v18 = 136;
      }

      else if ([v17 isEqualToString:@"SE"])
      {
        v18 = 137;
      }

      else if ([v17 isEqualToString:@"SM"])
      {
        v18 = 138;
      }

      else if ([v17 isEqualToString:@"SG"])
      {
        v18 = 139;
      }

      else if ([v17 isEqualToString:@"SR"])
      {
        v18 = 140;
      }

      else if ([v17 isEqualToString:@"GD"])
      {
        v18 = 141;
      }

      else if ([v17 isEqualToString:@"SN"])
      {
        v18 = 142;
      }

      else if ([v17 isEqualToString:@"SI"])
      {
        v18 = 143;
      }

      else if ([v17 isEqualToString:@"SK"])
      {
        v18 = 144;
      }

      else if ([v17 isEqualToString:@"SL"])
      {
        v18 = 145;
      }

      else if ([v17 isEqualToString:@"SO"])
      {
        v18 = 146;
      }

      else if ([v17 isEqualToString:@"ST"])
      {
        v18 = 147;
      }

      else if ([v17 isEqualToString:@"ES"])
      {
        v18 = 148;
      }

      else if ([v17 isEqualToString:@"SU"])
      {
        v18 = 149;
      }

      else if ([v17 isEqualToString:@"SW"])
      {
        v18 = 150;
      }

      else if ([v17 isEqualToString:@"SS"])
      {
        v18 = 151;
      }

      else if ([v17 isEqualToString:@"SV"])
      {
        v18 = 152;
      }

      else if ([v17 isEqualToString:@"TA"])
      {
        v18 = 153;
      }

      else if ([v17 isEqualToString:@"TE"])
      {
        v18 = 154;
      }

      else if ([v17 isEqualToString:@"TG"])
      {
        v18 = 155;
      }

      else if ([v17 isEqualToString:@"TH"])
      {
        v18 = 156;
      }

      else if ([v17 isEqualToString:@"TI"])
      {
        v18 = 157;
      }

      else if ([v17 isEqualToString:@"BO"])
      {
        v18 = 158;
      }

      else if ([v17 isEqualToString:@"TK"])
      {
        v18 = 159;
      }

      else if ([v17 isEqualToString:@"TL"])
      {
        v18 = 160;
      }

      else if ([v17 isEqualToString:@"TN"])
      {
        v18 = 161;
      }

      else if ([v17 isEqualToString:@"TO"])
      {
        v18 = 162;
      }

      else if ([v17 isEqualToString:@"TR"])
      {
        v18 = 163;
      }

      else if ([v17 isEqualToString:@"TS"])
      {
        v18 = 164;
      }

      else if ([v17 isEqualToString:@"TT"])
      {
        v18 = 165;
      }

      else if ([v17 isEqualToString:@"TW"])
      {
        v18 = 166;
      }

      else if ([v17 isEqualToString:@"TY"])
      {
        v18 = 167;
      }

      else if ([v17 isEqualToString:@"UG"])
      {
        v18 = 168;
      }

      else if ([v17 isEqualToString:@"UK"])
      {
        v18 = 169;
      }

      else if ([v17 isEqualToString:@"UR"])
      {
        v18 = 170;
      }

      else if ([v17 isEqualToString:@"UZ"])
      {
        v18 = 171;
      }

      else if ([v17 isEqualToString:@"VE"])
      {
        v18 = 172;
      }

      else if ([v17 isEqualToString:@"VI"])
      {
        v18 = 173;
      }

      else if ([v17 isEqualToString:@"VO"])
      {
        v18 = 174;
      }

      else if ([v17 isEqualToString:@"WA"])
      {
        v18 = 175;
      }

      else if ([v17 isEqualToString:@"CY"])
      {
        v18 = 176;
      }

      else if ([v17 isEqualToString:@"WO"])
      {
        v18 = 177;
      }

      else if ([v17 isEqualToString:@"FY"])
      {
        v18 = 178;
      }

      else if ([v17 isEqualToString:@"XH"])
      {
        v18 = 179;
      }

      else if ([v17 isEqualToString:@"YI"])
      {
        v18 = 180;
      }

      else if ([v17 isEqualToString:@"YO"])
      {
        v18 = 181;
      }

      else if ([v17 isEqualToString:@"ZA"])
      {
        v18 = 182;
      }

      else if ([v17 isEqualToString:@"ZU"])
      {
        v18 = 183;
      }

      else
      {
        if (([v17 isEqualToString:@"WUU"] & 1) == 0)
        {
LABEL_754:
          if ([v17 isEqualToString:@"YUE"])
          {
            v18 = 185;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_757;
        }

        v18 = 184;
      }

LABEL_757:

      v2 = 0;
      goto LABEL_758;
    }

    v2 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_758:
  v25 = [objc_allocWithZone(MEMORY[0x277D5A900]) init];
  v26 = v25;
  [v26 setLanguageCode_];
  [v26 setCountryCode_];

  return v25;
}

void *sub_248693D84(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v23 = *(a1 + 48);
  v6 = *(a1 + 64);
  v24 = *(a1 + 68);
  v7 = *(a1 + 80);
  v8 = [objc_allocWithZone(MEMORY[0x277D594D0]) init];
  if (v8)
  {
    v9 = v8;
    v22 = v7;
    v10 = [objc_allocWithZone(MEMORY[0x277D59500]) init];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_allocWithZone(MEMORY[0x277D594A8]) init];
      if (v12)
      {
        v13 = v12;
        v14 = _s11DeepThought20SELFMessageConverterO30convertLocaleStringToISOLocale6localeSo08SISchemaI0CSgSSSg_tFZ_0(v1, v2);
        [v13 setSiriInputLocale:v14];

        [v13 setTaskType:dword_2486B62FC[v6]];
        v15 = sub_2486B543C();
        if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_UNKNOWN"])
        {
          v16 = 0;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_COMPACT"])
        {
          v16 = 1;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_TV"])
        {
          v16 = 2;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_BLUETOOTH_CAR"])
        {
          v16 = 3;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_EYES_FREE"])
        {
          v16 = 4;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_CARPLAY"])
        {
          v16 = 5;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_VOX"])
        {
          v16 = 6;
        }

        else if ([v15 isEqualToString:@"ODMSIRIUIVIEWMODE_NOT_APPLICABLE"])
        {
          v16 = 7;
        }

        else
        {
          v16 = 0;
        }

        [v13 setViewMode:v16];
        v19 = sub_2486B543C();
        if ([v19 isEqualToString:@"AUDIOINPUTROUTE_UNKNOWN"])
        {
          v20 = 0;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_DEVICE"])
        {
          v20 = 1;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH"])
        {
          v20 = 3;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH"])
        {
          v20 = 4;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_WIRED"])
        {
          v20 = 5;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_WIRED"])
        {
          v20 = 6;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_CARPLAY"])
        {
          v20 = 7;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_DO_AP_DEVICE"])
        {
          v20 = 8;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_DO_AP_DEVICE"])
        {
          v20 = 9;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_APPLE_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v20 = 10;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_THIRD_PARTY_BLUETOOTH_HANDS_FREE_DEVICE"])
        {
          v20 = 11;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_USB_AUDIO"])
        {
          v20 = 12;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_SIRI_ACCESSORY"])
        {
          v20 = 13;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_AUDIO_INJECTION"])
        {
          v20 = 14;
        }

        else if ([v19 isEqualToString:@"AUDIOINPUTROUTE_DARWIN"])
        {
          v20 = 15;
        }

        else
        {
          v20 = 0;
        }

        [v13 setAudioInterface:v20];
        [v11 setCompletedSiriTaskCount_];
        [v11 setCompletedUITaskCount_];
        [v9 setTaskCounts_];
        [v9 setDimensions_];

        goto LABEL_59;
      }
    }

    else
    {
      v11 = v9;
    }
  }

  v13 = sub_2486B539C();
  v17 = sub_2486B55BC();
  if (os_log_type_enabled(v13, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_24868B000, v13, v17, "Unable to create ODMSiriSchemaODMSiriCounts SELF message", v18, 2u);
    MEMORY[0x24C1D6650](v18, -1, -1);
  }

  v9 = 0;
LABEL_59:

  return v9;
}

id _s11DeepThought20SELFMessageConverterO27convertToODMSiriClientEvent19aggregationInterval6counts5odmId6loggerSo0g6SchemaghI0CSgAA011AggregationK0V_SayAA14CountsReportedVG10Foundation4UUIDV2os6LoggerVtFZ_0(double *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1548, "*'");
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v53 - v8;
  v10 = sub_2486B4DFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (!v15)
  {
    v28 = sub_2486B539C();
    v29 = sub_2486B559C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "no aggregations to report";
LABEL_24:
      _os_log_impl(&dword_24868B000, v28, v29, v31, v30, 2u);
      MEMORY[0x24C1D6650](v30, -1, -1);
    }

LABEL_25:

    return 0;
  }

  v16 = *a1;
  v17 = a1[1];
  v18 = [objc_allocWithZone(MEMORY[0x277D594C8]) init];
  if (!v18)
  {
LABEL_22:
    v28 = sub_2486B539C();
    v29 = sub_2486B55BC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      v31 = "Unable to create ODMSiriSchemaODMSiriClientEvent SELF message";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v58 = v18;
  v19 = [objc_allocWithZone(MEMORY[0x277D594F0]) init];
  if (!v19)
  {
    v32 = v58;
LABEL_21:

    goto LABEL_22;
  }

  v55 = a3;
  v57 = v19;
  v20 = [objc_allocWithZone(MEMORY[0x277D594E0]) init];
  if (!v20)
  {
    v33 = v57;
    v21 = v58;
LABEL_20:

    v32 = v33;
    goto LABEL_21;
  }

  v21 = v20;
  v56 = [objc_allocWithZone(MEMORY[0x277D594C0]) init];
  if (!v56)
  {
    v33 = v21;
    v21 = v57;
    v36 = v58;
LABEL_19:

    goto LABEL_20;
  }

  v54 = [objc_allocWithZone(MEMORY[0x277D59520]) init];
  if (!v54)
  {

    v33 = v56;
    v36 = v57;
    goto LABEL_19;
  }

  v22 = v56;
  [v56 setAggregationIntervalInDays_];
  [v22 setAggregationIntervalStartTimestampInSecondsSince2001_];
  [v21 setAggregationInterval_];
  v23 = a2 + 32;
  do
  {
    v24 = *(v23 + 48);
    v59[2] = *(v23 + 32);
    v59[3] = v24;
    v59[4] = *(v23 + 64);
    v60 = *(v23 + 80);
    v25 = *(v23 + 16);
    v59[0] = *v23;
    v59[1] = v25;
    v26 = sub_248693D84(v59);
    if (v26)
    {
      v27 = v26;
      [v21 addSiriCounts_];
    }

    v23 += 88;
    --v15;
  }

  while (v15);
  v34 = sub_2486B543C();
  v35 = v54;
  [v54 setExperimentId_];

  sub_2486B4DBC();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_248694A50(v9, &qword_27EEA1548, "*'");
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v38 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v39 = sub_2486B4DDC();
    v40 = [v38 initWithNSUUID_];

    [v35 setTreatmentId_];
    (*(v11 + 8))(v14, v10);
  }

  [v35 setDeploymentId_];
  v41 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v42 = sub_2486B4DDC();
  v43 = [v41 initWithNSUUID_];

  v44 = v57;
  [v57 setOdmId_];

  [v44 setTrialExperimentIdentifiers_];
  v45 = [objc_opt_self() mainBundle];
  v46 = [v45 infoDictionary];

  if (!v46)
  {
    goto LABEL_33;
  }

  v47 = sub_2486B53DC();

  if (!*(v47 + 16) || (v48 = sub_2486A10B4(0xD00000000000001DLL, 0x80000002486BB540), (v49 & 1) == 0))
  {

    goto LABEL_33;
  }

  sub_248694AB0(*(v47 + 56) + 32 * v48, v59);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_33:
    v50 = 0;
    goto LABEL_34;
  }

  v50 = sub_2486B543C();

LABEL_34:
  v51 = v57;
  [v57 setPluginVersion_];

  v52 = v58;
  [v58 setEventMetadata_];
  [v52 setCountsReported_];

  return v52;
}

uint64_t type metadata accessor for SiriPenetrationRateSELFReporter()
{
  result = qword_27EEA1528;
  if (!qword_27EEA1528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2486948F4()
{
  result = sub_2486B4DFC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2486B53BC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2486949FC()
{
  result = qword_27EEA1538;
  if (!qword_27EEA1538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1538);
  }

  return result;
}

uint64_t sub_248694A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248694AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t StreamBookmarkService.__allocating_init(bookmarkName:bookmarkFilename:bookmarkPath:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a2;
  v26 = a4;
  v27 = a6;
  v28 = a1;
  v7 = sub_2486B53BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2486B4D4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2486B528C();
  v18 = *(v13 + 16);
  v31 = a5;
  v18(v16, a5, v12);
  v19 = v27;
  v20 = sub_2486B527C();
  v30[3] = v17;
  v30[4] = MEMORY[0x277D04560];
  v30[0] = v20;
  (*(v8 + 16))(v11, v19, v7);
  v21 = type metadata accessor for StreamBookmarkService();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(v30, v28, v29, v11);
  (*(v8 + 8))(v19, v7);
  (*(v13 + 8))(v31, v12);
  return v24;
}

uint64_t StreamBookmarkService.__allocating_init(bookmarkStore:bookmarkName:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(a1, a2, a3, a4);
  return v11;
}

uint64_t type metadata accessor for StreamBookmarkService()
{
  result = qword_280DCC720;
  if (!qword_280DCC720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_24869510C(a1, v5 + 24);
  *(v5 + 64) = a2;
  *(v5 + 72) = a3;
  v10 = OBJC_IVAR____TtC11DeepThought21StreamBookmarkService_logger;
  v11 = sub_2486B53BC();
  v12 = *(v11 - 8);
  v36 = v10;
  v40 = a4;
  (*(v12 + 16))(v5 + v10, a4, v11);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v14 = sub_2486B51CC();
  if (v38)
  {

    v15 = *(v12 + 8);
    v15(a4, v11);
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + 24));
    v16 = *(v5 + 72);

    v15(v5 + v36, v11);
    type metadata accessor for StreamBookmarkService();
    v17 = *(*v5 + 48);
    v18 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    v19 = a1;
  }

  else
  {
    v37 = v12;
    v39 = v11;
    if (v14)
    {
      v20 = v14;

      v21 = v20;
    }

    else
    {
      sub_2486B518C();
      v21 = sub_2486B517C();
    }

    v22 = a1;
    *(v5 + 16) = v21;

    v23 = sub_2486B539C();
    v24 = sub_2486B55AC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v25 = 136315138;
      v26 = [*(v5 + 16) debugDescription];
      v27 = v22;
      v28 = v24;
      v29 = sub_2486B544C();
      v31 = v30;

      v32 = sub_2486965C0(v29, v31, &v41);

      *(v25 + 4) = v32;
      v33 = v28;
      v22 = v27;
      _os_log_impl(&dword_24868B000, v23, v33, "marker: fetched bookmark: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x24C1D6650](v35, -1, -1);
      MEMORY[0x24C1D6650](v25, -1, -1);

      (*(v37 + 8))(v40, v39);
    }

    else
    {

      (*(v37 + 8))(v40, v39);
    }

    v19 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return v5;
}

uint64_t sub_24869510C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_2486951B4(char a1)
{
  if ((a1 & 1) == 0)
  {
    return *(v1 + 16);
  }

  sub_24869510C(v1 + 24, v11);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = v1;
  v6 = sub_2486B51CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  if (!v6)
  {
    sub_2486B518C();

    v6 = sub_2486B517C();
  }

  v8 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;
  v10 = v8;

  return v10;
}

uint64_t sub_2486952C4()
{
  v1 = v0[12];
  sub_24869510C(v1 + 24, (v0 + 2));
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v1 + 16);
  sub_2486B51DC();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_24869510C(v1 + 24, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  v6 = *(MEMORY[0x277D04518] + 4);
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_248695430;

  return MEMORY[0x28215A030](0, 0, v4, v5);
}

uint64_t sub_248695430()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24869552C, 0, 0);
}

uint64_t sub_24869552C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_248695590()
{
  v1 = *(v0 + 16);
  v2 = sub_2486B516C();

  return v2 & 1;
}

uint64_t sub_2486955E0()
{
  v1 = *(v0 + 16);
  v2 = sub_2486B514C();

  return v2;
}

uint64_t sub_248695630()
{
  v1 = *(v0 + 16);
  v2 = sub_2486B515C();

  return v2 & 1;
}

uint64_t sub_248695760(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t), const char *a8, const char *a9)
{
  v103 = a8;
  v106 = a7;
  v108 = a6;
  v141 = a4;
  v139 = a3;
  v13 = sub_2486B4D2C();
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  MEMORY[0x28223BE20](v13);
  v126 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2486B4E9C();
  v134 = *(v16 - 8);
  v135 = v16;
  v17 = *(v134 + 64);
  MEMORY[0x28223BE20](v16);
  v133 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2486B4EAC();
  v131 = *(v19 - 8);
  v132 = v19;
  v20 = *(v131 + 64);
  MEMORY[0x28223BE20](v19);
  v130 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_2486B4E7C();
  v129 = *(v138 - 8);
  v22 = *(v129 + 64);
  MEMORY[0x28223BE20](v138);
  v128 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2486B4EFC();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x28223BE20](v24);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v107 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v127 = &v103 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v103 - v35;
  v142 = sub_2486B4DAC();
  v37 = *(v142 - 8);
  v38 = v37[8];
  v39 = MEMORY[0x28223BE20](v142);
  v105 = &v103 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v104 = &v103 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v137 = &v103 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v140 = &v103 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v103 - v47;
  v125 = v9;
  v49 = *(v9 + 16);
  v110 = a1;
  a5(a1);

  v136 = v48;
  result = sub_2486B4D5C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v109 = a2;
  v51 = v25[13];
  v117 = *MEMORY[0x277CC9968];
  v118 = v25 + 13;
  v116 = v51;
  v51(v28);
  sub_2486B4ECC();
  v119 = v25;
  v52 = v25[1];
  v120 = v24;
  v115 = v25 + 1;
  v114 = v52;
  v52(v28, v24);
  v53 = v37[6];
  v122 = v37 + 6;
  v121 = v53;
  result = v53(v36, 1, v142);
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v111 = v37;
  v54 = v37[4];
  v113 = v37 + 4;
  v112 = v54;
  v54(v137, v36, v142);
  v55 = v128;
  v56 = v129;
  (*(v129 + 104))(v128, *MEMORY[0x277CC9878], v138);
  v58 = v130;
  v57 = v131;
  v59 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277CC9900], v132);
  v61 = v133;
  v60 = v134;
  v62 = v135;
  (*(v134 + 104))(v133, *MEMORY[0x277CC98E8], v135);
  v63 = v127;
  sub_2486B4EBC();
  (*(v60 + 8))(v61, v62);
  (*(v57 + 8))(v58, v59);
  (*(v56 + 8))(v55, v138);
  result = v121(v63, 1, v142);
  if (result == 1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v64 = v111;
  v65 = v111[1];
  v66 = v142;
  v65(v137, v142);
  v112(v140, v63, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1500, &qword_2486B6330);
  v67 = v119[9];
  v68 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_2486B6240;
  v70 = v120;
  v116(v69 + v68, v117, v120);
  sub_24868FAEC(v69);
  swift_setDeallocating();
  v114(v69 + v68, v70);
  swift_deallocClassInstance();
  v71 = v126;
  v72 = v136;
  sub_2486B4E8C();

  result = sub_2486B4D1C();
  if (v73)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v74 = result;
  (*(v123 + 8))(v71, v124);
  v75 = v125;
  if (v74 < 1 || v74 <= v109)
  {
    v65(v140, v66);
    return (v65)(v72, v66);
  }

  v141 = v65;
  v76 = v64;
  v77 = v64[2];
  v78 = v107;
  v79 = v140;
  v77(v107, v140, v66);
  (*(v76 + 56))(v78, 0, 1, v66);
  v80 = *(v75 + 16);
  LOBYTE(v76) = v108(v110, v78);

  sub_24868FF24(v78);
  if ((v76 & 1) == 0)
  {
    v99 = sub_2486B539C();
    v100 = sub_2486B55BC();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 134217984;
      *(v101 + 4) = v106(v110);
      _os_log_impl(&dword_24868B000, v99, v100, a9, v101, 0xCu);
      MEMORY[0x24C1D6650](v101, -1, -1);
    }

    v92 = v141;
    v141(v79, v66);
    v98 = v72;
    return v92(v98, v66);
  }

  v81 = v104;
  v77(v104, v72, v66);
  v82 = v105;
  v77(v105, v79, v66);
  v83 = sub_2486B539C();
  v84 = sub_2486B55AC();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v143 = v86;
    *v85 = 134218498;
    *(v85 + 4) = v106(v110);
    *(v85 + 12) = 2080;
    sub_24868EAC0();
    v87 = v82;
    LODWORD(v139) = v84;
    v88 = sub_2486B57CC();
    v90 = v89;
    v91 = v81;
    v92 = v141;
    v141(v91, v66);
    v93 = sub_2486965C0(v88, v90, &v143);

    *(v85 + 14) = v93;
    *(v85 + 22) = 2080;
    v94 = sub_2486B57CC();
    v96 = v95;
    v92(v87, v66);
    v97 = sub_2486965C0(v94, v96, &v143);

    *(v85 + 24) = v97;
    _os_log_impl(&dword_24868B000, v83, v139, v103, v85, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1D6650](v86, -1, -1);
    MEMORY[0x24C1D6650](v85, -1, -1);

    v92(v140, v66);
    v98 = v136;
    return v92(v98, v66);
  }

  v102 = v141;
  v141(v82, v66);
  v102(v81, v66);
  v102(v79, v66);
  return (v102)(v72, v66);
}

uint64_t StreamBookmarkService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);

  v2 = OBJC_IVAR____TtC11DeepThought21StreamBookmarkService_logger;
  v3 = sub_2486B53BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t StreamBookmarkService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = *(v0 + 72);

  v2 = OBJC_IVAR____TtC11DeepThought21StreamBookmarkService_logger;
  v3 = sub_2486B53BC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486964F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_248696564(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2486965C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2486965C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24869668C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_248694AB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_24869668C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_248696798(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2486B568C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_248696798(uint64_t a1, unint64_t a2)
{
  v4 = sub_2486967E4(a1, a2);
  sub_248696914(&unk_285B1E568);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2486967E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_248696A00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2486B568C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2486B54DC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_248696A00(v10, 0);
        result = sub_2486B561C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_248696914(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_248696A74(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_248696A00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1550, &unk_2486B63C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_248696A74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1550, &unk_2486B63C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_248696B68(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_248696B78(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_248696B98@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_248696BD0()
{
  result = sub_2486B53BC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of StreamBookmarkService.storePluginBookmark()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_248696E0C;

  return v6();
}

uint64_t sub_248696E0C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t BiomeDonator.__allocating_init(biomeSource:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t BiomeDonator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24869719C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B50DC();
  *(inited + 32) = sub_2486B50CC();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000002486BBA80;
  *(inited + 80) = sub_2486B507C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0x736B736154646441;
  *(inited + 104) = 0xE800000000000000;
  *(inited + 128) = sub_2486B508C();
  *(inited + 136) = v4;
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 0;
  v5 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1558 = v5;
  return result;
}

uint64_t sub_2486972D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B504C();
  *(inited + 32) = sub_2486B502C();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x80000002486BBA80;
  *(inited + 80) = sub_2486B501C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0xD000000000000023;
  *(inited + 104) = 0x80000002486BBAA0;
  *(inited + 128) = sub_2486B503C();
  *(inited + 136) = v4;
  type metadata accessor for BMSiriExecutionTaskStep(0);
  *(inited + 168) = v5;
  *(inited + 144) = 7;
  v6 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1560 = v6;
  return result;
}

uint64_t sub_248697420(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t _s11DeepThought33SetReminderPenetrationEventFilterC12isAppUIEvent9appIntentSb0aB15BiomeFoundation010FeaturizedF0C_tFZ_0()
{
  sub_2486B50DC();
  sub_2486B50CC();
  sub_2486B50FC();

  v0 = v36;
  v32 = v35;
  if (qword_27EEA1478 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1558;
  v2 = sub_2486B50CC();
  if (!v1[2])
  {

    goto LABEL_12;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_12:
    v8 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v35);
  v7 = swift_dynamicCast();
  if (v7)
  {
    v8 = v33;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v34;
  }

  else
  {
    v9 = 0;
  }

LABEL_13:
  sub_2486B507C();
  sub_2486B50FC();

  v10 = v36;
  v31 = v35;
  v11 = sub_2486B507C();
  if (!v1[2])
  {

    goto LABEL_21;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_21:
    v30 = 0;
    v18 = 0;
    goto LABEL_22;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v35);
  v16 = swift_dynamicCast();
  v17 = v33;
  if (!v16)
  {
    v17 = 0;
  }

  v30 = v17;
  if (v16)
  {
    v18 = v34;
  }

  else
  {
    v18 = 0;
  }

LABEL_22:
  sub_2486B508C();
  sub_2486B50FC();

  v19 = v35;
  v20 = sub_2486B508C();
  if (!v1[2])
  {

    v25 = 2;
    if (v0)
    {
      goto LABEL_28;
    }

LABEL_33:
    if (v9)
    {

      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  v25 = 2;
  if (v24)
  {
    sub_248694AB0(v1[7] + 32 * v22, &v35);
    if (swift_dynamicCast())
    {
      v25 = v33;
    }

    else
    {
      v25 = 2;
    }
  }

  if (!v0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (!v9)
  {

    goto LABEL_42;
  }

  if (v32 == v8 && v0 == v9)
  {

    goto LABEL_37;
  }

  v26 = sub_2486B57DC();

  if ((v26 & 1) == 0)
  {
LABEL_42:

    goto LABEL_43;
  }

LABEL_37:
  if (v10)
  {
    if (v18)
    {
      if (v31 == v30 && v10 == v18)
      {
      }

      else
      {
        v29 = sub_2486B57DC();

        v27 = 0;
        if ((v29 & 1) == 0)
        {
          return v27 & 1;
        }
      }

      goto LABEL_48;
    }

LABEL_43:

    v27 = 0;
    return v27 & 1;
  }

  if (v18)
  {
    goto LABEL_43;
  }

LABEL_48:
  v27 = v19 == 2;
  if (v25 != 2)
  {
    v27 = 0;
  }

  if (v19 != 2 && v25 != 2)
  {
    v27 = v25 ^ v19 ^ 1;
  }

  return v27 & 1;
}

uint64_t _s11DeepThought33SetReminderPenetrationEventFilterC06isSiriF013siriExecutionSb0aB15BiomeFoundation010FeaturizedF0C_tFZ_0()
{
  sub_2486B504C();
  sub_2486B502C();
  sub_2486B50FC();

  v0 = v39;
  v35 = v38;
  if (qword_27EEA1480 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1560;
  v2 = sub_2486B502C();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v34 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v38);
  v7 = swift_dynamicCast();
  v8 = v36;
  if (!v7)
  {
    v8 = 0;
  }

  v34 = v8;
  if (v7)
  {
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B501C();
  sub_2486B50FC();

  v10 = v39;
  v33 = v38;
  v11 = sub_2486B501C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_20:
    v32 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v38);
  v16 = swift_dynamicCast();
  v17 = v36;
  if (!v16)
  {
    v17 = 0;
  }

  v32 = v17;
  if (v16)
  {
    v18 = v37;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:
  sub_2486B503C();
  type metadata accessor for BMSiriExecutionTaskStep(0);
  sub_2486B50FC();

  v31 = v38;
  v19 = BYTE4(v38);
  v20 = sub_2486B503C();
  if (!v1[2])
  {

LABEL_30:
    v26 = 0;
    v27 = 1;
    if (!v0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v9)
    {
      if (v35 == v34 && v0 == v9)
      {

        goto LABEL_37;
      }

      v28 = sub_2486B57DC();

      if (v28)
      {
LABEL_37:
        if (v10)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

          if (v33 != v32 || v10 != v18)
          {
            v30 = sub_2486B57DC();

            if (v19 & 1 | ((v30 & 1) == 0))
            {
              v27 &= v30;
              return v27 & 1;
            }

            goto LABEL_50;
          }
        }

        else if (v18)
        {
          goto LABEL_43;
        }

        if (v19)
        {
          return v27 & 1;
        }

LABEL_50:
        v27 = (v31 == v26) & ~v27;
        return v27 & 1;
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_248694AB0(v1[7] + 32 * v22, &v38);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v36;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 ^ 1;
  if (v0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (!v9)
  {
    goto LABEL_37;
  }

LABEL_43:

  v27 = 0;
  return v27 & 1;
}

uint64_t SiriPenetrationRateMetrics.__allocating_init(bookmarkLocation:)(unint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SiriPenetrationRateMetrics.init(bookmarkLocation:)(a1, a2);
  return v7;
}

uint64_t SiriPenetrationRateMetrics.init(bookmarkLocation:)(unint64_t a1, unint64_t a2)
{
  v186 = a1;
  v176 = sub_2486B4DFC();
  v178 = *(v176 - 8);
  v4 = *(v178 + 64);
  MEMORY[0x28223BE20](v176);
  v167 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_2486B4D4C();
  v6 = *(v182 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v182);
  v172 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v180 = &v158 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v158 - v12;
  v14 = sub_2486B53BC();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v179 = &v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v158 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v173 = &v158 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v158 - v23;
  v177 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_odmId;
  sub_2486B4DEC();
  v25 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_logger;
  sub_2486B53AC();
  v26 = 0xD00000000000003FLL;
  if (a2)
  {
    v26 = v186;
  }

  v175 = v26;
  if (!a2)
  {
    a2 = 0x80000002486BBAD0;
  }

  v27 = v15[2];
  v189 = v2;
  v186 = v14;
  v187 = v25;
  v183 = v15 + 2;
  v185 = v27;
  v27(v24, v2 + v25, v14);

  v28 = sub_2486B539C();
  v29 = sub_2486B55AC();

  v30 = os_log_type_enabled(v28, v29);
  v181 = v6;
  v184 = v15;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = v13;
    v33 = swift_slowAlloc();
    v188[0] = v33;
    *v31 = 136315138;
    *(v31 + 4) = sub_2486965C0(v175, a2, v188);
    _os_log_impl(&dword_24868B000, v28, v29, "marker: streams bookmark path=%s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v34 = v33;
    v13 = v32;
    MEMORY[0x24C1D6650](v34, -1, -1);
    v35 = v31;
    v6 = v181;
    MEMORY[0x24C1D6650](v35, -1, -1);
  }

  v170 = v15[1];
  v170(v24, v186);
  sub_2486B4D3C();

  v169 = "PenetrationRateMetrics";
  v36 = v13;
  v168 = "lugin.deepthought";
  v37 = *(v6 + 16);
  v38 = v180;
  v175 = v36;
  v39 = v182;
  v37(v180);
  v40 = v173;
  v41 = v185;
  v185(v173, v189 + v187, v186);
  v42 = sub_2486B528C();
  (v37)(v172, v38, v39);
  v43 = sub_2486B527C();
  v188[3] = v42;
  v188[4] = MEMORY[0x277D04560];
  v188[0] = v43;
  v44 = v171;
  v45 = v186;
  v46 = v41;
  v41(v171, v40, v186);
  v47 = type metadata accessor for StreamBookmarkService();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  v50 = v174;
  v51 = StreamBookmarkService.init(bookmarkStore:bookmarkName:logger:)(v188, 0xD000000000000021, v169 | 0x8000000000000000, v44);
  if (v50)
  {
    v52 = v170;
    v170(v40, v45);
    v53 = *(v181 + 8);
    v54 = v182;
    v53(v180, v182);
    v53(v175, v54);
    v55 = v189;
    (*(v178 + 8))(v189 + v177, v176);
    v52(v55 + v187, v45);
    type metadata accessor for SiriPenetrationRateMetrics();
    v56 = *(*v55 + 48);
    v57 = *(*v55 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v169 = 0;
    v58 = v184;
    v59 = v51;
    v170(v40, v45);
    v60 = *(v181 + 8);
    v181 += 8;
    v168 = v60;
    (v60)(v180, v182);
    v172 = [objc_allocWithZone(sub_2486B520C()) init];
    v61 = v179;
    v46(v179, v189 + v187, v45);
    v62 = type metadata accessor for FeaturizedBiomeDataProvider();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    v65 = swift_allocObject();
    v173 = v65;
    *(v65 + 4) = v59;
    v66 = v45;
    v68 = v58 + 4;
    v67 = v58[4];
    v67(&v65[OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger], v61, v66);
    *(v65 + 2) = 13;
    *(v65 + 3) = v172;
    v69 = objc_allocWithZone(sub_2486B529C());

    v171 = [v69 init];
    v70 = v189;
    v71 = v187;
    v72 = v179;
    v185(v179, v189 + v187, v66);
    v73 = *(v62 + 48);
    v74 = *(v62 + 52);
    v75 = swift_allocObject();
    v172 = v75;
    *(v75 + 4) = v59;
    v180 = v67;
    v67(&v75[OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger], v72, v66);
    v184 = v68;
    *(v75 + 2) = 6;
    *(v75 + 3) = v171;
    v76 = objc_allocWithZone(sub_2486B51FC());

    v77 = [v76 init];
    v78 = v70 + v71;
    v79 = v179;
    v185(v179, v78, v66);
    v80 = *(v62 + 48);
    v81 = *(v62 + 52);
    v82 = swift_allocObject();
    v171 = v82;
    *(v82 + 4) = v59;
    v67(&v82[OBJC_IVAR____TtC11DeepThought27FeaturizedBiomeDataProvider_logger], v79, v66);
    v83 = v66;
    *(v82 + 2) = 1;
    *(v82 + 3) = v77;
    v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1578, &qword_2486B64A0);
    v84 = swift_allocObject();
    v166 = xmmword_2486B6480;
    *(v84 + 16) = xmmword_2486B6480;
    v85 = objc_allocWithZone(sub_2486B51AC());
    v174 = v59;

    *(v84 + 32) = [v85 init];
    *(v84 + 40) = [objc_allocWithZone(sub_2486B526C()) init];
    *(v84 + 48) = [objc_allocWithZone(sub_2486B519C()) init];
    v86 = v187;
    v87 = v189;
    v88 = v179;
    v89 = v185;
    v185(v179, v189 + v187, v83);
    v90 = type metadata accessor for FeaturizedConversationDataProvider();
    v91 = *(v90 + 48);
    v92 = *(v90 + 52);
    v93 = swift_allocObject();
    v93[4] = v59;
    (v180)(v93 + OBJC_IVAR____TtC11DeepThought34FeaturizedConversationDataProvider_logger, v88, v83);
    v93[2] = 0;
    v93[3] = v84;
    v89(v88, v87 + v86, v83);
    v94 = type metadata accessor for SiriPenetrationRateDataProvider();
    v95 = *(v94 + 48);
    v96 = *(v94 + 52);
    v97 = swift_allocObject();
    v98 = v172;
    *(v97 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedAppIntentProivder) = v173;
    *(v97 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriExecutionProvider) = v98;
    *(v97 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedSiriUIProvider) = v171;
    *(v97 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_featurizedConversationProvider) = v93;
    (v180)(v97 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_logger, v88, v83);
    *(v97 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateDataProvider_bookmarkService) = v174;
    *(v87 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateDataProvider) = v97;
    v99 = v87;
    v100 = swift_allocObject();
    *(v100 + 16) = v166;
    v101 = qword_27EEA1460;
    swift_retain_n();

    *&v166 = v93;

    v102 = v99;
    v103 = v187;
    v104 = v185;
    if (v101 != -1)
    {
      swift_once();
    }

    *(v100 + 32) = qword_27EEA14C0;
    v105 = qword_27EEA1468;

    if (v105 != -1)
    {
      swift_once();
    }

    *(v100 + 40) = qword_27EEA14C8;
    v106 = qword_27EEA1470;

    if (v106 != -1)
    {
      swift_once();
    }

    *(v100 + 48) = qword_27EEA14D0;
    v107 = v179;
    v108 = v186;
    v104(v179, v99 + v103, v186);
    v109 = type metadata accessor for SiriPenetrationRateCalculator();
    v110 = *(v109 + 48);
    v111 = *(v109 + 52);
    swift_allocObject();

    *(v99 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateWorker) = SiriPenetrationRateCalculator.init(calculationTasks:logger:)(v100, v107);
    v112 = [BiomeLibrary() Siri];
    swift_unknownObjectRelease();
    v113 = [v112 TaskAggregation];
    swift_unknownObjectRelease();
    v114 = v104;
    v115 = [v113 source];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1580, &qword_2486B64A8);
    v116 = swift_allocObject();
    *(v116 + 16) = v115;
    v117 = v116;
    v114(v107, v102 + v103, v108);
    v118 = v178;
    v161 = *(v178 + 16);
    v162 = v178 + 16;
    v119 = v167;
    v120 = v176;
    v161();
    v121 = type metadata accessor for SiriPenetrationRateBiomeReporter();
    v122 = *(v121 + 48);
    v123 = *(v121 + 52);
    v124 = swift_allocObject();
    *(v124 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_biomeDonator) = v117;
    v164 = v117;
    v165 = v124;
    (v180)(v124 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_logger, v107, v108);
    v125 = *(v118 + 32);
    v178 = v118 + 32;
    v160 = v125;
    v125(v124 + OBJC_IVAR____TtC11DeepThought32SiriPenetrationRateBiomeReporter_odmId, v119, v120);
    v126 = v103;
    v127 = v107;
    v128 = v107;
    v129 = v185;
    v185(v128, v189 + v103, v108);
    v130 = type metadata accessor for SiriPenetrationRateJsonLoggingReporter();
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    v133 = swift_allocObject();
    v134 = OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_jsonResult;

    v135 = sub_24869A6D4(MEMORY[0x277D84F90]);
    v163 = v133;
    *(v133 + v134) = v135;
    v136 = v180;
    (v180)(v133 + OBJC_IVAR____TtC11DeepThought38SiriPenetrationRateJsonLoggingReporter_logger, v127, v108);
    v137 = v189 + v126;
    v138 = v127;
    v129(v127, v137, v108);
    v139 = v119;
    v140 = v176;
    v141 = v161;
    (v161)(v139, v189 + v177, v176);
    v142 = type metadata accessor for SiriPenetrationRateCoreAnalyticsReporter();
    v143 = *(v142 + 48);
    v144 = *(v142 + 52);
    v145 = swift_allocObject();
    v159 = v145;
    v136(v145 + OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_logger, v127, v108);
    v146 = v167;
    v147 = v160;
    v160(v145 + OBJC_IVAR____TtC11DeepThought40SiriPenetrationRateCoreAnalyticsReporter_odmId, v167, v140);
    v185(v127, v189 + v187, v108);
    (v141)(v146, v189 + v177, v140);
    v148 = type metadata accessor for SiriPenetrationRateSELFReporter();
    v149 = *(v148 + 48);
    v150 = *(v148 + 52);
    v151 = swift_allocObject();
    v136(v151 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_logger, v138, v108);
    v147(v151 + OBJC_IVAR____TtC11DeepThought31SiriPenetrationRateSELFReporter_odmId, v146, v140);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_2486B6490;
    v55 = v189;
    v153 = v163;
    *(v152 + 32) = v165;
    *(v152 + 40) = v153;
    *(v152 + 48) = v159;
    *(v152 + 56) = v151;

    (v168)(v175, v182);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1588, &qword_2486B64B0);
    v154 = swift_allocObject();
    *(v154 + 16) = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1590, qword_2486B64B8);
    v155 = swift_allocObject();
    v156 = v174;
    *(v155 + 16) = v154;
    *(v155 + 24) = v156;
    *(v55 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateReporter) = v155;
  }

  return v55;
}

uint64_t type metadata accessor for SiriPenetrationRateMetrics()
{
  result = qword_27EEA15B8;
  if (!qword_27EEA15B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_248698E44(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_248698E64, 0, 0);
}

uint64_t sub_248698E64()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_24869B5F4;
  v3 = v0[2];

  return sub_2486A9834(v3);
}

uint64_t sub_248698F08(uint64_t a1, _OWORD *a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  v5 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v5;
  return MEMORY[0x2822009F8](sub_248698F38, 0, 0);
}

uint64_t sub_248698F38()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateWorker);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_248698FE0;
  v3 = v0[10];

  return sub_24869DD40(v3, v0 + 2);
}

uint64_t sub_248698FE0()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2486990D8(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 40) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_248699108, 0, 0);
}

uint64_t sub_248699108()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateReporter);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_24869B5F8;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_248699DC4(v5, v3, v4);
}

uint64_t SiriPenetrationRateMetrics.deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateDataProvider);

  v6 = *(v0 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateWorker);

  v7 = *(v0 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateReporter);

  return v0;
}

uint64_t SiriPenetrationRateMetrics.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_odmId;
  v2 = sub_2486B4DFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_logger;
  v4 = sub_2486B53BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateDataProvider);

  v6 = *(v0 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateWorker);

  v7 = *(v0 + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateReporter);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2486993A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2486993C4, 0, 0);
}

uint64_t sub_2486993C4()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateDataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_248699468;
  v3 = v0[2];

  return sub_2486A9834(v3);
}

uint64_t sub_248699468()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24869955C(uint64_t a1, uint64_t a2)
{
  v3[10] = a1;
  v3[11] = a2;
  v3[12] = *v2;
  return MEMORY[0x2822009F8](sub_248699584, 0, 0);
}

uint64_t sub_248699584()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 96) + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateWorker);
  v3 = v1[3];
  v5 = *v1;
  v4 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_24869963C;
  v7 = *(v0 + 80);

  return sub_24869DD40(v7, (v0 + 16));
}

uint64_t sub_24869963C()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248699734(uint64_t a1)
{
  *(v2 + 16) = *v1;
  *(v2 + 24) = *a1;
  *(v2 + 40) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_248699768, 0, 0);
}

uint64_t sub_248699768()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11DeepThought26SiriPenetrationRateMetrics_siriPenetrationRateReporter);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_248699824;
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return sub_248699DC4(v5, v3, v4);
}

uint64_t sub_248699824()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_248699918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = v3;
  return MEMORY[0x2822009F8](sub_24869993C, 0, 0);
}

uint64_t sub_24869993C()
{
  v1 = *(v0[5] + 16);
  v0[6] = v1;
  if (v1 >> 62)
  {
    result = sub_2486B56BC();
    v0[7] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = v0[1];

    return v8();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[7] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  v3 = v0[6];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x24C1D5E60](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v0[8] = v4;
  v0[9] = 1;
  v5 = *(*v4 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_248699B04;

  return v9(v0 + 2);
}

uint64_t sub_248699B04()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_248699C00, 0, 0);
}

uint64_t sub_248699C00()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];

  if (v2 == v3)
  {
    v5 = v0[1];

    return v5();
  }

  v6 = v0[9];
  v7 = v0[6];
  if ((v7 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x24C1D5E60](v0[9]);
    v8 = result;
  }

  else
  {
    if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v8 = *(v7 + 8 * v6 + 32);
  }

  v0[8] = v8;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v0[9] = v6 + 1;
  v9 = *(*v8 + 80);
  v12 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_248699B04;

  return v12(v0 + 2);
}

uint64_t sub_248699DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for conversationStreamMetadata(0);
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v9 = type metadata accessor for eventStreamMetadata(0);
  v4[15] = v9;
  v10 = *(v9 - 8);
  v4[16] = v10;
  v11 = *(v10 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_248699F1C, 0, 0);
}

uint64_t sub_248699F1C()
{
  v1 = *(v0[10] + 16);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_248699FD0;
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];

  return sub_248699918(v5, v3, v4);
}

uint64_t sub_248699FD0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v2 + 136);
    v8 = v2 + 104;
    v6 = *(v2 + 104);
    v7 = *(v8 + 8);

    v9 = *(v4 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24869A128, 0, 0);
  }
}

uint64_t sub_24869A128()
{
  v1 = *(v0 + 72);
  *(v0 + 40) = &type metadata for SiriPenetrationRateResult;
  v2 = sub_24869B460();
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 48) = v2;
  *(v0 + 32) = v1;
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), &type metadata for SiriPenetrationRateResult)[1];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = *(v0 + 128);
    v39 = *(v0 + 136);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v35 = *(*(v0 + 80) + 24);
    v37 = *(*(v0 + 120) + 20);
    v9 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);

    do
    {
      v11 = *(v0 + 136);
      v12 = *(v0 + 112);
      sub_24869B4B4(v9, v11, type metadata accessor for eventStreamMetadata);
      v13 = *v11;
      v14 = sub_2486B4DAC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v12, v39 + v37, v14);
      sub_24869B51C(v11, type metadata accessor for eventStreamMetadata);
      (*(v15 + 56))(v12, 0, 1, v14);
      v16 = *(v35 + 16);
      sub_2486B516C();

      sub_24868FF24(v12);
      v9 += v10;
      --v4;
    }

    while (v4);
  }

  else
  {
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    v19 = *(v0 + 56);
  }

  v20 = *(v0 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = *(v0 + 96);
    v40 = *(v0 + 104);
    v36 = *(*(v0 + 80) + 24);
    v38 = *(*(v0 + 88) + 20);
    v23 = v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    v34 = *(v0 + 32);

    do
    {
      v25 = *(v0 + 104);
      v26 = *(v0 + 112);
      sub_24869B4B4(v23, v25, type metadata accessor for conversationStreamMetadata);
      v27 = *v25;
      v28 = sub_2486B4DAC();
      v29 = *(v28 - 8);
      (*(v29 + 16))(v26, v40 + v38, v28);
      sub_24869B51C(v25, type metadata accessor for conversationStreamMetadata);
      (*(v29 + 56))(v26, 0, 1, v28);
      v30 = *(v36 + 16);
      sub_2486B515C();

      sub_24868FF24(v26);
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  v31 = *(*(v0 + 80) + 24);
  v32 = swift_task_alloc();
  *(v0 + 152) = v32;
  *v32 = v0;
  v32[1] = sub_24869A4AC;

  return sub_2486952A4();
}

uint64_t sub_24869A4AC()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_24869A64C;
  }

  else
  {
    v3 = sub_24869A5C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24869A5C0()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24869A64C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];

  return v5();
}

unint64_t sub_24869A6D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1608, &qword_2486B6690);
    v3 = sub_2486B56EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_24869B57C(v4, &v13, &qword_27EEA1570, &unk_2486B6470);
      v5 = v13;
      v6 = v14;
      result = sub_2486A10B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24869B5E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24869A8A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriPenetrationRateMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24869A8E4()
{
  result = qword_27EEA15B0;
  if (!qword_27EEA15B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA15B0);
  }

  return result;
}

uint64_t sub_24869A940()
{
  result = sub_2486B4DFC();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_2486B53BC();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of SiriPenetrationRateMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 128);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24869B5FC;

  return v8(a1);
}

uint64_t dispatch thunk of SiriPenetrationRateMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_248696E0C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of SiriPenetrationRateMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24869B5FC;

  return v8(a1);
}

unint64_t sub_24869ADCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15C8, &qword_2486B6FD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15D0, &qword_2486B6650);
    v8 = sub_2486B56EC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_24869B57C(v10, v6, &qword_27EEA15C8, &qword_2486B6FD0);
      v12 = *v6;
      result = sub_2486A112C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_2486B4F4C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_24869AFB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15F8, &qword_2486B6678);
  v3 = sub_2486B56EC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_2486A1220(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = v3[6] + 16 * v9;
    *v12 = v4;
    *(v12 + 8) = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2486A1220(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24869B0E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E8, &qword_2486B6668);
    v3 = sub_2486B56EC();
    v4 = a1 + 32;

    for (i = v1 - 1; ; --i)
    {
      v6 = *(v4 + 32);
      v7 = *(v4 + 64);
      v19 = *(v4 + 48);
      *v20 = v7;
      *&v20[16] = *(v4 + 80);
      v8 = *(v4 + 16);
      v18[0] = *v4;
      v18[1] = v8;
      v18[2] = v6;
      v25 = *(v4 + 64);
      v23 = v6;
      v24 = v19;
      v21 = v18[0];
      v22 = v8;
      sub_24869B57C(v18, v17, &qword_27EEA15F0, &qword_2486B6670);
      result = sub_2486A119C(&v21);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 72 * result;
      v12 = v24;
      *(v11 + 32) = v23;
      *(v11 + 48) = v12;
      *(v11 + 64) = v25;
      v13 = v22;
      *v11 = v21;
      *(v11 + 16) = v13;
      *(v3[7] + 16 * result) = *&v20[4];
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_11;
      }

      v3[2] = v16;
      if (!i)
      {

        return v3;
      }

      v4 += 88;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24869B258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15D8, &qword_2486B6658);
    v3 = sub_2486B56EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2486A10B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24869B35C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA15E0, &qword_2486B6660);
    v3 = sub_2486B56EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2486A10B4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24869B460()
{
  result = qword_27EEA1600;
  if (!qword_27EEA1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA1600);
  }

  return result;
}

uint64_t sub_24869B4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24869B51C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24869B57C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_24869B5E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t BiomeEvent.init(biomeEvent:timestamp:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  return result;
}

uint64_t BiomeDataProvider.__allocating_init(logger:biomeSource:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = qword_27EEA1610;
  v11 = sub_2486B53BC();
  (*(*(v11 - 8) + 32))(v9 + v10, a1, v11);
  return v9;
}

uint64_t BiomeDataProvider.init(logger:biomeSource:bookmark:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  v5 = qword_27EEA1610;
  v6 = sub_2486B53BC();
  (*(*(v6 - 8) + 32))(v3 + v5, a1, v6);
  return v3;
}

uint64_t sub_24869B740(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  return MEMORY[0x2822009F8](sub_24869B788, 0, 0);
}

uint64_t sub_24869B788()
{
  v24 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 80);
  sub_24869BA40();
  v3 = *(v1 + 24);
  v4 = sub_2486B4F9C();
  type metadata accessor for BiomeEvent();
  result = sub_2486B551C();
  v22 = result;
  if (v4 >> 62)
  {
    result = sub_2486B56BC();
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1D5E60](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    sub_2486B536C();
    v10 = swift_dynamicCastUnknownClassUnconditional();
    sub_2486B537C();
    *(v0 + 16) = v10;
    *(v0 + 24) = v11;
    sub_2486B555C();
    sub_2486B553C();
  }

  while (v6 != v7);
LABEL_10:
  v12 = *(v0 + 40);

  v13 = sub_2486B539C();
  v14 = sub_2486B55AC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 134218242;
    if (v4 >> 62)
    {
      v17 = sub_2486B56BC();
    }

    else
    {
      v17 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v17;

    *(v15 + 12) = 2080;
    v18 = sub_2486B58AC();
    v20 = sub_2486965C0(v18, v19, &v23);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_24868B000, v13, v14, "marker: read %ld events of type %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x24C1D6650](v16, -1, -1);
    MEMORY[0x24C1D6650](v15, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  **(v0 + 32) = v22;
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_24869BA40()
{
  sub_24869C374(0, &qword_27EEA1798, 0x277CF0FD8);
  v0 = swift_dynamicCastMetatype();
  result = 0;
  if (!v0)
  {
    sub_24869C374(0, &qword_27EEA17A0, 0x277CF1600);
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }

    else
    {
      sub_24869C374(0, &qword_27EEA17A8, 0x277CF1320);
      if (swift_dynamicCastMetatype())
      {
        return 2;
      }

      else
      {
        sub_24869C374(0, &qword_27EEA17B0, 0x277CF1700);
        if (swift_dynamicCastMetatype())
        {
          return 3;
        }

        else
        {
          sub_24869C374(0, &qword_27EEA17B8, 0x277CF16F8);
          if (swift_dynamicCastMetatype())
          {
            return 4;
          }

          else
          {
            sub_24869C374(0, &qword_27EEA17C0, 0x277CF1488);
            if (swift_dynamicCastMetatype())
            {
              return 6;
            }

            else
            {
              sub_24869C374(0, &qword_27EEA17C8, 0x277CF12C0);
              if (swift_dynamicCastMetatype())
              {
                return 7;
              }

              else
              {
                sub_24869C374(0, &qword_27EEA17D0, 0x277CF1658);
                if (swift_dynamicCastMetatype())
                {
                  return 8;
                }

                else
                {
                  sub_24869C374(0, &qword_27EEA17D8, 0x277CF12C8);
                  if (swift_dynamicCastMetatype())
                  {
                    return 9;
                  }

                  else
                  {
                    sub_24869C374(0, &qword_27EEA17E0, 0x277CF1348);
                    if (swift_dynamicCastMetatype())
                    {
                      return 10;
                    }

                    else
                    {
                      sub_24869C374(0, &qword_27EEA17E8, 0x277CF1388);
                      if (swift_dynamicCastMetatype())
                      {
                        return 11;
                      }

                      else
                      {
                        sub_24869C374(0, &qword_27EEA17F0, 0x277CF1030);
                        if (swift_dynamicCastMetatype())
                        {
                          return 12;
                        }

                        else
                        {
                          sub_24869C374(0, &qword_27EEA17F8, 0x277CF0FE8);
                          if (swift_dynamicCastMetatype())
                          {
                            return 13;
                          }

                          else
                          {
                            sub_24869C374(0, &qword_27EEA1800, 0x277CF1610);
                            if (swift_dynamicCastMetatype())
                            {
                              return 16;
                            }

                            else
                            {
                              sub_24869C374(0, &qword_27EEA1808, 0x277CF1118);
                              if (swift_dynamicCastMetatype())
                              {
                                return 15;
                              }

                              else
                              {
                                sub_24869C374(0, &qword_27EEA1810, 0x277CF1540);
                                if (swift_dynamicCastMetatype())
                                {
                                  return 14;
                                }

                                else
                                {
                                  sub_24869C374(0, &qword_27EEA1818, 0x277CF1590);
                                  if (swift_dynamicCastMetatype())
                                  {
                                    return 18;
                                  }

                                  else
                                  {
                                    sub_24869C374(0, &qword_27EEA1820, 0x277CF15A8);
                                    if (swift_dynamicCastMetatype())
                                    {
                                      return 19;
                                    }

                                    else
                                    {
                                      return 5;
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

  return result;
}

uint64_t BiomeDataProvider.deinit()
{
  v1 = qword_27EEA1610;
  v2 = sub_2486B53BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BiomeDataProvider.__deallocating_deinit()
{
  BiomeDataProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24869BE4C(uint64_t a1)
{
  v4 = *(**v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

uint64_t sub_24869BFA8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24869BFFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_24869C044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24869C080()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24869C0C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24869C110(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24869C164()
{
  result = sub_2486B53BC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of BiomeDataProvider.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 120);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_248696E0C;

  return v8(a1);
}

uint64_t sub_24869C374(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t static BookmarkUtils.getBookmarkEndTime(calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v56 = a2;
  v2 = sub_2486B4E9C();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2486B4EAC();
  v61 = *(v70 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v70);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_2486B4E7C();
  v57 = *(v69 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v69);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2486B4EFC();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v58 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = sub_2486B4DAC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v68 = &v52 - v28;
  if (qword_280DCC6F8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v13, qword_280DCC700);
  swift_beginAccess();
  sub_24868FE44(v29, v21);
  v30 = *(v23 + 48);
  v31 = v30(v21, 1, v22);
  v32 = v22;
  v71 = v30;
  if (v31 == 1)
  {
    sub_2486B4D9C();
    v33 = v23 + 48;
    v34 = v30(v21, 1, v22);
    v35 = v23;
    v36 = v68;
    if (v34 != 1)
    {
      sub_24868FF24(v21);
    }
  }

  else
  {
    v33 = v23 + 48;
    (*(v23 + 32))(v27, v21, v22);
    v35 = v23;
    v36 = v68;
  }

  v37 = v65;
  v38 = v66;
  (*(v65 + 104))(v12, *MEMORY[0x277CC9968], v66);
  sub_2486B4ECC();
  (*(v37 + 8))(v12, v38);
  v66 = v33;
  result = v71(v19, 1, v32);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v54 = *(v35 + 8);
    v55 = v35 + 8;
    v54(v27, v32);
    v40 = *(v35 + 32);
    v52 = v35 + 32;
    v53 = v40;
    v40(v36, v19, v32);
    v41 = v57;
    v42 = v59;
    (*(v57 + 104))(v59, *MEMORY[0x277CC9878], v69);
    v43 = *MEMORY[0x277CC9900];
    v44 = v61;
    v45 = *(v61 + 104);
    v65 = v32;
    v46 = v60;
    v45(v60, v43, v70);
    v47 = v62;
    v48 = v63;
    v49 = v64;
    (*(v63 + 104))(v62, *MEMORY[0x277CC98E8], v64);
    v50 = v58;
    sub_2486B4EBC();
    (*(v48 + 8))(v47, v49);
    v51 = v65;
    (*(v44 + 8))(v46, v70);
    (*(v41 + 8))(v42, v69);
    result = v71(v50, 1, v51);
    if (result != 1)
    {
      v54(v68, v51);
      return v53(v56, v50, v51);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24869CA84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6840;
  sub_2486B50DC();
  *(inited + 32) = sub_2486B50CC();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000002486BBC70;
  *(inited + 80) = sub_2486B507C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0x6C61437472617453;
  *(inited + 104) = 0xE90000000000006CLL;
  *(inited + 128) = sub_2486B509C();
  *(inited + 136) = v4;
  type metadata accessor for BMAppIntentHandlingStatus(0);
  *(inited + 168) = v5;
  *(inited + 144) = 4;
  *(inited + 176) = sub_2486B508C();
  *(inited + 184) = v6;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 0;
  *(inited + 224) = sub_2486B50BC();
  *(inited + 232) = v7;
  *(inited + 264) = v1;
  *(inited + 240) = 0x676E696F6774754FLL;
  *(inited + 248) = 0xE800000000000000;
  v8 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1828 = v8;
  return result;
}

uint64_t sub_24869CC0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1568, &qword_2486B6468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  sub_2486B504C();
  *(inited + 32) = sub_2486B502C();
  v1 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x80000002486BBC70;
  *(inited + 80) = sub_2486B501C();
  *(inited + 88) = v3;
  *(inited + 120) = v1;
  *(inited + 96) = 0xD000000000000023;
  *(inited + 104) = 0x80000002486BBC90;
  *(inited + 128) = sub_2486B503C();
  *(inited + 136) = v4;
  type metadata accessor for BMSiriExecutionTaskStep(0);
  *(inited + 168) = v5;
  *(inited + 144) = 7;
  v6 = sub_24869A6D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1570, &unk_2486B6470);
  result = swift_arrayDestroy();
  off_27EEA1830 = v6;
  return result;
}

uint64_t _s11DeepThought35StartCallPenetrationRateEventFilterC06isSiriG013siriExecutionSb0aB15BiomeFoundation010FeaturizedG0C_tFZ_0()
{
  sub_2486B504C();
  sub_2486B502C();
  sub_2486B50FC();

  v0 = v39;
  v35 = v38;
  if (qword_27EEA1490 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1830;
  v2 = sub_2486B502C();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v34 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v38);
  v7 = swift_dynamicCast();
  v8 = v36;
  if (!v7)
  {
    v8 = 0;
  }

  v34 = v8;
  if (v7)
  {
    v9 = v37;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B501C();
  sub_2486B50FC();

  v10 = v39;
  v33 = v38;
  v11 = sub_2486B501C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v13 = sub_2486A10B4(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_20:
    v32 = 0;
    v18 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v13, &v38);
  v16 = swift_dynamicCast();
  v17 = v36;
  if (!v16)
  {
    v17 = 0;
  }

  v32 = v17;
  if (v16)
  {
    v18 = v37;
  }

  else
  {
    v18 = 0;
  }

LABEL_21:
  sub_2486B503C();
  type metadata accessor for BMSiriExecutionTaskStep(0);
  sub_2486B50FC();

  v31 = v38;
  v19 = BYTE4(v38);
  v20 = sub_2486B503C();
  if (!v1[2])
  {

LABEL_30:
    v26 = 0;
    v27 = 1;
    if (!v0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v9)
    {
      if (v35 == v34 && v0 == v9)
      {

        goto LABEL_37;
      }

      v28 = sub_2486B57DC();

      if (v28)
      {
LABEL_37:
        if (v10)
        {
          if (!v18)
          {
            goto LABEL_43;
          }

          if (v33 != v32 || v10 != v18)
          {
            v30 = sub_2486B57DC();

            if (v19 & 1 | ((v30 & 1) == 0))
            {
              v27 &= v30;
              return v27 & 1;
            }

            goto LABEL_50;
          }
        }

        else if (v18)
        {
          goto LABEL_43;
        }

        if (v19)
        {
          return v27 & 1;
        }

LABEL_50:
        v27 = (v31 == v26) & ~v27;
        return v27 & 1;
      }
    }

    else
    {
    }

    goto LABEL_43;
  }

  v22 = sub_2486A10B4(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_248694AB0(v1[7] + 32 * v22, &v38);
  v25 = swift_dynamicCast();
  if (v25)
  {
    v26 = v36;
  }

  else
  {
    v26 = 0;
  }

  v27 = v25 ^ 1;
  if (v0)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (!v9)
  {
    goto LABEL_37;
  }

LABEL_43:

  v27 = 0;
  return v27 & 1;
}

uint64_t _s11DeepThought35StartCallPenetrationRateEventFilterC12isAppUIEvent9appIntentSb0aB15BiomeFoundation010FeaturizedG0C_tFZ_0()
{
  sub_2486B50DC();
  sub_2486B50CC();
  sub_2486B50FC();

  v0 = v59;
  v54 = v58;
  if (qword_27EEA1488 != -1)
  {
    swift_once();
  }

  v1 = off_27EEA1828;
  v2 = sub_2486B50CC();
  if (!v1[2])
  {

    goto LABEL_11;
  }

  v4 = sub_2486A10B4(v2, v3);
  v6 = v5;

  if ((v6 & 1) == 0)
  {
LABEL_11:
    v53 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  sub_248694AB0(v1[7] + 32 * v4, &v58);
  v7 = swift_dynamicCast();
  v8 = v56;
  if (!v7)
  {
    v8 = 0;
  }

  v53 = v8;
  if (v7)
  {
    v9 = v57;
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  sub_2486B507C();
  sub_2486B50FC();

  v50 = v58;
  v55 = v59;
  v10 = sub_2486B507C();
  if (!v1[2])
  {

    goto LABEL_20;
  }

  v12 = sub_2486A10B4(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_20:
    v49 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  sub_248694AB0(v1[7] + 32 * v12, &v58);
  v15 = swift_dynamicCast();
  v16 = v56;
  if (!v15)
  {
    v16 = 0;
  }

  v49 = v16;
  if (v15)
  {
    v17 = v57;
  }

  else
  {
    v17 = 0;
  }

LABEL_21:
  sub_2486B509C();
  type metadata accessor for BMAppIntentHandlingStatus(0);
  sub_2486B50FC();

  v47 = v58;
  v52 = BYTE4(v58);
  v18 = sub_2486B509C();
  if (!v1[2])
  {

    goto LABEL_27;
  }

  v20 = sub_2486A10B4(v18, v19);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
LABEL_27:
    v46 = 0;
    v25 = 1;
    goto LABEL_28;
  }

  sub_248694AB0(v1[7] + 32 * v20, &v58);
  v23 = swift_dynamicCast();
  v24 = v56;
  if (!v23)
  {
    v24 = 0;
  }

  v46 = v24;
  v25 = v23 ^ 1;
LABEL_28:
  v51 = v25;
  sub_2486B508C();
  sub_2486B50FC();

  v48 = v58;
  v26 = sub_2486B508C();
  if (v1[2])
  {
    v28 = sub_2486A10B4(v26, v27);
    v30 = v29;

    v31 = 2;
    if (v30)
    {
      sub_248694AB0(v1[7] + 32 * v28, &v58);
      if (swift_dynamicCast())
      {
        v31 = v56;
      }

      else
      {
        v31 = 2;
      }
    }
  }

  else
  {

    v31 = 2;
  }

  sub_2486B50BC();
  sub_2486B50FC();

  v32 = v58;
  v33 = v59;
  v34 = sub_2486B50BC();
  if (!v1[2])
  {

LABEL_46:
    v40 = 0;
    v41 = 0;
    if (!v0)
    {
      goto LABEL_43;
    }

    goto LABEL_47;
  }

  v36 = sub_2486A10B4(v34, v35);
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_46;
  }

  sub_248694AB0(v1[7] + 32 * v36, &v58);
  v39 = swift_dynamicCast();
  if (v39)
  {
    v40 = v56;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v57;
  }

  else
  {
    v41 = 0;
  }

  if (!v0)
  {
LABEL_43:
    if (v9)
    {

      goto LABEL_74;
    }

    goto LABEL_53;
  }

LABEL_47:
  if (!v9)
  {

    goto LABEL_58;
  }

  if (v54 == v53 && v0 == v9)
  {

    goto LABEL_53;
  }

  v42 = sub_2486B57DC();

  if ((v42 & 1) == 0)
  {
LABEL_58:

    goto LABEL_74;
  }

LABEL_53:
  if (v55)
  {
    if (!v17)
    {

      goto LABEL_73;
    }

    if (v50 == v49 && v55 == v17)
    {
    }

    else
    {
      v43 = sub_2486B57DC();

      if ((v43 & 1) == 0)
      {
        goto LABEL_73;
      }
    }
  }

  else if (v17)
  {

    goto LABEL_74;
  }

  if (v52)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if ((v51 & 1) != 0 || v47 != v46)
  {
    goto LABEL_73;
  }

  if (v48 == 2)
  {
    if (v31 == 2)
    {
      goto LABEL_76;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (v31 == 2 || ((v31 ^ v48) & 1) != 0)
  {
    goto LABEL_73;
  }

LABEL_76:
  if (!v33)
  {
    if (!v41)
    {
      v44 = 1;
      return v44 & 1;
    }

    goto LABEL_74;
  }

  if (!v41)
  {
LABEL_74:

    v44 = 0;
    return v44 & 1;
  }

  if (v32 == v40 && v33 == v41)
  {

    v44 = 1;
  }

  else
  {
    v44 = sub_2486B57DC();
  }

  return v44 & 1;
}

uint64_t SiriPenetrationRateCalculator.__allocating_init(calculationTasks:logger:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SiriPenetrationRateCalculator.init(calculationTasks:logger:)(a1, a2);
  return v7;
}

uint64_t SiriPenetrationRateCalculator.defaultLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
  v2 = *(v0 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale + 8);

  return v1;
}

uint64_t SiriPenetrationRateCalculator.init(calculationTasks:logger:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F8, &qword_2486B68D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v39 - v6;
  v7 = sub_2486B4F0C();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1838, &qword_2486B68D8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - v13;
  v15 = sub_2486B4E4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2486B4E6C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_timeBucketInSec) = 0x404E000000000000;
  v25 = [objc_opt_self() autoupdatingCurrentLocale];
  sub_2486B4E2C();
  sub_2486B4E5C();
  (*(v21 + 8))(v24, v20);
  sub_2486B4E3C();
  (*(v16 + 8))(v19, v15);
  v26 = sub_2486B4E1C();
  v27 = *(v26 - 8);
  result = (*(v27 + 48))(v14, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v29 = (v3 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
    v30 = sub_2486B4E0C();
    v32 = v31;
    (*(v27 + 8))(v14, v26);
    *v29 = v30;
    v29[1] = v32;
    v33 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_conversationStream;
    sub_2486B522C();
    *(v3 + v33) = sub_2486B521C();
    sub_2486B4EDC();
    v34 = v44;
    sub_2486B4F1C();
    v35 = sub_2486B4F2C();
    result = (*(*(v35 - 8) + 48))(v34, 1, v35);
    if (result != 1)
    {
      v36 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
      sub_2486B4EEC();
      (*(v40 + 32))(v3 + v36, v10, v41);
      *(v3 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks) = v42;
      v37 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_logger;
      v38 = sub_2486B53BC();
      (*(*(v38 - 8) + 32))(v3 + v37, v43, v38);
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24869DD40(uint64_t a1, uint64_t *a2)
{
  *(v3 + 168) = a1;
  *(v3 + 176) = v2;
  v5 = sub_2486B4DAC();
  *(v3 + 184) = v5;
  v6 = *(v5 - 8);
  *(v3 + 192) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 200) = swift_task_alloc();
  v8 = sub_2486B53BC();
  *(v3 + 208) = v8;
  v9 = *(v8 - 8);
  *(v3 + 216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  *(v3 + 248) = v11;
  *(v3 + 256) = v12;
  *(v3 + 264) = v13;
  *(v3 + 272) = *(a2 + 1);
  *(v3 + 288) = a2[4];
  *(v3 + 296) = *(a2 + 5);
  *(v3 + 312) = a2[7];

  return MEMORY[0x2822009F8](sub_24869DEB0, 0, 0);
}

uint64_t sub_24869DEB0()
{
  v91 = v0;
  v1 = v0[38];
  v10 = v0[36];
  v2 = v0[34];
  v3 = v0[31];
  v4 = MEMORY[0x277D84F90];
  v5 = sub_24869AFB4(MEMORY[0x277D84F90]);
  v0[20] = sub_24869B0E4(v4);
  v6 = (v0 + 20);
  v7 = _s11DeepThought24LocaleChangingPointUtilsO03getcD6Points23featurizedConversationsSayAA07DateAndC4PairVGSay0aB15BiomeFoundation22FeaturizedConversationCG_tFZ_0(v1);
  v8 = _s11DeepThought24SiriPenetrationRateUtilsO07alignToC15ExecutionEvents04siriiJ00K8UIEvents0K13Conversations12timeDurationSay0aB15BiomeFoundation15FeaturizedEventCGAL_ALSayAI0R12ConversationCGSdtFZ_0(v2, v10, v1, 60.0);
  sub_2486B50EC();

  v9 = sub_2486B539C();
  LOBYTE(v10) = sub_2486B55AC();
  v69 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    if (v8 >> 62)
    {
LABEL_46:
      v12 = sub_2486B56BC();
      v8 = v69;
    }

    else
    {
      v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    _os_log_impl(&dword_24868B000, v9, v10, "marker: The size of siriExecutionEvents is %ld", v11, 0xCu);
    MEMORY[0x24C1D6650](v11, -1, -1);
  }

  else
  {
  }

  v13 = v0[30];
  v14 = v0[22];
  v70 = *(v0[27] + 8);
  v70(v0[31], v0[26]);
  sub_24869E75C(v8, v7, v6);
  sub_2486B50EC();
  v15 = sub_2486B539C();
  v16 = sub_2486B55AC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    swift_beginAccess();
    *(v17 + 4) = *(*v6 + 16);
    _os_log_impl(&dword_24868B000, v15, v16, "marker: Counts are updated with SiriEvents. The size of counts is %ld", v17, 0xCu);
    MEMORY[0x24C1D6650](v17, -1, -1);
  }

  v11 = v0[32];
  v18 = v0[29];
  v19 = v0[22];
  v70(v0[30], v0[26]);
  swift_beginAccess();
  sub_24869F9F4(v11, v7, v6);
  swift_endAccess();
  sub_2486B50EC();
  v20 = v0[20];

  v9 = sub_2486B539C();
  v21 = sub_2486B55AC();
  if (os_log_type_enabled(v9, v21))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v20 + 16);

    _os_log_impl(&dword_24868B000, v9, v21, "marker: Counts are updated with UIEvents. The size of counts is %ld", v11, 0xCu);
    MEMORY[0x24C1D6650](v11, -1, -1);
  }

  else
  {
  }

  v68 = v0;
  v70(v0[29], v0[26]);
  v22 = v20 + 64;
  v23 = -1;
  v24 = -1 << *(v20 + 32);
  if (-v24 < 64)
  {
    v23 = ~(-1 << -v24);
  }

  v10 = v23 & *(v20 + 64);
  v0 = ((63 - v24) >> 6);

  v6 = 0;
  v7 = 0;
  v71 = v20;
  if (v10)
  {
    while (1)
    {
LABEL_18:
      v26 = __clz(__rbit64(v10)) | (v7 << 6);
      v27 = (*(v20 + 48) + 72 * v26);
      v11 = *v27;
      v28 = v27[1];
      v82 = *(v27 + 3);
      v84 = *(v27 + 2);
      v29 = *(v27 + 5);
      v80 = *(v27 + 4);
      v30 = *(v27 + 7);
      v76 = *(v27 + 6);
      v72 = *(v27 + 64);
      v31 = (*(v20 + 56) + 16 * v26);
      v32 = *v31;
      v33 = v31[1];

      v78 = v29;

      v74 = v30;

      sub_2486A2CEC(v6);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v90 = v5;
      v9 = v5;
      v6 = sub_2486A1220(v11, v28);
      isa = v5[2].isa;
      v37 = (v35 & 1) == 0;
      v38 = isa + v37;
      if (__OFADD__(isa, v37))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v39 = v35;
      if (v5[3].isa >= v38)
      {
        break;
      }

      sub_2486A19FC(v38, isUniquelyReferenced_nonNull_native);
      v5 = v90;
      v9 = v90;
      v40 = sub_2486A1220(v11, v28);
      if ((v39 & 1) != (v41 & 1))
      {

        return sub_2486B57EC();
      }

      v6 = v40;
      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_27:
      v46 = v5[7].isa;
      v9 = *(v46 + v6);
      v47 = swift_isUniquelyReferenced_nonNull_native();
      *(v46 + v6) = v9;
      v86 = v5;
      if ((v47 & 1) == 0)
      {
        v9 = sub_2486A0F08(0, v9[2].isa + 1, 1, v9);
        *(v46 + v6) = v9;
      }

      v49 = v9[2].isa;
      v48 = v9[3].isa;
      if (v49 >= v48 >> 1)
      {
        v9 = sub_2486A0F08((v48 > 1), v49 + 1, 1, v9);
        *(v46 + v6) = v9;
      }

      v20 = v71;
      v9[2].isa = (v49 + 1);
      v50 = &v9[11 * v49];
      LODWORD(v50[4].isa) = v11;
      v10 &= v10 - 1;
      *&v50[5].isa = v28;
      v50[6].isa = v84;
      v50[7].isa = v82;
      v50[8].isa = v80;
      v50[9].isa = v78;
      v50[10].isa = v76;
      v50[11].isa = v74;
      LOBYTE(v50[12].isa) = v72;
      *(&v50[12].isa + 1) = v88;
      BYTE3(v50[12].isa) = v89;
      *(&v50[12].isa + 4) = v32;
      *(&v50[13].isa + 4) = v33;
      v6 = sub_24869E74C;
      v5 = v86;
      if (!v10)
      {
        goto LABEL_14;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v35)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v9 = &v90;
      sub_2486A2114();
      v5 = v90;
      if (v39)
      {
        goto LABEL_27;
      }
    }

LABEL_25:
    v5[(v6 >> 6) + 8].isa = (v5[(v6 >> 6) + 8].isa | (1 << v6));
    v42 = v5[6].isa + 16 * v6;
    *v42 = v11;
    *(v42 + 8) = v28;
    *(v5[7].isa + v6) = MEMORY[0x277D84F90];
    v43 = v5[2].isa;
    v44 = __OFADD__(v43, 1);
    v45 = (v43 + 1);
    if (v44)
    {
      goto LABEL_45;
    }

    v5[2].isa = v45;
    goto LABEL_27;
  }

  while (1)
  {
LABEL_14:
    v25 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v25 >= v0)
    {
      break;
    }

    v10 = *(v22 + 8 * v25);
    ++v7;
    if (v10)
    {
      v7 = v25;
      goto LABEL_18;
    }
  }

  v51 = v68[28];

  sub_2486B50EC();
  v52 = sub_2486B539C();
  v53 = sub_2486B55AC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v5[2];
    _os_log_impl(&dword_24868B000, v52, v53, "marker: The size of countsToReport is %ld", v54, 0xCu);
    MEMORY[0x24C1D6650](v54, -1, -1);
  }

  v75 = v68[37];
  v77 = v68[39];
  v73 = v68[35];
  v55 = v68[33];
  v81 = v68[31];
  v83 = v68[30];
  v85 = v68[29];
  v87 = v5;
  v56 = v68[28];
  v57 = v68[25];
  v58 = v68[26];
  v59 = v68[24];
  v79 = v68[23];
  v61 = v68[21];
  v60 = v68[22];

  v70(v56, v58);
  static BookmarkUtils.getBookmarkEndTime(calendar:)(v60 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1860, &qword_2486B68E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2486B6400;
  *(inited + 32) = v55;
  *(inited + 40) = v73;
  *(inited + 48) = v75;
  v63 = sub_2486A7268(inited, v57);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1868, &unk_2486B68F0);
  v64 = swift_initStackObject();
  *(v64 + 16) = xmmword_2486B6240;
  *(v64 + 32) = v77;
  v65 = sub_2486A72A8(v64, v57);
  swift_setDeallocating();
  (*(v59 + 8))(v57, v79);

  sub_2486A2CEC(v6);
  *v61 = v87;
  v61[1] = v63;
  v61[2] = v65;

  v66 = v68[1];

  return v66();
}

uint64_t sub_24869E75C(unint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v106 = a2;
  v126 = sub_2486B53BC();
  v7 = *(v126 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_2486B4E9C();
  v10 = *(v133 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v133);
  v132 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_2486B4EAC();
  v13 = *(v131 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2486B4E7C();
  isUniquelyReferenced_nonNull_native = *(v129 - 8);
  v17 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x28223BE20](v129);
  v128 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v127 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1898, &unk_2486B69E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v105 = &v92 - v24;
  v104 = type metadata accessor for DateAndLocalePair();
  v100 = *(v104 - 8);
  v25 = *(v100 + 64);
  MEMORY[0x28223BE20](v104);
  v97 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2486B4DAC();
  v27 = *(v145 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v145);
  v124 = &v92 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v33 = &v92 - v32;
  if (a1 >> 62)
  {
LABEL_70:
    result = sub_2486B56BC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v35 = 0;
  v138 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
  v96 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks;
  v92 = (v4 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
  v99 = a1 & 0xC000000000000001;
  v94 = a1 & 0xFFFFFFFFFFFFFF8;
  v93 = a1 + 32;
  v103 = (v100 + 56);
  v123 = *MEMORY[0x277CC9878];
  v122 = (isUniquelyReferenced_nonNull_native + 104);
  v121 = *MEMORY[0x277CC9900];
  v120 = (v13 + 104);
  v119 = *MEMORY[0x277CC98E8];
  v118 = (v10 + 13);
  v117 = (v10 + 1);
  v116 = (v13 + 8);
  v115 = (isUniquelyReferenced_nonNull_native + 8);
  v114 = (v27 + 48);
  v112 = (v27 + 32);
  v137 = (v27 + 8);
  v111 = (v7 + 8);
  *&v31 = 136315138;
  v108 = v31;
  v102 = xmmword_2486B68B0;
  v95 = a1;
  v146 = v33;
  v98 = result;
  v136 = v4;
  v113 = a3;
  while (1)
  {
    if (v99)
    {
      v36 = v35;
      v10 = MEMORY[0x24C1D5E60](v35, a1);
      v37 = __OFADD__(v36, 1);
      v7 = v36 + 1;
      if (v37)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v35 >= *(v94 + 16))
      {
        goto LABEL_68;
      }

      v10 = *(v93 + 8 * v35);
      v38 = v35;

      v37 = __OFADD__(v38, 1);
      v7 = v38 + 1;
      if (v37)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    v107 = v7;
    sub_2486B512C();
    sub_2486B4D5C();
    if ((_s11DeepThought10CustomDateO15isTodayOrFuture4date8calendarSb10Foundation0D0V_AG8CalendarVtFZ_0(v33, v4 + v138) & 1) == 0)
    {
      break;
    }

    (*v137)(v33, v145);

LABEL_5:
    v35 = v107;
    if (v107 == v98)
    {
      return result;
    }
  }

  v144 = v10;
  v39 = *(v4 + v96);
  if (v39 >> 62)
  {
    if (v39 < 0)
    {
      v91 = *(v4 + v96);
    }

    v27 = sub_2486B56BC();
  }

  else
  {
    v27 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v145;
  if (!v27)
  {
LABEL_59:

    v33 = v146;
    result = (*v137)(v146, a1);
    a1 = v95;
    v4 = v136;
    goto LABEL_5;
  }

  v7 = 0;
  v40 = v92[1];
  v101 = *v92;
  v148 = v40;
  v143 = v39 & 0xC000000000000001;
  v110 = v39 & 0xFFFFFFFFFFFFFF8;
  v109 = v39 + 32;
  v135 = v39;
  v134 = v27;
  while (1)
  {
    if (v143)
    {
      v41 = MEMORY[0x24C1D5E60](v7, v39);
      v37 = __OFADD__(v7++, 1);
      if (v37)
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v7 >= *(v110 + 16))
      {
        goto LABEL_64;
      }

      v42 = *(v109 + 8 * v7);

      v37 = __OFADD__(v7++, 1);
      if (v37)
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }
    }

    v149 = v7;
    v10 = *(v41 + 24);
    v43 = *(v41 + 32);
    v147 = *(v41 + 16);
    v4 = v41;
    v13 = v43 + 16;
    isUniquelyReferenced_nonNull_native = *(v43 + 16);

    v33 = v144;
    if (((isUniquelyReferenced_nonNull_native)(v144, v10, v43) & 1) == 0)
    {

      a1 = v145;
      goto LABEL_18;
    }

    v142 = v4;
    v44 = sub_2486B510C();
    v45 = sub_24869F714(v44, sub_2486A28C4);
    v141 = sub_2486A2CFC(v45);
    v140 = v46;

    v47 = sub_2486B511C();
    v48 = sub_24869F714(v47, sub_2486A2A54);
    a1 = sub_2486A3398(v48);
    *(&v139 + 1) = v49;

    v50 = sub_2486B511C();
    v51 = sub_24869F714(v50, sub_2486A2A54);
    v33 = sub_2486A3728(v51);
    v53 = v52;

    *&v139 = a1;
    if (v53)
    {
    }

    else
    {
      v54 = v106;
      v13 = *(v106 + 16);
      v4 = v148;
      if (v13 && (v55 = (*(v100 + 80) + 32) & ~*(v100 + 80), v27 = v106 + v55, (sub_2486B4D7C() & 1) == 0))
      {
        if (v13 != 1)
        {
          v57 = *(v100 + 72);
          a3 = sub_2486A3D30();
          v7 = v54 + v57 + v55;
          isUniquelyReferenced_nonNull_native = 1;
          v10 = v145;
          while ((sub_2486B541C() & 1) == 0)
          {
            ++isUniquelyReferenced_nonNull_native;
            v7 += v57;
            if (v13 == isUniquelyReferenced_nonNull_native)
            {
              isUniquelyReferenced_nonNull_native = v13;
              break;
            }
          }

          if (isUniquelyReferenced_nonNull_native - 1 >= v13)
          {
            goto LABEL_69;
          }

          v27 += v57 * (isUniquelyReferenced_nonNull_native - 1);
        }

        v58 = v105;
        sub_2486A3BB8(v27, v105);
        v59 = v104;
        (*v103)(v58, 0, 1, v104);

        v60 = v58;
        v61 = v97;
        sub_2486A3C1C(v60, v97);
        v62 = (v61 + *(v59 + 20));
        v33 = *v62;
        v53 = v62[1];

        sub_2486A3C80(v61);
      }

      else
      {
        v56 = v105;
        (*v103)(v105, 1, 1, v104);
        sub_2486A3D88(v56);
        v33 = v101;
        v53 = v4;
      }
    }

    v63 = v128;
    v4 = v129;
    (*v122)(v128, v123, v129);
    v64 = v130;
    v65 = v131;
    (*v120)(v130, v121, v131);
    v66 = v132;
    v67 = v133;
    (*v118)(v132, v119, v133);
    v68 = v127;
    sub_2486B4EBC();
    (*v117)(v66, v67);
    (*v116)(v64, v65);
    (*v115)(v63, v4);
    a1 = v145;
    if ((*v114)(v68, 1, v145) == 1)
    {
      break;
    }

    v69 = v124;
    (*v112)(v124, v68, a1);
    sub_2486B4D6C();
    v71 = v70;
    (*v137)(v69, a1);
    LODWORD(v153) = 1;
    *(&v153 + 1) = v71;
    *&v154 = v33;
    *(&v154 + 1) = v53;
    *&v155 = v141;
    *(&v155 + 1) = v140;
    v156 = v139;
    v157 = v147;
    v72 = v125;
    sub_2486B50EC();
    sub_2486A3DF0(&v153, v151);
    v7 = sub_2486B539C();
    isUniquelyReferenced_nonNull_native = sub_2486B55AC();
    sub_2486A3CDC(&v153);
    if (os_log_type_enabled(v7, isUniquelyReferenced_nonNull_native))
    {
      v73 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v150 = v4;
      *v73 = v108;
      v151[2] = v155;
      v151[3] = v156;
      v152 = v157;
      v151[0] = v153;
      v151[1] = v154;
      v74 = AggregationKeys.description.getter();
      v76 = sub_2486965C0(v74, v75, &v150);

      *(v73 + 4) = v76;
      _os_log_impl(&dword_24868B000, v7, isUniquelyReferenced_nonNull_native, "Updating key for %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v4);
      MEMORY[0x24C1D6650](v4, -1, -1);
      MEMORY[0x24C1D6650](v73, -1, -1);
    }

    (v111->isa)(v72, v126);
    a3 = v113;
    v39 = v135;
    v27 = v134;
    v77 = *v113;
    v13 = v142;
    if (*(*v113 + 16))
    {
      v78 = sub_2486A119C(&v153);
      if (v79)
      {
        v7 = *(*(v77 + 56) + 16 * v78);
        v10 = a3;
        v81 = sub_24869F930(v151, &v153);
        if ((*(v80 + 16) & 1) == 0)
        {
          if (v7 == -1)
          {
            goto LABEL_67;
          }

          *v80 = v7 + 1;
        }

        (v81)(v151, 0);

        sub_2486A3CDC(&v153);
        goto LABEL_18;
      }

      v82 = *a3;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = *a3;
    v10 = v150;
    v83 = sub_2486A119C(&v153);
    v85 = v10[2];
    v86 = (v84 & 1) == 0;
    v37 = __OFADD__(v85, v86);
    v87 = v85 + v86;
    if (v37)
    {
      goto LABEL_65;
    }

    v88 = v84;
    if (v10[3] >= v87)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v90 = v83;
        sub_2486A1F60();
        v83 = v90;
        v13 = v142;
      }
    }

    else
    {
      sub_2486A162C(v87, isUniquelyReferenced_nonNull_native);
      v83 = sub_2486A119C(&v153);
      if ((v88 & 1) != (v89 & 1))
      {
        goto LABEL_73;
      }
    }

    v10 = v150;
    if (v88)
    {
      *(v150[7] + 16 * v83) = v102;
    }

    else
    {
      sub_2486A51E4(v83, &v153, 1, 0, v150);
      sub_2486A3DF0(&v153, v151);
    }

    sub_2486A3CDC(&v153);
    *a3 = v10;
LABEL_18:
    v7 = v149;
    if (v149 == v27)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_73:
  result = sub_2486B57EC();
  __break(1u);
  return result;
}

unint64_t sub_24869F714(uint64_t a1, void (*a2)(unint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v17 = a2;
    v18 = a1;
    v19 = sub_2486B56BC();
    if (v19)
    {
      v20 = v19;
      v2 = sub_2486A102C(v19, 0);
      v17(v2 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v2 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v2 & 0x8000000000000000) == 0 && (v2 & 0x4000000000000000) == 0)
      {
        v3 = *(v2 + 16);
        v4 = v3 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_2486B56BC();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v3 = a1;
    v4 = a1 / 2;
LABEL_6:
    if (v3 + 1 < 3)
    {
      return v2;
    }

    v6 = -v4;
    v7 = 4;
    while (1)
    {
      v8 = v3 - (v7 - 3);
      if (__OFSUB__(v3, v7 - 3))
      {
        break;
      }

      a1 = v7 - 4;
      if (v7 - 4 != v8)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x24C1D5E60]();
          v11 = MEMORY[0x24C1D5E60](v3 - (v7 - 3), v2);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v9)
          {
            goto LABEL_32;
          }

          if (v8 >= v9)
          {
            goto LABEL_33;
          }

          v10 = *(v2 + 8 * v7);
          v11 = *(v2 + 8 * v8 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
        {
          v2 = sub_2486A2734(v2);
          v12 = (v2 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v2 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7);
        *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v7) = v11;

        if ((v2 & 0x8000000000000000) != 0 || v12)
        {
          a1 = sub_2486A2734(v2);
          v2 = a1;
          v13 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v8 >= *(v13 + 16))
        {
          goto LABEL_34;
        }

        v15 = v13 + 8 * v8;
        v16 = *(v15 + 32);
        *(v15 + 32) = v10;
      }

      ++v7;
      if (v6 + v7 == 4)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void (*sub_24869F930(uint64_t **a1, __int128 *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2486A23F0(v4, a2);
  return sub_24869F9A8;
}

void sub_24869F9A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_24869F9F4(unint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = v3;
  v127 = a3;
  v121 = sub_2486B4E9C();
  v7 = *(v121 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v121);
  v120 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_2486B4EAC();
  v10 = *(v119 - 8);
  v11 = *(v10 + 8);
  MEMORY[0x28223BE20](v119);
  v118 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_2486B4E7C();
  v13 = *(v117 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v117);
  v116 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA14F0, &qword_2486B6680);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA1898, &unk_2486B69E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v114 = &v82 - v21;
  v113 = type metadata accessor for DateAndLocalePair();
  v93 = *(v113 - 8);
  v22 = *(v93 + 64);
  MEMORY[0x28223BE20](v113);
  v90 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_2486B4DAC();
  isUniquelyReferenced_nonNull_native = *(v128 - 8);
  v25 = *(isUniquelyReferenced_nonNull_native + 64);
  v26 = MEMORY[0x28223BE20](v128);
  v112 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v82 - v29;
  MEMORY[0x28223BE20](v28);
  v89 = &v82 - v31;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_3:
    v126 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calendar;
    v86 = OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_calculationTasks;
    v111 = (v4 + OBJC_IVAR____TtC11DeepThought29SiriPenetrationRateCalculator_defaultLocale);
    v88 = a1 & 0xC000000000000001;
    v85 = a1 & 0xFFFFFFFFFFFFFF8;
    v84 = a1 + 32;
    v33 = (isUniquelyReferenced_nonNull_native + 8);
    v98 = 0x80000002486BBD60;
    v97 = 0x80000002486BBD80;
    v110 = (v93 + 56);
    v109 = *MEMORY[0x277CC9878];
    v108 = (v13 + 104);
    v107 = *MEMORY[0x277CC9900];
    v106 = (v10 + 104);
    v105 = *MEMORY[0x277CC98E8];
    v104 = (v7 + 104);
    v103 = (v7 + 8);
    v102 = (v10 + 8);
    v7 = 0;
    v101 = (v13 + 8);
    v100 = (isUniquelyReferenced_nonNull_native + 48);
    v96 = (isUniquelyReferenced_nonNull_native + 32);
    v92 = xmmword_2486B68C0;
    v124 = a2;
    v134 = v30;
    v87 = result;
    v99 = (isUniquelyReferenced_nonNull_native + 8);
    v123 = v4;
    v83 = a1;
    while (1)
    {
      if (v88)
      {
        v13 = MEMORY[0x24C1D5E60](v7, a1);
      }

      else
      {
        if (v7 >= *(v85 + 16))
        {
          goto LABEL_67;
        }

        v13 = *(v84 + 8 * v7);
      }

      isUniquelyReferenced_nonNull_native = v128;
      v34 = __OFADD__(v7++, 1);
      v91 = v7;
      v10 = v89;
      if (v34)
      {
        goto LABEL_64;
      }

      sub_2486B512C();
      sub_2486B4D5C();
      if ((_s11DeepThought10CustomDateO15isTodayOrFuture4date8calendarSb10Foundation0D0V_AG8CalendarVtFZ_0(v10, v4 + v126) & 1) == 0)
      {
        break;
      }

      (*v33)(v10, isUniquelyReferenced_nonNull_native);

LABEL_5:
      v7 = v91;
      if (v91 == v87)
      {
        return result;
      }
    }

    v125 = *(v4 + v86);
    if (!(v125 >> 62))
    {
      v7 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_14;
      }

      goto LABEL_58;
    }

    v7 = sub_2486B56BC();
    if (!v7)
    {
LABEL_58:

      v10 = *v33;
LABEL_59:
      result = (v10)(v89, isUniquelyReferenced_nonNull_native);
      goto LABEL_5;
    }

LABEL_14:
    v4 = 0;
    a1 = v125;
    v132 = v125 & 0xC000000000000001;
    v95 = v125 & 0xFFFFFFFFFFFFFF8;
    v94 = v125 + 32;
    v122 = v13;
    v131 = v7;
    while (1)
    {
      while (1)
      {
        if (v132)
        {
          v35 = MEMORY[0x24C1D5E60](v4, a1);
          v34 = __OFADD__(v4++, 1);
          if (v34)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v4 >= *(v95 + 16))
          {
            goto LABEL_61;
          }

          v35 = *(v94 + 8 * v4);

          v34 = __OFADD__(v4++, 1);
          if (v34)
          {
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
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            result = sub_2486B56BC();
            if (!result)
            {
              return result;
            }

            goto LABEL_3;
          }
        }

        sub_2486B512C();
        sub_2486B4D5C();
        v36 = *(v35 + 24);
        v37 = *(v35 + 16);
        if ((*(*(v35 + 32) + 8))(v13))
        {
          break;
        }

        v10 = *v33;
        (*v33)(v30, isUniquelyReferenced_nonNull_native);

LABEL_52:
        v7 = v131;
        if (v4 == v131)
        {
          goto LABEL_56;
        }
      }

      v39 = *v111;
      v38 = v111[1];
      a1 = a2[2];
      v130 = v37;
      if (!a1)
      {
        break;
      }

      v40 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      a2 = (a2 + v40);

      if (sub_2486B4D7C())
      {
        goto LABEL_34;
      }

      if (a1 != 1)
      {
        v133 = v38;
        v13 = *(v93 + 72);
        v30 = sub_2486A3D30();
        v10 = v124 + v13 + v40;
        v41 = 1;
        while (1)
        {
          v7 = isUniquelyReferenced_nonNull_native;
          if (sub_2486B541C())
          {
            break;
          }

          ++v41;
          v10 += v13;
          if (a1 == v41)
          {
            v41 = a1;
            break;
          }
        }

        if (v41 - 1 >= a1)
        {
          goto LABEL_65;
        }

        a2 = (a2 + v13 * (v41 - 1));
      }

      v42 = a2;
      v43 = v114;
      sub_2486A3BB8(v42, v114);
      v44 = v113;
      (*v110)(v43, 0, 1, v113);

      v45 = v43;
      v46 = v90;
      sub_2486A3C1C(v45, v90);
      v47 = (v46 + *(v44 + 20));
      v48 = v47[1];
      v129 = *v47;
      v133 = v48;

      sub_2486A3C80(v46);
LABEL_35:
      v50 = v116;
      v51 = v117;
      (*v108)(v116, v109, v117);
      v52 = v118;
      v53 = v119;
      (*v106)(v118, v107, v119);
      v54 = v120;
      v55 = v121;
      (*v104)(v120, v105, v121);
      v56 = v115;
      sub_2486B4EBC();
      (*v103)(v54, v55);
      (*v102)(v52, v53);
      (*v101)(v50, v51);
      isUniquelyReferenced_nonNull_native = v128;
      if ((*v100)(v56, 1, v128) == 1)
      {
        __break(1u);
LABEL_71:
        result = sub_2486B57EC();
        __break(1u);
        return result;
      }

      v57 = v112;
      (*v96)(v112, v56, isUniquelyReferenced_nonNull_native);
      sub_2486B4D6C();
      v59 = v58;
      v33 = v99;
      v10 = *v99;
      (*v99)(v57, isUniquelyReferenced_nonNull_native);
      LODWORD(v136) = 1;
      *(&v136 + 1) = v59;
      v30 = v134;
      *&v137 = v129;
      *(&v137 + 1) = v133;
      *&v138 = 0xD000000000000019;
      *(&v138 + 1) = v98;
      *&v139 = 0xD000000000000017;
      *(&v139 + 1) = v97;
      v140 = v130;
      a2 = v127;
      v60 = *v127;
      v13 = v122;
      a1 = v125;
      if (!*(*v127 + 16))
      {
        goto LABEL_41;
      }

      v61 = sub_2486A119C(&v136);
      if ((v62 & 1) == 0)
      {
        v65 = *a2;
LABEL_41:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = *a2;
        v7 = v135;
        v66 = sub_2486A119C(&v136);
        v68 = *(v7 + 16);
        v69 = (v67 & 1) == 0;
        v34 = __OFADD__(v68, v69);
        v70 = v68 + v69;
        if (v34)
        {
          goto LABEL_62;
        }

        v71 = v67;
        if (*(v7 + 24) >= v70)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = &v135;
            v81 = v66;
            sub_2486A1F60();
            v66 = v81;
            v13 = v122;
          }
        }

        else
        {
          sub_2486A162C(v70, isUniquelyReferenced_nonNull_native);
          v7 = v135;
          v66 = sub_2486A119C(&v136);
          if ((v71 & 1) != (v72 & 1))
          {
            goto LABEL_71;
          }
        }

        isUniquelyReferenced_nonNull_native = v128;
        if (v71)
        {
          v73 = v66;
          sub_2486A3CDC(&v136);
          v74 = v135;
          *(v135[7] + 16 * v73) = v92;

          (v10)(v30, isUniquelyReferenced_nonNull_native);
          *v127 = v74;
        }

        else
        {
          a2 = v135;
          v135[(v66 >> 6) + 8] |= 1 << v66;
          v75 = &a2[6][9 * v66];
          *v75 = v136;
          v76 = v137;
          v77 = v138;
          v78 = v139;
          *(v75 + 64) = v140;
          *(v75 + 32) = v77;
          *(v75 + 48) = v78;
          *(v75 + 16) = v76;
          *&a2[7][2 * v66] = v92;

          (v10)(v30, isUniquelyReferenced_nonNull_native);
          v79 = a2[2];
          v34 = __OFADD__(v79, 1);
          v80 = v79 + 1;
          if (v34)
          {
            goto LABEL_63;
          }

          a2[2] = v80;
          *v127 = a2;
        }

LABEL_51:
        a2 = v124;
        goto LABEL_52;
      }

      a2 = *(*(v60 + 56) + 16 * v61 + 12);
      v64 = sub_24869F930(&v135, &v136);
      if (*(v63 + 16))
      {
        (v64)(&v135, 0);
        sub_2486A3CDC(&v136);

        (v10)(v30, isUniquelyReferenced_nonNull_native);
        goto LABEL_51;
      }

      v7 = v131;
      if (a2 == -1)
      {
        goto LABEL_66;
      }

      *(v63 + 12) = a2 + 1;
      (v64)(&v135, 0);
      sub_2486A3CDC(&v136);

      (v10)(v30, isUniquelyReferenced_nonNull_native);
      a2 = v124;
      if (v4 == v7)
      {
LABEL_56:

        a1 = v83;
        v4 = v123;
        goto LABEL_59;
      }
    }

LABEL_34:
    v129 = v39;
    v133 = v38;
    v49 = v114;
    (*v110)(v114, 1, 1, v113);
    sub_2486A3D88(v49);
    goto LABEL_35;
  }

  return result;
}
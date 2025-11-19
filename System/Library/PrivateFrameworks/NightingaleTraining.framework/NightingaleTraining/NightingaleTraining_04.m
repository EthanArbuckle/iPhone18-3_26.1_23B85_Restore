NightingaleTraining::PerSliceMetrics __swiftcall PerSliceMetrics.init(abserr:coverage:width:uxOverall:)(Swift::Int abserr, Swift::Bool coverage, Swift::Int width, Swift::Int uxOverall)
{
  v4 = coverage;
  result.uxOverall = uxOverall;
  result.width = width;
  result.abserr = abserr;
  result.coverage = v4;
  return result;
}

uint64_t EvalMetricsProcessor.process(labels:outputs:modelMaxNumDaysToNextPeriod:labelEncodingType:intervalCorrectionFactor:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v30 = *a2;

  v31 = MEMORY[0x25F8895B0](v30, MEMORY[0x277D83A90]);

  v33 = *a1;

  v34 = MEMORY[0x25F8895B0](v33, MEMORY[0x277D84CC0]);

  if (!v34)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v31 == 0x8000000000000000 && v34 == -1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v20 = v31 / v34;
  v6 = HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();
  v21 = *v6;
  v22 = *(v6 + 1);

  v23 = MEMORY[0x25F889340](a4, a5, v21, v22);

  if ((v23 & 1) != 0 && v20 == 2)
  {
    v17 = *a1;

    v18 = MEMORY[0x25F8895B0](v17, MEMORY[0x277D84CC0]);

    return EvalMetricsProcessor.processModelOutput2(numLabels:outputs:modelMaxNumDaysToNextPeriod:)(v18);
  }

  v7 = HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();
  v14 = *v7;
  v15 = *(v7 + 1);

  v16 = MEMORY[0x25F889340](a4, a5, v14, v15);

  if ((v16 & 1) != 0 && v20 == 32)
  {
    v12 = *a1;

    v13 = MEMORY[0x25F8895B0](v12, MEMORY[0x277D84CC0]);

    EvalMetricsProcessor.processModelOutput32(numLabels:outputs:modelMaxNumDaysToNextPeriod:intervalCorrectionFactor:minLowRangeStart:)(v13, a2, a3, a6, 1.0);
    if (!v29)
    {
      return v8;
    }
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v9 = 27;
    swift_willThrow();
  }

  return v11;
}

uint64_t EvalMetricsProcessor.processModelOutput2(numLabels:outputs:modelMaxNumDaysToNextPeriod:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtMd);
  v6 = Array.init()();
  if (a1 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    result = IndexingIterator.next()();
    if (v5)
    {

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return v6;
    }

    if ((2 * v4) >> 64 != (2 * v4) >> 63)
    {
      break;
    }

    if (__OFADD__(1, 2 * v4))
    {
      goto LABEL_14;
    }

    result = Array.subscript.getter();
    if ((2 * v4) >> 64 != (2 * v4) >> 63)
    {
      goto LABEL_15;
    }

    Array.subscript.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMd);
    Array.append(_:)();
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void EvalMetricsProcessor.processModelOutput32(numLabels:outputs:modelMaxNumDaysToNextPeriod:intervalCorrectionFactor:minLowRangeStart:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v147 = &v177;
  v148 = a1;
  v130 = a2;
  v127 = a3;
  v128 = a4;
  v129 = a5;
  v120 = "Fatal error";
  v121 = "Range requires lowerBound <= upperBound";
  v122 = "Swift/Range.swift";
  v123 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v124 = "Swift/IntegerTypes.swift";
  v125 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v126 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v189 = 0;
  v188 = 0;
  v187 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v179[1] = 0;
  v179[0] = 0;
  v177 = 0;
  v175 = 0.0;
  v173 = 0.0;
  v171 = 0.0;
  v169 = 0.0;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  v162 = 0;
  v161 = 0.0;
  v160 = 0;
  v159 = 0;
  v156 = 0.0;
  v155 = 0.0;
  v154 = 0.0;
  v153 = 0;
  v152 = 0.0;
  v151 = 0.0;
  v150 = 0.0;
  v131 = type metadata accessor for FloatingPointRoundingRule();
  v132 = *(v131 - 8);
  v133 = v131 - 8;
  v143 = *(v132 + 64);
  v134 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v148);
  v135 = v40 - v134;
  v136 = v134;
  v6 = MEMORY[0x28223BE20](v5);
  v137 = v40 - v136;
  v138 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v6);
  v139 = v40 - v138;
  v140 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](v7);
  v141 = v40 - v140;
  v142 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v8);
  v144 = v40 - v142;
  v145 = (v143 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x28223BE20](v9);
  v146 = v40 - v145;
  *(v11 + 152) = v10;
  *(v11 + 144) = v12;
  v187 = v13;
  v186 = v14;
  v185 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtMd);
  v16 = Array.init()();
  v17 = v148;
  v147[14] = v16;
  if (v17 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v18 = v148;
  v19 = v147;
  v147[9] = 0;
  v19[10] = v18;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  for (i = v119; ; i = v106)
  {
    v115 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    IndexingIterator.next()();
    v116 = v147[7];
    if (v180)
    {
      v40[2] = &v184;
      v40[3] = v147[14];

      outlined destroy of [(start: UInt32, end: UInt32)]();
      return;
    }

    v114 = v116;
    v20 = v116;
    v112 = v116;
    v147[6] = v116;
    v113 = 32 * v20;
    if ((v20 * 32) >> 64 != (32 * v20) >> 63)
    {
      break;
    }

    v111 = v112 + 1;
    if (__OFADD__(v112, 1))
    {
      goto LABEL_141;
    }

    v110 = 32 * v111;
    if ((v111 * 32) >> 64 != (32 * v111) >> 63)
    {
      goto LABEL_142;
    }

    if (v110 < v113)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v103 = MEMORY[0x277D83A90];
    v22 = Array.subscript.getter();
    v23 = v147;
    v102 = &v178;
    v147[1] = v22;
    v23[2] = v24;
    v23[3] = v25;
    v23[4] = v26;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySfGMd);
    lazy protocol witness table accessor for type ArraySlice<Float> and conformance ArraySlice<A>();
    v27 = Array.init<A>(_:)();
    v104 = v179;
    v147[5] = v27;
    v28 = _allocateUninitializedArray<A>(_:)();
    *v29 = 1036831949;
    v29[1] = 1045220557;
    v29[2] = 1061997773;
    v29[3] = 1063675494;
    _finalizeUninitializedArray<A>(_:)();
    v30 = v115;
    v105 = v28;
    v31 = static EvalMetricsProcessor.argQuantile(softmax:quantiles:)();
    v106 = v30;
    v107 = v31;
    v108 = v105;
    v109 = v30;
    if (v30)
    {
      v40[1] = v109;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      return;
    }

    v87 = v107;

    *v147 = v87;
    v88 = MEMORY[0x277D83A90];
    Array.subscript.getter();
    v86 = v176;
    v175 = v176;
    Array.subscript.getter();
    v90 = v174;
    v173 = v174;
    Array.subscript.getter();
    v89 = v172;
    v171 = v172;
    Array.subscript.getter();
    v91 = v170;
    v169 = v170;
    v94 = (v90 + v89) / 2.0;
    v99 = MEMORY[0x277D84678];
    v32 = *MEMORY[0x277D84678];
    v92 = *(v132 + 104);
    v93 = v132 + 104;
    v92(v146, v32, v131);
    v168 = v94;
    v95 = *(v132 + 16);
    v96 = v132 + 16;
    v95(v144, v146, v131);
    v97 = *(v132 + 88);
    v98 = v132 + 88;
    v100 = v97(v144, v131);
    if (v100 == *v99)
    {
      v168 = roundf(v94);
    }

    else if (v100 == *MEMORY[0x277D84670])
    {
      v168 = rintf(v94);
    }

    else
    {
      if (v100 == *MEMORY[0x277D84680])
      {
        goto LABEL_25;
      }

      if (v100 == *MEMORY[0x277D84688])
      {
        goto LABEL_27;
      }

      if (v100 == *MEMORY[0x277D84660])
      {
        v168 = truncf(v94);
      }

      else
      {
        if (v100 == *MEMORY[0x277D84668])
        {
          if ((Float.sign.getter() & 1) == 1)
          {
LABEL_27:
            v168 = floorf(v94);
            goto LABEL_28;
          }

LABEL_25:
          v168 = ceilf(v94);
          goto LABEL_28;
        }

        Float._roundSlowPath(_:)();
        (*(v132 + 8))(v144, v131);
      }
    }

LABEL_28:
    v83 = *(v132 + 8);
    v84 = v132 + 8;
    v83(v146, v131);
    v85 = v168;
    if ((LODWORD(v168) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v85 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v85 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v82 = v85;
    v167 = v85;
    if ((LODWORD(v86) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v86 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v86 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v81 = v86;
    v166 = v86;
    if ((LODWORD(v91) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v91 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v91 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v79 = v91;
    v165 = v91;
    v80 = v82 - v81;
    if (__OFSUB__(v82, v81))
    {
      goto LABEL_143;
    }

    v164 = v80;
    v78 = v79 - v82;
    if (__OFSUB__(v79, v82))
    {
      goto LABEL_144;
    }

    v163 = v78;
    v77 = v79 - v81;
    if (__OFSUB__(v79, v81))
    {
      goto LABEL_145;
    }

    v162 = v77;
    v76 = v77 * v128;
    v161 = v76;
    v160 = 0;
    v159 = 0;
    if (!v77)
    {
      v160 = v80;
      v159 = v78;
      v74 = v78;
      v75 = v80;
      goto LABEL_104;
    }

    v71 = v76 * (v80 / v77);
    v72 = MEMORY[0x277D84678];
    v92(v141, *MEMORY[0x277D84678], v131);
    v158 = v71;
    v95(v139, v141, v131);
    v73 = v97(v139, v131);
    if (v73 == *v72)
    {
      v158 = roundf(v71);
      goto LABEL_75;
    }

    if (v73 == *MEMORY[0x277D84670])
    {
      v158 = rintf(v71);
      goto LABEL_75;
    }

    if (v73 == *MEMORY[0x277D84680])
    {
      goto LABEL_72;
    }

    if (v73 == *MEMORY[0x277D84688])
    {
      goto LABEL_74;
    }

    if (v73 == *MEMORY[0x277D84660])
    {
      v158 = truncf(v71);
      goto LABEL_75;
    }

    if (v73 != *MEMORY[0x277D84668])
    {
      Float._roundSlowPath(_:)();
      v83(v139, v131);
      goto LABEL_75;
    }

    if ((Float.sign.getter() & 1) == 1)
    {
LABEL_74:
      v158 = floorf(v71);
    }

    else
    {
LABEL_72:
      v158 = ceilf(v71);
    }

LABEL_75:
    v83(v141, v131);
    v70 = v158;
    if ((LODWORD(v158) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v70 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v70 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v66 = v70;
    v160 = v70;
    v67 = v76 * (v78 / v77);
    v68 = MEMORY[0x277D84678];
    v92(v137, *MEMORY[0x277D84678], v131);
    v157 = v67;
    v95(v135, v137, v131);
    v69 = v97(v135, v131);
    if (v69 == *v68)
    {
      v157 = roundf(v67);
    }

    else if (v69 == *MEMORY[0x277D84670])
    {
      v157 = rintf(v67);
    }

    else
    {
      if (v69 == *MEMORY[0x277D84680])
      {
        goto LABEL_93;
      }

      if (v69 == *MEMORY[0x277D84688])
      {
        goto LABEL_95;
      }

      if (v69 == *MEMORY[0x277D84660])
      {
        v157 = truncf(v67);
      }

      else
      {
        if (v69 == *MEMORY[0x277D84668])
        {
          if ((Float.sign.getter() & 1) == 1)
          {
LABEL_95:
            v157 = floorf(v67);
            goto LABEL_96;
          }

LABEL_93:
          v157 = ceilf(v67);
          goto LABEL_96;
        }

        Float._roundSlowPath(_:)();
        v83(v135, v131);
      }
    }

LABEL_96:
    v83(v137, v131);
    v65 = v157;
    if ((LODWORD(v157) >> 23) == 255)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v65 <= -9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (v65 >= 9.2234e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v159 = v65;
    v74 = v65;
    v75 = v66;
LABEL_104:
    v62 = v75;
    v63 = v74;
    v64 = v82 - v75;
    if (__OFSUB__(v82, v75))
    {
      goto LABEL_146;
    }

    v60 = v64;
    v156 = v64;
    v61 = v82 + v63;
    if (__OFADD__(v82, v63))
    {
      goto LABEL_147;
    }

    v58 = v61;
    v155 = v61;
    v59 = Float.init(_:)((v61 - v60) + 1.0);
    v154 = v59;
    v153 = 0;
    if (v62 <= 6)
    {
      v55 = v62;
      v56 = 0;
      v57 = v59;
    }

    else
    {
      if (v59 <= 13.0)
      {
        v55 = v62;
        v56 = 0;
      }

      else
      {
        v160 = 6;
        v153 = 1;
        v55 = 6;
        v56 = 1;
      }

      v57 = v59;
    }

    v52 = v57;
    v53 = v56;
    v54 = v55;
    if (v63 <= 6)
    {
      v50 = v63;
      v51 = v53;
    }

    else if (v52 <= 13.0)
    {
      v50 = v63;
      v51 = v53;
    }

    else
    {
      v159 = 6;
      v153 = 1;
      v50 = 6;
      v51 = 1;
    }

    v49 = v50;
    if (v51)
    {
      v48 = v82 - v54;
      if (__OFSUB__(v82, v54))
      {
        goto LABEL_148;
      }

      v46 = v48;
      v156 = v48;
      v47 = v82 + v49;
      if (__OFADD__(v82, v49))
      {
        goto LABEL_149;
      }

      v155 = v47;
      v154 = (v47 - v46) + 1.0;
      v44 = v47;
      v45 = v46;
    }

    else
    {
      v44 = v58;
      v45 = v60;
    }

    v42 = v45;
    v43 = v44;
    if (v45 >= v129)
    {
      v41 = v42;
    }

    else
    {
      v156 = v129;
      v41 = v129;
    }

    v152 = v82 - 1.0;
    v151 = v41;
    v150 = v43;
    v40[4] = v149;
    v149[0] = v152;
    v149[1] = v41;
    v149[2] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMd);
    Array.append(_:)();

    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
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

void __swiftcall EvalMetricsProcessor.calculateMetrics(labels:outputs:)(Swift::tuple_perSliceMetrics_OpaquePointer_aggMetrics_NightingaleTraining_AggMetrics *__return_ptr retstr, Swift::OpaquePointer *labels, Swift::OpaquePointer outputs)
{
  v31 = 0;
  v33[25] = labels;
  v33[24] = outputs._rawValue;
  rawValue = labels->_rawValue;

  v33[21] = rawValue;
  v33[20] = outputs._rawValue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt32VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySf12darkRedStart_Sf08lowRangeC0Sf0dE3EndtGMd);
  lazy protocol witness table accessor for type [UInt32] and conformance [A]();
  lazy protocol witness table accessor for type [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)] and conformance [A]();
  zip<A, B>(_:_:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v33[18] = v33[22];
  v33[19] = v33[23];
  v29 = partial apply for closure #1 in EvalMetricsProcessor.calculateMetrics(labels:outputs:);
  v30 = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12Zip2SequenceVySays6UInt32VGSaySf12darkRedStart_Sf08lowRangeF0Sf0gH3EndtGGMd);
  v3 = lazy protocol witness table accessor for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>();
  from = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float, @unowned Float) -> (@unowned PerSliceMetrics), v28, v26, &type metadata for PerSliceMetrics, MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v27);
  outlined destroy of Zip2Sequence<[Float], [Float]>();
  v31 = from;

  AggMetrics.init(from:)(&v34, from);
  memcpy(__dst, &v34, sizeof(__dst));
  memcpy(v33, __dst, 0x90uLL);
  v4 = *v33;
  v5 = v33[1];
  v6 = *&v33[2];
  v7 = v33[3];
  v8 = v33[4];
  v9 = *&v33[5];
  v10 = v33[6];
  v11 = v33[7];
  v12 = *&v33[8];
  v13 = v33[9];
  v14 = v33[10];
  v15 = *&v33[11];
  v16 = v33[12];
  v17 = *&v33[13];
  v18 = v33[14];
  v19 = *&v33[15];
  v20 = v33[16];
  v21 = v33[17];
  retstr->perSliceMetrics._rawValue = from;
  retstr->aggMetrics.ep3 = v4;
  retstr->aggMetrics.ep3Num = v5;
  retstr->aggMetrics.nep6 = v6;
  retstr->aggMetrics.nep6Num = v7;
  *&retstr->aggMetrics.mae = v8;
  retstr->aggMetrics.coverage = v9;
  retstr->aggMetrics.coverageNum = v10;
  *&retstr->aggMetrics.meanWidth = v11;
  retstr->aggMetrics.uxWidthTolerable = v12;
  retstr->aggMetrics.uxWidthTolerableNum = v13;
  *&retstr->aggMetrics.uxOverallMean = v14;
  retstr->aggMetrics.uxOverallGood = v15;
  retstr->aggMetrics.uxOverallGoodNum = v16;
  retstr->aggMetrics.uxOverallOk = v17;
  retstr->aggMetrics.uxOverallOkNum = v18;
  retstr->aggMetrics.uxOverallTolerable = v19;
  retstr->aggMetrics.uxOverallTolerableNum = v20;
  retstr->aggMetrics.nSlices = v21;
}

uint64_t closure #1 in EvalMetricsProcessor.calculateMetrics(labels:outputs:)(unsigned int a1, float a2, float a3, float a4)
{
  v49 = a1;
  v53 = a2;
  v36 = a3;
  v37 = a4;
  v31 = "Fatal error";
  v32 = "Float value cannot be converted to Int because it is either infinite or NaN";
  v33 = "Swift/IntegerTypes.swift";
  v34 = "Float value cannot be converted to Int because the result would be less than Int.min";
  v35 = "Float value cannot be converted to Int because the result would be greater than Int.max";
  v81 = 0;
  v79 = 0;
  v80 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v71 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v59 = type metadata accessor for FloatingPointRoundingRule();
  v57 = *(v59 - 8);
  v58 = v59 - 8;
  v47 = *(v57 + 64);
  v38 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59);
  v39 = &v12 - v38;
  v40 = v38;
  MEMORY[0x28223BE20](&v12 - v38);
  v41 = &v12 - v40;
  v42 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v40);
  v43 = &v12 - v42;
  v44 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v42);
  v45 = &v12 - v44;
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v44);
  v60 = &v12 - v46;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v12 - v46);
  v54 = &v12 - v48;
  v81 = v49;
  v79 = __PAIR64__(v5, v4);
  v80 = v6;
  v50 = v49;
  v78 = v49;
  v77 = v4;
  v76 = v5;
  v75 = v6;
  v63 = MEMORY[0x277D84678];
  v51 = *(v57 + 104);
  v52 = v57 + 104;
  v51();
  v74 = v53;
  v55 = *(v57 + 16);
  v56 = v57 + 16;
  v55(v60, v54, v59);
  v61 = *(v57 + 88);
  v62 = v57 + 88;
  v64 = v61(v60, v59);
  if (v64 == *v63)
  {
    v74 = roundf(v53);
    goto LABEL_15;
  }

  if (v64 == *MEMORY[0x277D84670])
  {
    v74 = rintf(v53);
    goto LABEL_15;
  }

  if (v64 == *MEMORY[0x277D84680])
  {
    goto LABEL_12;
  }

  if (v64 == *MEMORY[0x277D84688])
  {
    goto LABEL_14;
  }

  if (v64 == *MEMORY[0x277D84660])
  {
    v74 = truncf(v53);
    goto LABEL_15;
  }

  if (v64 != *MEMORY[0x277D84668])
  {
    Float._roundSlowPath(_:)();
    (*(v57 + 8))(v60, v59);
    goto LABEL_15;
  }

  if ((Float.sign.getter() & 1) == 1)
  {
LABEL_14:
    v74 = floorf(v53);
  }

  else
  {
LABEL_12:
    v74 = ceilf(v53);
  }

LABEL_15:
  v28 = *(v57 + 8);
  v29 = v57 + 8;
  v28(v54, v59);
  v30 = v74;
  if ((LODWORD(v74) >> 23) == 255)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v30 <= -9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v30 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v25 = v30;
  v73 = v30;
  v26 = MEMORY[0x277D84678];
  (v51)(v45, *MEMORY[0x277D84678], v59);
  v72 = v36;
  v55(v43, v45, v59);
  v27 = v61(v43, v59);
  if (v27 == *v26)
  {
    v72 = roundf(v36);
    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x277D84670])
  {
    v72 = rintf(v36);
    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x277D84680])
  {
LABEL_33:
    v72 = ceilf(v36);
    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x277D84688])
  {
LABEL_35:
    v72 = floorf(v36);
    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x277D84660])
  {
    v72 = truncf(v36);
    goto LABEL_36;
  }

  if (v27 == *MEMORY[0x277D84668])
  {
    if ((Float.sign.getter() & 1) != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  Float._roundSlowPath(_:)();
  v28(v43, v59);
LABEL_36:
  v28(v45, v59);
  v24 = v72;
  if ((LODWORD(v72) >> 23) == 255)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v24 <= -9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v24 >= 9.2234e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v21 = v24;
  v71 = v24;
  v22 = MEMORY[0x277D84678];
  (v51)(v41, *MEMORY[0x277D84678], v59);
  v70 = v37;
  v55(v39, v41, v59);
  v23 = v61(v39, v59);
  if (v23 == *v22)
  {
    v70 = roundf(v37);
    goto LABEL_57;
  }

  if (v23 == *MEMORY[0x277D84670])
  {
    v70 = rintf(v37);
    goto LABEL_57;
  }

  if (v23 == *MEMORY[0x277D84680])
  {
    goto LABEL_54;
  }

  if (v23 == *MEMORY[0x277D84688])
  {
    goto LABEL_56;
  }

  if (v23 == *MEMORY[0x277D84660])
  {
    v70 = truncf(v37);
    goto LABEL_57;
  }

  if (v23 != *MEMORY[0x277D84668])
  {
    Float._roundSlowPath(_:)();
    v28(v39, v59);
    goto LABEL_57;
  }

  if ((Float.sign.getter() & 1) == 1)
  {
LABEL_56:
    v70 = floorf(v37);
  }

  else
  {
LABEL_54:
    v70 = ceilf(v37);
  }

LABEL_57:
  result = (v28)(v41, v59);
  v20 = v70;
  if ((LODWORD(v70) >> 23) == 255)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v20 <= -9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v20 >= 9.2234e18)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v19 = v20;
  v69 = v20;
  v18 = v50 >= v21 && v19 >= v50;
  v16 = v18;
  v68 = v18;
  v17 = v19 - v21;
  if (__OFSUB__(v19, v21))
  {
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v15 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_81;
  }

  v67 = v15;
  v14 = v25 - v50;
  if (!__OFSUB__(v25, v50))
  {
    v65 = v14;
    abs<A>(_:)();
    v13 = v66;
    v11 = EvalMetricsProcessor.calculateUXOverall(coverage:width:)(v16, v15);
    return PerSliceMetrics.init(abserr:coverage:width:uxOverall:)(v13, v16, v15, v11);
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t EvalMetricsProcessor.calculateUXOverall(coverage:width:)(char a1, uint64_t a2)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2 <= 5)
  {
    return 4;
  }

  if (a2 <= 7)
  {
    return 3;
  }

  if (a2 > 9)
  {
    return a2 <= 13;
  }

  return 2;
}

uint64_t thunk for @callee_guaranteed (@unowned UInt32, @unowned Float, @unowned Float, @unowned Float) -> (@unowned PerSliceMetrics)@<X0>(float *a1@<X0>, uint64_t (*a2)(void, float, float, float)@<X1>, uint64_t a3@<X8>)
{
  result = a2(*a1, a1[1], a1[2], a1[3]);
  *a3 = result;
  *(a3 + 8) = v4 & 1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

uint64_t static EvalMetricsProcessor.argQuantile(softmax:quantiles:)()
{

  static PFLStats.cumsum(vector:)();

  v5 = Array.init()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  lazy protocol witness table accessor for type [Float] and conformance [A]();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySfGGMd);
    IndexingIterator.next()();
    if (v4)
    {
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      return v5;
    }

    static PFLStats.less<A>(vector:value:)();
    result = Array<A>.sum.getter();
    if (!result)
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 28;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();

      return v3;
    }

    if (__OFSUB__(result, 1))
    {
      break;
    }

    Array.subscript.getter();
    Array.subscript.getter();
    Array.subscript.getter();
    Array.append(_:)();
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>()
{
  v2 = lazy protocol witness table cache variable for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>;
  if (!lazy protocol witness table cache variable for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss12Zip2SequenceVySays6UInt32VGSaySf12darkRedStart_Sf08lowRangeF0Sf0gH3EndtGGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Zip2Sequence<[UInt32], [(darkRedStart: Float, lowRangeStart: Float, lowRangeEnd: Float)]> and conformance Zip2Sequence<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for AggMetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 144))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void *storeEnumTagSinglePayload for AggMetrics(void *result, int a2, int a3)
{
  v3 = result + 18;
  if (a2)
  {
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = (a2 - 1);
    result[17] = 0;
    result[16] = 0;
    if (a3)
    {
      *v3 = 1;
    }
  }

  else if (a3)
  {
    *v3 = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PerSliceMetrics(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFE && *(a1 + 32))
    {
      v5 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = -1;
      if ((v3 & 0xFFFFFFFE) != 0)
      {
        v4 = v3 & 1 | ((v3 & 0xFE) - 2) & 0x7FFFFFFF;
      }

      v5 = v4;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PerSliceMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t PFLTask.taskId.getter()
{
  v7 = v0;
  dispatch thunk of PFLTask.recipe.getter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("id", 2uLL, 1);
  MEMORY[0x25F8891D0](v5);
  outlined destroy of DefaultStringInterpolation();

  if (v5[3])
  {
    if (swift_dynamicCast())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }

    v2 = v3;
  }

  else
  {
    outlined destroy of Pregnancy?(v5);
    v2 = 0;
  }

  if (v2._object)
  {
    v6 = v2;
  }

  else
  {
    v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  }

  return v6._countAndFlagsBits;
}

Swift::Double __swiftcall PFLTask.iterationElapsedTime()()
{
  v32 = 0;
  v29 = 0.0;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v23 = &v5 - v22;
  v32 = v0;
  v27 = dispatch thunk of PFLTask.recipe.getter();
  started = HyperParams.keyIterationStartTime.unsafeMutableAddressor();
  v24 = *started;
  v25 = *(started + 1);

  v26 = v30;
  v30[0] = v24;
  v30[1] = v25;
  MEMORY[0x25F8891D0](v31);
  outlined destroy of DefaultStringInterpolation();

  if (v31[3])
  {
    type metadata accessor for NSNumber();
    if (swift_dynamicCast())
    {
      v18 = v28;
    }

    else
    {
      v18 = 0;
    }

    v17 = v18;
  }

  else
  {
    outlined destroy of Pregnancy?(v31);
    v17 = 0;
  }

  v16 = v17;
  if (v17)
  {
    v15 = v16;
    v11 = v16;
    [v16 doubleValue];
    v12 = v2;
    MEMORY[0x277D82BD8](v11);
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v13 = 0.0;
    v14 = 1;
  }

  v10 = v13;
  if (v14)
  {
    return 0.0;
  }

  v9 = v10;
  v6 = v10;
  v29 = v10;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v3;
  (*(v20 + 8))(v23, v19);
  return v7 - v6;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PFLTask.getValidModelPath(modelFileSuffix:)(Swift::String modelFileSuffix)
{
  countAndFlagsBits = modelFileSuffix._countAndFlagsBits;
  object = modelFileSuffix._object;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v49 = 0;
  v37 = 0;
  v2 = type metadata accessor for URL.DirectoryHint();
  v35 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v36 = v15 - v35;
  v38 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37);
  v39 = v15 - v38;
  v42 = type metadata accessor for URL();
  v43 = *(v42 - 8);
  v44 = v42 - 8;
  v45 = (*(v43 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](countAndFlagsBits);
  v46 = v15 - v45;
  v56 = v3;
  v57 = v4;
  v55 = v1;
  v47 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v48 = v5;
  if (!v5)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v19 = swift_allocError();
    *v11 = 9;
    swift_willThrow();
    v20 = v19;
LABEL_6:
    v10 = v18;
    v9 = v15[1];
    goto LABEL_7;
  }

  v32 = v47;
  v33 = v48;
  v24 = v48;
  v21 = v47;
  v53 = v47;
  v54 = v48;

  v22 = MEMORY[0x25F8892C0](v21, v24);
  v23 = [v22 stringByDeletingLastPathComponent];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v6;
  v51 = v26;
  v52 = v6;
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);

  v25 = 0;
  type metadata accessor for MLModelConfiguration();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v50 = isa;
  [(objc_class *)isa setComputeUnits:v25];
  type metadata accessor for MLModel();

  (*(v43 + 56))(v39, 1, 1, v42);
  default argument 1 of URL.init(filePath:directoryHint:relativeTo:)(v36);
  URL.init(filePath:directoryHint:relativeTo:)();
  MEMORY[0x277D82BE0](isa);
  v7 = v34;
  v8 = @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(v46, isa);
  v29 = v7;
  v30 = v8;
  v31 = v7;
  if (v7)
  {
    v16 = v31;
    MEMORY[0x277D82BD8](isa);
    v12 = v16;
    v49 = v16;
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v17 = swift_allocError();
    *v13 = 31;
    swift_willThrow();

    v20 = v17;
    goto LABEL_6;
  }

  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](isa);

  v9 = v26;
  v10 = v27;
LABEL_7:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t PFLTask.trainingModelPath(taskType:hyperParams:)()
{
  lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if (== infix<A>(_:_:)())
  {
    v9 = 1;
  }

  else
  {
    v9 = == infix<A>(_:_:)();
  }

  if (v9)
  {
    v8 = 1;
  }

  else
  {
    v8 = == infix<A>(_:_:)();
  }

  if (v8)
  {
    v7 = 1;
  }

  else
  {
    v7 = == infix<A>(_:_:)();
  }

  if ((v7 & 1) == 0)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  }

  HyperParams.modelName.getter();
  v5 = dispatch thunk of PFLTask.attachmentPath(name:)();
  v6 = v0;

  if (!v6)
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v1 = 9;
    swift_willThrow();
    return v3;
  }

  return v5;
}

uint64_t PFLTask.evalModelNames(taskType:hyperParams:)()
{
  lazy protocol witness table accessor for type NightingalePFLTaskType and conformance NightingalePFLTaskType();
  if ((== infix<A>(_:_:)() & 1) == 0)
  {
    return _allocateUninitializedArray<A>(_:)();
  }

  v4 = HyperParams.evalModels.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  if (Collection.isEmpty.getter())
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v0 = 9;
    swift_willThrow();

    return v2;
  }

  return v4;
}

Swift::String_optional __swiftcall PFLTask.evalModelPath(path:)(Swift::String path)
{
  v1 = dispatch thunk of PFLTask.attachmentPath(name:)();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t ReachLocation.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unknown", 7uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStarted", 0xDuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CTEnrolled", 0xAuLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSamplesCompleted", 0x13uLL, 1)._countAndFlagsBits;
    case 4:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CalPredCompleted", 0x10uLL, 1)._countAndFlagsBits;
    case 5:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SHRCompleted", 0xCuLL, 1)._countAndFlagsBits;
    case 6:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ShadowEvaluationCompleted", 0x19uLL, 1)._countAndFlagsBits;
    case 7:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeaturizationCompleted", 0x16uLL, 1)._countAndFlagsBits;
    case 8:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginCompleted", 0xFuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginStopped", 0xDuLL, 1)._countAndFlagsBits;
  }
}

NightingaleTraining::ReachLocation_optional __swiftcall ReachLocation.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 3:
      return 2;
    case 5:
      return 3;
    case 6:
      return 4;
    case 7:
      return 5;
    case 8:
      return 6;
    case 9:
      return 7;
    case 10:
      return 8;
    case 11:
      return 9;
  }

  return 10;
}

uint64_t ReachLocation.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 3;
    case 3:
      return 5;
    case 4:
      return 6;
    case 5:
      return 7;
    case 6:
      return 8;
    case 7:
      return 9;
    case 8:
      return 10;
  }

  return 11;
}

NightingaleTraining::ReachLocation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ReachLocation@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::ReachLocation_optional *a2@<X8>)
{
  result.value = ReachLocation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ReachLocation@<X0>(uint64_t *a1@<X8>)
{
  result = ReachLocation.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t PFLTask.modelType.getter()
{
  HyperParams.keyLSTMModelType.unsafeMutableAddressor();

  NightingalePFLModelType.rawValue.getter(1);
  dispatch thunk of PFLTask.parameter<A>(for:default:)();

  v2.value = NightingalePFLModelType.init(rawValue:)(v3).value;
  if (v2.value == NightingaleTraining_NightingalePFLModelType_unknownDefault)
  {
    return 1;
  }

  else
  {
    return v2.value;
  }
}

unint64_t type metadata accessor for MLModelConfiguration()
{
  v2 = lazy cache variable for type metadata for MLModelConfiguration;
  if (!lazy cache variable for type metadata for MLModelConfiguration)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for MLModelConfiguration);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for MLModel()
{
  v2 = lazy cache variable for type metadata for MLModel;
  if (!lazy cache variable for type metadata for MLModel)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for MLModel);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t default argument 1 of URL.init(filePath:directoryHint:relativeTo:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277CC91D8];
  v1 = type metadata accessor for URL.DirectoryHint();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

id @nonobjc MLModel.__allocating_init(contentsOf:configuration:)(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(*MEMORY[0x277D85DE8]);
  v9 = v2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSAySo7NSErrorCSgGMd);
  lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>();
  _convertInOutToPointerArgument<A>(_:)();
  v11 = [ObjCClassFromMetadata modelWithContentsOfURL:v9 configuration:a2 error:v12];
  MEMORY[0x277D82BE0](0);
  MEMORY[0x277D82BD8](0);
  if (v11)
  {
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v9);
    v3 = type metadata accessor for URL();
    (*(*(v3 - 8) + 8))(a1);
    return v11;
  }

  else
  {
    _convertNSErrorToError(_:)();
    MEMORY[0x277D82BD8](0);
    swift_willThrow();
    MEMORY[0x277D82BD8](a2);
    MEMORY[0x277D82BD8](v9);
    v5 = type metadata accessor for URL();
    (*(*(v5 - 8) + 8))(a1);
    return v6;
  }
}

__int128 *NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLoss != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsLoss;
}

uint64_t static NightingalePFLRunner.keyMetricsLoss.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyNumSlices.unsafeMutableAddressor()
{
  if (one-time initialization token for keyNumSlices != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyNumSlices;
}

uint64_t static NightingalePFLRunner.keyNumSlices.getter()
{
  v1 = *NightingalePFLRunner.keyNumSlices.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsLossBeforeTraining != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsLossBeforeTraining;
}

uint64_t static NightingalePFLRunner.keyMetricsLossBeforeTraining.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsDayStreamProcessorConfigDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DayStreamProcessorConfigDurationS", 0x21uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsDayStreamProcessorConfigDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsDayStreamProcessorConfigDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsRawSamplesDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSamplesDurationS", 0x13uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsRawSamplesDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsRawSamplesDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsRawSamplesDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsRawSamplesDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsRawSamplesDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsRawSamplesDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsCalendarPredictionDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("CalendarPredictionDurationS", 0x1BuLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsCalendarPredictionDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsCalendarPredictionDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsCalendarPredictionDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsCalendarPredictionDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsCalendarPredictionDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsCalendarPredictionDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsSHRDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsSHRDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsSHRDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsSHRDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFeaturizationDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsFeaturizationDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsFeaturizationDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsFeaturizationDurationS.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsFeatureRescalingDurationS()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("FeatureRescalingDurationS", 0x19uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsFeatureRescalingDurationS = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsFeatureRescalingDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsFeatureRescalingDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsFeatureRescalingDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsFeatureRescalingDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsFeatureRescalingDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsBMIDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsBMIDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsBMIDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsTrainingDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsTrainingDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsTrainingDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsE2EDurationS != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsE2EDurationS;
}

uint64_t static NightingalePFLRunner.keyMetricsE2EDurationS.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsL2Norm.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsL2Norm != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsL2Norm;
}

uint64_t static NightingalePFLRunner.keyMetricsL2Norm.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();

  return v1;
}

__int128 *NightingalePFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsIterationElapsedTime != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsIterationElapsedTime;
}

uint64_t static NightingalePFLRunner.keyMetricsIterationElapsedTime.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsIterationElapsedTime.unsafeMutableAddressor();

  return v1;
}

uint64_t one-time initialization function for keyMetricsShadowEvaluationTime()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ShadowEvaluationTime", 0x14uLL, 1);
  result = v1._countAndFlagsBits;
  static NightingalePFLRunner.keyMetricsShadowEvaluationTime = v1;
  return result;
}

__int128 *NightingalePFLRunner.keyMetricsShadowEvaluationTime.unsafeMutableAddressor()
{
  if (one-time initialization token for keyMetricsShadowEvaluationTime != -1)
  {
    swift_once();
  }

  return &static NightingalePFLRunner.keyMetricsShadowEvaluationTime;
}

uint64_t static NightingalePFLRunner.keyMetricsShadowEvaluationTime.getter()
{
  v1 = *NightingalePFLRunner.keyMetricsShadowEvaluationTime.unsafeMutableAddressor();

  return v1;
}

uint64_t default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)()
{
  _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85260];
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t NightingalePFLRunner.queue.getter()
{
  v2 = *(v0 + 48);
  MEMORY[0x277D82BE0](v2);
  return v2;
}

uint64_t NightingalePFLRunner.location.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2;
}

uint64_t NightingalePFLRunner.location.setter(char a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t NightingalePFLRunner.todayJulianDay.getter()
{
  LODWORD(v2) = *(v0 + 104);
  BYTE4(v2) = *(v0 + 108) & 1;
  return v2;
}

uint64_t NightingalePFLRunner.__allocating_init(useCase:)(char *a1)
{
  v8 = 0;
  v8 = *a1;
  v7 = v8;
  v3 = type metadata accessor for HealthDataStoreQuery();
  type metadata accessor for HKHealthStore();
  v1.super.isa = HKHealthStore.__allocating_init()().super.isa;
  v6[3] = v3;
  v6[4] = &protocol witness table for HealthDataStoreQuery;
  v6[0] = HealthDataStoreQuery.__allocating_init(store:)(v1.super.isa);
  LODWORD(v5) = 0;
  BYTE4(v5) = 1;
  v4 = NightingalePFLRunner.__allocating_init(useCase:query:todayJulianDay:)(&v7, v6, v5);

  v9 = v4;

  return v4;
}

uint64_t NightingalePFLRunner.__allocating_init(useCase:query:todayJulianDay:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = BYTE4(a3);
  swift_allocObject();
  LODWORD(v8) = v4;
  BYTE4(v8) = v5 & 1;
  return NightingalePFLRunner.init(useCase:query:todayJulianDay:)(a1, a2, v8);
}

uint64_t NightingalePFLRunner.init(useCase:query:todayJulianDay:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v33 = a2;
  v40 = 0;
  v39 = 0;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v41 = a3;
  v30 = a3;
  v31 = BYTE4(a3);
  v27 = 0;
  v20 = (*(*(type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v26 = &v19 - v20;
  v21 = (*(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - v21;
  type metadata accessor for DispatchQoS();
  v4 = MEMORY[0x28223BE20](v22);
  v24 = &v19 - v5;
  v28 = *v4;
  v40 = v28;
  v39 = v33;
  v37 = v6;
  v32 = 1;
  v38 = v31 & 1;
  v36 = v3;
  *(v3 + 24) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v7, 1);
  type metadata accessor for OS_dispatch_queue();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("ReachLocation.queue", 0x13uLL, v32 & 1);
  default argument 1 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 2 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  default argument 3 of OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)(v26);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v34;
  *(v34 + 48) = v8;
  *(v9 + 56) = 0;
  type metadata accessor for PerformanceMeasure();
  v10 = PerformanceMeasure.__allocating_init()();
  v11 = v34;
  v12 = v28;
  v13 = v10;
  v14 = v33;
  *(v34 + 16) = v13;
  *(v11 + 40) = v12;
  v29 = v35;
  outlined init with copy of HealthDataQuery(v14, v35);
  outlined init with take of HealthDataQuery(v29, (v11 + 64));
  v15 = v31;
  v16 = v32;
  v17 = v33;
  *(v11 + 104) = v30;
  *(v11 + 108) = v15 & 1 & v16;
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v34;
}

uint64_t NightingalePFLRunner.performCustomConsent(taskPreferences:)(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  outlined init with copy of HealthDataQuery(v1 + 64, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6 = (*(v5 + 40))(0, 0, v4);
  if (!v3)
  {
    MEMORY[0x277D82BD8](v6);
  }

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 5520) = v4;
  *(v5 + 5512) = a1;
  *(v5 + 4672) = v5;
  *(v5 + 4680) = 0;
  *(v5 + 4352) = 0;
  *(v5 + 4360) = 0;
  *(v5 + 4688) = 0;
  *(v5 + 4696) = 0;
  *(v5 + 4704) = 0;
  *(v5 + 6112) = 0;
  *(v5 + 4712) = 0;
  *(v5 + 4720) = 0;
  *(v5 + 4728) = 0;
  *(v5 + 4736) = 0;
  *(v5 + 4744) = 0;
  *(v5 + 4752) = 0;
  *(v5 + 6120) = 0;
  *(v5 + 4368) = 0;
  *(v5 + 4376) = 0;
  *(v5 + 4760) = 0;
  *(v5 + 4768) = 0;
  *(v5 + 5936) = 0;
  *(v5 + 6000) = 0;
  *(v5 + 6008) = 0;
  *(v5 + 6016) = 0;
  *(v5 + 4816) = 0;
  *(v5 + 4824) = 0;
  *(v5 + 4832) = 0;
  *(v5 + 4840) = 0;
  *(v5 + 4848) = 0;
  *(v5 + 4872) = 0;
  *(v5 + 4880) = 0;
  *(v5 + 4888) = 0;
  *(v5 + 4896) = 0;
  *(v5 + 4936) = 0;
  *(v5 + 4944) = 0;
  *(v5 + 4952) = 0;
  *(v5 + 4960) = 0;
  *(v5 + 4384) = 0;
  *(v5 + 4392) = 0;
  *(v5 + 4968) = 0;
  *(v5 + 4976) = 0;
  *(v5 + 4984) = 0;
  *(v5 + 4992) = 0;
  *(v5 + 5000) = 0;
  *(v5 + 6024) = 0;
  *(v5 + 5008) = 0;
  *(v5 + 5016) = 0;
  *(v5 + 5024) = 0;
  *(v5 + 5032) = 0;
  *(v5 + 5040) = 0;
  *(v5 + 5048) = 0;
  *(v5 + 5056) = 0;
  *(v5 + 6032) = 0;
  *(v5 + 6040) = 0;
  *(v5 + 6048) = 0;
  *(v5 + 5064) = 0;
  *(v5 + 5072) = 0;
  *(v5 + 5080) = 0;
  *(v5 + 5088) = 0;
  *(v5 + 5096) = 0;
  *(v5 + 5104) = 0;
  *(v5 + 5112) = 0;
  *(v5 + 5120) = 0;
  memset((v5 + 3184), 0, 0x28uLL);
  *(v5 + 6056) = 0;
  *(v5 + 5176) = 0;
  *(v5 + 5184) = 0;
  *(v5 + 5192) = 0;
  *(v5 + 4400) = 0;
  *(v5 + 4408) = 0;
  *(v5 + 4432) = 0;
  *(v5 + 4440) = 0;
  *(v5 + 5216) = 0;
  *(v5 + 5224) = 0;
  *(v5 + 5232) = 0;
  *(v5 + 5980) = 0;
  *(v5 + 5984) = 0;
  *(v5 + 6128) = 0;
  *(v5 + 6136) = 0;
  *(v5 + 5240) = 0;
  *(v5 + 5248) = 0;
  *(v5 + 5256) = 0;
  *(v5 + 4016) = 0;
  *(v5 + 4024) = 0;
  *(v5 + 4032) = 0;
  *(v5 + 5988) = 0;
  *(v5 + 5992) = 0;
  *(v5 + 6064) = 0;
  *(v5 + 4064) = 0;
  *(v5 + 4072) = 0;
  *(v5 + 4080) = 0;
  *(v5 + 5264) = 0;
  *(v5 + 6072) = 0;
  *(v5 + 6080) = 0;
  *(v5 + 6088) = 0;
  *(v5 + 6096) = 0;
  *(v5 + 5272) = 0;
  *(v5 + 5280) = 0;
  *(v5 + 6104) = 0;
  *(v5 + 4160) = 0;
  *(v5 + 4168) = 0;
  *(v5 + 4176) = 0;
  *(v5 + 5312) = 0;
  *(v5 + 4496) = 0;
  *(v5 + 4504) = 0;
  *(v5 + 5320) = 0;
  bzero((v5 + 856), 0x118uLL);
  *(v5 + 5376) = 0;
  *(v5 + 4560) = 0;
  *(v5 + 4568) = 0;
  *(v5 + 4592) = 0;
  *(v5 + 4600) = 0;
  *(v5 + 5416) = 0;
  *(v5 + 3840) = 0u;
  *(v5 + 3856) = 0u;
  *(v5 + 5464) = 0;
  v6 = type metadata accessor for PFLError();
  *(v5 + 5528) = v6;
  *(v5 + 5536) = *(v6 - 8);
  *(v5 + 5544) = swift_task_alloc();
  *(v5 + 5552) = swift_task_alloc();
  v7 = type metadata accessor for PFLStats.StdMethod();
  *(v5 + 5560) = v7;
  *(v5 + 5568) = *(v7 - 8);
  *(v5 + 5576) = swift_task_alloc();
  v8 = type metadata accessor for DateComponents();
  *(v5 + 5584) = v8;
  *(v5 + 5592) = *(v8 - 8);
  *(v5 + 5600) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd);
  *(v5 + 5608) = swift_task_alloc();
  *(v5 + 5616) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 5624) = v9;
  *(v5 + 5632) = *(v9 - 8);
  *(v5 + 5640) = swift_task_alloc();
  *(v5 + 5648) = swift_task_alloc();
  *(v5 + 5656) = swift_task_alloc();
  *(v5 + 5664) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v5 + 5672) = v10;
  *(v5 + 5680) = *(v10 - 8);
  *(v5 + 5688) = swift_task_alloc();
  *(v5 + 4680) = a1;
  *(v5 + 4352) = a2;
  *(v5 + 4360) = a3;
  *(v5 + 4688) = a4;
  *(v5 + 4696) = v4;

  return MEMORY[0x2822009F8](NightingalePFLRunner.run(task:useCase:context:), 0);
}

uint64_t NightingalePFLRunner.run(task:useCase:context:)()
{
  *(v0 + 4672) = v0;
  v1 = PFLTask.taskId.getter();
  NightingaleDPFLRunner.taskId.setter(v1, v2);
  type metadata accessor for HyperParams();
  dispatch thunk of PFLTask.recipe.getter();
  v3 = _dictionaryUpCast<A, B, C, D>(_:)();
  v65 = HyperParams.__allocating_init(recipe:)(v3);
  *(v0 + 5696) = v65;

  *(v0 + 4704) = v65;
  v66 = PFLTask.modelType.getter();
  *(v0 + 6062) = v66;
  *(v0 + 6112) = v66;
  NightingalePFLRunner.sendLocation(_:hyperParams:)(1, v65);
  *(v0 + 4633) = v66;
  *(v0 + 4634) = 1;
  *(v0 + 5704) = lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType();
  if (== infix<A>(_:_:)())
  {
    outlined init with copy of HealthDataQuery(*(v64 + 5520) + 64, v64 + 2904);
    v62 = *(v64 + 2928);
    v63 = *(v64 + 2936);
    __swift_project_boxed_opaque_existential_1((v64 + 2904), v62);
    v4._countAndFlagsBits = HyperParams.heartRateFwEnd10PctModelName.getter();
    v5 = PFLTask.getValidModelPath(modelFileSuffix:)(v4);
    if (v6)
    {

      __swift_destroy_boxed_opaque_existential_1(v64 + 2904);
    }

    else
    {

      v7._countAndFlagsBits = HyperParams.heartRatePeriod10PctModelName.getter();
      v8 = PFLTask.getValidModelPath(modelFileSuffix:)(v7);
      if (v9)
      {

        __swift_destroy_boxed_opaque_existential_1(v64 + 2904);
      }

      else
      {

        v10._countAndFlagsBits = HyperParams.wTmpFwEndLstmModelName.getter();
        v11 = PFLTask.getValidModelPath(modelFileSuffix:)(v10);
        if (v12)
        {

          __swift_destroy_boxed_opaque_existential_1(v64 + 2904);
        }

        else
        {

          v13._countAndFlagsBits = HyperParams.wTmpFwEndRFModelName.getter();
          v14 = PFLTask.getValidModelPath(modelFileSuffix:)(v13);
          if (v15)
          {

            __swift_destroy_boxed_opaque_existential_1(v64 + 2904);
          }

          else
          {

            v16._countAndFlagsBits = HyperParams.wTmpPeriodLstmModelName.getter();
            v17 = PFLTask.getValidModelPath(modelFileSuffix:)(v16);
            if (v18)
            {

              __swift_destroy_boxed_opaque_existential_1(v64 + 2904);
            }

            else
            {
              v57 = *(v64 + 5520);

              v56 = (*(v63 + 56))(v5._countAndFlagsBits, v5._object, v8._countAndFlagsBits, v8._object, v11._countAndFlagsBits, v11._object, v14._countAndFlagsBits, v14._object, v17._countAndFlagsBits, v17._object, 0, 0, 0, v62, v63);
              *(v64 + 5712) = v56;

              *(v64 + 4712) = v56;
              __swift_destroy_boxed_opaque_existential_1(v64 + 2904);
              v19 = PFLTask.iterationElapsedTime()();
              *(v64 + 5720) = v19;
              *(v64 + 4720) = v19;
              NightingaleDPFLRunner.performanceMeasure.getter();
              String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1);
              dispatch thunk of PerformanceMeasure.start(_:)();

              NightingaleDPFLRunner.performanceMeasure.getter();
              String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DayStreamProcessorConfig", 0x18uLL, 1);
              dispatch thunk of PerformanceMeasure.start(_:)();

              outlined init with copy of HealthDataQuery(v57 + 64, v64 + 2944);
              v58 = *(v64 + 2968);
              v59 = *(v64 + 2976);
              __swift_project_boxed_opaque_existential_1((v64 + 2944), v58);
              v60 = HyperParams.birthDateRequired.getter();
              v20 = HyperParams.useCachedDayStreamProcessorConfig.getter();
              v61 = (*(v59 + 40))(v60 & 1, v20 & 1, v58);
              *(v64 + 5728) = v61;
              *(v64 + 5736) = v21;
              *(v64 + 5744) = v22;
              *(v64 + 4728) = v61;
              *(v64 + 4736) = v21;
              *(v64 + 4744) = v22;
              __swift_destroy_boxed_opaque_existential_1(v64 + 2944);
              NightingaleDPFLRunner.performanceMeasure.getter();
              String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DayStreamProcessorConfig", 0x18uLL, 1);
              dispatch thunk of PerformanceMeasure.finish(_:)();
              v53 = v23;
              *(v64 + 5752) = v23;

              *(v64 + 4752) = v53;
              NightingalePFLRunner.sendLocation(_:hyperParams:)(2, v65);
              v54 = HyperParams.pflTaskType.getter();
              *(v64 + 6063) = v54;
              *(v64 + 6120) = v54;
              v55 = PFLTask.trainingModelPath(taskType:hyperParams:)();
              *(v64 + 5760) = v55;
              *(v64 + 5768) = v24;
              *(v64 + 4368) = v55;
              *(v64 + 4376) = v24;
              v25 = PFLTask.evalModelNames(taskType:hyperParams:)();
              *(v64 + 5776) = v25;
              v51 = *(v64 + 5520);
              *(v64 + 4760) = v25;
              v49 = dispatch_group_create();
              *(v64 + 5784) = v49;
              *(v64 + 4768) = v49;
              v50 = HyperParams.maximumDays.getter();
              *(v64 + 6028) = v50;
              *(v64 + 5936) = v50;
              v52 = HyperParams.minimumDaysAgo.getter();
              *(v64 + 6036) = v52;
              *(v64 + 6000) = v52;
              if (*(v51 + 108))
              {
                v44 = *(v64 + 5688);
                v43 = *(v64 + 5672);
                v42 = *(v64 + 5680);
                Date.init()();
                *&v26 = Date.toJulianDay()();
                v46 = v26;
                v45 = BYTE4(v26);
                (*(v42 + 8))(v44, v43);
                v47 = v46;
                v48 = v45;
              }

              else
              {
                v27 = *(v64 + 5520);
                if (*(v27 + 108))
                {
                  return _assertionFailure(_:_:file:line:flags:)();
                }

                v47 = *(v27 + 104);
                v48 = *(v27 + 108);
              }

              *(v64 + 6044) = v47;
              if ((v48 & 1) == 0)
              {
                *(v64 + 6008) = v47;
                if (v50 < v47 && v50 >= v52)
                {
                  v29 = HyperParams.sHRQueryBatchSize.getter();
                  *(v64 + 6052) = v29;
                  *(v64 + 6016) = v29;
                  *(v64 + 4776) = 0;
                  *(v64 + 4784) = 0;
                  *(v64 + 4792) = 0;
                  *(v64 + 4800) = 0;
                  *(v64 + 4808) = 0;
                  *(v64 + 4816) = Dictionary.init()();
                  *(v64 + 4824) = Dictionary.init()();
                  *(v64 + 4832) = Dictionary.init()();
                  *(v64 + 4840) = Dictionary.init()();
                  NightingaleDPFLRunner.performanceMeasure.getter();
                  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RawSamplesQuery", 0xFuLL, 1);
                  dispatch thunk of PerformanceMeasure.start(_:)();

                  v30 = _allocateUninitializedArray<A>(_:)();
                  *v31 = 0;
                  v31[1] = 3;
                  v31[2] = 1;
                  v31[3] = 2;
                  _finalizeUninitializedArray<A>(_:)();
                  *(v64 + 4848) = v30;
                  if (isSleepingWTNeeded(_:)(v66))
                  {
                    *(v64 + 6061) = 7;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19NightingaleTraining23HealthDataRawSampleTypeOGMd);
                    Array.append(_:)();
                  }

                  v38 = *(v64 + 5520);
                  v40 = HyperParams.rawSampleTimeout.getter();
                  v39 = *(v64 + 4848);

                  v41 = swift_allocObject();
                  *(v64 + 5792) = v41;
                  *(v41 + 16) = v38;
                  *(v41 + 24) = v39;
                  *(v41 + 32) = v47;
                  *(v41 + 36) = v50;
                  *(v41 + 40) = v52;
                  v32 = swift_task_alloc();
                  *(v64 + 5800) = v32;
                  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy19NightingaleTraining23HealthDataRawSampleTypeOAA0cD11QueryResult_pGMd);
                  v34.n128_f64[0] = v40;
                  *v32 = *(v64 + 4672);
                  v32[1] = NightingalePFLRunner.run(task:useCase:context:);

                  return MEMORY[0x2821A2088](v64 + 4856, &async function pointer to partial apply for closure #1 in NightingalePFLRunner.run(task:useCase:context:), v41, v33, v34);
                }
              }

              lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
              swift_allocError();
              *v35 = 14;
              swift_willThrow();
              MEMORY[0x277D82BD8](v49);

              MEMORY[0x277D82BD8](v61);
              MEMORY[0x277D82BD8](v56);
            }
          }
        }
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    swift_allocError();
    *v36 = 11;
    swift_willThrow();
  }

  v37 = *(*(v64 + 4672) + 8);

  return v37();
}

{
  v4 = *v1;
  *(v4 + 4672) = *v1;
  *(v4 + 5808) = v0;

  if (v0)
  {
    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v4 = *v1;
  *(v4 + 4672) = *v1;
  *(v4 + 5928) = v0;

  if (v0)
  {
    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {

    v2 = NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v15 = v0[726];
  v0[584] = v0;

  v1 = v15;
  v0[608] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v14 + 5536) + 88))(*(v14 + 5552), *(v14 + 5528)) == *MEMORY[0x277D413F0])
    {
      v10 = *(v14 + 5808);
      v11 = *(v14 + 5784);
      v12 = *(v14 + 5728);
      v13 = *(v14 + 5712);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 5;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      MEMORY[0x277D82BD8](v11);

      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);

      goto LABEL_7;
    }

    (*(*(v14 + 5536) + 8))(*(v14 + 5552), *(v14 + 5528));
  }

  else
  {
  }

  v6 = *(v14 + 5808);
  v7 = *(v14 + 5784);
  v8 = *(v14 + 5728);
  v9 = *(v14 + 5712);
  v3 = v6;
  *(v14 + 4872) = v6;
  swift_willThrow();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

LABEL_7:

  v4 = *(*(v14 + 4672) + 8);

  return v4();
}

{
  v15 = v0[741];
  v0[584] = v0;

  v1 = v15;
  v0[676] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  if (swift_dynamicCast())
  {
    if ((*(*(v14 + 5536) + 88))(*(v14 + 5544), *(v14 + 5528)) == *MEMORY[0x277D413F0])
    {
      v10 = *(v14 + 5928);
      v11 = *(v14 + 5784);
      v12 = *(v14 + 5728);
      v13 = *(v14 + 5712);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      swift_allocError();
      *v2 = 6;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      MEMORY[0x277D82BD8](v11);

      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);

      goto LABEL_7;
    }

    (*(*(v14 + 5536) + 8))(*(v14 + 5544), *(v14 + 5528));
  }

  else
  {
  }

  v6 = *(v14 + 5928);
  v7 = *(v14 + 5784);
  v8 = *(v14 + 5728);
  v9 = *(v14 + 5712);
  v3 = v6;
  *(v14 + 5416) = v6;
  swift_willThrow();

  outlined destroy of [(start: UInt32, end: UInt32)]();

  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);

LABEL_7:

  v4 = *(*(v14 + 4672) + 8);

  return v4();
}

uint64_t closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  *(v6 + 148) = a6;
  *(v6 + 140) = a5;
  *(v6 + 132) = a4;
  *(v6 + 96) = a3;
  *(v6 + 88) = a2;
  *(v6 + 80) = a1;
  *(v6 + 56) = v6;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 128) = a4;
  *(v6 + 136) = a5;
  *(v6 + 144) = a6;
  return MEMORY[0x2822009F8](closure #1 in NightingalePFLRunner.run(task:useCase:context:), 0);
}

void *closure #1 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 140);
  v13 = *(v0 + 132);
  v1 = *(v0 + 88);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 64, v0 + 16);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v14 = v13 - v12;
  if (v13 < v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v9 + 148);
  v4 = *(v9 + 132);
  v8 = v4 - v3;
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v8 < v14)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v7 = (*(v11 + 16) + **(v11 + 16));
  v5 = swift_task_alloc();
  *(v9 + 104) = v5;
  *v5 = *(v9 + 56);
  v5[1] = closure #1 in NightingalePFLRunner.run(task:useCase:context:);
  v6 = *(v9 + 96);

  return v7(v6, __PAIR64__(v8, v14), v10, v11);
}

uint64_t closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = *v2;
  v5[7] = *v2;
  v5[14] = a1;
  v5[15] = v1;

  if (v1)
  {
    v3 = closure #1 in NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {
    v3 = closure #1 in NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t closure #1 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v1 = v0[14];
  v2 = v0[10];
  v0[7] = v0;
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v3 = *(v0[7] + 8);

  return v3();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t implicit closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);

  swift_endAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V5start_AB3endtMd);
  v5 = MEMORY[0x25F8895B0](v4, v1);

  return v5;
}

uint64_t closure #2 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  *(v6 + 164) = a6;
  *(v6 + 156) = a5;
  *(v6 + 148) = a4;
  *(v6 + 140) = a3;
  *(v6 + 80) = a2;
  *(v6 + 72) = a1;
  *(v6 + 56) = v6;
  *(v6 + 64) = 0;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 160) = 0;
  *(v6 + 64) = a2;
  *(v6 + 136) = a3;
  *(v6 + 144) = a4;
  *(v6 + 152) = a5;
  *(v6 + 160) = a6;
  return MEMORY[0x2822009F8](closure #2 in NightingalePFLRunner.run(task:useCase:context:), 0);
}

void *closure #2 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v12 = *(v0 + 148);
  v13 = *(v0 + 140);
  v1 = *(v0 + 80);
  *(v0 + 56) = v0;
  outlined init with copy of HealthDataQuery(v1 + 64, v0 + 16);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  result = __swift_project_boxed_opaque_existential_1((v0 + 16), v10);
  v14 = v13 - v12;
  if (v13 < v12)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v9 + 156);
  v4 = *(v9 + 140);
  v8 = v4 - v3;
  if (v4 < v3)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v8 < v14)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v7 = (*(v11 + 24) + **(v11 + 24));
  v5 = swift_task_alloc();
  *(v9 + 88) = v5;
  *v5 = *(v9 + 56);
  v5[1] = closure #2 in NightingalePFLRunner.run(task:useCase:context:);
  v6 = *(v9 + 164);

  return v7(__PAIR64__(v8, v14), v6, v10, v11);
}

uint64_t closure #2 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[7] = *v5;
  v8[12] = v4;
  v8[13] = a1;
  v8[14] = a2;
  v8[15] = a3;
  v8[16] = a4;

  if (v4)
  {
    v6 = closure #2 in NightingalePFLRunner.run(task:useCase:context:);
  }

  else
  {
    v6 = closure #2 in NightingalePFLRunner.run(task:useCase:context:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t closure #2 in NightingalePFLRunner.run(task:useCase:context:)()
{
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[13];
  v5 = v0[9];
  v0[7] = v0;
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v6 = *(v0[7] + 8);

  return v6();
}

{
  *(v0 + 56) = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(*(v3 + 56) + 8);

  return v1();
}

uint64_t NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::OpaquePointer *a9, Swift::OpaquePointer *a10, uint64_t *a11, unsigned int a12, uint64_t a13, unsigned int a14, uint64_t a15)
{
  v423 = MEMORY[0x28223BE20](a1);
  v432 = v17;
  v454 = v18;
  v424 = v19;
  v425 = v20;
  v426 = v21;
  v427 = v22;
  v428 = v23;
  v429 = a9;
  v430 = a10;
  v466 = a11;
  v469 = a12;
  v443 = a13;
  v431 = a14;
  v446 = a15;
  v406 = v15;
  v407 = v16;
  v408 = "Fatal error";
  v409 = "Negative value is not representable";
  v410 = "Swift/Integers.swift";
  v411 = "Unexpectedly found nil while unwrapping an Optional value";
  v412 = "NightingaleTraining/NightingalePFLRunner.swift";
  v413 = "Not enough bits to represent the passed value";
  v414 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v415 = closure #2 in NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:);
  v447 = 8;
  v416 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v596 = 0;
  v594 = 0;
  v595 = 0;
  v593 = 0;
  v592 = 0;
  v591 = 0;
  v590 = 0;
  v589 = 0;
  v588 = 0;
  v587 = 0;
  v586 = 0;
  v585 = 0;
  v584 = 0;
  v583 = 0;
  v582 = 0;
  v581 = 0;
  v580 = 0;
  v579 = 0;
  v577 = 0;
  v578 = 0;
  v575 = 0;
  v576 = 0;
  v573 = 0;
  v574 = 0;
  v571 = 0;
  v572 = 0;
  v570 = 0;
  v569 = 0;
  v568 = 0;
  v567 = 0;
  v550 = 0;
  v551 = 0;
  v547 = 0;
  v538 = 0.0;
  v537 = 0;
  v527 = 0;
  v524 = 0;
  v523 = 0;
  v519 = 0;
  v518 = 0;
  v514 = 0;
  v515 = 0;
  v502 = 0;
  v501 = 0;
  v499 = 0;
  v500 = 0;
  v494 = 0;
  v489 = 0;
  v486 = 0.0;
  v483 = 0;
  v417 = 0;
  v418 = type metadata accessor for ShuffleMethod();
  v419 = *(v418 - 8);
  v420 = v418 - 8;
  v421 = (*(v419 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v422 = &v153 - v421;
  v433 = type metadata accessor for EspressoFunction();
  v434 = *(v433 - 8);
  v435 = v433 - 8;
  v441 = *(v434 + 64);
  v436 = (v441 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = MEMORY[0x28223BE20](v446);
  v437 = &v153 - v436;
  v438 = (v441 + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x28223BE20](v24);
  v439 = &v153 - v438;
  v440 = (v441 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = MEMORY[0x28223BE20](v25);
  v442 = &v153 - v440;
  v444 = (v441 + 15) & 0xFFFFFFFFFFFFFFF0;
  v27 = MEMORY[0x28223BE20](v26);
  v445 = &v153 - v444;
  v596 = &v153 - v444;
  v594 = v28;
  v595 = v29;
  v593 = v30;
  v592 = v31;
  v591 = v32;
  v590 = v33;
  v589 = v34;
  v588 = v35;
  v587 = v36;
  v586 = v37;
  v585 = v466;
  v584 = v469;
  v583 = v443;
  v582 = v38;
  v581 = v27;
  v580 = v15;

  v579 = v446;
  v449 = NightingaleDPFLRunner.performanceMeasure.getter();
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v447, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v463 = HyperParams.inputName.getter();
  v464 = v39;
  v577 = v463;
  v578 = v39;
  v450 = HyperParams.labelName.getter();
  v451 = v40;
  v575 = v450;
  v576 = v40;
  v452 = HyperParams.lossName.getter();
  v453 = v41;
  v573 = v452;
  v574 = v41;
  v455 = HyperParams.outputName.getter();
  v456 = v42;
  v571 = v455;
  v572 = v42;
  v457._rawValue = v466->_rawValue;

  v467 = MEMORY[0x277D84CC0];
  v458 = MEMORY[0x25F8895B0](v457._rawValue);
  v570 = v458;

  v43 = HyperParams.batchSize.getter();
  v459 = static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v458, v43);
  v460 = v44;
  v569 = v459;
  v568 = v44;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
  v462 = _allocateUninitializedArray<A>(_:)();
  v465 = v45;

  v46 = v464;
  v47 = v465;
  v48 = v466;
  *v465 = v463;
  v47[1] = v46;
  v566 = 0;
  rawValue = v48->_rawValue;

  v470 = MEMORY[0x25F8895B0](rawValue, v467);

  result = v470;
  v565 = v469;
  v471 = v470 * v469;
  if ((v470 * v469) >> 64 != v471 >> 63)
  {
    __break(1u);
    goto LABEL_106;
  }

  v405 = v471 * v443;
  if ((v471 * v443) >> 64 != (v471 * v443) >> 63)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v465[2] = Array.init(repeating:count:)();

  v50 = v451;
  v51 = v465;
  v52 = v466;
  v465[3] = v450;
  v51[4] = v50;
  v564 = 0;
  v402 = v52->_rawValue;

  v403 = MEMORY[0x25F8895B0](v402, MEMORY[0x277D84CC0]);

  result = v403;
  v563 = v431;
  v404 = v403 * v431;
  if ((v403 * v431) >> 64 != v404 >> 63)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v53 = Array.init(repeating:count:)();
  v54 = v462;
  v465[5] = v53;
  _finalizeUninitializedArray<A>(_:)();
  v396 = v54;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
  v567 = Dictionary.init(dictionaryLiteral:)();

  v398 = v562;
  v562[0] = v463;
  v562[1] = v464;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
  v400 = Dictionary.subscript.modify();
  v401 = v55;
  if (!v55->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v425, v401, NightingaleTraining_NightingaleModelFeatureType_Flow, v424);
  v394 = v56;
  v395 = v56;
  if (v56)
  {
    v168 = v395;
    v400();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v168;
    return v393;
  }

  v400();
  outlined destroy of DefaultStringInterpolation();

  v560 = v463;
  v561 = v464;
  v391 = Dictionary.subscript.modify();
  v392 = v57;
  if (!v57->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v430, v392, NightingaleTraining_NightingaleModelFeatureType_SWT, v424);
  v389 = v58;
  v390 = v58;
  if (v58)
  {
    v167 = v390;
    v391();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v167;
    return v393;
  }

  v391();
  outlined destroy of DefaultStringInterpolation();

  v558 = v463;
  v559 = v464;
  v387 = Dictionary.subscript.modify();
  v388 = v59;
  if (!v59->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v426, v388, NightingaleTraining_NightingaleModelFeatureType_DaySHR10, v424);
  v385 = v60;
  v386 = v60;
  if (v60)
  {
    v166 = v386;
    v387();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v166;
    return v393;
  }

  v387();
  outlined destroy of DefaultStringInterpolation();

  v556 = v463;
  v557 = v464;
  v383 = Dictionary.subscript.modify();
  v384 = v61;
  if (!v61->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v427, v384, NightingaleTraining_NightingaleModelFeatureType_NightSHR10, v424);
  v381 = v62;
  v382 = v62;
  if (v62)
  {
    v165 = v382;
    v383();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v165;
    return v393;
  }

  v383();
  outlined destroy of DefaultStringInterpolation();

  v554 = v463;
  v555 = v464;
  v379 = Dictionary.subscript.modify();
  v380 = v63;
  if (!v63->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v428, v380, NightingaleTraining_NightingaleModelFeatureType_PSM, v424);
  v377 = v64;
  v378 = v64;
  if (v64)
  {
    v164 = v378;
    v379();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v164;
    return v393;
  }

  v379();
  outlined destroy of DefaultStringInterpolation();

  v552 = v463;
  v553 = v464;
  v375 = Dictionary.subscript.modify();
  v376 = v65;
  if (!v65->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferFeatureToMLInputs(_:_:_:_:)(v429, v376, NightingaleTraining_NightingaleModelFeatureType_PSS, v424);
  v373 = v66;
  v374 = v66;
  if (v66)
  {
    v163 = v374;
    v375();
    outlined destroy of DefaultStringInterpolation();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v163;
    return v393;
  }

  v375();
  outlined destroy of DefaultStringInterpolation();
  v368 = HyperParams.labelEncodingType.getter();
  v369 = v67;
  v550 = v368;
  v551 = v67;
  v68 = HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();
  v370 = *v68;
  v371 = *(v68 + 1);

  v372 = MEMORY[0x25F889340](v368, v369, v370, v371);

  if ((v372 & 1) == 0)
  {
    v70 = HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();
    v363 = *v70;
    v364 = *(v70 + 1);

    v365 = MEMORY[0x25F889340](v368, v369, v363, v364);

    if ((v365 & 1) == 0)
    {
      goto LABEL_39;
    }

    result = HyperParams.modelMaxNumDaysToNextPeriod.getter();
    v362 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_110;
    }

    v477 = v362;
    if (v362 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v476 = -1;
    if (v477 > 0xFFFFFFFFLL)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v359 = v477;
      v474 = v450;
      v475 = v451;
      v360 = Dictionary.subscript.modify();
      v361 = v72;
      if (v72->_rawValue)
      {
        goto LABEL_38;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_38:
    transferLabelToRegression(_:_:_:_:)(v466, v361, v431, v359);
    v360();
    outlined destroy of DefaultStringInterpolation();
    goto LABEL_39;
  }

  v472 = v450;
  v473 = v451;
  v366 = Dictionary.subscript.modify();
  v367 = v69;
  if (!v69->_rawValue)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  transferLabelToOnehotEncode(_:_:_:)(v466, v367, v431);
  v366();
  outlined destroy of DefaultStringInterpolation();
LABEL_39:
  v354 = HyperParams.modelRepresentation.getter();
  v357 = v73;
  v74 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v355 = *v74;
  v356 = *(v74 + 1);

  v358 = MEMORY[0x25F889340](v354, v357, v355, v356);

  if (v358)
  {
    v353 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v75 = EspressoEIRTrainer.__allocating_init(_:)();
    v478[3] = v353;
    v478[4] = MEMORY[0x277D413C0];
    v478[0] = v75;
    outlined init with take of HealthDataQuery(v478, v549);
  }

  else
  {
    v352 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v76 = EspressoMILTrainer.__allocating_init(_:)();
    v548[3] = v352;
    v548[4] = MEMORY[0x277D413D0];
    v548[0] = v76;
    outlined init with take of HealthDataQuery(v548, v549);
  }

  v351 = HyperParams.evalBeforeTrain.getter();
  v547 = v351 & 1;
  if (v351)
  {
    v349 = _allocateUninitializedArray<A>(_:)();
    v348 = v77;
    static EspressoFunction.evaluation.getter();
    static EspressoFunction.training.getter();
    v78 = v349;
    _finalizeUninitializedArray<A>(_:)();
    v350 = v78;
    lazy protocol witness table accessor for type EspressoFunction and conformance EspressoFunction();
    SetAlgebra<>.init(arrayLiteral:)();
  }

  else
  {
    static EspressoFunction.training.getter();
  }

  v333 = v544;
  outlined init with copy of HealthDataQuery(v549, v544);
  v343 = v545;
  v344 = v546;
  v340 = __swift_project_boxed_opaque_existential_1(v333, v545);
  v336 = 2;
  v339 = MEMORY[0x277D837D0];
  v334 = _allocateUninitializedArray<A>(_:)();
  v335 = v79;

  v80 = v464;
  v81 = v335;
  *v335 = v463;
  v81[1] = v80;

  v82 = v334;
  v83 = v451;
  v84 = v335;
  v335[2] = v450;
  v84[3] = v83;
  _finalizeUninitializedArray<A>(_:)();
  v341 = v82;
  v337 = _allocateUninitializedArray<A>(_:)();
  v338 = v85;

  v86 = v453;
  v87 = v338;
  *v338 = v452;
  v87[1] = v86;

  v88 = v337;
  v89 = v456;
  v90 = v338;
  v338[2] = v455;
  v90[3] = v89;
  _finalizeUninitializedArray<A>(_:)();
  v342 = v88;
  v91 = HyperParams.weightNames.getter();
  v92 = v373;
  v345 = v91;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v346 = v92;
  v347 = v92;
  if (v92)
  {
    v162 = v347;

    __swift_destroy_boxed_opaque_existential_1(v544);
    (*(v434 + 8))(v445, v433);
    __swift_destroy_boxed_opaque_existential_1(v549);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v162;
    return v393;
  }

  __swift_destroy_boxed_opaque_existential_1(v544);
  v327 = v541;
  outlined init with copy of HealthDataQuery(v549, v541);
  v329 = v542;
  v330 = v543;
  v328 = __swift_project_boxed_opaque_existential_1(v327, v542);
  v93 = HyperParams.learningRate.getter();
  v94 = v346;
  v539 = v93;
  v540 = 0;
  dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
  v331 = v94;
  v332 = v94;
  if (v94)
  {
    v161 = v332;
    __swift_destroy_boxed_opaque_existential_1(v541);
    (*(v434 + 8))(v445, v433);
    __swift_destroy_boxed_opaque_existential_1(v549);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v161;
    return v393;
  }

  __swift_destroy_boxed_opaque_existential_1(v541);
  v538 = 0.0;
  if ((v351 & 1) == 0)
  {
    v255 = 0.0;
    v256 = v331;
    goto LABEL_67;
  }

  v318 = v504;
  outlined init with copy of HealthDataQuery(v549, v504);
  v319 = v505;
  v320 = v506;
  v321 = __swift_project_boxed_opaque_existential_1(v318, v505);
  v322 = v567;

  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
  v324 = _allocateUninitializedArray<A>(_:)();
  v325 = v95;

  v96 = v464;
  v97 = v325;
  v98 = v469;
  v99 = v443;
  *v325 = v463;
  v97[1] = v96;
  v503 = v98;
  v326 = v99 * v98;
  if ((v99 * v98) >> 64 == v326 >> 63)
  {
    v325[2] = v326;

    v100 = v451;
    v101 = v325;
    v102 = v431;
    v325[3] = v450;
    v101[4] = v100;
    v101[5] = v102;
    _finalizeUninitializedArray<A>(_:)();
    v103 = Dictionary.init(dictionaryLiteral:)();
    v104 = v331;
    v314 = v103;
    v105 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v315 = v104;
    v316 = v105;
    v317 = v104;
    if (v104)
    {
      v160 = v317;

      __swift_destroy_boxed_opaque_existential_1(v504);
      (*(v434 + 8))(v445, v433);
      __swift_destroy_boxed_opaque_existential_1(v549);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v280 = v160;
      return v393;
    }

    v308 = v316;

    v502 = v308;
    __swift_destroy_boxed_opaque_existential_1(v504);
    v501 = Array.init()();

    v498 = v308;
    v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v310 = 0.0;
    v311 = 0.0;
    v312 = 0.0;
    for (i = v315; ; i = v301)
    {
      v301 = i;
      v302 = v312;
      v304 = v311;
      v303 = v310;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd);
      IndexingIterator.next()();
      v305 = v497;
      v306 = v303;
      v307 = v304;
      if (!v497)
      {
        break;
      }

      v300 = v305;
      v297 = v305;
      v489 = v305;

      v298 = v487;
      v487[0] = v452;
      v487[1] = v453;
      MEMORY[0x25F8891D0](&v488);
      outlined destroy of DefaultStringInterpolation();
      v299 = v488;
      if (v488)
      {
        v296 = v299;
        v291 = v299;
        v481 = v299;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v293 = v479;
        v292 = v480;

        v294 = v293;
        v295 = v292;
      }

      else
      {
        v294 = 0.0;
        v295 = 1;
      }

      v289 = v294;
      v290 = v297;
      if (v295)
      {
        v276 = v290;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v277 = swift_allocError();
        *v107 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        (*(v434 + 8))(v445, v433);
        __swift_destroy_boxed_opaque_existential_1(v549);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v280 = v277;
        return v393;
      }

      v288 = v289;
      v486 = v289;
      v284 = v302 + v289;
      v538 = v302 + v289;

      v285 = v484;
      v484[0] = v455;
      v484[1] = v456;
      MEMORY[0x25F8891D0](&v485);
      outlined destroy of DefaultStringInterpolation();
      v286 = v485;
      v287 = v297;
      if (!v485)
      {
        v278 = v287;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v279 = swift_allocError();
        *v106 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        (*(v434 + 8))(v445, v433);
        __swift_destroy_boxed_opaque_existential_1(v549);

        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        v280 = v279;
        return v393;
      }

      v283 = v286;
      v282 = v286;
      v483 = v286;

      v281 = &v482;
      v482 = v282;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v310 = v284;
      v311 = v284;
      v312 = v284;
    }

    v274 = v307;
    v275 = v306;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v108 = MEMORY[0x25F8895B0](v308, v399);
    if (v108 <= 0)
    {
      v273 = v275;
    }

    else
    {
      v108 = MEMORY[0x25F8895B0](v308, v399);
      v538 = v274 / v108;
      v273 = v538;
    }

    v266 = v273;
    HKQueryOptions.init(rawValue:)(v108);
    v267 = HyperParams.modelMaxNumDaysToNextPeriod.getter();
    v268 = HyperParams.labelEncodingType.getter();
    v269 = v109;
    v110 = HyperParams.intervalCorrectionFactor.getter();
    v111 = v301;
    v112 = EvalMetricsProcessor.process(labels:outputs:modelMaxNumDaysToNextPeriod:labelEncodingType:intervalCorrectionFactor:)(v466, &v501, v267, v268, v269, v110);
    v270 = v111;
    v271 = v112;
    v272 = v111;
    if (v111)
    {
      v159 = v272;

      outlined destroy of [(start: UInt32, end: UInt32)]();

      (*(v434 + 8))(v445, v433);
      __swift_destroy_boxed_opaque_existential_1(v549);

      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      v280 = v159;
      return v393;
    }

    v257._rawValue = v271;

    v494 = v257._rawValue;
    v258 = &v493;
    EvalMetricsProcessor.calculateMetrics(labels:outputs:)(&v493, v466, v257);
    v259 = v495;
    memcpy(v495, v258, 0x98uLL);
    v260 = v495[0];
    v261 = &v495[1];
    v262 = 144;
    memcpy(__dst, &v495[1], sizeof(__dst));
    v495[19] = v495[0];
    memcpy(v496, &v495[1], sizeof(v496));
    v263 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PreTraining", 0xBuLL, 1)._object;
    v264 = AggMetrics.toDictionary(prefix:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v113 = v270;
    Dictionary.merge(_:uniquingKeysWith:)();
    v265 = v113;
    if (v113)
    {
      __break(1u);
      goto LABEL_98;
    }

    v254 = v490;
    outlined init with copy of HealthDataQuery(v549, v490);
    v252 = v491;
    v253 = v492;
    __swift_project_boxed_opaque_existential_1(v254, v491);
    static EspressoFunction.evaluation.getter();
    dispatch thunk of EspressoTrainer.unload(functions:)();
    (*(v434 + 8))(v442, v433);
    __swift_destroy_boxed_opaque_existential_1(v254);
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    v255 = v266;
    v256 = v265;
LABEL_67:
    v246 = v256;
    v244 = v255;
    v245 = v534;
    outlined init with copy of HealthDataQuery(v549, v534);
    v247 = v535;
    v248 = v536;
    __swift_project_boxed_opaque_existential_1(v245, v535);
    static EspressoFunction.training.getter();
    v114 = v246;
    v115 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
    v249 = v114;
    v250 = v115;
    v251 = v114;
    if (!v114)
    {
      v234 = v250;
      v232 = *(v434 + 8);
      v233 = v434 + 8;
      v232(v439, v433);
      v537 = v234;
      __swift_destroy_boxed_opaque_existential_1(v534);
      v235 = v531;
      outlined init with copy of HealthDataQuery(v549, v531);
      v236 = v532;
      v237 = v533;
      v238 = __swift_project_boxed_opaque_existential_1(v235, v532);
      v239 = v567;

      v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
      v241 = _allocateUninitializedArray<A>(_:)();
      v242 = v116;

      v117 = v464;
      v118 = v242;
      v119 = v469;
      v120 = v443;
      *v242 = v463;
      v118[1] = v117;
      v243 = v120 * v119;
      if ((v120 * v119) >> 64 == (v120 * v119) >> 63)
      {
        v242[2] = v243;

        v121 = v451;
        v122 = v242;
        v123 = v431;
        v242[3] = v450;
        v122[4] = v121;
        v122[5] = v123;
        _finalizeUninitializedArray<A>(_:)();
        v230 = Dictionary.init(dictionaryLiteral:)();
        v231 = HyperParams.epochs.getter();
        if (v231 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        if (v231 > 0xFFFFFFFFLL)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        else
        {
          v227 = v231;
          HyperParams.inputShuffleMethod.getter(v422);
          HyperParams.fullBatchTraining.getter();
          v124 = v249;
          dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
          v228 = v124;
          v229 = v124;
          if (v124)
          {
            v155 = v229;
            (*(v419 + 8))(v422, v418);

            __swift_destroy_boxed_opaque_existential_1(v531);
            outlined destroy of [(start: UInt32, end: UInt32)]();
            v232(v445, v433);
            __swift_destroy_boxed_opaque_existential_1(v549);

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            v280 = v155;
            return v393;
          }
        }

        (*(v419 + 8))(v422, v418);

        __swift_destroy_boxed_opaque_existential_1(v531);
        v223 = MEMORY[0x277D837D0];
        v224 = MEMORY[0x277D837E0];
        v125 = default argument 0 of Dictionary.removeAll(keepingCapacity:)();
        Dictionary.removeAll(keepingCapacity:)(v125 & 1);
        v221 = v528;
        outlined init with copy of HealthDataQuery(v549, v528);
        v219 = v529;
        v220 = v530;
        __swift_project_boxed_opaque_existential_1(v221, v529);
        static EspressoFunction.training.getter();
        v222 = dispatch thunk of EspressoTrainer.extractOutputs(function:)();
        v232(v442, v433);
        v527 = v222;
        __swift_destroy_boxed_opaque_existential_1(v221);

        v225 = v525;
        v525[0] = v452;
        v525[1] = v453;
        MEMORY[0x25F8891D0](&v526);
        outlined destroy of DefaultStringInterpolation();
        v226 = v526;
        if (v526)
        {
          v218 = v226;
          v213 = v226;
          v509 = v226;
          lazy protocol witness table accessor for type [Float] and conformance [A]();
          Collection.first.getter();
          v215 = v507;
          v214 = v508;

          v216 = v215;
          v217 = v214;
        }

        else
        {
          v216 = 0;
          v217 = 1;
        }

        v212 = v216;
        if (v217)
        {
          lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
          v169 = swift_allocError();
          *v152 = 10;
          swift_willThrow();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v232(v445, v433);
          __swift_destroy_boxed_opaque_existential_1(v549);

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v280 = v169;
        }

        else
        {
          v211 = v212;
          v204 = v212;
          v524 = v212;
          v205 = v520;
          outlined init with copy of HealthDataQuery(v549, v520);
          v206 = v521;
          v207 = v522;
          __swift_project_boxed_opaque_existential_1(v205, v521);
          static EspressoFunction.training.getter();
          v126 = v228;
          v127 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
          v208 = v126;
          v209 = v127;
          v210 = v126;
          if (!v126)
          {
            v194 = v209;
            v232(v437, v433);
            v202 = &v523;
            v523 = v194;
            __swift_destroy_boxed_opaque_existential_1(v520);
            static HIDPFLUtils.inplaceSub(_:_:)(v202);
            v196 = NightingaleDPFLRunner.performanceMeasure.getter();
            v198 = 1;
            v195 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
            dispatch thunk of PerformanceMeasure.finish(_:)();
            v197 = v128;

            v519 = v197;
            v200 = NightingaleDPFLRunner.performanceMeasure.getter();
            v199 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v198 & 1)._object;
            dispatch thunk of PerformanceMeasure.finish(_:)();
            v201 = v129;

            v518 = v201;
            NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v454);
            v130 = v208;
            _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v415, 0, v397, MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v393, &v516);
            v203 = v130;
            if (v130)
            {
              __break(1u);
            }

            else
            {
              v180 = v516;
              v181 = v517;
              v514 = v516;
              v515 = v517;
              v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
              v190 = _allocateUninitializedArray<A>(_:)();
              v188 = v131;
              v132 = NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
              outlined init with copy of String(v132, v188);
              v133 = v197;
              v134 = v188;
              v183 = MEMORY[0x277D839F8];
              v188[5] = MEMORY[0x277D839F8];
              v134[2] = v133;
              v182 = v134 + 6;
              v135 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
              outlined init with copy of String(v135, v182);
              v136 = v201;
              v137 = v188;
              v188[11] = v183;
              v137[8] = v136;
              v184 = v137 + 12;
              v138 = NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor();
              outlined init with copy of String(v138, v184);
              v139 = v204;
              v140 = v188;
              v187 = MEMORY[0x277D83A90];
              v188[17] = MEMORY[0x277D83A90];
              *(v140 + 28) = v139;
              v185 = v140 + 18;
              v141 = NightingalePFLRunner.keyNumSlices.unsafeMutableAddressor();
              outlined init with copy of String(v141, v185);
              v142 = v459;
              v143 = v188;
              v188[23] = MEMORY[0x277D83B88];
              v143[20] = v142;
              v186 = v143 + 24;
              v144 = NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
              outlined init with copy of String(v144, v186);
              v145 = v188;
              v146 = v244;
              v188[29] = v187;
              v145[52] = v146;
              _finalizeUninitializedArray<A>(_:)();
              v191 = Dictionary.init(dictionaryLiteral:)();
              v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
              v148 = v203;
              v192 = v147;
              Dictionary.merge(_:uniquingKeysWith:)();
              v193 = v148;
              if (!v148)
              {
                if (HyperParams.collectL2Norm.getter())
                {
                  v149 = NightingalePFLRunner.keyMetricsL2Norm.unsafeMutableAddressor();
                  v178 = *v149;
                  v179 = *(v149 + 1);

                  v176 = v523;

                  static PFLStats.l2Norm(_:)();
                  v177 = v150;

                  v513 = MEMORY[0x277D83A90];
                  v512 = v177;
                  v510 = v178;
                  v511 = v179;
                  Dictionary.subscript.setter();
                }

                v151 = v193;
                v173 = v579;

                static HIDPFLUtils.checkMetrics(_:)();
                v174 = v151;
                v175 = v151;
                if (!v151)
                {

                  type metadata accessor for PFLTaskResult();
                  v171 = &v579;
                  v170 = v579;

                  outlined copy of Data._Representation(v180, v181);
                  v172 = PFLTaskResult.__allocating_init(json:vector:)();
                  outlined consume of Data._Representation(v180, v181);
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  v232(v445, v433);
                  __swift_destroy_boxed_opaque_existential_1(v549);

                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  return v172;
                }

                goto LABEL_103;
              }
            }

            __break(1u);
LABEL_103:
            v153 = v175;

            outlined consume of Data._Representation(v180, v181);
            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            v232(v445, v433);
            __swift_destroy_boxed_opaque_existential_1(v549);

            outlined destroy of [(start: UInt32, end: UInt32)]();

            outlined destroy of [(start: UInt32, end: UInt32)]();
            v280 = v153;
            return v393;
          }

          v154 = v210;
          v232(v437, v433);
          __swift_destroy_boxed_opaque_existential_1(v520);

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v232(v445, v433);
          __swift_destroy_boxed_opaque_existential_1(v549);

          outlined destroy of [(start: UInt32, end: UInt32)]();

          outlined destroy of [(start: UInt32, end: UInt32)]();
          v280 = v154;
        }

        return v393;
      }

      goto LABEL_108;
    }

LABEL_98:
    v158 = v251;
    v157 = *(v434 + 8);
    v156 = v434 + 8;
    v157(v439, v433);
    __swift_destroy_boxed_opaque_existential_1(v534);
    v157(v445, v433);
    __swift_destroy_boxed_opaque_existential_1(v549);

    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v280 = v158;
    return v393;
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  return result;
}

uint64_t closure #2 in NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x25F888AB0](*a1, a1[1], MEMORY[0x277D83A90]);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF@<X0>(void (*a1)(void *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = a8;
  v18 = a1;
  v19 = a2;
  v30 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v24 = a7;
  v33[4] = a4;
  v33[3] = a5;
  v25 = *(a5 - 8);
  v26 = a5 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a3);
  v28 = &v10 - v27;
  Array._makeMutableAndUnique()();
  v31 = *v29;
  v32 = *(v30 + 16);
  v33[2] = v32;
  if (_swift_isClassOrObjCExistentialType())
  {
    v16 = v31 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v16 = v31;
  }

  v14 = *(v16 + 16);
  v15 = *v29;
  if (_swift_isClassOrObjCExistentialType())
  {
    v13 = v15 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v13 = v15;
  }

  v8 = v23;
  v11 = v13 + ((*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80));
  v33[0] = v11;
  v33[1] = v14;
  v18(v33, v28);
  v12 = v8;
  if (v8)
  {
    (*(v25 + 32))(v24, v28, v21);
  }

  return _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(v33, v11, v14);
}

uint64_t NightingalePFLRunner.runDemographics(dispatchGroup:hyperParams:modelPath:cycleStats:daySHR10CountStats:numberOfSlices:age:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v251 = a1;
  v252 = a2;
  v253 = a3;
  v254 = a4;
  v259 = a9;
  v274 = a12;
  v243 = closure #2 in NightingalePFLRunner.runTraining(modelPath:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:labelSize:existingMetrics:);
  v244 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v340 = 0;
  v339 = 0;
  v337 = 0;
  v338 = 0;
  v335 = 0;
  memset(v336, 0, 13);
  memset(v334, 0, 13);
  v333 = 0;
  v331 = 0;
  v332 = 0;
  v330 = 0;
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v326 = 0;
  v325 = 0;
  v324 = 0;
  v320 = 0.0;
  v319 = 0;
  v317 = 0;
  v318 = 0;
  v315 = 0;
  v316 = 0;
  v311 = 0;
  v312 = 0;
  v307 = 0;
  v299 = 0.0;
  v298 = 0;
  v296 = 0;
  v289 = 0;
  v285 = 0;
  v284 = 0;
  v280 = 0;
  v281 = 0;
  v279 = 0;
  v346 = a5;
  v272 = a5;
  v261 = BYTE4(a5);
  v345 = a6;
  v262 = a6;
  v263 = BYTE4(a6);
  v344 = a7;
  v255 = a7;
  v275 = BYTE4(a7);
  v343 = a8;
  v276 = a8;
  v256 = BYTE4(a8);
  v342 = a10;
  v257 = a10;
  v258 = BYTE4(a10);
  v341 = a11;
  v260 = *&a11;
  v273 = BYTE4(a11);
  v245 = 0;
  v246 = type metadata accessor for ShuffleMethod();
  v247 = *(v246 - 8);
  v248 = v246 - 8;
  v249 = (*(v247 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v250 = &v104 - v249;
  v13 = type metadata accessor for EspressoFunction();
  v14 = v255;
  v264 = v13;
  v265 = *(v13 - 8);
  v266 = v13 - 8;
  v270 = *(v265 + 64);
  v267 = (v270 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20](v263);
  v268 = &v104 - v267;
  v269 = (v270 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x28223BE20](v15);
  v271 = &v104 - v269;
  v17 = MEMORY[0x28223BE20](v16);
  v277 = &v104 - v18;
  v340 = v19;
  v339 = v20;
  v337 = v21;
  v338 = v22;
  LODWORD(v335) = v272;
  BYTE4(v335) = v23 & 1;
  LODWORD(v336[0]) = v24;
  BYTE4(v336[0]) = v17 & 1;
  LODWORD(v336[1]) = v14;
  BYTE4(v336[1]) = v275 & 1;
  LODWORD(v334[0]) = v276;
  BYTE4(v334[0]) = v25 & 1;
  LODWORD(v334[1]) = v26;
  BYTE4(v334[1]) = v27 & 1;
  v333 = v28;
  v331 = v29;
  v332 = v273 & 1;
  v330 = v274;
  v329 = v12;
  if (v23 & 1) != 0 || (v240 = v272, (v239 = v240, v328 = v240, (v263) || (v238 = v262, v237 = v238, v327 = v238, (v275)))
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v112 = swift_allocError();
    *v103 = 20;
    swift_willThrow();
    v114 = v112;
  }

  else
  {
    v236 = v255;
    v235 = v236;
    v326 = v236;
    if (v256 & 1) != 0 || (v234 = v276, v233 = v234, v325 = v234, (v258))
    {
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v113 = swift_allocError();
      *v102 = 21;
      swift_willThrow();
      v114 = v113;
    }

    else
    {
      v232 = v257;
      v223 = v257;
      v324 = v257;
      v225 = NightingaleDPFLRunner.performanceMeasure.getter();
      object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
      dispatch thunk of PerformanceMeasure.start(_:)();

      v226 = v321;
      outlined init with copy of HealthDataQuery(v241 + 64, v321);
      v227 = v322;
      v228 = v323;
      __swift_project_boxed_opaque_existential_1(v226, v322);
      v30 = v242;
      v31 = (*(v228 + 48))(v251, v252, v227);
      v229 = v30;
      v230 = v31;
      v231 = v30;
      if (v30)
      {
        v111 = v231;
        __swift_destroy_boxed_opaque_existential_1(v321);
        v114 = v111;
      }

      else
      {
        v206 = v230;
        v320 = v230;
        __swift_destroy_boxed_opaque_existential_1(v321);
        v208 = NightingaleDPFLRunner.performanceMeasure.getter();
        v210 = 8;
        v211 = 1;
        v207 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("BMIQuery", 8uLL, 1)._object;
        dispatch thunk of PerformanceMeasure.finish(_:)();
        v209 = v32;

        v319 = v209;
        NightingalePFLRunner.sendLocation(_:hyperParams:)(7, v252);
        v213 = NightingaleDPFLRunner.performanceMeasure.getter();
        v212 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v210, v211 & 1)._object;
        dispatch thunk of PerformanceMeasure.start(_:)();

        v214 = HyperParams.inputName.getter();
        v215 = v33;
        v317 = v214;
        v318 = v33;
        v216 = HyperParams.labelName.getter();
        v217 = v34;
        v315 = v216;
        v316 = v34;
        v218 = HyperParams.modelRepresentation.getter();
        v221 = v35;
        v36 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
        v219 = *v36;
        v220 = *(v36 + 1);

        v222 = MEMORY[0x25F889340](v218, v221, v219, v220);

        if (v222)
        {
          v205 = type metadata accessor for EspressoEIRTrainer();
          NightingaleDPFLRunner.performanceMeasure.getter();
          v37 = EspressoEIRTrainer.__allocating_init(_:)();
          v278[3] = v205;
          v278[4] = MEMORY[0x277D413C0];
          v278[0] = v37;
          outlined init with take of HealthDataQuery(v278, v314);
        }

        else
        {
          v204 = type metadata accessor for EspressoMILTrainer();
          NightingaleDPFLRunner.performanceMeasure.getter();
          v38 = EspressoMILTrainer.__allocating_init(_:)();
          v313[3] = v204;
          v313[4] = MEMORY[0x277D413D0];
          v313[0] = v38;
          outlined init with take of HealthDataQuery(v313, v314);
        }

        v191 = HyperParams.lossName.getter();
        v192 = v39;
        v311 = v191;
        v312 = v39;
        v187 = v308;
        outlined init with copy of HealthDataQuery(v314, v308);
        v199 = v309;
        v200 = v310;
        v196 = __swift_project_boxed_opaque_existential_1(v187, v309);
        static EspressoFunction.training.getter();
        v190 = 2;
        v195 = MEMORY[0x277D837D0];
        v188 = _allocateUninitializedArray<A>(_:)();
        v189 = v40;

        v41 = v215;
        v42 = v189;
        *v189 = v214;
        v42[1] = v41;

        v43 = v188;
        v44 = v217;
        v45 = v189;
        v189[2] = v216;
        v45[3] = v44;
        _finalizeUninitializedArray<A>(_:)();
        v197 = v43;
        v194 = _allocateUninitializedArray<A>(_:)();
        v193 = v46;

        v47 = v192;
        v48 = v193;
        *v193 = v191;
        v48[1] = v47;
        v49 = HyperParams.outputName.getter();
        v50 = v193;
        v51 = v49;
        v52 = v194;
        v193[2] = v51;
        v50[3] = v53;
        _finalizeUninitializedArray<A>(_:)();
        v198 = v52;
        v54 = HyperParams.weightNames.getter();
        v55 = v229;
        v201 = v54;
        dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
        v202 = v55;
        v203 = v55;
        if (v55)
        {
          v110 = v203;

          (*(v265 + 8))(v277, v264);
          __swift_destroy_boxed_opaque_existential_1(v308);

          __swift_destroy_boxed_opaque_existential_1(v314);

          v114 = v110;
        }

        else
        {

          v178 = *(v265 + 8);
          v179 = v265 + 8;
          v178(v277, v264);
          __swift_destroy_boxed_opaque_existential_1(v308);
          v56 = HyperParams.batchSize.getter();
          static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(1, v56);
          v182 = v57;
          v307 = v57;
          v180 = v304;
          outlined init with copy of HealthDataQuery(v314, v304);
          v183 = v305;
          v184 = v306;
          v181 = __swift_project_boxed_opaque_existential_1(v180, v305);
          v58 = HyperParams.learningRate.getter();
          v59 = v202;
          v302 = v58;
          v303 = 0;
          dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
          v185 = v59;
          v186 = v59;
          if (v59)
          {
            v109 = v186;
            __swift_destroy_boxed_opaque_existential_1(v304);

            __swift_destroy_boxed_opaque_existential_1(v314);

            v114 = v109;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(v304);
            v300 = v260;
            v301 = v273 & 1;

            if (v301)
            {
              v176 = HyperParams.defaultAge.getter();
              v177 = v176;
            }

            else
            {
              v177 = v300;
            }

            v162 = v177;

            v299 = v162;
            v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
            v167 = _allocateUninitializedArray<A>(_:)();
            v165 = v60;

            v61 = v215;
            v62 = v165;
            *v165 = v214;
            v62[1] = v61;
            v164 = MEMORY[0x277D83A90];
            v63 = _allocateUninitializedArray<A>(_:)();
            v64 = v206;
            v65 = v239;
            v66 = v237;
            v67 = v235;
            v68 = v233;
            v69 = v223;
            v70 = v259;
            v163 = v71;
            *v71 = v162;
            *(v71 + 1) = v64;
            v71[2] = v65;
            v71[3] = v66;
            v71[4] = v67;
            v71[5] = v68;
            v71[6] = v69;
            *(v71 + 7) = v70;
            _finalizeUninitializedArray<A>(_:)();
            v165[2] = v63;

            v72 = v217;
            v73 = v165;
            v165[3] = v216;
            v73[4] = v72;
            v297 = 1.0;
            v74 = Array.init(repeating:count:)();
            v75 = v167;
            v165[5] = v74;
            _finalizeUninitializedArray<A>(_:)();
            v168 = v75;
            v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
            v298 = Dictionary.init(dictionaryLiteral:)();
            v170 = v293;
            outlined init with copy of HealthDataQuery(v314, v293);
            v171 = v294;
            v172 = v295;
            __swift_project_boxed_opaque_existential_1(v170, v294);
            static EspressoFunction.training.getter();
            v76 = v185;
            v77 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
            v173 = v76;
            v174 = v77;
            v175 = v76;
            if (v76)
            {
              v108 = v175;
              v178(v271, v264);
              __swift_destroy_boxed_opaque_existential_1(v293);
              outlined destroy of [(start: UInt32, end: UInt32)]();

              __swift_destroy_boxed_opaque_existential_1(v314);

              v114 = v108;
            }

            else
            {
              v150 = v174;
              v178(v271, v264);
              v296 = v150;
              __swift_destroy_boxed_opaque_existential_1(v293);
              v151 = v290;
              outlined init with copy of HealthDataQuery(v314, v290);
              v158 = v291;
              v159 = v292;
              __swift_project_boxed_opaque_existential_1(v151, v291);
              v155 = v298;

              v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
              v152 = _allocateUninitializedArray<A>(_:)();
              v153 = v78;

              v79 = v215;
              v80 = v153;
              *v153 = v214;
              v80[1] = v79;
              v80[2] = 8;

              v81 = v217;
              v82 = v153;
              v153[3] = v216;
              v82[4] = v81;
              v157 = 1;
              v82[5] = 1;
              _finalizeUninitializedArray<A>(_:)();
              v156 = Dictionary.init(dictionaryLiteral:)();
              (*(v247 + 104))(v250, *MEMORY[0x277D41360], v246);
              v83 = v173;
              dispatch thunk of EspressoTrainer.train(_:featureSizes:numSamples:epochs:shuffleMethod:fullBatch:)();
              v160 = v83;
              v161 = v83;
              if (v83)
              {
                v107 = v161;
                (*(v247 + 8))(v250, v246);

                __swift_destroy_boxed_opaque_existential_1(v290);
                outlined destroy of [(start: UInt32, end: UInt32)]();
                outlined destroy of [(start: UInt32, end: UInt32)]();

                __swift_destroy_boxed_opaque_existential_1(v314);

                v114 = v107;
              }

              else
              {
                (*(v247 + 8))(v250, v246);

                __swift_destroy_boxed_opaque_existential_1(v290);
                v143 = default argument 0 of Dictionary.removeAll(keepingCapacity:)();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
                Dictionary.removeAll(keepingCapacity:)(v143 & 1);
                v144 = v286;
                outlined init with copy of HealthDataQuery(v314, v286);
                v145 = v287;
                v146 = v288;
                __swift_project_boxed_opaque_existential_1(v144, v287);
                static EspressoFunction.training.getter();
                v84 = v160;
                v85 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
                v147 = v84;
                v148 = v85;
                v149 = v84;
                if (v84)
                {
                  v106 = v149;
                  v178(v268, v264);
                  __swift_destroy_boxed_opaque_existential_1(v286);
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  __swift_destroy_boxed_opaque_existential_1(v314);

                  v114 = v106;
                }

                else
                {
                  v132 = v148;
                  v178(v268, v264);
                  v140 = &v289;
                  v289 = v132;
                  __swift_destroy_boxed_opaque_existential_1(v286);
                  static HIDPFLUtils.inplaceSub(_:_:)(v140);
                  v134 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v136 = 1;
                  v133 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v135 = v86;

                  v285 = v135;
                  v138 = NightingaleDPFLRunner.performanceMeasure.getter();
                  v137 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v136 & 1)._object;
                  dispatch thunk of PerformanceMeasure.finish(_:)();
                  v139 = v87;

                  v284 = v139;
                  NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v252);
                  v88 = v147;
                  _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v243, 0, v169, MEMORY[0x277CC9318], MEMORY[0x277D84A98], MEMORY[0x277D84AC0], v141, &v282);
                  v142 = v88;
                  if (v88)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v119 = v282;
                    v120 = v283;
                    v280 = v282;
                    v281 = v283;

                    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
                    v126 = _allocateUninitializedArray<A>(_:)();
                    v124 = v89;
                    v90 = NightingalePFLRunner.keyMetricsBMIDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v90, v124);
                    v91 = v209;
                    v92 = v124;
                    v123 = MEMORY[0x277D839F8];
                    v124[5] = MEMORY[0x277D839F8];
                    v92[2] = v91;
                    v121 = v92 + 6;
                    v93 = NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v93, v121);
                    v94 = v135;
                    v95 = v124;
                    v124[11] = v123;
                    v95[8] = v94;
                    v122 = v95 + 12;
                    v96 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
                    outlined init with copy of String(v96, v122);
                    v97 = v124;
                    v98 = v139;
                    v124[17] = v123;
                    v97[14] = v98;
                    _finalizeUninitializedArray<A>(_:)();
                    v127 = MEMORY[0x277D837D0];
                    v128 = MEMORY[0x277D84F70] + 8;
                    v129 = MEMORY[0x277D837E0];
                    Dictionary.init(dictionaryLiteral:)();
                    v99 = v142;
                    v100 = Dictionary.merging(_:uniquingKeysWith:)();
                    v130 = v99;
                    v131 = v100;
                    if (!v99)
                    {
                      v116 = v131;
                      v279 = v131;
                      static HIDPFLUtils.checkMetrics(_:)();
                      v117 = 0;
                      v118 = 0;
                      type metadata accessor for PFLTaskResult();
                      outlined copy of Data._Representation(v119, v120);
                      v115 = PFLTaskResult.__allocating_init(json:vector:)();
                      outlined consume of Data._Representation(v119, v120);
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();
                      outlined destroy of [(start: UInt32, end: UInt32)]();

                      __swift_destroy_boxed_opaque_existential_1(v314);

                      return v115;
                    }
                  }

                  __break(1u);
                  v105 = v118;

                  outlined consume of Data._Representation(v119, v120);
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();
                  outlined destroy of [(start: UInt32, end: UInt32)]();

                  __swift_destroy_boxed_opaque_existential_1(v314);

                  v114 = v105;
                }
              }
            }
          }
        }
      }
    }
  }

  return v141;
}

uint64_t NightingalePFLRunner.runEvals(evalModels:task:hyperParams:modelType:featureFlow:featureDaySHR:featureNightSHR:featurePSM:featurePSS:featureSWT:featureLabel:sliceSize:numFeatures:existingMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::OpaquePointer *a9, Swift::OpaquePointer *a10, uint64_t *a11, unsigned int a12, uint64_t a13, uint64_t a14)
{
  v509 = MEMORY[0x28223BE20](a1);
  v517 = v16;
  v499 = v17;
  v510 = v18;
  v511 = v19;
  v512 = v20;
  v513 = v21;
  v514 = v22;
  v515 = a9;
  v516 = a10;
  v532 = a11;
  v535 = a12;
  v521 = a13;
  v524 = a14;
  v23 = v14;
  v24 = v17;
  v526 = v23;
  v500 = v15;
  v529 = 8;
  v501 = "Fatal error";
  v502 = "Negative value is not representable";
  v503 = "Swift/Integers.swift";
  v504 = "Unexpectedly found nil while unwrapping an Optional value";
  v505 = "NightingaleTraining/NightingalePFLRunner.swift";
  v506 = "Not enough bits to represent the passed value";
  v507 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v508 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v632 = 0;
  v631 = 0;
  v630 = 0;
  v629 = 0;
  v628 = 0;
  v627 = 0;
  v626 = 0;
  v625 = 0;
  v624 = 0;
  v623 = 0;
  v622 = 0;
  v621 = 0;
  v620 = 0;
  v619 = 0;
  v618 = 0;
  v617 = 0;
  v616 = 0;
  v615 = 0;
  v614._rawValue = 0;
  v610 = 0;
  v611 = 0;
  v606 = 0;
  v605 = 0;
  v603 = 0;
  v604 = 0;
  v602 = 0;
  v601 = 0;
  v599 = 0;
  v600 = 0;
  v597 = 0;
  v598 = 0;
  v595 = 0;
  v596 = 0;
  v593 = 0;
  v594 = 0;
  v592 = 0;
  v591 = 0;
  v590 = 0;
  v588 = 0;
  v589 = 0;
  v586 = 0;
  v587 = 0;
  v584 = 0;
  v585 = 0;
  v583 = 0;
  v572 = 0.0;
  v568 = 0;
  v567 = 0;
  v565 = 0;
  v566 = 0;
  v560 = 0;
  v551 = 0;
  v548 = 0.0;
  v545 = 0;
  v518 = type metadata accessor for EspressoFunction();
  v519 = *(v518 - 8);
  v520 = v518 - 8;
  v522 = (*(v519 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v25 = MEMORY[0x28223BE20](a14);
  v523 = &v124 - v522;
  v632 = v26;
  v631 = v27;
  v630 = v24;
  v629 = v28;
  v628 = v29;
  v627 = v30;
  v626 = v31;
  v625 = v32;
  v624 = v33;
  v623 = v34;
  v622 = a11;
  v621 = a12;
  v620 = a13;
  v619 = v25;
  v618 = v35;

  v617 = v524;
  v525._rawValue = v532->_rawValue;

  v533 = MEMORY[0x277D84CC0];
  v527 = MEMORY[0x25F8895B0](v525._rawValue);
  v616 = v527;

  v36 = HyperParams.batchSize.getter();
  static HIDPFLUtils.computeEffectiveTrainingSize(_:_:)(v527, v36);
  v528 = v37;
  v615 = v37;
  v531 = NightingaleDPFLRunner.performanceMeasure.getter();
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", v529, 1)._object;
  dispatch thunk of PerformanceMeasure.start(_:)();

  v613 = 0;
  rawValue = v532->_rawValue;

  v536 = MEMORY[0x25F8895B0](rawValue, v533);

  result = v536;
  v612 = v535;
  v537 = v536 * v535;
  if ((v536 * v535) >> 64 != v537 >> 63)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    return result;
  }

  v498 = v537 * v521;
  if ((v537 * v521) >> 64 != (v537 * v521) >> 63)
  {
    goto LABEL_72;
  }

  v614._rawValue = Array.init(repeating:count:)();
  transferFeatureToMLInputs(_:_:_:_:)(v511, &v614, NightingaleTraining_NightingaleModelFeatureType_Flow, v510);
  v496 = v39;
  v497 = v39;
  if (v39)
  {
    v182 = v497;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v288 = v182;
    return v495;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v516, &v614, NightingaleTraining_NightingaleModelFeatureType_SWT, v510);
  v493 = v40;
  v494 = v40;
  if (v40)
  {
    v181 = v494;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v288 = v181;
    return v495;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v512, &v614, NightingaleTraining_NightingaleModelFeatureType_DaySHR10, v510);
  v491 = v41;
  v492 = v41;
  if (v41)
  {
    v180 = v492;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v288 = v180;
    return v495;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v513, &v614, NightingaleTraining_NightingaleModelFeatureType_NightSHR10, v510);
  v489 = v42;
  v490 = v42;
  if (v42)
  {
    v179 = v490;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v288 = v179;
    return v495;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v514, &v614, NightingaleTraining_NightingaleModelFeatureType_PSM, v510);
  v487 = v43;
  v488 = v43;
  if (v43)
  {
    v178 = v488;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v288 = v178;
    return v495;
  }

  transferFeatureToMLInputs(_:_:_:_:)(v515, &v614, NightingaleTraining_NightingaleModelFeatureType_PSS, v510);
  v485 = v44;
  v486 = v44;
  if (v44)
  {
    v177 = v486;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v288 = v177;
    return v495;
  }

  v609 = v509;
  v483 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v485; ; i = v239)
  {
    v480 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySSGGMd);
    IndexingIterator.next()();
    v481 = v607;
    v482 = v608;
    if (!v608)
    {
      break;
    }

    v478 = v481;
    v479 = v482;
    v457 = v482;
    v446 = v481;
    v603 = v481;
    v604 = v482;
    v458 = HyperParams.recipeForModel(model:)(v481, v482);
    v602 = v458;
    type metadata accessor for HyperParams();

    v45 = _dictionaryUpCast<A, B, C, D>(_:)();
    v46 = HyperParams.__allocating_init(recipe:)(v45);
    v459 = v46;

    v601 = v46;
    v447 = HyperParams.inputName.getter();
    v460 = v47;
    v599 = v447;
    v600 = v47;
    v448 = HyperParams.labelName.getter();
    v461 = v48;
    v597 = v448;
    v598 = v48;
    v449 = HyperParams.lossName.getter();
    v462 = v49;
    v595 = v449;
    v596 = v49;
    v450 = HyperParams.outputName.getter();
    v463 = v50;
    v593 = v450;
    v594 = v50;
    v464 = HyperParams.weightNames.getter();
    v592 = v464;
    v451 = HyperParams.labelSize.getter();
    v591 = v451;
    v452 = HyperParams.modelMaxNumDaysToNextPeriod.getter();
    v590 = v452;
    v453 = HyperParams.modelRepresentation.getter();
    v465 = v51;
    v588 = v453;
    v589 = v51;
    v454 = HyperParams.labelEncodingType.getter();
    v466 = v52;
    v586 = v454;
    v587 = v52;
    v53._countAndFlagsBits = HyperParams.modelPath.getter();
    v455 = v53._object;
    v54 = PFLTask.evalModelPath(path:)(v53);
    countAndFlagsBits = v54.value._countAndFlagsBits;
    v467 = v54.value._object;

    v468 = v457;
    v469 = v458;
    v470 = v459;
    v471 = v460;
    v472 = v461;
    v473 = v462;
    v474 = v463;
    v475 = v464;
    v476 = v465;
    v477 = v466;
    if (!v467)
    {
      v204 = v477;
      v205 = v476;
      v206 = v475;
      v207 = v474;
      v208 = v473;
      v209 = v472;
      v210 = v471;
      v211 = v470;
      v212 = v469;
      v213 = v468;
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v214 = swift_allocError();
      *v113 = 9;
      swift_willThrow();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v288 = v214;
      return v495;
    }

    v444 = countAndFlagsBits;
    v445 = v467;
    v435 = v467;
    v436 = countAndFlagsBits;
    v584 = countAndFlagsBits;
    v585 = v467;
    v437 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySfGtMd);
    v438 = _allocateUninitializedArray<A>(_:)();
    v440 = v55;
    v439 = v55 + 2;

    v56 = v460;
    v57 = v439;
    v58 = v440;
    *v440 = v447;
    v58[1] = v56;
    outlined init with copy of [Float](&v614, v57);

    v59 = v461;
    v60 = v440;
    v61 = v532;
    v440[3] = v448;
    v60[4] = v59;
    v582[11] = 0;
    v441 = v61->_rawValue;

    v442 = MEMORY[0x25F8895B0](v441, MEMORY[0x277D84CC0]);

    result = v442;
    v443 = v442 * v451;
    if ((v442 * v451) >> 64 != v443 >> 63)
    {
      goto LABEL_73;
    }

    v62 = Array.init(repeating:count:)();
    v63 = v438;
    v440[5] = v62;
    _finalizeUninitializedArray<A>(_:)();
    v430 = v63;
    v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v583 = Dictionary.init(dictionaryLiteral:)();
    v64 = HyperParams.labelEncodingTypeOnehot.unsafeMutableAddressor();
    v432 = *v64;
    v433 = *(v64 + 1);

    v434 = MEMORY[0x25F889340](v454, v466, v432, v433);

    if ((v434 & 1) == 0)
    {
      v66 = HyperParams.labelEncodingTypeRegression.unsafeMutableAddressor();
      v424 = *v66;
      v425 = *(v66 + 1);

      v426 = MEMORY[0x25F889340](v454, v466, v424, v425);

      if ((v426 & 1) == 0)
      {
        goto LABEL_30;
      }

      v423 = v452 - 1;
      if (__OFSUB__(v452, 1))
      {
        goto LABEL_75;
      }

      if (v423 < 0)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (v423 > 0xFFFFFFFFLL)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      else
      {
        v419 = v423;
        v420 = v539;
        v539[0] = v448;
        v539[1] = v461;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
        v421 = Dictionary.subscript.modify();
        v422 = v68;
        if (v68->_rawValue)
        {
          goto LABEL_29;
        }
      }

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_29:
      transferLabelToRegression(_:_:_:_:)(v532, v422, v451, v419);
      v421();
      outlined destroy of DefaultStringInterpolation();
      goto LABEL_30;
    }

    v427 = v538;
    v538[0] = v448;
    v538[1] = v461;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
    v428 = Dictionary.subscript.modify();
    v429 = v65;
    if (!v65->_rawValue)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    transferLabelToOnehotEncode(_:_:_:)(v532, v429, v451);
    v428();
    outlined destroy of DefaultStringInterpolation();
LABEL_30:
    v69 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
    v416 = *v69;
    v417 = *(v69 + 1);

    v418 = MEMORY[0x25F889340](v453, v465, v416, v417);

    if (v418)
    {
      v415 = type metadata accessor for EspressoEIRTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v70 = EspressoEIRTrainer.__allocating_init(_:)();
      v540[3] = v415;
      v540[4] = MEMORY[0x277D413C0];
      v540[0] = v70;
      outlined init with take of HealthDataQuery(v540, v582);
    }

    else
    {
      v414 = type metadata accessor for EspressoMILTrainer();
      NightingaleDPFLRunner.performanceMeasure.getter();
      v71 = EspressoMILTrainer.__allocating_init(_:)();
      v581[3] = v414;
      v581[4] = MEMORY[0x277D413D0];
      v581[0] = v71;
      outlined init with take of HealthDataQuery(v581, v582);
    }

    v388 = v578;
    outlined init with copy of HealthDataQuery(v582, v578);
    v395 = v579;
    v396 = v580;
    __swift_project_boxed_opaque_existential_1(v388, v579);
    static EspressoFunction.evaluation.getter();
    v391 = 2;
    v394 = MEMORY[0x277D837D0];
    v389 = _allocateUninitializedArray<A>(_:)();
    v390 = v72;

    v73 = v390;
    v74 = v460;
    *v390 = v447;
    v73[1] = v74;

    v75 = v389;
    v76 = v390;
    v77 = v461;
    v390[2] = v448;
    v76[3] = v77;
    _finalizeUninitializedArray<A>(_:)();
    v397 = v75;
    v392 = _allocateUninitializedArray<A>(_:)();
    v393 = v78;

    v79 = v393;
    v80 = v462;
    *v393 = v449;
    v79[1] = v80;

    v81 = v392;
    v82 = v393;
    v83 = v463;
    v393[2] = v450;
    v82[3] = v83;
    _finalizeUninitializedArray<A>(_:)();
    v84 = v480;
    v398 = v81;
    dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
    v399 = v84;
    v400 = v397;
    v401 = v398;
    v402 = v435;
    v403 = v457;
    v404 = v458;
    v405 = v459;
    v406 = v460;
    v407 = v461;
    v408 = v462;
    v409 = v463;
    v410 = v464;
    v411 = v465;
    v412 = v466;
    v413 = v84;
    if (v84)
    {
      v176 = v413;
      v166 = v412;
      v167 = v411;
      v168 = v410;
      v169 = v409;
      v170 = v408;
      v171 = v407;
      v172 = v406;
      v173 = v405;
      v174 = v404;
      v175 = v403;
      v165 = v402;
      v164 = v400;

      (*(v519 + 8))(v523, v518);
      __swift_destroy_boxed_opaque_existential_1(v578);
      __swift_destroy_boxed_opaque_existential_1(v582);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v288 = v176;
      return v495;
    }

    (*(v519 + 8))(v523, v518);
    __swift_destroy_boxed_opaque_existential_1(v578);
    v372 = v575;
    outlined init with copy of HealthDataQuery(v582, v575);
    v373 = v576;
    v374 = v577;
    __swift_project_boxed_opaque_existential_1(v372, v576);
    v85 = v399;
    v573 = 0;
    v574 = 1;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v375 = v85;
    v376 = v435;
    v377 = v457;
    v378 = v458;
    v379 = v459;
    v380 = v460;
    v381 = v461;
    v382 = v462;
    v383 = v463;
    v384 = v464;
    v385 = v465;
    v386 = v466;
    v387 = v85;
    if (v85)
    {
      v163 = v387;
      v153 = v386;
      v154 = v385;
      v155 = v384;
      v156 = v383;
      v157 = v382;
      v158 = v381;
      v159 = v380;
      v160 = v379;
      v161 = v378;
      v162 = v377;
      v152 = v376;
      __swift_destroy_boxed_opaque_existential_1(v575);
      __swift_destroy_boxed_opaque_existential_1(v582);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v288 = v163;
      return v495;
    }

    __swift_destroy_boxed_opaque_existential_1(v575);
    v572 = 0.0;
    v363 = v569;
    outlined init with copy of HealthDataQuery(v582, v569);
    v364 = v570;
    v365 = v571;
    v366 = __swift_project_boxed_opaque_existential_1(v363, v570);
    v367 = v583;

    v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SitMd);
    v369 = _allocateUninitializedArray<A>(_:)();
    v370 = v86;

    v87 = v460;
    v88 = v370;
    v89 = v535;
    v90 = v521;
    *v370 = v447;
    v88[1] = v87;
    v371 = v90 * v89;
    if ((v90 * v89) >> 64 != (v90 * v89) >> 63)
    {
      goto LABEL_74;
    }

    v370[2] = v371;

    v91 = v451;
    v92 = v370;
    v93 = v461;
    v370[3] = v448;
    v92[4] = v93;
    v92[5] = v91;
    _finalizeUninitializedArray<A>(_:)();
    v94 = Dictionary.init(dictionaryLiteral:)();
    v95 = v375;
    v346 = v94;
    v96 = dispatch thunk of EspressoTrainer.eval(_:featureSizes:numSamples:)();
    v347 = v95;
    v348 = v96;
    v349 = v346;
    v350 = v367;
    v351 = v435;
    v352 = v457;
    v353 = v458;
    v354 = v459;
    v355 = v460;
    v356 = v461;
    v357 = v462;
    v358 = v463;
    v359 = v464;
    v360 = v465;
    v361 = v466;
    v362 = v95;
    if (v95)
    {
      v151 = v362;
      v141 = v361;
      v142 = v360;
      v143 = v359;
      v144 = v358;
      v145 = v357;
      v146 = v356;
      v147 = v355;
      v148 = v354;
      v149 = v353;
      v150 = v352;
      v140 = v351;
      v139 = v350;

      __swift_destroy_boxed_opaque_existential_1(v569);
      __swift_destroy_boxed_opaque_existential_1(v582);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v288 = v151;
      return v495;
    }

    v340 = v348;

    v568 = v340;
    __swift_destroy_boxed_opaque_existential_1(v569);
    v567 = Array.init()();

    v564 = v340;
    v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSSaySfGGGMd);
    lazy protocol witness table accessor for type [[String : [Float]]] and conformance [A]();
    Collection<>.makeIterator()();
    v342 = 0.0;
    v343 = 0.0;
    v344 = 0.0;
    for (j = v347; ; j = v333)
    {
      v333 = j;
      v334 = v344;
      v336 = v343;
      v335 = v342;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySDySSSaySfGGGGMd);
      IndexingIterator.next()();
      v337 = v563;
      v338 = v335;
      v339 = v336;
      if (!v563)
      {
        break;
      }

      v332 = v337;
      v329 = v337;
      v551 = v337;

      v330 = v549;
      v549[0] = v449;
      v549[1] = v462;
      MEMORY[0x25F8891D0](&v550);
      outlined destroy of DefaultStringInterpolation();
      v331 = v550;
      if (v550)
      {
        v328 = v331;
        v323 = v331;
        v543 = v331;
        lazy protocol witness table accessor for type [Float] and conformance [A]();
        Collection.first.getter();
        v325 = v541;
        v324 = v542;

        v326 = v325;
        v327 = v324;
      }

      else
      {
        v326 = 0.0;
        v327 = 1;
      }

      v309 = v326;
      v310 = v340;
      v311 = v435;
      v312 = v457;
      v313 = v458;
      v314 = v459;
      v315 = v460;
      v316 = v461;
      v317 = v462;
      v318 = v463;
      v319 = v464;
      v320 = v465;
      v321 = v466;
      v322 = v329;
      if (v327)
      {
        v260 = v322;
        v263 = v321;
        v264 = v320;
        v265 = v319;
        v266 = v318;
        v267 = v317;
        v268 = v316;
        v269 = v315;
        v270 = v314;
        v271 = v313;
        v272 = v312;
        v262 = v311;
        v261 = v310;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v273 = swift_allocError();
        *v98 = 10;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v582);
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v288 = v273;
        return v495;
      }

      v308 = v309;
      v548 = v309;
      v292 = v334 + v309;
      v572 = v334 + v309;

      v293 = v546;
      v546[0] = v450;
      v546[1] = v463;
      MEMORY[0x25F8891D0](&v547);
      outlined destroy of DefaultStringInterpolation();
      v294 = v547;
      v295 = v340;
      v296 = v435;
      v297 = v457;
      v298 = v458;
      v299 = v459;
      v300 = v460;
      v301 = v461;
      v302 = v462;
      v303 = v463;
      v304 = v464;
      v305 = v465;
      v306 = v466;
      v307 = v329;
      if (!v547)
      {
        v274 = v307;
        v277 = v306;
        v278 = v305;
        v279 = v304;
        v280 = v303;
        v281 = v302;
        v282 = v301;
        v283 = v300;
        v284 = v299;
        v285 = v298;
        v286 = v297;
        v276 = v296;
        v275 = v295;
        lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
        v287 = swift_allocError();
        *v97 = 26;
        swift_willThrow();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();

        __swift_destroy_boxed_opaque_existential_1(v582);
        outlined destroy of [(start: UInt32, end: UInt32)]();

        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        outlined destroy of [(start: UInt32, end: UInt32)]();
        v288 = v287;
        return v495;
      }

      v291 = v294;
      v290 = v294;
      v545 = v294;

      v289 = &v544;
      v544 = v290;
      lazy protocol witness table accessor for type [Float] and conformance [A]();
      Array.append<A>(contentsOf:)();

      v342 = v292;
      v343 = v292;
      v344 = v292;
    }

    v257 = v339;
    v258 = v338;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSaySfGGMd);
    v99 = MEMORY[0x25F8895B0](v340);
    if (v99 <= 0)
    {
      v256 = v258;
    }

    else
    {
      v99 = MEMORY[0x25F8895B0](v340, v259);
      v572 = v257 / v99;
      v256 = v572;
    }

    v240 = v256;
    HKQueryOptions.init(rawValue:)(v99);
    v100 = HyperParams.intervalCorrectionFactor.getter();
    v101 = v333;
    v102 = EvalMetricsProcessor.process(labels:outputs:modelMaxNumDaysToNextPeriod:labelEncodingType:intervalCorrectionFactor:)(v532, &v567, v452, v454, v466, v100);
    v241 = v101;
    v242._rawValue = v102;
    v243 = v340;
    v244 = v435;
    v245 = v457;
    v246 = v458;
    v247 = v459;
    v248 = v460;
    v249 = v461;
    v250 = v462;
    v251 = v463;
    v252 = v464;
    v253 = v465;
    v254 = v466;
    v255 = v101;
    if (v101)
    {
      v138 = v255;
      v128 = v254;
      v129 = v253;
      v130 = v252;
      v131 = v251;
      v132 = v250;
      v133 = v249;
      v134 = v248;
      v135 = v247;
      v136 = v246;
      v137 = v245;
      v127 = v244;
      v126 = v243;
      outlined destroy of [(start: UInt32, end: UInt32)]();

      __swift_destroy_boxed_opaque_existential_1(v582);
      outlined destroy of [(start: UInt32, end: UInt32)]();

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v288 = v138;
      return v495;
    }

    v231 = v242._rawValue;
    v560 = v242._rawValue;
    v232 = &v559;
    EvalMetricsProcessor.calculateMetrics(labels:outputs:)(&v559, v532, v242);
    v233 = v561;
    memcpy(v561, v232, 0x98uLL);
    v234 = v561[0];
    v235 = &v561[1];
    v236 = 144;
    memcpy(__dst, &v561[1], sizeof(__dst));
    v561[19] = v561[0];
    memcpy(v562, &v561[1], sizeof(v562));
    v237 = AggMetrics.toDictionary(prefix:)();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
    v104 = v241;
    v238 = v103;
    Dictionary.merge(_:uniquingKeysWith:)();
    v239 = v104;
    if (v104)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      v125 = v189;

      outlined destroy of [(start: UInt32, end: UInt32)]();
      outlined destroy of [(start: UInt32, end: UInt32)]();
      v288 = v125;
      return v495;
    }

    v216 = 1;
    v105 = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    v228 = &v557;
    v557 = v105;
    v558 = v106;
    v226 = "";
    v224 = 0;
    v225 = 1;
    v107 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v215 = v107._object;
    MEMORY[0x25F889DE0](v107._countAndFlagsBits);

    v556[2] = v446;
    v556[3] = v457;
    v220 = MEMORY[0x277D837D0];
    v221 = MEMORY[0x277D83838];
    v222 = MEMORY[0x277D83830];
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v108 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("_", v216, v225 & 1);
    v217 = v108._object;
    MEMORY[0x25F889DE0](v108._countAndFlagsBits);

    v109 = NightingalePFLRunner.keyMetricsLossBeforeTraining.unsafeMutableAddressor();
    v218 = *v109;
    v219 = *(v109 + 1);

    v223 = v556;
    v556[0] = v218;
    v556[1] = v219;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of DefaultStringInterpolation();
    v110 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v226, v224, v225 & 1);
    v227 = v110._object;
    MEMORY[0x25F889DE0](v110._countAndFlagsBits);

    v230 = v557;
    v229 = v558;

    outlined destroy of DefaultStringInterpolation();
    v111 = MEMORY[0x25F889320](v230, v229);
    v555 = MEMORY[0x277D83A90];
    v554 = v240;
    v552 = v111;
    v553 = v112;
    Dictionary.subscript.setter();
    outlined destroy of [(start: UInt32, end: UInt32)]();

    outlined destroy of [(start: UInt32, end: UInt32)]();

    __swift_destroy_boxed_opaque_existential_1(v582);
    outlined destroy of [(start: UInt32, end: UInt32)]();
  }

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v191 = NightingaleDPFLRunner.performanceMeasure.getter();
  v192 = 1;
  v190 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Training", 8uLL, 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v195 = v114;

  v606 = v195;
  v194 = NightingaleDPFLRunner.performanceMeasure.getter();
  v193 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, v192 & 1)._object;
  dispatch thunk of PerformanceMeasure.finish(_:)();
  v199 = v115;

  v605 = v199;
  NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v499);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  v201 = _allocateUninitializedArray<A>(_:)();
  v198 = v116;
  v117 = NightingalePFLRunner.keyMetricsTrainingDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v117, v198);
  v118 = v195;
  v119 = v198;
  v197 = MEMORY[0x277D839F8];
  v198[5] = MEMORY[0x277D839F8];
  v119[2] = v118;
  v196 = v119 + 6;
  v120 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
  outlined init with copy of String(v120, v196);
  v121 = v198;
  v122 = v199;
  v198[11] = v197;
  v121[8] = v122;
  _finalizeUninitializedArray<A>(_:)();
  v202 = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd);
  v123 = v480;
  Dictionary.merge(_:uniquingKeysWith:)();
  v203 = v123;
  if (v123)
  {
    goto LABEL_68;
  }

  v187 = v617;

  static HIDPFLUtils.checkMetrics(_:)();
  v188 = 0;
  v189 = 0;

  v184 = 0;
  type metadata accessor for PFLTaskResult();
  v185 = &v617;
  v183 = v617;

  v186 = PFLTaskResult.__allocating_init(json:vector:)();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  outlined destroy of [(start: UInt32, end: UInt32)]();
  return v186;
}

uint64_t NightingalePFLRunner.runPlatformTesting(modelPath:hyperParams:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a1;
  v117 = a2;
  v108 = a3;
  v115 = a4;
  v5 = v4;
  v116 = v5;
  v110 = "Fatal error";
  v111 = "Range requires lowerBound <= upperBound";
  v112 = "Swift/Range.swift";
  v113 = closure #1 in NightingalePFLRunner.runPlatformTesting(modelPath:hyperParams:metrics:);
  v114 = closure #37 in NightingaleDPFLRunner.run(task:useCase:context:);
  v155 = 0;
  v156 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v138 = 0;
  v135 = 0;
  v134 = 0;
  v133 = 0;
  v119 = type metadata accessor for EspressoFunction();
  v120 = *(v119 - 8);
  v121 = v119 - 8;
  v123 = *(v120 + 64);
  v122 = (v123 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x28223BE20](v118);
  v124 = &v50 - v122;
  v125 = v122;
  v8 = MEMORY[0x28223BE20](v7);
  v126 = &v50 - v125;
  v155 = v8;
  v156 = v9;
  v154 = a3;
  v153 = v10;
  v152 = v11;
  v127 = HyperParams.modelRepresentation.getter();
  v130 = v12;
  v13 = HyperParams.modelRepresentationEIR.unsafeMutableAddressor();
  v128 = *v13;
  v129 = *(v13 + 1);

  v131 = MEMORY[0x25F889340](v127, v130, v128, v129);

  if (v131)
  {
    v107 = type metadata accessor for EspressoEIRTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v14 = EspressoEIRTrainer.__allocating_init(_:)();
    v132[3] = v107;
    v132[4] = MEMORY[0x277D413C0];
    v132[0] = v14;
    outlined init with take of HealthDataQuery(v132, __dst);
  }

  else
  {
    v106 = type metadata accessor for EspressoMILTrainer();
    NightingaleDPFLRunner.performanceMeasure.getter();
    v15 = EspressoMILTrainer.__allocating_init(_:)();
    v150[3] = v106;
    v150[4] = MEMORY[0x277D413D0];
    v150[0] = v15;
    outlined init with take of HealthDataQuery(v150, __dst);
  }

  v92 = v147;
  outlined init with copy of HealthDataQuery(__dst, v147);
  v101 = v148;
  v102 = v149;
  v98 = __swift_project_boxed_opaque_existential_1(v92, v148);
  static EspressoFunction.training.getter();
  v97 = MEMORY[0x277D837D0];
  v94 = _allocateUninitializedArray<A>(_:)();
  v93 = v16;
  v17 = HyperParams.inputName.getter();
  v18 = v93;
  *v93 = v17;
  v18[1] = v19;
  v20 = HyperParams.labelName.getter();
  v21 = v93;
  v22 = v20;
  v23 = v94;
  v93[2] = v22;
  v21[3] = v24;
  _finalizeUninitializedArray<A>(_:)();
  v99 = v23;
  v96 = _allocateUninitializedArray<A>(_:)();
  v95 = v25;
  v26 = HyperParams.lossName.getter();
  v27 = v95;
  v28 = v26;
  v29 = v96;
  *v95 = v28;
  v27[1] = v30;
  _finalizeUninitializedArray<A>(_:)();
  v100 = v29;
  v31 = HyperParams.weightNames.getter();
  v32 = v109;
  v103 = v31;
  dispatch thunk of EspressoTrainer.load(path:functions:inputs:outputs:weights:)();
  v104 = v32;
  v105 = v32;
  if (v32)
  {
    v52 = v105;

    (*(v120 + 8))(v126, v119);
    __swift_destroy_boxed_opaque_existential_1(v147);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v53 = v52;
  }

  else
  {

    v83 = *(v120 + 8);
    v84 = v120 + 8;
    v83(v126, v119);
    __swift_destroy_boxed_opaque_existential_1(v147);
    v85 = v144;
    outlined init with copy of HealthDataQuery(__dst, v144);
    v88 = v145;
    v89 = v146;
    v86 = __swift_project_boxed_opaque_existential_1(v85, v145);
    v87 = HyperParams.batchSize.getter();
    v33 = HyperParams.learningRate.getter();
    v34 = v104;
    v142 = v33;
    v143 = 0;
    dispatch thunk of EspressoTrainer.finalize(batchSize:learningRate:)();
    v90 = v34;
    v91 = v34;
    if (v34)
    {
      v51 = v91;
      __swift_destroy_boxed_opaque_existential_1(v144);
      __swift_destroy_boxed_opaque_existential_1(__dst);
      v53 = v51;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v144);
      v77 = v139;
      outlined init with copy of HealthDataQuery(__dst, v139);
      v78 = v140;
      v79 = v141;
      __swift_project_boxed_opaque_existential_1(v77, v140);
      static EspressoFunction.training.getter();
      v35 = v90;
      v36 = dispatch thunk of EspressoTrainer.extractWeights(function:)();
      v80 = v35;
      v81 = v36;
      v82 = v35;
      if (v35)
      {
        v50 = v82;
        v83(v124, v119);
        __swift_destroy_boxed_opaque_existential_1(v139);
        __swift_destroy_boxed_opaque_existential_1(__dst);
        v53 = v50;
      }

      else
      {
        v75 = v81;
        v83(v124, v119);
        v76 = MEMORY[0x25F8895B0](v75, MEMORY[0x277D83A90]);
        v138 = v76;

        __swift_destroy_boxed_opaque_existential_1(v139);
        if (v76 < 0)
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v136 = 0;
        v137 = v76;
        v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
        v37 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
        v38 = v80;
        v39 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(v113, 0, v71, MEMORY[0x277D83A90], MEMORY[0x277D84A98], v37, MEMORY[0x277D84AC0], v72);
        v73 = v38;
        v74 = v39;
        if (v38)
        {
          __break(1u);
        }

        else
        {
          v57 = v74;
          v135 = v74;
          v59 = NightingaleDPFLRunner.performanceMeasure.getter();
          object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PluginE2E", 9uLL, 1)._object;
          dispatch thunk of PerformanceMeasure.finish(_:)();
          v60 = v40;

          v134 = v60;
          NightingalePFLRunner.sendLocation(_:hyperParams:)(8, v108);

          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
          v65 = _allocateUninitializedArray<A>(_:)();
          v63 = v41;
          v42 = NightingalePFLRunner.keyMetricsE2EDurationS.unsafeMutableAddressor();
          outlined init with copy of String(v42, v63);
          v43 = v60;
          v44 = v63;
          v62 = MEMORY[0x277D839F8];
          v63[5] = MEMORY[0x277D839F8];
          v44[2] = v43;
          v61 = v44 + 6;
          v45 = NightingalePFLRunner.keyMetricsLoss.unsafeMutableAddressor();
          outlined init with copy of String(v45, v61);
          v46 = v63;
          v63[11] = v62;
          v46[8] = 0x3F847AE147AE147BLL;
          _finalizeUninitializedArray<A>(_:)();
          v66 = MEMORY[0x277D837D0];
          v67 = MEMORY[0x277D84F70] + 8;
          v68 = MEMORY[0x277D837E0];
          Dictionary.init(dictionaryLiteral:)();
          v47 = v73;
          v48 = Dictionary.merging(_:uniquingKeysWith:)();
          v69 = v47;
          v70 = v48;
          if (!v47)
          {
            v54 = v70;
            v133 = v70;
            type metadata accessor for PFLTaskResult();
            v55 = Array.toData()();
            v56 = PFLTaskResult.__allocating_init(json:vector:)();

            __swift_destroy_boxed_opaque_existential_1(__dst);
            return v56;
          }
        }

        __break(1u);
      }
    }
  }

  return v72;
}

uint64_t closure #1 in NightingalePFLRunner.runPlatformTesting(modelPath:hyperParams:metrics:)()
{
  lazy protocol witness table accessor for type Float and conformance Float();
  lazy protocol witness table accessor for type UInt32 and conformance UInt32();
  return static BinaryFloatingPoint<>.random(in:)();
}

uint64_t NightingalePFLRunner.sendLocation(_:hyperParams:)(char a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  v27 = v2;
  if ((HyperParams.reportLastReachLocation.getter() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_5;
  }

  queue = *(v2 + 48);
  MEMORY[0x277D82BE0](queue);

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;

  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in NightingalePFLRunner.sendLocation(_:hyperParams:);
  *(v12 + 24) = v13;

  v23 = partial apply for thunk for @callee_guaranteed () -> ();
  v24 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = 0;
  v21 = thunk for @escaping @callee_guaranteed () -> ();
  v22 = &block_descriptor_0;
  block = _Block_copy(&aBlock);

  dispatch_sync(queue, block);
  _Block_release(block);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x277D82BD8](queue);
    v11 = partial apply for closure #1 in NightingalePFLRunner.sendLocation(_:hyperParams:);
LABEL_5:
    v8 = NightingaleDPFLRunner.taskId.getter();
    v10 = v4;
    v26[1] = a1;
    lazy protocol witness table accessor for type ReachLocation and conformance ReachLocation();
    v7 = String.init<A>(describing:)();
    v9 = v5;
    NightingaleDPFLRunner.useCase.getter(v26);
    v25 = v26[0];
    v6 = default argument 1 of NightingaleDPFLRunner.sendLocation(_:_:)();
    static NightingaleTelemetry.sendNightingaleReachTelemetryLazy(taskId:location:useCase:errorCode:)(v8, v10, v7, v9, &v25, v6);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v11);
    return outlined consume of (@escaping @callee_guaranteed () -> ())?(0);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NightingalePFLRunner.sendTelemetrics(flycatcherResults:)(NightingaleTraining::FlycatcherTelemetrics *flycatcherResults)
{
  memcpy(__dst, flycatcherResults, sizeof(__dst));
  v5 = flycatcherResults;
  v4 = v1;
  memcpy(v3, __dst, sizeof(v3));
  static NightingaleTelemetry.sendNightingaleShadowEvaluationTelemetryLazy(flycatcherResults:)(v3);
}

uint64_t NightingalePFLRunner.deinit()
{

  outlined destroy of DefaultStringInterpolation();
  MEMORY[0x277D82BD8](*(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  return v2;
}

uint64_t protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingalePFLRunner()
{
  v3 = v0;
  *(v0 + 16) = v0;
  v1 = swift_task_alloc();
  *(v3 + 24) = v1;
  *v1 = *(v3 + 16);
  v1[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return NightingaleDPFLRunner.isDataAvailable(taskPreferences:)();
}

uint64_t protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingalePFLRunner(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for PFLTaskRunner.run(task:useCase:context:) in conformance NightingaleDPFLRunner;

  return NightingalePFLRunner.run(task:useCase:context:)(a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type ReachLocation and conformance ReachLocation()
{
  v2 = lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation;
  if (!lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation;
  if (!lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation;
  if (!lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReachLocation and conformance ReachLocation);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  v2 = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for OS_dispatch_queue);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NightingalePFLModelType and conformance NightingalePFLModelType()
{
  v2 = lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType;
  if (!lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType;
  if (!lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NightingalePFLModelType and conformance NightingalePFLModelType);
    return WitnessTable;
  }

  return v2;
}

uint64_t partial apply for closure #1 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 36);
  v10 = *(v1 + 40);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #1 in NightingalePFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10);
}

uint64_t _sSa22_allocateUninitializedySayxG_SpyxGtSiFZSo17OS_dispatch_queueC8DispatchE10AttributesV_Tt0gq5(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      type metadata accessor for OS_dispatch_queue.Attributes();
      v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    type metadata accessor for OS_dispatch_queue.Attributes();
    return v2;
  }

  return result;
}

uint64_t _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF6_deferL_yysACRd_0_r_0_lF(void *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1 || *a1 != a2 || a1[1] != a3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  type metadata accessor for Array();
  Array._endMutation()();
}

uint64_t partial apply for closure #1 in OSLogArguments.append<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = lazy protocol witness table accessor for type Int and conformance Int();
  v5 = MEMORY[0x277D83B88];

  return closure #1 in OSLogArguments.append<A>(_:)(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t lazy protocol witness table accessor for type ArraySlice<UInt32> and conformance ArraySlice<A>()
{
  v2 = lazy protocol witness table cache variable for type ArraySlice<UInt32> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<UInt32> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVys6UInt32VGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ArraySlice<UInt32> and conformance ArraySlice<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined init with copy of (flow: [Float], daySHR10: [Float], nightSHR10: [Float], periodStartMean: [Float], periodStartStd: [Float], labels: [UInt32], cycleStats: (size: Float, mean: Float, std: Float), daySHR10CountStats: (mean: Float?, std: Float))(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *a2 = v3;
  v4 = a1[1];

  *(a2 + 8) = v4;
  v5 = a1[2];

  *(a2 + 16) = v5;
  v6 = a1[3];

  *(a2 + 24) = v6;
  v7 = a1[4];

  *(a2 + 32) = v7;
  v9 = a1[5];

  result = a2;
  *(a2 + 40) = v9;
  *(a2 + 48) = a1[6];
  *(a2 + 56) = *(a1 + 14);
  *(a2 + 60) = *(a1 + 60);
  *(a2 + 68) = *(a1 + 17);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> outlined destroy of (flow: [Float], daySHR10: [Float], nightSHR10: [Float], periodStartMean: [Float], periodStartStd: [Float], labels: [UInt32], cycleStats: (size: Float, mean: Float, std: Float), daySHR10CountStats: (mean: Float?, std: Float))()
{
}

uint64_t outlined init with copy of FlycatcherTelemetrics?(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);

  result = a2;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 112) = *(a1 + 112);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 144) = *(a1 + 144);
  *(a2 + 152) = *(a1 + 152);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 176);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 216) = *(a1 + 216);
  *(a2 + 224) = *(a1 + 224);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 240) = *(a1 + 240);
  *(a2 + 248) = *(a1 + 248);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 272) = *(a1 + 272);
  return result;
}

uint64_t _s19NightingaleTraining21FlycatcherTelemetricsVSgWOg(uint64_t a1)
{
  v2 = -1;
  if (!HIDWORD(*(a1 + 8)))
  {
    v2 = *(a1 + 8);
  }

  return (v2 + 1);
}

uint64_t partial apply for closure #2 in NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 28);
  v9 = *(v1 + 32);
  v10 = *(v1 + 36);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.resolveTask(for:taskPreferences:) in conformance NightingaleDPFLRunner;

  return closure #2 in NightingalePFLRunner.run(task:useCase:context:)(a1, v6, v7, v8, v9, v10);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ReachLocation(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF6)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 9) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 246;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 10;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReachLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF6)
  {
    v5 = ((a3 + 9) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF6)
  {
    v4 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 9;
    }
  }

  return result;
}

uint64_t dispatch thunk of NightingalePFLRunner.isDataAvailable(taskPreferences:)(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for PFLTaskRunner.isDataAvailable(taskPreferences:) in conformance NightingaleDPFLRunner;

  return v6(a1);
}

uint64_t dispatch thunk of NightingalePFLRunner.run(task:useCase:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v12 = (*(*v4 + 264) + **(*v4 + 264));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = dispatch thunk of NightingaleDPFLRunner.run(task:useCase:context:);

  return v12(a1, a2, a3, a4);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  v2 = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>()
{
  v2 = lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>;
  if (!lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSAySo7NSErrorCSgGMd);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AutoreleasingUnsafeMutablePointer<NSError?> and conformance AutoreleasingUnsafeMutablePointer<A>);
    return WitnessTable;
  }

  return v2;
}

NgtMenstrualAlgorithmsWristTemperature __swiftcall NgtMenstrualAlgorithmsWristTemperature.__allocating_init(temperature:forWatchIdentifier:)(Swift::Double temperature, Swift::String forWatchIdentifier)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = @nonobjc NgtMenstrualAlgorithmsWristTemperature.init(temperature:forWatchIdentifier:)(temperature);
  result._temperatureCelsius = v5;
  result._watchIdentifier = v4;
  result.super.isa = v3;
  return result;
}

NightingaleTraining::AgeEnum __swiftcall getAgeEnum(value:valueForNA:)(Swift::Float value, Swift::Float_optional *valueForNA)
{
  v7 = *&valueForNA;
  v8 = BYTE4(valueForNA);
  if (Float.isFinite.getter())
  {
    v4 = (v8 & 1) == 0 && v7 == value;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (value < 21.0)
  {
    return 1;
  }

  if (value < 26.0)
  {
    return 2;
  }

  if (value < 31.0)
  {
    return 3;
  }

  if (value < 36.0)
  {
    return 4;
  }

  if (value < 41.0)
  {
    return 5;
  }

  if (value >= 46.0)
  {
    return 7;
  }

  return 6;
}

NightingaleTraining::BMIEnum __swiftcall getBMIEnum(value:valueForNA:)(Swift::Float value, Swift::Float_optional *valueForNA)
{
  v7 = *&valueForNA;
  v8 = BYTE4(valueForNA);
  if (Float.isFinite.getter())
  {
    v4 = (v8 & 1) == 0 && v7 == value;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (value < 18.5)
  {
    return 1;
  }

  if (value < 25.0)
  {
    return 2;
  }

  if (value < 30.0)
  {
    return 3;
  }

  if (value >= 35.0)
  {
    return 5;
  }

  return 4;
}

uint64_t BMIEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return -1;
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
  }

  return 4;
}

NightingaleTraining::CycleStdEnum __swiftcall getCycleStdEnum(value:valueForNA:)(Swift::Float value, Swift::Float_optional *valueForNA)
{
  v7 = *&valueForNA;
  v8 = BYTE4(valueForNA);
  if (Float.isFinite.getter())
  {
    v4 = (v8 & 1) == 0 && v7 == value;
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  if (value < 0.5)
  {
    return 1;
  }

  if (value < 1.0)
  {
    return 2;
  }

  if (value < 1.5)
  {
    return 3;
  }

  if (value < 2.0)
  {
    return 4;
  }

  if (value < 2.5)
  {
    return 5;
  }

  if (value < 3.0)
  {
    return 6;
  }

  if (value < 3.5)
  {
    return 7;
  }

  if (value < 4.0)
  {
    return 8;
  }

  if (value < 4.5)
  {
    return 9;
  }

  if (value < 5.0)
  {
    return 10;
  }

  if (value < 5.5)
  {
    return 11;
  }

  if (value < 6.0)
  {
    return 12;
  }

  if (value < 8.0)
  {
    return 13;
  }

  if (value < 10.0)
  {
    return 14;
  }

  if (value < 15.0)
  {
    return 15;
  }

  if (value >= 20.0)
  {
    return 17;
  }

  return 16;
}

uint64_t CycleStdEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      v2 = 0;
      break;
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    case 5:
      v2 = 4;
      break;
    case 6:
      v2 = 5;
      break;
    case 7:
      v2 = 6;
      break;
    case 8:
      v2 = 7;
      break;
    case 9:
      v2 = 8;
      break;
    case 10:
      v2 = 9;
      break;
    case 11:
      v2 = 10;
      break;
    case 12:
      v2 = 11;
      break;
    case 13:
      v2 = 12;
      break;
    case 14:
      v2 = 13;
      break;
    case 15:
      v2 = 14;
      break;
    case 16:
      v2 = 15;
      break;
    case 17:
      v2 = 16;
      break;
    default:
      v2 = -1;
      break;
  }

  return v2;
}

uint64_t AgeEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return -1;
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
  }

  return 6;
}

uint64_t FlycatcherTelemetrics.recipeId.getter()
{
  v2 = *v0;

  return v2;
}

uint64_t FlycatcherTelemetrics.recipeId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void __swiftcall FlycatcherTelemetrics.init()(NightingaleTraining::FlycatcherTelemetrics *__return_ptr retstr)
{
  bzero(v2, 0x118uLL);
  *v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  memset(&v2[16], 255, 48);
  v2[64] = 0;
  memset(&v2[72], 255, 208);
  memcpy(retstr, v2, sizeof(NightingaleTraining::FlycatcherTelemetrics));
}

void __swiftcall FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)(NightingaleTraining::FlycatcherTelemetrics *__return_ptr retstr, Swift::String recipeId, Swift::Int cycleIdx, Swift::Int ensembleLogicId, Swift::Int selectedModelId, Swift::Int abserr, Swift::Int widthOneSide, Swift::Int widthTwoSide, Swift::Bool coverage, Swift::Int baselineMean, Swift::Int baselineStd, Swift::Int numHistCycles, Swift::Int cycleLen, Swift::Int daysToModel0DRS, Swift::Int daysToModel1DRS, Swift::Int daysToModel2DRS, Swift::Int model0Width, Swift::Int model1Width, Swift::Int model2Width, Swift::Int daysSinceLastPeriod, Swift::Int daysSinceLastContraceptionEnd, Swift::Int daysSinceLastPregnancyEnd, Swift::Int daysSinceLastLactationEnd, Swift::Int sliceDayHRCount, Swift::Int sliceDayHRMean, Swift::Int sliceDayHRStd, Swift::Int sliceNightHRCount, Swift::Int sliceNightHRMean, Swift::Int sliceNightHRStd, Swift::Int numOutliers, Swift::Int numCycles, Swift::Int fullCycleLengthMean, Swift::Int fullCycleLengthStd, Swift::Int bmi, Swift::Int age)
{
  retstr->recipeId = recipeId;
  retstr->cycleIdx = cycleIdx;
  retstr->ensembleLogicId = ensembleLogicId;
  retstr->selectedModelId = selectedModelId;
  retstr->abserr = abserr;
  retstr->widthOneSide = widthOneSide;
  retstr->widthTwoSide = widthTwoSide;
  retstr->coverage = coverage;
  retstr->baselineMean = baselineMean;
  retstr->baselineStd = baselineStd;
  retstr->numHistCycles = numHistCycles;
  retstr->cycleLen = cycleLen;
  retstr->daysToModel0DRS = daysToModel0DRS;
  retstr->daysToModel1DRS = daysToModel1DRS;
  retstr->daysToModel2DRS = daysToModel2DRS;
  retstr->model0Width = model0Width;
  retstr->model1Width = model1Width;
  retstr->model2Width = model2Width;
  retstr->daysSinceLastPeriod = daysSinceLastPeriod;
  retstr->daysSinceLastContraceptionEnd = daysSinceLastContraceptionEnd;
  retstr->daysSinceLastPregnancyEnd = daysSinceLastPregnancyEnd;
  retstr->daysSinceLastLactationEnd = daysSinceLastLactationEnd;
  retstr->sliceDayHRCount = sliceDayHRCount;
  retstr->sliceDayHRMean = sliceDayHRMean;
  retstr->sliceDayHRStd = sliceDayHRStd;
  retstr->sliceNightHRCount = sliceNightHRCount;
  retstr->sliceNightHRMean = sliceNightHRMean;
  retstr->sliceNightHRStd = sliceNightHRStd;
  retstr->numOutliers = numOutliers;
  retstr->numCycles = numCycles;
  retstr->fullCycleLengthMean = fullCycleLengthMean;
  retstr->fullCycleLengthStd = fullCycleLengthStd;
  retstr->bmi = bmi;
  retstr->age = age;
}

NightingaleTraining::AgeEnum_optional __swiftcall AgeEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
  }

  return 8;
}

NightingaleTraining::BMIEnum_optional __swiftcall BMIEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
  }

  return 6;
}

NightingaleTraining::NumberOfDaysForFactorsEnum_optional __swiftcall NumberOfDaysForFactorsEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
    case 7:
      return 8;
  }

  return 9;
}

uint64_t NumberOfDaysForFactorsEnum.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return -1;
    case 1:
      return 0;
    case 2:
      return 1;
    case 3:
      return 2;
    case 4:
      return 3;
    case 5:
      return 4;
    case 6:
      return 5;
    case 7:
      return 6;
  }

  return 7;
}

NightingaleTraining::CycleStdEnum_optional __swiftcall CycleStdEnum.init(rawValue:)(Swift::Int rawValue)
{
  switch(rawValue)
  {
    case -1:
      return 0;
    case 0:
      return 1;
    case 1:
      return 2;
    case 2:
      return 3;
    case 3:
      return 4;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
      return 7;
    case 7:
      return 8;
    case 8:
      return 9;
    case 9:
      return 10;
    case 10:
      return 11;
    case 11:
      return 12;
    case 12:
      return 13;
    case 13:
      return 14;
    case 14:
      return 15;
    case 15:
      return 16;
    case 16:
      return 17;
  }

  return 18;
}

NightingaleTraining::AgeEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance AgeEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::AgeEnum_optional *a2@<X8>)
{
  result.value = AgeEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AgeEnum@<X0>(uint64_t *a1@<X8>)
{
  result = AgeEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::BMIEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance BMIEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::BMIEnum_optional *a2@<X8>)
{
  result.value = BMIEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BMIEnum@<X0>(uint64_t *a1@<X8>)
{
  result = BMIEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::NumberOfDaysForFactorsEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance NumberOfDaysForFactorsEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::NumberOfDaysForFactorsEnum_optional *a2@<X8>)
{
  result.value = NumberOfDaysForFactorsEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NumberOfDaysForFactorsEnum@<X0>(uint64_t *a1@<X8>)
{
  result = NumberOfDaysForFactorsEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::CycleStdEnum_optional protocol witness for RawRepresentable.init(rawValue:) in conformance CycleStdEnum@<W0>(Swift::Int *a1@<X0>, NightingaleTraining::CycleStdEnum_optional *a2@<X8>)
{
  result.value = CycleStdEnum.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CycleStdEnum@<X0>(uint64_t *a1@<X8>)
{
  result = CycleStdEnum.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

NightingaleTraining::NumberOfDaysForFactorsEnum __swiftcall getNumberOfDaysForFactors(value:valueForNA:)(Swift::Int value, Swift::Int_optional valueForNA)
{
  if (!valueForNA.is_nil && valueForNA.value == value)
  {
    return 0;
  }

  if (value < 1)
  {
    return 1;
  }

  if (value < 5)
  {
    return 2;
  }

  if (value < 10)
  {
    return 3;
  }

  if (value < 15)
  {
    return 4;
  }

  if (value < 20)
  {
    return 5;
  }

  if (value < 25)
  {
    return 6;
  }

  if (value >= 30)
  {
    return 8;
  }

  return 7;
}

double ShadowEvaluation.urCycleLength.getter()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  swift_endAccess();
  return v2;
}

uint64_t ShadowEvaluation.urCycleLength.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  return swift_endAccess();
}

uint64_t ShadowEvaluation.init(config:urCycleLength:urPeriodLength:)(uint64_t a1, double a2, double a3)
{
  MEMORY[0x277D82BE0](a1);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  MEMORY[0x277D82BD8](a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type AgeEnum and conformance AgeEnum()
{
  v2 = lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum;
  if (!lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum;
  if (!lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type AgeEnum and conformance AgeEnum);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type BMIEnum and conformance BMIEnum()
{
  v2 = lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum;
  if (!lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum;
  if (!lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type BMIEnum and conformance BMIEnum);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum()
{
  v2 = lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum;
  if (!lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum;
  if (!lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NumberOfDaysForFactorsEnum and conformance NumberOfDaysForFactorsEnum);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type CycleStdEnum and conformance CycleStdEnum()
{
  v2 = lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum;
  if (!lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum;
  if (!lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type CycleStdEnum and conformance CycleStdEnum);
    return WitnessTable;
  }

  return v2;
}

Swift::tuple_dayInputs_OpaquePointer_chronologicalOrderedCFs_OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowEvaluation.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:daySHR10s:nightSHR10s:daySHRCounts:nightSHRCounts:)(Swift::OpaquePointer flow, Swift::OpaquePointer otr, Swift::OpaquePointer spotting, Swift::OpaquePointer cycleFactors, Swift::OpaquePointer swt, Swift::OpaquePointer daySHR10s, Swift::OpaquePointer nightSHR10s, Swift::OpaquePointer daySHRCounts, Swift::OpaquePointer nightSHRCounts)
{
  rawValue = daySHRCounts._rawValue;
  v81 = nightSHR10s._rawValue;
  v80 = daySHR10s._rawValue;
  v78 = swt._rawValue;
  v70 = cycleFactors._rawValue;
  v75 = spotting._rawValue;
  v71 = flow._rawValue;
  v87 = nightSHRCounts._rawValue;
  v72 = nightSHRCounts._rawValue;
  v73 = 0;
  v109[1] = 0;
  v99 = 0;
  *&v95[8] = 0;
  v109[10] = flow._rawValue;
  v109[9] = otr._rawValue;
  v109[8] = spotting._rawValue;
  v109[7] = cycleFactors._rawValue;
  v109[6] = swt._rawValue;
  v109[5] = daySHR10s._rawValue;
  v109[4] = nightSHR10s._rawValue;
  v109[3] = daySHRCounts._rawValue;
  v109[2] = nightSHRCounts._rawValue;
  v92 = MEMORY[0x277D84CC0];
  v93 = MEMORY[0x277D84CD0];

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32Vs5UInt8V_GMd);
  lazy protocol witness table accessor for type [UInt32 : UInt8].Keys and conformance [A : B].Keys();
  v109[0] = Set.init<A>(_:)();

  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShys6UInt32VGMd);
  v76 = v89;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSb_GMd);
  lazy protocol witness table accessor for type [UInt32 : Bool].Keys and conformance [A : B].Keys();
  v86 = v109;
  Set.formUnion<A>(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_SSt_GMd);
  lazy protocol witness table accessor for type [UInt32 : (Float, String)].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();
  v82 = MEMORY[0x277D83A90];

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSf_GMd);
  v84 = lazy protocol witness table accessor for type [UInt32 : Float].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();
  v88 = MEMORY[0x277D83B88];

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVys6UInt32VSi_GMd);
  v91 = lazy protocol witness table accessor for type [UInt32 : Int].Keys and conformance [A : B].Keys();
  Set.formUnion<A>(_:)();

  Set.formUnion<A>(_:)();
  v94 = v109[0];

  *v95 = Set.isEmpty.getter();

  if (v95[0])
  {
    lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
    v34[0] = 0;
    v34[1] = swift_allocError();
    *v31 = 30;
    swift_willThrow();
    v30 = v109;
    outlined destroy of [(start: UInt32, end: UInt32)]();
    goto LABEL_14;
  }

  v66 = v69;
  v61 = v109[0];

  v101 = v61;

  v62 = v34;
  MEMORY[0x28223BE20](v34);
  v63 = v34;
  v64 = v33;
  v33[2] = v9;
  v33[3] = v10;
  v33[4] = v11;
  v33[5] = v12;
  v33[6] = v81;
  v33[7] = v72;
  v33[8] = v13;
  v65 = type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  v14 = lazy protocol witness table accessor for type Set<UInt32> and conformance Set<A>();
  v15 = v66;
  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ShadowEvaluation.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:daySHR10s:nightSHR10s:daySHRCounts:nightSHRCounts:), v64, v76, v65, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v16);
  v67 = v15;
  v68 = v17;
  if (v15)
  {

    __break(1u);
    goto LABEL_10;
  }

  v56 = v68;
  v58 = 0;

  outlined destroy of [(start: UInt32, end: UInt32)]();
  v100 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30NgtMenstrualAlgorithmsDayInputCGMd);
  lazy protocol witness table accessor for type [NgtMenstrualAlgorithmsDayInput] and conformance [A]();
  v18 = v58;
  v19 = Sequence.sorted(by:)();
  v59 = v18;
  v60 = v19;
  if (v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v47 = v60;
  v53 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v99 = v47;
  v98 = v70;
  v48 = v33;
  MEMORY[0x28223BE20](v33);
  v50 = &v33[-4];
  v33[-2] = closure #3 in CalendarPeriodPrediction.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:);
  v33[-1] = 0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys5UInt8VSays6UInt32V5start_AD3endtGGMd);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd);
  v49 = v52;
  v21 = lazy protocol witness table accessor for type [UInt8 : [(start: UInt32, end: UInt32)]] and conformance [A : B]();
  v22 = v53;
  v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned UInt8, @guaranteed [(start: UInt32, end: UInt32)]) -> (@owned [(type: UInt8, day: UInt32, end: Bool)]), v50, v51, v52, MEMORY[0x277D84A98], v21, MEMORY[0x277D84AC0], v23);
  v54 = v22;
  v55 = v24;
  if (v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v43 = 0;
  v97 = v55;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySays5UInt8V4type_s6UInt32V3daySb3endtGGMd);
  v42 = lazy protocol witness table accessor for type [[(type: UInt8, day: UInt32, end: Bool)]] and conformance [A]();
  v25 = lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
  v26 = v43;
  v44 = v25;
  v27 = Sequence.flatMap<A>(_:)();
  v45 = v26;
  v46 = v27;
  if (v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v37 = v46;
  v38 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v28 = v38;
  v96 = v37;
  v29 = Sequence.sorted(by:)();
  v39 = v28;
  v40 = v29;
  if (v28)
  {
LABEL_13:
    v30 = 0;
    __break(1u);
    goto LABEL_14;
  }

  v35 = v40;
  v36 = 0;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  *&v95[4] = v35;
  outlined destroy of [(start: UInt32, end: UInt32)]();
  v20 = v35;
  v30 = v47;
LABEL_14:
  result.chronologicalOrderedCFs._rawValue = v20;
  result.dayInputs._rawValue = v30;
  return result;
}

uint64_t closure #1 in ShadowEvaluation.toAlgorithmInputs(flow:otr:spotting:cycleFactors:swt:daySHR10s:nightSHR10s:daySHRCounts:nightSHRCounts:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, HKHealthStore *a9@<X8>)
{
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v43 = 0;
  v39 = 0;
  v38 = 0;
  v64 = *a1;
  v33 = v64;
  v63 = a2;
  v62 = a3;
  v61 = a4;
  v60 = a5;
  v59 = a6;
  v58 = a7;
  v57 = a8;
  type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v56 = isa;
  [(objc_class *)isa setJulianDay:v64];
  v54 = v64;
  MEMORY[0x25F8891D0](v55, &v54, a2, MEMORY[0x277D84CC0], MEMORY[0x277D84B78], MEMORY[0x277D84CD0]);
  if ((v55[1] & 1) == 0)
  {
    v9 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v55[0]);
    if ((v9 & 0x100) == 0)
    {
      [(objc_class *)isa setFlow:v9];
    }
  }

  v51 = v33;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSf_SStMd);
  MEMORY[0x25F8891D0](&v52, &v51, a3, MEMORY[0x277D84CC0], v10, MEMORY[0x277D84CD0]);
  v23 = *&v52;
  v24 = v53;
  if (v53._object)
  {
    type metadata accessor for NgtMenstrualAlgorithmsWristTemperature();
    v21 = Double.init(_:)(v23);

    v65 = NgtMenstrualAlgorithmsWristTemperature.__allocating_init(temperature:forWatchIdentifier:)(v21, v24);
    v22 = v65.super.isa;
    [(objc_class *)isa setWristTemperature:v65._temperatureCelsius];
    MEMORY[0x277D82BD8](v22);
  }

  v49 = v33;
  MEMORY[0x25F8891D0](&v50, &v49, a4, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v50 & 0x100000000) == 0)
  {
    v38 = v50;
    v35 = v33;
    MEMORY[0x25F8891D0](&v36, &v35, a5, MEMORY[0x277D84CC0], MEMORY[0x277D83B88], MEMORY[0x277D84CD0]);
    v20 = v36;
    if ((v37 & 1) == 0)
    {
      type metadata accessor for NgtMenstrualAlgorithmsHeartRateStatistics();
      lowerPercentile.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      if (v20 < 0xFFFFFFFF80000000)
      {
        LOBYTE(v12) = 2;
        v13 = 3262;
        LODWORD(v14) = 0;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (v20 > 0x7FFFFFFF)
      {
        LOBYTE(v12) = 2;
        v13 = 3268;
        LODWORD(v14) = 0;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v18 = NgtMenstrualAlgorithmsHeartRateStatistics.__allocating_init(lowerPercentile:forSampleCount:)(lowerPercentile, v20);
      [(objc_class *)isa setSedentaryHeartRateStatistics:?];
      MEMORY[0x277D82BD8](v18);
    }
  }

  v47 = v33;
  MEMORY[0x25F8891D0](&v48, &v47, a6, MEMORY[0x277D84CC0], MEMORY[0x277D83A90], MEMORY[0x277D84CD0]);
  if ((v48 & 0x100000000) == 0)
  {
    v43 = v48;
    v40 = v33;
    MEMORY[0x25F8891D0](&v41, &v40, a7, MEMORY[0x277D84CC0], MEMORY[0x277D83B88], MEMORY[0x277D84CD0]);
    v17 = v41;
    if ((v42 & 1) == 0)
    {
      v39 = v41;
      type metadata accessor for NgtMenstrualAlgorithmsHeartRateStatistics();
      v16.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      if (v17 < 0xFFFFFFFF80000000)
      {
        LOBYTE(v12) = 2;
        v13 = 3262;
        LODWORD(v14) = 0;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      if (v17 > 0x7FFFFFFF)
      {
        LOBYTE(v12) = 2;
        v13 = 3268;
        LODWORD(v14) = 0;
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v15 = NgtMenstrualAlgorithmsHeartRateStatistics.__allocating_init(lowerPercentile:forSampleCount:)(v16, v17);
      [(objc_class *)isa setSleepHeartRateStatistics:?];
      MEMORY[0x277D82BD8](v15);
    }
  }

  v45 = v33;
  MEMORY[0x25F8891D0](&v46, &v45, a8, MEMORY[0x277D84CC0], MEMORY[0x277D839B0], MEMORY[0x277D84CD0]);
  v44 = v46;
  if (v46 == 2)
  {
    HIDWORD(v14) = 0;
  }

  else
  {
    HIDWORD(v14) = v44;
  }

  [(objc_class *)isa setSpotting:BYTE4(v14) & 1, v12, v13, v14];
  MEMORY[0x277D82BE0](isa);
  a9->super.isa = isa;
  return MEMORY[0x277D82BD8](isa);
}

NgtMenstrualAlgorithmsHeartRateStatistics __swiftcall NgtMenstrualAlgorithmsHeartRateStatistics.__allocating_init(lowerPercentile:forSampleCount:)(NSNumber lowerPercentile, Swift::Int32 forSampleCount)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = @nonobjc NgtMenstrualAlgorithmsHeartRateStatistics.init(lowerPercentile:forSampleCount:)(lowerPercentile.super.super.isa);
  result._sampleCount = v6;
  result.super.isa = v3;
  HIDWORD(result._lowerPercentile) = v5;
  LODWORD(result._lowerPercentile) = v4;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ShadowEvaluation.analyze(mlConfig:earliestDay:latestDay:t0:t1:dayInputs:chronologicalOrderedCFs:)(NightingaleTraining::FlycatcherTelemetrics_optional *__return_ptr retstr, NgtMenstrualAlgorithmsMLModelConfig *mlConfig, Swift::UInt32 earliestDay, Swift::UInt32 latestDay, Swift::UInt32 t0, Swift::UInt32 t1, Swift::OpaquePointer dayInputs, Swift::OpaquePointer chronologicalOrderedCFs)
{
  v10 = MEMORY[0x28223BE20](mlConfig);
  v308 = &v395;
  v329 = v351;
  v309 = v9;
  v310 = v8;
  v315 = v11;
  v332 = v12;
  v314 = v13;
  v321 = v14;
  v324 = v15;
  v316 = v16;
  v327 = v10;
  v311 = v17;
  v399 = *MEMORY[0x277D85DE8];
  v330 = 0;
  v384 = 0;
  v312 = 0;
  v383 = 0;
  v382 = 0;
  v381 = 0;
  v380 = 0;
  memset(&v379[6], 0, 64);
  v379[3] = 0;
  v379[2] = 0;
  v377[2] = 0;
  v313 = 0u;
  memset(&v390, 0, sizeof(v390));
  v377[1] = 0;
  v346 = 0;
  v345 = 0;
  v344 = 0;
  v343 = 0;
  v342 = 0;
  v317 = type metadata accessor for Logger();
  v318 = *(v317 - 8);
  v319 = v318;
  v320 = *(v318 + 64);
  v18 = MEMORY[0x28223BE20](v327);
  v19 = v321;
  v322 = &v142 - ((v320 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v20 + 592) = v18;
  *(v20 + 584) = v21;
  *(v20 + 576) = v22;
  *(v20 + 568) = v19;
  *(v20 + 560) = v23;
  *(v20 + 552) = v24;
  *(v20 + 544) = v25;
  *(v20 + 536) = v8;
  v323 = &v398;
  swift_beginAccess();
  v325 = *(v8 + 16);
  v26 = v325;
  swift_endAccess();
  ShadowEvaluation.getDayStreamProcessorConfigFromConfig(cached:lastJulianDay:)(v27, v325, v324);
  v328 = v28;
  v326 = v28;

  *(v329 + 66) = v328;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessor();
  v29 = v328;
  v30 = v327;
  NgtMenstrualAlgorithmsDayStreamProcessor.__allocating_init(config:mlConfig:)(v31, v328, v327);
  v331 = v32;
  *(v329 + 65) = v32;
  v333 = type metadata accessor for NgtMenstrualAlgorithmsDayInput();
  v334 = v333;
  v33 = MEMORY[0x25F8895B0](v332);
  v34 = __OFSUB__(v33, 1);
  v335 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    if (v335 < 0)
    {
      LODWORD(age) = 0;
      v140 = 760;
      LOBYTE(v139) = 2;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v35 = v335;
    v36 = v329;
    *(v329 + 60) = 0;
    *(v36 + 61) = v35;
    v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    for (i = v309; ; i = v304)
    {
      v304 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
      IndexingIterator.next()();
      v305 = *(v308 + 12);
      if (v397)
      {
        break;
      }

      v303 = v305;
      v300 = v305;
      v342 = v305;
      Array.subscript.getter();
      v301 = v341;
      v302 = [v341 julianDay];

      if (v302 < v316 || (Array.subscript.getter(), v298 = v339, v299 = [v339 julianDay], v298, v324 < v299))
      {
        Array.subscript.getter();
        v295 = v340;
        v296 = [v340 julianDay];

        if (v324 < v296)
        {
          break;
        }
      }

      else
      {
        Array.subscript.getter();
        v297 = v338;
        [v331 appendDay_];
      }
    }

    *(v329 + 57) = v315;
    v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8V4type_s6UInt32V3daySb3endtGMd);
    lazy protocol witness table accessor for type [(type: UInt8, day: UInt32, end: Bool)] and conformance [A]();
    Collection<>.makeIterator()();
    for (j = v304; ; j = v290)
    {
      v290 = j;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySays5UInt8V4type_s6UInt32V3daySb3endtGGMd);
      IndexingIterator.next()();
      v291 = *v308;
      v292 = v396;
      if (v396 == 2)
      {
        break;
      }

      v288 = v291;
      v289 = v292;
      v285 = v292;
      v286 = HIDWORD(v291);
      v287 = v291;
      v346 = v291;
      v345 = HIDWORD(v291);
      v344 = v292 & 1;
      if (v324 < HIDWORD(v291))
      {
        break;
      }

      v336 = NgtMenstrualAlgorithmsOvulationTestResult.init(rawValue:)(v287);
      v284 = v336;
      if ((v336 & 0x100) == 0)
      {
        v283 = v284;
        v282 = v283;
        v343 = v283;
        if (v285)
        {
          [v331 endPhase:v282 onJulianDay:v286];
        }

        else
        {
          [v331 beginPhase:v282 onJulianDay:v286];
        }
      }
    }

    outlined destroy of [(start: UInt32, end: UInt32)]();
    v37 = v324;
    v38 = v329;
    v39 = v331;
    *(v329 + 357) = 0;
    *(v38 + 56) = *(v38 + 357);
    v281 = [v39 analyzeWithMostRecentMenstrualFlowJulianDayUpdated:v37 error:v379];
    v279 = v281;
    v280 = *(v329 + 56);
    v40 = v280;
    v41 = *(v329 + 357);
    *(v329 + 357) = v280;

    if (v281)
    {
      v278 = v279;
      v276 = v279;
      v277 = v290;
    }

    else
    {
      v142 = *(v329 + 357);
      v143 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v144 = 0;
      v145 = 0;

      v276 = v144;
      v277 = v145;
    }

    v274 = v277;
    v275 = v276;
    if (v276)
    {
      v273 = v275;
      v271 = v275;
      *(v329 + 53) = v275;
      FlycatcherTelemetrics.init()(&v390);
      v272 = [v271 telemetry];
      if (v272)
      {
        v270 = v272;
        v42 = v272;
        v269 = v272;
        *(v329 + 52) = v272;
        v179 = [v42 ensembleSelectedModelIdx];
        v229 = 0x1FABBB000uLL;
        v180 = [v179 0x1FABBB078];

        v43 = v329;
        *(v329 + 50) = v180;
        v232 = 0;
        *(v43 + 48) = 0;
        *(v43 + 49) = 11;
        v234 = MEMORY[0x277D83B88];
        v235 = MEMORY[0x277D83BA0];
        Comparable.clamp(to:)(&v376, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v377);
        v249 = *(v329 + 51);
        v181 = [v269 baselineMean];
        v221 = 0x1FA982000uLL;
        [v181 0x1FA9827C8];
        v182 = v44;

        v45 = v329;
        *(v329 + 95) = v182;
        v224 = 0;
        v45[93] = 0;
        v45[94] = 1115815936;
        v226 = -1082130432;
        v45[92] = -1082130432;
        v228 = lazy protocol witness table accessor for type Float and conformance Float();
        v227 = MEMORY[0x277D83A90];
        v245 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v375 + 4, &v375, MEMORY[0x277D83A90], v228);
        v183 = [v269 baselineStdUncapped];
        [v183 (v221 + 1992)];
        v184 = v46;

        LODWORD(v337) = v226;
        BYTE4(v337) = v224;
        v47 = getCycleStdEnum(value:valueForNA:)(v184, v337);
        v244 = CycleStdEnum.rawValue.getter(v47);
        v185 = [v269 numHistoricalCycles];
        v186 = [v185 (v229 + 120)];

        v48 = v329;
        v49 = v232;
        v50 = v234;
        v51 = v235;
        *(v329 + 44) = v186;
        *(v48 + 42) = v49;
        *(v48 + 43) = 101;
        Comparable.clamp(to:)(&v373, v50, v51, &v374);
        v243 = *(v329 + 45);
        v187 = [v269 daysToModel0Drs];
        v188 = [v187 (v229 + 120)];

        v52 = v329;
        v53 = v232;
        v54 = v234;
        v55 = v235;
        *(v329 + 40) = v188;
        *(v52 + 38) = v53;
        v201 = 65;
        *(v52 + 39) = 65;
        Comparable.clamp(to:)(&v371, v54, v55, &v372);
        v241 = *(v329 + 41);
        v189 = [v269 daysToModel1Drs];
        v190 = [v189 (v229 + 120)];

        v56 = v201;
        v57 = v329;
        v58 = v232;
        v59 = v234;
        v60 = v235;
        *(v329 + 36) = v190;
        *(v57 + 34) = v58;
        *(v57 + 35) = v56;
        Comparable.clamp(to:)(&v369, v59, v60, &v370);
        v240 = *(v329 + 37);
        v191 = [v269 daysToModel2Drs];
        v192 = [v191 (v229 + 120)];

        v61 = v201;
        v62 = v329;
        v63 = v232;
        v64 = v234;
        v65 = v235;
        *(v329 + 32) = v192;
        *(v62 + 30) = v63;
        *(v62 + 31) = v61;
        Comparable.clamp(to:)(&v367, v64, v65, &v368);
        v239 = *(v329 + 33);
        v193 = [v269 model0Width];
        v194 = [v193 (v229 + 120)];

        v66 = v329;
        v67 = v232;
        v68 = v234;
        v69 = v235;
        *(v329 + 28) = v194;
        *(v66 + 26) = v67;
        v233 = 21;
        *(v66 + 27) = 21;
        Comparable.clamp(to:)(&v365, v68, v69, &v366);
        v238 = *(v329 + 29);
        v195 = [v269 model1Width];
        v196 = [v195 (v229 + 120)];

        v70 = v329;
        v71 = v232;
        v72 = v233;
        v73 = v234;
        v74 = v235;
        *(v329 + 24) = v196;
        *(v70 + 22) = v71;
        *(v70 + 23) = v72;
        Comparable.clamp(to:)(&v363, v73, v74, &v364);
        v237 = *(v329 + 25);
        v197 = [v269 model2Width];
        v198 = [v197 (v229 + 120)];

        v75 = v329;
        v76 = v232;
        v77 = v233;
        v78 = v234;
        v79 = v235;
        *(v329 + 20) = v198;
        *(v75 + 18) = v76;
        *(v75 + 19) = v77;
        Comparable.clamp(to:)(&v361, v78, v79, &v362);
        v236 = *(v329 + 21);
        v199 = [v269 daysSinceLastPeriod];
        v200 = [v199 (v229 + 120)];

        v80 = v201;
        v81 = v329;
        v82 = v232;
        v83 = v234;
        v84 = v235;
        *(v329 + 16) = v200;
        *(v81 + 14) = v82;
        *(v81 + 15) = v80;
        Comparable.clamp(to:)(&v359, v83, v84, &v360);
        v85 = *(v329 + 17);
        v202 = [v269 daysSinceLastContraceptionEnd];
        v203 = [v202 (v229 + 120)];

        v400.is_nil = v224;
        v400.value = -3;
        v208 = -3;
        v86 = getNumberOfDaysForFactors(value:valueForNA:)(v203, v400);
        v87 = NumberOfDaysForFactorsEnum.rawValue.getter(v86);
        v204 = [v269 daysSinceLastPregnancyEnd];
        v205 = [v204 (v229 + 120)];

        v401.value = v208;
        v401.is_nil = v224;
        v88 = getNumberOfDaysForFactors(value:valueForNA:)(v205, v401);
        v89 = NumberOfDaysForFactorsEnum.rawValue.getter(v88);
        v206 = [v269 daysSinceLastLactationEnd];
        v207 = [v206 (v229 + 120)];

        v402.value = v208;
        v402.is_nil = v224;
        v90 = getNumberOfDaysForFactors(value:valueForNA:)(v207, v402);
        v91 = NumberOfDaysForFactorsEnum.rawValue.getter(v90);
        v209 = [v269 sliceDayHrCount];
        v210 = [v209 (v229 + 120)];

        v92 = v329;
        v93 = v232;
        v94 = v234;
        v95 = v235;
        *(v329 + 12) = v210;
        *(v92 + 10) = v93;
        v217 = 46;
        *(v92 + 11) = 46;
        Comparable.clamp(to:)(&v357, v94, v95, &v358);
        v96 = *(v329 + 13);
        v211 = [v269 sliceDayHrMean];
        [v211 (v221 + 1992)];
        v212 = v97;

        v98 = v329;
        v99 = v224;
        v100 = v226;
        v101 = v227;
        v102 = v228;
        *(v329 + 19) = v212;
        v98[17] = v99;
        v220 = 1123155968;
        v98[18] = 1123155968;
        v98[16] = v100;
        v103 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v356 + 4, &v356, v101, v102);
        v213 = [v269 sliceDayHrStd];
        [v213 (v221 + 1992)];
        v214 = v104;

        v105 = v329;
        v106 = v224;
        v107 = v226;
        v108 = v227;
        v109 = v228;
        *(v329 + 15) = v214;
        v105[13] = v106;
        v225 = 1101529088;
        v105[14] = 1101529088;
        v105[12] = v107;
        v110 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v355 + 4, &v355, v108, v109);
        v215 = [v269 sliceNightHrCount];
        v216 = [v215 (v229 + 120)];

        v111 = v217;
        v112 = v329;
        v113 = v232;
        v114 = v234;
        v115 = v235;
        *(v329 + 4) = v216;
        *(v112 + 2) = v113;
        *(v112 + 3) = v111;
        Comparable.clamp(to:)(&v353, v114, v115, &v354);
        v253 = *(v329 + 5);
        v218 = [v269 sliceNightHrMean];
        [v218 (v221 + 1992)];
        v219 = v116;

        v117 = v220;
        v118 = v329;
        v119 = v224;
        v120 = v226;
        v121 = v227;
        v122 = v228;
        *(v329 + 3) = v219;
        v118[1] = v119;
        v118[2] = v117;
        *v118 = v120;
        v261 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(&v352, v351, v121, v122);
        v222 = [v269 sliceNightHrStd];
        [v222 (v221 + 1992)];
        v223 = v123;

        v350[2] = v223;
        v350[0] = v224;
        v350[1] = v225;
        v349 = v226;
        v260 = BinaryFloatingPoint.clamp(to:nonFiniteValue:)(v350, &v349, v227, v228);
        v230 = [v269 numOutliers];
        v231 = [v230 (v229 + 120)];

        v347[2] = v231;
        v347[0] = v232;
        v347[1] = v233;
        Comparable.clamp(to:)(v347, v234, v235, &v348);
        v124 = v236;
        v259 = v348;
        v254 = default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();
        v246 = v125;
        v247 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v248 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v250 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v251 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v252 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v262 = default argument 3 of Calendar.date(byAdding:value:to:wrappingComponents:)();
        v242 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v258 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v257 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v256 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v255 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v126 = default argument 1 of FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)();
        v127._object = v246;
        v128 = v126;
        v127._countAndFlagsBits = v254;
        v263 = &v137;
        v264 = &v385;
        FlycatcherTelemetrics.init(recipeId:cycleIdx:ensembleLogicId:selectedModelId:abserr:widthOneSide:widthTwoSide:coverage:baselineMean:baselineStd:numHistCycles:cycleLen:daysToModel0DRS:daysToModel1DRS:daysToModel2DRS:model0Width:model1Width:model2Width:daysSinceLastPeriod:daysSinceLastContraceptionEnd:daysSinceLastPregnancyEnd:daysSinceLastLactationEnd:sliceDayHRCount:sliceDayHRMean:sliceDayHRStd:sliceNightHRCount:sliceNightHRMean:sliceNightHRStd:numOutliers:numCycles:fullCycleLengthMean:fullCycleLengthStd:bmi:age:)(&v385, v127, v247, v248, v249, v250, v251, v252, v262 & 1, v245, v244, v243, v242, v241, v240, v239, v238, v237, v124, v85, v87, v89, v91, v96, v103, v110, v253, v261, v260, v259, v258, v257, v256, v255, v128);
        v266 = 280;
        v265 = v386;
        memcpy(v386, v264, sizeof(v386));
        v268 = v387;
        v267 = &v390;
        memcpy(v387, &v390, sizeof(v387));
        memcpy(&v390, v386, sizeof(v390));
        outlined destroy of DefaultStringInterpolation();
      }

      v177 = [v271 menstruationPredictions];
      v175 = type metadata accessor for NgtMenstrualAlgorithmsPrediction();
      v176 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v178 = MEMORY[0x25F8895B0](v176, v175);

      if (v178)
      {
        v174 = &v390;
        ShadowEvaluation.computePerCycleMetrics(t0:t1:analysis:telemetrics:)(v321, v314, v271, &v390);
        v173 = 280;
        v171 = v389;
        memcpy(v389, v174, sizeof(v389));
        outlined init with copy of FlycatcherTelemetrics?(v389, &v388);
        v172 = v391;
        memcpy(v391, v171, v173);
        HKQueryOptions.init(rawValue:)(v172);
        memcpy(v311, v172, v173);
      }

      else
      {
        v170 = v392;
        _s19NightingaleTraining21FlycatcherTelemetricsVSgWOi0_(v392);
        memcpy(v311, v170, 0x118uLL);
      }

      outlined destroy of DefaultStringInterpolation();

      v146 = v274;
      v150 = v274;
    }

    else
    {
      v129 = v322;
      v130 = Logging.default.unsafeMutableAddressor();
      (*(v319 + 16))(v129, v130, v317);
      v168 = Logger.logObject.getter();
      v165 = v168;
      v167 = static os_log_type_t.error.getter();
      v166 = v167;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd);
      v169 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v168, v167))
      {
        v164 = v274;
        v156 = static UnsafeMutablePointer.allocate(capacity:)();
        v152 = v156;
        v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd);
        v154 = 0;
        v157 = createStorage<A>(capacity:type:)(0);
        v155 = v157;
        v131 = createStorage<A>(capacity:type:)(v154);
        v132 = v157;
        v133 = v329;
        v158 = v131;
        *(v329 + 55) = v156;
        *(v133 + 356) = v132;
        *(v133 + 355) = v131;
        v159 = 0;
        v160 = &v378;
        serialize(_:at:)(0, &v378);
        serialize(_:at:)(v159, v160);
        *(v329 + 54) = v169;
        v161 = &v142;
        MEMORY[0x28223BE20](&v142);
        v162 = &v138;
        v139 = v134;
        v140 = &v394;
        age = &v393;
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        v135 = v164;
        Sequence.forEach(_:)();
        if (v135)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_25C4D8000, v165, v166, "Failed to run Shadow Evaluation DayStreamProcessor", v152, 2u);
          v151 = 0;
          destroyStorage<A>(_:count:)(v155, 0, v153);
          destroyStorage<A>(_:count:)(v158, v151, MEMORY[0x277D84F70] + 8);
          MEMORY[0x25F8899D0](v152, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      (*(v319 + 8))(v322, v317);
      lazy protocol witness table accessor for type HIDPFLError and conformance HIDPFLError();
      v148 = 0;
      v147 = swift_allocError();
      *v136 = 2;
      swift_willThrow();

      v150 = v149;
    }
  }
}

void ShadowEvaluation.computePerCycleMetrics(t0:t1:analysis:telemetrics:)(unsigned int a1, unsigned int a2, void *a3, uint64_t a4)
{
  v63[1] = 0;
  v59 = 0;
  v57 = 0;
  v53 = 0;
  v51 = 0;
  v65 = a1;
  v64 = a2;
  v63[3] = a3;
  v63[2] = a4;
  v62 = a2;
  v61 = a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v60[6] = a2 - a1;
  v60[5] = 0;
  v60[4] = 101;
  v60[2] = 0;
  v60[3] = 101;
  v60[0] = 0;
  v60[1] = 101;
  Comparable.clamp(to:)(v60, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], v63);
  *(a4 + 96) = v63[0];
  v34 = [a3 0x1FCEC61DELL];
  v35 = type metadata accessor for NgtMenstrualAlgorithmsPrediction();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  Array.subscript.getter();

  MEMORY[0x277D82BD8](v34);
  v37 = [a3 0x1FCEC61DELL];
  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = MEMORY[0x25F8895B0](v36, v35);

  MEMORY[0x277D82BD8](v37);
  if (v38 > 1)
  {
    v32 = [a3 menstruationPredictions];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    Array.subscript.getter();
    v33 = [v44 isOngoingMenstruation];
    (MEMORY[0x277D82BD8])();

    MEMORY[0x277D82BD8](v32);
    if (v33)
    {
      v31 = [a3 menstruationPredictions];
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      Array.subscript.getter();
      v5 = v59;
      v59 = v43;
      MEMORY[0x277D82BD8](v5);

      MEMORY[0x277D82BD8](v31);
    }
  }

  v58 = a1;
  [v59 startProbabilityMean];
  __x = v6;
  MEMORY[0x277D82BD8](v59);
  v30 = round(__x);
  if (((*&v30 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v30 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v30 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v28 = a1 + v30;
  if (__OFADD__(a1, v30))
  {
    goto LABEL_66;
  }

  v57 = a1 + v30;
  v56 = a1;
  v54 = [v59 lowRange];
  v55 = v8;
  MEMORY[0x277D82BD8](v59);
  v9 = _NSRange.lowerBound.getter();
  v27 = a1 + v9;
  if (__OFADD__(a1, v9))
  {
    goto LABEL_67;
  }

  v53 = a1 + v9;
  v52 = a1;
  [v59 startProbabilityLowRangeEnd];
  v26 = round(v11);
  if (((*&v26 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v26 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v26 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v25 = a1 + v26;
  if (__OFADD__(a1, v26))
  {
    goto LABEL_68;
  }

  v51 = a1 + v26;
  [v59 startProbabilityLowRangeStart];
  v23 = v13;
  MEMORY[0x277D82BD8](v59);
  v24 = round(v23);
  if (((*&v24 >> 52) & 0x7FFLL) == 0x7FF)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v24 <= -9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (v24 >= 9.22337204e18)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  if (__OFADD__(a1, v24))
  {
    goto LABEL_69;
  }

  if (v27 != a1 + v24)
  {
    MEMORY[0x277D82BD8](v59);
    return;
  }

  if (__OFSUB__(v28, a2))
  {
    goto LABEL_70;
  }

  v49[3] = v28 - a2;
  v21 = MEMORY[0x277D83B88];
  v22 = MEMORY[0x277D83BA0];
  abs<A>(_:)();
  v49[2] = v49[4];
  v49[0] = 0;
  v49[1] = 65;
  Comparable.clamp(to:)(v49, v21, v22, &v50);
  *(a4 + 40) = v50;
  if (__OFSUB__(v28, v27))
  {
    goto LABEL_71;
  }

  v47[2] = v28 - v27;
  v47[0] = 0;
  v47[1] = 11;
  Comparable.clamp(to:)(v47, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], &v48);
  *(a4 + 48) = v48;
  v20 = v25 - v27;
  if (__OFSUB__(v25, v27))
  {
    goto LABEL_72;
  }

  if (__OFADD__(v20, 1))
  {
    goto LABEL_73;
  }

  v45[2] = v20 + 1;
  v45[0] = 0;
  v45[1] = 22;
  Comparable.clamp(to:)(v45, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], &v46);
  *(a4 + 56) = v46;
  v19 = a2 >= v27 && v25 >= a2;
  *(a4 + 64) = v19;
  MEMORY[0x277D82BD8](v59);
}

void __swiftcall ShadowEvaluation.getDayStreamProcessorConfigFromConfig(cached:lastJulianDay:)(NgtMenstrualAlgorithmsDayStreamProcessorConfig *__return_ptr retstr, NgtMenstrualAlgorithmsDayStreamProcessorConfig *cached, Swift::UInt32 lastJulianDay)
{
  v40 = cached;
  v38 = lastJulianDay;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v46 = 0;
  v43 = 0;
  v35 = 0;
  v30 = type metadata accessor for DateComponents();
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v34 = &v6 - v33;
  v36 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v35);
  v37 = &v6 - v36;
  v52 = v4;
  v51 = v5;
  v50 = v3;
  type metadata accessor for NgtMenstrualAlgorithmsDayStreamProcessorConfig();
  isa = HKHealthStore.__allocating_init()().super.isa;
  v49 = isa;
  [(objc_class *)isa setTodayAsJulianDay:v38];
  v48 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 julianDayOfUserReportedCycleLength];
  if (v48)
  {
    v26 = &v48;
    v27 = v48;
    MEMORY[0x277D82BE0](v48);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v26);
    v28 = [(NSNumber *)v27 unsignedIntValue];
    MEMORY[0x277D82BD8](v27);
    v29 = v28;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v48);
    v29 = 0x100000000;
  }

  v25 = v29;
  if ((v29 & 0x100000000) == 0)
  {
    v24 = v25;
    v43 = v25;
    v42 = v25;
    v41 = v38;
    min<A>(_:_:)();
    v23 = UInt32._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)isa setJulianDayOfUserReportedCycleLength:?];
    MEMORY[0x277D82BD8](v23);
  }

  v47 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 julianDayOfUserReportedMenstruationLength];
  if (v47)
  {
    v19 = &v47;
    v20 = v47;
    MEMORY[0x277D82BE0](v47);
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(v19);
    v21 = [(NSNumber *)v20 unsignedIntValue];
    MEMORY[0x277D82BD8](v20);
    v22 = v21;
  }

  else
  {
    outlined destroy of NgtMenstrualAlgorithmsDayStreamProcessorConfig?(&v47);
    v22 = 0x100000000;
  }

  v18 = v22;
  if ((v22 & 0x100000000) == 0)
  {
    v17 = v18;
    v46 = v18;
    v45 = v18;
    v44 = v38;
    min<A>(_:_:)();
    v16 = UInt32._bridgeToObjectiveC()().super.super.isa;
    [(objc_class *)isa setJulianDayOfUserReportedMenstruationLength:?];
    MEMORY[0x277D82BD8](v16);
  }

  v13 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 userReportedCycleLength];
  [(objc_class *)isa setUserReportedCycleLength:?];
  MEMORY[0x277D82BD8](v13);
  v14 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 userReportedMenstruationLength];
  [(objc_class *)isa setUserReportedMenstruationLength:?];
  MEMORY[0x277D82BD8](v14);
  v15 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 birthDateComponents];
  if (v15)
  {
    v12 = v15;
    v11 = v15;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v31 + 32))(v37, v34, v30);
    (*(v31 + 56))(v37, 0, 1, v30);
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    (*(v31 + 56))(v37, 1, 1, v30);
  }

  if ((*(v31 + 48))(v37, 1, v30) == 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = DateComponents._bridgeToObjectiveC()().super.isa;
    (*(v31 + 8))(v37, v30);
    v10 = v9;
  }

  [(objc_class *)isa setBirthDateComponents:v10];
  MEMORY[0x277D82BD8](v6);
  v7 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 awakeSHRCountThreshold];
  [(objc_class *)isa setAwakeSHRCountThreshold:?];
  MEMORY[0x277D82BD8](v7);
  v8 = [(NgtMenstrualAlgorithmsDayStreamProcessorConfig *)v40 sleepSHRCountThreshold];
  [(objc_class *)isa setSleepSHRCountThreshold:?];
  MEMORY[0x277D82BD8](v8);
}

id @nonobjc NgtMenstrualAlgorithmsWristTemperature.init(temperature:forWatchIdentifier:)(double a1)
{
  v4 = MEMORY[0x25F8892C0]();
  v5 = [v3 initWithTemperature:a1 forWatchIdentifier:?];
  MEMORY[0x277D82BD8](v4);

  return v5;
}

id @nonobjc NgtMenstrualAlgorithmsHeartRateStatistics.init(lowerPercentile:forSampleCount:)(uint64_t a1)
{
  v4 = [v1 initWithLowerPercentile_forSampleCount_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

void *_s19NightingaleTraining21FlycatcherTelemetricsVSgWOi0_(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0;
  result[8] = 0;
  result[9] = 0;
  result[10] = 0;
  result[11] = 0;
  result[12] = 0;
  result[13] = 0;
  result[14] = 0;
  result[15] = 0;
  result[16] = 0;
  result[17] = 0;
  result[18] = 0;
  result[19] = 0;
  result[20] = 0;
  result[21] = 0;
  result[22] = 0;
  result[23] = 0;
  result[24] = 0;
  result[25] = 0;
  result[26] = 0;
  result[27] = 0;
  result[28] = 0;
  result[29] = 0;
  result[30] = 0;
  result[31] = 0;
  result[32] = 0;
  result[33] = 0;
  result[34] = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for FlycatcherTelemetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void *storeEnumTagSinglePayload for FlycatcherTelemetrics(void *result, int a2, int a3)
{
  v3 = result + 35;
  if (a2 < 0)
  {
    result[31] = 0;
    result[30] = 0;
    result[29] = 0;
    result[28] = 0;
    result[27] = 0;
    result[26] = 0;
    result[25] = 0;
    result[24] = 0;
    result[23] = 0;
    result[22] = 0;
    result[21] = 0;
    result[20] = 0;
    result[19] = 0;
    result[18] = 0;
    result[17] = 0;
    result[16] = 0;
    result[15] = 0;
    result[14] = 0;
    result[13] = 0;
    result[12] = 0;
    result[11] = 0;
    result[10] = 0;
    result[9] = 0;
    result[8] = 0;
    result[7] = 0;
    result[6] = 0;
    result[5] = 0;
    result[4] = 0;
    result[3] = 0;
    result[2] = 0;
    result[1] = 0;
    *result = a2 + 0x80000000;
    result[33] = 0;
    result[32] = 0;
    result[34] = 0;
    if (a3 < 0)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *v3 = 0;
    }

    if (a2)
    {
      result[1] = (a2 - 1);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AgeEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF8)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 7) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 248;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 8;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AgeEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF8)
  {
    v5 = ((a3 + 7) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF8)
  {
    v4 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BMIEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFA)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 5) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 250;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 6;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BMIEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFA)
  {
    v5 = ((a3 + 5) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFA)
  {
    v4 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberOfDaysForFactorsEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for NumberOfDaysForFactorsEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CycleStdEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xEE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 17) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 238;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 18;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CycleStdEnum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xEE)
  {
    v5 = ((a3 + 17) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xEE)
  {
    v4 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 17;
    }
  }

  return result;
}

unint64_t type metadata accessor for NgtMenstrualAlgorithmsHeartRateStatistics()
{
  v2 = lazy cache variable for type metadata for NgtMenstrualAlgorithmsHeartRateStatistics;
  if (!lazy cache variable for type metadata for NgtMenstrualAlgorithmsHeartRateStatistics)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NgtMenstrualAlgorithmsHeartRateStatistics);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t FeatureStatsOption.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("none", 4uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("perSlice", 8uLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("allSlices", 9uLL, 1)._countAndFlagsBits;
    case 3:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceMean", 0xAuLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("deviceMedian", 0xCuLL, 1)._countAndFlagsBits;
  }
}

uint64_t key path getter for NSNumber.uint32Value : NSNumber@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = [v3 unsignedIntValue];
  return MEMORY[0x277D82BD8](v3);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> transferFeatureToMLInputs(_:_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, NightingaleTraining::NightingaleModelFeatureType a3, NightingaleTraining::NightingalePFLModelType a4)
{
  v20 = a4;
  v22 = a3;
  v21 = a2;
  v23 = a1;
  v24 = a4;
  v27 = 0;
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = a4;
  v32 = featureIndex(_:_:)(a3, a4);
  value = v32.value;
  if (v32.is_nil)
  {
    v17 = v19;
  }

  else
  {
    v18 = value;
    v11 = value;
    v15 = v19;
    v27 = value;
    v10 = &v10;
    MEMORY[0x28223BE20](&v10);
    v13 = v8;
    v8[2] = v23;
    v8[3] = v11;
    v9 = v4;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v12 = v14;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v6 = v15;
    _sSa30withUnsafeMutableBufferPointeryqd__qd__SryxGzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in transferFeatureToMLInputs(_:_:_:_:), v13, v14, MEMORY[0x277D84F78] + 8, v5, MEMORY[0x277D84950], &v26, MEMORY[0x277D84F78]);
    v16 = v6;
    if (!v6)
    {
      v7 = default argument 1 of NightingaleDPFLRunner.sendLocationAsync<A>(location:force:work:)();
      Array.removeAll(keepingCapacity:)(v7 & 1);
    }
  }
}

Swift::Void __swiftcall transferLabelToOnehotEncode(_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, Swift::UInt32 a3)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v13 = 0;
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v8 = a3;
  v21 = a3;
  rawValue = a1->_rawValue;

  v10 = MEMORY[0x25F8895B0](rawValue, MEMORY[0x277D84CC0]);

  if (v10 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v16 = 0;
  v17 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
    IndexingIterator.next()();
    if (v15)
    {
      break;
    }

    v13 = v14;
    v7 = v14 * v8;
    if ((v13 * v8) >> 64 != (v13 * v8) >> 63)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    Array.subscript.getter();
    if (__OFADD__(v7, v12))
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
    v4 = Array.subscript.modify();
    *v5 = 1.0;
    v4(v11, 0, v6);
  }
}

Swift::Void __swiftcall transferLabelToRegression(_:_:_:_:)(Swift::OpaquePointer *a1, Swift::OpaquePointer *a2, Swift::UInt32 a3, Swift::UInt32 a4)
{
  v34 = 0.0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v25 = 0;
  v39 = a1;
  v38 = a2;
  v37 = a3;
  v36 = a4;
  rawValue = a2->_rawValue;

  v16 = MEMORY[0x25F8895B0](rawValue, MEMORY[0x277D83A90]);

  v18 = a1->_rawValue;

  v20 = MEMORY[0x25F8895B0](v18, MEMORY[0x277D84CC0]);

  v21 = v20 * a3;
  if ((v20 * a3) >> 64 == v21 >> 63)
  {
    if (v16 < v21)
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Size of regression should >= size of array * stride", 0x33uLL, 1);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v35 = a4;
    lazy protocol witness table accessor for type UInt32 and conformance UInt32();
    v11 = MEMORY[0x277D84CC0];
    Float.init<A>(_:)();
    v10 = v4;
    v34 = v4;
    v33 = a3;
    v12 = a1->_rawValue;

    v13 = MEMORY[0x25F8895B0](v12, v11);

    if (v13 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v28 = 0;
    v29 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd);
    lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
    Collection<>.makeIterator()();
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd);
      IndexingIterator.next()();
      if (v27)
      {
        break;
      }

      v25 = v26;
      if ((a3 * v25) >> 64 != (a3 * v25) >> 63)
      {
        goto LABEL_12;
      }

      Array.subscript.getter();
      v23 = v24;
      Float.init<A>(_:)();
      v9 = v5 / v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd);
      v6 = Array.subscript.modify();
      *v7 = v9;
      v6(v22, 0, v8);
    }
  }

  else
  {
    __break(1u);
LABEL_12:
    __break(1u);
  }
}
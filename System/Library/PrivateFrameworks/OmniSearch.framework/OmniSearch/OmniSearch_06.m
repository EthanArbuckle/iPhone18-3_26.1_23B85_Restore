unint64_t AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)()
{
  v341 = v0;
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1232);
  Date.init()();
  Date.init()();
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v3 = *(v0 + 1168);
  v4 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v4, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v5 = OSSignposter.logHandle.getter();
  static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v6 = *(v0 + 1168);
    OUTLINED_FUNCTION_51_5();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v7);
    v8 = OSSignpostID.rawValue.getter();
    OUTLINED_FUNCTION_256(&dword_25D85C000, v9, v10, v8, "AnswerSynthesisController.performSynthesisRequest", "");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v11 = *(v0 + 1168);
  v12 = *(v0 + 1160);
  v13 = *(v0 + 1144);
  v14 = *(v0 + 1136);

  v15 = *(v13 + 16);
  v16 = OUTLINED_FUNCTION_26_2();
  v337 = v17;
  v17(v16);
  v18 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0(v18);
  swift_allocObject();
  OUTLINED_FUNCTION_45_4();
  *(v0 + 1248) = OSSignpostIntervalState.init(id:isOpen:)();
  v19 = *(v13 + 8);
  v20 = OUTLINED_FUNCTION_64_0();
  v19(v20);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 1152);
  OUTLINED_FUNCTION_200(v4, static Logging.searchComponentSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v24 = *(v0 + 1152);
    OUTLINED_FUNCTION_51_5();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v25);
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v22, v23, v26, "SearchTool.AnswerSynthesis", "", v14, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v27 = *(v0 + 1160);
  v28 = *(v0 + 1152);
  v29 = *(v0 + 1136);
  v30 = *(v0 + 904);

  v31 = OUTLINED_FUNCTION_26_2();
  v337(v31);
  v32 = *(v18 + 48);
  v33 = *(v18 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_45_4();
  *(v0 + 1256) = OSSignpostIntervalState.init(id:isOpen:)();
  v34 = OUTLINED_FUNCTION_64_0();
  v19(v34);
  v35 = *(v30 + 256);
  OUTLINED_FUNCTION_133();
  if ((*(v36 + 80))(6))
  {
    v37 = *(v0 + 904);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    outlined init with copy of ToolDatabaseProtocol?(v37 + 56, v0 + 512, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    if (*(v0 + 536))
    {
      v38 = *(v0 + 1224);
      v39 = *(v0 + 1128);
      v40 = *(v0 + 1120);
      v41 = *(v0 + 1112);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 512), v0 + 472);
      Date.init()();
      v42 = *(v0 + 504);
      OUTLINED_FUNCTION_218((v0 + 472), *(v0 + 496));
      static PrewarmUrgency.default.getter();
      v43 = *(*(v42 + 8) + 8);
      v44 = OUTLINED_FUNCTION_34_5();
      v45(v44);
      v46 = *(v40 + 8);
      v47 = OUTLINED_FUNCTION_32_0();
      v48(v47);
      OUTLINED_FUNCTION_211();
      if (!v49)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v50 = *(v0 + 1224);
      v51 = *(v0 + 1216);
      v52 = *(v0 + 1184);
      v53 = *(v0 + 1176);
      v54 = type metadata accessor for Logger();
      __swift_project_value_buffer(v54, static Logging.answerSynthesis);
      v56 = *(v52 + 16);
      v55 = (v52 + 16);
      v57 = OUTLINED_FUNCTION_59_3();
      v58(v57);
      v22 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      OUTLINED_FUNCTION_77_4();
      if (os_log_type_enabled(v22, v59))
      {
        v60 = *(v0 + 1216);
        v61 = *(v0 + 1208);
        v62 = *(v0 + 1184);
        v63 = *(v0 + 1176);
        v64 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v65 = swift_slowAlloc();
        v340[0] = v65;
        *v64 = 136315394;
        OUTLINED_FUNCTION_98_2();
        *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v64 + 12) = 1024;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v68 = *(v62 + 8);
        v66 = (v62 + 8);
        v67 = v68;
        v69 = OUTLINED_FUNCTION_179_0();
        (v68)(v69);
        v70 = OUTLINED_FUNCTION_206(1000.0);
        if (!(v71 ^ v72 | v49))
        {
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }

        if (v70 <= -1.0)
        {
          goto LABEL_92;
        }

        if (v70 >= 4294967300.0)
        {
LABEL_93:
          __break(1u);
LABEL_94:
          OUTLINED_FUNCTION_2_0();
          goto LABEL_37;
        }

        v73 = *(v0 + 1224);
        v74 = v70;
        (v67)(*(v0 + 1216), *(v0 + 1176));
        *(v64 + 14) = v74;
        OUTLINED_FUNCTION_190_0();
        _os_log_impl(v75, v76, v77, v78, v79, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v80 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v80);

        v81 = OUTLINED_FUNCTION_70_2();
        (v67)(v81);
      }

      else
      {
        v82 = *(v0 + 1224);
        v83 = *(v0 + 1216);
        OUTLINED_FUNCTION_240();
        v55();

        v84 = OUTLINED_FUNCTION_88();
        (v55)(v84);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 472));
    }

    else
    {
      outlined destroy of IntentApplication?(v0 + 512, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    }
  }

  v85 = *(v0 + 1200);
  Date.init()();
  v86 = *(v0 + 16);
  v87 = *(v0 + 24);
  *(v0 + 1264) = v86;
  *(v0 + 1272) = v87;
  AnswerSynthesisController.answerSynthesisResponseOverride(query:)(v86, v87);
  v67 = &static MetricsLogger.shared;
  v66 = "ptions";
  if (v88)
  {
    OUTLINED_FUNCTION_211();
    if (!v49)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v89, static Logging.answerSynthesis);

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v90, v91))
    {
      OUTLINED_FUNCTION_28_3();
      v92 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v340[0] = swift_slowAlloc();
      *(v92 + 4) = OUTLINED_FUNCTION_258(4.8149e-34);
      OUTLINED_FUNCTION_130_2();
      _os_log_impl(v93, v94, v95, v96, v97, 0xCu);
      OUTLINED_FUNCTION_139_1();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_211();
    if (!v49)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    __swift_project_value_buffer(v89, static Logging.answerSynthesis);

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v98, v99))
    {
      OUTLINED_FUNCTION_28_3();
      v100 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v340[0] = swift_slowAlloc();
      *(v100 + 4) = OUTLINED_FUNCTION_258(4.9654e-34);
      OUTLINED_FUNCTION_130_2();
      _os_log_impl(v101, v102, v103, v104, v105, 0xCu);
      OUTLINED_FUNCTION_139_1();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v106 = *(v0 + 1104);
    v107 = *(v0 + 1096);
    v108 = *(v0 + 1088);
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    v110 = v109;

    v111 = *(v107 + 8);
    v112 = OUTLINED_FUNCTION_242();
    v113(v112);
    if (v110 >> 60 != 15)
    {
      v124 = type metadata accessor for JSONDecoder();
      OUTLINED_FUNCTION_53_0(v124);
      swift_allocObject();
      JSONDecoder.init()();
      lazy protocol witness table accessor for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      v151 = *(v0 + 712);
      *(v0 + 1368) = v151;
      v338 = *(v0 + 720);
      v152 = *(v0 + 728);
      *(v0 + 1376) = v152;
      v334 = *(v0 + 736);
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v153 = *(v0 + 1200);
      v154 = *(v0 + 880);
      OUTLINED_FUNCTION_133();
      v156 = (*(v155 + 312))();
      v157 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
      OUTLINED_FUNCTION_175_0();
      type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
      v158 = OUTLINED_FUNCTION_45_4();
      if (!__swift_getEnumTagSinglePayload(v158, v159, v160))
      {
        LOBYTE(v340[0]) = 0;
        MEMORY[0x25F89E610](v156);
      }

      v157(v0 + 680, 0);
      v161 = *(v0 + 1200);
      v162 = *(v0 + 1184);
      v163 = *(v0 + 1176);
      v164 = OUTLINED_FUNCTION_45_0();
      outlined consume of Data?(v164, v165);
      v167 = *(v162 + 8);
      v166 = v162 + 8;
      *(v0 + 1384) = v167;
      *(v0 + 1392) = v166 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v168 = OUTLINED_FUNCTION_242();
      v169(v168);

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v170, v171))
      {
        OUTLINED_FUNCTION_28_3();
        v172 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v173 = swift_slowAlloc();
        v340[0] = v173;
        *v172 = 136642819;
        *(v0 + 776) = v151;
        *(v0 + 784) = v338;
        *(v0 + 792) = v152;
        v151 = v334;
        *(v0 + 800) = v334;

        String.init<A>(describing:)();
        v175 = v174;
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_227();

        *(v172 + 4) = v166;
        v176 = v171;
        v177 = v338;
        OUTLINED_FUNCTION_70_0(&dword_25D85C000, v178, v176, "Answer synthesis got response: %{sensitive}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v173);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      else
      {

        v177 = v338;
        v175 = v334;
      }

      v179 = *(v0 + 904);
      OUTLINED_FUNCTION_176_0();
      *(v0 + 744) = v151;
      *(v0 + 752) = v177;
      *(v0 + 760) = v152;
      *(v0 + 768) = v175;
      v180 = *(*v179 + 424);
      v339 = v180 + *v180;
      v181 = v180[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v0 + 1400) = v182;
      *v182 = v183;
      OUTLINED_FUNCTION_69_3(v182);
      OUTLINED_FUNCTION_214();

      __asm { BRAA            X7, X16 }
    }

    v114 = *(v0 + 1200);
    v115 = *(v0 + 1184);
    v116 = *(v0 + 1176);
    lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
    OUTLINED_FUNCTION_49_6();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_261(v117, 1);
    v118 = *(v115 + 8);
    v119 = OUTLINED_FUNCTION_26_2();
    v337 = v120;
    v120(v119);
LABEL_62:
    v205 = *(v0 + 1080);
    v206 = *(v0 + 1048);
    *(v0 + 856) = v22;
    v207 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    OUTLINED_FUNCTION_62_3();
    if (!swift_dynamicCast())
    {

      OUTLINED_FUNCTION_211();
      if (!v49)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v249 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v249, static Logging.answerSynthesis);
      v250 = v22;
      v251 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_259())
      {
        OUTLINED_FUNCTION_28_3();
        swift_slowAlloc();
        v252 = OUTLINED_FUNCTION_152_0();
        *v206 = 138412290;
        v253 = v22;
        v254 = _swift_stdlib_bridgeErrorToNSError();
        *(v206 + 4) = v254;
        *v252 = v254;
        OUTLINED_FUNCTION_56_4();
        _os_log_impl(v255, v256, v257, v258, v259, 0xCu);
        outlined destroy of IntentApplication?(v252, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v260 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v260);
      }

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v261 = *(v0 + 928);
      v262 = *(v0 + 920);
      v263 = *(v0 + 912);
      v264 = *(v0 + 896);
      v265 = *(v0 + 888);
      v266 = *v67;
      OUTLINED_FUNCTION_133();
      (*(v267 + 320))(v22);
      OUTLINED_FUNCTION_133();
      v269 = *(v268 + 208);
      v270 = OUTLINED_FUNCTION_45_0();
      v271(v270);
      v272 = *(v262 + 8);
      v273 = OUTLINED_FUNCTION_54_0();
      v274(v273);
      swift_willThrow();
LABEL_89:
      v321 = *(v0 + 1256);
      v322 = *(v0 + 1248);
      OUTLINED_FUNCTION_146_0();
      v323 = *(v0 + 1184);
      OUTLINED_FUNCTION_73_2();
      v328 = *(v0 + 976);
      v330 = *(v0 + 952);
      v332 = *(v0 + 928);
      OUTLINED_FUNCTION_12_4();
      $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

      OUTLINED_FUNCTION_4_7();
      $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

      v324 = OUTLINED_FUNCTION_32_3();
      v337(v324);
      v325 = OUTLINED_FUNCTION_158();
      v337(v325);

      OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_214();

      __asm { BRAA            X1, X16 }
    }

    v208 = *(v0 + 1080);
    v209 = *(v0 + 1072);
    v210 = *(v0 + 1056);
    v211 = *(v0 + 1048);
    v212 = *(v0 + 1016);
    v213 = *(v0 + 1008);
    v214 = *(v0 + 1000);

    v216 = *(v210 + 32);
    v215 = v210 + 32;
    v217 = OUTLINED_FUNCTION_39_5();
    v218(v217);
    GenerativeError.type.getter();
    v220 = *(v213 + 88);
    v219 = v213 + 88;
    v221 = OUTLINED_FUNCTION_63_0();
    if (v222(v221) == *MEMORY[0x277D0DB78])
    {
      v223 = OUTLINED_FUNCTION_107_1();
      v224(v223);
      v225 = *(v214 + 32);
      v214 += 32;
      v226 = OUTLINED_FUNCTION_16_0();
      v227(v226);
      GenerativeError.PromptError.type.getter();
      v228 = *(v215 + 88);
      v229 = OUTLINED_FUNCTION_64_0();
      if (v230(v229) == *MEMORY[0x277D0DA90])
      {
        v231 = OUTLINED_FUNCTION_147_0();
        v232(v231);
        v233 = *(v211 + 32);
        v234 = OUTLINED_FUNCTION_16_0();
        v235(v234);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v236 = OUTLINED_FUNCTION_195_0();
        __swift_project_value_buffer(v236, static Logging.answerSynthesis);
        v238 = *(v214 + 16);
        v237 = v214 + 16;
        v239 = OUTLINED_FUNCTION_94();
        v238(v239);
        v240 = OUTLINED_FUNCTION_39_5();
        v238(v240);
        v241 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_77_4();
        os_log_type_enabled(v241, v242);
        OUTLINED_FUNCTION_134_0();
        if (v243)
        {
          v237 = OUTLINED_FUNCTION_90_1();
          *v237 = 134218240;
          GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
          v244 = OUTLINED_FUNCTION_34_7();
          (v219)(v244);
          *(v237 + 4) = v241;
          v245 = OUTLINED_FUNCTION_182_0();
          v246 = OUTLINED_FUNCTION_30_5();
          (v219)(v246);
          *(v237 + 14) = v245;
          OUTLINED_FUNCTION_170_0(&dword_25D85C000, v247, v248, "Answer synthesis model caught too many tokens error: Token count = %ld, Maximum allowed = %ld.");
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
          OUTLINED_FUNCTION_36_6();
          v306 = OUTLINED_FUNCTION_30_5();
          (v219)(v306);
          v307 = OUTLINED_FUNCTION_26_2();
          (v219)(v307);
        }

        OUTLINED_FUNCTION_136_1();
        v308 = OUTLINED_FUNCTION_64_0();
        (v219)(v308);
        v309 = *(v237 + 8);
        v214 = v237 + 8;
        v304 = OUTLINED_FUNCTION_88();
        goto LABEL_85;
      }

      v277 = OUTLINED_FUNCTION_132_1();
      v278 = *(v0 + 944);
      v279 = *(v0 + 936);
      (*(v280 + 8))(v277);
      v281 = *(v278 + 8);
      v209 = v278 + 8;
      v282 = OUTLINED_FUNCTION_107();
      v283(v282);
    }

    else
    {
      v275 = OUTLINED_FUNCTION_133_1();
      v276(v275);
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v284 = OUTLINED_FUNCTION_216();
    __swift_project_value_buffer(v284, static Logging.answerSynthesis);
    v67 = *(v219 + 16);
    v285 = OUTLINED_FUNCTION_59_3();
    (v67)(v285);
    v286 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    v287 = OUTLINED_FUNCTION_20_3();
    os_log_type_enabled(v287, v288);
    OUTLINED_FUNCTION_186_0();
    if (v289)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v335 = OUTLINED_FUNCTION_153_0();
      *v209 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v290, v291);
      OUTLINED_FUNCTION_49_6();
      v292 = swift_allocError();
      v294 = OUTLINED_FUNCTION_129_2(v292, v293);
      (v67)(v294);
      v295 = _swift_stdlib_bridgeErrorToNSError();
      v296 = OUTLINED_FUNCTION_43_4();
      v297(v296);
      *(v209 + 4) = v295;
      *v335 = v295;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v298, v299, v300, v301, v302, 0xCu);
      outlined destroy of IntentApplication?(v335, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v303 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v303);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();

LABEL_86:
      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      OUTLINED_FUNCTION_156_0();
      v331 = v310;
      v336 = v311;
      v329 = *(v0 + 888);
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v312, v313);
      OUTLINED_FUNCTION_49_6();
      v314 = swift_allocError();
      OUTLINED_FUNCTION_188_0(v314, v315);
      v316 = *(v214 + 16);
      OUTLINED_FUNCTION_160_0();
      v316();
      OUTLINED_FUNCTION_92_3();
      (*(v317 + 320))(v67);

      OUTLINED_FUNCTION_133();
      (*(v318 + 208))(v329, v331, v22);
      (*(v209 + 8))(v22, v336);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      OUTLINED_FUNCTION_160_0();
      v316();
      swift_willThrow();
      v319 = OUTLINED_FUNCTION_187_0();
      v320(v319);

      goto LABEL_89;
    }

    v304 = OUTLINED_FUNCTION_43_4();
LABEL_85:
    v305(v304);
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_196_0(v340);
  *(v0 + 1280) = AnswerSynthesisRequest.userPrompt()();
  if (v121)
  {
    v122 = OUTLINED_FUNCTION_181_0();
    v123(v122);
    goto LABEL_62;
  }

  v22 = (v0 + 584);
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_94;
  }

LABEL_37:
  v125 = *(v0 + 1232);
  v126 = *(v0 + 880);
  *(v0 + 1296) = *v67;
  OUTLINED_FUNCTION_133();
  v127 += 39;
  v128 = *v127;
  *(v0 + 1304) = *v127;
  *(v0 + 1312) = v127 & 0xFFFFFFFFFFFFLL | 0x17EC000000000000;
  v129 = v128();
  v130 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  OUTLINED_FUNCTION_175_0();
  *(v0 + 1320) = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  v131 = OUTLINED_FUNCTION_65();
  if (!__swift_getEnumTagSinglePayload(v131, v132, v133))
  {
    LOBYTE(v340[0]) = 0;
    MEMORY[0x25F89E640](v129);
  }

  v134 = OUTLINED_FUNCTION_243();
  v130(v134);
  v135 = *(v0 + 880);
  v136 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  OUTLINED_FUNCTION_175_0();
  *(v0 + 1328) = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  v137 = OUTLINED_FUNCTION_65();
  if (__swift_getEnumTagSinglePayload(v137, v138, v139))
  {
LABEL_43:
    v136(v22, 0);
    v141 = *(v0 + 904);
    OUTLINED_FUNCTION_28_1();
    swift_beginAccess();
    outlined init with copy of ToolDatabaseProtocol?(v141 + 16, v0 + 392, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    if (*(v0 + 416))
    {
      v142 = *(v0 + 1192);
      outlined init with take of ResponseOverrideMatcherProtocol((v0 + 392), v0 + 352);
      Date.init()();
      v143 = *(v0 + 384);
      OUTLINED_FUNCTION_218((v0 + 352), *(v0 + 376));
      *(v0 + 456) = &type metadata for AnswerSynthesisRequest;
      *(v0 + 464) = lazy protocol witness table accessor for type AnswerSynthesisRequest and conformance AnswerSynthesisRequest();
      OUTLINED_FUNCTION_178_0();
      v144 = swift_allocObject();
      *(v0 + 432) = v144;
      OUTLINED_FUNCTION_196_0((v144 + 16));
      v145 = *(v143 + 32);
      outlined init with copy of AnswerSynthesisRequest(v0 + 16, v0 + 128);
      v333 = v145 + *v145;
      v146 = v145[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      *(v0 + 1336) = v147;
      *v147 = v148;
      v147[1] = AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:);
      OUTLINED_FUNCTION_214();

      __asm { BRAA            X5, X16 }
    }

    outlined destroy of IntentApplication?(v0 + 392, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
    OUTLINED_FUNCTION_211();
    if (v49)
    {
      goto LABEL_59;
    }

    goto LABEL_96;
  }

  OUTLINED_FUNCTION_30_5();
  result = String.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_96:
    OUTLINED_FUNCTION_0_5();
    swift_once();
LABEL_59:
    v186 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v186, static Logging.answerSynthesis);
    v187 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v188 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v188, v189))
    {
      OUTLINED_FUNCTION_28_3();
      v190 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v191 = swift_slowAlloc();
      v340[0] = v191;
      *v190 = *(v66 + 46);
      OUTLINED_FUNCTION_98_2();
      *(v190 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v192, v193, v194, v195, v196, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v191);
      v197 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v197);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v198 = *(v0 + 1200);
    v199 = *(v0 + 1184);
    v200 = *(v0 + 1176);
    lazy protocol witness table accessor for type AnswerSynthesisModelError and conformance AnswerSynthesisModelError();
    OUTLINED_FUNCTION_49_6();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_225(v22, v201);
    swift_willThrow();
    v202 = *(v199 + 8);
    v203 = OUTLINED_FUNCTION_26_2();
    v337 = v204;
    v204(v203);
    goto LABEL_62;
  }

  if (!HIDWORD(result))
  {
    LOBYTE(v340[0]) = 0;
    MEMORY[0x25F89E550](result);
    goto LABEL_43;
  }

  __break(1u);
  return result;
}

void AnswerSynthesisController.performSynthesisRequest(for:with:answerSynthesisMetrics:clientId:)()
{
  v2 = *(v0 + 1320);
  v3 = *(v0 + 880);
  v4 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_165_0(v4, v5);
  if (!__swift_getEnumTagSinglePayload(v7, v8, v2))
  {
    v9 = *(v0 + 1312);
    v10 = *(v0 + 1296);
    v11 = (*(v0 + 1304))(*(v0 + 1192));
    if ((v11 & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_56;
    }

    v12 = OUTLINED_FUNCTION_86_3(v11);
    MEMORY[0x25F89E5D0](v12);
  }

  v13 = OUTLINED_FUNCTION_243();
  v4(v13);
  v14 = *(v0 + 1352);
  v236 = *(v0 + 1344);
  v249 = *(v0 + 1328);
  v15 = *(v0 + 1288);
  v1 = *(v0 + 1280);
  v16 = *(v0 + 1272);
  v17 = *(v0 + 1264);
  v18 = *(v0 + 1208);
  v19 = *(v0 + 1184);
  v20 = *(v0 + 896);
  v21 = *(v0 + 888);
  v238 = *(v0 + 1176);
  v241 = *(v0 + 880);

  Date.init()();
  specialized SearchToolBiomeEvent.donate(timestamp:requestId:query:)(v18, v21, v20, v17, v16, v1, v15, v236, v14);

  v22 = *(v19 + 8);
  v22(v18, v238);
  v6 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  v24 = OUTLINED_FUNCTION_165_0(v6, v23);
  if (__swift_getEnumTagSinglePayload(v24, v25, v249))
  {
    goto LABEL_8;
  }

  v26 = *(v0 + 1352);
  v27 = *(v0 + 1344);
  v28 = String.count.getter();
  if ((v28 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v28))
    {
      MEMORY[0x25F89E560](v28);
LABEL_8:
      v6(v0 + 648, 0);
      v22(*(v0 + 1192), *(v0 + 1176));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 352));
      v250 = *(v0 + 1360);
      v29 = *(v0 + 1352);
      v30 = *(v0 + 1344);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logging.answerSynthesis);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        OUTLINED_FUNCTION_28_3();
        v33 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v253 = swift_slowAlloc();
        *v33 = 136642819;
        OUTLINED_FUNCTION_54_0();
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        _os_log_impl(&dword_25D85C000, v31, v32, "Got response from answer synthesis model: %{sensitive}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v253);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      v34 = *(v0 + 1104);
      v35 = *(v0 + 1096);
      v36 = *(v0 + 1088);
      static String.Encoding.utf8.getter();
      String.data(using:allowLossyConversion:)();
      v38 = v37;

      v39 = *(v35 + 8);
      v40 = OUTLINED_FUNCTION_141_0();
      v41(v40);
      if (v38 >> 60 == 15)
      {
        v42 = *(v0 + 1200);
        v43 = *(v0 + 1184);
        v44 = *(v0 + 1176);
        lazy protocol witness table accessor for type NetworkServiceError and conformance NetworkServiceError();
        OUTLINED_FUNCTION_49_6();
        v45 = swift_allocError();
        OUTLINED_FUNCTION_261(v46, 1);
        v47 = *(v43 + 8);
        v48 = OUTLINED_FUNCTION_153();
        v47(v48);
      }

      else
      {
        v49 = type metadata accessor for JSONDecoder();
        OUTLINED_FUNCTION_53_0(v49);
        swift_allocObject();
        JSONDecoder.init()();
        lazy protocol witness table accessor for type AnswerSynthesisModelResult and conformance AnswerSynthesisModelResult();
        OUTLINED_FUNCTION_241();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        if (!v250)
        {

          v128 = *(v0 + 712);
          *(v0 + 1368) = v128;
          v245 = *(v0 + 720);
          v251 = *(v0 + 728);
          *(v0 + 1376) = v251;
          v242 = *(v0 + 736);
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_2_0();
          }

          v129 = *(v0 + 1200);
          v130 = *(v0 + 880);
          OUTLINED_FUNCTION_133();
          v132 = (*(v131 + 312))();
          v133 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.modify();
          OUTLINED_FUNCTION_175_0();
          type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
          v134 = OUTLINED_FUNCTION_45_4();
          if (!__swift_getEnumTagSinglePayload(v134, v135, v136))
          {
            MEMORY[0x25F89E610](v132);
          }

          v133(v0 + 680, 0);
          v137 = *(v0 + 1200);
          v138 = *(v0 + 1184);
          v139 = *(v0 + 1176);
          v140 = OUTLINED_FUNCTION_118_0();
          outlined consume of Data?(v140, v141);
          v143 = *(v138 + 8);
          v142 = v138 + 8;
          *(v0 + 1384) = v143;
          *(v0 + 1392) = v142 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v144 = OUTLINED_FUNCTION_26_2();
          v145(v144);

          v146 = Logger.logObject.getter();
          v147 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v146, v147))
          {
            OUTLINED_FUNCTION_28_3();
            v148 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v254 = swift_slowAlloc();
            *v148 = 136642819;
            *(v0 + 776) = v128;
            v149 = v245;
            *(v0 + 784) = v245;
            *(v0 + 792) = v251;
            v128 = v242;
            *(v0 + 800) = v242;

            String.init<A>(describing:)();
            v151 = v150;
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_227();

            *(v148 + 4) = v142;
            OUTLINED_FUNCTION_70_0(&dword_25D85C000, v152, v147, "Answer synthesis got response: %{sensitive}s");
            __swift_destroy_boxed_opaque_existential_1Tm(v254);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {

            v149 = v245;
            v151 = v242;
          }

          v185 = *(v0 + 904);
          OUTLINED_FUNCTION_176_0();
          *(v0 + 744) = v128;
          *(v0 + 752) = v149;
          *(v0 + 760) = v251;
          *(v0 + 768) = v151;
          v186 = *(*v185 + 424);
          v252 = v186 + *v186;
          v187 = v186[1];
          swift_task_alloc();
          OUTLINED_FUNCTION_53();
          *(v0 + 1400) = v188;
          *v188 = v189;
          OUTLINED_FUNCTION_69_3(v188);
          OUTLINED_FUNCTION_249();

          __asm { BRAA            X7, X16 }
        }

        v45 = v250;
        v47 = *(*(v0 + 1184) + 8);
        (v47)(*(v0 + 1200), *(v0 + 1176));

        v50 = OUTLINED_FUNCTION_118_0();
        outlined consume of Data?(v50, v51);
      }

      v52 = *(v0 + 1080);
      v53 = *(v0 + 1048);
      *(v0 + 856) = v45;
      v54 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      OUTLINED_FUNCTION_62_3();
      v249 = v47;
      if (!swift_dynamicCast())
      {

        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        OUTLINED_FUNCTION_200(v6, static Logging.answerSynthesis);
        v102 = v45;
        v103 = Logger.logObject.getter();
        v104 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v103, v104))
        {
          OUTLINED_FUNCTION_28_3();
          swift_slowAlloc();
          v105 = OUTLINED_FUNCTION_153_0();
          *v52 = 138412290;
          v106 = v45;
          v107 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 4) = v107;
          *v105 = v107;
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
          outlined destroy of IntentApplication?(v105, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_2_0();
        }

        v113 = *(v0 + 928);
        v114 = *(v0 + 920);
        v115 = *(v0 + 912);
        v116 = *(v0 + 896);
        v117 = *(v0 + 888);
        OUTLINED_FUNCTION_133();
        (*(v118 + 320))(v45);
        OUTLINED_FUNCTION_133();
        v120 = *(v119 + 208);
        v121 = OUTLINED_FUNCTION_45_0();
        v122(v121);
        v123 = *(v114 + 8);
        v124 = OUTLINED_FUNCTION_32_0();
        v125(v124);
        swift_willThrow();
LABEL_52:
        v210 = *(v0 + 1256);
        v211 = *(v0 + 1248);
        v212 = *(v0 + 1240);
        v213 = *(v0 + 1232);
        v214 = *(v0 + 1224);
        v215 = *(v0 + 1216);
        v222 = *(v0 + 1208);
        v223 = *(v0 + 1200);
        v216 = *(v0 + 1184);
        v217 = *(v0 + 1176);
        v224 = *(v0 + 1192);
        v225 = *(v0 + 1168);
        v226 = *(v0 + 1160);
        v227 = *(v0 + 1152);
        v228 = *(v0 + 1128);
        v229 = *(v0 + 1104);
        v230 = *(v0 + 1080);
        v231 = *(v0 + 1072);
        v232 = *(v0 + 1064);
        v233 = *(v0 + 1040);
        v234 = *(v0 + 1016);
        v235 = *(v0 + 992);
        v237 = *(v0 + 984);
        v240 = *(v0 + 976);
        v244 = *(v0 + 952);
        v248 = *(v0 + 928);
        OUTLINED_FUNCTION_12_4();
        $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

        OUTLINED_FUNCTION_4_7();
        $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

        v218 = OUTLINED_FUNCTION_32_3();
        v249(v218);
        v219 = OUTLINED_FUNCTION_158();
        v249(v219);

        OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_249();

        __asm { BRAA            X1, X16 }
      }

      v55 = *(v0 + 1080);
      v56 = *(v0 + 1072);
      v57 = *(v0 + 1056);
      v58 = *(v0 + 1048);
      v1 = *(v0 + 1016);
      v59 = *(v0 + 1008);
      v60 = *(v0 + 1000);

      v61 = *(v57 + 32);
      v62 = OUTLINED_FUNCTION_62_3();
      v63(v62);
      GenerativeError.type.getter();
      v65 = *(v59 + 88);
      v64 = (v59 + 88);
      v66 = OUTLINED_FUNCTION_179_0();
      if (v67(v66) == *MEMORY[0x277D0DB78])
      {
        v68 = *(v0 + 1040);
        v69 = *(v0 + 1032);
        v70 = *(v0 + 1024);
        v71 = *(v0 + 952);
        v72 = *(v0 + 944);
        v1 = *(v0 + 936);
        (*(*(v0 + 1008) + 96))(*(v0 + 1016), *(v0 + 1000));
        v73 = *(v69 + 32);
        v74 = OUTLINED_FUNCTION_26_2();
        v75(v74);
        GenerativeError.PromptError.type.getter();
        v77 = *(v72 + 88);
        v76 = (v72 + 88);
        v78 = OUTLINED_FUNCTION_63_0();
        if (v79(v78) == *MEMORY[0x277D0DA90])
        {
          v80 = *(v0 + 992);
          v81 = *(v0 + 968);
          v82 = *(v0 + 960);
          (*(*(v0 + 944) + 96))(*(v0 + 952), *(v0 + 936));
          v83 = *(v81 + 32);
          v84 = OUTLINED_FUNCTION_26_2();
          v85(v84);
          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v86 = *(v0 + 992);
          v87 = *(v0 + 984);
          v88 = *(v0 + 976);
          v89 = *(v0 + 968);
          v90 = *(v0 + 960);
          __swift_project_value_buffer(v6, static Logging.answerSynthesis);
          v92 = *(v89 + 16);
          v91 = v89 + 16;
          v93 = OUTLINED_FUNCTION_62_3();
          v92(v93);
          (v92)(v88, v86, v90);
          v94 = Logger.logObject.getter();
          static os_log_type_t.error.getter();
          OUTLINED_FUNCTION_77_4();
          os_log_type_enabled(v94, v95);
          OUTLINED_FUNCTION_134_0();
          if (v96)
          {
            v91 = OUTLINED_FUNCTION_90_1();
            *v91 = 134218240;
            GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
            v97 = OUTLINED_FUNCTION_34_7();
            v76(v97);
            *(v91 + 4) = v94;
            v98 = OUTLINED_FUNCTION_182_0();
            v99 = OUTLINED_FUNCTION_30_5();
            v76(v99);
            *(v91 + 14) = v98;
            OUTLINED_FUNCTION_170_0(&dword_25D85C000, v100, v101, "Answer synthesis model caught too many tokens error: Token count = %ld, Maximum allowed = %ld.");
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
          }

          else
          {
            OUTLINED_FUNCTION_36_6();
            v192 = OUTLINED_FUNCTION_30_5();
            v76(v192);
            v193 = OUTLINED_FUNCTION_26_2();
            v76(v193);
          }

          OUTLINED_FUNCTION_136_1();
          v194 = OUTLINED_FUNCTION_64_0();
          v76(v194);
          v195 = *(v91 + 8);
          v1 = v91 + 8;
          v183 = OUTLINED_FUNCTION_88();
          goto LABEL_48;
        }

        v153 = OUTLINED_FUNCTION_132_1();
        v154 = *(v0 + 944);
        v155 = *(v0 + 936);
        (*(v156 + 8))(v153);
        v157 = *(v154 + 8);
        v158 = OUTLINED_FUNCTION_88();
        v159(v158);
      }

      else
      {
        v126 = OUTLINED_FUNCTION_133_1();
        v127(v126);
      }

      if (one-time initialization token for answerSynthesis == -1)
      {
LABEL_39:
        v160 = *(v0 + 1072);
        v161 = *(v0 + 1064);
        v162 = *(v0 + 1056);
        v163 = *(v0 + 1048);
        __swift_project_value_buffer(v6, static Logging.answerSynthesis);
        v64 = *(v162 + 16);
        v164 = OUTLINED_FUNCTION_39_5();
        v64(v164);
        v165 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v166 = OUTLINED_FUNCTION_20_3();
        os_log_type_enabled(v166, v167);
        OUTLINED_FUNCTION_186_0();
        if (v168)
        {
          OUTLINED_FUNCTION_28_3();
          swift_slowAlloc();
          v246 = OUTLINED_FUNCTION_153_0();
          *v161 = 138412290;
          OUTLINED_FUNCTION_5_6();
          lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v169, v170);
          OUTLINED_FUNCTION_49_6();
          v171 = swift_allocError();
          v173 = OUTLINED_FUNCTION_129_2(v171, v172);
          v64(v173);
          v174 = _swift_stdlib_bridgeErrorToNSError();
          v175 = OUTLINED_FUNCTION_43_4();
          v176(v175);
          *(v161 + 4) = v174;
          *v246 = v174;
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v177, v178, v179, v180, v181, 0xCu);
          outlined destroy of IntentApplication?(v246, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v182 = OUTLINED_FUNCTION_19_5();
          MEMORY[0x25F8A1050](v182);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();

LABEL_49:
          if (one-time initialization token for shared != -1)
          {
            OUTLINED_FUNCTION_2_0();
          }

          v196 = *(v0 + 1072);
          v197 = *(v0 + 1056);
          v198 = *(v0 + 1048);
          v199 = *(v0 + 928);
          v200 = *(v0 + 920);
          v243 = *(v0 + 896);
          v247 = *(v0 + 912);
          v239 = *(v0 + 888);
          OUTLINED_FUNCTION_5_6();
          lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v201, v202);
          OUTLINED_FUNCTION_49_6();
          v203 = swift_allocError();
          OUTLINED_FUNCTION_188_0(v203, v204);
          v205 = *(v1 + 16);
          OUTLINED_FUNCTION_160_0();
          v205();
          OUTLINED_FUNCTION_92_3();
          (*(v206 + 320))(v64);

          OUTLINED_FUNCTION_133();
          (*(v207 + 208))(v239, v243, v199);
          (*(v200 + 8))(v199, v247);
          OUTLINED_FUNCTION_49_6();
          swift_allocError();
          OUTLINED_FUNCTION_160_0();
          v205();
          swift_willThrow();
          v208 = OUTLINED_FUNCTION_187_0();
          v209(v208);

          goto LABEL_52;
        }

        v183 = OUTLINED_FUNCTION_43_4();
LABEL_48:
        v184(v183);
        goto LABEL_49;
      }

LABEL_58:
      OUTLINED_FUNCTION_0_5();
      swift_once();
      goto LABEL_39;
    }

LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_56:
  __break(1u);
  goto LABEL_57;
}

uint64_t AnswerSynthesisController.answerSynthesisResponseOverride(query:)(uint64_t a1, uint64_t a2)
{
  static SearchOverrides.match(rewrittenQuery:)(a1, a2, &v6);
  v3 = v7;
  if (!v7 || (v4 = v8, v5 = v6, , outlined consume of SearchOverride?(v5, v3), !v4))
  {
    if (AFIsInternalInstall())
    {
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      static NSUserDefaults.answerSynthesisResponseOverride.getter();
    }
  }

  return OUTLINED_FUNCTION_94();
}

uint64_t AnswerSynthesisController.synthesisResultInvalid(_:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = *(v3 + 256);
  OUTLINED_FUNCTION_133();
  if (((*(v8 + 80))(8) & 1) == 0)
  {
    goto LABEL_4;
  }

  AnswerSynthesisController.answerSynthesisResponseOverride(query:)(a2, a3);
  if (v9)
  {

LABEL_4:
    v10 = 0;
    return v10 & 1;
  }

  v10 = v6 ^ 1;
  if (v6 == 2)
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 456) = a6;
  *(v8 + 464) = a7;
  *(v8 + 440) = a4;
  *(v8 + 448) = a5;
  *(v8 + 424) = a1;
  *(v8 + 432) = a2;
  v9 = *a2;
  v10 = a2[1];
  *(v8 + 472) = v7;
  *(v8 + 480) = v9;
  *(v8 + 488) = v10;
  *(v8 + 496) = *a3;
  *(v8 + 512) = *(a3 + 16);
  *(v8 + 395) = *(a3 + 24);
  v11 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:)()
{
  OUTLINED_FUNCTION_72();
  v22 = v0;
  v1 = *(v0 + 395);
  v2 = *(v0 + 512);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  v5 = *(v0 + 472);
  v19 = *(v0 + 496);
  v20 = v2;
  v21 = v1;
  if (AnswerSynthesisController.synthesisResultInvalid(_:query:)(&v19, v3, v4))
  {
    v6 = *(v0 + 448);
    v7 = *(v0 + 424);
    AnswerSynthesisController.contentSearchFallback(with:reason:)();
    OUTLINED_FUNCTION_106();

    return v8();
  }

  else
  {
    v10 = *(v0 + 395);
    v11 = *(v0 + 512);
    v13 = *(v0 + 480);
    v12 = *(v0 + 488);
    v14 = *(v0 + 432);
    *(v0 + 368) = *(v0 + 496);
    *(v0 + 384) = v11;
    *(v0 + 392) = v10;
    *(v0 + 16) = v13;
    *(v0 + 24) = v12;
    memcpy((v0 + 32), (v14 + 16), 0x60uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_53();
    *(v0 + 520) = v15;
    *v15 = v16;
    v15[1] = AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:);
    v17 = *(v0 + 472);
    v18 = *(v0 + 440);

    return AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:)();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 520);
  v6 = *v1;
  OUTLINED_FUNCTION_11();
  *v7 = v6;
  *(v8 + 528) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[59];
  memcpy(v0 + 26, v0 + 16, 0x50uLL);
  memcpy(v0 + 36, v0 + 16, 0x50uLL);
  OUTLINED_FUNCTION_92_3();
  v11 = (*(v2 + 440) + **(v2 + 440));
  v3 = *(*(v2 + 440) + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  v0[67] = v4;
  *v4 = v5;
  v4[1] = AnswerSynthesisController.convertSynthesisResultToSearchResultAnswers(request:synthesisResult:searchResults:answerSynthesisMetrics:clientId:);
  v6 = v0[58];
  v7 = v0[59];
  v8 = v0[56];
  v9 = v0[57];

  return v11(v0 + 36, v8, v9, v6);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 536);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 544) = v0;

  if (!v0)
  {
    *(v5 + 396) = v3 & 1;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  OUTLINED_FUNCTION_75();
  if (*(v0 + 396))
  {
    outlined destroy of PQAVerificationRequest(v0 + 208);
    v2 = 7;
    goto LABEL_13;
  }

  v3 = *(v0 + 280);

  outlined destroy of PQAVerificationRequest(v0 + 208);
  v4 = *(v3 + 16);
  if (v4 == 1)
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v7, static Logging.answerSynthesis);
    v8 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v9 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_51_5();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_157_0(v11);
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      v17 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v17);
    }

    if (!*(v3 + 16))
    {
      __break(1u);
      goto LABEL_29;
    }

    v18 = *(v0 + 424);
    v19 = type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_114(v19);
    v21 = *(v20 + 80);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v3 + v22, v18);

    type metadata accessor for AnswerSynthesisResult();
    swift_storeEnumTagMultiPayload();
LABEL_22:
    OUTLINED_FUNCTION_106();
    goto LABEL_25;
  }

  if (!v4)
  {
    v5 = *(v0 + 448);
    v6 = *(v0 + 424);

    AnswerSynthesisController.contentSearchFallback(with:reason:)();
    goto LABEL_22;
  }

  v2 = 8;
LABEL_13:
  lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
  OUTLINED_FUNCTION_49_6();
  v23 = swift_allocError();
  *v24 = v2;
  swift_willThrow();
  *(v0 + 416) = v23;
  v25 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_189_0();
    if (!v26)
    {
      OUTLINED_FUNCTION_94_2();
      *(v0 + 400) = v42;
      *(v0 + 408) = v43;
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_217();
      *(v0 + 394) = v1;
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_169_0();

LABEL_21:

      goto LABEL_22;
    }

    if (v1 == 5)
    {
      if (one-time initialization token for answerSynthesis == -1)
      {
LABEL_18:
        v27 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v27, static Logging.answerSynthesis);
        v28 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        v29 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v29, v30))
        {
          OUTLINED_FUNCTION_51_5();
          v31 = swift_slowAlloc();
          OUTLINED_FUNCTION_81_4(v31);
          OUTLINED_FUNCTION_25_6();
          _os_log_impl(v32, v33, v34, v35, v36, 2u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v37 = *(v0 + 424);

        type metadata accessor for AnswerSynthesisResult();
        OUTLINED_FUNCTION_124_2();
        swift_storeEnumTagMultiPayload();
        goto LABEL_21;
      }

LABEL_29:
      OUTLINED_FUNCTION_0_5();
      swift_once();
      goto LABEL_18;
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v39 = swift_allocError();
    OUTLINED_FUNCTION_220(v39, v40);
  }

  OUTLINED_FUNCTION_127();
LABEL_25:

  return v38();
}

{
  OUTLINED_FUNCTION_75();
  v2 = *(v0 + 528);
  *(v0 + 416) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_189_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_94_2();
      *(v0 + 400) = v20;
      *(v0 + 408) = v21;
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_217();
      *(v0 + 394) = v1;
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_169_0();

LABEL_10:

      OUTLINED_FUNCTION_106();
      goto LABEL_13;
    }

    if (v1 == 5)
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v5, static Logging.answerSynthesis);
      v6 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v7 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v7, v8))
      {
        OUTLINED_FUNCTION_51_5();
        v9 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v9);
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      v15 = *(v0 + 424);

      type metadata accessor for AnswerSynthesisResult();
      OUTLINED_FUNCTION_124_2();
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_220(v17, v18);
  }

  OUTLINED_FUNCTION_127();
LABEL_13:

  return v16();
}

{
  OUTLINED_FUNCTION_75();
  outlined destroy of PQAVerificationRequest(v0 + 208);
  v2 = *(v0 + 544);
  *(v0 + 416) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    OUTLINED_FUNCTION_189_0();
    if (!v4)
    {
      OUTLINED_FUNCTION_94_2();
      *(v0 + 400) = v20;
      *(v0 + 408) = v21;
      OUTLINED_FUNCTION_98_2();
      OUTLINED_FUNCTION_217();
      *(v0 + 394) = v1;
      _print_unlocked<A, B>(_:_:)();
      OUTLINED_FUNCTION_169_0();

LABEL_10:

      OUTLINED_FUNCTION_106();
      goto LABEL_13;
    }

    if (v1 == 5)
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v5, static Logging.answerSynthesis);
      v6 = Logger.logObject.getter();
      static os_log_type_t.error.getter();
      v7 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v7, v8))
      {
        OUTLINED_FUNCTION_51_5();
        v9 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v9);
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v10, v11, v12, v13, v14, 2u);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      v15 = *(v0 + 424);

      type metadata accessor for AnswerSynthesisResult();
      OUTLINED_FUNCTION_124_2();
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v17 = swift_allocError();
    OUTLINED_FUNCTION_220(v17, v18);
  }

  OUTLINED_FUNCTION_127();
LABEL_13:

  return v16();
}

uint64_t AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:)()
{
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_135_1();
  *(v2 + 288) = v4;
  v5 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_21(v5);
  *(v2 + 296) = v6;
  v8 = *(v7 + 64);
  *(v2 + 304) = OUTLINED_FUNCTION_199();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
  *(v2 + 312) = v9;
  OUTLINED_FUNCTION_21(v9);
  *(v2 + 320) = v10;
  v12 = *(v11 + 64) + 15;
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  v13 = swift_task_alloc();
  v14 = *(v3 + 2);
  v15 = *(v3 + 24);
  v16 = *v1;
  v17 = v1[1];
  *(v2 + 344) = v13;
  *(v2 + 352) = v16;
  v18 = *(v1 + 2);
  *(v2 + 32) = *(v1 + 1);
  *(v2 + 48) = v18;
  *(v2 + 64) = *(v1 + 3);
  v19 = v1[8];
  v20 = v1[9];
  *(v2 + 360) = v17;
  *(v2 + 368) = v20;
  *(v2 + 112) = *(v1 + 6);
  v21 = *v3;
  v22 = v1[10];
  v23 = v1[11];
  *(v2 + 376) = v22;
  *(v2 + 384) = v23;
  *(v2 + 256) = v21;
  *(v2 + 272) = v14;
  *(v2 + 280) = v15;
  *(v2 + 16) = v16;
  *(v2 + 24) = v17;
  *(v2 + 80) = v19;
  *(v2 + 88) = v20;
  *(v2 + 96) = v22;
  *(v2 + 104) = v23;
  v28 = (*v0 + 448);
  v29 = (*v28 + **v28);
  v24 = (*v28)[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v2 + 392) = v25;
  *v25 = v26;
  v25[1] = AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:);
  OUTLINED_FUNCTION_117_2();

  return v29();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 392);
  *v3 = *v1;
  *(v2 + 400) = v6;
  *(v2 + 408) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[51];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[38];

  OUTLINED_FUNCTION_127();

  return v6();
}

void AnswerSynthesisController.createPQAVerificationRequest(answerSynthesisResult:answerSynthesisRequest:referenceSearchResults:)()
{
  v1 = v0[50];
  v2 = *(v1 + 16);
  if (v2)
  {
    v146 = v0[41];
    v147 = v0[42];
    v3 = v0[40];
    v145 = v0[39];
    v156 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v4 = v156;
    v5 = *(v3 + 80);
    OUTLINED_FUNCTION_79();
    v7 = v1 + v6;
    v143 = v0;
    v144 = *(v3 + 72);
    v140 = v1 + v6;
    v141 = v2;
    do
    {
      v9 = v0[42];
      v8 = v0[43];
      v10 = v0[41];
      outlined init with copy of ToolDatabaseProtocol?(v7, v8, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      v11 = OUTLINED_FUNCTION_70_2();
      outlined init with copy of ToolDatabaseProtocol?(v11, v12, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      v13 = v147[1];
      v14 = v147[2];
      v15 = v147[4];
      v16 = v147[5];
      v17 = *(v145 + 48);
      log = v147[3];
      v152 = *v9;
      *v10 = *v9;
      v146[1] = v13;
      v146[2] = v14;
      v146[3] = log;
      v146[4] = v15;
      v146[5] = v16;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v9 + v18, v10 + v18);

      outlined destroy of IntentApplication?(v10, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      outlined destroy of IntentApplication?(v8, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
      isa = v156[2].isa;
      v19 = v156[3].isa;
      v21 = isa + 1;
      if (isa >= v19 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v19);
        OUTLINED_FUNCTION_235();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v156[2].isa = v21;
      v22 = &v156[6 * isa];
      v22[4].isa = v152;
      v22[5].isa = v13;
      v22[6].isa = v14;
      v22[7].isa = log;
      v22[8].isa = v15;
      v22[9].isa = v16;
      v0 = v143;
      v7 += v144;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch26AnswerSynthesisModelResultV0F8ResponseVGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25DBC8180;
    if (!v156[2].isa)
    {
      goto LABEL_99;
    }

    v2 = inited;
    v24 = v156[5].isa;
    v26 = v156[6].isa;
    v25 = v156[7].isa;
    v28 = v156[8].isa;
    v27 = v156[9].isa;
    *(v2 + 32) = v156[4];
    *(v2 + 40) = v24;
    *(v2 + 48) = v26;
    *(v2 + 56) = v25;
    *(v2 + 64) = v28;
    *(v2 + 72) = v27;

    v29 = 0;
    v14 = MEMORY[0x277D84F90];
    v4 = v2;
    while (1)
    {
      v30 = &loc_25DBC7000;
      if (v29)
      {
        goto LABEL_26;
      }

      v15 = v14;
      v16 = v4[4].isa;
      v2 = v4[5].isa;
      v13 = v4[6].isa;
      v21 = v4[7].isa;
      v7 = v4[8].isa;
      v14 = v4[9].isa;
      if (!v7)
      {
        break;
      }

      v31 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v31 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31)
      {
        break;
      }

      v32 = v4[8].isa;

      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = *(v15 + 16);
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v39;
      }

      v0 = v143;
      v34 = *(v14 + 16);
      v33 = *(v14 + 24);
      OUTLINED_FUNCTION_226();
      if (v36)
      {
        OUTLINED_FUNCTION_22_5(v35);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v40;
      }

      *(v14 + 16) = 0x25DBC7000;
      v37 = v14 + 16 * v34;
      *(v37 + 32) = v21;
      *(v37 + 40) = v7;
      v29 = 1;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      goto LABEL_100;
    }

    while (1)
    {
      v41 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v41, static Logging.answerSynthesis);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_28_3();
        logc = v42;
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v157 = swift_slowAlloc();
        *v44 = 136642819;
        v138 = v43;
        v0 = v143;
        v143[26] = v16;
        v143[27] = v2;
        v143[28] = v13;
        v143[29] = v21;
        v143[30] = v7;
        v143[31] = v14;

        String.init<A>(describing:)();
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v44 + 4) = v45;
        _os_log_impl(&dword_25D85C000, logc, v138, "No dialog from AS model response %{sensitive}s", v44, 0xCu);
        v2 = v157;
        __swift_destroy_boxed_opaque_existential_1Tm(v157);
        v46 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v46);
        v30 = &loc_25DBC7000;
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();

        v14 = v15;
      }

      else
      {

        v0 = v143;
        v14 = v15;
        v30 = &loc_25DBC7000;
      }

LABEL_26:

      if (!*(v14 + 16))
      {
        break;
      }

      v52 = v30;
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v53, static Logging.answerSynthesis);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_28_3();
        v56 = swift_slowAlloc();
        OUTLINED_FUNCTION_9_4();
        v7 = swift_slowAlloc();
        *v56 = v52[200];
        MEMORY[0x25F89F8A0](v14, MEMORY[0x277D837D0]);
        v2 = v57;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v56 + 4) = v58;
        OUTLINED_FUNCTION_184_0(&dword_25D85C000, v54, v55, "%{sensitive}s");
        OUTLINED_FUNCTION_139_1();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      v59 = 0;
      v13 = MEMORY[0x277D84F90];
      v21 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v59)
        {
          goto LABEL_51;
        }

        v60 = v4[8].isa;
        if (v60 && ((v60 & 0x2000000000000000) != 0 ? (v61 = (v60 >> 56) & 0xF) : (v61 = v4[7].isa & 0xFFFFFFFFFFFFLL), v61))
        {
          v16 = v4[6].isa;
        }

        else
        {
          v16 = v13;
        }

        v15 = *(v16 + 2);
        v2 = *(v21 + 16);
        v7 = v2 + v15;
        if (__OFADD__(v2, v15))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v7 > *(v21 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v21 = v62;
        }

        if (*(v16 + 2))
        {
          if ((*(v21 + 24) >> 1) - *(v21 + 16) < v15)
          {
            goto LABEL_95;
          }

          OUTLINED_FUNCTION_224();
          swift_arrayInitWithCopy();

          v59 = 1;
          if (v15)
          {
            v63 = *(v21 + 16);
            v64 = __OFADD__(v63, v15);
            v65 = v63 + v15;
            if (v64)
            {
              goto LABEL_96;
            }

            *(v21 + 16) = v65;
            v59 = 1;
          }
        }

        else
        {

          v59 = 1;
          if (v15)
          {
            __break(1u);
LABEL_51:
            v139 = v14;
            v66 = v0[46];
            swift_setDeallocating();
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v21);
            v14 = 0;
            v16 = v66[2].isa;
            loga = v66 + 4;
            v153 = v66;
            v15 = v21 + 56;
            v4 = MEMORY[0x277D84F90];
LABEL_52:
            while (2)
            {
              if (v14 == v16)
              {
                logb = v4;
                v88 = v143[48];
                v89 = v143[45];
                v154 = v143[37];

                v158 = MEMORY[0x277D84F90];

                v90 = v141;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                v91 = v140;
                do
                {
                  v142 = v90;
                  v93 = v143[42];
                  v92 = v143[43];
                  v94 = v143[41];
                  v95 = v143[38];
                  outlined init with copy of ToolDatabaseProtocol?(v91, v92, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
                  outlined init with copy of ToolDatabaseProtocol?(v92, v93, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
                  v96 = v147[5];
                  v97 = *(v145 + 48);
                  v98 = *(v147 + 3);
                  v99 = *(v147 + 1);
                  *v94 = *v93;
                  *(v146 + 1) = v99;
                  *(v146 + 3) = v98;
                  v146[5] = v96;
                  OUTLINED_FUNCTION_1_7();
                  outlined init with take of ResultsDialog(v93 + v97, v94 + v97);
                  OUTLINED_FUNCTION_2_4();
                  _s10OmniSearch0B6ResultVWOcTm_1(v94 + v97, v95);
                  OUTLINED_FUNCTION_158_0();
                  outlined destroy of IntentApplication?(v100, v101, v102);
                  OUTLINED_FUNCTION_158_0();
                  outlined destroy of IntentApplication?(v103, v104, v105);
                  v107 = *(v158 + 16);
                  v106 = *(v158 + 24);
                  if (v107 >= v106 >> 1)
                  {
                    OUTLINED_FUNCTION_26_3(v106);
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  v108 = v143[38];
                  *(v158 + 16) = v107 + 1;
                  OUTLINED_FUNCTION_42_5();
                  v110 = *(v109 + 72);
                  OUTLINED_FUNCTION_1_7();
                  outlined init with take of ResultsDialog(v111, v112);
                  v91 += v144;
                  v90 = v142 - 1;
                }

                while (v142 != 1);
                v113 = v143[50];
                v115 = v143[47];
                v114 = v143[48];
                v117 = v143[44];
                v116 = v143[45];
                v118 = v143[42];
                v119 = v143[43];
                v155 = v143[41];
                v120 = v143[38];
                v121 = v143[36];

                *v121 = v117;
                *(v121 + 8) = v116;
                *(v121 + 16) = 0;
                *(v121 + 24) = 0xE000000000000000;
                *(v121 + 32) = v139;
                *(v121 + 40) = logb;
                *(v121 + 48) = v115;
                *(v121 + 56) = v114;
                *(v121 + 64) = 0;
                *(v121 + 72) = v158;

                OUTLINED_FUNCTION_106();
LABEL_90:
                OUTLINED_FUNCTION_249();

                __asm { BRAA            X1, X16 }
              }

              if (v14 >= v153[2].isa)
              {
                goto LABEL_94;
              }

              v67 = 0;
              v7 = loga[v14++].isa;
              v68 = 1 << *(v7 + 32);
              v69 = (v68 + 63) >> 6;
              v70 = 64;
              if (!v69)
              {
                goto LABEL_59;
              }

              while (1)
              {
                v71 = *(v7 + v70);
                if (v71)
                {
                  break;
                }

                v70 += 8;
                v67 -= 64;
                if (!--v69)
                {
                  goto LABEL_59;
                }
              }

              v72 = __clz(__rbit64(v71));
              if (v72 - v68 != v67)
              {
                if (-v67 < 0)
                {
                  goto LABEL_97;
                }

                v73 = v72 - v67;
                if (v73 >= v68)
                {
                  goto LABEL_97;
                }

                if (((*(v7 + v70) >> v72) & 1) == 0)
                {
                  goto LABEL_98;
                }

                v74 = (*(v7 + 48) + 16 * v73);
                v13 = *v74;
                v2 = v74[1];
              }

              else
              {
LABEL_59:
                v13 = 0;
                v2 = 0xE000000000000000;
              }

              if (*(v21 + 16))
              {
                v75 = *(v21 + 40);
                Hasher.init(_seed:)();

                String.hash(into:)();
                v76 = Hasher._finalize()();
                v77 = ~(-1 << *(v21 + 32));
                while (1)
                {
                  v78 = v76 & v77;
                  if (((*(v15 + (((v76 & v77) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v76 & v77)) & 1) == 0)
                  {
                    break;
                  }

                  v79 = (*(v21 + 48) + 16 * v78);
                  if (*v79 != v13 || v79[1] != v2)
                  {
                    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v76 = v78 + 1;
                    if ((v81 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v82 = v4[2].isa;
                    v83 = OUTLINED_FUNCTION_74_4();
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v83, v84, v85);
                  }

                  v2 = v4[2].isa;
                  v86 = v4[3].isa;
                  if (v2 >= v86 >> 1)
                  {
                    v87 = OUTLINED_FUNCTION_26_3(v86);
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v87, v2 + 1, 1);
                  }

                  v4[2].isa = (v2 + 1);
                  v4[v2 + 4].isa = v7;
                  goto LABEL_52;
                }
              }

              else
              {
                v7 = v2;
              }

              continue;
            }
          }
        }
      }

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
LABEL_100:
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v122 = v0[50];

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v123, static Logging.answerSynthesis);
    v49 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v124 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v124, v125))
    {
LABEL_89:

      lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      OUTLINED_FUNCTION_261(v131, 6);
      v133 = v0[42];
      v132 = v0[43];
      v134 = v0[41];
      v135 = v0[38];

      OUTLINED_FUNCTION_127();
      goto LABEL_90;
    }
  }

  else
  {
    v47 = v0[50];

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v48, static Logging.answerSynthesis);
    v49 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v50 = OUTLINED_FUNCTION_20_3();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_89;
    }
  }

  OUTLINED_FUNCTION_51_5();
  v126 = swift_slowAlloc();
  *v126 = 0;
  OUTLINED_FUNCTION_109_2();
  _os_log_impl(v127, v128, v129, v130, v126, 2u);
  OUTLINED_FUNCTION_90();
  MEMORY[0x25F8A1050]();
  goto LABEL_89;
}

uint64_t AnswerSynthesisController.contentSearchFallback(with:reason:)()
{
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v0, static Logging.answerSynthesis);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    OUTLINED_FUNCTION_28_3();
    v3 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    swift_slowAlloc();
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_130_2();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    OUTLINED_FUNCTION_139_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.contentSearchFallback.setter();
  type metadata accessor for AnswerSynthesisResult();
  OUTLINED_FUNCTION_124_2();

  return swift_storeEnumTagMultiPayload();
}

uint64_t AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)()
{
  OUTLINED_FUNCTION_48();
  v3 = v2;
  *(v1 + 288) = v4;
  *(v1 + 296) = v0;
  *(v1 + 272) = v5;
  *(v1 + 280) = v6;
  v7 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  *(v1 + 304) = v7;
  OUTLINED_FUNCTION_21(v7);
  *(v1 + 312) = v8;
  v10 = *(v9 + 64);
  *(v1 + 320) = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for GenerativeError.PromptError.ErrorType();
  *(v1 + 328) = v11;
  OUTLINED_FUNCTION_21(v11);
  *(v1 + 336) = v12;
  v14 = *(v13 + 64);
  *(v1 + 344) = OUTLINED_FUNCTION_199();
  v15 = type metadata accessor for GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo();
  *(v1 + 352) = v15;
  OUTLINED_FUNCTION_21(v15);
  *(v1 + 360) = v16;
  v18 = *(v17 + 64);
  *(v1 + 368) = OUTLINED_FUNCTION_160();
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  v19 = type metadata accessor for GenerativeError.ErrorType();
  *(v1 + 392) = v19;
  OUTLINED_FUNCTION_21(v19);
  *(v1 + 400) = v20;
  v22 = *(v21 + 64);
  *(v1 + 408) = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for GenerativeError.PromptError();
  *(v1 + 416) = v23;
  OUTLINED_FUNCTION_21(v23);
  *(v1 + 424) = v24;
  v26 = *(v25 + 64);
  *(v1 + 432) = OUTLINED_FUNCTION_199();
  v27 = type metadata accessor for GenerativeError();
  *(v1 + 440) = v27;
  OUTLINED_FUNCTION_21(v27);
  *(v1 + 448) = v28;
  v30 = *(v29 + 64);
  *(v1 + 456) = OUTLINED_FUNCTION_160();
  *(v1 + 464) = swift_task_alloc();
  *(v1 + 472) = swift_task_alloc();
  v31 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolHallucinationDetectionSource();
  *(v1 + 480) = v31;
  OUTLINED_FUNCTION_21(v31);
  *(v1 + 488) = v32;
  v34 = *(v33 + 64);
  *(v1 + 496) = OUTLINED_FUNCTION_199();
  v35 = type metadata accessor for Date();
  *(v1 + 504) = v35;
  OUTLINED_FUNCTION_21(v35);
  *(v1 + 512) = v36;
  v38 = *(v37 + 64);
  *(v1 + 520) = OUTLINED_FUNCTION_199();
  v39 = *(v3 + 8);
  *(v1 + 528) = *v3;
  *(v1 + 536) = v39;
  v40 = *(v3 + 32);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 112) = v40;
  v41 = *(v3 + 64);
  *(v1 + 128) = *(v3 + 48);
  *(v1 + 144) = v41;
  v42 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v42, v43, v44);
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 552);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  *(v5 + 560) = v0;

  if (!v0)
  {
    *(v5 + 568) = v3 & 1;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v1 = *(v0 + 544);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  OUTLINED_FUNCTION_133();
  (*(v7 + 312))(v2);
  OUTLINED_FUNCTION_92_3();
  v9 = *(v8 + 264);
  v10 = OUTLINED_FUNCTION_30_5();
  v11(v10);
  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_32_0();
  v14(v13);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
  v17 = *(v0 + 568);
  OUTLINED_FUNCTION_120_2();

  OUTLINED_FUNCTION_62();

  return v15(v17);
}

uint64_t AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  v17 = *(v16 + 296);
  OUTLINED_FUNCTION_133();
  v19 = (*(v18 + 232))();
  if (v19 == 2)
  {
    OUTLINED_FUNCTION_162_0();
    if (!v20)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v21, static Logging.answerSynthesis);
    v22 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v23 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_51_5();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v25);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v26, v27, v28, v29, v30, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v31 = swift_allocError();
    *v32 = 0;
    v277 = v31;
    swift_willThrow();
LABEL_7:
    OUTLINED_FUNCTION_35_7();
    a10 = v34;
    v275 = v33;

    OUTLINED_FUNCTION_62();
LABEL_17:
    OUTLINED_FUNCTION_115();

    return v50(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v275, v277, a13, a14, a15, a16);
  }

  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  AnswerSynthesisController.answerSynthesisResponseOverride(query:)(*(v16 + 528), *(v16 + 536));
  if (v35)
  {

LABEL_11:
    OUTLINED_FUNCTION_162_0();
    if (!v20)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v36, static Logging.answerSynthesis);
    v37 = Logger.logObject.getter();
    static os_log_type_t.info.getter();
    v38 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_51_5();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v40);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v41, v42, v43, v44, v45, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

LABEL_16:
    OUTLINED_FUNCTION_35_7();
    v275 = v47;
    v277 = v46;

    OUTLINED_FUNCTION_62();
    goto LABEL_17;
  }

  v57 = *(v16 + 296);
  OUTLINED_FUNCTION_28_1();
  swift_beginAccess();
  outlined init with copy of ToolDatabaseProtocol?(v57 + 56, v16 + 200, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
  if (!*(v16 + 224))
  {
    outlined destroy of IntentApplication?(v16 + 200, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
    OUTLINED_FUNCTION_162_0();
    if (!v20)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v276 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v276, static Logging.answerSynthesis);
    v98 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v99 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_51_5();
      v101 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v101);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v102, v103, v104, v105, v106, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v107 = lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v108 = swift_allocError();
    OUTLINED_FUNCTION_225(v108, v109);
    swift_willThrow();
    v110 = *(v16 + 472);
    v111 = *(v16 + 440);
    *(v16 + 264) = v108;
    v112 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v277 = v107;
    a9 = v16;
    if ((OUTLINED_FUNCTION_221() & 1) == 0)
    {

      if (one-time initialization token for shared != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      v178 = *(v16 + 312);
      v179 = *(v16 + 320);
      v180 = *(v16 + 304);
      v182 = *(v16 + 280);
      v181 = *(v16 + 288);
      v183 = static MetricsLogger.shared;
      OUTLINED_FUNCTION_49_6();
      v184 = swift_allocError();
      OUTLINED_FUNCTION_247();
      *v185 = v186;
      (*(*v183 + 320))();

      OUTLINED_FUNCTION_92_3();
      v188 = *(v187 + 272);
      v189 = OUTLINED_FUNCTION_118_0();
      v190(v189);
      (*(v178 + 8))(v179, v180);
      OUTLINED_FUNCTION_162_0();
      if (!v20)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      OUTLINED_FUNCTION_200(v276, static Logging.answerSynthesis);
      v191 = v108;
      v192 = Logger.logObject.getter();
      static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_259())
      {
        OUTLINED_FUNCTION_28_3();
        v193 = swift_slowAlloc();
        v194 = OUTLINED_FUNCTION_173_0();
        *v193 = 138412290;
        v195 = v108;
        v196 = _swift_stdlib_bridgeErrorToNSError();
        *(v193 + 4) = v196;
        *v194 = v196;
        OUTLINED_FUNCTION_109_2();
        _os_log_impl(v197, v198, v199, v200, v193, 0xCu);
        outlined destroy of IntentApplication?(v194, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v201 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v201);
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      OUTLINED_FUNCTION_49_6();
      v202 = swift_allocError();
      OUTLINED_FUNCTION_118_1(v202, v203);

      goto LABEL_7;
    }

    v113 = *(v16 + 464);
    v114 = *(v16 + 472);
    v116 = *(v16 + 440);
    v115 = *(v16 + 448);
    v118 = *(v16 + 400);
    v117 = *(v16 + 408);
    v119 = *(v16 + 392);

    v120 = *(v115 + 32);
    v121 = OUTLINED_FUNCTION_26_2();
    v122(v121);
    GenerativeError.type.getter();
    v123 = *(v118 + 88);
    v124 = OUTLINED_FUNCTION_179_0();
    if (v125(v124) == *MEMORY[0x277D0DB78])
    {
      v126 = *(v16 + 424);
      v127 = *(v16 + 432);
      v128 = *(v16 + 416);
      v130 = *(v16 + 336);
      v129 = *(v16 + 344);
      v131 = *(v16 + 328);
      (*(*(v16 + 400) + 96))(*(v16 + 408), *(v16 + 392));
      v132 = *(v126 + 32);
      v133 = OUTLINED_FUNCTION_88();
      v134(v133);
      GenerativeError.PromptError.type.getter();
      v135 = *(v130 + 88);
      v136 = OUTLINED_FUNCTION_63_0();
      v138 = v16;
      if (v137(v136) == *MEMORY[0x277D0DA90])
      {
        v139 = *(v16 + 384);
        v141 = *(v16 + 352);
        v140 = v138[45];
        (*(v138[42] + 96))(v138[43], v138[41]);
        v142 = *(v140 + 32);
        v143 = OUTLINED_FUNCTION_107();
        v144(v143);
        if (one-time initialization token for shared != -1)
        {
          OUTLINED_FUNCTION_2_0();
        }

        v145 = v138[58];
        v147 = v138[55];
        v146 = v138[56];
        v149 = v138[39];
        v148 = v138[40];
        v279 = v138[38];
        v150 = v138[35];
        a10 = v138[36];
        OUTLINED_FUNCTION_5_6();
        lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v151, v152);
        OUTLINED_FUNCTION_49_6();
        v153 = swift_allocError();
        (*(v146 + 16))(v154, v145, v147);
        OUTLINED_FUNCTION_92_3();
        (*(v155 + 320))(v153);

        OUTLINED_FUNCTION_92_3();
        (*(v156 + 272))(v150, a10, v148);
        (*(v149 + 8))(v148, v279);
        OUTLINED_FUNCTION_162_0();
        if (!v20)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v158 = v138[47];
        v157 = v138[48];
        v160 = v138[45];
        v159 = v138[46];
        v161 = v138[44];
        __swift_project_value_buffer(v276, static Logging.answerSynthesis);
        v162 = *(v160 + 16);
        v162(v158, v157, v161);
        v163 = OUTLINED_FUNCTION_59_3();
        (v162)(v163);
        v164 = Logger.logObject.getter();
        static os_log_type_t.error.getter();
        OUTLINED_FUNCTION_77_4();
        v166 = os_log_type_enabled(v164, v165);
        v168 = v138[46];
        v167 = v138[47];
        v171 = v138 + 44;
        v169 = v138[44];
        v170 = v171[1];
        if (v166)
        {
          v172 = OUTLINED_FUNCTION_90_1();
          *v172 = 134218240;
          v173 = GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
          v174 = *(v170 + 8);
          v175 = OUTLINED_FUNCTION_26_2();
          v174(v175);
          *(v172 + 4) = v173;
          *(v172 + 12) = 2048;
          v176 = GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCountMaximum.getter();
          v177 = OUTLINED_FUNCTION_30_5();
          v280 = v174;
          v174(v177);
          *(v172 + 14) = v176;
          _os_log_impl(&dword_25D85C000, v164, v161, "PQA verification caught too many tokens error: Token count = %ld, Maximum allowed = %ld. Treat this error as non-fatal. Returning the only answer.", v172, 0x16u);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        else
        {
          v256 = *(v170 + 8);
          v257 = OUTLINED_FUNCTION_30_5();
          v256(v257);
          v258 = OUTLINED_FUNCTION_26_2();
          v280 = v256;
          v256(v258);
        }

        v259 = v164;
        v260 = *(a9 + 464);
        v261 = *(a9 + 440);
        v262 = *(a9 + 448);
        v263 = *(a9 + 424);
        v264 = *(a9 + 432);
        v265 = *(a9 + 416);
        v266 = *(a9 + 384);
        v267 = *(a9 + 352);

        v268 = OUTLINED_FUNCTION_63_0();
        v280(v268);
        v269 = *(v263 + 8);
        v270 = OUTLINED_FUNCTION_54_0();
        v271(v270);
        v272 = *(v262 + 8);
        v273 = OUTLINED_FUNCTION_242();
        v274(v273);

        goto LABEL_16;
      }

      v205 = *(v16 + 424);
      v204 = *(v16 + 432);
      v206 = *(v16 + 416);
      v207 = *(v16 + 336);
      v208 = *(v16 + 344);
      v209 = *(v16 + 328);
      (*(v205 + 8))(v204, v206);
      (*(v207 + 8))(v208, v209);
    }

    else
    {
      (*(*(v16 + 400) + 8))(*(v16 + 408), *(v16 + 392));
      v138 = v16;
    }

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v210 = v138[39];
    v211 = v138[40];
    v212 = v138[38];
    v214 = v138[35];
    v213 = v138[36];
    v215 = static MetricsLogger.shared;
    OUTLINED_FUNCTION_49_6();
    v216 = swift_allocError();
    OUTLINED_FUNCTION_247();
    *v217 = v218;
    (*(*v215 + 320))();

    OUTLINED_FUNCTION_92_3();
    v220 = *(v219 + 272);
    v221 = OUTLINED_FUNCTION_45_0();
    v222(v221);
    (*(v210 + 8))(v211, v212);
    OUTLINED_FUNCTION_162_0();
    if (!v20)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v224 = v138[57];
    v223 = v138[58];
    v225 = v138;
    v226 = v138[55];
    v227 = v138[56];
    v228 = __swift_project_value_buffer(v276, static Logging.answerSynthesis);
    v231 = *(v227 + 16);
    v230 = (v227 + 16);
    v229 = v231;
    v231(v224, v223, v226);
    v232 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v233 = OUTLINED_FUNCTION_20_3();
    v235 = os_log_type_enabled(v233, v234);
    v237 = v225[56];
    v236 = v225[57];
    v238 = v225[55];
    if (v235)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      v239 = OUTLINED_FUNCTION_152_0();
      *v228 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v240, v241);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      v229(v242, v236, v238);
      v243 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_36_6();
      v244 = OUTLINED_FUNCTION_63_0();
      v230(v244);
      *(v228 + 4) = v243;
      *v239 = v243;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v245, v246, v247, v248, v249, 0xCu);
      outlined destroy of IntentApplication?(v239, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v250 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v250);
    }

    else
    {

      OUTLINED_FUNCTION_36_6();
      v251 = OUTLINED_FUNCTION_63_0();
      v230(v251);
    }

    v252 = *(a9 + 464);
    v253 = *(a9 + 440);
    OUTLINED_FUNCTION_49_6();
    v254 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v254, v255);
    (v230)(v252, v253);

    goto LABEL_7;
  }

  outlined init with take of ResponseOverrideMatcherProtocol((v16 + 200), v16 + 160);
  OUTLINED_FUNCTION_162_0();
  if (!v20)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v58, static Logging.answerSynthesis);
  v59 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v60 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v60, v61))
  {
    OUTLINED_FUNCTION_51_5();
    v62 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v62);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v63, v64, v65, v66, v67, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v68 = *(v16 + 520);

  Date.init()();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v69 = *(v16 + 536);
  v70 = *(v16 + 528);
  v72 = *(v16 + 488);
  v71 = *(v16 + 496);
  v73 = *(v16 + 480);
  v75 = *(v16 + 280);
  v74 = *(v16 + 288);
  v76 = static MetricsLogger.shared;
  *(v16 + 544) = static MetricsLogger.shared;
  (*(v72 + 104))(v71, *MEMORY[0x277D1FC68], v73);
  (*(*v76 + 256))(v75, v74, v71);
  v77 = *(v72 + 8);
  v78 = OUTLINED_FUNCTION_32_0();
  v79(v78);
  v80 = *(v16 + 192);
  OUTLINED_FUNCTION_218((v16 + 160), *(v16 + 184));
  *(v16 + 16) = v70;
  *(v16 + 24) = v69;
  v81 = *(v16 + 112);
  *(v16 + 32) = *(v16 + 96);
  *(v16 + 48) = v81;
  v82 = *(v16 + 144);
  *(v16 + 64) = *(v16 + 128);
  *(v16 + 80) = v82;
  v83 = *(v80 + 16);
  v278 = v83 + *v83;
  v84 = v83[1];
  v85 = swift_task_alloc();
  *(v16 + 552) = v85;
  *v85 = v16;
  v85[1] = AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:);
  v86 = *(v16 + 280);
  v87 = *(v16 + 288);
  v88 = *(v16 + 272);
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_115();

  return v95(v89, v90, v91, v92, v93, v94, v95, v96, a9, a10, v80 + 16, v278, a13, a14, a15, a16);
}

uint64_t AnswerSynthesisController.performPQAVerification(for:answerSynthesisMetrics:clientId:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_t log, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_190();
  (*(*(v24 + 512) + 8))(*(v24 + 520), *(v24 + 504));
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + 160));
  v25 = *(v24 + 560);
  v26 = *(v24 + 472);
  v27 = *(v24 + 440);
  *(v24 + 264) = v25;
  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!OUTLINED_FUNCTION_221())
  {

    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v98 = *(v24 + 312);
    v97 = *(v24 + 320);
    v99 = *(v24 + 304);
    v101 = *(v24 + 280);
    v100 = *(v24 + 288);
    v102 = static MetricsLogger.shared;
    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v103 = swift_allocError();
    OUTLINED_FUNCTION_247();
    *v104 = v105;
    (*(*v102 + 320))();

    OUTLINED_FUNCTION_92_3();
    v107 = *(v106 + 272);
    v108 = OUTLINED_FUNCTION_118_0();
    v109(v108);
    v110 = *(v98 + 8);
    v111 = OUTLINED_FUNCTION_64_0();
    v112(v111);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v113, static Logging.answerSynthesis);
    v114 = v25;
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v115, v116))
    {
      OUTLINED_FUNCTION_28_3();
      v117 = swift_slowAlloc();
      v118 = OUTLINED_FUNCTION_173_0();
      *v117 = 138412290;
      v119 = v25;
      v120 = _swift_stdlib_bridgeErrorToNSError();
      *(v117 + 4) = v120;
      *v118 = v120;
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v121, v116, "PQA verification caught error. Throw model inference failure error. Error is %@");
      outlined destroy of IntentApplication?(v118, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_49_6();
    v122 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v122, v123);
    v124 = v25;
    goto LABEL_27;
  }

  v30 = *(v24 + 464);
  v29 = *(v24 + 472);
  v31 = *(v24 + 440);
  v32 = *(v24 + 448);
  v34 = *(v24 + 400);
  v33 = *(v24 + 408);
  v35 = *(v24 + 392);

  v36 = *(v32 + 32);
  v37 = OUTLINED_FUNCTION_39_5();
  v38(v37);
  GenerativeError.type.getter();
  v39 = *(v34 + 88);
  v40 = OUTLINED_FUNCTION_63_0();
  if (v41(v40) != *MEMORY[0x277D0DB78])
  {
    (*(*(v24 + 400) + 8))(*(v24 + 408), *(v24 + 392));
LABEL_19:
    if (one-time initialization token for shared != -1)
    {
      OUTLINED_FUNCTION_2_0();
    }

    v131 = *(v24 + 312);
    v132 = *(v24 + 320);
    v133 = *(v24 + 304);
    v135 = *(v24 + 280);
    v134 = *(v24 + 288);
    v136 = static MetricsLogger.shared;
    v137 = lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    v138 = swift_allocError();
    OUTLINED_FUNCTION_247();
    *v139 = v140;
    (*(*v136 + 320))();

    OUTLINED_FUNCTION_92_3();
    v142 = *(v141 + 272);
    v143 = OUTLINED_FUNCTION_45_0();
    v144(v143);
    v145 = *(v131 + 8);
    v146 = OUTLINED_FUNCTION_54_0();
    v147(v146);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v149 = *(v24 + 456);
    v148 = *(v24 + 464);
    v150 = *(v24 + 440);
    v151 = *(v24 + 448);
    v152 = type metadata accessor for Logger();
    __swift_project_value_buffer(v152, static Logging.answerSynthesis);
    v153 = *(v151 + 16);
    v154 = OUTLINED_FUNCTION_39_5();
    v153(v154);
    v155 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v156 = OUTLINED_FUNCTION_20_3();
    v158 = os_log_type_enabled(v156, v157);
    v159 = *(v24 + 448);
    v160 = *(v24 + 456);
    v161 = *(v24 + 440);
    if (v158)
    {
      OUTLINED_FUNCTION_28_3();
      swift_slowAlloc();
      logc = OUTLINED_FUNCTION_152_0();
      *v150 = 138412290;
      OUTLINED_FUNCTION_5_6();
      lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v162, v163);
      OUTLINED_FUNCTION_49_6();
      swift_allocError();
      a12 = v137;
      (v153)(v164, v160, v161);
      v165 = _swift_stdlib_bridgeErrorToNSError();
      v166 = *(v159 + 8);
      v167 = OUTLINED_FUNCTION_63_0();
      v166(v167);
      *(v150 + 4) = v165;
      logc->isa = v165;
      OUTLINED_FUNCTION_56_4();
      _os_log_impl(v168, v169, v170, v171, v172, 0xCu);
      outlined destroy of IntentApplication?(logc, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
      v173 = OUTLINED_FUNCTION_19_5();
      MEMORY[0x25F8A1050](v173);
    }

    else
    {

      v166 = *(v159 + 8);
      v174 = OUTLINED_FUNCTION_63_0();
      v166(v174);
    }

    v175 = *(v24 + 464);
    v176 = *(v24 + 440);
    OUTLINED_FUNCTION_49_6();
    v177 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v177, v178);
    v179 = OUTLINED_FUNCTION_64_0();
    v166(v179);
    v124 = *(v24 + 264);
LABEL_27:

    OUTLINED_FUNCTION_120_2();
    a10 = v181;
    loga = v180;

    OUTLINED_FUNCTION_62();
    goto LABEL_28;
  }

  v43 = *(v24 + 424);
  v42 = *(v24 + 432);
  v44 = *(v24 + 416);
  v46 = *(v24 + 336);
  v45 = *(v24 + 344);
  v47 = *(v24 + 328);
  (*(*(v24 + 400) + 96))(*(v24 + 408), *(v24 + 392));
  v48 = *(v43 + 32);
  v49 = OUTLINED_FUNCTION_16_0();
  v50(v49);
  GenerativeError.PromptError.type.getter();
  v51 = *(v46 + 88);
  v52 = OUTLINED_FUNCTION_64_0();
  if (v53(v52) != *MEMORY[0x277D0DA90])
  {
    v126 = *(v24 + 336);
    v125 = *(v24 + 344);
    v127 = *(v24 + 328);
    (*(*(v24 + 424) + 8))(*(v24 + 432), *(v24 + 416));
    v128 = *(v126 + 8);
    v129 = OUTLINED_FUNCTION_107();
    v130(v129);
    goto LABEL_19;
  }

  v54 = *(v24 + 384);
  v55 = *(v24 + 352);
  v56 = *(v24 + 360);
  (*(*(v24 + 336) + 96))(*(v24 + 344), *(v24 + 328));
  v57 = *(v56 + 32);
  v58 = OUTLINED_FUNCTION_16_0();
  v59(v58);
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  v60 = *(v24 + 464);
  v62 = *(v24 + 440);
  v61 = *(v24 + 448);
  v64 = *(v24 + 312);
  v63 = *(v24 + 320);
  v214 = *(v24 + 304);
  v66 = *(v24 + 280);
  v65 = *(v24 + 288);
  OUTLINED_FUNCTION_5_6();
  lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(v67, v68);
  OUTLINED_FUNCTION_49_6();
  v69 = swift_allocError();
  v70 = *(v61 + 16);
  OUTLINED_FUNCTION_158_0();
  v71();
  OUTLINED_FUNCTION_92_3();
  (*(v72 + 320))(v69);

  OUTLINED_FUNCTION_92_3();
  v74 = *(v73 + 272);
  v75 = OUTLINED_FUNCTION_30_5();
  v76(v75);
  (*(v64 + 8))(v63, v214);
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v77 = *(v24 + 376);
  v78 = *(v24 + 384);
  v80 = *(v24 + 360);
  v79 = *(v24 + 368);
  v81 = *(v24 + 352);
  v82 = type metadata accessor for Logger();
  __swift_project_value_buffer(v82, static Logging.answerSynthesis);
  v83 = *(v80 + 16);
  v84 = OUTLINED_FUNCTION_94();
  v83(v84);
  v85 = OUTLINED_FUNCTION_39_5();
  v83(v85);
  v86 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  OUTLINED_FUNCTION_77_4();
  v88 = os_log_type_enabled(v86, v87);
  v90 = *(v24 + 368);
  v89 = *(v24 + 376);
  v91 = *(v24 + 352);
  if (v88)
  {
    logb = v86;
    v92 = OUTLINED_FUNCTION_90_1();
    *v92 = 134218240;
    GenerativeError.PromptError.ErrorType.TooManyTokensErrorInfo.tokenCount.getter();
    v93 = OUTLINED_FUNCTION_34_7();
    (v69)(v93);
    *(v92 + 4) = v83;
    v94 = OUTLINED_FUNCTION_182_0();
    v95 = OUTLINED_FUNCTION_30_5();
    v215 = v69;
    (v69)(v95);
    *(v92 + 14) = v94;
    _os_log_impl(&dword_25D85C000, logb, v79, "PQA verification caught too many tokens error: Token count = %ld, Maximum allowed = %ld. Treat this error as non-fatal. Returning the only answer.", v92, 0x16u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v96 = logb;
  }

  else
  {
    v191 = *(*(v24 + 360) + 8);
    v192 = OUTLINED_FUNCTION_30_5();
    v191(v192);
    v193 = OUTLINED_FUNCTION_26_2();
    v215 = v191;
    v191(v193);
    v96 = v86;
  }

  v194 = *(v24 + 464);
  v195 = *(v24 + 440);
  v196 = *(v24 + 448);
  v198 = *(v24 + 424);
  v197 = *(v24 + 432);
  v199 = *(v24 + 416);
  v200 = *(v24 + 384);
  v201 = *(v24 + 352);

  v202 = OUTLINED_FUNCTION_179_0();
  v215(v202);
  v203 = *(v198 + 8);
  v204 = OUTLINED_FUNCTION_64_0();
  v205(v204);
  v206 = *(v196 + 8);
  v207 = OUTLINED_FUNCTION_88();
  v208(v207);

  OUTLINED_FUNCTION_35_7();
  loga = v210;
  a12 = v209;

  OUTLINED_FUNCTION_62();
LABEL_28:
  OUTLINED_FUNCTION_115();

  return v184(v182, v183, v184, v185, v186, v187, v188, v189, a9, a10, loga, a12, a13, a14, a15, a16);
}

uint64_t AnswerSynthesisController.preCheckAnswerResponses(with:answerSynthesisRequest:references:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v5 = v4;
  v1[3] = v6;
  v1[4] = v0;
  v1[2] = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
  v1[5] = v7;
  OUTLINED_FUNCTION_21(v7);
  v1[6] = v8;
  v10 = *(v9 + 64);
  v1[7] = OUTLINED_FUNCTION_199();
  v11 = type metadata accessor for SpotlightRankingItem();
  v1[8] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[9] = v12;
  v14 = *(v13 + 64);
  v1[10] = OUTLINED_FUNCTION_199();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_114(v15);
  v17 = *(v16 + 64);
  v1[11] = OUTLINED_FUNCTION_160();
  v1[12] = swift_task_alloc();
  v18 = type metadata accessor for SearchResultItem(0);
  v1[13] = v18;
  OUTLINED_FUNCTION_114(v18);
  v20 = *(v19 + 64);
  v1[14] = OUTLINED_FUNCTION_199();
  v21 = type metadata accessor for UUID();
  v1[15] = v21;
  OUTLINED_FUNCTION_21(v21);
  v1[16] = v22;
  v24 = *(v23 + 64);
  v1[17] = OUTLINED_FUNCTION_199();
  v25 = type metadata accessor for Answer();
  v1[18] = v25;
  OUTLINED_FUNCTION_114(v25);
  v27 = *(v26 + 64);
  v1[19] = OUTLINED_FUNCTION_199();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v28);
  v30 = *(v29 + 64);
  v1[20] = OUTLINED_FUNCTION_160();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v31 = type metadata accessor for SearchResult(0);
  v1[23] = v31;
  OUTLINED_FUNCTION_21(v31);
  v1[24] = v32;
  v34 = *(v33 + 64);
  v1[25] = OUTLINED_FUNCTION_160();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v35 = swift_task_alloc();
  v36 = *v5;
  v1[29] = v35;
  v1[30] = v36;
  v1[31] = *(v3 + 16);
  v37 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v37, v38, v39);
}

{
  v268 = v0;
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v1 + 16);
    *(v0 + 256) = v2;
    if (v2)
    {
      v3 = *(v0 + 248);
      v4 = *(v0 + 16);
      v5 = Array<A>.dictionaryByKey()(*(v0 + 24));
      v265 = *v4;
      memcpy(v267, v4 + 24, sizeof(v267));
      AnswerSynthesisRequest.onScreenTextToSearchResultsDictionary.getter();
      v7 = specialized Dictionary.merging(_:uniquingKeysWith:)(v6, v5);
      v8 = 0;
      v9 = MEMORY[0x277D84F90];
      *(v0 + 264) = v7;
      while (1)
      {
        *(v0 + 272) = v8;
        *(v0 + 280) = v9;
        v10 = *(v0 + 240);
        if (v8 >= *(v10 + 16))
        {
          __break(1u);
          goto LABEL_91;
        }

        v11 = (v10 + 48 * v8);
        v258 = v11[4];
        *(v0 + 288) = v258;
        v12 = v11[5];
        *(v0 + 296) = v12;
        v13 = v11[6];
        *(v0 + 304) = v13;
        v251 = v11[7];
        *(v0 + 312) = v251;
        v14 = v11[8];
        *(v0 + 320) = v14;
        v15 = v11[9];
        *(v0 + 328) = v15;
        v16 = one-time initialization token for noAnswerLabels;
        swift_bridgeObjectRetain_n();
        v260 = v13;

        v254 = v14;

        v253 = v15;

        if (v16 != -1)
        {
          OUTLINED_FUNCTION_31_9();
          swift_once();
        }

        v17 = static AnswerSynthesisController.noAnswerLabels;
        if (*(static AnswerSynthesisController.noAnswerLabels + 16))
        {
          v18 = *(static AnswerSynthesisController.noAnswerLabels + 40);
          Hasher.init(_seed:)();
          String.hash(into:)();
          Hasher._finalize()();
          OUTLINED_FUNCTION_205_0();
          do
          {
            OUTLINED_FUNCTION_204_0(v19);
            if ((v20 & 1) == 0)
            {
              goto LABEL_19;
            }

            v21 = (*(v17 + 48) + 16 * v13);
            v22 = *v21 == v258 && v21[1] == v12;
            if (v22)
            {
              break;
            }

            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v19 = v13 + 1;
          }

          while ((v23 & 1) == 0);

          if (one-time initialization token for answerSynthesis != -1)
          {
            OUTLINED_FUNCTION_0_5();
            swift_once();
          }

          v24 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v24, static Logging.answerSynthesis);

          v25 = Logger.logObject.getter();
          v26 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v25, v26))
          {
            OUTLINED_FUNCTION_28_3();
            v27 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v266 = swift_slowAlloc();
            *v27 = 136315138;
            v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v27 + 4) = v28;
            OUTLINED_FUNCTION_184_0(&dword_25D85C000, v25, v26, "Answer synthesis response: no answer found in document, label: %s");
            __swift_destroy_boxed_opaque_existential_1Tm(v266);
            v29 = OUTLINED_FUNCTION_19_5();
            MEMORY[0x25F8A1050](v29);
LABEL_74:
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050](v214, v215, v216, v217);
LABEL_75:

            goto LABEL_76;
          }
        }

        else
        {
LABEL_19:
          v252 = v12;
          v246 = v9;
          v30 = 0;
          v31 = *(v13 + 16);
          v32 = v13 + 40;
          v255 = MEMORY[0x277D84F90];
          v249 = v13 + 40;
LABEL_20:
          v33 = (v32 + 16 * v30);
          while (v31 != v30)
          {
            if (v30 >= *(v260 + 16))
            {
              __break(1u);
              goto LABEL_87;
            }

            v14 = *(v0 + 264);
            v34 = *(v33 - 1);
            v35 = *v33;
            OUTLINED_FUNCTION_64_0();
            String.lowercased()();
            if (v14[2])
            {
              v36 = *(v0 + 264);

              OUTLINED_FUNCTION_141_0();
              specialized __RawDictionaryStorage.find<A>(_:)();
              if (v37)
              {
                v38 = *(v0 + 184);
                v39 = *(v0 + 168);
                v40 = *(*(v0 + 264) + 56);
                v41 = *(*(v0 + 192) + 72);
                OUTLINED_FUNCTION_2_4();
                _s10OmniSearch0B6ResultVWOcTm_1(v42, v39);
                OUTLINED_FUNCTION_117();
              }

              else
              {
                v43 = OUTLINED_FUNCTION_65_3();
              }

              __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
            }

            else
            {
              v47 = OUTLINED_FUNCTION_65_3();
              __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
            }

            v51 = *(v0 + 184);
            v52 = *(v0 + 168);

            OUTLINED_FUNCTION_38_5(v52);
            if (v22)
            {
              outlined destroy of IntentApplication?(*(v0 + 168), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
              if (one-time initialization token for answerSynthesis != -1)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v53 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v53, static Logging.answerSynthesis);

              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v54, v55))
              {
                OUTLINED_FUNCTION_28_3();
                v56 = swift_slowAlloc();
                OUTLINED_FUNCTION_9_4();
                v14 = swift_slowAlloc();
                *v56 = 136315138;
                OUTLINED_FUNCTION_64_0();
                *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                _os_log_impl(&dword_25D85C000, v54, v55, "Answer synthesis: Unable to find search result referenced by model: %s", v56, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v14);
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050](v57, v58, v59, v60);
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050](v61, v62, v63, v64);
              }
            }

            else
            {
              v65 = *(v0 + 168);
              v66 = *(v0 + 176);
              OUTLINED_FUNCTION_1_7();
              outlined init with take of ResultsDialog(v67, v68);
            }

            v13 = *(v0 + 176);
            v69 = *(v0 + 184);
            OUTLINED_FUNCTION_117();
            __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);

            OUTLINED_FUNCTION_38_5(v13);
            if (!v22)
            {
              v14 = *(v0 + 224);
              v74 = *(v0 + 232);
              v75 = OUTLINED_FUNCTION_99_2();
              v13 = v76;
              outlined init with take of ResultsDialog(v75, v74);
              v77 = OUTLINED_FUNCTION_88();
              outlined init with take of ResultsDialog(v77, v78);
              v79 = v255;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v91 = *(v255 + 16);
                v92 = OUTLINED_FUNCTION_44();
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v92, v93, v94, v255);
                v79 = v95;
              }

              v82 = *(v79 + 16);
              v81 = *(v79 + 24);
              v255 = v79;
              OUTLINED_FUNCTION_226();
              if (v84)
              {
                v96 = OUTLINED_FUNCTION_22_5(v83);
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96, v97, v98, v79);
                v255 = v99;
              }

              ++v30;
              v85 = *(v0 + 224);
              v86 = *(v0 + 192);
              *(v255 + 16) = v79;
              OUTLINED_FUNCTION_131_1(v86);
              v88 = *(v87 + 72);
              OUTLINED_FUNCTION_1_7();
              outlined init with take of ResultsDialog(v89, v90);
              v32 = v249;
              goto LABEL_20;
            }

            outlined destroy of IntentApplication?(*(v0 + 176), &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
            v33 += 2;
            ++v30;
          }

          if (*(v255 + 16))
          {
            v100 = v252;
          }

          else
          {
            v101 = *(v0 + 24);

            v100 = v252;
            if (*(v101 + 16) != 1)
            {
              swift_bridgeObjectRelease_n();

              if (one-time initialization token for answerSynthesis != -1)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v209 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v209, static Logging.answerSynthesis);
              v25 = Logger.logObject.getter();
              v210 = static os_log_type_t.error.getter();
              v211 = OUTLINED_FUNCTION_20_3();
              v9 = v246;
              if (os_log_type_enabled(v211, v212))
              {
                OUTLINED_FUNCTION_51_5();
                v213 = swift_slowAlloc();
                OUTLINED_FUNCTION_81_4(v213);
                v118 = v210;
                v119 = v25;
                v120 = "Answer synthesis: Unable to associate search results with answer, skipping answer";
                goto LABEL_73;
              }

              goto LABEL_75;
            }

            if (one-time initialization token for answerSynthesis != -1)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v102 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v102, static Logging.answerSynthesis);
            v103 = Logger.logObject.getter();
            v104 = static os_log_type_t.error.getter();
            v105 = OUTLINED_FUNCTION_20_3();
            if (os_log_type_enabled(v105, v106))
            {
              OUTLINED_FUNCTION_51_5();
              v107 = swift_slowAlloc();
              OUTLINED_FUNCTION_157_0(v107);
              _os_log_impl(&dword_25D85C000, v103, v104, "Answer synthesis: No referenced documents found for answer, falling back to only provided search result", v13, 2u);
              v108 = OUTLINED_FUNCTION_19_5();
              MEMORY[0x25F8A1050](v108);
            }

            v109 = *(v0 + 24);

            v255 = *(v0 + 24);
          }

          v110 = *(v0 + 184);
          v111 = *(v0 + 160);
          specialized Collection.first.getter(v255, v111);
          OUTLINED_FUNCTION_38_5(v111);
          if (v22)
          {
            v112 = *(v0 + 160);

            swift_bridgeObjectRelease_n();

            outlined destroy of IntentApplication?(v112, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
            if (one-time initialization token for answerSynthesis != -1)
            {
              OUTLINED_FUNCTION_0_5();
              swift_once();
            }

            v113 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v113, static Logging.answerSynthesis);
            v25 = Logger.logObject.getter();
            v114 = static os_log_type_t.error.getter();
            v115 = OUTLINED_FUNCTION_20_3();
            v9 = v246;
            if (os_log_type_enabled(v115, v116))
            {
              OUTLINED_FUNCTION_51_5();
              v117 = swift_slowAlloc();
              OUTLINED_FUNCTION_81_4(v117);
              v118 = v114;
              v119 = v25;
              v120 = "Answer synthesis: referenceDocs cannot be empty, skipping answer";
LABEL_73:
              OUTLINED_FUNCTION_174_0(&dword_25D85C000, v119, v118, v120);
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          v243 = *(v0 + 216);
          v244 = *(v0 + 184);
          v122 = *(v0 + 152);
          v121 = *(v0 + 160);
          v123 = *(v0 + 136);
          v124 = *(v0 + 144);
          v125 = *(v0 + 120);
          v126 = *(v0 + 128);
          v241 = *(v0 + 112);
          v242 = *(v0 + 104);
          v245 = *(v0 + 96);
          v261 = *(v0 + 88);
          v247 = *(v0 + 64);
          v250 = *(v0 + 200);
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v127, v128);
          UUID.init()();
          v129 = UUID.uuidString.getter();
          v131 = v130;
          v132 = *(v126 + 8);
          v133 = OUTLINED_FUNCTION_88();
          v134(v133);
          v135 = v124[9];
          type metadata accessor for URL();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);

          v140 = MEMORY[0x277D84F90];
          v141 = Dictionary.init(dictionaryLiteral:)();
          *v122 = v129;
          v122[1] = v131;
          v122[2] = v258;
          v122[3] = v100;
          v122[4] = v141;
          v122[5] = v255;
          v122[6] = v140;
          *(v122 + v124[10]) = 0;
          v142 = (v122 + v124[11]);
          *v142 = v251;
          v142[1] = v254;
          v143 = OUTLINED_FUNCTION_93_2(v124[12], xmmword_25DBC9410);
          _s10OmniSearch0B6ResultVWOcTm_1(v143, v241);
          swift_storeEnumTagMultiPayload();
          v144 = v244[6];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
          v145 = CodableNSSecureCoding.wrappedValue.getter();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v146, v147, v148, v247);
          *(v250 + v244[7]) = v140;
          v149 = (v250 + v244[10]);
          *v149 = 0;
          v149[1] = 0;
          OUTLINED_FUNCTION_13_4();
          v150 = OUTLINED_FUNCTION_64_0();
          _s10OmniSearch0B6ResultVWOcTm_1(v150, v151);
          v152 = v244[6];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v153 = v145;
          OUTLINED_FUNCTION_201_0();
          CodableNSSecureCoding.init(wrappedValue:)();
          outlined init with copy of ToolDatabaseProtocol?(v245, v261, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v261, 1, v247);
          v155 = *(v0 + 200);
          v156 = *(v0 + 184);
          v157 = *(v0 + 112);
          v158 = *(v0 + 96);
          if (EnumTagSinglePayload == 1)
          {
            v159 = *(v0 + 88);
            OUTLINED_FUNCTION_202_0();
            outlined destroy of IntentApplication?(v160, v161, v162);
            v163 = *(v156 + 20);
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_28_1();
            SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

            OUTLINED_FUNCTION_202_0();
            outlined destroy of IntentApplication?(v164, v165, v166);
            OUTLINED_FUNCTION_8_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v157, v167);
          }

          else
          {
            v262 = *(v0 + 200);
            v168 = v153;
            v169 = *(v0 + 112);
            v171 = *(v0 + 72);
            v170 = *(v0 + 80);
            v172 = *(v0 + 64);

            OUTLINED_FUNCTION_202_0();
            outlined destroy of IntentApplication?(v173, v174, v175);
            OUTLINED_FUNCTION_8_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v169, v176);
            v153 = *(v171 + 32);
            OUTLINED_FUNCTION_29_5();
            (v153)(v177, v178, v179, v180);
            (v153)(v262 + *(v156 + 20), v170, v172);
          }

          v181 = OUTLINED_FUNCTION_177_0();
          *(v181 + v182) = 1;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v183, v184);
          v14 = v252;
          v13 = v258;
          if (v153)
          {
            v33 = *(v0 + 248);
            if (v33[2])
            {
LABEL_87:
              v238 = *(**(v0 + 32) + 456);
              v264 = (v238 + *v238);
              v239 = v238[1];
              v240 = swift_task_alloc();
              *(v0 + 336) = v240;
              *v240 = v0;
              OUTLINED_FUNCTION_91_2(v240);

              return v264(v253, v33, v13, v14);
            }
          }

          OUTLINED_FUNCTION_180_0();
          v186 = *(v0 + 296);
          v185 = *(v0 + 312);
          *v188 = v187;
          *(v188 + 8) = v186;
          *(v188 + 24) = v185;
          *(v188 + 40) = v189;
          OUTLINED_FUNCTION_2_4();
          _s10OmniSearch0B6ResultVWOcTm_1(v192, v190 + v191);
          v193 = swift_isUniquelyReferenced_nonNull_native();
          v194 = *(v0 + 280);
          if ((v193 & 1) == 0)
          {
            v218 = *(v194 + 16);
            OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v194 = v219;
          }

          v196 = *(v194 + 16);
          v195 = *(v194 + 24);
          v9 = v194;
          if (v196 >= v195 >> 1)
          {
            OUTLINED_FUNCTION_22_5(v195);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            v9 = v220;
          }

          v198 = *(v0 + 208);
          v197 = *(v0 + 216);
          v199 = *(v0 + 152);
          v201 = *(v0 + 48);
          v200 = *(v0 + 56);
          OUTLINED_FUNCTION_7_5();
          _s10OmniSearch0B6ResultVWOhTm_0(v202, v203);
          OUTLINED_FUNCTION_106_1();
          _s10OmniSearch0B6ResultVWOhTm_0(v197, v204);
          *(v9 + 16) = v196 + 1;
          v205 = *(v201 + 80);
          OUTLINED_FUNCTION_79();
          outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v200, v9 + v206 + *(v201 + 72) * v196, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
          v207 = OUTLINED_FUNCTION_212();
          _s10OmniSearch0B6ResultVWOhTm_0(v207, v208);
        }

LABEL_76:
        OUTLINED_FUNCTION_237();
        if (v22)
        {
          v235 = *(v0 + 264);

          v248 = v9;
          goto LABEL_83;
        }
      }
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
LABEL_91:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v221 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v221, static Logging.answerSynthesis);
  v222 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  v223 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v223, v224))
  {
    OUTLINED_FUNCTION_51_5();
    v225 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v225);
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v226, v227, v228, v229, v230, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050](v231, v232, v233, v234);
  }

  v248 = MEMORY[0x277D84F90];
LABEL_83:
  OUTLINED_FUNCTION_159_0();
  v256 = *(v0 + 96);
  v257 = *(v0 + 88);
  v259 = *(v0 + 80);
  v263 = *(v0 + 56);

  OUTLINED_FUNCTION_62();

  return v236(v248);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = v4[42];
  *v6 = *v1;
  v5[43] = v0;

  v8 = v4[37];
  if (v0)
  {
    v9 = v5[35];
    v10 = v5[33];
  }

  else
  {

    v5[44] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

{
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[37];
  v5 = v0[38];

  v25 = v0[43];
  v6 = v0[28];
  v7 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[25];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v18 = v0[20];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[11];
  v23 = v0[10];
  v24 = v0[7];
  OUTLINED_FUNCTION_7_5();
  _s10OmniSearch0B6ResultVWOhTm_0(v13, v14);
  OUTLINED_FUNCTION_105_2();
  _s10OmniSearch0B6ResultVWOhTm_0(v8, v15);
  _s10OmniSearch0B6ResultVWOhTm_0(v9, v1);

  OUTLINED_FUNCTION_127();

  return v16();
}

void AnswerSynthesisController.preCheckAnswerResponses(with:answerSynthesisRequest:references:)()
{
  v2 = v0[44];
  v3 = v0[31];
  v4 = v0[4];
  OUTLINED_FUNCTION_133();
  (*(v5 + 496))(v2);
  OUTLINED_FUNCTION_112_2();

  if (!v4)
  {
    v227 = v0[40];
    v228 = v0[41];
    v230 = v0[37];
    v229 = v0[38];
    v231 = v0[35];
    v232 = v0[33];

    lazy protocol witness table accessor for type PQAVerificationModelOnDeviceError and conformance PQAVerificationModelOnDeviceError();
    OUTLINED_FUNCTION_49_6();
    swift_allocError();
    OUTLINED_FUNCTION_261(v233, 5);
    v234 = v0[28];
    v235 = v0[29];
    v237 = v0[26];
    v236 = v0[27];
    v238 = v0[25];
    v239 = v0[21];
    v240 = v0[22];
    v241 = v0[19];
    v261 = v0[20];
    v263 = v0[17];
    v264 = v0[14];
    v267 = v0[12];
    v270 = v0[11];
    v274 = v0[10];
    v276 = v0[7];
    OUTLINED_FUNCTION_7_5();
    _s10OmniSearch0B6ResultVWOhTm_0(v241, v242);
    OUTLINED_FUNCTION_105_2();
    _s10OmniSearch0B6ResultVWOhTm_0(v236, v243);
    _s10OmniSearch0B6ResultVWOhTm_0(v237, v1);

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_251();

    __asm { BRAA            X1, X16 }
  }

  v6 = (v0 + 37);
  v7 = v0[26];
  v8 = *(v0[23] + 28);
  v9 = *(v7 + v8);

  *(v7 + v8) = v4;
LABEL_3:
  OUTLINED_FUNCTION_180_0();
  v11 = *v6;
  v10 = v6[1];
  *v13 = v12;
  *(v13 + 8) = v11;
  *(v13 + 24) = v10;
  *(v13 + 40) = v14;
  OUTLINED_FUNCTION_2_4();
  _s10OmniSearch0B6ResultVWOcTm_1(v17, v15 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v268 = v0[35];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v221 = *(v268 + 16);
    OUTLINED_FUNCTION_44();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v268 = v222;
  }

  v19 = *(v268 + 16);
  if (v19 >= *(v268 + 24) >> 1)
  {
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v268 = v223;
  }

  v21 = v0[26];
  v20 = v0[27];
  v22 = v0[19];
  v24 = v0[6];
  v23 = v0[7];
  OUTLINED_FUNCTION_7_5();
  _s10OmniSearch0B6ResultVWOhTm_0(v25, v26);
  OUTLINED_FUNCTION_106_1();
  _s10OmniSearch0B6ResultVWOhTm_0(v20, v27);
  *(v268 + 16) = v19 + 1;
  v28 = *(v24 + 80);
  OUTLINED_FUNCTION_79();
  outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v23, v30 + v29 + *(v24 + 72) * v19, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMd, &_s10OmniSearch26AnswerSynthesisModelResultV0C8ResponseV_AA0bF0VtMR);
  v31 = OUTLINED_FUNCTION_212();
  _s10OmniSearch0B6ResultVWOhTm_0(v31, v32);
  while (1)
  {
    OUTLINED_FUNCTION_237();
    if (v47)
    {
      v224 = v0[33];

      OUTLINED_FUNCTION_159_0();
      v266 = v0[12];
      v273 = v0[11];
      v275 = v0[10];
      v279 = v0[7];

      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_251();

      __asm { BRAA            X2, X16 }
    }

    v0[34] = v33;
    v0[35] = v268;
    v34 = v0[30];
    if (v33 >= *(v34 + 16))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v35 = (v34 + 48 * v33);
    v36 = v35[4];
    v0[36] = v36;
    v37 = v35[5];
    v0[37] = v37;
    v38 = v35[6];
    v0[38] = v38;
    v39 = v35[7];
    v0[39] = v39;
    v40 = v35[8];
    v0[40] = v40;
    v0[41] = v35[9];
    v41 = one-time initialization token for noAnswerLabels;
    swift_bridgeObjectRetain_n();
    v277 = v38;

    if (v41 != -1)
    {
      OUTLINED_FUNCTION_31_9();
      swift_once();
    }

    v42 = static AnswerSynthesisController.noAnswerLabels;
    if (*(static AnswerSynthesisController.noAnswerLabels + 16))
    {
      v43 = *(static AnswerSynthesisController.noAnswerLabels + 40);
      Hasher.init(_seed:)();
      OUTLINED_FUNCTION_241();
      String.hash(into:)();
      Hasher._finalize()();
      OUTLINED_FUNCTION_205_0();
      do
      {
        OUTLINED_FUNCTION_204_0(v44);
        if ((v45 & 1) == 0)
        {
          goto LABEL_24;
        }

        v46 = (*(v42 + 48) + 16 * v23);
        v47 = *v46 == v36 && v46[1] == v37;
        if (v47)
        {
          break;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v44 = v23 + 1;
      }

      while ((v48 & 1) == 0);

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v49, static Logging.answerSynthesis);

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v50, v51))
      {

        continue;
      }

      OUTLINED_FUNCTION_28_3();
      v52 = swift_slowAlloc();
      OUTLINED_FUNCTION_9_4();
      v281 = swift_slowAlloc();
      *v52 = 136315138;
      OUTLINED_FUNCTION_118_0();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v52 + 4) = v23;
      OUTLINED_FUNCTION_184_0(&dword_25D85C000, v50, v51, "Answer synthesis response: no answer found in document, label: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v281);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v53, v54, v55, v56);
LABEL_64:
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v153, v154, v155, v156);
      goto LABEL_65;
    }

LABEL_24:
    v258 = v39;
    v259 = v36;
    v262 = v40;
    v265 = v37;
    v23 = 0;
    v57 = *(v277 + 16);
    v58 = v277 + 40;
    v271 = MEMORY[0x277D84F90];
LABEL_25:
    v59 = (v58 + 16 * v23);
    while (v57 != v23)
    {
      if (v23 >= *(v277 + 16))
      {
        __break(1u);
        goto LABEL_84;
      }

      v60 = v0[33];
      v61 = *(v59 - 1);
      v62 = *v59;
      OUTLINED_FUNCTION_32_0();
      String.lowercased()();
      if (*(v60 + 16))
      {
        v63 = v0[33];

        OUTLINED_FUNCTION_141_0();
        specialized __RawDictionaryStorage.find<A>(_:)();
        if (v64)
        {
          v65 = v0[23];
          v66 = v0[21];
          v67 = *(v0[33] + 56);
          v68 = *(v0[24] + 72);
          OUTLINED_FUNCTION_2_4();
          _s10OmniSearch0B6ResultVWOcTm_1(v69, v66);
          OUTLINED_FUNCTION_117();
        }

        else
        {
          v70 = OUTLINED_FUNCTION_65_3();
        }

        __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
      }

      else
      {
        v74 = OUTLINED_FUNCTION_65_3();
        __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
      }

      v78 = v0[23];
      v79 = v0[21];

      OUTLINED_FUNCTION_38_5(v79);
      if (v47)
      {
        outlined destroy of IntentApplication?(v0[21], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        if (one-time initialization token for answerSynthesis != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v80, static Logging.answerSynthesis);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v81, v82))
        {
          OUTLINED_FUNCTION_28_3();
          v83 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v282 = swift_slowAlloc();
          *v83 = 136315138;
          OUTLINED_FUNCTION_32_0();
          *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          _os_log_impl(&dword_25D85C000, v81, v82, "Answer synthesis: Unable to find search result referenced by model: %s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v282);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050](v84, v85, v86, v87);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050](v88, v89, v90, v91);
        }
      }

      else
      {
        v92 = v0[21];
        v93 = v0[22];
        OUTLINED_FUNCTION_1_7();
        outlined init with take of ResultsDialog(v94, v95);
      }

      v96 = v0[22];
      v97 = v0[23];
      OUTLINED_FUNCTION_117();
      __swift_storeEnumTagSinglePayload(v98, v99, v100, v101);

      OUTLINED_FUNCTION_38_5(v96);
      if (!v47)
      {
        v102 = v0[28];
        v103 = v0[29];
        v104 = OUTLINED_FUNCTION_99_2();
        outlined init with take of ResultsDialog(v104, v103);
        v105 = OUTLINED_FUNCTION_107();
        outlined init with take of ResultsDialog(v105, v106);
        v107 = v271;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        if ((v108 & 1) == 0)
        {
          v119 = *(v271 + 16);
          v120 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120, v121, v122, v271);
          v107 = v123;
        }

        v58 = v277 + 40;
        v110 = *(v107 + 16);
        v109 = *(v107 + 24);
        OUTLINED_FUNCTION_226();
        if (v112)
        {
          v124 = OUTLINED_FUNCTION_22_5(v111);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124, v125, v126, v107);
          v107 = v127;
        }

        ++v23;
        v113 = v0[28];
        v114 = v0[24];
        *(v107 + 16) = v103;
        OUTLINED_FUNCTION_131_1(v114);
        v271 = v107;
        v116 = *(v115 + 72);
        OUTLINED_FUNCTION_1_7();
        outlined init with take of ResultsDialog(v117, v118);
        goto LABEL_25;
      }

      outlined destroy of IntentApplication?(v0[22], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v59 += 2;
      ++v23;
    }

    v128 = v271;
    if (*(v271 + 16))
    {
      v129 = v265;
      goto LABEL_57;
    }

    v130 = v0[3];

    v129 = v265;
    if (*(v130 + 16) != 1)
    {
      swift_bridgeObjectRelease_n();

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v157 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v157, static Logging.answerSynthesis);
      v50 = Logger.logObject.getter();
      v158 = static os_log_type_t.error.getter();
      v159 = OUTLINED_FUNCTION_20_3();
      if (!os_log_type_enabled(v159, v160))
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_51_5();
      v161 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v161);
      v150 = v158;
      v151 = v50;
      v152 = "Answer synthesis: Unable to associate search results with answer, skipping answer";
LABEL_63:
      OUTLINED_FUNCTION_174_0(&dword_25D85C000, v151, v150, v152);
      goto LABEL_64;
    }

    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v131 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v131, static Logging.answerSynthesis);
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();
    v134 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v134, v135))
    {
      OUTLINED_FUNCTION_51_5();
      v136 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v136);
      OUTLINED_FUNCTION_174_0(&dword_25D85C000, v132, v133, "Answer synthesis: No referenced documents found for answer, falling back to only provided search result");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050](v137, v138, v139, v140);
    }

    v141 = v0[3];

    v128 = v0[3];
LABEL_57:
    v142 = v0[23];
    v143 = v0[20];
    specialized Collection.first.getter(v128, v143);
    OUTLINED_FUNCTION_38_5(v143);
    if (!v47)
    {
      v269 = v0[25];
      v272 = v128;
      v162 = v0[23];
      v164 = v0[19];
      v163 = v0[20];
      v165 = v0[17];
      v166 = v0[18];
      v168 = v0[15];
      v167 = v0[16];
      v254 = v0[14];
      v255 = v0[13];
      v256 = v0[27];
      v257 = v0[12];
      v278 = v0[11];
      v260 = v0[8];
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v169, v170);
      UUID.init()();
      v171 = UUID.uuidString.getter();
      v173 = v172;
      v174 = *(v167 + 8);
      v175 = OUTLINED_FUNCTION_153();
      v176(v175);
      v177 = v166[9];
      type metadata accessor for URL();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v178, v179, v180, v181);

      v182 = MEMORY[0x277D84F90];
      v183 = Dictionary.init(dictionaryLiteral:)();
      *v164 = v171;
      v164[1] = v173;
      v164[2] = v259;
      v164[3] = v129;
      v164[4] = v183;
      v164[5] = v272;
      v164[6] = v182;
      *(v164 + v166[10]) = 0;
      v184 = (v164 + v166[11]);
      *v184 = v258;
      v184[1] = v262;
      v185 = OUTLINED_FUNCTION_93_2(v166[12], xmmword_25DBC9410);
      _s10OmniSearch0B6ResultVWOcTm_1(v185, v254);
      swift_storeEnumTagMultiPayload();
      v186 = v162[6];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
      v187 = CodableNSSecureCoding.wrappedValue.getter();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v188, v189, v190, v260);
      *(v269 + v162[7]) = v182;
      v191 = (v269 + v162[10]);
      *v191 = 0;
      v191[1] = 0;
      OUTLINED_FUNCTION_13_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v254, v269);
      v192 = v162[6];
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v193 = v187;
      OUTLINED_FUNCTION_201_0();
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of ToolDatabaseProtocol?(v257, v278, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v278, 1, v260);
      v195 = v0[25];
      v196 = v0[23];
      v197 = v0[14];
      v199 = v0[11];
      v198 = v0[12];
      if (EnumTagSinglePayload == 1)
      {
        v200 = OUTLINED_FUNCTION_63_0();
        outlined destroy of IntentApplication?(v200, v201, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v202 = *(v196 + 20);
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_207();
        OUTLINED_FUNCTION_28_1();
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        OUTLINED_FUNCTION_158_0();
        outlined destroy of IntentApplication?(v203, v204, v205);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v197, v206);
      }

      else
      {
        v208 = v0[9];
        v207 = v0[10];
        v209 = v0[8];

        outlined destroy of IntentApplication?(v198, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v197, v210);
        v193 = *(v208 + 32);
        v211 = OUTLINED_FUNCTION_45_0();
        (v193)(v211);
        v212 = *(v196 + 20);
        OUTLINED_FUNCTION_158_0();
        (v193)(v213, v214, v215, v216);
      }

      v217 = OUTLINED_FUNCTION_177_0();
      *(v217 + v218) = 1;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v219, v220);
      v6 = (v0 + 37);
      if (!v193 || !*(v0[31] + 16))
      {

        goto LABEL_3;
      }

LABEL_85:
      v246 = *(*v0[4] + 456);
      v280 = v246 + *v246;
      v247 = v246[1];
      v248 = swift_task_alloc();
      v0[42] = v248;
      *v248 = v0;
      OUTLINED_FUNCTION_91_2(v248, v249, v250, v251);
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_251();

      __asm { BRAA            X4, X16 }
    }

    v144 = v0[20];

    swift_bridgeObjectRelease_n();

    outlined destroy of IntentApplication?(v144, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v145 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v145, static Logging.answerSynthesis);
    v50 = Logger.logObject.getter();
    v146 = static os_log_type_t.error.getter();
    v147 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v147, v148))
    {
      OUTLINED_FUNCTION_51_5();
      v149 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v149);
      v150 = v146;
      v151 = v50;
      v152 = "Answer synthesis: referenceDocs cannot be empty, skipping answer";
      goto LABEL_63;
    }

LABEL_65:
  }
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t AnswerSynthesisController.createProperties(from:requestedProperties:answer:)()
{
  OUTLINED_FUNCTION_48();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[19] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15PropertyRequestVSgMd, &_s10OmniSearch0B15PropertyRequestVSgMR);
  OUTLINED_FUNCTION_114(v6);
  v8 = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_199();
  v9 = type metadata accessor for SearchPropertyRequest(0);
  v1[25] = v9;
  OUTLINED_FUNCTION_114(v9);
  v11 = *(v10 + 64);
  v1[26] = OUTLINED_FUNCTION_160();
  v1[27] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  v1 = *(v0 + 152);
  if (!v1)
  {
    v1 = Dictionary.init(dictionaryLiteral:)();
  }

  v2 = *(v0 + 160);
  if (*(v2 + 16) == 1)
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 152);
    specialized Collection.first.getter(v2, v4);
    LODWORD(v3) = __swift_getEnumTagSinglePayload(v4, 1, v3);

    if (v3 == 1)
    {
      outlined destroy of IntentApplication?(*(v0 + 192), &_s10OmniSearch0B15PropertyRequestVSgMd, &_s10OmniSearch0B15PropertyRequestVSgMR);
    }

    else
    {
      v7 = *(v0 + 216);
      v8 = *(v0 + 192);

      OUTLINED_FUNCTION_108_1();
      v9 = OUTLINED_FUNCTION_62_3();
      outlined init with take of ResultsDialog(v9, v10);
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v11 = *(v0 + 208);
      v12 = *(v0 + 216);
      v13 = *(v0 + 176);
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logging.answerSynthesis);
      OUTLINED_FUNCTION_102_2();
      v15 = OUTLINED_FUNCTION_107();
      _s10OmniSearch0B6ResultVWOcTm_1(v15, v16);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();

      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 208);
      if (v19)
      {
        v21 = *(v0 + 200);
        v23 = *(v0 + 168);
        v22 = *(v0 + 176);
        v24 = OUTLINED_FUNCTION_90_1();
        OUTLINED_FUNCTION_260();
        *v24 = 136315395;
        v25 = *(v20 + *(v21 + 20));
        EntityProperty.wrappedValue.getter();
        v26 = *(v0 + 136);
        v27 = *(v0 + 144);
        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v20, v28);
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v24 + 4) = v29;
        *(v24 + 12) = 2085;
        OUTLINED_FUNCTION_118_0();
        *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        OUTLINED_FUNCTION_190_0();
        _os_log_impl(v30, v31, v32, v33, v34, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
        v35 = OUTLINED_FUNCTION_19_5();
        MEMORY[0x25F8A1050](v35);
      }

      else
      {

        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v20, v36);
      }

      v37 = *(v0 + 216);
      v38 = *(v0 + 200);
      v40 = *(v0 + 168);
      v39 = *(v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25DBC8180;
      v42 = *(v37 + *(v38 + 20));
      EntityProperty.wrappedValue.getter();
      *(inited + 32) = *(v0 + 120);
      *(inited + 48) = v40;
      *(inited + 56) = v39;

      v1 = Dictionary.init(dictionaryLiteral:)();
      OUTLINED_FUNCTION_9_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v37, v43);
    }
  }

  else
  {
    v6 = *(v0 + 152);
  }

  *(v0 + 224) = v1;
  v44 = *(v0 + 184);
  OUTLINED_FUNCTION_133();
  (*(v45 + 256))();
  v46 = *(v0 + 112);
  OUTLINED_FUNCTION_218((v0 + 80), *(v0 + 104));
  v47 = *(v46 + 16);
  v52 = (v47 + *v47);
  v48 = v47[1];
  v49 = swift_task_alloc();
  *(v0 + 232) = v49;
  *v49 = v0;
  v49[1] = AnswerSynthesisController.createProperties(from:requestedProperties:answer:);
  v50 = *(v0 + 160);
  OUTLINED_FUNCTION_201_0();

  return v52();
}

{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  OUTLINED_FUNCTION_52();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  *v6 = v5;
  v8 = *(v7 + 232);
  v9 = *v1;
  OUTLINED_FUNCTION_11();
  *v10 = v9;
  v5[30] = v0;

  if (!v0)
  {
    v11 = v5[28];

    v5[31] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  OUTLINED_FUNCTION_223(v0 + 10);

  OUTLINED_FUNCTION_62();
  v5 = v0[31];

  return v4(v5);
}

{
  OUTLINED_FUNCTION_78();
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];

  OUTLINED_FUNCTION_223(v0 + 10);

  OUTLINED_FUNCTION_127();
  v6 = v0[30];

  return v5();
}

uint64_t AnswerSynthesisController.collateNetworkServiceResults(_:)()
{
  OUTLINED_FUNCTION_48();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for SearchResult(0);
  v0[4] = v3;
  OUTLINED_FUNCTION_21(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = OUTLINED_FUNCTION_160();
  v0[7] = swift_task_alloc();
  v7 = type metadata accessor for AnswerSynthesisResult();
  v0[8] = v7;
  OUTLINED_FUNCTION_21(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_160();
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t AnswerSynthesisController.collateNetworkServiceResults(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_192();
  OUTLINED_FUNCTION_233();
  if (one-time initialization token for answerSynthesis != -1)
  {
LABEL_48:
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v24 = v23[3];
  v25 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v25, static Logging.answerSynthesis);

  v125 = v21;
  v26 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  OUTLINED_FUNCTION_77_4();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v23[3];
  if (v28)
  {
    OUTLINED_FUNCTION_28_3();
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = *(v29 + 16);

    _os_log_impl(&dword_25D85C000, v26, v22, "Answer synthesis: collating %ld results", v30, 0xCu);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {
    v31 = v23[3];
  }

  v33 = v23[3];
  v34 = *(v33 + 16);
  if (v34)
  {
    v126 = 0;
    v127 = 0;
    a11 = v23[12];
    v35 = v23[9];
    a15 = v23[5];
    v36 = v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v22 = *(v35 + 72);
    v37 = MEMORY[0x277D84F90];
    *&v32 = 136315138;
    a9 = v32;
    a14 = v22;
    while (2)
    {
      v38 = v23[12];
      v39 = v23[8];
      _s10OmniSearch0B6ResultVWOcTm_1(v36, v23[13]);
      v40 = OUTLINED_FUNCTION_63_0();
      _s10OmniSearch0B6ResultVWOcTm_1(v40, v41);
      OUTLINED_FUNCTION_179_0();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v59 = v23[12];

          v60 = *v59;
          v61 = *(*v59 + 16);
          v21 = *(v37 + 16);
          v22 = v21 + v61;
          if (__OFADD__(v21, v61))
          {
            __break(1u);
          }

          else
          {
            v126 = *(a11 + 8);
            v127 = *(a11 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v22 > *(v37 + 24) >> 1)
            {
              if (v21 <= v22)
              {
                v63 = v21 + v61;
              }

              else
              {
                v63 = v21;
              }

              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v63, 1, v37);
              v37 = v64;
            }

            v22 = a14;
            if (*(v60 + 16))
            {
              if ((*(v37 + 24) >> 1) - *(v37 + 16) >= v61)
              {
                v65 = v23[4];
                v66 = (*(a15 + 80) + 32) & ~*(a15 + 80);
                v67 = *(a15 + 72);
                swift_arrayInitWithCopy();

                if (!v61)
                {
                  goto LABEL_30;
                }

                v68 = *(v37 + 16);
                v69 = __OFADD__(v68, v61);
                v70 = v68 + v61;
                if (!v69)
                {
                  *(v37 + 16) = v70;
                  goto LABEL_30;
                }

                goto LABEL_47;
              }

LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

            if (!v61)
            {
              goto LABEL_30;
            }
          }

          __break(1u);
          goto LABEL_46;
        case 2u:
          a16 = v37;
          v71 = v23[13];
          v72 = v23[11];
          OUTLINED_FUNCTION_10_5();
          _s10OmniSearch0B6ResultVWOcTm_1(v73, v74);
          v75 = Logger.logObject.getter();
          v76 = static os_log_type_t.error.getter();
          v77 = os_log_type_enabled(v75, v76);
          v78 = v23[13];
          v79 = v23[11];
          if (v77)
          {
            v80 = v23[10];
            v81 = v23[8];
            OUTLINED_FUNCTION_28_3();
            a10 = v78;
            v82 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            a18 = swift_slowAlloc();
            *v82 = a9;
            OUTLINED_FUNCTION_10_5();
            _s10OmniSearch0B6ResultVWOcTm_1(v79, v80);
            String.init<A>(describing:)();
            OUTLINED_FUNCTION_17_5();
            v83 = v79;
            v85 = v84;
            _s10OmniSearch0B6ResultVWOhTm_0(v83, v86);
            v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v82 + 4) = v87;
            v22 = a14;
            _os_log_impl(&dword_25D85C000, v75, v76, "Answer synthesis: unexpected result type %s during result collation.", v82, 0xCu);
            OUTLINED_FUNCTION_223(a18);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();

            v88 = a10;
            v89 = v85;
          }

          else
          {

            OUTLINED_FUNCTION_111_1();
            _s10OmniSearch0B6ResultVWOhTm_0(v79, v90);
            v88 = v78;
            v89 = v125;
          }

          _s10OmniSearch0B6ResultVWOhTm_0(v88, v89);
          v37 = a16;
          goto LABEL_31;
        case 3u:
LABEL_30:
          v91 = v23[13];
          OUTLINED_FUNCTION_17_5();
          _s10OmniSearch0B6ResultVWOhTm_0(v92, v93);
          goto LABEL_31;
        default:
          v42 = v23[12];
          v44 = v23[6];
          v43 = v23[7];
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v45, v43);
          OUTLINED_FUNCTION_2_4();
          v46 = OUTLINED_FUNCTION_63_0();
          _s10OmniSearch0B6ResultVWOcTm_1(v46, v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = *(v37 + 16);
            v95 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95, v96, v97, v37);
            v37 = v98;
          }

          v49 = *(v37 + 16);
          v48 = *(v37 + 24);
          if (v49 >= v48 >> 1)
          {
            v99 = OUTLINED_FUNCTION_26_3(v48);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v99, v49 + 1, 1, v37);
            v37 = v100;
          }

          v50 = v23[13];
          v52 = v23[6];
          v51 = v23[7];
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v53, v54);
          OUTLINED_FUNCTION_17_5();
          _s10OmniSearch0B6ResultVWOhTm_0(v50, v55);
          *(v37 + 16) = v49 + 1;
          OUTLINED_FUNCTION_42_5();
          v57 = *(v56 + 72);
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v52, v58);
LABEL_31:
          v36 += v22;
          if (!--v34)
          {
            goto LABEL_34;
          }

          continue;
      }
    }
  }

  v126 = 0;
  v127 = 0;
  v37 = MEMORY[0x277D84F90];
LABEL_34:
  v101 = *(v37 + 16);
  if (v101)
  {
    if (v101 != 1)
    {
      v109 = v23[8];
      v110 = v23[2];
      *v110 = v37;
      v110[1] = v126;
      v110[2] = v127;
      swift_storeEnumTagMultiPayload();
      goto LABEL_41;
    }

    if (!*(v37 + 16))
    {
      __break(1u);
      return result;
    }

    v103 = v23[8];
    v104 = v23[2];
    v105 = *(v23[5] + 80);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v37 + v106, v104);
    OUTLINED_FUNCTION_62_3();
  }

  else
  {
    v107 = v23[8];
    v108 = v23[2];

    OUTLINED_FUNCTION_62_3();
  }

  swift_storeEnumTagMultiPayload();

LABEL_41:
  v112 = v23[12];
  v111 = v23[13];
  v114 = v23[10];
  v113 = v23[11];
  v116 = v23[6];
  v115 = v23[7];

  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_191();

  return v118(v117, v118, v119, v120, v121, v122, v123, v124, a9, *(&a9 + 1), a10, a11, v125, v126, a14, a15, a16, v127, a18, a19, a20, a21);
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_40_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_123_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_224();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_40_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_123_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21SFCollectionStyleGridC_SitMd, &_sSo21SFCollectionStyleGridC_SitMR);
  OUTLINED_FUNCTION_224();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_40_6(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_123_2();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pMd, &_sSE_pMR);
  OUTLINED_FUNCTION_224();
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

{
  result = OUTLINED_FUNCTION_40_6(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized Array.count.getter, specialized Array._copyContents(initializing:));
}

{
  return specialized Array.append<A>(contentsOf:)(a1);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void AnswerSynthesisController.isHallucination(result:query:inputDocuments:locale:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v4 = v3;
  v39 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = type metadata accessor for SearchResultItem(0);
  v13 = OUTLINED_FUNCTION_17(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_36();
  v18 = v17 - v16;
  v19 = type metadata accessor for Answer();
  v20 = OUTLINED_FUNCTION_17(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v25 = v24 - v23;
  OUTLINED_FUNCTION_13_4();
  _s10OmniSearch0B6ResultVWOcTm_1(v11, v18);
  if (swift_getEnumCaseMultiPayload() == 28)
  {
    OUTLINED_FUNCTION_114_2();
    outlined init with take of ResultsDialog(v18, v25);
    v26 = (v25 + *(v19 + 44));
    v27 = v26[1];
    if (v27)
    {
      v36 = v9;
      v37 = v4;
      v28 = v2;
      v29 = *v26;
      v31 = v0[36];
      v30 = v0[37];
      OUTLINED_FUNCTION_218(v0 + 33, v31);
      v32 = *(v25 + 40);
      v38 = v25;
      v33 = *(v30 + 16);

      v33(v36, v7, v39, v29, v27, v32, 0, v37, v28, v31, v30);

      OUTLINED_FUNCTION_7_5();
      v35 = v38;
    }

    else
    {
      OUTLINED_FUNCTION_7_5();
      v35 = v25;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_6();
    v35 = v18;
  }

  _s10OmniSearch0B6ResultVWOhTm_0(v35, v34);
  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisController.answersMitigatingHallucination(result:query:inputDocuments:locale:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v101 = v2;
  v102 = v3;
  v93 = v4;
  v6 = v5;
  v100 = v7;
  v9 = v8;
  v95 = v10;
  v97 = type metadata accessor for AnswerSynthesisResult();
  v11 = OUTLINED_FUNCTION_17(v97);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_36();
  v96 = (v15 - v14);
  v16 = OUTLINED_FUNCTION_78_0();
  v17 = type metadata accessor for SearchResult(v16);
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_109();
  v92 = v23 - v24;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_4();
  v99 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_4();
  v91 = v28;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7_4();
  v98 = v30;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v31);
  v33 = &v90 - v32;
  v34 = 0;
  v35 = *(v6 + 16);
  v103 = MEMORY[0x277D84F90];
  while (v35 != v34)
  {
    v36 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v37 = *(v20 + 72);
    OUTLINED_FUNCTION_2_4();
    _s10OmniSearch0B6ResultVWOcTm_1(v38, v33);
    SearchResultItem.type.getter(v107);
    if ((*(*v1 + 352))(v107))
    {
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v33, v98);
      v40 = v103;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104[0] = v40;
      v94 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = *(v40 + 16);
        OUTLINED_FUNCTION_74_4();
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v40 = v104[0];
      }

      v44 = *(v40 + 16);
      v43 = *(v40 + 24);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v43);
        v103 = v47;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v45 = v103;
        v40 = v104[0];
      }

      ++v34;
      *(v40 + 16) = v45;
      v103 = v40;
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v98, v46);
      v9 = v94;
    }

    else
    {
      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v33, v39);
      ++v34;
    }
  }

  OUTLINED_FUNCTION_10_5();
  v48 = v96;
  _s10OmniSearch0B6ResultVWOcTm_1(v9, v96);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v53 = 0;
      v54 = *v48;
      v55 = v48[1];
      v94 = v48[2];
      v98 = v54[2];
      v96 = MEMORY[0x277D84F90];
      v56 = v93;
      while (v98 != v53)
      {
        if (v53 >= v54[2])
        {
          __break(1u);
          OUTLINED_FUNCTION_142_0();
          v76 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v76, static Logging.stextension);
          v77 = v94;

          v78 = Logger.logObject.getter();
          static os_log_type_t.error.getter();

          if (OUTLINED_FUNCTION_259())
          {
            OUTLINED_FUNCTION_28_3();
            v79 = swift_slowAlloc();
            OUTLINED_FUNCTION_9_4();
            v80 = swift_slowAlloc();
            v104[0] = v80;
            *v79 = 136642819;
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_244();

            *(v79 + 4) = v77;
            OUTLINED_FUNCTION_56_4();
            _os_log_impl(v81, v82, v83, v84, v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v80);
            OUTLINED_FUNCTION_90();
            MEMORY[0x25F8A1050]();
            v86 = OUTLINED_FUNCTION_19_5();
            MEMORY[0x25F8A1050](v86);
          }

          else
          {
          }

          v88 = v95;
          v95[1] = 0;
          v88[2] = 0;
          *v88 = v54;
          goto LABEL_39;
        }

        v57 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v58 = v54;
        v59 = *(v20 + 72);
        OUTLINED_FUNCTION_2_4();
        v60 = v99;
        _s10OmniSearch0B6ResultVWOcTm_1(v61, v99);
        if ((*(*v1 + 472))(v60, v100, v101, v103, v56, v102))
        {
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v60, v62);
          ++v53;
          v54 = v58;
        }

        else
        {
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v60, v92);
          v63 = v96;
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v104[0] = v63;
          if ((v64 & 1) == 0)
          {
            v65 = *(v63 + 16);
            OUTLINED_FUNCTION_74_4();
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v63 = v104[0];
          }

          v67 = *(v63 + 16);
          v66 = *(v63 + 24);
          if (v67 >= v66 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v66);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v63 = v104[0];
          }

          ++v53;
          *(v63 + 16) = v67 + 1;
          v96 = v63;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v92, v68);
          v56 = v93;
          v54 = v58;
        }
      }

      if (v96[2])
      {
        outlined init with copy of ChatMessageRecord(v1 + 264, v104);
        v69 = v105;
        v70 = v106;
        v71 = v56;
        v99 = __swift_project_boxed_opaque_existential_1(v104, v105);
        v72 = v94;
        if (v94)
        {
          v73 = v55;
        }

        else
        {
          v73 = 0;
        }

        if (v94)
        {
          v74 = v94;
        }

        else
        {
          v74 = 0xE000000000000000;
        }

        v75 = *(v70 + 16);

        v89 = v102;
        v102 = v73;
        v75(v100, v101, v103, v73, v74, MEMORY[0x277D84F90], 1, v71, v89, v69, v70);

        __swift_destroy_boxed_opaque_existential_1Tm(v104);
        v87 = v95;
        *v95 = v96;
        v87[1] = v55;
        v87[2] = v72;
      }

      else
      {
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_7();
      v50 = v91;
      outlined init with take of ResultsDialog(v48, v91);
      v51 = (*(*v1 + 472))(v50, v100, v101, v103, v93, v102);

      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v50, v52);
      if ((v51 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_39:
    swift_storeEnumTagMultiPayload();
    goto LABEL_40;
  }

LABEL_12:
  OUTLINED_FUNCTION_10_5();
  _s10OmniSearch0B6ResultVWOcTm_1(v9, v95);
LABEL_40:
  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisController.convertOnScreenTextToSearchResults(_:)()
{
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_228();
  v1 = type metadata accessor for SpotlightRankingItem();
  v2 = OUTLINED_FUNCTION_14(v1);
  v112 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v95 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v93 - v16;
  v109 = type metadata accessor for SearchResultItem(0);
  v18 = OUTLINED_FUNCTION_17(v109);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  v24 = type metadata accessor for SearchResult(0);
  v25 = OUTLINED_FUNCTION_14(v24);
  v108 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_109();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  v107 = v33;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v34);
  v36 = &v93 - v35;
  v106 = type metadata accessor for UUID();
  v37 = OUTLINED_FUNCTION_14(v106);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  v105 = v43 - v42;
  OUTLINED_FUNCTION_78_0();
  v110 = type metadata accessor for OnScreen();
  v44 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v47 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0)
  {
    v0 = MEMORY[0x277D84F90];
  }

  if (*(v0 + 16))
  {
    v113 = *(v0 + 16);
    v103 = v24;
    v104 = v23;
    v97 = (v45 + 16);
    v98 = (v39 + 8);
    v94 = (v112 + 32);
    v96 = (v45 + 8);
    v48 = MEMORY[0x277D84F90];

    v93 = v0;
    v49 = (v0 + 40);
    v50 = v110;
    v101 = v14;
    v102 = v31;
    v99 = v47;
    v100 = v36;
    do
    {
      v111 = v49;
      v112 = v48;
      v51 = *(v49 - 1);
      v52 = *v49;

      v53 = v105;
      UUID.init()();
      UUID.uuidString.getter();
      (*v98)(v53, v106);
      OUTLINED_FUNCTION_64_0();
      OnScreen.init(id:text:)();
      v54 = v104;
      (*v97)(v104, v47, v50);
      swift_storeEnumTagMultiPayload();
      v55 = objc_allocWithZone(MEMORY[0x277CC34B0]);
      v56 = [v55 init];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v57, v58, v59, v1);
      v60 = v103;
      v61 = v107;
      *(v107 + v103[7]) = MEMORY[0x277D84F90];
      v62 = (v61 + v60[10]);
      *v62 = 0;
      v62[1] = 0;
      OUTLINED_FUNCTION_13_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v54, v61);
      v63 = v60[6];
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v64 = v56;
      v65 = v101;
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of ToolDatabaseProtocol?(v17, v65, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      if (__swift_getEnumTagSinglePayload(v65, 1, v1) == 1)
      {
        v66 = OUTLINED_FUNCTION_232();
        outlined destroy of IntentApplication?(v66, v67, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        v121 = 1;
        v120 = 1;
        v119 = 1;
        v118 = 1;
        v117 = 1;
        v116 = 1;
        v115 = 1;
        v114 = 1;
        v68 = v60[5];
        OUTLINED_FUNCTION_28_1();
        SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();

        outlined destroy of IntentApplication?(v17, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v54, v69);
      }

      else
      {

        outlined destroy of IntentApplication?(v17, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v54, v70);
        v71 = *v94;
        v72 = v95;
        v73 = OUTLINED_FUNCTION_153();
        v71(v73);
        (v71)(v61 + v60[5], v72, v1);
      }

      *(v61 + v60[8]) = 0;
      *(v61 + v60[9]) = 1;
      OUTLINED_FUNCTION_1_7();
      v74 = v100;
      outlined init with take of ResultsDialog(v61, v100);
      OUTLINED_FUNCTION_2_4();
      v75 = v102;
      _s10OmniSearch0B6ResultVWOcTm_1(v74, v102);
      v48 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v110;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v83 = *(v48 + 16);
        v84 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v84, v85, v86, v48);
        v48 = v87;
      }

      v78 = *(v48 + 16);
      v77 = *(v48 + 24);
      if (v78 >= v77 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v77);
        OUTLINED_FUNCTION_117();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v88, v89, v90, v91);
        v48 = v92;
      }

      OUTLINED_FUNCTION_3_6();
      _s10OmniSearch0B6ResultVWOhTm_0(v74, v79);
      v47 = v99;
      (*v96)(v99, v50);
      *(v48 + 16) = v78 + 1;
      OUTLINED_FUNCTION_42_5();
      v81 = *(v80 + 72);
      OUTLINED_FUNCTION_1_7();
      outlined init with take of ResultsDialog(v75, v82);
      v49 = v111 + 2;
      --v113;
    }

    while (v113);
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  Array<A>.dictionaryByKey()(v48);

  OUTLINED_FUNCTION_148();
}

Swift::OpaquePointer_optional __swiftcall AnswerSynthesisController.compareAndBackfill(for:with:)(Swift::OpaquePointer a1, Swift::OpaquePointer with)
{
  OUTLINED_FUNCTION_155();
  v119 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v123 = &v116 - v11;
  v12 = OUTLINED_FUNCTION_78_0();
  v13 = type metadata accessor for SearchPropertyResponse(v12);
  v14 = OUTLINED_FUNCTION_14(v13);
  v129 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_109();
  v120 = v18 - v19;
  OUTLINED_FUNCTION_174();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v116 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v116 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  v122 = v27;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v28);
  v30 = &v116 - v29;
  v128 = type metadata accessor for SearchPropertyRequest(0);
  v31 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v136 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = v6;
  v127 = *(v6 + 16);
  if (v127)
  {
    v126 = *(v4 + 16);
    if (!v126)
    {
LABEL_64:
      v38 = 0;
      goto LABEL_65;
    }

    v117 = v23;
    v34 = 0;
    v132 = 0;
    OUTLINED_FUNCTION_131_1(v32);
    v125 = v4 + v36;
    v124 = *(v37 + 72);
    v38 = MEMORY[0x277D84F90];
    v121 = v30;
LABEL_4:
    v118 = v35;
    while (1)
    {
      v39 = v34;
      OUTLINED_FUNCTION_102_2();
      v40 = v136;
      _s10OmniSearch0B6ResultVWOcTm_1(v41, v136);
      v42 = v128;
      v43 = *(v40 + *(v128 + 20));
      EntityProperty.wrappedValue.getter();
      v45 = v139;
      v44 = v140;
      v143 = v139;
      v144 = v140;
      v46 = *(v40 + *(v42 + 24));
      EntityProperty.wrappedValue.getter();
      v47 = v139;
      v48 = v40 + *(v42 + 32);
      v49 = *(v48 + 32);
      v135 = v38;
      v133 = v48;
      if (v49 != 255 && (v49 & 1) != 0)
      {
        v45 = *v48;
        v50 = *(v48 + 8);
        outlined copy of SearchPropertyRequest.GroupInfo(*v48, v50, *(v48 + 16), *(v48 + 24), 1);

        v143 = v45;
        v144 = v50;
        v44 = v50;
      }

      v134 = v39 + 1;
      v51 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v137 = *(v129 + 72);
      v131 = v51;
      v52 = v130 + v51;
      v53 = v127;
      if (v127)
      {
        break;
      }

LABEL_44:
      if (*(v133 + 32) == 255)
      {
        OUTLINED_FUNCTION_133();
        (*(v75 + 256))(&v139);
        v76 = v142;
        OUTLINED_FUNCTION_218(&v139, v141);
        v138 = v47;
        v77 = *(v76 + 32);
        v78 = OUTLINED_FUNCTION_232();
        v79(v78);
        v38 = v135;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v134;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v85 = *(v38 + 16);
          v86 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86, v87, v88, v38);
          v38 = v89;
        }

        v82 = *(v38 + 16);
        v81 = *(v38 + 24);
        if (v82 >= v81 >> 1)
        {
          v90 = OUTLINED_FUNCTION_26_3(v81);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v90, v82 + 1, 1, v38);
          v38 = v91;
        }

        OUTLINED_FUNCTION_222();
        OUTLINED_FUNCTION_100_2();
        outlined init with take of ResultsDialog(v120, v83);
        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v136, v84);
        __swift_destroy_boxed_opaque_existential_1Tm(&v139);
      }

      else
      {
        OUTLINED_FUNCTION_9_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v136, v67);

        v34 = v134;
        v38 = v135;
      }

LABEL_54:
      if (v34 == v126)
      {
        if (v118)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    while (1)
    {
      OUTLINED_FUNCTION_103_2();
      _s10OmniSearch0B6ResultVWOcTm_1(v52, v26);
      v54 = *&v26[*(v13 + 20)];
      EntityProperty.wrappedValue.getter();
      if (v139 == v45 && v140 == v44)
      {
      }

      else
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v56 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v57 = *&v26[*(v13 + 24)];
      EntityProperty.wrappedValue.getter();
      v58 = 0xE600000000000000;
      v59 = 0x676E69727473;
      switch(v139)
      {
        case 1:
          v58 = 0xE400000000000000;
          v59 = 1702125924;
          break;
        case 2:
          v59 = 0x706D6F4365746164;
          v58 = 0xEE0073746E656E6FLL;
          break;
        case 3:
          v58 = 0xE800000000000000;
          v60 = 1634891108;
          goto LABEL_22;
        case 4:
          v59 = 0x6E6F73726570;
          break;
        case 5:
          v59 = 0x7265626D756ELL;
          break;
        case 6:
          v58 = 0xE500000000000000;
          v59 = 0x616964656DLL;
          break;
        case 7:
          v59 = 0x697461676976616ELL;
          v58 = 0xEA00000000006E6FLL;
          break;
        case 8:
          v58 = 0xE300000000000000;
          v59 = 7107189;
          break;
        case 9:
          v58 = 0xE800000000000000;
          v60 = 1633906540;
LABEL_22:
          v59 = v60 | 0x6E6F697400000000;
          break;
        default:
          break;
      }

      v61 = 0xE600000000000000;
      v62 = 0x676E69727473;
      switch(v47)
      {
        case 0:
          goto LABEL_38;
        case 1:
          v61 = 0xE400000000000000;
          v62 = 1702125924;
          goto LABEL_38;
        case 2:
          v62 = 0x706D6F4365746164;
          v61 = 0xEE0073746E656E6FLL;
          goto LABEL_38;
        case 3:
          v61 = 0xE800000000000000;
          v63 = 1634891108;
          goto LABEL_33;
        case 4:
          v62 = 0x6E6F73726570;
          goto LABEL_38;
        case 5:
          v62 = 0x7265626D756ELL;
          goto LABEL_38;
        case 6:
          v61 = 0xE500000000000000;
          v62 = 0x616964656DLL;
          goto LABEL_38;
        case 7:
          v62 = 0x697461676976616ELL;
          v61 = 0xEA00000000006E6FLL;
          goto LABEL_38;
        case 8:
          v61 = 0xE300000000000000;
          v62 = 7107189;
          goto LABEL_38;
        case 9:
          v61 = 0xE800000000000000;
          v63 = 1633906540;
LABEL_33:
          v62 = v63 | 0x6E6F697400000000;
LABEL_38:
          if (v59 == v62 && v58 == v61)
          {

LABEL_47:
            v68 = v122;
            outlined init with take of ResultsDialog(v26, v122);
            v69 = v121;
            outlined init with take of ResultsDialog(v68, v121);
            v38 = v135;
            v70 = v47;
            v71 = v123;
            v72 = v132;
            specialized Sequence.first(where:)(v135, &v143, v70, v123);
            v132 = v72;
            if (__swift_getEnumTagSinglePayload(v71, 1, v13) != 1)
            {
              OUTLINED_FUNCTION_32_7();
              _s10OmniSearch0B6ResultVWOhTm_0(v69, v73);
              outlined destroy of IntentApplication?(v71, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
              OUTLINED_FUNCTION_9_6();
              _s10OmniSearch0B6ResultVWOhTm_0(v136, v74);

              v34 = v134;
              goto LABEL_54;
            }

            outlined destroy of IntentApplication?(v71, &_s10OmniSearch0B16PropertyResponseVSgMd, &_s10OmniSearch0B16PropertyResponseVSgMR);
            OUTLINED_FUNCTION_103_2();
            _s10OmniSearch0B6ResultVWOcTm_1(v69, v117);
            v92 = swift_isUniquelyReferenced_nonNull_native();
            v34 = v134;
            if ((v92 & 1) == 0)
            {
              v98 = *(v38 + 16);
              v99 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v99, v100, v101, v38);
              v38 = v102;
            }

            v94 = *(v38 + 16);
            v93 = *(v38 + 24);
            if (v94 >= v93 >> 1)
            {
              v103 = OUTLINED_FUNCTION_26_3(v93);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v103, v94 + 1, 1, v38);
              v38 = v104;
            }

            OUTLINED_FUNCTION_32_7();
            _s10OmniSearch0B6ResultVWOhTm_0(v69, v95);
            OUTLINED_FUNCTION_222();
            OUTLINED_FUNCTION_100_2();
            outlined init with take of ResultsDialog(v117, v96);
            OUTLINED_FUNCTION_9_6();
            _s10OmniSearch0B6ResultVWOhTm_0(v136, v97);

            v35 = 1;
            if (v34 == v126)
            {
LABEL_65:
              if (one-time initialization token for answerSynthesis != -1)
              {
                OUTLINED_FUNCTION_0_5();
                swift_once();
              }

              v105 = type metadata accessor for Logger();
              OUTLINED_FUNCTION_200(v105, static Logging.answerSynthesis);

              v106 = Logger.logObject.getter();
              v107 = static os_log_type_t.info.getter();

              if (os_log_type_enabled(v106, v107))
              {
                OUTLINED_FUNCTION_28_3();
                v108 = swift_slowAlloc();
                OUTLINED_FUNCTION_9_4();
                v109 = swift_slowAlloc();
                v139 = v109;
                *v108 = 136642819;
                v143 = v38;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch0B16PropertyResponseVGSgMd, &_sSay10OmniSearch0B16PropertyResponseVGSgMR);
                String.init<A>(describing:)();
                v110 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

                *(v108 + 4) = v110;
                OUTLINED_FUNCTION_184_0(&dword_25D85C000, v106, v107, "Results after properties have been verified and backfilled: %{sensitive}s");
                __swift_destroy_boxed_opaque_existential_1Tm(v109);
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050]();
                OUTLINED_FUNCTION_90();
                MEMORY[0x25F8A1050]();
              }

              goto LABEL_74;
            }

            goto LABEL_4;
          }

          v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v65)
          {
            goto LABEL_47;
          }

          break;
        default:
          JUMPOUT(0);
      }

LABEL_43:
      OUTLINED_FUNCTION_32_7();
      _s10OmniSearch0B6ResultVWOhTm_0(v26, v66);
      v52 += v137;
      if (!--v53)
      {
        goto LABEL_44;
      }
    }
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v111 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v111, static Logging.answerSynthesis);
  v106 = Logger.logObject.getter();
  v112 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v106, v112))
  {
    OUTLINED_FUNCTION_51_5();
    v113 = swift_slowAlloc();
    OUTLINED_FUNCTION_81_4(v113);
    OUTLINED_FUNCTION_174_0(&dword_25D85C000, v106, v112, "No properties fetched, returning nil");
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

LABEL_74:

  OUTLINED_FUNCTION_148();
  result.value._rawValue = v114;
  result.is_nil = v115;
  return result;
}

uint64_t AnswerSynthesisController.extractAnswer(query:)()
{
  OUTLINED_FUNCTION_48();
  v1[71] = v0;
  v1[70] = v2;
  v1[72] = *v0;
  v3 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolFailureError();
  v1[73] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[74] = v4;
  v6 = *(v5 + 64);
  v1[75] = OUTLINED_FUNCTION_199();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes31AnswerSynthesisResolutionResultOSgMd, &_s15OmniSearchTypes31AnswerSynthesisResolutionResultOSgMR);
  OUTLINED_FUNCTION_114(v7);
  v9 = *(v8 + 64);
  v1[76] = OUTLINED_FUNCTION_199();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMd, &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMR);
  OUTLINED_FUNCTION_114(v10);
  v12 = *(v11 + 64);
  v1[77] = OUTLINED_FUNCTION_160();
  v1[78] = swift_task_alloc();
  v13 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v1[79] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[80] = v14;
  v16 = *(v15 + 64);
  v1[81] = OUTLINED_FUNCTION_160();
  v1[82] = swift_task_alloc();
  v17 = type metadata accessor for SearchResultItem(0);
  v1[83] = v17;
  OUTLINED_FUNCTION_114(v17);
  v19 = *(v18 + 64);
  v1[84] = OUTLINED_FUNCTION_199();
  v20 = type metadata accessor for Answer();
  v1[85] = v20;
  OUTLINED_FUNCTION_114(v20);
  v22 = *(v21 + 64);
  v1[86] = OUTLINED_FUNCTION_199();
  v23 = type metadata accessor for ResultsDialog();
  OUTLINED_FUNCTION_114(v23);
  v25 = *(v24 + 64);
  v1[87] = OUTLINED_FUNCTION_160();
  v1[88] = swift_task_alloc();
  v26 = type metadata accessor for AnswerSynthesisRequestContext();
  v1[89] = v26;
  OUTLINED_FUNCTION_114(v26);
  v28 = *(v27 + 64);
  v1[90] = OUTLINED_FUNCTION_199();
  Entity = type metadata accessor for PersonQueryEntity(0);
  v1[91] = Entity;
  OUTLINED_FUNCTION_21(Entity);
  v1[92] = v30;
  v32 = *(v31 + 64);
  v1[93] = OUTLINED_FUNCTION_199();
  v33 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult();
  v1[94] = v33;
  OUTLINED_FUNCTION_21(v33);
  v1[95] = v34;
  v36 = *(v35 + 64);
  v1[96] = OUTLINED_FUNCTION_199();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
  OUTLINED_FUNCTION_114(v37);
  v39 = *(v38 + 64);
  v1[97] = OUTLINED_FUNCTION_160();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  OUTLINED_FUNCTION_114(v40);
  v42 = *(v41 + 64);
  v1[100] = OUTLINED_FUNCTION_160();
  v1[101] = swift_task_alloc();
  v43 = type metadata accessor for UserQuery();
  v1[102] = v43;
  OUTLINED_FUNCTION_114(v43);
  v45 = *(v44 + 64);
  v1[103] = OUTLINED_FUNCTION_199();
  v46 = type metadata accessor for SearchResult(0);
  v1[104] = v46;
  OUTLINED_FUNCTION_21(v46);
  v1[105] = v47;
  v49 = *(v48 + 64);
  v1[106] = OUTLINED_FUNCTION_160();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMR);
  OUTLINED_FUNCTION_114(v50);
  v52 = *(v51 + 64);
  v1[111] = OUTLINED_FUNCTION_199();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
  v1[112] = v53;
  OUTLINED_FUNCTION_21(v53);
  v1[113] = v54;
  v56 = *(v55 + 64);
  v1[114] = OUTLINED_FUNCTION_160();
  v1[115] = swift_task_alloc();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_21(v57);
  v1[116] = v58;
  v60 = *(v59 + 64);
  v1[117] = OUTLINED_FUNCTION_160();
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultVSg7elementtMd, &_sSi6offset_10OmniSearch0C6ResultVSg7elementtMR);
  v1[120] = v61;
  OUTLINED_FUNCTION_114(v61);
  v63 = *(v62 + 64);
  v1[121] = OUTLINED_FUNCTION_199();
  v64 = type metadata accessor for Locale();
  v1[122] = v64;
  OUTLINED_FUNCTION_21(v64);
  v1[123] = v65;
  v67 = *(v66 + 64);
  v1[124] = OUTLINED_FUNCTION_160();
  v1[125] = swift_task_alloc();
  v68 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v68, v69, v70);
}

{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v7 = v4[138];
  *v6 = *v1;
  v5[139] = v0;

  v8 = v4[137];
  if (v0)
  {
    v9 = v5[129];
    v10 = v5[128];
    v11 = v5[127];
  }

  else
  {

    v5[140] = v3;
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

{
  OUTLINED_FUNCTION_78();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 36);
  v0[141] = v0[140];
  v1 = *(v0[71] + 192);
  v2 = v0[8];
  v3 = v0[9];
  v4 = swift_task_alloc();
  v0[142] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_76_3(v4);

  return specialized AnswerResolvable.resolve(query:options:results:assistantLocale:)(v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v5 = *(v4 + 1136);
  *v3 = *v1;
  *(v2 + 1144) = v6;
  *(v2 + 1152) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = v2[147];
  *v4 = *v1;
  v3[148] = v0;

  v6 = v2[143];
  v7 = v2[129];
  if (v0)
  {
    v8 = v3[128];
    v9 = v3[127];
  }

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v1 = static ContextManager.shared;
  *(v0 + 1192) = static ContextManager.shared;

  return MEMORY[0x2822009F8](AnswerSynthesisController.extractAnswer(query:), v1, 0);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  OUTLINED_FUNCTION_83_4();
  swift_beginAccess();
  MessageAccumulationContext.record(_:from:)(v2, 2);
  swift_endAccess();
  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void AnswerSynthesisController.extractAnswer(query:)()
{
  v2 = v0[70];
  v3 = type metadata accessor for AnswerSynthesisQuery(0);
  v4 = *(v2 + v3[8]);
  v0[126] = v4;
  if (*(v4 + 32))
  {
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);
  }

  else
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    static NSUserDefaults.fallbackLocale.getter();
  }

  v7 = v0[125];
  v8 = v0[71];

  OUTLINED_FUNCTION_107();
  Locale.init(identifier:)();
  (*(*v8 + 344))(v7);
  outlined init with copy of ToolDatabaseProtocol?(v0[71] + 200, (v0 + 21), &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
  v201 = v4;
  if (v0[24])
  {
    v9 = v0 + 16;
    v211 = v0[120];
    v10 = v0[116];
    v198 = v0[113];
    v208 = v0[111];
    v209 = v0[112];
    v11 = v0[80];
    v12 = v0[70];
    v213 = v0;
    outlined init with take of ResponseOverrideMatcherProtocol((v0 + 21), (v0 + 16));
    v199 = v3;
    v0 = *(v12 + v3[6]);
    v13 = swift_task_alloc();
    v200 = v9;
    *(v13 + 16) = v9;
    v207 = v0;
    v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15OmniSearchTypes34AnswerSynthesisExtractionCandidateOG_0dE00E6ResultVSgs5NeverOTg5(partial apply for closure #1 in static AnswerSynthesisController.convertToSearchResult(extractionCandidates:toolDatabase:), v13, v0);

    v15 = 0;
    v206 = v11;
    v203 = MEMORY[0x277D84F90];
    v214 = v14;
    v16 = *(v14 + 16);
    while (1)
    {
      v17 = &_s10OmniSearch0B6ResultVSgMd;
      if (v16 == v15)
      {
        break;
      }

      if (v15 >= v214[2])
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        OUTLINED_FUNCTION_2_0();
LABEL_48:
        v139 = v0[96];
        v140 = v0[71];
        v0[132] = static MetricsLogger.shared;
        v141 = v0[11];
        v0[133] = v0[10];
        v0[134] = v141;
        OUTLINED_FUNCTION_133();
        (*(v142 + 192))();
        (*(*v140 + 536))(1, v208, v139);

        v0[64] = MEMORY[0x277D84FA0];
        if (one-time initialization token for oneself != -1)
        {
          swift_once();
        }

        v143 = static Person.oneself;
        EntityProperty.wrappedValue.getter();
        if (*v207)
        {
          v143 = v17;
          specialized Set.formUnion<A>(_:)(*v207);
        }

        outlined init with copy of ToolDatabaseProtocol?(v209 + v206, v0[100], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
        type metadata accessor for StructuredQueryEntity(0);
        v144 = OUTLINED_FUNCTION_112_2();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v144, 1, v143);
        v146 = v0[100];
        if (EnumTagSinglePayload == 1)
        {
          outlined destroy of IntentApplication?(v0[100], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
          goto LABEL_55;
        }

        v147 = *(v146 + *(v143 + 16));
        EntityProperty.wrappedValue.getter();
        v148 = *v200;
        _s10OmniSearch0B6ResultVWOhTm_0(v146, type metadata accessor for StructuredQueryEntity);
        if (!v148)
        {
LABEL_55:

          v148 = MEMORY[0x277D84F90];
        }

        v149 = *(v148 + 16);
        if (v149)
        {
          v150 = v0[91];
          OUTLINED_FUNCTION_131_1(v0[92]);
          v152 = v148 + v151;
          v154 = *(v153 + 72);
          do
          {
            v155 = v0[93];
            _s10OmniSearch0B6ResultVWOcTm_1(v152, v155);
            v156 = *(v155 + v150[5]);
            EntityProperty.wrappedValue.getter();
            v157 = v0[59];
            if (v0[58])
            {
              v158 = v0[58];

              v159 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v159);
              EntityProperty.wrappedValue.getter();
              v160 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v160);
              if (*v214)
              {
                specialized Set.formUnion<A>(_:)(*v214);
              }
            }

            else
            {
              v161 = v0[59];
              outlined consume of Person?(0);
            }

            v162 = *(v0[93] + v150[7]);
            EntityProperty.wrappedValue.getter();
            v163 = v0[61];
            if (v0[60])
            {
              v164 = v0[60];

              v165 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v165);
              EntityProperty.wrappedValue.getter();
              v166 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v166);
              if (*v213)
              {
                specialized Set.formUnion<A>(_:)(*v213);
              }
            }

            else
            {
              v167 = v0[61];
              outlined consume of Person?(0);
            }

            v168 = *(v0[93] + v150[6]);
            EntityProperty.wrappedValue.getter();
            v169 = v0[63];
            if (v0[62])
            {
              v170 = v0[62];

              v171 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v171);
              EntityProperty.wrappedValue.getter();
              v172 = OUTLINED_FUNCTION_141_0();
              outlined consume of Person?(v172);
              if (*v1)
              {
                specialized Set.formUnion<A>(_:)(*v1);
              }
            }

            else
            {
              v173 = v0[63];
              outlined consume of Person?(0);
            }

            _s10OmniSearch0B6ResultVWOhTm_0(v0[93], type metadata accessor for PersonQueryEntity);
            v152 += v154;
            --v149;
          }

          while (v149);
        }

        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v174 = type metadata accessor for Logger();
        v0[135] = v174;
        OUTLINED_FUNCTION_200(v174, static Logging.search);
        v175 = Logger.logObject.getter();
        v176 = static os_log_type_t.info.getter();
        v177 = OUTLINED_FUNCTION_20_3();
        if (os_log_type_enabled(v177, v178))
        {
          OUTLINED_FUNCTION_28_3();
          v179 = v17;
          v180 = swift_slowAlloc();
          OUTLINED_FUNCTION_9_4();
          v216 = swift_slowAlloc();
          *v180 = 136315138;
          OUTLINED_FUNCTION_28_1();
          swift_beginAccess();
          v181 = *v179;

          Set.description.getter();

          OUTLINED_FUNCTION_179_0();
          v182 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v180 + 4) = v182;
          OUTLINED_FUNCTION_184_0(&dword_25D85C000, v175, v176, "Fetching relationships for people names: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v216);
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
          OUTLINED_FUNCTION_90();
          MEMORY[0x25F8A1050]();
        }

        v183 = v0[71];
        OUTLINED_FUNCTION_28_1();
        swift_beginAccess();
        outlined init with copy of ToolDatabaseProtocol?(v183 + 152, (v0 + 26), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
        if (v0[29])
        {
          outlined init with copy of ChatMessageRecord((v0 + 26), (v0 + 36));
          outlined destroy of IntentApplication?((v0 + 26), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
          v184 = v0[40];
          OUTLINED_FUNCTION_218(v0 + 36, v0[39]);
          OUTLINED_FUNCTION_28_1();
          swift_beginAccess();
          v0[136] = v0[64];

          v0[137] = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v185);
          v186 = *(v184 + 24);
          v215 = v186 + *v186;
          v187 = v186[1];
          v188 = swift_task_alloc();
          v0[138] = v188;
          *v188 = v0;
          v188[1] = AnswerSynthesisController.extractAnswer(query:);
          v189 = v0[125];
          OUTLINED_FUNCTION_244();
          OUTLINED_FUNCTION_253();

          __asm { BRAA            X4, X16 }
        }

        outlined destroy of IntentApplication?((v0 + 26), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
        v0[141] = 0;
        v192 = *(v0[71] + 192);
        v193 = v0[8];
        v194 = v0[9];
        v195 = swift_task_alloc();
        v0[142] = v195;
        *v195 = v0;
        OUTLINED_FUNCTION_76_3(v195);
        OUTLINED_FUNCTION_253();

        __asm { BR              X5 }
      }

      v0 = v213;
      v1 = v213[121];
      v18 = v213[118];
      v19 = v213[104];
      v20 = *(v10 + 80);
      OUTLINED_FUNCTION_79();
      v22 = v214 + v21 + *(v10 + 72) * v15;
      v23 = *(v211 + 48);
      *v1 = v15;
      outlined init with copy of ToolDatabaseProtocol?(v22, v1 + v23, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      outlined init with copy of ToolDatabaseProtocol?(v1 + v23, v18, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      v24 = OUTLINED_FUNCTION_65();
      if (__swift_getEnumTagSinglePayload(v24, v25, v19) == 1)
      {
        v26 = v213[112];
        v27 = v213[111];
        outlined destroy of IntentApplication?(v213[118], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        v17 = v213[111];
        v28 = v213[110];
        OUTLINED_FUNCTION_1_7();
        outlined init with take of ResultsDialog(v29, v28);
        v30 = *(v209 + 12);
        SearchResultItem.associatedValue.getter(v213 + 41);
        v31 = v213[44];
        v1 = v213[45];
        __swift_project_boxed_opaque_existential_1(v213 + 41, v31);
        v32 = (*(v1 + 32))(v31, v1);
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_1Tm(v213 + 41);
        *v17 = v32;
        *(v208 + 8) = v34;
        if (v15 >= v207[2])
        {
          goto LABEL_83;
        }

        v35 = v213[112];
        v36 = v213[111];
        v1 = v213[110];
        v37 = v213[79];
        OUTLINED_FUNCTION_42_5();
        (*(v40 + 16))(v36 + v30, v39 + v38 + *(v40 + 72) * v15);
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v1, v41);
      }

      OUTLINED_FUNCTION_117();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      v46 = v213[112];
      v47 = v213[111];
      outlined destroy of IntentApplication?(v213[121], &_sSi6offset_10OmniSearch0C6ResultVSg7elementtMd, &_sSi6offset_10OmniSearch0C6ResultVSg7elementtMR);
      OUTLINED_FUNCTION_38_5(v47);
      if (v48)
      {
        outlined destroy of IntentApplication?(v213[111], &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtSgMR);
        ++v15;
      }

      else
      {
        v49 = v213[114];
        v0 = &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd;
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v213[111], v213[115], &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
        v50 = OUTLINED_FUNCTION_26_2();
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v50, v51, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v60 = *(v203 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v203 = v61;
        }

        v54 = *(v203 + 16);
        v53 = *(v203 + 24);
        if (v54 >= v53 >> 1)
        {
          OUTLINED_FUNCTION_22_5(v53);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v203 = v62;
        }

        ++v15;
        v55 = v213[114];
        *(v203 + 16) = v54 + 1;
        OUTLINED_FUNCTION_42_5();
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v59, v57 + v56 + *(v58 + 72) * v54, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMd, &_sSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOtMR);
      }
    }

    v63 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSaySS_AGtGTt0g5(v203);
    v64 = v63;
    v65 = v214[2];
    if (v65)
    {
      v210 = v63;
      v0 = v213;
      v66 = v213[105];
      v67 = *(v10 + 80);
      OUTLINED_FUNCTION_79();
      v69 = v214 + v68;
      v212 = *(v10 + 72);
      v70 = MEMORY[0x277D84F90];
      do
      {
        v71 = v213[117];
        v72 = v213[104];
        outlined init with copy of ToolDatabaseProtocol?(v69, v213[119], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        v73 = OUTLINED_FUNCTION_32_3();
        outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v73, v74, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        v75 = OUTLINED_FUNCTION_191_0();
        if (__swift_getEnumTagSinglePayload(v75, v76, v77) == 1)
        {
          outlined destroy of IntentApplication?(v213[117], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        }

        else
        {
          v78 = v213[109];
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v79, v80);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v81 = v70;
          }

          else
          {
            v90 = *(v70 + 16);
            v91 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91, v92, v93, v70);
            v81 = v94;
          }

          v83 = *(v81 + 16);
          v82 = *(v81 + 24);
          if (v83 >= v82 >> 1)
          {
            OUTLINED_FUNCTION_26_3(v82);
            OUTLINED_FUNCTION_235();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v95, v96, v97, v98);
            v81 = v99;
          }

          v84 = v213[109];
          *(v81 + 16) = v83 + 1;
          v85 = *(v66 + 80);
          OUTLINED_FUNCTION_79();
          v70 = v86;
          v87 = *(v66 + 72);
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v88, v89);
        }

        v69 += v212;
        --v65;
      }

      while (v65);

      v3 = v199;
      v64 = v210;
    }

    else
    {

      v70 = MEMORY[0x277D84F90];
      v3 = v199;
      v0 = v213;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v200);
  }

  else
  {
    outlined destroy of IntentApplication?((v0 + 21), &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    v100 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v100, static Logging.answerSynthesis);
    v101 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    v102 = OUTLINED_FUNCTION_20_3();
    if (os_log_type_enabled(v102, v103))
    {
      OUTLINED_FUNCTION_51_5();
      v104 = swift_slowAlloc();
      OUTLINED_FUNCTION_81_4(v104);
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v105, v106, v107, v108, v109, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    v110 = v0[79];

    v70 = MEMORY[0x277D84F90];
    v64 = Dictionary.init(dictionaryLiteral:)();
  }

  v207 = v0 + 65;
  v213 = v0 + 67;
  v214 = v0 + 66;
  v1 = (v0 + 68);
  v200 = v0 + 69;
  v0[128] = v64;
  v208 = v70;
  v0[127] = v70;
  v111 = v0[125];
  v112 = v0[103];
  v113 = v0[102];
  v114 = v0[101];
  v115 = v0[70];
  v116 = *(v115 + v3[6]);
  static AnswerSynthesisController.onScreenEntities(from:)();
  v0[129] = v117;
  v118 = *v115;
  v0[130] = *v115;
  v119 = v115[1];
  v0[131] = v119;
  v209 = v115;
  v206 = v3[5];
  outlined init with copy of ToolDatabaseProtocol?(v115 + v206, v114, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v120 = Locale.identifier.getter();
  v122 = v121;
  *v112 = v118;
  v112[1] = v119;
  v112[2] = v118;
  v112[3] = v119;
  v112[4] = 0;
  v112[5] = 0;
  outlined init with copy of ToolDatabaseProtocol?(v114, v112 + v113[7], &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v123 = (v112 + v113[8]);
  *v123 = v120;
  v123[1] = v122;
  v124 = v113[9];
  swift_bridgeObjectRetain_n();

  UtteranceNormalizer.init(locale:)();
  outlined destroy of IntentApplication?(v114, &_s10OmniSearch21StructuredQueryEntityVSgMd, &_s10OmniSearch21StructuredQueryEntityVSgMR);
  v125 = MEMORY[0x277CBA0B8];
  v126 = 1;
  switch(*(v201 + 16))
  {
    case 1:
      v125 = MEMORY[0x277CBA0A8];
      goto LABEL_43;
    case 2:
      v125 = MEMORY[0x277CBA0C0];
      goto LABEL_43;
    case 3:
      v125 = MEMORY[0x277CBA0B0];
      goto LABEL_43;
    case 4:
      goto LABEL_44;
    default:
LABEL_43:
      v127 = v0[99];
      v128 = *v125;
      v129 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      OUTLINED_FUNCTION_23_5(v129);
      (*(v130 + 104))(v127, v128);
      v126 = 0;
LABEL_44:
      v131 = v0[125];
      v132 = v0[99];
      v133 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      __swift_storeEnumTagSinglePayload(v132, v126, 1, v133);
      v134 = Locale.identifier.getter();
      v205 = v135;
      if (*(v201 + 48))
      {
        v204 = *(v201 + 40);
        v136 = *(v201 + 48);
      }

      else
      {
        v204 = 0;
        v136 = 0xE000000000000000;
      }

      v17 = v0 + 64;
      v137 = v0[99];
      v138 = v0[98];
      v202 = v0[96];
      outlined init with copy of ToolDatabaseProtocol?(v137, v138, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);

      LOBYTE(v138) = InteractionMode.init(interactionMode:)(v138);
      outlined destroy of IntentApplication?(v137, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
      v0[2] = 0;
      *(v0 + 24) = 1;
      v0[4] = 0;
      *(v0 + 40) = 1;
      v0[6] = 0;
      *(v0 + 56) = v138;
      v0[8] = v134;
      v0[9] = v205;
      v0[10] = v204;
      v0[11] = v136;
      v0[13] = 0;
      v0[14] = 0;
      v0[12] = 0;
      *(v0 + 120) = 0;
      AnswerSynthesisController.createAnswerSynthesisResultForMetrics()();
      if (one-time initialization token for shared == -1)
      {
        goto LABEL_48;
      }

      goto LABEL_84;
  }
}

{
  OUTLINED_FUNCTION_190();
  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[125];
  v2 = v0[124];
  v3 = v0[123];
  v4 = v0[122];
  v0[145] = __swift_project_value_buffer(v0[135], static Logging.answerSynthesis);
  v5 = *(v3 + 16);
  v6 = OUTLINED_FUNCTION_59_3();
  v7(v6);
  v8 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_77_4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[124];
  v12 = v0[123];
  v13 = v0[122];
  if (v10)
  {
    OUTLINED_FUNCTION_28_3();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v63 = swift_slowAlloc();
    *v14 = 136315138;
    lazy protocol witness table accessor for type GenerativeError and conformance GenerativeError(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x277CC9788]);
    dispatch thunk of CustomStringConvertible.description.getter();
    v15 = *(v12 + 8);
    v16 = OUTLINED_FUNCTION_70_2();
    v15(v16);
    OUTLINED_FUNCTION_158();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v14 + 4) = v17;
    OUTLINED_FUNCTION_190_0();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    OUTLINED_FUNCTION_223(v63);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    v23 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v23);
  }

  else
  {

    v15 = *(v12 + 8);
    v24 = OUTLINED_FUNCTION_70_2();
    v15(v24);
  }

  v0[146] = v15;
  v25 = MEMORY[0x277CBA0B8];
  v26 = 1;
  switch(*(v0[126] + 16))
  {
    case 1:
      v25 = MEMORY[0x277CBA0A8];
      goto LABEL_10;
    case 2:
      v25 = MEMORY[0x277CBA0C0];
      goto LABEL_10;
    case 3:
      v25 = MEMORY[0x277CBA0B0];
      goto LABEL_10;
    case 4:
      goto LABEL_11;
    default:
LABEL_10:
      v27 = v0[97];
      v28 = *v25;
      v29 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      OUTLINED_FUNCTION_23_5(v29);
      (*(v30 + 104))(v27, v28);
      v26 = 0;
LABEL_11:
      v60 = v0[141];
      v62 = v0[129];
      v31 = v0[125];
      v32 = v0[97];
      v33 = v0[90];
      v34 = v0[89];
      v35 = v0[71];
      v36 = type metadata accessor for IntentSystemContext.AssistantContext.InteractionMode();
      __swift_storeEnumTagSinglePayload(v32, v26, 1, v36);
      v37 = Locale.identifier.getter();
      v39 = v38;
      type metadata accessor for FeatureFlagService();
      v40 = OUTLINED_FUNCTION_197_0();
      v41 = v34[5];
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v36);
      v45 = (v33 + v34[6]);
      v46 = (v33 + v34[7]);
      *v46 = 25965;
      v46[1] = 0xE200000000000000;
      outlined assign with take of SearchToolGlobalSearchXPC?(v32, v33 + v41, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMd, &_s10AppIntents19IntentSystemContextV09AssistantE0V15InteractionModeOSgMR);
      *v45 = v37;
      v45[1] = v39;
      *v33 = v60;
      *(v33 + v34[8]) = v40;
      v47 = *(*v35 + 368);
      v61 = v47 + *v47;
      v48 = v47[1];
      swift_task_alloc();
      OUTLINED_FUNCTION_53();
      v0[147] = v49;
      *v49 = v50;
      v49[1] = AnswerSynthesisController.extractAnswer(query:);
      v51 = v0[143];
      v52 = v0[133];
      v53 = v0[131];
      v54 = v0[130];
      v55 = v0[90];
      v56 = v0[87];
      v57 = v0[71];
      v64 = v0[134];
      v65 = v0[96];
      OUTLINED_FUNCTION_115();

      __asm { BRAA            X8, X16 }

      return;
  }
}

{
  v1 = v0[145];
  v2 = v0[127];
  v3 = v0[88];
  v4 = v0[87];
  OUTLINED_FUNCTION_110_1();
  outlined init with take of ResultsDialog(v5, v3);
  v6 = *v3;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = OUTLINED_FUNCTION_20_3();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[127];
  if (v11)
  {
    v13 = OUTLINED_FUNCTION_90_1();
    *v13 = 134218240;
    *(v13 + 4) = *(v6 + 16);

    *(v13 + 12) = 2048;
    v14 = *(v12 + 16);

    *(v13 + 14) = v14;

    _os_log_impl(&dword_25D85C000, v7, v8, "Return %ld answers from %ld ranked results", v13, 0x16u);
    v15 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v15);
  }

  else
  {
    v16 = v0[127];
    swift_bridgeObjectRelease_n();
  }

  v17 = MEMORY[0x277D84F90];
  v168 = MEMORY[0x277D84F90];
  v18 = *(v6 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v0[128];
    v21 = v0[105];
    v142 = v0[85];
    v143 = v0[86];
    v22 = v0[80];
    v23 = *(v21 + 80);
    OUTLINED_FUNCTION_79();
    v140 = v24;
    v163 = v25;
    v165 = (v25 + 32);
    v136 = v18;
    v138 = v6;
    v160 = v20;
    v134 = v21;
    while (v19 < *(v6 + 16))
    {
      v26 = v0[108];
      v27 = v0[84];
      v28 = v0[83];
      v164 = *(v21 + 72);
      OUTLINED_FUNCTION_2_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v29, v26);
      OUTLINED_FUNCTION_13_4();
      _s10OmniSearch0B6ResultVWOcTm_1(v26, v27);
      OUTLINED_FUNCTION_63_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v31 = v0[84];
      if (EnumCaseMultiPayload == 28)
      {
        v154 = v19;
        v32 = v0[86];
        OUTLINED_FUNCTION_114_2();
        v33 = OUTLINED_FUNCTION_94();
        outlined init with take of ResultsDialog(v33, v34);
        v152 = v143[2];
        v35 = (v32 + *(v142 + 44));
        v36 = v35[1];
        v148 = *v35;
        v37 = v143[5];
        v167 = *(v37 + 16);
        v150 = v143[3];

        v38 = 0;
        v166 = v37;
        v39 = v37 + v140;
        v157 = MEMORY[0x277D84F90];
        v145 = v37 + v140;
LABEL_9:
        v40 = v164;
        v41 = v39 + v164 * v38;
        while (v167 != v38)
        {
          if (v38 >= *(v166 + 16))
          {
            __break(1u);
            goto LABEL_37;
          }

          v42 = v0[107];
          OUTLINED_FUNCTION_2_4();
          _s10OmniSearch0B6ResultVWOcTm_1(v41, v42);
          SearchResultItem.associatedValue.getter(v0 + 31);
          v43 = v0[35];
          __swift_project_boxed_opaque_existential_1(v0 + 31, v0[34]);
          v44 = *(v43 + 32);
          v45 = OUTLINED_FUNCTION_63_0();
          v46(v45);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 31);
          if (*(v20 + 16))
          {
            v47 = v0[128];
            OUTLINED_FUNCTION_45_0();
            v48 = specialized __RawDictionaryStorage.find<A>(_:)();
            if (v49)
            {
              (*(v163 + 16))(v0[77], *(v20 + 56) + *(v163 + 72) * v48, v0[79]);
            }
          }

          v50 = v0[79];
          v51 = v0[77];
          OUTLINED_FUNCTION_117();
          __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);

          OUTLINED_FUNCTION_38_5(v51);
          if (v56)
          {
            v57 = v0[145];
            v58 = v0[107];
            v59 = v0[106];
            outlined destroy of IntentApplication?(v0[77], &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMd, &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMR);
            OUTLINED_FUNCTION_2_4();
            v60 = OUTLINED_FUNCTION_63_0();
            _s10OmniSearch0B6ResultVWOcTm_1(v60, v61);
            v62 = Logger.logObject.getter();
            static os_log_type_t.error.getter();
            OUTLINED_FUNCTION_150_0();
            v64 = os_log_type_enabled(v62, v63);
            v65 = v0[106];
            if (v64)
            {
              OUTLINED_FUNCTION_28_3();
              v66 = swift_slowAlloc();
              OUTLINED_FUNCTION_9_4();
              v169 = swift_slowAlloc();
              *v66 = 136642819;
              SearchResult.description.getter();
              OUTLINED_FUNCTION_3_6();
              _s10OmniSearch0B6ResultVWOhTm_0(v65, v67);
              v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v66 + 4) = v68;
              _os_log_impl(&dword_25D85C000, v62, v59, "Could not map search result %{sensitive}s to extraction candidate", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v169);
              v40 = v164;
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
              v20 = v160;
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
            }

            else
            {

              OUTLINED_FUNCTION_3_6();
              _s10OmniSearch0B6ResultVWOhTm_0(v65, v70);
            }

            v69 = 1;
          }

          else
          {
            (*v165)(v0[78], v0[77], v0[79]);
            v69 = 0;
          }

          v71 = v0[107];
          v72 = v0[79];
          v73 = v0[78];
          __swift_storeEnumTagSinglePayload(v73, v69, 1, v72);
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v71, v74);
          if (__swift_getEnumTagSinglePayload(v73, 1, v72) != 1)
          {
            v75 = v0[82];
            v76 = v0[81];
            v77 = *v165;
            (*v165)(v75, v0[78], v0[79]);
            v78 = OUTLINED_FUNCTION_59_3();
            (v77)(v78);
            v79 = v157;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = *(v157 + 16);
              v89 = OUTLINED_FUNCTION_44();
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v89, v90, v91, v157);
              v79 = v92;
            }

            v39 = v145;
            v81 = *(v79 + 16);
            v80 = *(v79 + 24);
            OUTLINED_FUNCTION_226();
            if (v83)
            {
              v93 = OUTLINED_FUNCTION_22_5(v82);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v93, v94, v95, v79);
              v79 = v96;
            }

            ++v38;
            v84 = v0[81];
            v85 = v0[79];
            *(v79 + 16) = v75;
            OUTLINED_FUNCTION_42_5();
            v157 = v79;
            (v77)(v79 + v86 + *(v87 + 72) * v81);
            goto LABEL_9;
          }

          outlined destroy of IntentApplication?(v0[78], &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMd, &_s15OmniSearchTypes34AnswerSynthesisExtractionCandidateOSgMR);
          v41 += v40;
          ++v38;
        }

        v101 = v0[108];
        v102 = v0[86];
        v103 = v0[76];
        type metadata accessor for AnswerSynthesisResolutionResult();
        v104 = OUTLINED_FUNCTION_65();
        __swift_storeEnumTagSinglePayload(v104, v105, 1, v106);
        v107 = type metadata accessor for AnswerSynthesisResult();
        OUTLINED_FUNCTION_53_0(v107);
        swift_allocObject();
        AnswerSynthesisResult.init(answer:dialog:sources:resolutionResult:)();
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v101, v108);
        OUTLINED_FUNCTION_7_5();
        v110 = _s10OmniSearch0B6ResultVWOhTm_0(v102, v109);
        MEMORY[0x25F89F850](v110);
        v111 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v111 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v111);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v17 = v168;
        v18 = v136;
        v6 = v138;
        v19 = v154;
        v21 = v134;
      }

      else
      {
        v97 = v0[108];
        OUTLINED_FUNCTION_3_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v98, v99);
        OUTLINED_FUNCTION_8_6();
        _s10OmniSearch0B6ResultVWOhTm_0(v31, v100);
      }

      if (++v19 == v18)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
  }

  else
  {
LABEL_33:
    v112 = v0[128];
    v113 = v0[125];
    v126 = v0[146];
    v127 = v0[124];
    v114 = v0[123];
    v125 = v0[122];
    v128 = v0[121];
    v129 = v0[119];
    v130 = v0[118];
    v131 = v0[117];
    v132 = v0[115];
    v133 = v0[114];
    v135 = v0[111];
    v137 = v0[110];
    v139 = v0[109];
    v141 = v0[108];
    v144 = v0[107];
    v146 = v0[106];
    v115 = v0[103];
    v147 = v0[101];
    v149 = v0[100];
    v151 = v0[99];
    v153 = v0[98];
    v116 = v0[96];
    v117 = v0[95];
    v118 = v0[94];
    v155 = v0[97];
    v156 = v0[93];
    v119 = v0[90];
    v120 = v0[88];
    v158 = v0[87];
    v159 = v0[86];
    v161 = v0[84];
    v162 = v0[82];
    OUTLINED_FUNCTION_149_0();

    outlined destroy of OmniSearchOptions((v0 + 2));
    (*(v117 + 8))(v116, v118);
    OUTLINED_FUNCTION_16_7();
    _s10OmniSearch0B6ResultVWOhTm_0(v115, v121);
    v126(v113, v125);
    _s10OmniSearch0B6ResultVWOhTm_0(v120, type metadata accessor for ResultsDialog);
    OUTLINED_FUNCTION_113_2();
    _s10OmniSearch0B6ResultVWOhTm_0(v119, v122);
    v123 = v0[64];

    OUTLINED_FUNCTION_62();

    v124(v17);
  }
}

uint64_t AnswerSynthesisController.extractAnswer(query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_255();
  v39 = v38[141];
  v40 = v38[129];
  v41 = v38[128];
  v42 = v38[127];
  v63 = v38[125];
  v43 = v38[123];
  v44 = v38[122];
  v45 = v38[103];
  v46 = v38[96];
  v47 = v38[95];
  v48 = v38[94];

  outlined destroy of OmniSearchOptions((v38 + 2));
  v49 = *(v47 + 8);
  v50 = OUTLINED_FUNCTION_158();
  v51(v50);
  OUTLINED_FUNCTION_16_7();
  _s10OmniSearch0B6ResultVWOhTm_0(v45, v52);
  (*(v43 + 8))(v63, v44);
  v53 = v38[64];

  v64 = v38[144];
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_62_4();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_250();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v64, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_255();
  v39 = v38[136];
  v40 = v38[125];
  v41 = v38[123];
  v42 = v38[122];
  v43 = v38[103];
  v44 = v38[96];
  v45 = v38[95];
  v46 = v38[94];
  outlined destroy of OmniSearchOptions((v38 + 2));
  v47 = *(v45 + 8);
  v48 = OUTLINED_FUNCTION_63_0();
  v49(v48);
  OUTLINED_FUNCTION_16_7();
  _s10OmniSearch0B6ResultVWOhTm_0(v43, v50);
  v51 = *(v41 + 8);
  v52 = OUTLINED_FUNCTION_32_0();
  v53(v52);
  OUTLINED_FUNCTION_223(v38 + 36);

  v63 = v38[139];
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_62_4();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_250();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, v63, a35, a36, a37, a38);
}

{
  OUTLINED_FUNCTION_255();
  v39 = v38[148];
  v74 = v38[146];
  v40 = v38[134];
  v41 = v38[133];
  v42 = v38[132];
  v71 = v38[122];
  v72 = v38[125];
  v69 = v38[103];
  v70 = v38[123];
  v68 = v38[96];
  v43 = v38[95];
  v44 = v38[94];
  v73 = v38[90];
  v45 = v38[75];
  v46 = v38[74];
  v47 = v38[73];
  OUTLINED_FUNCTION_133();
  (*(v48 + 320))(v39);
  OUTLINED_FUNCTION_133();
  v50 = *(v49 + 208);
  v51 = OUTLINED_FUNCTION_118_0();
  v52(v51);
  v53 = *(v46 + 8);
  v54 = OUTLINED_FUNCTION_64_0();
  v55(v54);
  swift_willThrow();
  outlined destroy of OmniSearchOptions((v38 + 2));
  (*(v43 + 8))(v68, v44);
  OUTLINED_FUNCTION_16_7();
  _s10OmniSearch0B6ResultVWOhTm_0(v69, v56);
  v74(v72, v71);
  OUTLINED_FUNCTION_113_2();
  _s10OmniSearch0B6ResultVWOhTm_0(v73, v57);
  v58 = v38[64];

  v75 = v38[148];
  OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_149_0();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_250();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v68, v69, v70, v71, v72, v73, v75, a34, a35, a36, a37, a38);
}

void static AnswerSynthesisController.onScreenEntities(from:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_109();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v17 = *(v5 + 16);
    v15 = v5 + 16;
    v16 = v17;
    v18 = *(v15 + 64);
    OUTLINED_FUNCTION_79();
    v20 = v1 + v19;
    v53 = *(v15 + 56);
    v21 = (v15 + 16);
    v22 = (v15 + 72);
    v52 = *MEMORY[0x277D374D8];
    v46 = (v15 + 80);
    v47 = (v15 - 8);
    v23 = MEMORY[0x277D84F90];
    v49 = v13;
    v50 = v15;
    v48 = v17;
    do
    {
      v24 = OUTLINED_FUNCTION_232();
      v16(v24);
      v25 = *v21;
      v26 = OUTLINED_FUNCTION_153();
      v27(v26);
      v28 = *v22;
      v29 = OUTLINED_FUNCTION_107();
      v31 = v30(v29);
      if (v31 == v52)
      {
        v32 = *v46;
        v33 = OUTLINED_FUNCTION_107();
        v34(v33);
        v35 = *v10;
        v51 = v10[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = *(v23 + 16);
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v44;
        }

        v37 = *(v23 + 16);
        v36 = *(v23 + 24);
        if (v37 >= v36 >> 1)
        {
          OUTLINED_FUNCTION_26_3(v36);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v23 = v45;
        }

        *(v23 + 16) = v37 + 1;
        v38 = v23 + 16 * v37;
        v39 = v51;
        *(v38 + 32) = v35;
        *(v38 + 40) = v39;
        v16 = v48;
      }

      else
      {
        v40 = *v47;
        v41 = OUTLINED_FUNCTION_107();
        v42(v41);
      }

      v20 += v53;
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    specialized Set._Variant.insert(_:)(&v7, v6, v5);

    v4 += 2;
  }
}

const void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSi_SnySiGTt0g5(const void *result, uint64_t a2)
{
  v3 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v3)
    {
      v5 = OUTLINED_FUNCTION_244();
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(v5, 0);
      if (specialized Sequence._copySequenceContents(initializing:)(v7, v6 + 32, v3, v2, a2) == v3)
      {
        return v6;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  OUTLINED_FUNCTION_203_0();
  specialized Sequence._copySequenceContents(initializing:)(v2, v3, v4, v5);
  OUTLINED_FUNCTION_168_0();
  if (!v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC10Foundation3URLV_ShyAFGTt0g5Tm(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v4 = a2(*(a1 + 16), 0);
  v5 = a3(0);
  OUTLINED_FUNCTION_114(v5);
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_79();
  specialized Sequence._copySequenceContents(initializing:)();
  OUTLINED_FUNCTION_168_0();
  if (!v8)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_SD6ValuesVyS2S_GTt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(a1 + 16), 0);
  OUTLINED_FUNCTION_203_0();
  specialized Sequence._copySequenceContents(initializing:)(v2, v3, v4, v5);
  OUTLINED_FUNCTION_168_0();
  if (!v6)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v1;
}

uint64_t closure #1 in static AnswerSynthesisController.convertToSearchResult(extractionCandidates:toolDatabase:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v49 = a2;
  v6 = type metadata accessor for TypedValue();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v47 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v48 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AnswerSynthesisExtractionCandidate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D374E0])
  {
    (*(v16 + 96))(v19, v15);
    (*(v7 + 32))(v14, v19, v6);
    TypedValue.asSearchResult(toolDatabase:)(v49, a3);
    v49 = a3;
    v21 = v14;
    if (v3)
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logging.answerSynthesis);
      v23 = *(v7 + 16);
      v24 = v48;
      v23(v48, v14, v6);
      v25 = v3;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      v46 = v27;
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = v6;
        v45 = v21;
        v30 = v24;
        v31 = v28;
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        *v31 = 136380931;
        v23(v47, v30, v29);
        String.init<A>(describing:)();
        v32 = *(v7 + 8);
        v32(v30, v29);
        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v31 + 4) = v33;
        *(v31 + 12) = 2112;
        v34 = v3;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v35;
        v36 = v43;
        *v43 = v35;
        _os_log_impl(&dword_25D85C000, v26, v46, "Error converting typedValue (%{private}s) to SearchResult: %@", v31, 0x16u);
        outlined destroy of IntentApplication?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x25F8A1050](v36, -1, -1);
        v37 = v44;
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x25F8A1050](v37, -1, -1);
        MEMORY[0x25F8A1050](v31, -1, -1);

        v32(v45, v29);
      }

      else
      {

        v40 = *(v7 + 8);
        v40(v24, v6);
        v40(v21, v6);
      }

      v41 = type metadata accessor for SearchResult(0);
      return __swift_storeEnumTagSinglePayload(v49, 1, 1, v41);
    }

    else
    {
      return (*(v7 + 8))(v14, v6);
    }
  }

  else if (v20 == *MEMORY[0x277D374D8])
  {
    (*(v16 + 8))(v19, v15);
    v38 = type metadata accessor for SearchResult(0);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v38);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t AnswerSynthesisController.createAnswerSynthesisResultForMetrics()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisPerfMetricsVSgMR);
  OUTLINED_FUNCTION_114(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMd, &_s27IntelligencePlatformLibrary0A23FlowSearchToolTelemetryV0eF26AnswerSynthesisDataMetricsVSgMR);
  OUTLINED_FUNCTION_114(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v19[-v8];
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.init()();
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics.init()();
  v10 = type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisDataMetrics();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.setter();
  v11 = IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.dataMetrics.modify();
  v13 = OUTLINED_FUNCTION_165_0(v11, v12);
  if (!__swift_getEnumTagSinglePayload(v13, v14, v10))
  {
    v19[12] = 0;
    MEMORY[0x25F89E590](1);
  }

  v11(v20, 0);
  IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics.init()();
  type metadata accessor for IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisPerfMetrics();
  v15 = OUTLINED_FUNCTION_243();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  return IntelligenceFlowSearchToolTelemetry.SearchToolAnswerSynthesisResult.perfMetrics.setter();
}

void AnswerSynthesisController.prewarmPCCConnection(runAnswerSynthesis:results:answerSynthesisResultForMetrics:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for PrewarmUrgency();
  v9 = OUTLINED_FUNCTION_14(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v16 = (v15 - v14);
  v17 = type metadata accessor for SearchResult(0);
  v18 = OUTLINED_FUNCTION_21(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_109();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  if (v7)
  {
    v70 = v16;
    v71 = v3;
    v72 = v11;
    v73 = v8;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    v76 = static NSUserDefaults.answerSynthesisLimit.getter();
    v29 = *(v5 + 16);
    if (v29)
    {
      v30 = 0;
      v31 = (*v1 + 352);
      v77 = *v31;
      v75 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v32 = v5 + v75;
      v33 = *(v20 + 72);
      v34 = MEMORY[0x277D84F90];
      v35 = v31;
      v74 = v1;
      while (1)
      {
        OUTLINED_FUNCTION_2_4();
        _s10OmniSearch0B6ResultVWOcTm_1(v32, v28);
        SearchResultItem.type.getter(&v78);
        if (v77(&v78))
        {
          OUTLINED_FUNCTION_2_4();
          v36 = OUTLINED_FUNCTION_118_0();
          _s10OmniSearch0B6ResultVWOcTm_1(v36, v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = *(v34 + 16);
            v44 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44, v45, v46, v34);
            v34 = v47;
          }

          v1 = *(v34 + 16);
          v38 = *(v34 + 24);
          if (v1 >= v38 >> 1)
          {
            v48 = OUTLINED_FUNCTION_22_5(v38);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v49, v50, v34);
            v34 = v51;
          }

          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v28, v39);
          *(v34 + 16) = v1 + 1;
          OUTLINED_FUNCTION_1_7();
          outlined init with take of ResultsDialog(v25, v40);
          if (__OFADD__(v30++, 1))
          {
            __break(1u);
LABEL_36:
            OUTLINED_FUNCTION_0_5();
            swift_once();
LABEL_25:
            v57 = type metadata accessor for Logger();
            OUTLINED_FUNCTION_200(v57, static Logging.answerSynthesis);
            v58 = Logger.logObject.getter();
            static os_log_type_t.info.getter();
            v59 = OUTLINED_FUNCTION_20_3();
            if (os_log_type_enabled(v59, v60))
            {
              OUTLINED_FUNCTION_51_5();
              *swift_slowAlloc() = 0;
              OUTLINED_FUNCTION_257(&dword_25D85C000, v61, v62, "Prewarming AnswerSynthesisModel with .imminent urgency");
              OUTLINED_FUNCTION_90();
              MEMORY[0x25F8A1050]();
            }

            static PrewarmUrgency.imminent.getter();
            goto LABEL_33;
          }

          if (v30 == v76)
          {
            v1 = v74;
            goto LABEL_23;
          }

          v1 = v74;
        }

        else
        {
          OUTLINED_FUNCTION_3_6();
          _s10OmniSearch0B6ResultVWOhTm_0(v28, v42);
        }

        v32 += v33;
        if (!--v29)
        {
          goto LABEL_16;
        }
      }
    }

    v34 = MEMORY[0x277D84F90];
LABEL_16:
    if (*(v34 + 16))
    {
LABEL_23:
      AnswerSynthesisController.answerSynthesisStrongPreheatEnabled()();
      v35 = v72;
      v29 = v73;
      v28 = v70;
      v30 = v71;
      if (v56)
      {
        if (one-time initialization token for answerSynthesis != -1)
        {
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v63 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v63, static Logging.answerSynthesis);
      v64 = Logger.logObject.getter();
      static os_log_type_t.info.getter();
      v65 = OUTLINED_FUNCTION_20_3();
      if (os_log_type_enabled(v65, v66))
      {
        OUTLINED_FUNCTION_51_5();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_257(&dword_25D85C000, v67, v68, "Prewarming AnswerSynthesisModel with .default urgency");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }

      static PrewarmUrgency.default.getter();
LABEL_33:
      (*(*v1 + 376))(v28, v30);

      (v35[1])(v28, v29);
    }

    else
    {

      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_0_5();
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v52, static Logging.answerSynthesis);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_51_5();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_81_4(v55);
        OUTLINED_FUNCTION_174_0(&dword_25D85C000, v53, v54, "Filtered results contain no supported types; not prewarming AnswerSynthesisModel");
        OUTLINED_FUNCTION_90();
        MEMORY[0x25F8A1050]();
      }
    }
  }

  OUTLINED_FUNCTION_148();
}

void AnswerSynthesisController.answerSynthesisStrongPreheatEnabled()()
{
  OUTLINED_FUNCTION_155();
  v1 = type metadata accessor for OSSignpostID();
  v2 = OUTLINED_FUNCTION_14(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_109();
  MEMORY[0x28223BE20](v7);
  v9 = &v43[-v8];
  if (one-time initialization token for searchSignposter != -1)
  {
    OUTLINED_FUNCTION_22();
  }

  v10 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v10, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v11 = OSSignposter.logHandle.getter();
  v12 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    OUTLINED_FUNCTION_51_5();
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v11, v12, v14, "OmniSearchService.answerSynthesisStrongPreheatEnabled", "", v13, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v15 = *(v4 + 16);
  v16 = OUTLINED_FUNCTION_34_5();
  v17(v16);
  v18 = type metadata accessor for OSSignpostIntervalState();
  OUTLINED_FUNCTION_53_0(v18);
  swift_allocObject();
  OUTLINED_FUNCTION_112_2();
  OSSignpostIntervalState.init(id:isOpen:)();
  v19 = (*(v4 + 8))(v9, v1);
  v20 = (*(*v0 + 280))(v19);
  swift_beginAccess();
  v21 = specialized Dictionary.subscript.getter(0xD000000000000023, 0x800000025DBF0420, *(v20 + 72));
  swift_endAccess();
  if (v21)
  {
    v22 = [v21 BOOLeanValue];
  }

  else
  {
    v22 = 2;
  }

  if (one-time initialization token for answerSynthesis != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v23, static Logging.answerSynthesis);
  v24 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  OUTLINED_FUNCTION_150_0();
  if (os_log_type_enabled(v24, v25))
  {
    OUTLINED_FUNCTION_28_3();
    v26 = swift_slowAlloc();
    OUTLINED_FUNCTION_9_4();
    v44 = swift_slowAlloc();
    *v26 = 136315138;
    v43[7] = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v26 + 4) = v27;
    OUTLINED_FUNCTION_194_0();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    OUTLINED_FUNCTION_139_1();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  v33 = Logger.logObject.getter();
  static os_log_type_t.info.getter();
  v34 = OUTLINED_FUNCTION_20_3();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_173_0();
    *v36 = 67109120;
    v36[1] = (v22 == 2) | v22 & 1;
    OUTLINED_FUNCTION_22_4();
    _os_log_impl(v37, v38, v39, v40, v41, 8u);
    v42 = OUTLINED_FUNCTION_19_5();
    MEMORY[0x25F8A1050](v42);
  }

  OUTLINED_FUNCTION_4_7();
  $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)();

  OUTLINED_FUNCTION_148();
}

void $defer #1 () in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_155();
  v31 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for OSSignpostError();
  v8 = OUTLINED_FUNCTION_14(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  v15 = v14 - v13;
  v16 = type metadata accessor for OSSignpostID();
  v17 = OUTLINED_FUNCTION_14(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v24 = v23 - v22;
  if (*v4 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v25, v2);
  v26 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v27 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v10 + 88))(v15, v7) == *MEMORY[0x277D85B00])
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v10 + 8))(v15, v7);
      v28 = "";
    }

    OUTLINED_FUNCTION_51_5();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_234(v29);
    v30 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v26, v27, v30, v31, v28, v6, 2u);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  (*(v19 + 8))(v24, v16);
  OUTLINED_FUNCTION_148();
}

uint64_t AnswerSynthesisController.deinit()
{
  outlined destroy of IntentApplication?((v0 + 2), &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMd, &_s10OmniSearch28AnswerSynthesisModelProtocol_pSgMR);
  outlined destroy of IntentApplication?((v0 + 7), &_s10OmniSearch28PQAVerificationModelProtocol_pSgMd, &_s10OmniSearch28PQAVerificationModelProtocol_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  v1 = v0[18];

  outlined destroy of IntentApplication?((v0 + 19), &_s10OmniSearch17ECRClientProtocol_pSgMd, &_s10OmniSearch17ECRClientProtocol_pSgMR);
  v2 = v0[24];

  outlined destroy of IntentApplication?((v0 + 25), &_s10OmniSearch20ToolDatabaseProtocol_pSgMd, &_s10OmniSearch20ToolDatabaseProtocol_pSgMR);
  v3 = v0[32];

  return OUTLINED_FUNCTION_223(v0 + 33);
}

uint64_t AnswerSynthesisController.__deallocating_deinit()
{
  AnswerSynthesisController.deinit();
  OUTLINED_FUNCTION_193_0();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for AnswerSynthesisControllerProtocol.synthesize(query:requestedProperties:searchResults:onScreenText:context:clientId:answerSynthesisResultForMetrics:) in conformance AnswerSynthesisController(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(**v8 + 368);
  v20 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = type metadata accessor for UTType();
    OUTLINED_FUNCTION_21(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t specialized implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  MEMORY[0x25F89F8A0](v2, MEMORY[0x277D837D0]);

  return OUTLINED_FUNCTION_88();
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;

  return OUTLINED_FUNCTION_62_3();
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(_BYTE *a1, char a2, uint64_t a3)
{
  *a1 = a2;

  return a3;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s10OmniSearch0B6ResultVWOcTm_1(a4, a1);

  return a2;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for SearchResult(0);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v43 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtSgMd, &_sSS_10OmniSearch0B6ResultVtSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = (v42 - v18);
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v48);
  v44 = v48[0];
  v45 = v48[1];
  v46 = v48[2];
  v47 = v49;
  v42[1] = a1;

  v42[0] = a3;

  while (1)
  {
    specialized LazyMapSequence.Iterator.next()(v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      outlined consume of [String : String].Iterator._Variant();
    }

    v21 = *(v20 + 48);
    v23 = *v19;
    v22 = v19[1];
    outlined init with take of ResultsDialog(v19 + v21, v15);
    v24 = *a5;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)();
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10OmniSearch0D6ResultVGMd, &_ss17_NativeDictionaryVySS10OmniSearch0D6ResultVGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, a4 & 1);
      v31 = *a5;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_16;
      }

      v26 = v32;
    }

    v34 = *a5;
    if (v30)
    {
      v35 = *(v50 + 72) * v26;
      v36 = v43;
      _s10OmniSearch0B6ResultVWOcTm_1(v34[7] + v35, v43);
      _s10OmniSearch0B6ResultVWOhTm_0(v15, type metadata accessor for SearchResult);

      outlined assign with take of SearchResult(v36, v34[7] + v35);
      a4 = 1;
    }

    else
    {
      v34[(v26 >> 6) + 8] |= 1 << v26;
      v37 = (v34[6] + 16 * v26);
      *v37 = v23;
      v37[1] = v22;
      outlined init with take of ResultsDialog(v15, v34[7] + *(v50 + 72) * v26);
      v38 = v34[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_15;
      }

      v34[2] = v40;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    if (v3 < 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    MEMORY[0x25F8A01B0](v7);
    goto LABEL_14;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_14:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 56) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Sequence._copySequenceContents(initializing:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v30 = OUTLINED_FUNCTION_14(v9);
  v31 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_109();
  v29 = v13 - v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_2();
  v16 = v1 + 56;
  v28 = -1 << *(v1 + 32);
  if (-v28 < 64)
  {
    v17 = ~(-1 << -v28);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v1 + 56);
  if (!v5)
  {
    v21 = 0;
LABEL_22:
    *v7 = v1;
    v7[1] = v16;
    v7[2] = ~v28;
    v7[3] = v21;
    v7[4] = v18;
    OUTLINED_FUNCTION_148();
    return;
  }

  v19 = v3;
  if (!v3)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v27 = v1 + 56;
    v20 = 0;
    v21 = 0;
    while (v20 < v19)
    {
      if (__OFADD__(v20, 1))
      {
        goto LABEL_26;
      }

      if (!v18)
      {
        v16 = v27;
        while (1)
        {
          v22 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v22 >= ((63 - v28) >> 6))
          {
            v18 = 0;
            goto LABEL_22;
          }

          v18 = *(v27 + 8 * v22);
          ++v21;
          if (v18)
          {
            v32 = v20 + 1;
            goto LABEL_17;
          }
        }

        __break(1u);
        break;
      }

      v32 = v20 + 1;
      v22 = v21;
LABEL_17:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v1;
      v25 = *(v31 + 72);
      (*(v31 + 16))(v29, *(v1 + 48) + v25 * (v23 | (v22 << 6)), v30);
      v26 = *(v31 + 32);
      OUTLINED_FUNCTION_160_0();
      v26();
      OUTLINED_FUNCTION_202_0();
      v26();
      v19 = v3;
      v20 = v32;
      if (v32 == v3)
      {
        v21 = v22;
        v16 = v27;
        v1 = v24;
        goto LABEL_22;
      }

      v5 += v25;
      v21 = v22;
      v1 = v24;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = type metadata accessor for SearchResult(0);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10OmniSearch0C6ResultV5valuetSgMd, &_sSS3key_10OmniSearch0C6ResultV5valuetSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v37 - v17);
  v20 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v38 = v6;
  v42 = v21;
  if (v23)
  {
    v39 = v15;
    v40 = a1;
    v24 = v3;
    v25 = v22;
LABEL_7:
    v26 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v25 << 6);
    v28 = (*(v20 + 48) + 16 * v27);
    v29 = *v28;
    v30 = v28[1];
    _s10OmniSearch0B6ResultVWOcTm_1(*(v20 + 56) + *(v41 + 72) * v27, v10);
    v31 = *(v24 + 48);
    *v18 = v29;
    v18[1] = v30;
    v3 = v24;
    outlined init with take of ResultsDialog(v10, v18 + v31);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v24);

    v15 = v39;
    a1 = v40;
LABEL_8:
    *v1 = v20;
    v1[1] = v19;
    v1[2] = v42;
    v1[3] = v22;
    v1[4] = v26;
    v32 = v1[5];
    v33 = v1[6];
    outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v18, v15, &_sSS3key_10OmniSearch0C6ResultV5valuetSgMd, &_sSS3key_10OmniSearch0C6ResultV5valuetSgMR);
    v34 = 1;
    if (__swift_getEnumTagSinglePayload(v15, 1, v3) != 1)
    {
      v35 = v38;
      outlined init with take of (AnswerSynthesisModelResult.AnswerResponse, SearchResult)(v15, v38, &_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR);
      v32(v35);
      outlined destroy of IntentApplication?(v35, &_sSS3key_10OmniSearch0C6ResultV5valuetMd, &_sSS3key_10OmniSearch0C6ResultV5valuetMR);
      v34 = 0;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10OmniSearch0B6ResultVtMd, &_sSS_10OmniSearch0B6ResultVtMR);
    return __swift_storeEnumTagSinglePayload(a1, v34, 1, v36);
  }

  else
  {
    while (1)
    {
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v25 >= ((v21 + 64) >> 6))
      {
        __swift_storeEnumTagSinglePayload(&v37 - v17, 1, 1, v3);
        v26 = 0;
        goto LABEL_8;
      }

      v23 = *(v19 + 8 * v25);
      ++v22;
      if (v23)
      {
        v39 = v15;
        v40 = a1;
        v24 = v3;
        v22 = v25;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized TrialManager.init(trialClient:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRIClient, 0x277D73660);
  v15[4] = &protocol witness table for TRIClient;
  v15[0] = a1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for TRILevel, 0x277D73B18);
  *(a4 + 72) = Dictionary.init(dictionaryLiteral:)();
  *(a4 + 80) = xmmword_25DBC9A70;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 144) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  outlined init with copy of ChatMessageRecord(v15, a4 + 32);

  TrialManager.loadFactorsAndExperiment()();
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;

  v12 = @nonobjc TRIClient.addUpdateHandler(forNamespaceName:using:)(v8, v9, partial apply for closure #1 in TrialManager.init(trialClient:namespace:), v11);

  v13 = *(a4 + 144);
  *(a4 + 144) = v12;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return a4;
}

uint64_t outlined assign with copy of ECRClientProtocol?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_34_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_23_5(v5);
  v7 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_94();
  v9(v8);
  return v4;
}

uint64_t partial apply for closure #1 in AnySearchEntityPreprocessing.init(_:)()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #1 in AnySearchEntityPreprocessing.init(_:);
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_117_2();

  return closure #1 in AnySearchEntityPreprocessing.init(_:)(v3, v4, v5, v6);
}

uint64_t closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply()
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_192_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v1[1] = closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply;
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_117_2();

  return closure #1 in AnySearchEntityPreprocessing.init(_:)(v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  OUTLINED_FUNCTION_52();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;

  OUTLINED_FUNCTION_62();

  return v7(v2);
}

uint64_t partial apply for closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_53();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_246(v5);

  return closure #1 in AnswerSynthesisController.preprocessSearchEntity(for:with:answerSynthesisMetrics:)(v7, v8, v2, v3, v4);
}
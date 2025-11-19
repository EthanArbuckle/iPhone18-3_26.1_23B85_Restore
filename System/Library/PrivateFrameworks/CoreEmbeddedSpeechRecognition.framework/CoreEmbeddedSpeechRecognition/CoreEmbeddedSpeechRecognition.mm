uint64_t sub_225EEDEC8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_22609A448();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_225EEE090()
{
  v292 = v0;
  v269 = v0[58];
  v271 = v0[56];
  v0[37] = v0;
  v268 = (v269 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionBeginTime);
  swift_beginAccess();
  *v268 = 0;
  swift_endAccess();
  v270 = (v269 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_recognitionEndTime);
  swift_beginAccess();
  *v270 = 0;
  swift_endAccess();
  sub_225F27078();
  v272 = [v271 task];
  if (v272)
  {
    v263 = sub_226099A08();
    v264 = v1;
    MEMORY[0x277D82BD8](v272);
    v265 = v263;
    v266 = v264;
  }

  else
  {
    v265 = 0;
    v266 = 0;
  }

  if (!v266)
  {
    return sub_22609A3B8();
  }

  v261 = *(v267 + 448);
  v260 = sub_225F2B070(v265, v266);
  *(v267 + 641) = v260;

  *(v267 + 640) = v260;
  v262 = [v261 task];
  if (v262)
  {
    v256 = sub_226099A08();
    v257 = v3;
    MEMORY[0x277D82BD8](v262);
    v258 = v256;
    v259 = v257;
  }

  else
  {
    v258 = 0;
    v259 = 0;
  }

  if (!v259)
  {
    return sub_22609A3B8();
  }

  v254 = *(v267 + 544);
  v252 = *(v267 + 496);
  v255 = *(v267 + 488);
  v251 = *(v267 + 504);
  v4 = *(v267 + 568);
  v250 = sub_225F2B178(v258, v259);

  *(v267 + 648) = v250;
  v5 = sub_225F7E9BC();
  v253 = *(v251 + 16);
  *(v267 + 576) = v253;
  *(v267 + 584) = (v251 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v253(v254, v5, v252);
  sub_226098C18();
  sub_226098C08();
  if (v260)
  {
    v6 = *(v267 + 568);
    v248 = sub_226098C28();
    v249 = sub_22609A0B8();
    if (sub_22609A158())
    {
      sub_22601D504("CESA: Responsiveness Workflow Trigger on UUFR", &v291);
      v242 = v291;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v246 = sub_22609A4F8();
      MEMORY[0x277D82BE0](v248);
      v243 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v244 = sub_225EF5468(0);
      v245 = sub_225EF5468(0);
      *(v267 + 416) = v243;
      *(v267 + 424) = v244;
      *(v267 + 432) = v245;
      sub_225EF54BC(0, (v267 + 416));
      sub_225EF54BC(0, (v267 + 416));
      *(v267 + 440) = v246;
      v247 = swift_task_alloc();
      v247[2] = v267 + 416;
      v247[3] = v267 + 424;
      v247[4] = v267 + 432;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v241 = *(v267 + 488);

      sub_22601D650(v243, 2u, v248, v249, v241, v242, "");
      sub_225EF7AF4(v244);
      sub_225EF7AF4(v245);
      sub_22609A168();
      MEMORY[0x277D82BD8](v248);
    }

    MEMORY[0x277D82BD8](v248);
  }

  else if (v250)
  {
    v7 = *(v267 + 568);
    v239 = sub_226098C28();
    v240 = sub_22609A0B8();
    if (sub_22609A158())
    {
      sub_22601D504("CESA: Responsiveness Workflow Trigger on EagerCPL", &v290);
      v233 = v290;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
      v237 = sub_22609A4F8();
      MEMORY[0x277D82BE0](v239);
      v234 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v235 = sub_225EF5468(0);
      v236 = sub_225EF5468(0);
      *(v267 + 384) = v234;
      *(v267 + 392) = v235;
      *(v267 + 400) = v236;
      sub_225EF54BC(0, (v267 + 384));
      sub_225EF54BC(0, (v267 + 384));
      *(v267 + 408) = v237;
      v238 = swift_task_alloc();
      v238[2] = v267 + 384;
      v238[3] = v267 + 392;
      v238[4] = v267 + 400;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v232 = *(v267 + 488);

      sub_22601D650(v234, 2u, v239, v240, v232, v233, "");
      sub_225EF7AF4(v235);
      sub_225EF7AF4(v236);
      sub_22609A168();
      MEMORY[0x277D82BD8](v239);
    }

    MEMORY[0x277D82BD8](v239);
  }

  v230 = *(v267 + 448);
  v229 = (*(v267 + 464) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v8 = *v229;
  *v229 = 0;

  swift_endAccess();
  v231 = [v230 dictationUIInteractionIdentifier];
  if (v231)
  {
    v225 = sub_226099A08();
    v226 = v9;
    MEMORY[0x277D82BD8](v231);
    v227 = v225;
    v228 = v226;
  }

  else
  {
    v227 = 0;
    v228 = 0;
  }

  *(v267 + 216) = v227;
  *(v267 + 224) = v228;
  if (*(v267 + 224))
  {
    v273 = *(v267 + 216);
    v274 = *(v267 + 224);
  }

  else
  {
    sub_225F4C57C();
    v223 = sub_225F26174();
    v224 = [v223 UUIDString];
    v273 = sub_226099A08();
    v274 = v10;
    MEMORY[0x277D82BD8](v223);
    MEMORY[0x277D82BD8](v224);
    if (*(v267 + 224))
    {
      sub_225EFE6BC(v267 + 216);
    }
  }

  *(v267 + 592) = v273;
  *(v267 + 600) = v274;
  *(v267 + 232) = v273;
  *(v267 + 240) = v274;
  *(v267 + 328) = 0;
  if (*sub_225F7E704())
  {
    v11 = *(v267 + 536);
    v197 = *(v267 + 496);
    v199 = *(v267 + 448);
    v198 = AFOfflineDictationCapable();
    *(v267 + 672) = v198 & 1;
    v196 = AFDeviceHighestLanguageModelCapabilityIdentifier();
    *(v267 + 376) = v196;
    sub_225EF81A8();
    v200 = v196 >= v12;
    *(v267 + 680) = v196 >= v12;
    v13 = sub_225F7EB70();
    v253(v11, v13, v197);
    v201 = swift_allocObject();
    *(v201 + 16) = v198;
    MEMORY[0x277D82BE0](v199);
    v205 = swift_allocObject();
    *(v205 + 16) = v199;
    v207 = swift_allocObject();
    *(v207 + 16) = v200;
    oslog = sub_226098C48();
    v222 = sub_22609A088();
    v211 = swift_allocObject();
    *(v211 + 16) = 0;
    v212 = swift_allocObject();
    *(v212 + 16) = 4;
    v202 = swift_allocObject();
    *(v202 + 16) = sub_225EF3E24;
    *(v202 + 24) = v201;
    v203 = swift_allocObject();
    *(v203 + 16) = sub_225EF70FC;
    *(v203 + 24) = v202;
    v204 = swift_allocObject();
    *(v204 + 16) = sub_225EF7108;
    *(v204 + 24) = v203;
    v213 = swift_allocObject();
    *(v213 + 16) = sub_225EF7150;
    *(v213 + 24) = v204;
    v214 = swift_allocObject();
    *(v214 + 16) = 32;
    v215 = swift_allocObject();
    *(v215 + 16) = 8;
    v206 = swift_allocObject();
    *(v206 + 16) = sub_22601FAE4;
    *(v206 + 24) = v205;
    v216 = swift_allocObject();
    *(v216 + 16) = sub_225EF7B84;
    *(v216 + 24) = v206;
    v217 = swift_allocObject();
    *(v217 + 16) = 0;
    v218 = swift_allocObject();
    *(v218 + 16) = 4;
    v208 = swift_allocObject();
    *(v208 + 16) = sub_225EF3E24;
    *(v208 + 24) = v207;
    v209 = swift_allocObject();
    *(v209 + 16) = sub_225EF70FC;
    *(v209 + 24) = v208;
    v210 = swift_allocObject();
    *(v210 + 16) = sub_225EF7108;
    *(v210 + 24) = v209;
    v219 = swift_allocObject();
    *(v219 + 16) = sub_225EF7150;
    *(v219 + 24) = v210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v220 = v14;

    *v220 = sub_225EF7434;
    v220[1] = v211;

    v220[2] = sub_225EF7434;
    v220[3] = v212;

    v220[4] = sub_225EF715C;
    v220[5] = v213;

    v220[6] = sub_225EF7434;
    v220[7] = v214;

    v220[8] = sub_225EF7434;
    v220[9] = v215;

    v220[10] = sub_225EF7B90;
    v220[11] = v216;

    v220[12] = sub_225EF7434;
    v220[13] = v217;

    v220[14] = sub_225EF7434;
    v220[15] = v218;

    v220[16] = sub_225EF715C;
    v220[17] = v219;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v222))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v194 = sub_225EF5468(0);
      v195 = sub_225EF5468(1);
      v285 = buf;
      v286 = v194;
      v287 = v195;
      sub_225EF54BC(2, &v285);
      sub_225EF54BC(3, &v285);
      v288 = sub_225EF7434;
      v289 = v211;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF7434;
      v289 = v212;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF715C;
      v289 = v213;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF7434;
      v289 = v214;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF7434;
      v289 = v215;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF7B90;
      v289 = v216;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF7434;
      v289 = v217;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF7434;
      v289 = v218;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      v288 = sub_225EF715C;
      v289 = v219;
      sub_225EF73E8(&v288, &v285, &v286, &v287);
      _os_log_impl(&dword_225EEB000, oslog, v222, "dictationCapable=%{BOOL}d task=%s aneCapable=%{BOOL}d", buf, 0x18u);
      sub_225EF7AF4(v194);
      sub_225EF7AF4(v195);
      sub_22609A168();
    }

    else
    {
    }

    v187 = *(v267 + 536);
    v188 = *(v267 + 496);
    v190 = *(v267 + 448);
    v186 = *(v267 + 504);
    MEMORY[0x277D82BD8](oslog);
    v189 = *(v186 + 8);
    v189(v187, v188);
    v191 = objc_opt_self();
    v192 = [v190 task];
    if (v192)
    {
      sub_226099A08();
      v184 = v15;
      MEMORY[0x277D82BD8](v192);
      v185 = v184;
    }

    else
    {
      v185 = 0;
    }

    if (v185)
    {
      v182 = sub_2260999F8();

      v183 = v182;
    }

    else
    {
      v183 = 0;
    }

    v181 = [v191 isTaskDictationSpecific_];
    MEMORY[0x277D82BD8](v183);
    *(v267 + 688) = v181 & 1;
    v180 = (v198 & 1) != 0 && (v181 & 1) != 0 && v200;
    *(v267 + 696) = v180;
    if (v180)
    {
      MEMORY[0x277D82BE0](*(v267 + 448));
      v179 = (v181 & 1) != 0 && [*(v267 + 448) isSpeechAPIRequest] == 0;
      v178 = *(v267 + 448);
      MEMORY[0x277D82BD8](v178);
      MEMORY[0x277D82BE0](v178);
      if (v179)
      {
        v177 = [objc_opt_self() sharedManager];
        if (!v177)
        {
          return sub_22609A3B8();
        }

        v176 = [*(v267 + 448) language];
        if (v176)
        {
          sub_226099A08();
          v174 = v16;
          MEMORY[0x277D82BD8](v176);
          v175 = v174;
        }

        else
        {
          v175 = 0;
        }

        if (v175)
        {
          v172 = sub_2260999F8();

          v173 = v172;
        }

        else
        {
          v173 = 0;
        }

        v170 = [v177 isRequestSelectedForSamplingFromConfigForLanguage_];
        MEMORY[0x277D82BD8](v173);
        MEMORY[0x277D82BD8](v177);
        v171 = v170;
      }

      else
      {
        v171 = 0;
      }

      MEMORY[0x277D82BD8](*(v267 + 448));
      *(v267 + 704) = v171 & 1;
      type metadata accessor for CoreEmbeddedSpeechAnalyzer();
      if (sub_225F7E648())
      {
        v169 = v171;
      }

      else
      {
        v169 = 0;
      }

      if (v169)
      {
        v17 = *(v267 + 528);
        v159 = *(v267 + 496);
        v160 = *(v267 + 448);
        v18 = sub_225F7EB70();
        v253(v17, v18, v159);
        MEMORY[0x277D82BE0](v160);
        v161 = swift_allocObject();
        *(v161 + 16) = v160;
        log = sub_226098C48();
        v168 = sub_22609A078();
        v163 = swift_allocObject();
        *(v163 + 16) = 32;
        v164 = swift_allocObject();
        *(v164 + 16) = 8;
        v162 = swift_allocObject();
        *(v162 + 16) = sub_22601FADC;
        *(v162 + 24) = v161;
        v165 = swift_allocObject();
        *(v165 + 16) = sub_225EF7B84;
        *(v165 + 24) = v162;
        sub_22609A4F8();
        v166 = v19;

        *v166 = sub_225EF7434;
        v166[1] = v163;

        v166[2] = sub_225EF7434;
        v166[3] = v164;

        v166[4] = sub_225EF7B90;
        v166[5] = v165;
        sub_225EF5418();

        if (os_log_type_enabled(log, v168))
        {
          v156 = sub_22609A188();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v157 = sub_225EF5468(0);
          v158 = sub_225EF5468(1);
          v280 = v156;
          v281 = v157;
          v282 = v158;
          sub_225EF54BC(2, &v280);
          sub_225EF54BC(1, &v280);
          v283 = sub_225EF7434;
          v284 = v163;
          sub_225EF73E8(&v283, &v280, &v281, &v282);
          v283 = sub_225EF7434;
          v284 = v164;
          sub_225EF73E8(&v283, &v280, &v281, &v282);
          v283 = sub_225EF7B90;
          v284 = v165;
          sub_225EF73E8(&v283, &v280, &v281, &v282);
          _os_log_impl(&dword_225EEB000, log, v168, "Create DES record for Dictation with interactionId=%s", v156, 0xCu);
          sub_225EF7AF4(v157);
          sub_225EF7AF4(v158);
          sub_22609A168();
        }

        else
        {
        }

        v152 = *(v267 + 528);
        v153 = *(v267 + 496);
        v20 = *(v267 + 464);
        v155 = *(v267 + 456);
        v154 = *(v267 + 448);
        MEMORY[0x277D82BD8](log);
        v189(v152, v153);
        v21 = sub_225FFDC20(v154, v155);
        v22 = *(v267 + 328);
        *(v267 + 328) = v21;
        MEMORY[0x277D82BD8](v22);
      }
    }
  }

  *(v267 + 336) = 0;
  if ((*sub_225EF72E8() & 1) == 0)
  {
    goto LABEL_81;
  }

  if (v260)
  {
    v151 = AFDeviceSupportsSiriUOD();
    MEMORY[0x277D82BE0](*(v267 + 464));
    if (v151)
    {
      v23 = *(v267 + 464);
      v150 = sub_225FFE2AC();
      MEMORY[0x277D82BD8](*(v267 + 464));
      if ((v150 & 1) == 0)
      {
        type metadata accessor for CoreEmbeddedSpeechAnalyzer();
        if (sub_225F7E648())
        {
          v127 = *(v267 + 520);
          v128 = *(v267 + 496);
          v24 = *(v267 + 464);
          v129 = *(v267 + 456);
          v136 = *(v267 + 448);
          v25 = sub_225FFE31C(v136);
          v26 = *(v267 + 336);
          *(v267 + 336) = v25;

          v27 = sub_225F7E9BC();
          v253(v127, v27, v128);
          v133 = sub_226098A78();
          v132 = *(v133 - 8);
          v130 = *(v132 + 64);
          v134 = swift_task_alloc();
          (*(v132 + 16))(v134, v129, v133);
          v131 = (*(v132 + 80) + 16) & ~*(v132 + 80);
          v135 = swift_allocObject();
          (*(v132 + 32))(v135 + v131, v134, v133);

          v137 = swift_allocObject();
          *(v137 + 16) = sub_225F7CD90;
          *(v137 + 24) = v135;

          MEMORY[0x277D82BE0](v136);
          v139 = swift_allocObject();
          *(v139 + 16) = v136;
          v148 = sub_226098C48();
          v149 = sub_22609A088();
          v141 = swift_allocObject();
          *(v141 + 16) = 32;
          v142 = swift_allocObject();
          *(v142 + 16) = 8;
          v138 = swift_allocObject();
          *(v138 + 16) = sub_225F7CE04;
          *(v138 + 24) = v137;
          v143 = swift_allocObject();
          *(v143 + 16) = sub_225EF7B84;
          *(v143 + 24) = v138;
          v144 = swift_allocObject();
          *(v144 + 16) = 32;
          v145 = swift_allocObject();
          *(v145 + 16) = 8;
          v140 = swift_allocObject();
          *(v140 + 16) = sub_22601FADC;
          *(v140 + 24) = v139;
          v146 = swift_allocObject();
          *(v146 + 16) = sub_225EF7B84;
          *(v146 + 24) = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
          sub_22609A4F8();
          v147 = v28;

          *v147 = sub_225EF7434;
          v147[1] = v141;

          v147[2] = sub_225EF7434;
          v147[3] = v142;

          v147[4] = sub_225EF7B90;
          v147[5] = v143;

          v147[6] = sub_225EF7434;
          v147[7] = v144;

          v147[8] = sub_225EF7434;
          v147[9] = v145;

          v147[10] = sub_225EF7B90;
          v147[11] = v146;
          sub_225EF5418();

          if (os_log_type_enabled(v148, v149))
          {
            v124 = sub_22609A188();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
            v125 = sub_225EF5468(0);
            v126 = sub_225EF5468(2);
            v275 = v124;
            v276 = v125;
            v277 = v126;
            sub_225EF54BC(2, &v275);
            sub_225EF54BC(2, &v275);
            v278 = sub_225EF7434;
            v279 = v141;
            sub_225EF73E8(&v278, &v275, &v276, &v277);
            v278 = sub_225EF7434;
            v279 = v142;
            sub_225EF73E8(&v278, &v275, &v276, &v277);
            v278 = sub_225EF7B90;
            v279 = v143;
            sub_225EF73E8(&v278, &v275, &v276, &v277);
            v278 = sub_225EF7434;
            v279 = v144;
            sub_225EF73E8(&v278, &v275, &v276, &v277);
            v278 = sub_225EF7434;
            v279 = v145;
            sub_225EF73E8(&v278, &v275, &v276, &v277);
            v278 = sub_225EF7B90;
            v279 = v146;
            sub_225EF73E8(&v278, &v275, &v276, &v277);
            _os_log_impl(&dword_225EEB000, v148, v149, "Created edited record, asrId: %s, interactionId: %s", v124, 0x16u);
            sub_225EF7AF4(v125);
            sub_225EF7AF4(v126);
            sub_22609A168();
          }

          else
          {
          }

          v122 = *(v267 + 520);
          v123 = *(v267 + 496);
          v121 = *(v267 + 504);
          MEMORY[0x277D82BD8](v148);
          (*(v121 + 8))(v122, v123);
        }
      }

      goto LABEL_81;
    }
  }

  else
  {
    MEMORY[0x277D82BE0](*(v267 + 464));
  }

  MEMORY[0x277D82BD8](*(v267 + 464));
LABEL_81:
  *(v267 + 608) = 0;
  v120 = [objc_opt_self() sharedManager];
  if (!v120)
  {
    return sub_22609A3B8();
  }

  v119 = [*(v267 + 448) language];
  if (v119)
  {
    sub_226099A08();
    v117 = v29;
    MEMORY[0x277D82BD8](v119);
    v118 = v117;
  }

  else
  {
    v118 = 0;
  }

  if (v118)
  {
    v115 = sub_2260999F8();

    v116 = v115;
  }

  else
  {
    v116 = 0;
  }

  v113 = *(v267 + 448);
  v112 = [v120 isRequestSelectedForSamplingFromConfigForLanguage_];
  MEMORY[0x277D82BD8](v116);
  MEMORY[0x277D82BD8](v120);
  *(v267 + 656) = v112 & 1;
  v114 = [v113 messagesContext];
  if (v114)
  {
    sub_22601FA78();
    v110 = sub_226099C88();
    MEMORY[0x277D82BD8](v114);
    v111 = v110;
  }

  else
  {
    v111 = 0;
  }

  *(v267 + 344) = v111;
  if (*(v267 + 344))
  {
    sub_225EFE6E8((v267 + 344));
    v109 = [*(v267 + 448) messagesContext];
    if (v109)
    {
      sub_22601FA78();
      v106 = sub_226099C88();
      MEMORY[0x277D82BD8](v109);
      v107 = v106;
    }

    else
    {
      v107 = 0;
    }

    if (!v107)
    {
      return sub_22609A3B8();
    }

    *(v267 + 368) = v107;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7869E8, &qword_2260A09A8);
    sub_22601F9F0();
    v105 = sub_22609A008();

    v108 = v105 ^ 1;
  }

  else
  {
    sub_225EFE6E8((v267 + 344));
    v108 = 0;
  }

  v30 = *(v267 + 456);
  v101 = *(v267 + 448);
  *(v267 + 664) = v108 & 1;
  type metadata accessor for CESABiomeContextualReplayRecord();
  v102 = sub_226098A28();
  v103 = v31;
  v104 = [v101 requestIdentifier];
  if (v104)
  {
    v97 = sub_226099A08();
    v98 = v32;
    MEMORY[0x277D82BD8](v104);
    v99 = v97;
    v100 = v98;
  }

  else
  {
    v99 = 0;
    v100 = 0;
  }

  v96 = [*(v267 + 448) dictationUIInteractionIdentifier];
  if (v96)
  {
    v92 = sub_226099A08();
    v93 = v33;
    MEMORY[0x277D82BD8](v96);
    v94 = v92;
    v95 = v93;
  }

  else
  {
    v94 = 0;
    v95 = 0;
  }

  v91 = [*(v267 + 448) language];
  if (v91)
  {
    v87 = sub_226099A08();
    v88 = v34;
    MEMORY[0x277D82BD8](v91);
    v89 = v87;
    v90 = v88;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  if (!v90)
  {
    return sub_22609A3B8();
  }

  v86 = [*(v267 + 448) task];
  if (v86)
  {
    v82 = sub_226099A08();
    v83 = v35;
    MEMORY[0x277D82BD8](v86);
    v84 = v82;
    v85 = v83;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  if (!v85)
  {
    return sub_22609A3B8();
  }

  if ([*(v267 + 448) narrowband])
  {
    v81 = 8000;
  }

  else
  {
    v81 = 16000;
  }

  v78 = *(v267 + 464);
  v75 = sub_226030810(v102, v103, v99, v100, v94, v95, v89, v90, v84, v85, v81, v112, v108 & 1);
  *(v267 + 616) = v75;
  *(v267 + 352) = v75;
  type metadata accessor for CESAEvaluationRecord();
  sub_2260998E8();
  v73 = *(v267 + 328);
  MEMORY[0x277D82BE0](v73);
  v74 = *(v267 + 336);

  v77 = sub_225F31E18(v273, v274, v73, v74, v75);
  v76 = (v78 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v36 = *v76;
  *v76 = v77;

  swift_endAccess();
  v79 = (v78 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  v80 = *v79;
  *(v267 + 624) = *v79;

  swift_endAccess();
  if (v80)
  {
    *(v267 + 360) = v80;
    v37 = sub_225FFDA78();
    v72 = *v37;
    *(v267 + 632) = *v37;

    v38 = *(v267 + 296);

    return MEMORY[0x2822009F8](sub_225FBF408, v72, 0);
  }

  v70 = *(v267 + 448);
  v69 = (*(v267 + 464) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
  swift_beginAccess();
  v39 = *v69;
  *v69 = 0;

  swift_endAccess();
  v71 = [v70 applicationName];
  if (v71)
  {
    v65 = sub_226099A08();
    v66 = v40;
    MEMORY[0x277D82BD8](v71);
    v67 = v65;
    v68 = v66;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  sub_2260998E8();
  v41 = sub_225F7F250();
  v63 = *v41;
  v64 = v41[1];
  sub_2260998E8();
  sub_2260998E8();
  *(v267 + 16) = v67;
  *(v267 + 24) = v68;
  *(v267 + 32) = v63;
  *(v267 + 40) = v64;
  if (*(v267 + 24))
  {
    sub_225F4C5E0((v267 + 16), (v267 + 248));
    if (*(v267 + 40))
    {
      *(v267 + 264) = *(v267 + 248);
      *(v267 + 280) = *(v267 + 32);
      v61 = MEMORY[0x22AA72BD0](*(v267 + 264), *(v267 + 272), *(v267 + 280), *(v267 + 288));
      sub_225EFE6BC(v267 + 280);
      sub_225EFE6BC(v267 + 264);
      sub_225EFE6BC(v267 + 16);
      v62 = v61;
      goto LABEL_132;
    }

    sub_225EFE6BC(v267 + 248);
    goto LABEL_134;
  }

  if (*(v267 + 40))
  {
LABEL_134:
    sub_225F4C1C0(v267 + 16);
    v62 = 0;
    goto LABEL_132;
  }

  sub_225EFE6BC(v267 + 16);
  v62 = 1;
LABEL_132:

  if (v62 & 1) != 0 && (*(v267 + 641))
  {
    v58 = *(v267 + 464);
    v60 = sub_225FFE720(*(v267 + 448));
    v59 = (v58 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_messageAppBiomeRecord);
    swift_beginAccess();
    v42 = *v59;
    *v59 = v60;

    swift_endAccess();
  }

  v43 = *(v267 + 616);
  v46 = *(v267 + 600);
  v51 = *(v267 + 568);
  v50 = *(v267 + 552);
  v52 = *(v267 + 544);
  v53 = *(v267 + 536);
  v54 = *(v267 + 528);
  v55 = *(v267 + 520);
  v56 = *(v267 + 512);
  v57 = *(v267 + 488);
  v48 = *(v267 + 472);
  v49 = *(v267 + 560);
  v47 = *(v267 + 480);

  sub_225EF5A0C((v267 + 336));
  sub_225EFE834((v267 + 328));

  (*(v47 + 8))(v57, v48);
  (*(v49 + 8))(v51, v50);

  v44 = *(*(v267 + 296) + 8);
  v45 = *(v267 + 296);

  return v44();
}

uint64_t sub_225EF3394()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225EF3460()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3540()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3580()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3618()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3658()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF37D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF38E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3928()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF39C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3A00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3A40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3A80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3BA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF3BE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v25 = a6;
  v27 = a1;
  v21 = 0;
  v31 = a6;
  v22 = *(a6 - 8);
  v23 = v22;
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](0, a2, a3, a4);
  v24 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  v28 = sub_22609A398() >> 3;
  v29 = *v27;
  v30 = v29;
  if (v28 < 0)
  {
    result = sub_22609A448();
    __break(1u);
  }

  else
  {
    v20 = v29 + v28;
    v19 = &v19;
    v11 = MEMORY[0x28223BE20](v24, &v19, v10, v25);
    v17 = v30;
    v18 = v12;
    sub_225EEDEC8(v11, sub_225EF3DF4, v16, v13, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v14, MEMORY[0x277D84F78]);
    (*(v23 + 8))(v24, v25);
    result = v19;
    *v27 = v20;
  }

  return result;
}

uint64_t sub_225EF3DF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_225EF7348();
}

uint64_t sub_225EF3E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_225EF3E94()
{
  v11 = *v1;
  v2 = *(*v1 + 112);
  *(v11 + 16) = *v1;
  v12 = (v11 + 16);
  *(v11 + 120) = v0;

  if (v0)
  {
    v3 = *(v11 + 104);
    (*(v11 + 96))(*(v11 + 88), *(v11 + 64));
    v4 = *v12;

    return MEMORY[0x2822009F8](sub_22601D9DC, 0, 0);
  }

  else
  {
    v5 = *(v11 + 104);
    v9 = *(v11 + 88);
    v10 = *(v11 + 80);
    v6 = *(v11 + 64);
    (*(v11 + 96))();

    v7 = *(*v12 + 8);

    return v7();
  }
}

uint64_t sub_225EF4064()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_225EF41F0()
{
  v9 = *v1;
  v2 = *(*v1 + 240);
  v9[14] = *v1;
  v10 = v9 + 14;
  v9[31] = v0;

  if (v0)
  {
    v3 = v9[19];
    v6 = *v10;
    v5 = sub_225F3A8E0;
  }

  else
  {
    v8 = v9[19];
    (*(v9[28] + 8))(v9[29], v9[27]);
    v3 = v8;
    v4 = *v10;
    v5 = sub_225EF4394;
  }

  return MEMORY[0x2822009F8](v5, v3, 0);
}

uint64_t sub_225EF4394()
{
  v69 = v0;
  v0[14] = v0;
  v57 = v0[31];
  v1 = v0[21];
  v2 = v0[19];
  v0[12] = v0[20];
  v0[13] = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862E8, &qword_2260A0338);
  sub_226099888();
  swift_endAccess();
  v58 = v0[17];
  if (v58)
  {
    v3 = v56[25];
    v45 = v56[23];
    v47 = v56[21];
    v46 = v56[20];
    v44 = v56[24];
    v56[18] = v58;
    v4 = sub_225EF5354();
    (*(v44 + 16))(v3, v4, v45);
    sub_2260998E8();
    v48 = swift_allocObject();
    *(v48 + 16) = v46;
    *(v48 + 24) = v47;
    oslog = sub_226098C48();
    v55 = sub_22609A088();
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_225EF7450;
    *(v49 + 24) = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_225EF7B84;
    *(v52 + 24) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v53 = v5;

    *v53 = sub_225EF7434;
    v53[1] = v50;

    v53[2] = sub_225EF7434;
    v53[3] = v51;

    v53[4] = sub_225EF7B90;
    v53[5] = v52;
    sub_225EF5418();

    if (os_log_type_enabled(oslog, v55))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v30 = sub_225EF5468(0);
      v31 = sub_225EF5468(1);
      v64 = buf;
      v65 = v30;
      v66 = v31;
      sub_225EF54BC(2, &v64);
      sub_225EF54BC(1, &v64);
      v67 = sub_225EF7434;
      v68 = v50;
      sub_225EF73E8(&v67, &v64, &v65, &v66);
      if (v57)
      {
      }

      v67 = sub_225EF7434;
      v68 = v51;
      sub_225EF73E8(&v67, &v64, &v65, &v66);
      v67 = sub_225EF7B90;
      v68 = v52;
      sub_225EF73E8(&v67, &v64, &v65, &v66);
      _os_log_impl(&dword_225EEB000, oslog, v55, "Writing record with interactionId: %s", buf, 0xCu);
      sub_225EF7AF4(v30);
      sub_225EF7AF4(v31);
      sub_22609A168();
    }

    else
    {
    }

    v26 = v56[25];
    v27 = v56[23];
    v28 = v56[22];
    v25 = v56[24];
    MEMORY[0x277D82BD8](oslog);
    (*(v25 + 8))(v26, v27);
    v10 = sub_226099DA8();
    (*(*(v10 - 8) + 56))(v28, 1);

    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v58;
    sub_225F3B658(0, 0, v28, &unk_2260A0460, v11, MEMORY[0x277D84F78] + 8);
    sub_225EF7CF8(v28);
  }

  else
  {
    v6 = v56[26];
    v33 = v56[23];
    v35 = v56[21];
    v34 = v56[20];
    v32 = v56[24];
    v7 = sub_225EF5354();
    (*(v32 + 16))(v6, v7, v33);
    sub_2260998E8();
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v35;
    log = sub_226098C48();
    v43 = sub_22609A098();
    v38 = swift_allocObject();
    *(v38 + 16) = 32;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_225EF7450;
    *(v37 + 24) = v36;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_225EF7B84;
    *(v40 + 24) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v41 = v8;

    *v41 = sub_225EF7434;
    v41[1] = v38;

    v41[2] = sub_225EF7434;
    v41[3] = v39;

    v41[4] = sub_225EF7B90;
    v41[5] = v40;
    sub_225EF5418();

    if (os_log_type_enabled(log, v43))
    {
      v22 = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v23 = sub_225EF5468(0);
      v24 = sub_225EF5468(1);
      v59 = v22;
      v60 = v23;
      v61 = v24;
      sub_225EF54BC(2, &v59);
      sub_225EF54BC(1, &v59);
      v62 = sub_225EF7434;
      v63 = v38;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      if (v57)
      {
      }

      v62 = sub_225EF7434;
      v63 = v39;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      v62 = sub_225EF7B90;
      v63 = v40;
      sub_225EF73E8(&v62, &v59, &v60, &v61);
      _os_log_impl(&dword_225EEB000, log, v43, "Record for interactionId %s does not exist or was already removed!", v22, 0xCu);
      sub_225EF7AF4(v23);
      sub_225EF7AF4(v24);
      sub_22609A168();
    }

    else
    {
    }

    v20 = v56[26];
    v21 = v56[23];
    v19 = v56[24];
    MEMORY[0x277D82BD8](log);
    (*(v19 + 8))(v20, v21);
  }

  v15 = v56[29];
  v16 = v56[26];
  v17 = v56[25];
  v18 = v56[22];
  v12 = v56[19];

  v13 = *(v56[14] + 8);
  v14 = v56[14];

  return v13();
}

uint64_t sub_225EF50DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF5174()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF51B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF51F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF528C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF52CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF530C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_225EF5354()
{
  if (qword_280D76808 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76810);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_225EF5468(uint64_t a1)
{
  if (a1)
  {
    return sub_22609A188();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225EF54BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t CoreEmbeddedSpeechAnalyzer.addAudioPacket(_:packetRecordedTime:packetReadyUpstreamTime:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = &unk_2260A0BB0;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v18 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v28 = &v17 - v18;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v30 = *(v33 - 8);
  v31 = v33 - 8;
  v19 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v25, v21, v22, v23);
  v32 = &v17 - v19;
  v39 = v5;
  v40 = v6;
  v38 = v7;
  v37 = v8;
  v36 = v4;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v20);
  sub_225EF5A38(v25, v21);
  MEMORY[0x277D82BE0](v22);
  MEMORY[0x277D82BE0](v23);
  v9 = swift_allocObject();
  v10 = v21;
  v11 = v22;
  v12 = v23;
  v13 = v24;
  v14 = v9;
  v15 = v25;
  v14[2] = v20;
  v14[3] = v15;
  v14[4] = v10;
  v14[5] = v11;
  v14[6] = v12;
  v34 = v13;
  v35 = v14;
  sub_226099DD8();
  (*(v26 + 8))(v28, v29);
  return (*(v30 + 8))(v32, v33);
}

uint64_t sub_225EF582C()
{
  MEMORY[0x277D82BD8](v0[2]);
  sub_225EF5990(v0[3], v0[4]);
  MEMORY[0x277D82BD8](v0[5]);
  MEMORY[0x277D82BD8](v0[6]);
  return swift_deallocObject();
}

uint64_t sub_225EF58A0()
{
  v3 = 0;
  sub_225EF3E30(v0 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__operationEnqueuer, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  return swift_dynamicCast();
}

unint64_t sub_225EF5918()
{
  v2 = qword_280D76310;
  if (!qword_280D76310)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76310);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF5990(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t *sub_225EF5A0C(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_225EF5A38(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

uint64_t sub_225EF5AB4()
{
  v4 = *v0;
  v1 = *(*v0 + 96);
  *(v4 + 48) = *v0;

  v2 = *(v4 + 48);

  return MEMORY[0x2822009F8](sub_225EF5BCC, 0, 0);
}

uint64_t sub_225EF5BCC()
{
  v0[6] = v0;
  v13 = v0[2];
  v14 = v0[3];
  if (v13)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = v13;
    *(v1 + 24) = v14;
    v10 = &unk_2260A0FA0;
    v11 = v1;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12[13] = v11;
  if (v10)
  {
    v12[4] = v10;
    v12[5] = v11;

    v9 = (v10 + *v10);
    v2 = v10[1];
    v3 = swift_task_alloc();
    v4 = v9;
    v12[14] = v3;
    *v3 = v12[6];
    v3[1] = sub_225EF9FB4;
  }

  else
  {
    v8 = v12[11];
    v5 = v12[9];
    (*(v12[10] + 8))();

    v4 = *(v12[6] + 8);
    v6 = v12[6];
  }

  return v4();
}

uint64_t sub_225EF5E44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EF5E84()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_225F3E5DC;

  return sub_225EF5F64(v6);
}

uint64_t sub_225EF5F64(int *a1)
{
  v5 = v1;
  *(v1 + 16) = v1;
  v6 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return v6();
}

uint64_t sub_225EF6074(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EF6164(a1, v6, v7, v8, v9, v10);
}

uint64_t sub_225EF6164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a6;
  v6[29] = a5;
  v6[28] = a4;
  v6[27] = a3;
  v6[26] = a2;
  v6[21] = v6;
  v6[22] = 0;
  v6[17] = 0;
  v6[18] = 0;
  v6[23] = 0;
  v6[24] = 0;
  v6[19] = 0;
  v6[20] = 0;
  v6[22] = a2;
  v6[17] = a3;
  v6[18] = a4;
  v6[23] = a5;
  v6[24] = a6;
  v7 = v6[21];
  return MEMORY[0x2822009F8](sub_225EF61E4, 0, 0);
}

uint64_t sub_225EF61E4()
{
  v1 = v0[26];
  v0[21] = v0;
  v39 = (v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_speechAnalyzer);
  swift_beginAccess();
  v40 = *v39;

  swift_endAccess();
  v0[25] = v40;
  if (v0[25])
  {
    sub_225EF5A0C((v38 + 200));
    v2 = *(v38 + 208);
    v3 = sub_225EF6A9C(*(v38 + 216), *(v38 + 224));
    v36 = v3;
    v37 = v4;
    *(v38 + 248) = v3;
    *(v38 + 256) = v4;
    if ((v4 & 0xF000000000000000) != 0xF000000000000000)
    {
      v34 = *(v38 + 232);
      *(v38 + 152) = v3;
      *(v38 + 160) = v4;
      MEMORY[0x277D82BE0](v34);
      if (v34)
      {
        v30 = *(v38 + 232);
        v31 = [v30 unsignedLongLongValue];
        MEMORY[0x277D82BD8](v30);
        v32 = v31;
        v33 = 0;
      }

      else
      {
        v32 = 0;
        v33 = 1;
      }

      v29 = *(v38 + 240);
      MEMORY[0x277D82BE0](v29);
      if (v29)
      {
        v25 = *(v38 + 240);
        v26 = [v25 unsignedLongLongValue];
        MEMORY[0x277D82BD8](v25);
        v27 = v26;
        v28 = 0;
      }

      else
      {
        v27 = 0;
        v28 = 1;
      }

      v5 = swift_task_alloc();
      *(v38 + 264) = v5;
      *v5 = *(v38 + 168);
      v5[1] = sub_225EF9D04;
      v6 = *(v38 + 208);

      return sub_225EF6EC8(v36, v37, v32, v33 & 1, v27, v28 & 1);
    }
  }

  else
  {
    sub_225EF5A0C((v38 + 200));
    v35 = *(v38 + 232);
    sub_225EF5A38(*(v38 + 216), *(v38 + 224));
    MEMORY[0x277D82BE0](v35);
    if (v35)
    {
      v21 = *(v38 + 232);
      v22 = [v21 unsignedLongLongValue];
      MEMORY[0x277D82BD8](v21);
      v23 = v22;
      v24 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 1;
    }

    v20 = *(v38 + 240);
    MEMORY[0x277D82BE0](v20);
    if (v20)
    {
      v16 = *(v38 + 240);
      v17 = [v16 unsignedLongLongValue];
      MEMORY[0x277D82BD8](v16);
      v18 = v17;
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 1;
    }

    v14 = *(v38 + 224);
    v13 = *(v38 + 216);
    v8 = *(v38 + 208);
    *(v38 + 16) = v13;
    *(v38 + 24) = v14;
    *(v38 + 32) = v23;
    *(v38 + 40) = v24 & 1;
    *(v38 + 48) = v18;
    *(v38 + 56) = v19 & 1;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786A80, &qword_2260A0AB0);
    sub_226099CE8();
    swift_endAccess();
    v15 = MEMORY[0x22AA71AA0](v13, v14);
    if (v15 < 0)
    {
      return sub_22609A3B8();
    }

    v12 = (*(v38 + 208) + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_bufferedAudioDataLength);
    result = swift_beginAccess();
    if (__CFADD__(*v12, v15))
    {
      __break(1u);
      return result;
    }

    *v12 += v15;
    swift_endAccess();
  }

  v10 = *(*(v38 + 168) + 8);
  v11 = *(v38 + 168);

  return v10();
}

uint64_t sub_225EF6A9C(uint64_t a1, unint64_t a2)
{
  v30 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
  swift_beginAccess();
  v31 = *v30;
  swift_endAccess();
  if (v31 <= 0.0)
  {
    sub_225EF5A38(a1, a2);
    return a1;
  }

  else
  {
    v18 = objc_opt_self();
    sub_225EF5A38(a1, a2);
    v20 = sub_226098968();
    sub_225EF5990(a1, a2);
    v17 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
    swift_beginAccess();
    v19 = *v17;
    swift_endAccess();
    [v18 audioDurationInMs:v20 samplingRate:v19];
    v22 = v3;
    MEMORY[0x277D82BD8](v20);
    v21 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    v23 = *v21;
    swift_endAccess();
    v24 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    *v24 = v23 - v22;
    swift_endAccess();
    v25 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
    swift_beginAccess();
    v26 = *v25;
    swift_endAccess();
    if (v26 >= 0.0)
    {
      return 0;
    }

    else
    {
      v11 = objc_opt_self();
      v8 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_timeUntilRecognitionStartInMs);
      swift_beginAccess();
      __x = *v8;
      swift_endAccess();
      v12 = fabs(__x);
      v10 = (v29 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
      swift_beginAccess();
      v13 = *v10;
      swift_endAccess();
      v32 = [v11 audioLengthInBytes:v13 samplingRate:v12];
      v14 = objc_opt_self();
      sub_225EF5A38(a1, a2);
      v15 = sub_226098968();
      sub_225EF5990(a1, a2);
      v16 = [v14 audioData:v15 withBytesFromEnd:v32];
      MEMORY[0x277D82BD8](v15);
      if (!v16)
      {
        return 0;
      }

      v6 = sub_226098978();
      MEMORY[0x277D82BD8](v16);
      return v6;
    }
  }
}

uint64_t sub_225EF6EC8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 136) = v6;
  *(v7 + 66) = a6;
  *(v7 + 128) = a5;
  *(v7 + 65) = a4;
  *(v7 + 120) = a3;
  *(v7 + 112) = a2;
  *(v7 + 104) = a1;
  *(v7 + 88) = v7;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 96) = 0;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  *(v7 + 64) = a4 & 1;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6 & 1;
  *(v7 + 96) = v6;
  v8 = *(v7 + 88);
  return MEMORY[0x2822009F8](sub_225EF7DB4, 0, 0);
}

uint64_t sub_225EF6F6C(void *a1)
{
  v8 = [a1 task];
  if (v8)
  {
    v4 = sub_226099A08();
    v5 = v1;
    MEMORY[0x277D82BD8](v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  if (v7)
  {
    return v6;
  }

  sub_22609A3B8();
  __break(1u);
  return v3;
}

uint64_t sub_225EF7114@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_225EF715C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_225EF7370();
  v5 = MEMORY[0x277D849A8];

  return sub_225EF3BE0(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_225EF71D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_225EF9438();
  v5 = MEMORY[0x277D83B88];

  return sub_225EF3BE0(a1, a2, a3, v9, v10, v5, v4);
}

uint64_t sub_225EF7244(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_225EF5918();
  v5 = MEMORY[0x277D84CC0];

  return sub_225EF3BE0(a1, a2, a3, v9, v10, v5, v4);
}

char *sub_225EF72E8()
{
  if (qword_280D76D78 != -1)
  {
    swift_once();
  }

  return &byte_280D77721;
}

unint64_t sub_225EF7370()
{
  v2 = qword_280D76330;
  if (!qword_280D76330)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76330);
    return WitnessTable;
  }

  return v2;
}

_BYTE **sub_225EF743C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_225EF7450()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_225EF7B9C();
  return result;
}

void *sub_225EF745C(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  sub_225EF7598(v4, v5, a3);
  v8 = *a1;

  sub_22609A1B8();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t sub_225EF7598(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2260998E8();
  v14 = sub_225EF773C(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_225EF3E30(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_225EF3E30(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_225EF773C(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_22609A3B8();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_225F3016C(v22, v17, v16);
        sub_22609A1C8();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_225F302E8(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_22609A2C8();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_22609A3B8();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_225EF7AF4(uint64_t result)
{
  if (result)
  {
    sub_22609A178();
    return sub_22609A168();
  }

  return result;
}

void *sub_225EF7BD0(const void *a1, void *a2)
{
  v6 = sub_226099DA8();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7862B8, &qword_2260A0310);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_225EF7CF8(uint64_t a1)
{
  v3 = sub_226099DA8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225EF7DB4()
{
  v15 = *(v0 + 136);
  v1 = *(v0 + 66);
  v2 = *(v0 + 128);
  v3 = *(v0 + 65);
  v4 = *(v0 + 120);
  v5 = *(v0 + 112);
  v14 = v5;
  v6 = *(v0 + 104);
  v13 = v6;
  *(v0 + 88) = v0;
  sub_225EF8260(v6, v5, v4, v3 & 1, v2, v1 & 1);
  sub_225EF9914(v13, v14);
  v16 = OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord;
  v17 = (v15 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_evaluationRecord);
  swift_beginAccess();
  if (*v17)
  {
    v11 = *(v15 + v16);
    *(v12 + 144) = v11;

    swift_endAccess();
    v7 = *(v12 + 88);

    return MEMORY[0x2822009F8](sub_225EF9BD0, v11, 0);
  }

  else
  {
    swift_endAccess();
    v8 = *(*(v12 + 88) + 8);
    v9 = *(v12 + 88);

    return v8();
  }
}

uint64_t type metadata accessor for AVAudioCommonFormat()
{
  v4 = qword_280D764A8;
  if (!qword_280D764A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D764A8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_225EF7FF8()
{
  v2 = qword_280D764B8;
  if (!qword_280D764B8)
  {
    type metadata accessor for AVAudioCommonFormat();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D764B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF8078(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = a2;
  v12 = a5;
  v13 = a8;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v14 = *(a5 - 8);
  v15 = a5 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20]();
  v18 = &v11 - v16;
  result = v17(v9);
  v19 = v8;
  if (v8)
  {
    return (*(v14 + 32))(v13, v18, v12);
  }

  return result;
}

void sub_225EF8178(void *a1@<X8>)
{
  v2 = *v1;
  sub_225EF81A8();
  *a1 = v3;
}

unint64_t sub_225EF81C4()
{
  v2 = qword_280D766E8;
  if (!qword_280D766E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF8260(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  v136 = a6;
  v135 = a5;
  v134 = a4;
  v133 = a3;
  v132 = a2;
  v138 = a1;
  v137 = 0;
  v175 = 0;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v169 = 0;
  v167 = 0;
  v112 = 0;
  v156 = 0;
  v155 = 0;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v113 = a4;
  v114 = a6;
  v115 = sub_226098C58();
  v116 = *(v115 - 8);
  v117 = v116;
  v120 = *(v116 + 64);
  v9 = MEMORY[0x28223BE20](0, v115, v7, v8);
  v122 = (v120 + 15) & 0xFFFFFFFFFFFFFFF0;
  v118 = &v64 - v122;
  v12 = MEMORY[0x28223BE20](v9, &v64 - v122, v10, v11);
  v119 = &v64 - v122;
  v15 = MEMORY[0x28223BE20](v12, &v64 - v122, v13, v14);
  v121 = &v64 - v122;
  MEMORY[0x28223BE20](v15, &v64 - v122, v16, v17);
  v123 = &v64 - v122;
  v18 = sub_2260990A8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20, v21, v22);
  v124 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v126 = *(v125 - 8);
  v127 = v126;
  v128 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v125 - 8, v125, v24, v25);
  v129 = &v64 - v128;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A18, &qword_2260A0A08);
  v130 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26 - 8, v27, v28, v29);
  v131 = &v64 - v130;
  v139 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B70, &qword_2260A0C18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = MEMORY[0x28223BE20](v138, v132, v133, v137);
  v140 = &v64 - v139;
  v174 = v30;
  v175 = v31;
  v172 = v32;
  v173 = v33 & 1;
  v170 = v34;
  v171 = v35 & 1;
  v169 = v6;
  v141 = (v6 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioFormat);
  v143 = &v168;
  swift_beginAccess();
  v144 = *v141;
  v142 = v144;
  v36 = v144;
  swift_endAccess();
  if (!v144)
  {
    goto LABEL_34;
  }

  v111 = v142;
  v109 = v142;
  v167 = v142;
  v166[2] = [v142 commonFormat];
  v166[1] = 3;
  v110 = type metadata accessor for AVAudioCommonFormat();
  sub_225EF7FF8();
  v37 = sub_22609A508();
  if ((v37 & 1) == 0)
  {

LABEL_34:
    v61 = v118;
    v62 = sub_225F7E9BC();
    (*(v117 + 16))(v61, v62, v115);
    sub_225F7EBDC(sub_225FF58F8, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 1496);
    __break(1u);
    return v86;
  }

  if (MEMORY[0x22AA71AA0](v138, v132) < 1)
  {
    goto LABEL_27;
  }

  v38 = v112;
  v39 = [v109 streamDescription];
  v40 = *v39;
  v41 = v39[1];
  v162 = *(v39 + 4);
  v161 = v41;
  v160 = v40;
  v158 = v162;
  v157[1] = v41;
  v157[0] = v40;
  v107 = 0;
  v42 = type metadata accessor for AudioStreamBasicDescription();
  sub_225EF8078(v157, sub_225EF823C, v107, v42, MEMORY[0x277D84A98], MEMORY[0x277D84CC0], MEMORY[0x277D84AC0], v43);
  v108 = v38;
  if (!v38)
  {
    v105 = v159;
    v156 = v159;
    v106 = MEMORY[0x22AA71AA0](v138, v132);
    if (v106 < 0)
    {
      sub_22609A3B8();
      __break(1u);
    }

    if (v106 <= 0xFFFFFFFFLL)
    {
      v104 = v106;
      if (v105)
      {
LABEL_13:
        v103 = v104 / v105;
        v155 = v104 / v105;
        sub_225EF9338();
        v44 = v109;
        v102 = sub_225EF939C(v109);
        if (v102)
        {
          v101 = v102;
          v94 = v102;
          v154 = v102;
          v98 = [v102 int16ChannelData];
          v45 = v94;
          v95 = [v94 format];

          v96 = [v95 channelCount];
          v97 = v96;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B78, &qword_2260A0C20);
          v152 = sub_2260999E8();
          v153 = v46;
          v150 = v152;
          v151 = v46;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786B80, &qword_2260A0C28);
          sub_225EF9528();
          sub_226099FE8();
          v100 = v149;
          if (v149)
          {
            v93 = v100;
            v90 = v100;
            v148 = v100;
            [v94 frameCapacity];
            v91 = MEMORY[0x277D84958];
            v146 = sub_22609A1A8();
            v147 = v47;
            v92 = sub_2260989A8();
            v145 = v92;
            if (v92 < 0)
            {
              sub_22609A3B8();
              __break(1u);
            }

            if (v92 <= 0xFFFFFFFFLL)
            {
              v89 = v92;
              if (v105)
              {
LABEL_21:
                [v94 setFrameLength_];
                sub_225EF95B0(v131);
                if ((*(v127 + 48))(v131, 1, v125) == 0)
                {
                  (*(v127 + 16))(v129, v131, v125);
                  sub_225EF97AC(v131);
                  v48 = v94;
                  v87 = 1;
                  sub_226099088();
                  sub_226099DD8();
                  (*(v127 + 8))(v129, v125);
                  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
                  (*(*(v49 - 8) + 56))(v140, 0, v87);
                }

                else
                {
                  sub_225EF97AC(v131);
                  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
                  (*(*(v50 - 8) + 56))(v140, 1);
                }

                sub_225EF9860(v140);

                return v108;
              }
            }

            else
            {
              sub_22609A3B8();
              __break(1u);
            }

            sub_22609A3B8();
            __break(1u);
            goto LABEL_21;
          }

          v51 = v123;
          v52 = sub_225F7E9BC();
          (*(v117 + 16))(v51, v52, v115);
          sub_225F7EBDC(sub_225FF5928, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 1511);
          __break(1u);
        }

        v53 = v121;
        v54 = sub_225F7E9BC();
        (*(v117 + 16))(v53, v54, v115);
        sub_225F7EBDC(sub_225FCAE78, 0, "/Library/Caches/com.apple.xbs/Sources/CoreSpeech/CoreEmbeddedSpeechRecognition/CoreEmbeddedSpeechAnalyzer.swift", 111, 2, 1507);
        __break(1u);
LABEL_27:
        v55 = v119;
        v56 = sub_225F7E9BC();
        (*(v117 + 16))(v55, v56, v115);
        v84 = sub_226098C48();
        v81 = v84;
        v83 = sub_22609A088();
        v82 = v83;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v85 = sub_22609A4F8();
        if (os_log_type_enabled(v84, v83))
        {
          v57 = v112;
          v72 = sub_22609A188();
          v68 = v72;
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v70 = 0;
          v73 = sub_225EF5468(0);
          v71 = v73;
          v74 = sub_225EF5468(v70);
          v166[0] = v72;
          v165 = v73;
          v164 = v74;
          v75 = 0;
          v76 = v166;
          sub_225EF54BC(0, v166);
          sub_225EF54BC(v75, v76);
          v163 = v85;
          v77 = &v64;
          MEMORY[0x28223BE20](&v64, v58, v59, v60);
          v78 = &v64 - 6;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
          sub_225EFE598();
          sub_226099C28();
          v80 = v57;
          if (v57)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_225EEB000, v81, v82, "No audio data", v68, 2u);
            v66 = 0;
            sub_225EF7AF4(v71);
            sub_225EF7AF4(v74);
            sub_22609A168();

            v67 = v80;
          }
        }

        else
        {

          v67 = v112;
        }

        v65 = v67;

        (*(v117 + 8))(v119, v115);
        return v65;
      }
    }

    else
    {
      sub_22609A3B8();
      __break(1u);
    }

    sub_22609A3B8();
    __break(1u);
    goto LABEL_13;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t type metadata accessor for AudioStreamBasicDescription()
{
  v4 = qword_280D76410;
  if (!qword_280D76410)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D76410);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_225EF92C0()
{
  v2 = qword_280D76320;
  if (!qword_280D76320)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225EF9338()
{
  v2 = qword_280D764F0;
  if (!qword_280D764F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_280D764F0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_225EF93E4(uint64_t a1)
{
  v4 = [v1 initWithPCMFormat_frameCapacity_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

unint64_t sub_225EF9438()
{
  v2 = qword_280D766E0;
  if (!qword_280D766E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225EF94B0()
{
  v2 = qword_280D766F8;
  if (!qword_280D766F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D766F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_225EF9528()
{
  v2 = qword_280D76688;
  if (!qword_280D76688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D786B80, &qword_2260A0C28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EF95B0@<X0>(uint64_t a1@<X8>)
{
  v9 = 0;
  v6 = v1 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer__audioEnqueuer;
  swift_beginAccess();
  sub_225EF9700(v6, v7);
  swift_endAccess();
  if (v7[3])
  {
    sub_225EF9790(v7, v8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
    swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a1, 0, 1);
  }

  else
  {
    sub_225F186BC(v7);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
    return (*(*(v3 - 8) + 56))(a1, 1);
  }
}

uint64_t sub_225EF9700(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    *(a2 + 24) = v2;
    (**(v2 - 8))();
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return a2;
}

__n128 sub_225EF9790(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_225EF97AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786928, &qword_2260A0888);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225EF9860(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786B90, &qword_2260A0C30);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225EF9914(uint64_t a1, unint64_t a2)
{
  v8 = objc_opt_self();
  sub_225EF5A38(a1, a2);
  v10 = sub_226098968();
  sub_225EF5990(a1, a2);
  v7 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_samplingRate);
  swift_beginAccess();
  v9 = *v7;
  swift_endAccess();
  [v8 audioDurationInMs:v10 samplingRate:v9];
  v12 = v3;
  MEMORY[0x277D82BD8](v10);
  v11 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  v13 = *v11;
  swift_endAccess();
  v14 = (v2 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_audioDurationMs);
  swift_beginAccess();
  *v14 = v13 + v12;
  return swift_endAccess();
}

uint64_t sub_225EF9A9C(uint64_t a1, unint64_t a2)
{
  v9 = *(v2 + 128);
  MEMORY[0x277D82BE0](v9);
  if (v9)
  {
    sub_225EF5A38(a1, a2);
    v5 = sub_226098968();
    sub_225EF5990(a1, a2);
    [v9 addAudioPacket_];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v9);
  }

  v4 = *(v8 + 152);

  if (v4)
  {
    sub_225EF9C8C();
  }

  return result;
}

uint64_t sub_225EF9BD0()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[13];
  v0[11] = v0;
  sub_225EF9A9C(v3, v2);

  v4 = *(v0[11] + 8);
  v5 = v0[11];

  return v4();
}

uint64_t sub_225EF9C8C()
{
  swift_beginAccess();
  sub_226098998();
  return swift_endAccess();
}

uint64_t sub_225EF9D04()
{
  v4 = *v0;
  v1 = *(*v0 + 264);
  *(v4 + 168) = *v0;

  v2 = *(v4 + 168);

  return MEMORY[0x2822009F8](sub_225EF9E1C, 0, 0);
}

uint64_t sub_225EF9E1C()
{
  v1 = v0[32];
  v2 = v0[31];
  v0[21] = v0;
  sub_225EF5990(v2, v1);
  v3 = *(v0[21] + 8);
  v4 = v0[21];

  return v3();
}

uint64_t sub_225EF9EDC()
{
  v6 = *(v0 + 104);
  *(v0 + 48) = v0;

  v1 = *(MEMORY[0x277D85798] + 4);
  v2 = swift_task_alloc();
  v7[12] = v2;
  *v2 = v7[6];
  v2[1] = sub_225EF5AB4;
  v3 = v7[11];
  v4 = v7[9];

  return MEMORY[0x2822003E8](v7 + 2, 0, 0, v4);
}

uint64_t sub_225EF9FB4()
{
  v4 = *v0;
  v1 = *(*v0 + 112);
  *(v4 + 48) = *v0;

  v2 = *(v4 + 48);

  return MEMORY[0x2822009F8](sub_225EF9EDC, 0, 0);
}

uint64_t sub_225EFA0DC(const void *a1, char a2, char a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2 & 1;
  v10 = a3 & 1;
  v9[4] = a4 + 16;
  swift_beginAccess();
  v9[0] = swift_unknownObjectWeakLoadStrong();
  if (v9[0])
  {
    v5 = v9[0];
    MEMORY[0x277D82BE0](v9[0]);
    sub_225EFE834(v9);
    swift_endAccess();
    sub_225EFA1E8(a1, a2 & 1, a3 & 1);
    return MEMORY[0x277D82BD8](v5);
  }

  else
  {
    sub_225EFE834(v9);
    return swift_endAccess();
  }
}

uint64_t sub_225EFA1E8(const void *a1, unsigned int a2, unsigned int a3)
{
  v20 = a1;
  v19 = a2;
  v21 = a3;
  v23 = &unk_2260A0A88;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786808, &unk_2260A0840);
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v17 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v4, v5, v6);
  v27 = &v17 - v17;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786968, &qword_2260A08C0);
  v29 = *(v32 - 8);
  v30 = v32 - 8;
  v18 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v20, v19, v21, v7);
  v31 = &v17 - v18;
  v38 = v8;
  v37 = v9 & 1;
  v36 = v10 & 1;
  v35 = v3;
  sub_225EF58A0();
  MEMORY[0x277D82BE0](v22);
  v11 = swift_allocObject();
  v12 = v20;
  v24 = v11;
  *(v11 + 16) = v19;
  memcpy((v11 + 20), v12, 0x30uLL);
  v13 = v22;
  v14 = v23;
  v15 = v24;
  *(v24 + 68) = v21;
  *(v15 + 72) = v13;
  v33 = v14;
  v34 = v15;
  sub_226099DD8();
  (*(v25 + 8))(v27, v28);
  return (*(v29 + 8))(v31, v32);
}

uint64_t sub_225EFA484(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 68);
  v8 = *(v1 + 72);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFA568(a1, v6 & 1, v1 + 20, v7 & 1, v8);
}

uint64_t sub_225EFA568(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 96) = a5;
  *(v5 + 130) = a4 & 1;
  *(v5 + 88) = a3;
  *(v5 + 129) = a2 & 1;
  *(v5 + 64) = v5;
  *(v5 + 128) = 0;
  *(v5 + 72) = 0;
  *(v5 + 136) = 0;
  *(v5 + 80) = 0;
  v6 = sub_226098C58();
  *(v5 + 104) = v6;
  v10 = *(v6 - 8);
  *(v5 + 112) = v10;
  v7 = *(v10 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = a2 & 1;
  *(v5 + 72) = a3;
  *(v5 + 136) = a4 & 1;
  *(v5 + 80) = a5;
  v8 = *(v5 + 64);

  return MEMORY[0x2822009F8](sub_225EFA6EC, 0, 0);
}

uint64_t sub_225EFA6EC()
{
  v41 = v0;
  v1 = *(v0 + 129);
  *(v0 + 64) = v0;
  if (v1)
  {
    v2 = *(v35 + 120);
    v25 = *(v35 + 104);
    __src = *(v35 + 88);
    v24 = *(v35 + 112);
    v3 = sub_225F7E9BC();
    (*(v24 + 16))(v2, v3, v25);
    v27 = swift_allocObject();
    memcpy((v27 + 16), __src, 0x30uLL);
    v33 = sub_226098C48();
    v34 = sub_22609A078();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_226024740;
    *(v28 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_226021B74;
    *(v31 + 24) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    sub_22609A4F8();
    v32 = v4;

    *v32 = sub_225EF7434;
    v32[1] = v29;

    v32[2] = sub_225EF7434;
    v32[3] = v30;

    v32[4] = sub_226021BEC;
    v32[5] = v31;
    sub_225EF5418();

    if (os_log_type_enabled(v33, v34))
    {
      buf = sub_22609A188();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v22 = sub_225EF5468(0);
      v23 = sub_225EF5468(0);
      v36 = buf;
      v37 = v22;
      v38 = v23;
      sub_225EF54BC(0, &v36);
      sub_225EF54BC(1, &v36);
      v39 = sub_225EF7434;
      v40 = v29;
      sub_225EF73E8(&v39, &v36, &v37, &v38);
      v39 = sub_225EF7434;
      v40 = v30;
      sub_225EF73E8(&v39, &v36, &v37, &v38);
      v39 = sub_226021BEC;
      v40 = v31;
      sub_225EF73E8(&v39, &v36, &v37, &v38);
      _os_log_impl(&dword_225EEB000, v33, v34, "Volatile range changed, finalized through %f", buf, 0xCu);
      sub_225EF7AF4(v22);
      sub_225EF7AF4(v23);
      sub_22609A168();
    }

    else
    {
    }

    v19 = *(v35 + 120);
    v20 = *(v35 + 104);
    v18 = *(v35 + 112);
    MEMORY[0x277D82BD8](v33);
    (*(v18 + 8))(v19, v20);
  }

  if (*(v35 + 130))
  {
    v16 = *(v35 + 96);
    v5 = *(v35 + 88);
    sub_22609A068();
    sub_22609A0F8();
    v15 = v6;
    v14 = &v16[OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration];
    swift_beginAccess();
    *v14 = v15;
    swift_endAccess();
    v17 = [v16 delegate];
    if (v17)
    {
      v13 = *(v35 + 96);
      swift_getObjectType();
      MEMORY[0x277D82BE0](v13);
      v11 = (v13 + OBJC_IVAR___CoreEmbeddedSpeechAnalyzer_processedAudioDuration);
      swift_beginAccess();
      v12 = *v11;
      swift_endAccess();
      [v17 localSpeechRecognizer:v13 didProcessAudioDuration:v12];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  v7 = *(v35 + 120);

  v8 = *(*(v35 + 64) + 8);
  v9 = *(v35 + 64);

  return v8();
}

uint64_t sub_225EFAFE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFB028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFB0DC()
{
  v4 = *v0;
  v1 = *(*v0 + 24);
  *(v4 + 16) = *v0;

  v2 = *(*(v4 + 16) + 8);

  return v2();
}

uint64_t sub_225EFB208(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v8 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFB2FC(a1, v6);
}

uint64_t sub_225EFB2FC(uint64_t a1, int *a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v7 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_225EFB0DC;

  return v7(a1);
}

uint64_t sub_225EFB410(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_225F3E5DC;

  return sub_225EFB4E8(a1, v6, v7, v8);
}

uint64_t sub_225EFB4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[2] = v4;
  v4[3] = 0;
  v4[3] = a4;
  v5 = v4[2];
  return MEMORY[0x2822009F8](sub_225EFB520, a4, 0);
}

uint64_t sub_225EFB520()
{
  v1 = *(v0 + 32);
  *(v0 + 16) = v0;
  sub_225EFB5AC();
  v2 = *(*(v0 + 16) + 8);
  v3 = *(v0 + 16);

  return v2();
}

uint64_t sub_225EFB5AC()
{
  v124 = sub_225EF7450;
  v125 = sub_225EF7B84;
  v126 = sub_225F3E198;
  v127 = sub_225F3E1C8;
  v128 = sub_225EF7434;
  v129 = sub_225EF7434;
  v130 = sub_225EF7B90;
  v131 = sub_225EF7434;
  v132 = sub_225EF7434;
  v133 = sub_225F3E358;
  v134 = sub_225EF7450;
  v135 = sub_225EF7B84;
  v136 = sub_225EF7434;
  v137 = sub_225EF7434;
  v138 = sub_225EF7B90;
  v165 = 0;
  v163 = 0;
  v164 = 0;
  v162 = 0;
  v161 = 0;
  v139 = 0;
  v155 = 0;
  v140 = sub_226098C58();
  v141 = *(v140 - 8);
  v142 = v140 - 8;
  v143 = (*(v141 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v140, v1, v2, v3);
  v144 = v55 - v143;
  v145 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55 - v143, v5, v6, v7);
  v146 = v55 - v145;
  v165 = v0;
  v147 = v0[14];
  v148 = v0[15];
  sub_2260998E8();
  v163 = v147;
  v164 = v148;
  v149 = v0[16];
  MEMORY[0x277D82BE0](v149);
  if (v149)
  {
    v122 = v149;
    v8 = v146;
    v101 = v149;
    v155 = v149;
    v9 = sub_225F31B9C();
    (*(v141 + 16))(v8, v9, v140);
    sub_2260998E8();
    v106 = 32;
    v107 = 7;
    v10 = swift_allocObject();
    v11 = v148;
    v12 = v10;
    v13 = v101;
    v102 = v12;
    *(v12 + 16) = v147;
    *(v12 + 24) = v11;
    MEMORY[0x277D82BE0](v13);
    v108 = swift_allocObject();
    *(v108 + 16) = v101;
    v119 = sub_226098C48();
    v120 = sub_22609A078();
    v104 = 17;
    v110 = swift_allocObject();
    *(v110 + 16) = 32;
    v111 = swift_allocObject();
    v105 = 8;
    *(v111 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v102;
    v103 = v14;
    *(v14 + 16) = v124;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v103;
    v112 = v16;
    *(v16 + 16) = v125;
    *(v16 + 24) = v17;
    v113 = swift_allocObject();
    *(v113 + 16) = 64;
    v114 = swift_allocObject();
    *(v114 + 16) = v105;
    v18 = swift_allocObject();
    v19 = v108;
    v109 = v18;
    *(v18 + 16) = v126;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v109;
    v116 = v20;
    *(v20 + 16) = v127;
    *(v20 + 24) = v21;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v115 = sub_22609A4F8();
    v117 = v22;

    v23 = v110;
    v24 = v117;
    *v117 = v128;
    v24[1] = v23;

    v25 = v111;
    v26 = v117;
    v117[2] = v129;
    v26[3] = v25;

    v27 = v112;
    v28 = v117;
    v117[4] = v130;
    v28[5] = v27;

    v29 = v113;
    v30 = v117;
    v117[6] = v131;
    v30[7] = v29;

    v31 = v114;
    v32 = v117;
    v117[8] = v132;
    v32[9] = v31;

    v33 = v116;
    v34 = v117;
    v117[10] = v133;
    v34[11] = v33;
    sub_225EF5418();

    if (os_log_type_enabled(v119, v120))
    {
      v35 = v139;
      v93 = sub_22609A188();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v92 = 1;
      v94 = sub_225EF5468(1);
      v95 = sub_225EF5468(v92);
      v97 = &v154;
      v154 = v93;
      v98 = &v153;
      v153 = v94;
      v99 = &v152;
      v152 = v95;
      v96 = 2;
      sub_225EF54BC(2, &v154);
      sub_225EF54BC(v96, v97);
      v150 = v128;
      v151 = v110;
      sub_225EF73E8(&v150, v97, v98, v99);
      v100 = v35;
      if (v35)
      {

        __break(1u);
      }

      else
      {
        v150 = v129;
        v151 = v111;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        v89 = 0;
        v150 = v130;
        v151 = v112;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        v88 = 0;
        v150 = v131;
        v151 = v113;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        v87 = 0;
        v150 = v132;
        v151 = v114;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        v86 = 0;
        v150 = v133;
        v151 = v116;
        sub_225EF73E8(&v150, &v154, &v153, &v152);
        v85 = 0;
        _os_log_impl(&dword_225EEB000, v119, v120, "Writing DES record after 30 seconds delay: interactionId=%s,\nrecord=%@", v93, 0x16u);
        v84 = 1;
        sub_225EF7AF4(v94);
        sub_225EF7AF4(v95);
        sub_22609A168();

        v90 = v85;
      }
    }

    else
    {
      v36 = v139;

      v90 = v36;
    }

    v83 = v90;
    MEMORY[0x277D82BD8](v119);
    (*(v141 + 8))(v146, v140);
    type metadata accessor for CoreEmbeddedSpeechAnalyzer();
    v37 = sub_225F7E648();
    sub_225F341D0(v101, v37 & 1);
    MEMORY[0x277D82BD8](v101);
    v121 = v83;
  }

  else
  {
    v121 = v139;
  }

  v81 = v121;
  v82 = *(v123 + 136);

  if (v82)
  {
    v80 = v82;
    v38 = v144;
    v66 = v82;
    v161 = v82;
    v39 = sub_225EF5354();
    (*(v141 + 16))(v38, v39, v140);
    sub_2260998E8();
    v68 = 32;
    v69 = 7;
    v40 = swift_allocObject();
    v41 = v148;
    v70 = v40;
    *(v40 + 16) = v147;
    *(v40 + 24) = v41;
    v78 = sub_226098C48();
    v79 = sub_22609A088();
    v67 = 17;
    v72 = swift_allocObject();
    *(v72 + 16) = 32;
    v73 = swift_allocObject();
    *(v73 + 16) = 8;
    v42 = swift_allocObject();
    v43 = v70;
    v71 = v42;
    *(v42 + 16) = v134;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v71;
    v75 = v44;
    *(v44 + 16) = v135;
    *(v44 + 24) = v45;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v74 = sub_22609A4F8();
    v76 = v46;

    v47 = v72;
    v48 = v76;
    *v76 = v136;
    v48[1] = v47;

    v49 = v73;
    v50 = v76;
    v76[2] = v137;
    v50[3] = v49;

    v51 = v75;
    v52 = v76;
    v76[4] = v138;
    v52[5] = v51;
    sub_225EF5418();

    if (os_log_type_enabled(v78, v79))
    {
      v53 = v81;
      v59 = sub_22609A188();
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v60 = sub_225EF5468(0);
      v61 = sub_225EF5468(1);
      v62 = &v160;
      v160 = v59;
      v63 = &v159;
      v159 = v60;
      v64 = &v158;
      v158 = v61;
      sub_225EF54BC(2, &v160);
      sub_225EF54BC(1, v62);
      v156 = v136;
      v157 = v72;
      sub_225EF73E8(&v156, v62, v63, v64);
      v65 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v156 = v137;
        v157 = v73;
        sub_225EF73E8(&v156, &v160, &v159, &v158);
        v57 = 0;
        v156 = v138;
        v157 = v75;
        sub_225EF73E8(&v156, &v160, &v159, &v158);
        _os_log_impl(&dword_225EEB000, v78, v79, "Send edit event to Biome after 30 seconds delay, interactionId=%s", v59, 0xCu);
        sub_225EF7AF4(v60);
        sub_225EF7AF4(v61);
        sub_22609A168();
      }
    }

    else
    {
    }

    MEMORY[0x277D82BD8](v78);
    (*(v141 + 8))(v144, v140);
    sub_2260327EC();
  }

  v56 = *(v123 + 152);

  if (v56)
  {
    v55[2] = v56;
    v55[1] = v56;
    v162 = v56;
    sub_225EFCB94();
  }
}

uint64_t sub_225EFC844()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFC8DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFC91C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFC95C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFCA3C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFCA7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFCB14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFCB54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFCB94()
{
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v105 = 0;
  v98 = 0;
  v89 = 0;
  v90 = sub_226098C58();
  v91 = *(v90 - 8);
  v92 = v91;
  v1 = *(v91 + 64);
  MEMORY[0x28223BE20](v90 - 8, v90, v2, v3);
  v93 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v0;
  if ((sub_225EFD714() & 1) == 0)
  {
    return v89;
  }

  v43 = BiomeLibrary();
  swift_getObjectType();
  v42 = [v43 Siri];
  swift_getObjectType();
  v40 = [v42 ASR];
  swift_getObjectType();
  v41 = [v40 ContextualReplayRecord];
  v107 = v41;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v84 = 0;
  sub_226039384();
  v44 = v88[4];
  v45 = v88[5];
  sub_2260998E8();
  v46 = v88[2];
  v47 = v88[3];
  sub_2260998E8();
  v48 = v88[6];
  v49 = v88[7];
  sub_2260998E8();
  v58 = sub_226037D2C(v44, v45, v46, v47, v48, v49);
  v50 = v58;
  v106 = v58;
  v51 = sub_2260393E8();
  v59 = v88[10];
  v53 = v88[11];
  sub_2260998E8();
  v54 = v88[8];
  v55 = v88[9];
  sub_2260998E8();
  sub_225F27014();
  v56 = sub_225F27F74(v88[12]);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786BA0, &unk_2260A0640) - 8) + 64);
  v60 = &v20;
  v52 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v20, v6, v7, v8);
  v57 = &v20 - v52;
  sub_2260989E8();
  v9 = sub_226098A08();
  (*(*(v9 - 8) + 56))(v57, 0, 1);
  v10 = v58;
  v73 = sub_226037D94(v59, v53, v54, v55, v56, v57, v58);
  v61 = v73;
  v105 = v73;
  sub_22603944C();
  v11 = v73;
  v67 = 32;
  v62 = &v104;
  swift_beginAccess();
  v74 = v88[13];
  v75 = v88[14];
  sub_225EF5A38(v74, v75);
  swift_endAccess();
  v63 = &v103;
  swift_beginAccess();
  v76 = v88[17];
  v77 = v88[18];
  sub_2260998E8();
  swift_endAccess();
  v64 = &v102;
  swift_beginAccess();
  v78 = v88[19];
  v79 = v88[20];
  sub_2260998E8();
  swift_endAccess();
  v65 = &v101;
  swift_beginAccess();
  v80 = v88[15];
  v72 = v88[16];
  sub_225EF5A38(v80, v72);
  swift_endAccess();
  v66 = &v100;
  swift_beginAccess();
  v71 = v88[21];
  sub_2260998E8();
  swift_endAccess();
  v68 = &v99;
  swift_beginAccess();
  v70 = v88[22];
  v69 = v88[23];
  sub_2260998E8();
  swift_endAccess();
  v12 = sub_226037E04(v73, v74, v75, v76, v77, v78, v79, v80, v72, v71, v70, v69);
  v13 = v93;
  v81 = v12;
  v98 = v12;
  v14 = sub_225EFE52C();
  (*(v92 + 16))(v13, v14, v90);
  v86 = sub_226098C48();
  v82 = v86;
  v85 = sub_22609A088();
  v83 = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
  v87 = sub_22609A4F8();
  if (os_log_type_enabled(v86, v85))
  {
    v15 = v89;
    v31 = sub_22609A188();
    v27 = v31;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
    v29 = 0;
    v32 = sub_225EF5468(0);
    v30 = v32;
    v33 = sub_225EF5468(v29);
    v97 = v31;
    v96 = v32;
    v95 = v33;
    v34 = 0;
    v35 = &v97;
    sub_225EF54BC(0, &v97);
    sub_225EF54BC(v34, v35);
    v94 = v87;
    v36 = &v20;
    MEMORY[0x28223BE20](&v20, v16, v17, v18);
    v37 = &v20 - 6;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
    sub_225EFE598();
    sub_226099C28();
    v39 = v15;
    if (v15)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_225EEB000, v82, v83, "Writing CESABiomeContextualReplayRecord as BMASRContextualReplayRecord", v27, 2u);
      v25 = 0;
      sub_225EF7AF4(v30);
      sub_225EF7AF4(v33);
      sub_22609A168();

      v26 = v39;
    }
  }

  else
  {

    v26 = v89;
  }

  v23 = v26;

  (*(v92 + 8))(v93, v90);
  v20 = [v41 source];
  [v20 sendEvent_];

  type metadata accessor for CESASelfHelper();
  v21 = v88[2];
  v22 = v88[3];
  sub_2260998E8();
  sub_226040104(v21, v22);

  return v23;
}

uint64_t sub_225EFD714()
{
  v118 = 0;
  v117 = 0;
  v99 = 0;
  v100 = sub_226098C58();
  v101 = *(v100 - 8);
  v102 = v101;
  v103 = *(v101 + 64);
  MEMORY[0x28223BE20](v100 - 8, v100, v1, v2);
  v105 = (v103 + 15) & 0xFFFFFFFFFFFFFFF0;
  v104 = v32 - v105;
  MEMORY[0x28223BE20](v32 - v105, v3, v4, v5);
  v106 = v32 - v105;
  v118 = v0;
  v6 = AFIsInternalInstall();
  v117 = v6;
  if (v6)
  {
    v108 = _AFPreferencesSiriDataSharingOptInStatus();
    v107 = 1;
    v96 = type metadata accessor for AFSiriDataSharingOptInStatus();
    sub_225EFE4AC();
    v97 = sub_22609A508();
  }

  else
  {
    v97 = 0;
  }

  if (v97)
  {
    v92 = sub_225F27078();
    v93 = *(v98 + 80);
    v94 = *(v98 + 88);
    sub_2260998E8();
    v95 = sub_225F2B070(v93, v94);

    if (v95)
    {
      v90 = sub_226036A50();
      v91 = v99;
    }

    else
    {
      v87 = *(v98 + 80);
      v88 = *(v98 + 88);
      sub_2260998E8();
      v89 = sub_225F2B178(v87, v88);

      if (v89)
      {
        v90 = sub_226037644();
        v91 = v99;
      }

      else
      {
        v7 = v106;
        v8 = sub_225EFE52C();
        (*(v102 + 16))(v7, v8, v100);

        v86 = sub_226098C48();
        v69 = v86;
        v85 = sub_22609A088();
        v70 = v85;
        v71 = 17;
        v76 = 7;
        v79 = swift_allocObject();
        v72 = v79;
        v73 = 32;
        *(v79 + 16) = 32;
        v9 = swift_allocObject();
        v10 = v73;
        v80 = v9;
        v74 = v9;
        *(v9 + 16) = 8;
        v75 = v10;
        v11 = swift_allocObject();
        v12 = v98;
        v77 = v11;
        *(v11 + 16) = sub_22603937C;
        *(v11 + 24) = v12;
        v13 = swift_allocObject();
        v14 = v77;
        v83 = v13;
        v78 = v13;
        *(v13 + 16) = sub_225EF7B84;
        *(v13 + 24) = v14;
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
        v81 = sub_22609A4F8();
        v82 = v15;

        v16 = v79;
        v17 = v82;
        *v82 = sub_225EF7434;
        v17[1] = v16;

        v18 = v80;
        v19 = v82;
        v82[2] = sub_225EF7434;
        v19[3] = v18;

        v20 = v82;
        v21 = v83;
        v82[4] = sub_225EF7B90;
        v20[5] = v21;
        sub_225EF5418();

        if (os_log_type_enabled(v86, v85))
        {
          v22 = v99;
          v62 = sub_22609A188();
          v59 = v62;
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
          v63 = sub_225EF5468(0);
          v61 = v63;
          v65 = 1;
          v64 = sub_225EF5468(1);
          v113[0] = v62;
          v112 = v63;
          v111 = v64;
          v66 = v113;
          sub_225EF54BC(2, v113);
          sub_225EF54BC(v65, v66);
          v109 = sub_225EF7434;
          v110 = v72;
          sub_225EF73E8(&v109, v66, &v112, &v111);
          v67 = v22;
          v68 = v22;
          if (v22)
          {
            v57 = 0;

            __break(1u);
          }

          else
          {
            v109 = sub_225EF7434;
            v110 = v74;
            sub_225EF73E8(&v109, v113, &v112, &v111);
            v55 = 0;
            v56 = 0;
            v109 = sub_225EF7B90;
            v110 = v78;
            sub_225EF73E8(&v109, v113, &v112, &v111);
            v53 = 0;
            v54 = 0;
            _os_log_impl(&dword_225EEB000, v69, v70, "CESABiomeContextualReplayRecord does not meet criteria for submitting to Biome task %s, skipping this record", v59, 0xCu);
            sub_225EF7AF4(v61);
            sub_225EF7AF4(v64);
            sub_22609A168();

            v58 = v53;
          }
        }

        else
        {
          v23 = v99;

          v58 = v23;
        }

        v52 = v58;

        (*(v102 + 8))(v106, v100);
        v90 = 0;
        v91 = v52;
      }
    }
  }

  else
  {
    v24 = v104;
    v25 = sub_225EFE52C();
    (*(v102 + 16))(v24, v25, v100);
    v50 = sub_226098C48();
    v47 = v50;
    v49 = sub_22609A088();
    v48 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D786370, &unk_2260A0030);
    v51 = sub_22609A4F8();
    if (os_log_type_enabled(v50, v49))
    {
      v26 = v99;
      v38 = sub_22609A188();
      v34 = v38;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7867E0, &unk_2260A04B0);
      v36 = 0;
      v39 = sub_225EF5468(0);
      v37 = v39;
      v40 = sub_225EF5468(v36);
      v116 = v38;
      v115 = v39;
      v114 = v40;
      v41 = 0;
      v42 = &v116;
      sub_225EF54BC(0, &v116);
      sub_225EF54BC(v41, v42);
      v113[2] = v51;
      v43 = v32;
      MEMORY[0x28223BE20](v32, v27, v28, v29);
      v44 = &v32[-6];
      v32[-4] = v30;
      v32[-3] = &v115;
      v32[-2] = &v114;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7863E0, &qword_2260A0550);
      sub_225EFE598();
      sub_226099C28();
      v46 = v26;
      if (v26)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_225EEB000, v47, v48, "CESABiomeContextualReplayRecord does not meet criteria for submitting to Biome, skipping this record", v34, 2u);
        v32[1] = 0;
        sub_225EF7AF4(v37);
        sub_225EF7AF4(v40);
        sub_22609A168();

        v33 = v46;
      }
    }

    else
    {

      v33 = v99;
    }

    v32[0] = v33;

    (*(v102 + 8))(v104, v100);
    v90 = 0;
    v91 = v32[0];
  }

  return v90 & 1;
}

uint64_t sub_225EFE394()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFE3D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t type metadata accessor for AFSiriDataSharingOptInStatus()
{
  v4 = qword_280D763F8;
  if (!qword_280D763F8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_280D763F8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_225EFE4AC()
{
  v2 = qword_280D76400;
  if (!qword_280D76400)
  {
    type metadata accessor for AFSiriDataSharingOptInStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D76400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EFE52C()
{
  if (qword_280D76830 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D76838);
}

unint64_t sub_225EFE598()
{
  v2 = qword_280D765A0;
  if (!qword_280D765A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7863E0, &qword_2260A0550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_280D765A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225EFE620()
{
  sub_225EFE6BC((v0 + 14));
  sub_225EFE834(v0 + 16);
  sub_225EF5A0C(v0 + 17);
  sub_225EFE6E8(v0 + 18);
  sub_225EF5A0C(v0 + 19);
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_225EFE6BC(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t *sub_225EFE6E8(uint64_t *a1)
{
  v1 = *a1;

  return a1;
}

uint64_t sub_225EFE714()
{
  sub_225EFE6BC(v0 + 16);
  sub_225EFE6BC(v0 + 32);
  sub_225EFE6BC(v0 + 48);
  sub_225EFE6BC(v0 + 64);
  sub_225EFE6BC(v0 + 80);
  sub_225EFE800(v0 + 104);
  sub_225EFE800(v0 + 120);
  sub_225EFE6BC(v0 + 136);
  sub_225EFE6BC(v0 + 152);
  sub_225EFE6E8((v0 + 168));
  sub_225EFE6BC(v0 + 176);
  return v2;
}

uint64_t CoreEmbeddedSpeechAnalyzer.delegate.getter()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_225EFE8D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_225EFE9B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFE9F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEA30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEA70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEAB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785FF0, &qword_2260A0080);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_225EFEAFC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D785FF8, &qword_2260A0088);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_225EFEB48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEBE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEC20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEC8C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFECCC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225EFED0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEDA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEDE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEE7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEEBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFEEFC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225EFEF3C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225EFEF7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF014()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF054()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF0EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF12C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF1C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF204()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF2F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF334()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF3CC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF40C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF4FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF53C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF5D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF614()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF654(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_226098FA8();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 20), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_225EFF7B4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v9 = sub_226098FA8();
  if (a3 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 56))(a1, a2, a2, v9);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786018, &qword_2260A00C0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + *(a4 + 20), a2, a2, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_225EFF998()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFF9D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFA18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFAB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFAF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFB30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFBC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFC08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFC48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFD28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFD68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFE00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFE40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFE80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFF60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225EFFFA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00038()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00078()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F000B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F001D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F002B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F002F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F003B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00488()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F005F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00678()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  MEMORY[0x277D82BD8](v0[5]);
  return swift_deallocObject();
}

uint64_t sub_225F006D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_225F00728()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F007C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00800()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00840()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F008D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00958()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  MEMORY[0x277D82BD8](v0[5]);
  return swift_deallocObject();
}

uint64_t sub_225F009B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00AC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00BA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00BE0()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_225F00C28()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_225F00C70()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_225F00CB8()
{
  v3 = *(v0 + 16);
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_225F00D98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00DD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00E18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00EF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00F38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F00FC0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F01000()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01098()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F010D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01170()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F011B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F012D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01310()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F013A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F013E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01428()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01468()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F014A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F014E8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F01528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01648()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F016E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F017B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F017F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01A50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01B14()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01B54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01C18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01C58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01D30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01D70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01DB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01E48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01E88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01F20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F01F60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02024()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02064()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F020FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0213C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0221C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0225C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0229C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F022DC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02374()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F023B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02478()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F024B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0257C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F025BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02680()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F026C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02700()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F0276C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F027AC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F027F4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0283C()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F02908()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F029A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F029E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02A20()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F02AEC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02B84()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02BC4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02C04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02C9C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02CDC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02D1C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F02D5C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F02D9C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F02DDC()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F02E1C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F02E5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F02FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0300C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F030A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F030E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0317C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F031BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03254()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03294()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F032D4()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F03314()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F03354()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F03394()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F033D4()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_225F03414()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F034AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F034EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03584()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F035C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0365C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0369C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03734()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0380C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0384C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03A28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03A68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03AA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03AE8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F03B28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03BC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03C00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03C98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03CD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03D70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03DB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03E48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03E88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03F20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03F60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F03FA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04038()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04078()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F040B8()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F04184()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0421C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0425C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0429C()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786838, &qword_2260A0858);
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = v4 + *(v3 + 64);
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v5);
  return swift_deallocObject();
}

uint64_t sub_225F04414()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04454()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04534()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04574()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0460C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0464C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F046E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04724()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04764()
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v5 = ((v6 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  MEMORY[0x277D82BD8](*(v0 + 2));
  v1 = *(v0 + 4);

  MEMORY[0x277D82BD8](*(v0 + 5));
  v7 = sub_226098948();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v0[v6], 1))
  {
    (*(v8 + 8))(v3 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_225F048DC()
{
  v25 = sub_226099808();
  v23 = *(v25 - 8);
  v24 = (*(v23 + 80) + 56) & ~*(v23 + 80);
  v10 = v24 + *(v23 + 64);
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786978, &qword_2260A08D0) - 8);
  v26 = (v10 + *(v11 + 80)) & ~*(v11 + 80);
  v12 = (v26 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 16) & 0xFFFFFFFFFFFFFFF8;
  v14 = sub_226098DD8();
  v15 = *(v14 - 8);
  v16 = (v13 + 16 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = v16 + *(v15 + 64);
  v18 = sub_226099DA8();
  v19 = *(v18 - 8);
  v20 = (v17 + *(v19 + 80)) & ~*(v19 + 80);
  v21 = (v20 + *(v19 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 4));
  v2 = *(v0 + 6);

  (*(v23 + 8))(&v0[v24], v25);
  v27 = sub_226098948();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(&v0[v26], 1))
  {
    (*(v28 + 8))(v9 + v26, v27);
  }

  v3 = *(v9 + v12);

  v4 = *(v9 + v13 + 8);

  (*(v15 + 8))(v9 + v16, v14);
  (*(v19 + 8))(v9 + v20, v18);
  v5 = *(v9 + v21 + 8);

  v6 = *(v9 + v22 + 8);

  v7 = *(v9 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_225F04D40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_225F04DD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04E70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04F48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04F88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F04FC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05060()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F050A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F051C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F052A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F052E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F053B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F054D0()
{
  MEMORY[0x277D82BD8](v0[2]);
  MEMORY[0x277D82BD8](v0[3]);
  v1 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_225F05530()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F05570()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05648()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05688()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F058B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F058F8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F05990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F059D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05AA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05AE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05B28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05C08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05C48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05CE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05D20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F05E78()
{
  v3 = *(sub_226098948() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F05F44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0601C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0605C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F060F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06134()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06174()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06250()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06290()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F062D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D786A40, &unk_2260A0A48);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_225F063C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0645C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0649C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06560()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F065A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F065E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06660()
{
  v6 = sub_226098A78();
  v4 = *(v6 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  (*(v4 + 8))(v0 + v5, v6);
  MEMORY[0x277D82BD8](*(v0 + v7));
  return swift_deallocObject();
}

uint64_t sub_225F0678C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_225F06874()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F068B4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0694C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0698C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06A24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06A64()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06AA4()
{
  v5 = v0[4];
  v6 = *(sub_22609A198() - 8);
  v7 = (*(v6 + 80) + 136) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 6);
  }

  MEMORY[0x277D82BD8](v4[11]);
  if (v4[15])
  {
    __swift_destroy_boxed_opaque_existential_0(v4 + 12);
  }

  v3 = *(v5 - 8);
  if (!(*(v3 + 48))())
  {
    (*(v3 + 8))(v4 + v7, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_225F06CD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06D18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06DB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06DF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06E88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06EC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F06FF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F070C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F071A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F071E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07220()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_225F07320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F073F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07438()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F074D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07510()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07550()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  MEMORY[0x277D82BD8](v0[9]);
  MEMORY[0x277D82BD8](v0[10]);
  MEMORY[0x277D82BD8](v0[11]);
  MEMORY[0x277D82BD8](v0[12]);
  MEMORY[0x277D82BD8](v0[13]);
  return swift_deallocObject();
}

uint64_t sub_225F076A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F076E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07778()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F077B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07850()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F079B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F079F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07A90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07AD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07B68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07BA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07CD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07D10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07DA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07DE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07E80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07EC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F07F48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F07F88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F08068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F080A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08218()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F083C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F084A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F084E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08520()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  v2 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_225F08578()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08610()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08650()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08690()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08728()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0882C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0886C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F088AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F088EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08984()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F089C4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08A04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08A44()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08A84()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F08B50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08B90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08C28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08C68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08D00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08D40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08D80()
{
  v5 = sub_226098A78();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v4 + *(v3 + 64);
  v1 = *(v0 + 24);

  MEMORY[0x277D82BD8](*(v0 + 32));
  (*(v3 + 8))(v0 + v4, v5);
  return swift_deallocObject();
}

uint64_t sub_225F08F18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08F58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F08FF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09030()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F090C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09108()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09148()
{
  v9 = type metadata accessor for CombinedTranscriberOutput();
  v1 = *(*(v9 - 1) + 80);
  v6 = (v1 + 24) & ~v1;
  v5 = v6 + *(*(v9 - 1) + 64);
  MEMORY[0x277D82BD8](*(v0 + 16));
  v7 = sub_226098FA8();
  v8 = *(*(v7 - 8) + 8);
  v8();
  v10 = v9[5];
  v11 = sub_226099458();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!(v13)(v0 + v6 + v10, 1))
  {
    (*(v12 + 8))(v4 + v6 + v10, v11);
  }

  (v8)(v4 + v6 + v9[6], v7);
  v3 = v4 + v6 + v9[7];
  if (!v13())
  {
    (*(v12 + 8))(v3, v11);
  }

  return swift_deallocObject();
}

uint64_t sub_225F09440()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09480()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09518()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09558()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F095F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09630()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09670()
{
  MEMORY[0x277D82BD8](v0[2]);
  v1 = v0[3];

  v2 = v0[4];

  return swift_deallocObject();
}

uint64_t sub_225F096C8()
{
  v4 = sub_226099328();
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = v3 + *(v2 + 64);
  MEMORY[0x277D82BD8](*(v0 + 16));
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_225F09858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09A08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09A88()
{
  MEMORY[0x277D82BD8](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_225F09BA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09BE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09C80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09CC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09D58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09D98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09E70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F09FD0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A010()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A0A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A0E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A1C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A200()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F0A240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A320()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A3F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A438()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A4D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A510()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A550()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F0A5D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A6B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A750()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A870()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A8B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A948()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0A988()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AA20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AA60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AB40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AB80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AC18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AC58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0ACF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AD30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0ADB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F0ADF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AE38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F0AE78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AEB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_225F0AEF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0AFD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B0B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B0F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B188()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B1C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B208()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_225F0B2F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B3C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B4A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B4E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B5C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B6E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B7B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B7F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B890()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B8D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B9B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0B9F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BA88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BAC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BB60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BBA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BC80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BCC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BD58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BD98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BE30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BE70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0BF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C220()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C260()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C2F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C338()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C3D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C410()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C4F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C530()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C5C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C608()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C6A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C6E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C720()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v0[4]);
  v2 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_225F0C818()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C8F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0C9C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CA08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CAE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CB28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CBC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CC00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CC98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CCD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CDB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CDF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CE90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CF68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0CFA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D080()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D0C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D1E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D220()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D2B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D2F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D390()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D3D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D4B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D4F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D588()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D5C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D660()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D6A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D7C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0D970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DA48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DA88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DAC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DBA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DBE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DC80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DCC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DD58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DD98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DE78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DEB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DF50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0DF90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E1C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E2A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E2E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E3B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E4D0()
{
  v6 = *(v0 + 32);
  v3 = *(v6 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v6);
  MEMORY[0x277D82BD8](*(v0 + v5));
  return swift_deallocObject();
}

uint64_t sub_225F0E5E8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  MEMORY[0x277D82BD8](v0[9]);
  return swift_deallocObject();
}

uint64_t sub_225F0E640()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 4);
  MEMORY[0x277D82BD8](v0[9]);
  return swift_deallocObject();
}

uint64_t sub_225F0E780()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E7C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E858()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E930()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E970()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0E9B0()
{
  if (*(v0 + 16))
  {
    v1 = *(v3 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_225F0EAA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EAE4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EB7C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EBBC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EC54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EC94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0ED58()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0ED98()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EE30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EE70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EF34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EF74()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0EFB4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F0F04C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F08C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F0CC()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F0F164()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F1A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F268()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F2A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F2E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F328()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F600()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F720()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F7F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F838()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F8D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F910()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0F9F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FA30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FAC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FB08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FBA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FBE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FD08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FD48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FDE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FE20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F0FE60()
{
  v5 = sub_2260997E8();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v2 = v4 + *(v3 + 64);
  v8 = sub_226098A78();
  v6 = *(v8 - 8);
  v7 = (v2 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = ((v7 + *(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  MEMORY[0x277D82BD8](*(v0 + 16));
  (*(v3 + 8))(v0 + v4, v5);
  (*(v6 + 8))(v0 + v7, v8);
  return swift_deallocObject();
}

uint64_t sub_225F1001C()
{
  v6 = sub_2260997E8();
  v4 = *(v6 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v7 = (v5 + *(v4 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  (*(v4 + 8))(v0 + v5, v6);
  v2 = *(v0 + v7 + 8);

  return swift_deallocObject();
}

uint64_t sub_225F1014C()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F101E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10224()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10264()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F10330()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10370()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10408()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10448()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F104E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10520()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F105B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F105F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F106D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10718()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F107B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F107F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F108C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F109A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F109E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10A80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10AC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10BE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10C28()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10CC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10D00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10DE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10E20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10F00()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10F40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F10FD8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F110F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11138()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F111C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11200()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11358()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11398()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11470()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11548()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F115E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11620()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F116B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F116F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11790()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F117D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11810()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11898()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F118D8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11918()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11958()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F119F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11A30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11AC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11B08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11BA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11BE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11C78()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11CB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11D50()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11E70()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11EB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11F48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F11F88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12020()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12060()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F120E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F121C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12378()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F123B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12450()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12490()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12528()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12568()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F125A8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12640()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12680()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12760()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F127A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12878()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F128B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F129D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12A68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12AA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12B40()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12B80()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12C60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12CA0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12CE0()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F12D20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12D60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12DF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12E38()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12ED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12F10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12FA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F12FE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13028()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13068()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13100()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13140()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13180()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F131C0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13258()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13298()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F132D8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F13318()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F133B0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F133F0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13430()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F134C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13548()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_225F135A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_225F135F0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_225F13638()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13678()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13758()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13798()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F1385C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F1389C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F138DC()
{
  v3 = *(sub_226098A78() - 8);
  v1 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v4 = v1 + *(v3 + 64);
  (*(v3 + 8))(v0 + v1);
  return swift_deallocObject();
}

uint64_t sub_225F13A48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13A88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13B20()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13B60()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13BA0()
{
  v5 = sub_226098A78();
  v3 = *(v5 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = (v4 + *(v3 + 64) + 8) & 0xFFFFFFFFFFFFFFF8;
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v5);
  MEMORY[0x277D82BD8](*(v0 + v6));
  return swift_deallocObject();
}

uint64_t sub_225F13D54()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_225F13DD4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_225F13E40()
{
  v6 = sub_226099698();
  v4 = *(v6 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = v5 + *(v4 + 64);
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  (*(v4 + 8))(v0 + v5, v6);
  return swift_deallocObject();
}

unint64_t sub_225F14030()
{
  v2 = qword_27D785DF0;
  if (!qword_27D785DF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_27D785DF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_225F14140()
{
  v1 = sub_226098C58();
  __swift_allocate_value_buffer(v1, qword_280D767E8);
  __swift_project_value_buffer(v1, qword_280D767E8);
  return sub_225F1418C();
}

uint64_t sub_225F1418C()
{
  AFLogInitIfNeeded();
  v1 = MEMORY[0x277CEF0E8];
  swift_beginAccess();
  v2 = *v1;
  MEMORY[0x277D82BE0](*v1);
  swift_endAccess();
  if (!v2)
  {
    sub_22609A3B8();
    __break(1u);
  }

  return sub_226098C68();
}

uint64_t sub_225F14288()
{
  if (qword_280D767E0 != -1)
  {
    swift_once();
  }

  v0 = sub_226098C58();
  return __swift_project_value_buffer(v0, qword_280D767E8);
}
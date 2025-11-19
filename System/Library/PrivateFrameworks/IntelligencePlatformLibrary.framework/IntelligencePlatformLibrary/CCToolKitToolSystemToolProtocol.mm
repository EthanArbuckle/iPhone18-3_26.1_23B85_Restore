@interface CCToolKitToolSystemToolProtocol
- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemToolProtocol)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (CCToolKitToolSystemToolProtocol)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5;
- (CCToolKitToolSystemToolProtocolAppIntent)appIntent;
- (CCToolKitToolSystemToolProtocolAssistantSchema)assistantSchema;
- (CCToolKitToolSystemToolProtocolConditionallyEnabled)conditionallyEnabled;
- (CCToolKitToolSystemToolProtocolEntityUpdating)entityUpdating;
- (CCToolKitToolSystemToolProtocolIntentSideEffect)intentSideEffect;
- (CCToolKitToolSystemToolProtocolPlayVideo)playVideo;
- (CCToolKitToolSystemToolProtocolPropertyUpdater)propertyUpdater;
- (CCToolKitToolSystemToolProtocolShowInAppStringSearchResults)showInAppStringSearchResults;
- (CCToolKitToolSystemToolProtocolSiriKitIntent)siriKitIntent;
- (CCToolKitToolSystemToolProtocolSynthesizedToolProtocol)synthesizedTool;
- (id)jsonDictionary;
- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4;
@end

@implementation CCToolKitToolSystemToolProtocol

- (CCToolKitToolSystemToolProtocol)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  v226[1] = 0;
  IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
  v8 = 0;
  if (IsInstanceOfExpectedClass)
  {
    v9 = [v6 objectForKeyedSubscript:@"unk"];
    v10 = [v6 objectForKeyedSubscript:@"undoable"];
    v11 = [v6 objectForKeyedSubscript:@"sessionStarting"];
    v12 = [v6 objectForKeyedSubscript:@"urlRepresentable"];
    v13 = [v6 objectForKeyedSubscript:@"conditionallyEnabled"];
    if (v13)
    {
      v226[0] = 0;
      v14 = [[CCToolKitToolSystemToolProtocolConditionallyEnabled alloc] initWithJSONDictionary:v13 error:v226];
      v15 = v226[0];
      if (!v14 || v15)
      {
        v216 = v15;
        CCSetError();
        v17 = 0;
LABEL_204:

        goto LABEL_205;
      }

      v213 = v12;
      v214 = v11;
      v16 = v14;

      v13 = v16;
    }

    else
    {
      v213 = v12;
      v214 = v11;
    }

    v216 = [v6 objectForKeyedSubscript:@"foregroundContinuable"];
    v14 = [v6 objectForKeyedSubscript:@"changeBinarySetting"];
    v212 = [v6 objectForKeyedSubscript:@"requiresMdmChecks"];
    v211 = [v6 objectForKeyedSubscript:@"cut"];
    v210 = [v6 objectForKeyedSubscript:@"copyProtocol"];
    v209 = [v6 objectForKeyedSubscript:@"paste"];
    v208 = [v6 objectForKeyedSubscript:@"cancel"];
    v207 = [v6 objectForKeyedSubscript:@"resize"];
    v206 = [v6 objectForKeyedSubscript:@"scroll"];
    v205 = [v6 objectForKeyedSubscript:@"undo"];
    v204 = [v6 objectForKeyedSubscript:@"zoom"];
    v203 = [v6 objectForKeyedSubscript:@"closeEntity"];
    v202 = [v6 objectForKeyedSubscript:@"createEntity"];
    v201 = [v6 objectForKeyedSubscript:@"cutEntity"];
    v200 = [v6 objectForKeyedSubscript:@"deleteEntity"];
    v199 = [v6 objectForKeyedSubscript:@"duplicateEntity"];
    v198 = [v6 objectForKeyedSubscript:@"favoriteEntity"];
    v197 = [v6 objectForKeyedSubscript:@"openEntity"];
    v196 = [v6 objectForKeyedSubscript:@"previewEntity"];
    v195 = [v6 objectForKeyedSubscript:@"saveEntity"];
    v194 = [v6 objectForKeyedSubscript:@"putEntityInContainer"];
    v18 = [v6 objectForKeyedSubscript:@"playVideo"];
    if (v18)
    {
      v19 = v18;
      v20 = v14;
      v21 = [CCToolKitToolSystemToolProtocolPlayVideo alloc];
      v225 = 0;
      v215 = v19;
      v22 = [(CCToolKitToolSystemToolProtocolPlayVideo *)v21 initWithJSONDictionary:v19 error:&v225];
      v23 = v225;
      v24 = v23;
      if (!v22 || v23)
      {
        v193 = v22;
        CCSetError();
        v17 = 0;
        v14 = v20;
LABEL_203:

        v12 = v213;
        v11 = v214;
        goto LABEL_204;
      }

      v25 = v22;

      v215 = v25;
      v14 = v20;
    }

    else
    {
      v215 = 0;
    }

    v24 = [v6 objectForKeyedSubscript:@"audioStarting"];
    v193 = [v6 objectForKeyedSubscript:@"audioRecording"];
    v187 = [v6 objectForKeyedSubscript:@"pushToTalkTransmission"];
    v190 = [v6 objectForKeyedSubscript:@"startDive"];
    v189 = [v6 objectForKeyedSubscript:@"startWorkout"];
    v188 = [v6 objectForKeyedSubscript:@"pauseWorkout"];
    v186 = [v6 objectForKeyedSubscript:@"resumeWorkout"];
    v185 = [v6 objectForKeyedSubscript:@"enterMarkup"];
    v184 = [v6 objectForKeyedSubscript:@"exitMarkup"];
    v183 = [v6 objectForKeyedSubscript:@"focusConfiguration"];
    v182 = [v6 objectForKeyedSubscript:@"widgetConfiguration"];
    v181 = [v6 objectForKeyedSubscript:@"search"];
    v180 = [v6 objectForKeyedSubscript:@"showSearchResultsInApp"];
    v179 = [v6 objectForKeyedSubscript:@"showStringSearchResultsInApp"];
    v178 = [v6 objectForKeyedSubscript:@"showInAppSearchResults"];
    v26 = [v6 objectForKeyedSubscript:@"showInAppStringSearchResults"];
    v176 = v24;
    v191 = v10;
    if (v26)
    {
      v27 = self;
      v28 = v26;
      v29 = [CCToolKitToolSystemToolProtocolShowInAppStringSearchResults alloc];
      v224 = 0;
      v192 = v28;
      v30 = [(CCToolKitToolSystemToolProtocolShowInAppStringSearchResults *)v29 initWithJSONDictionary:v28 error:&v224];
      v31 = v224;
      v32 = v31;
      if (!v30 || v31)
      {
        v177 = v30;
        CCSetError();
        v17 = 0;
        v34 = v32;
        self = v27;
LABEL_202:

        v10 = v191;
        goto LABEL_203;
      }

      v33 = v30;

      v192 = v33;
      v24 = v176;
      self = v27;
    }

    else
    {
      v192 = 0;
    }

    v34 = [v6 objectForKeyedSubscript:@"moveSpatial"];
    v177 = [v6 objectForKeyedSubscript:@"navigateSequentially"];
    v174 = [v6 objectForKeyedSubscript:@"sting"];
    v173 = [v6 objectForKeyedSubscript:@"toggle"];
    v172 = [v6 objectForKeyedSubscript:@"cameraCapture"];
    v171 = [v6 objectForKeyedSubscript:@"staccatoLongPress"];
    v35 = [v6 objectForKeyedSubscript:@"entityUpdating"];
    v170 = v9;
    if (v35)
    {
      v168 = v8;
      v36 = v13;
      v37 = self;
      v38 = v14;
      v39 = v34;
      v40 = v35;
      v41 = [CCToolKitToolSystemToolProtocolEntityUpdating alloc];
      v223 = 0;
      v175 = v40;
      v42 = [(CCToolKitToolSystemToolProtocolEntityUpdating *)v41 initWithJSONDictionary:v40 error:&v223];
      v43 = v223;
      v44 = v43;
      v45 = v42;
      if (!v42 || v43)
      {
        CCSetError();
        v17 = 0;
        v34 = v39;
        v60 = v45;
        v14 = v38;
        self = v37;
        v13 = v36;
        v8 = v168;
        v9 = v170;
LABEL_201:

        goto LABEL_202;
      }

      v46 = v42;

      v175 = v46;
      v24 = v176;
      v34 = v39;
      v14 = v38;
      self = v37;
      v13 = v36;
      v8 = v168;
    }

    else
    {
      v175 = 0;
    }

    v44 = [v6 objectForKeyedSubscript:@"propertyUpdater"];
    if (v44)
    {
      v47 = v14;
      v48 = v34;
      v49 = [CCToolKitToolSystemToolProtocolPropertyUpdater alloc];
      v222 = 0;
      v50 = [(CCToolKitToolSystemToolProtocolPropertyUpdater *)v49 initWithJSONDictionary:v44 error:&v222];
      v51 = v222;
      if (!v50 || v51)
      {
        v167 = v50;
        v169 = v51;
        CCSetError();
        v17 = 0;
        v34 = v48;
        v14 = v47;
LABEL_200:

        v60 = v169;
        v9 = v170;
        goto LABEL_201;
      }

      v52 = v50;

      v44 = v52;
      v24 = v176;
      v34 = v48;
      v14 = v47;
    }

    v169 = [v6 objectForKeyedSubscript:@"sendMail"];
    v167 = [v6 objectForKeyedSubscript:@"setMailMessageIsRead"];
    v53 = [v6 objectForKeyedSubscript:@"siriKitIntent"];
    if (v53)
    {
      v54 = v53;
      v55 = [CCToolKitToolSystemToolProtocolSiriKitIntent alloc];
      v221 = 0;
      v166 = v54;
      v56 = [(CCToolKitToolSystemToolProtocolSiriKitIntent *)v55 initWithJSONDictionary:v54 error:&v221];
      v57 = v221;
      if (!v56 || v57)
      {
        v165 = v57;
        CCSetError();
        v17 = 0;
        goto LABEL_199;
      }

      v58 = v56;

      v59 = v58;
      v24 = v176;
    }

    else
    {
      v59 = 0;
    }

    v166 = v59;
    v61 = [v6 objectForKeyedSubscript:@"intentSideEffect"];
    v164 = v34;
    if (!v61)
    {
      v165 = 0;
LABEL_43:
      v56 = [v6 objectForKeyedSubscript:@"assistantSchema"];
      if (v56)
      {
        v67 = [CCToolKitToolSystemToolProtocolAssistantSchema alloc];
        v219 = 0;
        v68 = [(CCToolKitToolSystemToolProtocolAssistantSchema *)v67 initWithJSONDictionary:v56 error:&v219];
        v69 = v219;
        v161 = v68;
        if (!v68 || v69)
        {
          v162 = v69;
          CCSetError();
          v17 = 0;
          v34 = v164;
          goto LABEL_197;
        }

        v70 = v68;

        v56 = v70;
        v24 = v176;
        v34 = v164;
      }

      v162 = [v6 objectForKeyedSubscript:@"rewriteWritingTool"];
      v161 = [v6 objectForKeyedSubscript:@"proofreadWritingTool"];
      v158 = [v6 objectForKeyedSubscript:@"assistantInvocable"];
      v71 = [v6 objectForKeyedSubscript:@"appIntent"];
      if (v71)
      {
        v72 = v71;
        v73 = [CCToolKitToolSystemToolProtocolAppIntent alloc];
        v218 = 0;
        v159 = v72;
        v74 = [(CCToolKitToolSystemToolProtocolAppIntent *)v73 initWithJSONDictionary:v72 error:&v218];
        v75 = v218;
        v160 = v74;
        if (!v74 || v75)
        {
          v157 = v75;
          CCSetError();
          v17 = 0;
          v34 = v164;
LABEL_196:

LABEL_197:
          goto LABEL_199;
        }

        v76 = v74;

        v159 = v76;
        v24 = v176;
        v34 = v164;
      }

      else
      {
        v159 = 0;
      }

      v157 = [v6 objectForKeyedSubscript:@"systemFrameworkIntent"];
      v77 = [v6 objectForKeyedSubscript:@"synthesizedTool"];
      if (v77)
      {
        v78 = v77;
        v79 = [CCToolKitToolSystemToolProtocolSynthesizedToolProtocol alloc];
        v217 = 0;
        v160 = v78;
        v80 = [(CCToolKitToolSystemToolProtocolSynthesizedToolProtocol *)v79 initWithJSONDictionary:v78 error:&v217];
        v81 = v217;
        v156 = v80;
        if (!v80 || v81)
        {
          v155 = v81;
          CCSetError();
          v17 = 0;
          v34 = v164;
LABEL_195:

          goto LABEL_196;
        }

        v82 = v80;

        v160 = v82;
        v34 = v164;
      }

      else
      {
        v160 = 0;
      }

      v153 = v56;
      v155 = [v6 objectForKeyedSubscript:@"progressReporting"];
      v156 = [v6 objectForKeyedSubscript:@"controlConfiguration"];
      v152 = [v6 objectForKeyedSubscript:@"valueSetting"];
      v151 = [v6 objectForKeyedSubscript:@"entityGetter"];
      v154 = v44;
      if (v170)
      {
        v83 = v170;
        v84 = 1;
      }

      else
      {
        v84 = 0;
      }

      v85 = v170;
      if (v191)
      {
        v85 = v191;

        v84 = 2;
      }

      if (v214)
      {
        v86 = v214;

        v84 = 3;
        v85 = v86;
      }

      if (v213)
      {
        v87 = v213;

        v84 = 4;
        v85 = v87;
      }

      if (v13)
      {
        v88 = v13;

        v84 = 5;
        v85 = v88;
      }

      if (v216)
      {
        v89 = v216;

        v84 = 6;
        v85 = v89;
      }

      if (v14)
      {
        v90 = v14;

        v84 = 7;
        v85 = v90;
      }

      if (v212)
      {
        v91 = v212;

        v84 = 8;
        v85 = v91;
      }

      if (v211)
      {
        v92 = v211;

        v84 = 9;
        v85 = v92;
      }

      if (v210)
      {
        v93 = v210;

        v84 = 10;
        v85 = v93;
      }

      if (v209)
      {
        v94 = v209;

        v84 = 11;
        v85 = v94;
      }

      if (v208)
      {
        v95 = v208;

        v84 = 12;
        v85 = v95;
      }

      if (v207)
      {
        v96 = v207;

        v84 = 13;
        v85 = v96;
      }

      if (v206)
      {
        v97 = v206;

        v84 = 14;
        v85 = v97;
      }

      if (v205)
      {
        v98 = v205;

        v84 = 15;
        v85 = v98;
      }

      if (v204)
      {
        v99 = v204;

        v84 = 16;
        v85 = v99;
      }

      if (v203)
      {
        v100 = v203;

        v84 = 17;
        v85 = v100;
      }

      if (v202)
      {
        v101 = v202;

        v84 = 18;
        v85 = v101;
      }

      if (v201)
      {
        v102 = v201;

        v84 = 19;
        v85 = v102;
      }

      if (v200)
      {
        v103 = v200;

        v84 = 20;
        v85 = v103;
      }

      if (v199)
      {
        v104 = v199;

        v84 = 21;
        v85 = v104;
      }

      if (v198)
      {
        v105 = v198;

        v84 = 22;
        v85 = v105;
      }

      if (v197)
      {
        v106 = v197;

        v84 = 23;
        v85 = v106;
      }

      if (v196)
      {
        v107 = v196;

        v84 = 24;
        v85 = v107;
      }

      if (v195)
      {
        v108 = v195;

        v84 = 25;
        v85 = v108;
      }

      if (v194)
      {
        v109 = v194;

        v84 = 26;
        v85 = v109;
      }

      if (v215)
      {
        v110 = v215;

        v84 = 27;
        v85 = v110;
      }

      if (v176)
      {
        v111 = v176;

        v84 = 28;
        v85 = v111;
      }

      if (v193)
      {
        v112 = v193;

        v84 = 29;
        v85 = v112;
      }

      if (v187)
      {
        v113 = v187;

        v84 = 30;
        v85 = v113;
      }

      if (v190)
      {
        v114 = v190;

        v84 = 31;
        v85 = v114;
      }

      if (v189)
      {
        v115 = v189;

        v84 = 32;
        v85 = v115;
      }

      if (v188)
      {
        v116 = v188;

        v84 = 33;
        v85 = v116;
      }

      if (v186)
      {
        v117 = v186;

        v84 = 34;
        v85 = v117;
      }

      if (v185)
      {
        v118 = v185;

        v84 = 35;
        v85 = v118;
      }

      if (v184)
      {
        v119 = v184;

        v84 = 36;
        v85 = v119;
      }

      if (v183)
      {
        v120 = v183;

        v84 = 37;
        v85 = v120;
      }

      if (v182)
      {
        v121 = v182;

        v84 = 38;
        v85 = v121;
      }

      if (v181)
      {
        v122 = v181;

        v84 = 39;
        v85 = v122;
      }

      if (v180)
      {
        v123 = v180;

        v84 = 40;
        v85 = v123;
      }

      if (v179)
      {
        v124 = v179;

        v84 = 41;
        v85 = v124;
      }

      if (v178)
      {
        v125 = v178;

        v84 = 42;
        v85 = v125;
      }

      if (v192)
      {
        v126 = v192;

        v84 = 43;
        v85 = v126;
      }

      if (v34)
      {
        v127 = v34;

        v84 = 44;
        v85 = v127;
      }

      if (v177)
      {
        v128 = v177;

        v84 = 45;
        v85 = v128;
      }

      if (v174)
      {
        v129 = v174;

        v84 = 46;
        v85 = v129;
      }

      if (v173)
      {
        v130 = v173;

        v84 = 47;
        v85 = v130;
      }

      if (v172)
      {
        v131 = v172;

        v84 = 48;
        v85 = v131;
      }

      if (v171)
      {
        v132 = v171;

        v84 = 49;
        v85 = v132;
      }

      if (v175)
      {
        v133 = v175;

        v84 = 50;
        v85 = v133;
      }

      if (v154)
      {
        v134 = v154;

        v84 = 51;
        v85 = v134;
      }

      if (v169)
      {
        v135 = v169;

        v84 = 52;
        v85 = v135;
      }

      if (v167)
      {
        v136 = v167;

        v84 = 53;
        v85 = v136;
      }

      if (v166)
      {
        v137 = v166;

        v84 = 54;
        v85 = v137;
      }

      if (v165)
      {
        v138 = v165;

        v84 = 55;
        v85 = v138;
      }

      if (v153)
      {
        v139 = v153;

        v84 = 56;
        v85 = v139;
      }

      if (v162)
      {
        v140 = v162;

        v84 = 57;
        v85 = v140;
      }

      if (v161)
      {
        v141 = v161;

        v84 = 58;
        v85 = v141;
      }

      if (v158)
      {
        v142 = v158;

        v84 = 59;
        v85 = v142;
      }

      if (v159)
      {
        v143 = v159;

        v84 = 60;
        v85 = v143;
      }

      if (v157)
      {
        v144 = v157;

        v84 = 61;
        v85 = v144;
      }

      if (v160)
      {
        v145 = v160;

        v84 = 62;
        v85 = v145;
      }

      if (v155)
      {
        v146 = v155;

        v84 = 63;
        v85 = v146;
      }

      if (v156)
      {
        v147 = v156;

        v84 = 64;
        v85 = v147;
      }

      if (v152)
      {
        v148 = v152;

        v84 = 65;
        v85 = v148;
      }

      if (v151)
      {
        v150 = v151;

        v84 = 66;
        v85 = v150;
      }

      v17 = [[CCToolKitToolSystemToolProtocol alloc] initWithKind:v85 kindType:v84 error:a4];

      v24 = v176;
      v56 = v153;
      v44 = v154;
      goto LABEL_195;
    }

    v62 = v61;
    v63 = [CCToolKitToolSystemToolProtocolIntentSideEffect alloc];
    v220 = 0;
    v165 = v62;
    v64 = [(CCToolKitToolSystemToolProtocolIntentSideEffect *)v63 initWithJSONDictionary:v62 error:&v220];
    v65 = v220;
    v56 = v65;
    if (v64 && !v65)
    {
      v66 = v64;

      v165 = v66;
      v24 = v176;
      v34 = v164;
      goto LABEL_43;
    }

    v163 = v64;
    CCSetError();
    v17 = 0;
    v34 = v164;

LABEL_199:
    goto LABEL_200;
  }

  CCSetError();
  v17 = 0;
LABEL_205:

  return v17;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  kindType = self->_kindType;
  if (kindType == 1)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol unk](self, "unk")}];
    [v3 setObject:v5 forKeyedSubscript:@"unk"];

    kindType = self->_kindType;
  }

  if (kindType == 2)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol undoable](self, "undoable")}];
    [v3 setObject:v6 forKeyedSubscript:@"undoable"];

    kindType = self->_kindType;
  }

  if (kindType == 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol sessionStarting](self, "sessionStarting")}];
    [v3 setObject:v7 forKeyedSubscript:@"sessionStarting"];

    kindType = self->_kindType;
  }

  if (kindType == 4)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol urlRepresentable](self, "urlRepresentable")}];
    [v3 setObject:v8 forKeyedSubscript:@"urlRepresentable"];

    kindType = self->_kindType;
  }

  if (kindType == 5)
  {
    if (!self->_conditionallyEnabled)
    {
      goto LABEL_143;
    }

    v9 = [(CCToolKitToolSystemToolProtocol *)self conditionallyEnabled];
    v10 = [v9 jsonDictionary];
    [v3 setObject:v10 forKeyedSubscript:@"conditionallyEnabled"];

    kindType = self->_kindType;
  }

  if (kindType == 6)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol foregroundContinuable](self, "foregroundContinuable")}];
    [v3 setObject:v11 forKeyedSubscript:@"foregroundContinuable"];

    kindType = self->_kindType;
  }

  if (kindType == 7)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol changeBinarySetting](self, "changeBinarySetting")}];
    [v3 setObject:v12 forKeyedSubscript:@"changeBinarySetting"];

    kindType = self->_kindType;
  }

  if (kindType == 8)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol requiresMdmChecks](self, "requiresMdmChecks")}];
    [v3 setObject:v13 forKeyedSubscript:@"requiresMdmChecks"];

    kindType = self->_kindType;
  }

  if (kindType == 9)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol cut](self, "cut")}];
    [v3 setObject:v14 forKeyedSubscript:@"cut"];

    kindType = self->_kindType;
  }

  if (kindType == 10)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol copyProtocol](self, "copyProtocol")}];
    [v3 setObject:v15 forKeyedSubscript:@"copyProtocol"];

    kindType = self->_kindType;
  }

  if (kindType == 11)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol paste](self, "paste")}];
    [v3 setObject:v16 forKeyedSubscript:@"paste"];

    kindType = self->_kindType;
  }

  if (kindType == 12)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol cancel](self, "cancel")}];
    [v3 setObject:v17 forKeyedSubscript:@"cancel"];

    kindType = self->_kindType;
  }

  if (kindType == 13)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol resize](self, "resize")}];
    [v3 setObject:v18 forKeyedSubscript:@"resize"];

    kindType = self->_kindType;
  }

  if (kindType == 14)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol scroll](self, "scroll")}];
    [v3 setObject:v19 forKeyedSubscript:@"scroll"];

    kindType = self->_kindType;
  }

  if (kindType == 15)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol undo](self, "undo")}];
    [v3 setObject:v20 forKeyedSubscript:@"undo"];

    kindType = self->_kindType;
  }

  if (kindType == 16)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol zoom](self, "zoom")}];
    [v3 setObject:v21 forKeyedSubscript:@"zoom"];

    kindType = self->_kindType;
  }

  if (kindType == 17)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol closeEntity](self, "closeEntity")}];
    [v3 setObject:v22 forKeyedSubscript:@"closeEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 18)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol createEntity](self, "createEntity")}];
    [v3 setObject:v23 forKeyedSubscript:@"createEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 19)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol cutEntity](self, "cutEntity")}];
    [v3 setObject:v24 forKeyedSubscript:@"cutEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 20)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol deleteEntity](self, "deleteEntity")}];
    [v3 setObject:v25 forKeyedSubscript:@"deleteEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 21)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol duplicateEntity](self, "duplicateEntity")}];
    [v3 setObject:v26 forKeyedSubscript:@"duplicateEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 22)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol favoriteEntity](self, "favoriteEntity")}];
    [v3 setObject:v27 forKeyedSubscript:@"favoriteEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 23)
  {
    v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol openEntity](self, "openEntity")}];
    [v3 setObject:v28 forKeyedSubscript:@"openEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 24)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol previewEntity](self, "previewEntity")}];
    [v3 setObject:v29 forKeyedSubscript:@"previewEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 25)
  {
    v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol saveEntity](self, "saveEntity")}];
    [v3 setObject:v30 forKeyedSubscript:@"saveEntity"];

    kindType = self->_kindType;
  }

  if (kindType == 26)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol putEntityInContainer](self, "putEntityInContainer")}];
    [v3 setObject:v31 forKeyedSubscript:@"putEntityInContainer"];

    kindType = self->_kindType;
  }

  if (kindType == 27)
  {
    if (!self->_playVideo)
    {
      goto LABEL_143;
    }

    v32 = [(CCToolKitToolSystemToolProtocol *)self playVideo];
    v33 = [v32 jsonDictionary];
    [v3 setObject:v33 forKeyedSubscript:@"playVideo"];

    kindType = self->_kindType;
  }

  if (kindType == 28)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol audioStarting](self, "audioStarting")}];
    [v3 setObject:v34 forKeyedSubscript:@"audioStarting"];

    kindType = self->_kindType;
  }

  if (kindType == 29)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol audioRecording](self, "audioRecording")}];
    [v3 setObject:v35 forKeyedSubscript:@"audioRecording"];

    kindType = self->_kindType;
  }

  if (kindType == 30)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol pushToTalkTransmission](self, "pushToTalkTransmission")}];
    [v3 setObject:v36 forKeyedSubscript:@"pushToTalkTransmission"];

    kindType = self->_kindType;
  }

  if (kindType == 31)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol startDive](self, "startDive")}];
    [v3 setObject:v37 forKeyedSubscript:@"startDive"];

    kindType = self->_kindType;
  }

  if (kindType == 32)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol startWorkout](self, "startWorkout")}];
    [v3 setObject:v38 forKeyedSubscript:@"startWorkout"];

    kindType = self->_kindType;
  }

  if (kindType == 33)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol pauseWorkout](self, "pauseWorkout")}];
    [v3 setObject:v39 forKeyedSubscript:@"pauseWorkout"];

    kindType = self->_kindType;
  }

  if (kindType == 34)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol resumeWorkout](self, "resumeWorkout")}];
    [v3 setObject:v40 forKeyedSubscript:@"resumeWorkout"];

    kindType = self->_kindType;
  }

  if (kindType == 35)
  {
    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol enterMarkup](self, "enterMarkup")}];
    [v3 setObject:v41 forKeyedSubscript:@"enterMarkup"];

    kindType = self->_kindType;
  }

  if (kindType == 36)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol exitMarkup](self, "exitMarkup")}];
    [v3 setObject:v42 forKeyedSubscript:@"exitMarkup"];

    kindType = self->_kindType;
  }

  if (kindType == 37)
  {
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol focusConfiguration](self, "focusConfiguration")}];
    [v3 setObject:v43 forKeyedSubscript:@"focusConfiguration"];

    kindType = self->_kindType;
  }

  if (kindType == 38)
  {
    v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol widgetConfiguration](self, "widgetConfiguration")}];
    [v3 setObject:v44 forKeyedSubscript:@"widgetConfiguration"];

    kindType = self->_kindType;
  }

  if (kindType == 39)
  {
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol search](self, "search")}];
    [v3 setObject:v45 forKeyedSubscript:@"search"];

    kindType = self->_kindType;
  }

  if (kindType == 40)
  {
    v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol showSearchResultsInApp](self, "showSearchResultsInApp")}];
    [v3 setObject:v46 forKeyedSubscript:@"showSearchResultsInApp"];

    kindType = self->_kindType;
  }

  if (kindType == 41)
  {
    v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol showStringSearchResultsInApp](self, "showStringSearchResultsInApp")}];
    [v3 setObject:v47 forKeyedSubscript:@"showStringSearchResultsInApp"];

    kindType = self->_kindType;
  }

  if (kindType == 42)
  {
    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol showInAppSearchResults](self, "showInAppSearchResults")}];
    [v3 setObject:v48 forKeyedSubscript:@"showInAppSearchResults"];

    kindType = self->_kindType;
  }

  if (kindType == 43)
  {
    if (!self->_showInAppStringSearchResults)
    {
      goto LABEL_143;
    }

    v49 = [(CCToolKitToolSystemToolProtocol *)self showInAppStringSearchResults];
    v50 = [v49 jsonDictionary];
    [v3 setObject:v50 forKeyedSubscript:@"showInAppStringSearchResults"];

    kindType = self->_kindType;
  }

  if (kindType == 44)
  {
    v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol moveSpatial](self, "moveSpatial")}];
    [v3 setObject:v51 forKeyedSubscript:@"moveSpatial"];

    kindType = self->_kindType;
  }

  if (kindType == 45)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol navigateSequentially](self, "navigateSequentially")}];
    [v3 setObject:v52 forKeyedSubscript:@"navigateSequentially"];

    kindType = self->_kindType;
  }

  if (kindType == 46)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol sting](self, "sting")}];
    [v3 setObject:v53 forKeyedSubscript:@"sting"];

    kindType = self->_kindType;
  }

  if (kindType == 47)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol toggle](self, "toggle")}];
    [v3 setObject:v54 forKeyedSubscript:@"toggle"];

    kindType = self->_kindType;
  }

  if (kindType == 48)
  {
    v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol cameraCapture](self, "cameraCapture")}];
    [v3 setObject:v55 forKeyedSubscript:@"cameraCapture"];

    kindType = self->_kindType;
  }

  if (kindType == 49)
  {
    v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol staccatoLongPress](self, "staccatoLongPress")}];
    [v3 setObject:v56 forKeyedSubscript:@"staccatoLongPress"];

    kindType = self->_kindType;
  }

  if (kindType == 50)
  {
    if (!self->_entityUpdating)
    {
      goto LABEL_143;
    }

    v57 = [(CCToolKitToolSystemToolProtocol *)self entityUpdating];
    v58 = [v57 jsonDictionary];
    [v3 setObject:v58 forKeyedSubscript:@"entityUpdating"];

    kindType = self->_kindType;
  }

  if (kindType == 51)
  {
    if (!self->_propertyUpdater)
    {
      goto LABEL_143;
    }

    v59 = [(CCToolKitToolSystemToolProtocol *)self propertyUpdater];
    v60 = [v59 jsonDictionary];
    [v3 setObject:v60 forKeyedSubscript:@"propertyUpdater"];

    kindType = self->_kindType;
  }

  if (kindType == 52)
  {
    v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol sendMail](self, "sendMail")}];
    [v3 setObject:v61 forKeyedSubscript:@"sendMail"];

    kindType = self->_kindType;
  }

  if (kindType == 53)
  {
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol setMailMessageIsRead](self, "setMailMessageIsRead")}];
    [v3 setObject:v62 forKeyedSubscript:@"setMailMessageIsRead"];

    kindType = self->_kindType;
  }

  if (kindType == 54)
  {
    if (!self->_siriKitIntent)
    {
      goto LABEL_143;
    }

    v63 = [(CCToolKitToolSystemToolProtocol *)self siriKitIntent];
    v64 = [v63 jsonDictionary];
    [v3 setObject:v64 forKeyedSubscript:@"siriKitIntent"];

    kindType = self->_kindType;
  }

  if (kindType == 55)
  {
    if (!self->_intentSideEffect)
    {
      goto LABEL_143;
    }

    v65 = [(CCToolKitToolSystemToolProtocol *)self intentSideEffect];
    v66 = [v65 jsonDictionary];
    [v3 setObject:v66 forKeyedSubscript:@"intentSideEffect"];

    kindType = self->_kindType;
  }

  if (kindType == 56)
  {
    if (!self->_assistantSchema)
    {
      goto LABEL_143;
    }

    v67 = [(CCToolKitToolSystemToolProtocol *)self assistantSchema];
    v68 = [v67 jsonDictionary];
    [v3 setObject:v68 forKeyedSubscript:@"assistantSchema"];

    kindType = self->_kindType;
  }

  if (kindType == 57)
  {
    v69 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol rewriteWritingTool](self, "rewriteWritingTool")}];
    [v3 setObject:v69 forKeyedSubscript:@"rewriteWritingTool"];

    kindType = self->_kindType;
  }

  if (kindType == 58)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol proofreadWritingTool](self, "proofreadWritingTool")}];
    [v3 setObject:v70 forKeyedSubscript:@"proofreadWritingTool"];

    kindType = self->_kindType;
  }

  if (kindType == 59)
  {
    v71 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol assistantInvocable](self, "assistantInvocable")}];
    [v3 setObject:v71 forKeyedSubscript:@"assistantInvocable"];

    kindType = self->_kindType;
  }

  if (kindType == 60)
  {
    if (!self->_appIntent)
    {
      goto LABEL_143;
    }

    v72 = [(CCToolKitToolSystemToolProtocol *)self appIntent];
    v73 = [v72 jsonDictionary];
    [v3 setObject:v73 forKeyedSubscript:@"appIntent"];

    kindType = self->_kindType;
  }

  if (kindType == 61)
  {
    v74 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol systemFrameworkIntent](self, "systemFrameworkIntent")}];
    [v3 setObject:v74 forKeyedSubscript:@"systemFrameworkIntent"];

    kindType = self->_kindType;
  }

  if (kindType == 62)
  {
    if (!self->_synthesizedTool)
    {
      goto LABEL_143;
    }

    v75 = [(CCToolKitToolSystemToolProtocol *)self synthesizedTool];
    v76 = [v75 jsonDictionary];
    [v3 setObject:v76 forKeyedSubscript:@"synthesizedTool"];

    kindType = self->_kindType;
  }

  if (kindType == 63)
  {
    v77 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol progressReporting](self, "progressReporting")}];
    [v3 setObject:v77 forKeyedSubscript:@"progressReporting"];

    kindType = self->_kindType;
  }

  if (kindType == 64)
  {
    v78 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol controlConfiguration](self, "controlConfiguration")}];
    [v3 setObject:v78 forKeyedSubscript:@"controlConfiguration"];

    kindType = self->_kindType;
  }

  if (kindType == 65)
  {
    v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol valueSetting](self, "valueSetting")}];
    [v3 setObject:v79 forKeyedSubscript:@"valueSetting"];

    kindType = self->_kindType;
  }

  if (kindType == 66)
  {
    v80 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CCToolKitToolSystemToolProtocol entityGetter](self, "entityGetter")}];
    [v3 setObject:v80 forKeyedSubscript:@"entityGetter"];
  }

LABEL_143:
  v81 = [v3 copy];

  return v81;
}

- (void)enumerateFieldsUsingBlock:(id)a3 parentFieldType:(unsigned __int16)a4
{
  v73 = a3;
  v5 = objc_alloc(MEMORY[0x1E69939F0]);
  v6 = *MEMORY[0x1E69939A8];
  v7 = [v5 initWithFieldType:v6 enumValue:self->_unk];
  v73[2](v73, v7);

  v8 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_undoable];
  v73[2](v73, v8);

  v9 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_sessionStarting];
  v73[2](v73, v9);

  v10 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_urlRepresentable];
  v73[2](v73, v10);

  if (self->_conditionallyEnabled)
  {
    v11 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_conditionallyEnabled];
    v73[2](v73, v11);
  }

  v12 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_foregroundContinuable];
  v73[2](v73, v12);

  v13 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_changeBinarySetting];
  v73[2](v73, v13);

  v14 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_requiresMdmChecks];
  v73[2](v73, v14);

  v15 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_cut];
  v73[2](v73, v15);

  v16 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_copyProtocol];
  v73[2](v73, v16);

  v17 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_paste];
  v73[2](v73, v17);

  v18 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_cancel];
  v73[2](v73, v18);

  v19 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_resize];
  v73[2](v73, v19);

  v20 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_scroll];
  v73[2](v73, v20);

  v21 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_undo];
  v73[2](v73, v21);

  v22 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_zoom];
  v73[2](v73, v22);

  v23 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_closeEntity];
  v73[2](v73, v23);

  v24 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_createEntity];
  v73[2](v73, v24);

  v25 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_cutEntity];
  v73[2](v73, v25);

  v26 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_deleteEntity];
  v73[2](v73, v26);

  v27 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_duplicateEntity];
  v73[2](v73, v27);

  v28 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_favoriteEntity];
  v73[2](v73, v28);

  v29 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_openEntity];
  v73[2](v73, v29);

  v30 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_previewEntity];
  v73[2](v73, v30);

  v31 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_saveEntity];
  v73[2](v73, v31);

  v32 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_putEntityInContainer];
  v73[2](v73, v32);

  if (self->_playVideo)
  {
    v33 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_playVideo];
    v73[2](v73, v33);
  }

  v34 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_audioStarting];
  v73[2](v73, v34);

  v35 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_audioRecording];
  v73[2](v73, v35);

  v36 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_pushToTalkTransmission];
  v73[2](v73, v36);

  v37 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_startDive];
  v73[2](v73, v37);

  v38 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_startWorkout];
  v73[2](v73, v38);

  v39 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_pauseWorkout];
  v73[2](v73, v39);

  v40 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_resumeWorkout];
  v73[2](v73, v40);

  v41 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_enterMarkup];
  v73[2](v73, v41);

  v42 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_exitMarkup];
  v73[2](v73, v42);

  v43 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_focusConfiguration];
  v73[2](v73, v43);

  v44 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_widgetConfiguration];
  v73[2](v73, v44);

  v45 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_search];
  v73[2](v73, v45);

  v46 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_showSearchResultsInApp];
  v73[2](v73, v46);

  v47 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_showStringSearchResultsInApp];
  v73[2](v73, v47);

  v48 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_showInAppSearchResults];
  v73[2](v73, v48);

  if (self->_showInAppStringSearchResults)
  {
    v49 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_showInAppStringSearchResults];
    v73[2](v73, v49);
  }

  v50 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_moveSpatial];
  v73[2](v73, v50);

  v51 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_navigateSequentially];
  v73[2](v73, v51);

  v52 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_sting];
  v73[2](v73, v52);

  v53 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_toggle];
  v73[2](v73, v53);

  v54 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_cameraCapture];
  v73[2](v73, v54);

  v55 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_staccatoLongPress];
  v73[2](v73, v55);

  if (self->_entityUpdating)
  {
    v56 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_entityUpdating];
    v73[2](v73, v56);
  }

  if (self->_propertyUpdater)
  {
    v57 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_propertyUpdater];
    v73[2](v73, v57);
  }

  v58 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_sendMail];
  v73[2](v73, v58);

  v59 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_setMailMessageIsRead];
  v73[2](v73, v59);

  if (self->_siriKitIntent)
  {
    v60 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_siriKitIntent];
    v73[2](v73, v60);
  }

  if (self->_intentSideEffect)
  {
    v61 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_intentSideEffect];
    v73[2](v73, v61);
  }

  if (self->_assistantSchema)
  {
    v62 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_assistantSchema];
    v73[2](v73, v62);
  }

  v63 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_rewriteWritingTool];
  v73[2](v73, v63);

  v64 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_proofreadWritingTool];
  v73[2](v73, v64);

  v65 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_assistantInvocable];
  v73[2](v73, v65);

  if (self->_appIntent)
  {
    v66 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_appIntent];
    v73[2](v73, v66);
  }

  v67 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_systemFrameworkIntent];
  v73[2](v73, v67);

  if (self->_synthesizedTool)
  {
    v68 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 subMessageValue:self->_synthesizedTool];
    v73[2](v73, v68);
  }

  v69 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_progressReporting];
  v73[2](v73, v69);

  v70 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_controlConfiguration];
  v73[2](v73, v70);

  v71 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_valueSetting];
  v73[2](v73, v71);

  v72 = [objc_alloc(MEMORY[0x1E69939F0]) initWithFieldType:v6 enumValue:self->_entityGetter];
  v73[2](v73, v72);
}

- (CCToolKitToolSystemToolProtocolSynthesizedToolProtocol)synthesizedTool
{
  v2 = [(CCToolKitToolSystemToolProtocolSynthesizedToolProtocol *)self->_synthesizedTool copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolAppIntent)appIntent
{
  v2 = [(CCToolKitToolSystemToolProtocolAppIntent *)self->_appIntent copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolAssistantSchema)assistantSchema
{
  v2 = [(CCToolKitToolSystemToolProtocolAssistantSchema *)self->_assistantSchema copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolIntentSideEffect)intentSideEffect
{
  v2 = [(CCToolKitToolSystemToolProtocolIntentSideEffect *)self->_intentSideEffect copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolSiriKitIntent)siriKitIntent
{
  v2 = [(CCToolKitToolSystemToolProtocolSiriKitIntent *)self->_siriKitIntent copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolPropertyUpdater)propertyUpdater
{
  v2 = [(CCToolKitToolSystemToolProtocolPropertyUpdater *)self->_propertyUpdater copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolEntityUpdating)entityUpdating
{
  v2 = [(CCToolKitToolSystemToolProtocolEntityUpdating *)self->_entityUpdating copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolShowInAppStringSearchResults)showInAppStringSearchResults
{
  v2 = [(CCToolKitToolSystemToolProtocolShowInAppStringSearchResults *)self->_showInAppStringSearchResults copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolPlayVideo)playVideo
{
  v2 = [(CCToolKitToolSystemToolProtocolPlayVideo *)self->_playVideo copy];

  return v2;
}

- (CCToolKitToolSystemToolProtocolConditionallyEnabled)conditionallyEnabled
{
  v2 = [(CCToolKitToolSystemToolProtocolConditionallyEnabled *)self->_conditionallyEnabled copy];

  return v2;
}

- (BOOL)initializeFieldValuesFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E6993A20]) initWithData:v5];
  v7 = MEMORY[0x1E6993AB8];
  v8 = MEMORY[0x1E6993AB0];
  v9 = MEMORY[0x1E6993AA8];
  if (*&v6[*MEMORY[0x1E6993AB8]] >= *&v6[*MEMORY[0x1E6993AB0]])
  {
    goto LABEL_729;
  }

  v10 = 0;
  v11 = MEMORY[0x1E6993AA0];
  do
  {
    if (*&v6[*v9])
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = 0;
    v15 = 0;
    while (1)
    {
      v16 = *v7;
      v17 = *&v6[v16];
      v18 = v17 + 1;
      if (v17 == -1 || v18 > *&v6[*v8])
      {
        break;
      }

      v19 = *(*&v6[*v11] + v17);
      *&v6[v16] = v18;
      v15 |= (v19 & 0x7F) << v13;
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      v13 += 7;
      v20 = v14++ >= 9;
      if (v20)
      {
        v21 = 0;
        if (*&v6[*v9])
        {
          goto LABEL_730;
        }

        goto LABEL_21;
      }
    }

    *&v6[*v9] = 1;
LABEL_17:
    v22 = *&v6[*v9];
    if (v22)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    if (v22)
    {
      goto LABEL_730;
    }

LABEL_21:
    switch((v21 >> 3))
    {
      case 1u:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = *v7;
          v27 = *&v6[v26];
          v28 = v27 + 1;
          if (v27 == -1 || v28 > *&v6[*v8])
          {
            break;
          }

          v29 = *(*&v6[*v11] + v27);
          *&v6[v26] = v28;
          v25 |= (v29 & 0x7F) << v23;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_555;
          }

          v23 += 7;
          v20 = v24++ >= 9;
          if (v20)
          {
            LODWORD(v25) = 0;
            goto LABEL_557;
          }
        }

        *&v6[*v9] = 1;
LABEL_555:
        if (*&v6[*v9])
        {
          LODWORD(v25) = 0;
        }

LABEL_557:
        self->_unk = v25;
        self->_kindType = 1;
        self->_undoable = 0;
        goto LABEL_562;
      case 2u:
        v248 = 0;
        v249 = 0;
        v250 = 0;
        while (2)
        {
          v251 = *v7;
          v252 = *&v6[v251];
          v253 = v252 + 1;
          if (v252 == -1 || v253 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v254 = *(*&v6[*v11] + v252);
            *&v6[v251] = v253;
            v250 |= (v254 & 0x7F) << v248;
            if (v254 < 0)
            {
              v248 += 7;
              v20 = v249++ >= 9;
              if (v20)
              {
                LODWORD(v250) = 0;
                goto LABEL_561;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v250) = 0;
        }

LABEL_561:
        self->_undoable = v250;
        self->_unk = 0;
        self->_kindType = 2;
LABEL_562:
        self->_sessionStarting = 0;
        goto LABEL_563;
      case 3u:
        v213 = 0;
        v214 = 0;
        v215 = 0;
        while (2)
        {
          v216 = *v7;
          v217 = *&v6[v216];
          v218 = v217 + 1;
          if (v217 == -1 || v218 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v219 = *(*&v6[*v11] + v217);
            *&v6[v216] = v218;
            v215 |= (v219 & 0x7F) << v213;
            if (v219 < 0)
            {
              v213 += 7;
              v20 = v214++ >= 9;
              if (v20)
              {
                LODWORD(v215) = 0;
                goto LABEL_537;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v215) = 0;
        }

LABEL_537:
        self->_sessionStarting = v215;
        self->_unk = 0;
        self->_undoable = 0;
        self->_kindType = 3;
LABEL_563:
        self->_urlRepresentable = 0;
        goto LABEL_564;
      case 4u:
        v234 = 0;
        v235 = 0;
        v236 = 0;
        while (2)
        {
          v237 = *v7;
          v238 = *&v6[v237];
          v239 = v238 + 1;
          if (v238 == -1 || v239 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v240 = *(*&v6[*v11] + v238);
            *&v6[v237] = v239;
            v236 |= (v240 & 0x7F) << v234;
            if (v240 < 0)
            {
              v234 += 7;
              v20 = v235++ >= 9;
              if (v20)
              {
                LODWORD(v236) = 0;
                goto LABEL_549;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v236) = 0;
        }

LABEL_549:
        self->_urlRepresentable = v236;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_kindType = 4;
LABEL_564:
        conditionallyEnabled = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        goto LABEL_565;
      case 5u:
        v159 = [CCToolKitToolSystemToolProtocolConditionallyEnabled alloc];
        v160 = CCPBReaderReadDataNoCopy();
        v689 = 0;
        v161 = [(CCItemMessage *)v159 initWithData:v160 error:&v689];
        v10 = v689;
        v162 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = v161;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        self->_kindType = 5;
        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        playVideo = self->_playVideo;
        self->_playVideo = 0;

        goto LABEL_409;
      case 6u:
        v296 = 0;
        v297 = 0;
        v298 = 0;
        while (2)
        {
          v299 = *v7;
          v300 = *&v6[v299];
          v301 = v300 + 1;
          if (v300 == -1 || v301 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v302 = *(*&v6[*v11] + v300);
            *&v6[v299] = v301;
            v298 |= (v302 & 0x7F) << v296;
            if (v302 < 0)
            {
              v296 += 7;
              v20 = v297++ >= 9;
              if (v20)
              {
                LODWORD(v298) = 0;
                goto LABEL_637;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v298) = 0;
        }

LABEL_637:
        self->_foregroundContinuable = v298;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v605 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_kindType = 6;
LABEL_565:
        self->_changeBinarySetting = 0;
        goto LABEL_566;
      case 7u:
        v331 = 0;
        v332 = 0;
        v333 = 0;
        while (2)
        {
          v334 = *v7;
          v335 = *&v6[v334];
          v336 = v335 + 1;
          if (v335 == -1 || v336 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v337 = *(*&v6[*v11] + v335);
            *&v6[v334] = v336;
            v333 |= (v337 & 0x7F) << v331;
            if (v337 < 0)
            {
              v331 += 7;
              v20 = v332++ >= 9;
              if (v20)
              {
                LODWORD(v333) = 0;
                goto LABEL_657;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v333) = 0;
        }

LABEL_657:
        self->_changeBinarySetting = v333;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v628 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_kindType = 7;
LABEL_566:
        self->_requiresMdmChecks = 0;
        goto LABEL_567;
      case 8u:
        v241 = 0;
        v242 = 0;
        v243 = 0;
        while (2)
        {
          v244 = *v7;
          v245 = *&v6[v244];
          v246 = v245 + 1;
          if (v245 == -1 || v246 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v247 = *(*&v6[*v11] + v245);
            *&v6[v244] = v246;
            v243 |= (v247 & 0x7F) << v241;
            if (v247 < 0)
            {
              v241 += 7;
              v20 = v242++ >= 9;
              if (v20)
              {
                LODWORD(v243) = 0;
                goto LABEL_553;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v243) = 0;
        }

LABEL_553:
        self->_requiresMdmChecks = v243;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v588 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_kindType = 8;
LABEL_567:
        self->_cut = 0;
        goto LABEL_568;
      case 9u:
        v352 = 0;
        v353 = 0;
        v354 = 0;
        while (2)
        {
          v355 = *v7;
          v356 = *&v6[v355];
          v357 = v356 + 1;
          if (v356 == -1 || v357 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v358 = *(*&v6[*v11] + v356);
            *&v6[v355] = v357;
            v354 |= (v358 & 0x7F) << v352;
            if (v358 < 0)
            {
              v352 += 7;
              v20 = v353++ >= 9;
              if (v20)
              {
                LODWORD(v354) = 0;
                goto LABEL_669;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v354) = 0;
        }

LABEL_669:
        self->_cut = v354;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v631 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_kindType = 9;
LABEL_568:
        self->_copyProtocol = 0;
        goto LABEL_569;
      case 0xAu:
        v192 = 0;
        v193 = 0;
        v194 = 0;
        while (2)
        {
          v195 = *v7;
          v196 = *&v6[v195];
          v197 = v196 + 1;
          if (v196 == -1 || v197 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v198 = *(*&v6[*v11] + v196);
            *&v6[v195] = v197;
            v194 |= (v198 & 0x7F) << v192;
            if (v198 < 0)
            {
              v192 += 7;
              v20 = v193++ >= 9;
              if (v20)
              {
                LODWORD(v194) = 0;
                goto LABEL_525;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v194) = 0;
        }

LABEL_525:
        self->_copyProtocol = v194;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v574 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_kindType = 10;
LABEL_569:
        self->_paste = 0;
        goto LABEL_570;
      case 0xBu:
        v345 = 0;
        v346 = 0;
        v347 = 0;
        while (2)
        {
          v348 = *v7;
          v349 = *&v6[v348];
          v350 = v349 + 1;
          if (v349 == -1 || v350 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v351 = *(*&v6[*v11] + v349);
            *&v6[v348] = v350;
            v347 |= (v351 & 0x7F) << v345;
            if (v351 < 0)
            {
              v345 += 7;
              v20 = v346++ >= 9;
              if (v20)
              {
                LODWORD(v347) = 0;
                goto LABEL_665;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v347) = 0;
        }

LABEL_665:
        self->_paste = v347;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v630 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_kindType = 11;
LABEL_570:
        self->_cancel = 0;
        goto LABEL_571;
      case 0xCu:
        v145 = 0;
        v146 = 0;
        v147 = 0;
        while (2)
        {
          v148 = *v7;
          v149 = *&v6[v148];
          v150 = v149 + 1;
          if (v149 == -1 || v150 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v151 = *(*&v6[*v11] + v149);
            *&v6[v148] = v150;
            v147 |= (v151 & 0x7F) << v145;
            if (v151 < 0)
            {
              v145 += 7;
              v20 = v146++ >= 9;
              if (v20)
              {
                LODWORD(v147) = 0;
                goto LABEL_505;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v147) = 0;
        }

LABEL_505:
        self->_cancel = v147;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v551 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_kindType = 12;
LABEL_571:
        self->_resize = 0;
        goto LABEL_572;
      case 0xDu:
        v185 = 0;
        v186 = 0;
        v187 = 0;
        while (2)
        {
          v188 = *v7;
          v189 = *&v6[v188];
          v190 = v189 + 1;
          if (v189 == -1 || v190 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v191 = *(*&v6[*v11] + v189);
            *&v6[v188] = v190;
            v187 |= (v191 & 0x7F) << v185;
            if (v191 < 0)
            {
              v185 += 7;
              v20 = v186++ >= 9;
              if (v20)
              {
                LODWORD(v187) = 0;
                goto LABEL_521;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v187) = 0;
        }

LABEL_521:
        self->_resize = v187;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v573 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_kindType = 13;
LABEL_572:
        self->_scroll = 0;
        goto LABEL_573;
      case 0xEu:
        v324 = 0;
        v325 = 0;
        v326 = 0;
        while (2)
        {
          v327 = *v7;
          v328 = *&v6[v327];
          v329 = v328 + 1;
          if (v328 == -1 || v329 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v330 = *(*&v6[*v11] + v328);
            *&v6[v327] = v329;
            v326 |= (v330 & 0x7F) << v324;
            if (v330 < 0)
            {
              v324 += 7;
              v20 = v325++ >= 9;
              if (v20)
              {
                LODWORD(v326) = 0;
                goto LABEL_653;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v326) = 0;
        }

LABEL_653:
        self->_scroll = v326;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v627 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_kindType = 14;
LABEL_573:
        self->_undo = 0;
        goto LABEL_574;
      case 0xFu:
        v117 = 0;
        v118 = 0;
        v119 = 0;
        while (2)
        {
          v120 = *v7;
          v121 = *&v6[v120];
          v122 = v121 + 1;
          if (v121 == -1 || v122 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v123 = *(*&v6[*v11] + v121);
            *&v6[v120] = v122;
            v119 |= (v123 & 0x7F) << v117;
            if (v123 < 0)
            {
              v117 += 7;
              v20 = v118++ >= 9;
              if (v20)
              {
                LODWORD(v119) = 0;
                goto LABEL_489;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v119) = 0;
        }

LABEL_489:
        self->_undo = v119;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v537 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_kindType = 15;
LABEL_574:
        self->_zoom = 0;
        goto LABEL_575;
      case 0x10u:
        v220 = 0;
        v221 = 0;
        v222 = 0;
        while (2)
        {
          v223 = *v7;
          v224 = *&v6[v223];
          v225 = v224 + 1;
          if (v224 == -1 || v225 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v226 = *(*&v6[*v11] + v224);
            *&v6[v223] = v225;
            v222 |= (v226 & 0x7F) << v220;
            if (v226 < 0)
            {
              v220 += 7;
              v20 = v221++ >= 9;
              if (v20)
              {
                LODWORD(v222) = 0;
                goto LABEL_541;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v222) = 0;
        }

LABEL_541:
        self->_zoom = v222;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v577 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_kindType = 16;
LABEL_575:
        self->_closeEntity = 0;
        goto LABEL_576;
      case 0x11u:
        v103 = 0;
        v104 = 0;
        v105 = 0;
        while (2)
        {
          v106 = *v7;
          v107 = *&v6[v106];
          v108 = v107 + 1;
          if (v107 == -1 || v108 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v109 = *(*&v6[*v11] + v107);
            *&v6[v106] = v108;
            v105 |= (v109 & 0x7F) << v103;
            if (v109 < 0)
            {
              v103 += 7;
              v20 = v104++ >= 9;
              if (v20)
              {
                LODWORD(v105) = 0;
                goto LABEL_481;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v105) = 0;
        }

LABEL_481:
        self->_closeEntity = v105;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v533 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_kindType = 17;
LABEL_576:
        self->_createEntity = 0;
        goto LABEL_577;
      case 0x12u:
        v262 = 0;
        v263 = 0;
        v264 = 0;
        while (2)
        {
          v265 = *v7;
          v266 = *&v6[v265];
          v267 = v266 + 1;
          if (v266 == -1 || v267 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v268 = *(*&v6[*v11] + v266);
            *&v6[v265] = v267;
            v264 |= (v268 & 0x7F) << v262;
            if (v268 < 0)
            {
              v262 += 7;
              v20 = v263++ >= 9;
              if (v20)
              {
                LODWORD(v264) = 0;
                goto LABEL_625;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v264) = 0;
        }

LABEL_625:
        self->_createEntity = v264;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v601 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_kindType = 18;
LABEL_577:
        self->_cutEntity = 0;
        goto LABEL_578;
      case 0x13u:
        v338 = 0;
        v339 = 0;
        v340 = 0;
        while (2)
        {
          v341 = *v7;
          v342 = *&v6[v341];
          v343 = v342 + 1;
          if (v342 == -1 || v343 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v344 = *(*&v6[*v11] + v342);
            *&v6[v341] = v343;
            v340 |= (v344 & 0x7F) << v338;
            if (v344 < 0)
            {
              v338 += 7;
              v20 = v339++ >= 9;
              if (v20)
              {
                LODWORD(v340) = 0;
                goto LABEL_661;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v340) = 0;
        }

LABEL_661:
        self->_cutEntity = v340;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v629 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_kindType = 19;
LABEL_578:
        self->_deleteEntity = 0;
        goto LABEL_579;
      case 0x14u:
        v394 = 0;
        v395 = 0;
        v396 = 0;
        while (2)
        {
          v397 = *v7;
          v398 = *&v6[v397];
          v399 = v398 + 1;
          if (v398 == -1 || v399 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v400 = *(*&v6[*v11] + v398);
            *&v6[v397] = v399;
            v396 |= (v400 & 0x7F) << v394;
            if (v400 < 0)
            {
              v394 += 7;
              v20 = v395++ >= 9;
              if (v20)
              {
                LODWORD(v396) = 0;
                goto LABEL_693;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v396) = 0;
        }

LABEL_693:
        self->_deleteEntity = v396;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v642 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_kindType = 20;
LABEL_579:
        self->_duplicateEntity = 0;
        goto LABEL_580;
      case 0x15u:
        v276 = 0;
        v277 = 0;
        v278 = 0;
        while (2)
        {
          v279 = *v7;
          v280 = *&v6[v279];
          v281 = v280 + 1;
          if (v280 == -1 || v281 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v282 = *(*&v6[*v11] + v280);
            *&v6[v279] = v281;
            v278 |= (v282 & 0x7F) << v276;
            if (v282 < 0)
            {
              v276 += 7;
              v20 = v277++ >= 9;
              if (v20)
              {
                LODWORD(v278) = 0;
                goto LABEL_633;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v278) = 0;
        }

LABEL_633:
        self->_duplicateEntity = v278;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v604 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_kindType = 21;
LABEL_580:
        self->_favoriteEntity = 0;
        goto LABEL_581;
      case 0x16u:
        v317 = 0;
        v318 = 0;
        v319 = 0;
        while (2)
        {
          v320 = *v7;
          v321 = *&v6[v320];
          v322 = v321 + 1;
          if (v321 == -1 || v322 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v323 = *(*&v6[*v11] + v321);
            *&v6[v320] = v322;
            v319 |= (v323 & 0x7F) << v317;
            if (v323 < 0)
            {
              v317 += 7;
              v20 = v318++ >= 9;
              if (v20)
              {
                LODWORD(v319) = 0;
                goto LABEL_649;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v319) = 0;
        }

LABEL_649:
        self->_favoriteEntity = v319;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v626 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_kindType = 22;
LABEL_581:
        self->_openEntity = 0;
        goto LABEL_582;
      case 0x17u:
        v380 = 0;
        v381 = 0;
        v382 = 0;
        while (2)
        {
          v383 = *v7;
          v384 = *&v6[v383];
          v385 = v384 + 1;
          if (v384 == -1 || v385 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v386 = *(*&v6[*v11] + v384);
            *&v6[v383] = v385;
            v382 |= (v386 & 0x7F) << v380;
            if (v386 < 0)
            {
              v380 += 7;
              v20 = v381++ >= 9;
              if (v20)
              {
                LODWORD(v382) = 0;
                goto LABEL_685;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v382) = 0;
        }

LABEL_685:
        self->_openEntity = v382;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v639 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_kindType = 23;
LABEL_582:
        self->_previewEntity = 0;
        goto LABEL_583;
      case 0x18u:
        v426 = 0;
        v427 = 0;
        v428 = 0;
        while (2)
        {
          v429 = *v7;
          v430 = *&v6[v429];
          v431 = v430 + 1;
          if (v430 == -1 || v431 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v432 = *(*&v6[*v11] + v430);
            *&v6[v429] = v431;
            v428 |= (v432 & 0x7F) << v426;
            if (v432 < 0)
            {
              v426 += 7;
              v20 = v427++ >= 9;
              if (v20)
              {
                LODWORD(v428) = 0;
                goto LABEL_701;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v428) = 0;
        }

LABEL_701:
        self->_previewEntity = v428;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v651 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_kindType = 24;
LABEL_583:
        self->_saveEntity = 0;
        goto LABEL_584;
      case 0x19u:
        v206 = 0;
        v207 = 0;
        v208 = 0;
        while (2)
        {
          v209 = *v7;
          v210 = *&v6[v209];
          v211 = v210 + 1;
          if (v210 == -1 || v211 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v212 = *(*&v6[*v11] + v210);
            *&v6[v209] = v211;
            v208 |= (v212 & 0x7F) << v206;
            if (v212 < 0)
            {
              v206 += 7;
              v20 = v207++ >= 9;
              if (v20)
              {
                LODWORD(v208) = 0;
                goto LABEL_533;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v208) = 0;
        }

LABEL_533:
        self->_saveEntity = v208;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v576 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_kindType = 25;
LABEL_584:
        self->_putEntityInContainer = 0;
        goto LABEL_585;
      case 0x1Au:
        v199 = 0;
        v200 = 0;
        v201 = 0;
        while (2)
        {
          v202 = *v7;
          v203 = *&v6[v202];
          v204 = v203 + 1;
          if (v203 == -1 || v204 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v205 = *(*&v6[*v11] + v203);
            *&v6[v202] = v204;
            v201 |= (v205 & 0x7F) << v199;
            if (v205 < 0)
            {
              v199 += 7;
              v20 = v200++ >= 9;
              if (v20)
              {
                LODWORD(v201) = 0;
                goto LABEL_529;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v201) = 0;
        }

LABEL_529:
        self->_putEntityInContainer = v201;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v575 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_kindType = 26;
LABEL_585:
        v590 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        goto LABEL_586;
      case 0x1Bu:
        v454 = [CCToolKitToolSystemToolProtocolPlayVideo alloc];
        v455 = CCPBReaderReadDataNoCopy();
        v688 = 0;
        v456 = [(CCItemMessage *)v454 initWithData:v455 error:&v688];
        v10 = v688;
        v457 = self->_playVideo;
        self->_playVideo = v456;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v458 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        self->_kindType = 27;
LABEL_409:
        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        showInAppStringSearchResults = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        goto LABEL_410;
      case 0x1Cu:
        v89 = 0;
        v90 = 0;
        v91 = 0;
        while (2)
        {
          v92 = *v7;
          v93 = *&v6[v92];
          v94 = v93 + 1;
          if (v93 == -1 || v94 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v95 = *(*&v6[*v11] + v93);
            *&v6[v92] = v94;
            v91 |= (v95 & 0x7F) << v89;
            if (v95 < 0)
            {
              v89 += 7;
              v20 = v90++ >= 9;
              if (v20)
              {
                LODWORD(v91) = 0;
                goto LABEL_473;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v91) = 0;
        }

LABEL_473:
        self->_audioStarting = v91;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v529 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v530 = self->_playVideo;
        self->_playVideo = 0;

        self->_kindType = 28;
LABEL_586:
        self->_audioRecording = 0;
        goto LABEL_587;
      case 0x1Du:
        v433 = 0;
        v434 = 0;
        v435 = 0;
        while (2)
        {
          v436 = *v7;
          v437 = *&v6[v436];
          v438 = v437 + 1;
          if (v437 == -1 || v438 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v439 = *(*&v6[*v11] + v437);
            *&v6[v436] = v438;
            v435 |= (v439 & 0x7F) << v433;
            if (v439 < 0)
            {
              v433 += 7;
              v20 = v434++ >= 9;
              if (v20)
              {
                LODWORD(v435) = 0;
                goto LABEL_705;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v435) = 0;
        }

LABEL_705:
        self->_audioRecording = v435;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v652 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v653 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_kindType = 29;
LABEL_587:
        self->_pushToTalkTransmission = 0;
        goto LABEL_588;
      case 0x1Eu:
        v440 = 0;
        v441 = 0;
        v442 = 0;
        while (2)
        {
          v443 = *v7;
          v444 = *&v6[v443];
          v445 = v444 + 1;
          if (v444 == -1 || v445 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v446 = *(*&v6[*v11] + v444);
            *&v6[v443] = v445;
            v442 |= (v446 & 0x7F) << v440;
            if (v446 < 0)
            {
              v440 += 7;
              v20 = v441++ >= 9;
              if (v20)
              {
                LODWORD(v442) = 0;
                goto LABEL_709;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v442) = 0;
        }

LABEL_709:
        self->_pushToTalkTransmission = v442;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v654 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v655 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_kindType = 30;
LABEL_588:
        self->_startDive = 0;
        goto LABEL_589;
      case 0x1Fu:
        v359 = 0;
        v360 = 0;
        v361 = 0;
        while (2)
        {
          v362 = *v7;
          v363 = *&v6[v362];
          v364 = v363 + 1;
          if (v363 == -1 || v364 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v365 = *(*&v6[*v11] + v363);
            *&v6[v362] = v364;
            v361 |= (v365 & 0x7F) << v359;
            if (v365 < 0)
            {
              v359 += 7;
              v20 = v360++ >= 9;
              if (v20)
              {
                LODWORD(v361) = 0;
                goto LABEL_673;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v361) = 0;
        }

LABEL_673:
        self->_startDive = v361;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v632 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v633 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_kindType = 31;
LABEL_589:
        self->_startWorkout = 0;
        goto LABEL_590;
      case 0x20u:
        v255 = 0;
        v256 = 0;
        v257 = 0;
        while (2)
        {
          v258 = *v7;
          v259 = *&v6[v258];
          v260 = v259 + 1;
          if (v259 == -1 || v260 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v261 = *(*&v6[*v11] + v259);
            *&v6[v258] = v260;
            v257 |= (v261 & 0x7F) << v255;
            if (v261 < 0)
            {
              v255 += 7;
              v20 = v256++ >= 9;
              if (v20)
              {
                LODWORD(v257) = 0;
                goto LABEL_621;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v257) = 0;
        }

LABEL_621:
        self->_startWorkout = v257;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v599 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v600 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_kindType = 32;
LABEL_590:
        self->_pauseWorkout = 0;
        goto LABEL_591;
      case 0x21u:
        v366 = 0;
        v367 = 0;
        v368 = 0;
        while (2)
        {
          v369 = *v7;
          v370 = *&v6[v369];
          v371 = v370 + 1;
          if (v370 == -1 || v371 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v372 = *(*&v6[*v11] + v370);
            *&v6[v369] = v371;
            v368 |= (v372 & 0x7F) << v366;
            if (v372 < 0)
            {
              v366 += 7;
              v20 = v367++ >= 9;
              if (v20)
              {
                LODWORD(v368) = 0;
                goto LABEL_677;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v368) = 0;
        }

LABEL_677:
        self->_pauseWorkout = v368;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v634 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v635 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_kindType = 33;
LABEL_591:
        self->_resumeWorkout = 0;
        goto LABEL_592;
      case 0x22u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        while (2)
        {
          v127 = *v7;
          v128 = *&v6[v127];
          v129 = v128 + 1;
          if (v128 == -1 || v129 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v130 = *(*&v6[*v11] + v128);
            *&v6[v127] = v129;
            v126 |= (v130 & 0x7F) << v124;
            if (v130 < 0)
            {
              v124 += 7;
              v20 = v125++ >= 9;
              if (v20)
              {
                LODWORD(v126) = 0;
                goto LABEL_493;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v126) = 0;
        }

LABEL_493:
        self->_resumeWorkout = v126;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v538 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v539 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_kindType = 34;
LABEL_592:
        self->_enterMarkup = 0;
        goto LABEL_593;
      case 0x23u:
        v96 = 0;
        v97 = 0;
        v98 = 0;
        while (2)
        {
          v99 = *v7;
          v100 = *&v6[v99];
          v101 = v100 + 1;
          if (v100 == -1 || v101 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v102 = *(*&v6[*v11] + v100);
            *&v6[v99] = v101;
            v98 |= (v102 & 0x7F) << v96;
            if (v102 < 0)
            {
              v96 += 7;
              v20 = v97++ >= 9;
              if (v20)
              {
                LODWORD(v98) = 0;
                goto LABEL_477;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v98) = 0;
        }

LABEL_477:
        self->_enterMarkup = v98;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v531 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v532 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_kindType = 35;
LABEL_593:
        self->_exitMarkup = 0;
        goto LABEL_594;
      case 0x24u:
        v75 = 0;
        v76 = 0;
        v77 = 0;
        while (2)
        {
          v78 = *v7;
          v79 = *&v6[v78];
          v80 = v79 + 1;
          if (v79 == -1 || v80 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v81 = *(*&v6[*v11] + v79);
            *&v6[v78] = v80;
            v77 |= (v81 & 0x7F) << v75;
            if (v81 < 0)
            {
              v75 += 7;
              v20 = v76++ >= 9;
              if (v20)
              {
                LODWORD(v77) = 0;
                goto LABEL_465;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v77) = 0;
        }

LABEL_465:
        self->_exitMarkup = v77;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v525 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v526 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_kindType = 36;
LABEL_594:
        self->_focusConfiguration = 0;
        goto LABEL_595;
      case 0x25u:
        v82 = 0;
        v83 = 0;
        v84 = 0;
        while (2)
        {
          v85 = *v7;
          v86 = *&v6[v85];
          v87 = v86 + 1;
          if (v86 == -1 || v87 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v88 = *(*&v6[*v11] + v86);
            *&v6[v85] = v87;
            v84 |= (v88 & 0x7F) << v82;
            if (v88 < 0)
            {
              v82 += 7;
              v20 = v83++ >= 9;
              if (v20)
              {
                LODWORD(v84) = 0;
                goto LABEL_469;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v84) = 0;
        }

LABEL_469:
        self->_focusConfiguration = v84;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v527 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v528 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_kindType = 37;
LABEL_595:
        self->_widgetConfiguration = 0;
        goto LABEL_596;
      case 0x26u:
        v45 = 0;
        v46 = 0;
        v47 = 0;
        while (2)
        {
          v48 = *v7;
          v49 = *&v6[v48];
          v50 = v49 + 1;
          if (v49 == -1 || v50 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v51 = *(*&v6[*v11] + v49);
            *&v6[v48] = v50;
            v47 |= (v51 & 0x7F) << v45;
            if (v51 < 0)
            {
              v45 += 7;
              v20 = v46++ >= 9;
              if (v20)
              {
                LODWORD(v47) = 0;
                goto LABEL_453;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v47) = 0;
        }

LABEL_453:
        self->_widgetConfiguration = v47;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v512 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v513 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_kindType = 38;
LABEL_596:
        self->_search = 0;
        goto LABEL_597;
      case 0x27u:
        v447 = 0;
        v448 = 0;
        v449 = 0;
        while (2)
        {
          v450 = *v7;
          v451 = *&v6[v450];
          v452 = v451 + 1;
          if (v451 == -1 || v452 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v453 = *(*&v6[*v11] + v451);
            *&v6[v450] = v452;
            v449 |= (v453 & 0x7F) << v447;
            if (v453 < 0)
            {
              v447 += 7;
              v20 = v448++ >= 9;
              if (v20)
              {
                LODWORD(v449) = 0;
                goto LABEL_713;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v449) = 0;
        }

LABEL_713:
        self->_search = v449;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v656 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v657 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_kindType = 39;
LABEL_597:
        self->_showSearchResultsInApp = 0;
        goto LABEL_598;
      case 0x28u:
        v387 = 0;
        v388 = 0;
        v389 = 0;
        while (2)
        {
          v390 = *v7;
          v391 = *&v6[v390];
          v392 = v391 + 1;
          if (v391 == -1 || v392 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v393 = *(*&v6[*v11] + v391);
            *&v6[v390] = v392;
            v389 |= (v393 & 0x7F) << v387;
            if (v393 < 0)
            {
              v387 += 7;
              v20 = v388++ >= 9;
              if (v20)
              {
                LODWORD(v389) = 0;
                goto LABEL_689;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v389) = 0;
        }

LABEL_689:
        self->_showSearchResultsInApp = v389;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v640 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v641 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_kindType = 40;
LABEL_598:
        self->_showStringSearchResultsInApp = 0;
        goto LABEL_599;
      case 0x29u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        while (2)
        {
          v167 = *v7;
          v168 = *&v6[v167];
          v169 = v168 + 1;
          if (v168 == -1 || v169 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v170 = *(*&v6[*v11] + v168);
            *&v6[v167] = v169;
            v166 |= (v170 & 0x7F) << v164;
            if (v170 < 0)
            {
              v164 += 7;
              v20 = v165++ >= 9;
              if (v20)
              {
                LODWORD(v166) = 0;
                goto LABEL_509;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v166) = 0;
        }

LABEL_509:
        self->_showStringSearchResultsInApp = v166;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v552 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v553 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_kindType = 41;
LABEL_599:
        self->_showInAppSearchResults = 0;
        goto LABEL_600;
      case 0x2Au:
        v269 = 0;
        v270 = 0;
        v271 = 0;
        while (2)
        {
          v272 = *v7;
          v273 = *&v6[v272];
          v274 = v273 + 1;
          if (v273 == -1 || v274 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v275 = *(*&v6[*v11] + v273);
            *&v6[v272] = v274;
            v271 |= (v275 & 0x7F) << v269;
            if (v275 < 0)
            {
              v269 += 7;
              v20 = v270++ >= 9;
              if (v20)
              {
                LODWORD(v271) = 0;
                goto LABEL_629;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v271) = 0;
        }

LABEL_629:
        self->_showInAppSearchResults = v271;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v602 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v603 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_kindType = 42;
LABEL_600:
        v591 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        goto LABEL_601;
      case 0x2Bu:
        v408 = [CCToolKitToolSystemToolProtocolShowInAppStringSearchResults alloc];
        v409 = CCPBReaderReadDataNoCopy();
        v687 = 0;
        v410 = [(CCItemMessage *)v408 initWithData:v409 error:&v687];
        v10 = v687;
        v411 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = v410;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v412 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v413 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        self->_kindType = 43;
LABEL_410:
        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        entityUpdating = self->_entityUpdating;
        self->_entityUpdating = 0;

        goto LABEL_411;
      case 0x2Cu:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        while (2)
        {
          v41 = *v7;
          v42 = *&v6[v41];
          v43 = v42 + 1;
          if (v42 == -1 || v43 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v44 = *(*&v6[*v11] + v42);
            *&v6[v41] = v43;
            v40 |= (v44 & 0x7F) << v38;
            if (v44 < 0)
            {
              v38 += 7;
              v20 = v39++ >= 9;
              if (v20)
              {
                LODWORD(v40) = 0;
                goto LABEL_449;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v40) = 0;
        }

LABEL_449:
        self->_moveSpatial = v40;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v509 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v510 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v511 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_kindType = 44;
LABEL_601:
        self->_navigateSequentially = 0;
        goto LABEL_602;
      case 0x2Du:
        v110 = 0;
        v111 = 0;
        v112 = 0;
        while (2)
        {
          v113 = *v7;
          v114 = *&v6[v113];
          v115 = v114 + 1;
          if (v114 == -1 || v115 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v116 = *(*&v6[*v11] + v114);
            *&v6[v113] = v115;
            v112 |= (v116 & 0x7F) << v110;
            if (v116 < 0)
            {
              v110 += 7;
              v20 = v111++ >= 9;
              if (v20)
              {
                LODWORD(v112) = 0;
                goto LABEL_485;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v112) = 0;
        }

LABEL_485:
        self->_navigateSequentially = v112;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v534 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v535 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v536 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_kindType = 45;
LABEL_602:
        self->_sting = 0;
        goto LABEL_603;
      case 0x2Eu:
        v373 = 0;
        v374 = 0;
        v375 = 0;
        while (2)
        {
          v376 = *v7;
          v377 = *&v6[v376];
          v378 = v377 + 1;
          if (v377 == -1 || v378 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v379 = *(*&v6[*v11] + v377);
            *&v6[v376] = v378;
            v375 |= (v379 & 0x7F) << v373;
            if (v379 < 0)
            {
              v373 += 7;
              v20 = v374++ >= 9;
              if (v20)
              {
                LODWORD(v375) = 0;
                goto LABEL_681;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v375) = 0;
        }

LABEL_681:
        self->_sting = v375;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v636 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v637 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v638 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_kindType = 46;
LABEL_603:
        self->_toggle = 0;
        goto LABEL_604;
      case 0x2Fu:
        v495 = 0;
        v496 = 0;
        v497 = 0;
        while (2)
        {
          v498 = *v7;
          v499 = *&v6[v498];
          v500 = v499 + 1;
          if (v499 == -1 || v500 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v501 = *(*&v6[*v11] + v499);
            *&v6[v498] = v500;
            v497 |= (v501 & 0x7F) << v495;
            if (v501 < 0)
            {
              v495 += 7;
              v20 = v496++ >= 9;
              if (v20)
              {
                LODWORD(v497) = 0;
                goto LABEL_721;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v497) = 0;
        }

LABEL_721:
        self->_toggle = v497;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v663 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v664 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v665 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_kindType = 47;
LABEL_604:
        self->_cameraCapture = 0;
        goto LABEL_605;
      case 0x30u:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        while (2)
        {
          v64 = *v7;
          v65 = *&v6[v64];
          v66 = v65 + 1;
          if (v65 == -1 || v66 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v67 = *(*&v6[*v11] + v65);
            *&v6[v64] = v66;
            v63 |= (v67 & 0x7F) << v61;
            if (v67 < 0)
            {
              v61 += 7;
              v20 = v62++ >= 9;
              if (v20)
              {
                LODWORD(v63) = 0;
                goto LABEL_457;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v63) = 0;
        }

LABEL_457:
        self->_cameraCapture = v63;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v514 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v515 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v516 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_kindType = 48;
LABEL_605:
        self->_staccatoLongPress = 0;
        goto LABEL_606;
      case 0x31u:
        v131 = 0;
        v132 = 0;
        v133 = 0;
        while (2)
        {
          v134 = *v7;
          v135 = *&v6[v134];
          v136 = v135 + 1;
          if (v135 == -1 || v136 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v137 = *(*&v6[*v11] + v135);
            *&v6[v134] = v136;
            v133 |= (v137 & 0x7F) << v131;
            if (v137 < 0)
            {
              v131 += 7;
              v20 = v132++ >= 9;
              if (v20)
              {
                LODWORD(v133) = 0;
                goto LABEL_497;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v133) = 0;
        }

LABEL_497:
        self->_staccatoLongPress = v133;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v540 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v541 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v542 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_kindType = 49;
LABEL_606:
        v592 = self->_entityUpdating;
        self->_entityUpdating = 0;

        propertyUpdater = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        goto LABEL_607;
      case 0x32u:
        v152 = [CCToolKitToolSystemToolProtocolEntityUpdating alloc];
        v153 = CCPBReaderReadDataNoCopy();
        v686 = 0;
        v154 = [(CCItemMessage *)v152 initWithData:v153 error:&v686];
        v10 = v686;
        v155 = self->_entityUpdating;
        self->_entityUpdating = v154;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v156 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v157 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v158 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        self->_kindType = 50;
LABEL_411:
        v461 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        goto LABEL_412;
      case 0x33u:
        v30 = [CCToolKitToolSystemToolProtocolPropertyUpdater alloc];
        v31 = CCPBReaderReadDataNoCopy();
        v685 = 0;
        v32 = [(CCItemMessage *)v30 initWithData:v31 error:&v685];
        v10 = v685;
        v33 = self->_propertyUpdater;
        self->_propertyUpdater = v32;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v34 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v35 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v36 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v37 = self->_entityUpdating;
        self->_entityUpdating = 0;

        self->_kindType = 51;
LABEL_412:
        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        siriKitIntent = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        goto LABEL_413;
      case 0x34u:
        v502 = 0;
        v503 = 0;
        v504 = 0;
        while (2)
        {
          v505 = *v7;
          v506 = *&v6[v505];
          v507 = v506 + 1;
          if (v506 == -1 || v507 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v508 = *(*&v6[*v11] + v506);
            *&v6[v505] = v507;
            v504 |= (v508 & 0x7F) << v502;
            if (v508 < 0)
            {
              v502 += 7;
              v20 = v503++ >= 9;
              if (v20)
              {
                LODWORD(v504) = 0;
                goto LABEL_725;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v504) = 0;
        }

LABEL_725:
        self->_sendMail = v504;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v666 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v667 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v668 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v669 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v670 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_kindType = 52;
LABEL_607:
        self->_setMailMessageIsRead = 0;
        goto LABEL_608;
      case 0x35u:
        v488 = 0;
        v489 = 0;
        v490 = 0;
        while (2)
        {
          v491 = *v7;
          v492 = *&v6[v491];
          v493 = v492 + 1;
          if (v492 == -1 || v493 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v494 = *(*&v6[*v11] + v492);
            *&v6[v491] = v493;
            v490 |= (v494 & 0x7F) << v488;
            if (v494 < 0)
            {
              v488 += 7;
              v20 = v489++ >= 9;
              if (v20)
              {
                LODWORD(v490) = 0;
                goto LABEL_717;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v490) = 0;
        }

LABEL_717:
        self->_setMailMessageIsRead = v490;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v658 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v659 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v660 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v661 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v662 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_kindType = 53;
LABEL_608:
        v594 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        intentSideEffect = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        assistantSchema = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        goto LABEL_609;
      case 0x36u:
        v52 = [CCToolKitToolSystemToolProtocolSiriKitIntent alloc];
        v53 = CCPBReaderReadDataNoCopy();
        v684 = 0;
        v54 = [(CCItemMessage *)v52 initWithData:v53 error:&v684];
        v10 = v684;
        v55 = self->_siriKitIntent;
        self->_siriKitIntent = v54;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v56 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v57 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v58 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v59 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v60 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        self->_kindType = 54;
LABEL_413:
        v463 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        goto LABEL_414;
      case 0x37u:
        v467 = [CCToolKitToolSystemToolProtocolIntentSideEffect alloc];
        v468 = CCPBReaderReadDataNoCopy();
        v683 = 0;
        v469 = [(CCItemMessage *)v467 initWithData:v468 error:&v683];
        v10 = v683;
        v470 = self->_intentSideEffect;
        self->_intentSideEffect = v469;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v471 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v472 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v473 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v474 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v475 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v476 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        self->_kindType = 55;
LABEL_414:
        v464 = self->_assistantSchema;
        self->_assistantSchema = 0;

        goto LABEL_415;
      case 0x38u:
        v477 = [CCToolKitToolSystemToolProtocolAssistantSchema alloc];
        v478 = CCPBReaderReadDataNoCopy();
        v682 = 0;
        v479 = [(CCItemMessage *)v477 initWithData:v478 error:&v682];
        v10 = v682;
        v480 = self->_assistantSchema;
        self->_assistantSchema = v479;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v481 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v482 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v483 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v484 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v485 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v486 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v487 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        self->_kindType = 56;
LABEL_415:
        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        appIntent = self->_appIntent;
        self->_appIntent = 0;

        goto LABEL_416;
      case 0x39u:
        v68 = 0;
        v69 = 0;
        v70 = 0;
        while (2)
        {
          v71 = *v7;
          v72 = *&v6[v71];
          v73 = v72 + 1;
          if (v72 == -1 || v73 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v74 = *(*&v6[*v11] + v72);
            *&v6[v71] = v73;
            v70 |= (v74 & 0x7F) << v68;
            if (v74 < 0)
            {
              v68 += 7;
              v20 = v69++ >= 9;
              if (v20)
              {
                LODWORD(v70) = 0;
                goto LABEL_461;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v70) = 0;
        }

LABEL_461:
        self->_rewriteWritingTool = v70;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v517 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v518 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v519 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v520 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v521 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v522 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v523 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v524 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_kindType = 57;
LABEL_609:
        self->_proofreadWritingTool = 0;
        goto LABEL_610;
      case 0x3Au:
        v401 = 0;
        v402 = 0;
        v403 = 0;
        while (2)
        {
          v404 = *v7;
          v405 = *&v6[v404];
          v406 = v405 + 1;
          if (v405 == -1 || v406 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v407 = *(*&v6[*v11] + v405);
            *&v6[v404] = v406;
            v403 |= (v407 & 0x7F) << v401;
            if (v407 < 0)
            {
              v401 += 7;
              v20 = v402++ >= 9;
              if (v20)
              {
                LODWORD(v403) = 0;
                goto LABEL_697;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v403) = 0;
        }

LABEL_697:
        self->_proofreadWritingTool = v403;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v643 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v644 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v645 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v646 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v647 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v648 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v649 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v650 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_kindType = 58;
LABEL_610:
        self->_assistantInvocable = 0;
        goto LABEL_611;
      case 0x3Bu:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        while (2)
        {
          v141 = *v7;
          v142 = *&v6[v141];
          v143 = v142 + 1;
          if (v142 == -1 || v143 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v144 = *(*&v6[*v11] + v142);
            *&v6[v141] = v143;
            v140 |= (v144 & 0x7F) << v138;
            if (v144 < 0)
            {
              v138 += 7;
              v20 = v139++ >= 9;
              if (v20)
              {
                LODWORD(v140) = 0;
                goto LABEL_501;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v140) = 0;
        }

LABEL_501:
        self->_assistantInvocable = v140;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v543 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v544 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v545 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v546 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v547 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v548 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v549 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v550 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_kindType = 59;
LABEL_611:
        v597 = self->_appIntent;
        self->_appIntent = 0;

        self->_systemFrameworkIntent = 0;
        goto LABEL_612;
      case 0x3Cu:
        v414 = [CCToolKitToolSystemToolProtocolAppIntent alloc];
        v415 = CCPBReaderReadDataNoCopy();
        v681 = 0;
        v416 = [(CCItemMessage *)v414 initWithData:v415 error:&v681];
        v10 = v681;
        v417 = self->_appIntent;
        self->_appIntent = v416;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v418 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v419 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v420 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v421 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v422 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v423 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v424 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v425 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        self->_kindType = 60;
LABEL_416:
        self->_systemFrameworkIntent = 0;
        synthesizedTool = self->_synthesizedTool;
        self->_synthesizedTool = 0;

        goto LABEL_417;
      case 0x3Du:
        v171 = 0;
        v172 = 0;
        v173 = 0;
        while (2)
        {
          v174 = *v7;
          v175 = *&v6[v174];
          v176 = v175 + 1;
          if (v175 == -1 || v176 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v177 = *(*&v6[*v11] + v175);
            *&v6[v174] = v176;
            v173 |= (v177 & 0x7F) << v171;
            if (v177 < 0)
            {
              v171 += 7;
              v20 = v172++ >= 9;
              if (v20)
              {
                LODWORD(v173) = 0;
                goto LABEL_513;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v173) = 0;
        }

LABEL_513:
        self->_systemFrameworkIntent = v173;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v554 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v555 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v556 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v557 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v558 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v559 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v560 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v561 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        v562 = self->_appIntent;
        self->_appIntent = 0;

        self->_kindType = 61;
LABEL_612:
        v598 = self->_synthesizedTool;
        self->_synthesizedTool = 0;

        v10 = 0;
        self->_progressReporting = 0;
        goto LABEL_613;
      case 0x3Eu:
        v283 = [CCToolKitToolSystemToolProtocolSynthesizedToolProtocol alloc];
        v284 = CCPBReaderReadDataNoCopy();
        v680 = 0;
        v285 = [(CCItemMessage *)v283 initWithData:v284 error:&v680];
        v10 = v680;
        v286 = self->_synthesizedTool;
        self->_synthesizedTool = v285;

        if (v10)
        {
          continue;
        }

        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v287 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v288 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v289 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v290 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v291 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v292 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v293 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v294 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        v295 = self->_appIntent;
        self->_appIntent = 0;

        self->_systemFrameworkIntent = 0;
        self->_kindType = 62;
LABEL_417:
        self->_progressReporting = 0;
        self->_controlConfiguration = 0;
        self->_valueSetting = 0;
        self->_entityGetter = 0;
        continue;
      case 0x3Fu:
        v310 = 0;
        v311 = 0;
        v312 = 0;
        while (2)
        {
          v313 = *v7;
          v314 = *&v6[v313];
          v315 = v314 + 1;
          if (v314 == -1 || v315 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v316 = *(*&v6[*v11] + v314);
            *&v6[v313] = v315;
            v312 |= (v316 & 0x7F) << v310;
            if (v316 < 0)
            {
              v310 += 7;
              v20 = v311++ >= 9;
              if (v20)
              {
                LODWORD(v312) = 0;
                goto LABEL_645;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v312) = 0;
        }

LABEL_645:
        self->_progressReporting = v312;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v616 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v617 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v618 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v619 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v620 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v621 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v622 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v623 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        v624 = self->_appIntent;
        self->_appIntent = 0;

        self->_systemFrameworkIntent = 0;
        v625 = self->_synthesizedTool;
        self->_synthesizedTool = 0;

        v10 = 0;
        self->_kindType = 63;
LABEL_613:
        self->_controlConfiguration = 0;
        goto LABEL_614;
      case 0x40u:
        v227 = 0;
        v228 = 0;
        v229 = 0;
        while (2)
        {
          v230 = *v7;
          v231 = *&v6[v230];
          v232 = v231 + 1;
          if (v231 == -1 || v232 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v233 = *(*&v6[*v11] + v231);
            *&v6[v230] = v232;
            v229 |= (v233 & 0x7F) << v227;
            if (v233 < 0)
            {
              v227 += 7;
              v20 = v228++ >= 9;
              if (v20)
              {
                LODWORD(v229) = 0;
                goto LABEL_545;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v229) = 0;
        }

LABEL_545:
        self->_controlConfiguration = v229;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v578 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v579 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v580 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v581 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v582 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v583 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v584 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v585 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        v586 = self->_appIntent;
        self->_appIntent = 0;

        self->_systemFrameworkIntent = 0;
        v587 = self->_synthesizedTool;
        self->_synthesizedTool = 0;

        v10 = 0;
        self->_progressReporting = 0;
        self->_kindType = 64;
LABEL_614:
        self->_valueSetting = 0;
        goto LABEL_615;
      case 0x41u:
        v178 = 0;
        v179 = 0;
        v180 = 0;
        while (2)
        {
          v181 = *v7;
          v182 = *&v6[v181];
          v183 = v182 + 1;
          if (v182 == -1 || v183 > *&v6[*v8])
          {
            *&v6[*v9] = 1;
          }

          else
          {
            v184 = *(*&v6[*v11] + v182);
            *&v6[v181] = v183;
            v180 |= (v184 & 0x7F) << v178;
            if (v184 < 0)
            {
              v178 += 7;
              v20 = v179++ >= 9;
              if (v20)
              {
                LODWORD(v180) = 0;
                goto LABEL_517;
              }

              continue;
            }
          }

          break;
        }

        if (*&v6[*v9])
        {
          LODWORD(v180) = 0;
        }

LABEL_517:
        self->_valueSetting = v180;
        self->_unk = 0;
        self->_undoable = 0;
        self->_sessionStarting = 0;
        self->_urlRepresentable = 0;
        v563 = self->_conditionallyEnabled;
        self->_conditionallyEnabled = 0;

        self->_foregroundContinuable = 0;
        self->_changeBinarySetting = 0;
        self->_requiresMdmChecks = 0;
        self->_cut = 0;
        self->_copyProtocol = 0;
        self->_paste = 0;
        self->_cancel = 0;
        self->_resize = 0;
        self->_scroll = 0;
        self->_undo = 0;
        self->_zoom = 0;
        self->_closeEntity = 0;
        self->_createEntity = 0;
        self->_cutEntity = 0;
        self->_deleteEntity = 0;
        self->_duplicateEntity = 0;
        self->_favoriteEntity = 0;
        self->_openEntity = 0;
        self->_previewEntity = 0;
        self->_saveEntity = 0;
        self->_putEntityInContainer = 0;
        v564 = self->_playVideo;
        self->_playVideo = 0;

        self->_audioStarting = 0;
        self->_audioRecording = 0;
        self->_pushToTalkTransmission = 0;
        self->_startDive = 0;
        self->_startWorkout = 0;
        self->_pauseWorkout = 0;
        self->_resumeWorkout = 0;
        self->_enterMarkup = 0;
        self->_exitMarkup = 0;
        self->_focusConfiguration = 0;
        self->_widgetConfiguration = 0;
        self->_search = 0;
        self->_showSearchResultsInApp = 0;
        self->_showStringSearchResultsInApp = 0;
        self->_showInAppSearchResults = 0;
        v565 = self->_showInAppStringSearchResults;
        self->_showInAppStringSearchResults = 0;

        self->_moveSpatial = 0;
        self->_navigateSequentially = 0;
        self->_sting = 0;
        self->_toggle = 0;
        self->_cameraCapture = 0;
        self->_staccatoLongPress = 0;
        v566 = self->_entityUpdating;
        self->_entityUpdating = 0;

        v567 = self->_propertyUpdater;
        self->_propertyUpdater = 0;

        self->_sendMail = 0;
        self->_setMailMessageIsRead = 0;
        v568 = self->_siriKitIntent;
        self->_siriKitIntent = 0;

        v569 = self->_intentSideEffect;
        self->_intentSideEffect = 0;

        v570 = self->_assistantSchema;
        self->_assistantSchema = 0;

        self->_rewriteWritingTool = 0;
        self->_proofreadWritingTool = 0;
        self->_assistantInvocable = 0;
        v571 = self->_appIntent;
        self->_appIntent = 0;

        self->_systemFrameworkIntent = 0;
        v572 = self->_synthesizedTool;
        self->_synthesizedTool = 0;

        v10 = 0;
        self->_progressReporting = 0;
        self->_controlConfiguration = 0;
        self->_kindType = 65;
LABEL_615:
        self->_entityGetter = 0;
        continue;
      case 0x42u:
        v303 = 0;
        v304 = 0;
        v305 = 0;
        break;
      default:
        if (CCPBReaderSkipValueWithTag())
        {
          v10 = 0;
        }

        else
        {
          v671 = objc_opt_class();
          v672 = NSStringFromClass(v671);
          v673 = *&v6[*v9];
          v10 = CCSkipFieldErrorForMessage();
        }

        continue;
    }

    while (1)
    {
      v306 = *v7;
      v307 = *&v6[v306];
      v308 = v307 + 1;
      if (v307 == -1 || v308 > *&v6[*v8])
      {
        break;
      }

      v309 = *(*&v6[*v11] + v307);
      *&v6[v306] = v308;
      v305 |= (v309 & 0x7F) << v303;
      if ((v309 & 0x80) == 0)
      {
        goto LABEL_639;
      }

      v303 += 7;
      v20 = v304++ >= 9;
      if (v20)
      {
        LODWORD(v305) = 0;
        goto LABEL_641;
      }
    }

    *&v6[*v9] = 1;
LABEL_639:
    if (*&v6[*v9])
    {
      LODWORD(v305) = 0;
    }

LABEL_641:
    self->_entityGetter = v305;
    self->_unk = 0;
    self->_undoable = 0;
    self->_sessionStarting = 0;
    self->_urlRepresentable = 0;
    v606 = self->_conditionallyEnabled;
    self->_conditionallyEnabled = 0;

    self->_foregroundContinuable = 0;
    self->_changeBinarySetting = 0;
    self->_requiresMdmChecks = 0;
    self->_cut = 0;
    self->_copyProtocol = 0;
    self->_paste = 0;
    self->_cancel = 0;
    self->_resize = 0;
    self->_scroll = 0;
    self->_undo = 0;
    self->_zoom = 0;
    self->_closeEntity = 0;
    self->_createEntity = 0;
    self->_cutEntity = 0;
    self->_deleteEntity = 0;
    self->_duplicateEntity = 0;
    self->_favoriteEntity = 0;
    self->_openEntity = 0;
    self->_previewEntity = 0;
    self->_saveEntity = 0;
    self->_putEntityInContainer = 0;
    v607 = self->_playVideo;
    self->_playVideo = 0;

    self->_audioStarting = 0;
    self->_audioRecording = 0;
    self->_pushToTalkTransmission = 0;
    self->_startDive = 0;
    self->_startWorkout = 0;
    self->_pauseWorkout = 0;
    self->_resumeWorkout = 0;
    self->_enterMarkup = 0;
    self->_exitMarkup = 0;
    self->_focusConfiguration = 0;
    self->_widgetConfiguration = 0;
    self->_search = 0;
    self->_showSearchResultsInApp = 0;
    self->_showStringSearchResultsInApp = 0;
    self->_showInAppSearchResults = 0;
    v608 = self->_showInAppStringSearchResults;
    self->_showInAppStringSearchResults = 0;

    self->_moveSpatial = 0;
    self->_navigateSequentially = 0;
    self->_sting = 0;
    self->_toggle = 0;
    self->_cameraCapture = 0;
    self->_staccatoLongPress = 0;
    v609 = self->_entityUpdating;
    self->_entityUpdating = 0;

    v610 = self->_propertyUpdater;
    self->_propertyUpdater = 0;

    self->_sendMail = 0;
    self->_setMailMessageIsRead = 0;
    v611 = self->_siriKitIntent;
    self->_siriKitIntent = 0;

    v612 = self->_intentSideEffect;
    self->_intentSideEffect = 0;

    v613 = self->_assistantSchema;
    self->_assistantSchema = 0;

    self->_rewriteWritingTool = 0;
    self->_proofreadWritingTool = 0;
    self->_assistantInvocable = 0;
    v614 = self->_appIntent;
    self->_appIntent = 0;

    self->_systemFrameworkIntent = 0;
    v615 = self->_synthesizedTool;
    self->_synthesizedTool = 0;

    v10 = 0;
    self->_progressReporting = 0;
    self->_controlConfiguration = 0;
    self->_valueSetting = 0;
    self->_kindType = 66;
  }

  while (*&v6[*v7] < *&v6[*v8]);
  if (v10)
  {
    CCSetError();
  }

  else
  {
LABEL_729:
    if (!*&v6[*v9])
    {
      v10 = 0;
      v678 = 1;
      goto LABEL_733;
    }

LABEL_730:
    v674 = objc_opt_class();
    v675 = NSStringFromClass(v674);
    v676 = *&v6[*v9];
    v677 = CCInvalidBufferErrorForMessage();
    CCSetError();

    v10 = 0;
  }

  v678 = 0;
LABEL_733:

  return v678;
}

- (CCToolKitToolSystemToolProtocol)initWithKind:(id)a3 kindType:(unsigned int)a4 error:(id *)a5
{
  v8 = a3;
  v9 = objc_opt_new();
  if (v8 && a4 == 1)
  {
    objc_opt_class();
    IsInstanceOfExpectedClass = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (IsInstanceOfExpectedClass)
    {
      [v8 unsignedIntegerValue];
      v12 = CCValidateEnumField();
      v13 = v11;

      if (v12)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

LABEL_322:
    CCSetError();
    v21 = 0;
    goto LABEL_323;
  }

  if (v8 && a4 == 2)
  {
    objc_opt_class();
    v14 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v14)
    {
      [v8 unsignedIntegerValue];
      v15 = CCValidateEnumField();
      v13 = v11;

      if (v15)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_322;
  }

  if (v8 && a4 == 3)
  {
    objc_opt_class();
    v16 = CCValidateIsInstanceOfExpectedClass();
    v11 = 0;
    if (v16)
    {
      [v8 unsignedIntegerValue];
      v17 = CCValidateEnumField();
      v13 = v11;

      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    goto LABEL_322;
  }

  if (!v8 || a4 != 4)
  {
    if (v8 && a4 == 5)
    {
      objc_opt_class();
      v22 = CCValidateIsInstanceOfExpectedClass();
      v13 = 0;
      if (v22)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v8 && a4 == 6)
      {
        objc_opt_class();
        v24 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v24)
        {
          [v8 unsignedIntegerValue];
          v25 = CCValidateEnumField();
          v13 = v11;

          if (!v25)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 7)
      {
        objc_opt_class();
        v26 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v26)
        {
          [v8 unsignedIntegerValue];
          v27 = CCValidateEnumField();
          v13 = v11;

          if (!v27)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 8)
      {
        objc_opt_class();
        v28 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v28)
        {
          [v8 unsignedIntegerValue];
          v29 = CCValidateEnumField();
          v13 = v11;

          if (!v29)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 9)
      {
        objc_opt_class();
        v30 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v30)
        {
          [v8 unsignedIntegerValue];
          v31 = CCValidateEnumField();
          v13 = v11;

          if (!v31)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 10)
      {
        objc_opt_class();
        v32 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v32)
        {
          [v8 unsignedIntegerValue];
          v33 = CCValidateEnumField();
          v13 = v11;

          if (!v33)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 11)
      {
        objc_opt_class();
        v34 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v34)
        {
          [v8 unsignedIntegerValue];
          v35 = CCValidateEnumField();
          v13 = v11;

          if (!v35)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 12)
      {
        objc_opt_class();
        v36 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v36)
        {
          [v8 unsignedIntegerValue];
          v37 = CCValidateEnumField();
          v13 = v11;

          if (!v37)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 13)
      {
        objc_opt_class();
        v38 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v38)
        {
          [v8 unsignedIntegerValue];
          v39 = CCValidateEnumField();
          v13 = v11;

          if (!v39)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 14)
      {
        objc_opt_class();
        v40 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v40)
        {
          [v8 unsignedIntegerValue];
          v41 = CCValidateEnumField();
          v13 = v11;

          if (!v41)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 15)
      {
        objc_opt_class();
        v42 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v42)
        {
          [v8 unsignedIntegerValue];
          v43 = CCValidateEnumField();
          v13 = v11;

          if (!v43)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 16)
      {
        objc_opt_class();
        v44 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v44)
        {
          [v8 unsignedIntegerValue];
          v45 = CCValidateEnumField();
          v13 = v11;

          if (!v45)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 17)
      {
        objc_opt_class();
        v46 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v46)
        {
          [v8 unsignedIntegerValue];
          v47 = CCValidateEnumField();
          v13 = v11;

          if (!v47)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 18)
      {
        objc_opt_class();
        v48 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v48)
        {
          [v8 unsignedIntegerValue];
          v49 = CCValidateEnumField();
          v13 = v11;

          if (!v49)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 19)
      {
        objc_opt_class();
        v50 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v50)
        {
          [v8 unsignedIntegerValue];
          v51 = CCValidateEnumField();
          v13 = v11;

          if (!v51)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 20)
      {
        objc_opt_class();
        v52 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v52)
        {
          [v8 unsignedIntegerValue];
          v53 = CCValidateEnumField();
          v13 = v11;

          if (!v53)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 21)
      {
        objc_opt_class();
        v54 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v54)
        {
          [v8 unsignedIntegerValue];
          v55 = CCValidateEnumField();
          v13 = v11;

          if (!v55)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 22)
      {
        objc_opt_class();
        v56 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v56)
        {
          [v8 unsignedIntegerValue];
          v57 = CCValidateEnumField();
          v13 = v11;

          if (!v57)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 23)
      {
        objc_opt_class();
        v58 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v58)
        {
          [v8 unsignedIntegerValue];
          v59 = CCValidateEnumField();
          v13 = v11;

          if (!v59)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 24)
      {
        objc_opt_class();
        v60 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v60)
        {
          [v8 unsignedIntegerValue];
          v61 = CCValidateEnumField();
          v13 = v11;

          if (!v61)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 25)
      {
        objc_opt_class();
        v62 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v62)
        {
          [v8 unsignedIntegerValue];
          v63 = CCValidateEnumField();
          v13 = v11;

          if (!v63)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 26)
      {
        objc_opt_class();
        v64 = CCValidateIsInstanceOfExpectedClass();
        v11 = 0;
        if (v64)
        {
          [v8 unsignedIntegerValue];
          v65 = CCValidateEnumField();
          v13 = v11;

          if (!v65)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        goto LABEL_322;
      }

      if (v8 && a4 == 27)
      {
        objc_opt_class();
        v66 = CCValidateIsInstanceOfExpectedClass();
        v13 = 0;
        if (v66)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v8 && a4 == 28)
        {
          objc_opt_class();
          v67 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v67)
          {
            [v8 unsignedIntegerValue];
            v68 = CCValidateEnumField();
            v13 = v11;

            if (!v68)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 29)
        {
          objc_opt_class();
          v69 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v69)
          {
            [v8 unsignedIntegerValue];
            v70 = CCValidateEnumField();
            v13 = v11;

            if (!v70)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 30)
        {
          objc_opt_class();
          v71 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v71)
          {
            [v8 unsignedIntegerValue];
            v72 = CCValidateEnumField();
            v13 = v11;

            if (!v72)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 31)
        {
          objc_opt_class();
          v73 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v73)
          {
            [v8 unsignedIntegerValue];
            v74 = CCValidateEnumField();
            v13 = v11;

            if (!v74)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 32)
        {
          objc_opt_class();
          v75 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v75)
          {
            [v8 unsignedIntegerValue];
            v76 = CCValidateEnumField();
            v13 = v11;

            if (!v76)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 33)
        {
          objc_opt_class();
          v77 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v77)
          {
            [v8 unsignedIntegerValue];
            v78 = CCValidateEnumField();
            v13 = v11;

            if (!v78)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 34)
        {
          objc_opt_class();
          v79 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v79)
          {
            [v8 unsignedIntegerValue];
            v80 = CCValidateEnumField();
            v13 = v11;

            if (!v80)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 35)
        {
          objc_opt_class();
          v81 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v81)
          {
            [v8 unsignedIntegerValue];
            v82 = CCValidateEnumField();
            v13 = v11;

            if (!v82)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 36)
        {
          objc_opt_class();
          v83 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v83)
          {
            [v8 unsignedIntegerValue];
            v84 = CCValidateEnumField();
            v13 = v11;

            if (!v84)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 37)
        {
          objc_opt_class();
          v85 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v85)
          {
            [v8 unsignedIntegerValue];
            v86 = CCValidateEnumField();
            v13 = v11;

            if (!v86)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 38)
        {
          objc_opt_class();
          v87 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v87)
          {
            [v8 unsignedIntegerValue];
            v88 = CCValidateEnumField();
            v13 = v11;

            if (!v88)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 39)
        {
          objc_opt_class();
          v89 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v89)
          {
            [v8 unsignedIntegerValue];
            v90 = CCValidateEnumField();
            v13 = v11;

            if (!v90)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 40)
        {
          objc_opt_class();
          v91 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v91)
          {
            [v8 unsignedIntegerValue];
            v92 = CCValidateEnumField();
            v13 = v11;

            if (!v92)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 41)
        {
          objc_opt_class();
          v93 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v93)
          {
            [v8 unsignedIntegerValue];
            v94 = CCValidateEnumField();
            v13 = v11;

            if (!v94)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 42)
        {
          objc_opt_class();
          v95 = CCValidateIsInstanceOfExpectedClass();
          v11 = 0;
          if (v95)
          {
            [v8 unsignedIntegerValue];
            v96 = CCValidateEnumField();
            v13 = v11;

            if (!v96)
            {
              goto LABEL_21;
            }

            goto LABEL_20;
          }

          goto LABEL_322;
        }

        if (v8 && a4 == 43)
        {
          objc_opt_class();
          v97 = CCValidateIsInstanceOfExpectedClass();
          v13 = 0;
          if (v97)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v8 && a4 == 44)
          {
            objc_opt_class();
            v98 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v98)
            {
              [v8 unsignedIntegerValue];
              v99 = CCValidateEnumField();
              v13 = v11;

              if (!v99)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_322;
          }

          if (v8 && a4 == 45)
          {
            objc_opt_class();
            v100 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v100)
            {
              [v8 unsignedIntegerValue];
              v101 = CCValidateEnumField();
              v13 = v11;

              if (!v101)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_322;
          }

          if (v8 && a4 == 46)
          {
            objc_opt_class();
            v102 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v102)
            {
              [v8 unsignedIntegerValue];
              v103 = CCValidateEnumField();
              v13 = v11;

              if (!v103)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_322;
          }

          if (v8 && a4 == 47)
          {
            objc_opt_class();
            v104 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v104)
            {
              [v8 unsignedIntegerValue];
              v105 = CCValidateEnumField();
              v13 = v11;

              if (!v105)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_322;
          }

          if (v8 && a4 == 48)
          {
            objc_opt_class();
            v106 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v106)
            {
              [v8 unsignedIntegerValue];
              v107 = CCValidateEnumField();
              v13 = v11;

              if (!v107)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_322;
          }

          if (v8 && a4 == 49)
          {
            objc_opt_class();
            v108 = CCValidateIsInstanceOfExpectedClass();
            v11 = 0;
            if (v108)
            {
              [v8 unsignedIntegerValue];
              v109 = CCValidateEnumField();
              v13 = v11;

              if (!v109)
              {
                goto LABEL_21;
              }

              goto LABEL_20;
            }

            goto LABEL_322;
          }

          if (v8 && a4 == 50)
          {
            objc_opt_class();
            v110 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (v110)
            {
              goto LABEL_25;
            }
          }

          else if (v8 && a4 == 51)
          {
            objc_opt_class();
            v111 = CCValidateIsInstanceOfExpectedClass();
            v13 = 0;
            if (v111)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v8 && a4 == 52)
            {
              objc_opt_class();
              v112 = CCValidateIsInstanceOfExpectedClass();
              v11 = 0;
              if (v112)
              {
                [v8 unsignedIntegerValue];
                v113 = CCValidateEnumField();
                v13 = v11;

                if (!v113)
                {
                  goto LABEL_21;
                }

                goto LABEL_20;
              }

              goto LABEL_322;
            }

            if (v8 && a4 == 53)
            {
              objc_opt_class();
              v114 = CCValidateIsInstanceOfExpectedClass();
              v11 = 0;
              if (v114)
              {
                [v8 unsignedIntegerValue];
                v115 = CCValidateEnumField();
                v13 = v11;

                if (!v115)
                {
                  goto LABEL_21;
                }

                goto LABEL_20;
              }

              goto LABEL_322;
            }

            if (v8 && a4 == 54)
            {
              objc_opt_class();
              v116 = CCValidateIsInstanceOfExpectedClass();
              v13 = 0;
              if (v116)
              {
                goto LABEL_25;
              }
            }

            else if (v8 && a4 == 55)
            {
              objc_opt_class();
              v117 = CCValidateIsInstanceOfExpectedClass();
              v13 = 0;
              if (v117)
              {
                goto LABEL_25;
              }
            }

            else if (v8 && a4 == 56)
            {
              objc_opt_class();
              v118 = CCValidateIsInstanceOfExpectedClass();
              v13 = 0;
              if (v118)
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v8 && a4 == 57)
              {
                objc_opt_class();
                v119 = CCValidateIsInstanceOfExpectedClass();
                v11 = 0;
                if (v119)
                {
                  [v8 unsignedIntegerValue];
                  v120 = CCValidateEnumField();
                  v13 = v11;

                  if (!v120)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_20;
                }

                goto LABEL_322;
              }

              if (v8 && a4 == 58)
              {
                objc_opt_class();
                v121 = CCValidateIsInstanceOfExpectedClass();
                v11 = 0;
                if (v121)
                {
                  [v8 unsignedIntegerValue];
                  v122 = CCValidateEnumField();
                  v13 = v11;

                  if (!v122)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_20;
                }

                goto LABEL_322;
              }

              if (v8 && a4 == 59)
              {
                objc_opt_class();
                v123 = CCValidateIsInstanceOfExpectedClass();
                v11 = 0;
                if (v123)
                {
                  [v8 unsignedIntegerValue];
                  v124 = CCValidateEnumField();
                  v13 = v11;

                  if (!v124)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_20;
                }

                goto LABEL_322;
              }

              if (v8 && a4 == 60)
              {
                objc_opt_class();
                v125 = CCValidateIsInstanceOfExpectedClass();
                v13 = 0;
                if (v125)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                if (v8 && a4 == 61)
                {
                  objc_opt_class();
                  v126 = CCValidateIsInstanceOfExpectedClass();
                  v11 = 0;
                  if (v126)
                  {
                    [v8 unsignedIntegerValue];
                    v127 = CCValidateEnumField();
                    v13 = v11;

                    if (!v127)
                    {
                      goto LABEL_21;
                    }

                    goto LABEL_20;
                  }

                  goto LABEL_322;
                }

                if (!v8 || a4 != 62)
                {
                  if (v8 && a4 == 63)
                  {
                    objc_opt_class();
                    v129 = CCValidateIsInstanceOfExpectedClass();
                    v11 = 0;
                    if (v129)
                    {
                      [v8 unsignedIntegerValue];
                      v130 = CCValidateEnumField();
                      v13 = v11;

                      if (!v130)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_20;
                    }
                  }

                  else if (v8 && a4 == 64)
                  {
                    objc_opt_class();
                    v131 = CCValidateIsInstanceOfExpectedClass();
                    v11 = 0;
                    if (v131)
                    {
                      [v8 unsignedIntegerValue];
                      v132 = CCValidateEnumField();
                      v13 = v11;

                      if (!v132)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_20;
                    }
                  }

                  else if (v8 && a4 == 65)
                  {
                    objc_opt_class();
                    v133 = CCValidateIsInstanceOfExpectedClass();
                    v11 = 0;
                    if (v133)
                    {
                      [v8 unsignedIntegerValue];
                      v134 = CCValidateEnumField();
                      v13 = v11;

                      if (!v134)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_20;
                    }
                  }

                  else
                  {
                    v13 = 0;
                    if (!v8 || a4 != 66)
                    {
                      goto LABEL_21;
                    }

                    objc_opt_class();
                    v135 = CCValidateIsInstanceOfExpectedClass();
                    v11 = 0;
                    if (v135)
                    {
                      [v8 unsignedIntegerValue];
                      v138 = v11;
                      v136 = CCValidateEnumField();
                      v13 = v11;

                      if (!v136)
                      {
                        goto LABEL_21;
                      }

                      goto LABEL_20;
                    }
                  }

                  goto LABEL_322;
                }

                objc_opt_class();
                v128 = CCValidateIsInstanceOfExpectedClass();
                v13 = 0;
                if (v128)
                {
LABEL_25:
                  v23 = [v8 data];
                  CCPBDataWriterWriteDataField();

                  goto LABEL_21;
                }
              }
            }
          }
        }
      }
    }

    CCSetError();
    v21 = 0;
    v11 = v13;
    goto LABEL_323;
  }

  objc_opt_class();
  v18 = CCValidateIsInstanceOfExpectedClass();
  v11 = 0;
  if (!v18)
  {
    goto LABEL_322;
  }

  [v8 unsignedIntegerValue];
  v19 = CCValidateEnumField();
  v13 = v11;

  if (v19)
  {
LABEL_20:
    CCPBDataWriterWriteUint32Field();
  }

LABEL_21:
  v20 = [v9 immutableData];
  self = [(CCItemMessage *)self initWithData:v20 error:a5];

  v11 = v13;
  v21 = self;
LABEL_323:

  return v21;
}

@end
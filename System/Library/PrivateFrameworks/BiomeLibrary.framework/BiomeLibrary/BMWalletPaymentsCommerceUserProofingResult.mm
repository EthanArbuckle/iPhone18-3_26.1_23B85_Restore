@interface BMWalletPaymentsCommerceUserProofingResult
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWalletPaymentsCommerceUserProofingResult)initWithAge:(id)a3 gender:(id)a4 skinTone:(id)a5 ethnicity:(id)a6 deviceLanguage:(id)a7 proofingDecision:(id)a8 issuer:(id)a9 alAssessment:(id)a10 alGestureAssessment:(id)a11 axSettings:(id)a12 alFacVersion:(id)a13 alFacePoseVersion:(id)a14 alPadtoolVersion:(id)a15 alPrdVersion:(id)a16 didStepUp:(id)a17 plGestureAssessment:(id)a18 plAssessment:(id)a19 plFacVersion:(id)a20 plFacePoseVersion:(id)a21 plPadtoolVersion:(id)a22 plPrdVersion:(id)a23 shadowLabel:(id)a24 smFacVersion:(id)a25 smFacePoseVersion:(id)a26 smPrdVersion:(id)a27 smPadtoolVersion:(id)a28 smLivenessAssessment:(id)a29 smGestureAssessment:(id)a30 smLivenessType:(id)a31 fmAssessment:(id)a32 fmModelVersion:(id)a33 fmDetectorModelVersion:(id)a34 fmSMAssessment:(id)a35 fmSMModelVersion:(id)a36 fmSMDetectorModelVersion:(id)a37 identityType:(id)a38;
- (BMWalletPaymentsCommerceUserProofingResult)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_axSettingsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWalletPaymentsCommerceUserProofingResult

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
    v7 = [v5 age];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
      v10 = [v5 age];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_142;
      }
    }

    v13 = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
    v14 = [v5 gender];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
      v17 = [v5 gender];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_142;
      }
    }

    v19 = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
    v20 = [v5 skinTone];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
      v23 = [v5 skinTone];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_142;
      }
    }

    v25 = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
    v26 = [v5 ethnicity];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
      v29 = [v5 ethnicity];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_142;
      }
    }

    v31 = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
    v32 = [v5 deviceLanguage];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
      v35 = [v5 deviceLanguage];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
        goto LABEL_142;
      }
    }

    v37 = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
    v38 = [v5 proofingDecision];
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      v40 = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
      v41 = [v5 proofingDecision];
      v42 = [v40 isEqual:v41];

      if (!v42)
      {
        goto LABEL_142;
      }
    }

    v43 = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
    v44 = [v5 issuer];
    v45 = v44;
    if (v43 == v44)
    {
    }

    else
    {
      v46 = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
      v47 = [v5 issuer];
      v48 = [v46 isEqual:v47];

      if (!v48)
      {
        goto LABEL_142;
      }
    }

    v49 = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
    v50 = [v5 alAssessment];
    v51 = v50;
    if (v49 == v50)
    {
    }

    else
    {
      v52 = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
      v53 = [v5 alAssessment];
      v54 = [v52 isEqual:v53];

      if (!v54)
      {
        goto LABEL_142;
      }
    }

    v55 = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
    v56 = [v5 alGestureAssessment];
    v57 = v56;
    if (v55 == v56)
    {
    }

    else
    {
      v58 = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
      v59 = [v5 alGestureAssessment];
      v60 = [v58 isEqual:v59];

      if (!v60)
      {
        goto LABEL_142;
      }
    }

    v61 = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
    v62 = [v5 axSettings];
    v63 = v62;
    if (v61 == v62)
    {
    }

    else
    {
      v64 = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
      v65 = [v5 axSettings];
      v66 = [v64 isEqual:v65];

      if (!v66)
      {
        goto LABEL_142;
      }
    }

    v67 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
    v68 = [v5 alFacVersion];
    v69 = v68;
    if (v67 == v68)
    {
    }

    else
    {
      v70 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
      v71 = [v5 alFacVersion];
      v72 = [v70 isEqual:v71];

      if (!v72)
      {
        goto LABEL_142;
      }
    }

    v73 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
    v74 = [v5 alFacePoseVersion];
    v75 = v74;
    if (v73 == v74)
    {
    }

    else
    {
      v76 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
      v77 = [v5 alFacePoseVersion];
      v78 = [v76 isEqual:v77];

      if (!v78)
      {
        goto LABEL_142;
      }
    }

    v79 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
    v80 = [v5 alPadtoolVersion];
    v81 = v80;
    if (v79 == v80)
    {
    }

    else
    {
      v82 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
      v83 = [v5 alPadtoolVersion];
      v84 = [v82 isEqual:v83];

      if (!v84)
      {
        goto LABEL_142;
      }
    }

    v85 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
    v86 = [v5 alPrdVersion];
    v87 = v86;
    if (v85 == v86)
    {
    }

    else
    {
      v88 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
      v89 = [v5 alPrdVersion];
      v90 = [v88 isEqual:v89];

      if (!v90)
      {
        goto LABEL_142;
      }
    }

    if (-[BMWalletPaymentsCommerceUserProofingResult hasDidStepUp](self, "hasDidStepUp") || [v5 hasDidStepUp])
    {
      if (![(BMWalletPaymentsCommerceUserProofingResult *)self hasDidStepUp])
      {
        goto LABEL_142;
      }

      if (![v5 hasDidStepUp])
      {
        goto LABEL_142;
      }

      v91 = [(BMWalletPaymentsCommerceUserProofingResult *)self didStepUp];
      if (v91 != [v5 didStepUp])
      {
        goto LABEL_142;
      }
    }

    v92 = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
    v93 = [v5 plGestureAssessment];
    v94 = v93;
    if (v92 == v93)
    {
    }

    else
    {
      v95 = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
      v96 = [v5 plGestureAssessment];
      v97 = [v95 isEqual:v96];

      if (!v97)
      {
        goto LABEL_142;
      }
    }

    v98 = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
    v99 = [v5 plAssessment];
    v100 = v99;
    if (v98 == v99)
    {
    }

    else
    {
      v101 = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
      v102 = [v5 plAssessment];
      v103 = [v101 isEqual:v102];

      if (!v103)
      {
        goto LABEL_142;
      }
    }

    v104 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
    v105 = [v5 plFacVersion];
    v106 = v105;
    if (v104 == v105)
    {
    }

    else
    {
      v107 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
      v108 = [v5 plFacVersion];
      v109 = [v107 isEqual:v108];

      if (!v109)
      {
        goto LABEL_142;
      }
    }

    v110 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
    v111 = [v5 plFacePoseVersion];
    v112 = v111;
    if (v110 == v111)
    {
    }

    else
    {
      v113 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
      v114 = [v5 plFacePoseVersion];
      v115 = [v113 isEqual:v114];

      if (!v115)
      {
        goto LABEL_142;
      }
    }

    v116 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
    v117 = [v5 plPadtoolVersion];
    v118 = v117;
    if (v116 == v117)
    {
    }

    else
    {
      v119 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
      v120 = [v5 plPadtoolVersion];
      v121 = [v119 isEqual:v120];

      if (!v121)
      {
        goto LABEL_142;
      }
    }

    v122 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
    v123 = [v5 plPrdVersion];
    v124 = v123;
    if (v122 == v123)
    {
    }

    else
    {
      v125 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
      v126 = [v5 plPrdVersion];
      v127 = [v125 isEqual:v126];

      if (!v127)
      {
        goto LABEL_142;
      }
    }

    v128 = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
    v129 = [v5 shadowLabel];
    v130 = v129;
    if (v128 == v129)
    {
    }

    else
    {
      v131 = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
      v132 = [v5 shadowLabel];
      v133 = [v131 isEqual:v132];

      if (!v133)
      {
        goto LABEL_142;
      }
    }

    v134 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
    v135 = [v5 smFacVersion];
    v136 = v135;
    if (v134 == v135)
    {
    }

    else
    {
      v137 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
      v138 = [v5 smFacVersion];
      v139 = [v137 isEqual:v138];

      if (!v139)
      {
        goto LABEL_142;
      }
    }

    v140 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
    v141 = [v5 smFacePoseVersion];
    v142 = v141;
    if (v140 == v141)
    {
    }

    else
    {
      v143 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
      v144 = [v5 smFacePoseVersion];
      v145 = [v143 isEqual:v144];

      if (!v145)
      {
        goto LABEL_142;
      }
    }

    v146 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
    v147 = [v5 smPrdVersion];
    v148 = v147;
    if (v146 == v147)
    {
    }

    else
    {
      v149 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
      v150 = [v5 smPrdVersion];
      v151 = [v149 isEqual:v150];

      if (!v151)
      {
        goto LABEL_142;
      }
    }

    v152 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
    v153 = [v5 smPadtoolVersion];
    v154 = v153;
    if (v152 == v153)
    {
    }

    else
    {
      v155 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
      v156 = [v5 smPadtoolVersion];
      v157 = [v155 isEqual:v156];

      if (!v157)
      {
        goto LABEL_142;
      }
    }

    v158 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
    v159 = [v5 smLivenessAssessment];
    v160 = v159;
    if (v158 == v159)
    {
    }

    else
    {
      v161 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
      v162 = [v5 smLivenessAssessment];
      v163 = [v161 isEqual:v162];

      if (!v163)
      {
        goto LABEL_142;
      }
    }

    v164 = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
    v165 = [v5 smGestureAssessment];
    v166 = v165;
    if (v164 == v165)
    {
    }

    else
    {
      v167 = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
      v168 = [v5 smGestureAssessment];
      v169 = [v167 isEqual:v168];

      if (!v169)
      {
        goto LABEL_142;
      }
    }

    v170 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
    v171 = [v5 smLivenessType];
    v172 = v171;
    if (v170 == v171)
    {
    }

    else
    {
      v173 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
      v174 = [v5 smLivenessType];
      v175 = [v173 isEqual:v174];

      if (!v175)
      {
        goto LABEL_142;
      }
    }

    v176 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
    v177 = [v5 fmAssessment];
    v178 = v177;
    if (v176 == v177)
    {
    }

    else
    {
      v179 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
      v180 = [v5 fmAssessment];
      v181 = [v179 isEqual:v180];

      if (!v181)
      {
        goto LABEL_142;
      }
    }

    v182 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
    v183 = [v5 fmModelVersion];
    v184 = v183;
    if (v182 == v183)
    {
    }

    else
    {
      v185 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
      v186 = [v5 fmModelVersion];
      v187 = [v185 isEqual:v186];

      if (!v187)
      {
        goto LABEL_142;
      }
    }

    v188 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
    v189 = [v5 fmDetectorModelVersion];
    v190 = v189;
    if (v188 == v189)
    {
    }

    else
    {
      v191 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
      v192 = [v5 fmDetectorModelVersion];
      v193 = [v191 isEqual:v192];

      if (!v193)
      {
        goto LABEL_142;
      }
    }

    v194 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
    v195 = [v5 fmSMAssessment];
    v196 = v195;
    if (v194 == v195)
    {
    }

    else
    {
      v197 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
      v198 = [v5 fmSMAssessment];
      v199 = [v197 isEqual:v198];

      if (!v199)
      {
        goto LABEL_142;
      }
    }

    v200 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
    v201 = [v5 fmSMModelVersion];
    v202 = v201;
    if (v200 == v201)
    {
    }

    else
    {
      v203 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
      v204 = [v5 fmSMModelVersion];
      v205 = [v203 isEqual:v204];

      if (!v205)
      {
        goto LABEL_142;
      }
    }

    v206 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
    v207 = [v5 fmSMDetectorModelVersion];
    v208 = v207;
    if (v206 == v207)
    {
    }

    else
    {
      v209 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
      v210 = [v5 fmSMDetectorModelVersion];
      v211 = [v209 isEqual:v210];

      if (!v211)
      {
LABEL_142:
        v12 = 0;
LABEL_143:

        goto LABEL_144;
      }
    }

    v213 = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
    v214 = [v5 identityType];
    if (v213 == v214)
    {
      v12 = 1;
    }

    else
    {
      v215 = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
      v216 = [v5 identityType];
      v12 = [v215 isEqual:v216];
    }

    goto LABEL_143;
  }

  v12 = 0;
LABEL_144:

  return v12;
}

- (id)jsonDictionary
{
  v252 = *MEMORY[0x1E69E9840];
  v3 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
  v4 = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
  v5 = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
  v6 = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
  v7 = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
  v8 = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
  v9 = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
  v10 = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
  v115 = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
  v140 = [(BMWalletPaymentsCommerceUserProofingResult *)self _axSettingsJSONArray];
  v114 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
  v139 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
  v138 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
  v137 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
  if ([(BMWalletPaymentsCommerceUserProofingResult *)self hasDidStepUp])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceUserProofingResult didStepUp](self, "didStepUp")}];
  }

  else
  {
    v136 = 0;
  }

  v135 = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
  v134 = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
  v133 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
  v132 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
  v131 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
  v130 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
  v129 = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
  v128 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
  v127 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
  v126 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
  v125 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
  v124 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
  v123 = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
  v122 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
  v121 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
  v120 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
  v119 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
  v118 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
  v117 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
  v116 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
  v11 = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
  v141[0] = @"age";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = v12;
  v196[0] = v12;
  v141[1] = @"gender";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = v13;
  v196[1] = v13;
  v141[2] = @"skinTone";
  v14 = v5;
  if (!v5)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = v14;
  v196[2] = v14;
  v141[3] = @"ethnicity";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = v15;
  v196[3] = v15;
  v141[4] = @"deviceLanguage";
  v16 = v7;
  if (!v7)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = v16;
  v196[4] = v16;
  v141[5] = @"proofingDecision";
  v17 = v8;
  if (!v8)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = v11;
  v102 = v17;
  v196[5] = v17;
  v141[6] = @"issuer";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = v18;
  v196[6] = v18;
  v141[7] = @"alAssessment";
  if (v10)
  {
    v197 = v10;
    v142 = @"livenessAssessment";
    v19 = v10;
  }

  else
  {
    v76 = [MEMORY[0x1E695DFB0] null];
    v197 = v76;
    v142 = @"livenessAssessment";
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = v19;
  v198 = v19;
  v143 = @"alGestureAssessment";
  if (v115)
  {
    v199 = v115;
    v144 = @"gestureAssessment";
    v20 = v115;
  }

  else
  {
    v75 = [MEMORY[0x1E695DFB0] null];
    v199 = v75;
    v144 = @"gestureAssessment";
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = v20;
  v200 = v20;
  v145 = @"axSettings";
  v21 = v140;
  if (!v140)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = v21;
  v201 = v21;
  v146 = @"alFacVersion";
  if (v114)
  {
    v202 = v114;
    v147 = @"facVersion";
    v22 = v114;
  }

  else
  {
    v74 = [MEMORY[0x1E695DFB0] null];
    v202 = v74;
    v147 = @"facVersion";
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = v22;
  v203 = v22;
  v148 = @"alFacePoseVersion";
  if (v139)
  {
    v204 = v139;
    v149 = @"facePoseVersion";
    v23 = v139;
  }

  else
  {
    v73 = [MEMORY[0x1E695DFB0] null];
    v204 = v73;
    v149 = @"facePoseVersion";
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = v23;
  v205 = v23;
  v150 = @"alPadtoolVersion";
  if (v138)
  {
    v206 = v138;
    v151 = @"padtoolVersion";
    v24 = v138;
  }

  else
  {
    v72 = [MEMORY[0x1E695DFB0] null];
    v206 = v72;
    v151 = @"padtoolVersion";
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = v24;
  v207 = v24;
  v152 = @"alPrdVersion";
  if (v137)
  {
    v208 = v137;
    v153 = @"prdVersion";
    v25 = v137;
  }

  else
  {
    v71 = [MEMORY[0x1E695DFB0] null];
    v208 = v71;
    v153 = @"prdVersion";
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v25;
  v209 = v25;
  v154 = @"didStepUp";
  v26 = v136;
  if (!v136)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = v26;
  v210 = v26;
  v155 = @"plGestureAssessment";
  if (v135)
  {
    v211 = v135;
    v156 = @"passiveGestureAssessment";
    v27 = v135;
  }

  else
  {
    v70 = [MEMORY[0x1E695DFB0] null];
    v211 = v70;
    v156 = @"passiveGestureAssessment";
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = v27;
  v212 = v27;
  v157 = @"plAssessment";
  if (v134)
  {
    v213 = v134;
    v158 = @"passiveLivenessAssessment";
    v28 = v134;
  }

  else
  {
    v69 = [MEMORY[0x1E695DFB0] null];
    v213 = v69;
    v158 = @"passiveLivenessAssessment";
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = v28;
  v214 = v28;
  v159 = @"plFacVersion";
  if (v133)
  {
    v215 = v133;
    v160 = @"passiveLivenessFacVersion";
    v29 = v133;
  }

  else
  {
    v68 = [MEMORY[0x1E695DFB0] null];
    v215 = v68;
    v160 = @"passiveLivenessFacVersion";
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = v29;
  v216 = v29;
  v161 = @"plFacePoseVersion";
  if (v132)
  {
    v217 = v132;
    v162 = @"passiveLivenessFacePoseVersion";
    v30 = v132;
  }

  else
  {
    v67 = [MEMORY[0x1E695DFB0] null];
    v217 = v67;
    v162 = @"passiveLivenessFacePoseVersion";
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = v30;
  v218 = v30;
  v163 = @"plPadtoolVersion";
  if (v131)
  {
    v219 = v131;
    v164 = @"passiveLivenessPadtoolVersion";
    v31 = v131;
  }

  else
  {
    v66 = [MEMORY[0x1E695DFB0] null];
    v219 = v66;
    v164 = @"passiveLivenessPadtoolVersion";
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = v31;
  v220 = v31;
  v165 = @"plPrdVersion";
  if (v130)
  {
    v221 = v130;
    v166 = @"passiveLivenessPrdVersion";
    v32 = v130;
  }

  else
  {
    v65 = [MEMORY[0x1E695DFB0] null];
    v221 = v65;
    v166 = @"passiveLivenessPrdVersion";
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = v32;
  v222 = v32;
  v167 = @"shadowLabel";
  if (v129)
  {
    v223 = v129;
    v168 = @"livenessShadowLabel";
    v33 = v129;
  }

  else
  {
    v64 = [MEMORY[0x1E695DFB0] null];
    v223 = v64;
    v168 = @"livenessShadowLabel";
    v33 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = v33;
  v224 = v33;
  v169 = @"smFacVersion";
  if (v128)
  {
    v225 = v128;
    v170 = @"livenessShadowFacVersion";
    v34 = v128;
  }

  else
  {
    v63 = [MEMORY[0x1E695DFB0] null];
    v225 = v63;
    v170 = @"livenessShadowFacVersion";
    v34 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = v34;
  v226 = v34;
  v171 = @"smFacePoseVersion";
  if (v127)
  {
    v227 = v127;
    v172 = @"livenessShadowFacePoseVersion";
    v35 = v127;
  }

  else
  {
    v62 = [MEMORY[0x1E695DFB0] null];
    v227 = v62;
    v172 = @"livenessShadowFacePoseVersion";
    v35 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = v35;
  v228 = v35;
  v173 = @"smPrdVersion";
  if (v126)
  {
    v229 = v126;
    v174 = @"livenessShadowPrdVersion";
    v36 = v126;
  }

  else
  {
    v61 = [MEMORY[0x1E695DFB0] null];
    v229 = v61;
    v174 = @"livenessShadowPrdVersion";
    v36 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = v36;
  v230 = v36;
  v175 = @"smPadtoolVersion";
  if (v125)
  {
    v231 = v125;
    v176 = @"livenessShadowPadtoolVersion";
    v37 = v125;
  }

  else
  {
    v60 = [MEMORY[0x1E695DFB0] null];
    v231 = v60;
    v176 = @"livenessShadowPadtoolVersion";
    v37 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = v37;
  v232 = v37;
  v177 = @"smLivenessAssessment";
  if (v124)
  {
    v233 = v124;
    v178 = @"livenessShadowLivenessAssessment";
    v38 = v124;
  }

  else
  {
    v59 = [MEMORY[0x1E695DFB0] null];
    v233 = v59;
    v178 = @"livenessShadowLivenessAssessment";
    v38 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = v38;
  v234 = v38;
  v179 = @"smGestureAssessment";
  if (v123)
  {
    v235 = v123;
    v180 = @"livenessShadowGestureAssessment";
    v39 = v123;
  }

  else
  {
    v58 = [MEMORY[0x1E695DFB0] null];
    v235 = v58;
    v180 = @"livenessShadowGestureAssessment";
    v39 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = v4;
  v112 = v3;
  v80 = v39;
  v236 = v39;
  v181 = @"smLivenessType";
  if (v122)
  {
    v237 = v122;
    v182 = @"livenessShadowLivenessType";
    v40 = v122;
  }

  else
  {
    v57 = [MEMORY[0x1E695DFB0] null];
    v237 = v57;
    v182 = @"livenessShadowLivenessType";
    v40 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = v40;
  v238 = v40;
  v183 = @"fmAssessment";
  if (v121)
  {
    v239 = v121;
    v184 = @"faceMatchingAssessment";
    v41 = v121;
  }

  else
  {
    v56 = [MEMORY[0x1E695DFB0] null];
    v239 = v56;
    v184 = @"faceMatchingAssessment";
    v41 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = v41;
  v240 = v41;
  v185 = @"fmModelVersion";
  if (v120)
  {
    v241 = v120;
    v186 = @"faceMatchingModelVersion";
    v42 = v120;
  }

  else
  {
    v55 = [MEMORY[0x1E695DFB0] null];
    v241 = v55;
    v186 = @"faceMatchingModelVersion";
    v42 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = v10;
  v110 = v8;
  v77 = v42;
  v242 = v42;
  v187 = @"fmDetectorModelVersion";
  v43 = v119;
  if (v119)
  {
    v243 = v119;
    v188 = @"faceMatchingDetectorModelVersion";
  }

  else
  {
    v54 = [MEMORY[0x1E695DFB0] null];
    v243 = v54;
    v188 = @"faceMatchingDetectorModelVersion";
    v43 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v9;
  v244 = v43;
  v189 = @"fmSMAssessment";
  v45 = v118;
  if (v118)
  {
    v245 = v118;
    v190 = @"faceMatchingShadowAssessment";
  }

  else
  {
    v53 = [MEMORY[0x1E695DFB0] null];
    v245 = v53;
    v190 = @"faceMatchingShadowAssessment";
    v45 = [MEMORY[0x1E695DFB0] null];
  }

  v246 = v45;
  v191 = @"fmSMModelVersion";
  v46 = v5;
  if (v117)
  {
    v247 = v117;
    v192 = @"faceMatchingShadowModelVersion";
    v47 = v117;
  }

  else
  {
    v3 = 0x1E695D000;
    v52 = [MEMORY[0x1E695DFB0] null];
    v247 = v52;
    v192 = @"faceMatchingShadowModelVersion";
    v47 = [MEMORY[0x1E695DFB0] null];
  }

  v248 = v47;
  v193 = @"fmSMDetectorModelVersion";
  if (v116)
  {
    v249 = v116;
    v194 = @"faceMatchingShadowDetectorModelVersion";
    v48 = v116;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFB0] null];
    v249 = v3;
    v194 = @"faceMatchingShadowDetectorModelVersion";
    v48 = [MEMORY[0x1E695DFB0] null];
  }

  v250 = v48;
  v195 = @"identityType";
  v49 = v113;
  if (!v113)
  {
    v49 = [MEMORY[0x1E695DFB0] null];
  }

  v251 = v49;
  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v196 forKeys:v141 count:62];
  if (!v113)
  {
  }

  if (!v116)
  {
  }

  if (!v117)
  {
  }

  if (!v118)
  {
  }

  if (!v119)
  {
  }

  if (!v120)
  {
  }

  if (!v121)
  {
  }

  if (!v122)
  {
  }

  if (!v123)
  {
  }

  if (!v124)
  {
  }

  if (!v125)
  {
  }

  if (!v126)
  {
  }

  if (!v127)
  {
  }

  if (!v128)
  {
  }

  if (!v129)
  {
  }

  if (!v130)
  {
  }

  if (!v131)
  {
  }

  if (!v132)
  {
  }

  if (!v133)
  {
  }

  if (!v134)
  {
  }

  if (!v135)
  {
  }

  if (!v136)
  {
  }

  if (!v137)
  {
  }

  if (!v138)
  {
  }

  if (v139)
  {
    if (v114)
    {
      goto LABEL_152;
    }
  }

  else
  {

    if (v114)
    {
      goto LABEL_152;
    }
  }

LABEL_152:
  if (v140)
  {
    if (v115)
    {
      goto LABEL_154;
    }
  }

  else
  {

    if (v115)
    {
LABEL_154:
      if (v109)
      {
        goto LABEL_155;
      }

      goto LABEL_169;
    }
  }

  if (v109)
  {
LABEL_155:
    if (v44)
    {
      goto LABEL_156;
    }

    goto LABEL_170;
  }

LABEL_169:

  if (v44)
  {
LABEL_156:
    if (v110)
    {
      goto LABEL_157;
    }

    goto LABEL_171;
  }

LABEL_170:

  if (v110)
  {
LABEL_157:
    if (v7)
    {
      goto LABEL_158;
    }

    goto LABEL_172;
  }

LABEL_171:

  if (v7)
  {
LABEL_158:
    if (v6)
    {
      goto LABEL_159;
    }

    goto LABEL_173;
  }

LABEL_172:

  if (v6)
  {
LABEL_159:
    if (v46)
    {
      goto LABEL_160;
    }

    goto LABEL_174;
  }

LABEL_173:

  if (v46)
  {
LABEL_160:
    if (v111)
    {
      goto LABEL_161;
    }

LABEL_175:

    if (v112)
    {
      goto LABEL_162;
    }

    goto LABEL_176;
  }

LABEL_174:

  if (!v111)
  {
    goto LABEL_175;
  }

LABEL_161:
  if (v112)
  {
    goto LABEL_162;
  }

LABEL_176:

LABEL_162:
  v50 = *MEMORY[0x1E69E9840];

  return v108;
}

- (id)_axSettingsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceUserProofingResult)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v415[1] = *MEMORY[0x1E69E9840];
  v334 = a3;
  v6 = [v334 objectForKeyedSubscript:@"age"];
  v7 = 0x1E695D000uLL;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v414 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"age"];
        v415[0] = v33;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v415 forKeys:&v414 count:1];
        v8 = 0;
        v34 = 0;
        *a4 = [v31 initWithDomain:v32 code:2 userInfo:v9];
        goto LABEL_437;
      }

      v8 = 0;
      v34 = 0;
      goto LABEL_438;
    }

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = [v334 objectForKeyedSubscript:@"gender"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v37 = *MEMORY[0x1E698F240];
        v412 = *MEMORY[0x1E696A578];
        v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"gender"];
        v413 = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v413 forKeys:&v412 count:1];
        v40 = v36;
        v13 = v38;
        v333 = v39;
        v41 = [v40 initWithDomain:v37 code:2 userInfo:v39];
        v33 = 0;
        v34 = 0;
        *a4 = v41;
        goto LABEL_436;
      }

      v33 = 0;
      v34 = 0;
      goto LABEL_437;
    }

    v332 = v9;
    v7 = 0x1E695D000;
  }

  else
  {
    v332 = 0;
  }

  v10 = [v334 objectForKeyedSubscript:@"skinTone"];
  v331 = v9;
  v333 = v10;
  if (v10 && (v11 = v10, v12 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        v13 = 0;
        v34 = 0;
        v33 = v332;
        goto LABEL_436;
      }

      v319 = a4;
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v410 = *MEMORY[0x1E696A578];
      a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"skinTone"];
      v411 = a4;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
      v45 = v42;
      v15 = v44;
      v46 = [v45 initWithDomain:v43 code:2 userInfo:v44];
      v13 = 0;
      v34 = 0;
      *v319 = v46;
      goto LABEL_74;
    }

    v13 = v11;
    v7 = 0x1E695D000;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v334 objectForKeyedSubscript:@"ethnicity"];
  v330 = v14;
  if (v14)
  {
    v15 = v14;
    v16 = *(v7 + 4016);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v329 = v15;
        v7 = 0x1E695D000;
        goto LABEL_13;
      }

      if (a4)
      {
        v320 = a4;
        v47 = v13;
        v48 = objc_alloc(MEMORY[0x1E696ABC0]);
        v49 = *MEMORY[0x1E698F240];
        v408 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"ethnicity"];
        v409 = v50;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
        v51 = v48;
        v13 = v47;
        v52 = [v51 initWithDomain:v49 code:2 userInfo:v17];
        a4 = 0;
        v34 = 0;
        *v320 = v52;
        v33 = v332;
        goto LABEL_434;
      }

      v34 = 0;
LABEL_74:
      v33 = v332;
      goto LABEL_435;
    }
  }

  v329 = 0;
LABEL_13:
  v17 = [v334 objectForKeyedSubscript:@"deviceLanguage"];
  if (v17 && (v18 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v310 = v13;
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        v321 = a4;
        v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceLanguage"];
        v407 = v325;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v56 = v53;
        v13 = v310;
        a4 = v329;
        v326 = v55;
        v57 = [v56 initWithDomain:v54 code:2 userInfo:?];
        v50 = 0;
        v34 = 0;
        *v321 = v57;
        v33 = v332;
        goto LABEL_433;
      }

      v50 = 0;
      v34 = 0;
      v33 = v332;
      a4 = v329;
      goto LABEL_434;
    }

    v317 = v17;
    v7 = 0x1E695D000;
  }

  else
  {
    v317 = 0;
  }

  v19 = [v334 objectForKeyedSubscript:@"proofingDecision"];
  v326 = v19;
  if (v19 && (v20 = v19, v21 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v311 = v13;
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E698F240];
        v404 = *MEMORY[0x1E696A578];
        v322 = a4;
        v316 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"proofingDecision"];
        v405 = v316;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
        v60 = v58;
        v13 = v311;
        a4 = v329;
        v61 = [v60 initWithDomain:v59 code:2 userInfo:v27];
        v325 = 0;
        v34 = 0;
        *v322 = v61;
        v33 = v332;
        v50 = v317;
        goto LABEL_432;
      }

      v325 = 0;
      v34 = 0;
      v33 = v332;
      v50 = v317;
      a4 = v329;
      goto LABEL_433;
    }

    v35 = v13;
    v23 = v17;
    v24 = v8;
    v25 = self;
    v26 = v35;
    v327 = v6;
    v325 = v20;
  }

  else
  {
    v22 = v13;
    v23 = v17;
    v24 = v8;
    v25 = self;
    v26 = v22;
    v327 = v6;
    v325 = 0;
  }

  v324 = v24;
  v27 = [v334 objectForKeyedSubscript:@"issuer"];
  v318 = v27;
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v313 = v26;
        v67 = objc_alloc(MEMORY[0x1E696ABC0]);
        v68 = *MEMORY[0x1E698F240];
        v402 = *MEMORY[0x1E696A578];
        v69 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"issuer"];
        v403 = a4;
        v315 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
        v70 = [v67 initWithDomain:v68 code:2 userInfo:?];
        v316 = 0;
        v34 = 0;
        *v69 = v70;
        v33 = v332;
        v50 = v317;
        v71 = v25;
        v8 = v324;
        v17 = v23;
        v6 = v327;
        v13 = v313;
        self = v71;
        goto LABEL_431;
      }

      v316 = 0;
      v34 = 0;
      v33 = v332;
      v50 = v317;
      v106 = v25;
      v8 = v324;
      v6 = v327;
      v107 = v26;
      self = v106;
      a4 = v329;
      v17 = v23;
      v13 = v107;
      goto LABEL_432;
    }

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  v29 = [v334 objectForKeyedSubscript:@"alAssessment"];
  v316 = v28;
  v308 = v23;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = [v334 objectForKeyedSubscript:@"livenessAssessment"];

    if (!v30)
    {
      v315 = 0;
      goto LABEL_62;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v315 = v30;
LABEL_62:
    v305 = 0;
    goto LABEL_63;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v315 = v30;
    if (a4)
    {
      v312 = v26;
      v62 = a4;
      v63 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = *MEMORY[0x1E698F240];
      v400 = *MEMORY[0x1E696A578];
      v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alAssessment"];
      v401 = v307;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
      v309 = v13 = v312;
      v65 = [v63 initWithDomain:v64 code:2 userInfo:v309];
      a4 = 0;
      v34 = 0;
      *v62 = v65;
      v33 = v332;
      v50 = v317;
      v66 = v25;
      v8 = v324;
      v6 = v327;
      self = v66;
      goto LABEL_430;
    }

    v34 = 0;
    v33 = v332;
    v50 = v317;
    v103 = v25;
    v8 = v324;
    v6 = v327;
    v104 = v26;
    self = v103;
    v17 = v23;
    v13 = v104;
    goto LABEL_431;
  }

  v315 = v30;
  v305 = v315;
LABEL_63:
  v72 = [v334 objectForKeyedSubscript:@"alGestureAssessment"];
  if (v72)
  {
    v73 = v72;
  }

  else
  {
    v73 = [v334 objectForKeyedSubscript:@"gestureAssessment"];

    if (!v73)
    {
      v323 = a4;
      v309 = 0;
      goto LABEL_76;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v309 = v73;
      if (a4)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = *MEMORY[0x1E698F240];
        v398 = *MEMORY[0x1E696A578];
        v306 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alGestureAssessment"];
        v399 = v306;
        v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
        v76 = [v74 initWithDomain:v75 code:2 userInfo:?];
        v307 = 0;
        v34 = 0;
        *a4 = v76;
        v33 = v332;
        v50 = v317;
        a4 = v305;
        v6 = v327;
        v13 = v26;
        self = v25;
        v8 = v324;

        goto LABEL_429;
      }

      v307 = 0;
      v34 = 0;
      v33 = v332;
      v50 = v317;
      a4 = v305;
      v6 = v327;
      v13 = v26;
      self = v25;
      v8 = v324;
      goto LABEL_430;
    }

    v323 = a4;
    v309 = v73;
    v307 = v309;
    goto LABEL_77;
  }

  v309 = v73;
  v323 = a4;
LABEL_76:
  v307 = 0;
LABEL_77:
  v77 = [v334 objectForKeyedSubscript:@"axSettings"];
  v78 = [MEMORY[0x1E695DFB0] null];
  v79 = [v77 isEqual:v78];

  v6 = v327;
  v314 = v26;
  if (v79)
  {
    self = v25;

    v77 = 0;
  }

  else
  {
    v13 = v26;
    self = v25;
    if (v77)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v324;
        v306 = v77;
        if (!v323)
        {
          v34 = 0;
          v33 = v332;
          v50 = v317;
          a4 = v305;
          goto LABEL_429;
        }

        v100 = objc_alloc(MEMORY[0x1E696ABC0]);
        v101 = *MEMORY[0x1E698F240];
        v396 = *MEMORY[0x1E696A578];
        v304 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"axSettings"];
        v397 = v304;
        v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v397 forKeys:&v396 count:1];
        v34 = 0;
        *v323 = [v100 initWithDomain:v101 code:2 userInfo:v102];
        v99 = v102;
        v33 = v332;
        v50 = v317;
LABEL_101:
        a4 = v305;
        goto LABEL_428;
      }
    }
  }

  v80 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v77, "count")}];
  v335 = 0u;
  v336 = 0u;
  v337 = 0u;
  v338 = 0u;
  v81 = v77;
  v82 = [v81 countByEnumeratingWithState:&v335 objects:v395 count:16];
  v306 = v81;
  v304 = v80;
  if (!v82)
  {
    goto LABEL_90;
  }

  v83 = v82;
  v84 = *v336;
  while (2)
  {
    for (i = 0; i != v83; ++i)
    {
      if (*v336 != v84)
      {
        objc_enumerationMutation(v81);
      }

      v86 = *(*(&v335 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v323)
        {
          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v393 = *MEMORY[0x1E696A578];
          v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"axSettings"];
          v394 = v302;
          v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v394 forKeys:&v393 count:1];
          v93 = v90;
          v94 = v91;
          v95 = v92;
LABEL_96:
          v33 = v332;
          v50 = v317;
          v27 = v318;
          a4 = v305;
          v34 = 0;
          *v323 = [v93 initWithDomain:v94 code:2 userInfo:v95];
          v301 = v306;
          v8 = v324;
          v6 = v327;
          goto LABEL_426;
        }

        goto LABEL_97;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v323)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v391 = *MEMORY[0x1E696A578];
          v302 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"axSettings"];
          v392 = v302;
          v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v392 forKeys:&v391 count:1];
          v93 = v96;
          v94 = v97;
          v92 = v98;
          v95 = v98;
          goto LABEL_96;
        }

LABEL_97:
        v34 = 0;
        v99 = v81;
        v8 = v324;
        v6 = v327;
        v33 = v332;
        v13 = v314;
        v50 = v317;
        v27 = v318;
        goto LABEL_101;
      }

      v87 = v86;
      [v80 addObject:v87];
    }

    v83 = [v81 countByEnumeratingWithState:&v335 objects:v395 count:16];
    v27 = v318;
    if (v83)
    {
      continue;
    }

    break;
  }

LABEL_90:

  v88 = [v334 objectForKeyedSubscript:@"alFacVersion"];
  if (v88)
  {
    v89 = v88;

    goto LABEL_105;
  }

  v89 = [v334 objectForKeyedSubscript:@"facVersion"];

  if (!v89)
  {
LABEL_106:
    v301 = 0;
    goto LABEL_109;
  }

LABEL_105:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_106;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v302 = v89;
    v8 = v324;
    if (v323)
    {
      v108 = objc_alloc(MEMORY[0x1E696ABC0]);
      v109 = *MEMORY[0x1E698F240];
      v389 = *MEMORY[0x1E696A578];
      v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alFacVersion"];
      v390 = v92;
      v300 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v390 forKeys:&v389 count:1];
      v301 = 0;
      v34 = 0;
      *v323 = [v108 initWithDomain:v109 code:2 userInfo:?];
      v6 = v327;
      v33 = v332;
      v50 = v317;
      goto LABEL_167;
    }

    v301 = 0;
    v34 = 0;
    v6 = v327;
    v33 = v332;
    v50 = v317;
    a4 = v305;
    v13 = v314;
    goto LABEL_427;
  }

  v89 = v89;
  v301 = v89;
LABEL_109:
  v105 = [v334 objectForKeyedSubscript:@"alFacePoseVersion"];
  v302 = v89;
  if (v105)
  {
    v92 = v105;

    v8 = v324;
    goto LABEL_114;
  }

  v92 = [v334 objectForKeyedSubscript:@"facePoseVersion"];

  v8 = v324;
  if (!v92)
  {
    v300 = 0;
    v6 = v327;
LABEL_124:
    v113 = [v334 objectForKeyedSubscript:@"alPadtoolVersion"];
    if (v113)
    {
      v112 = v113;
    }

    else
    {
      v112 = [v334 objectForKeyedSubscript:@"padtoolVersion"];

      if (!v112)
      {
        goto LABEL_128;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!v323)
        {
          v298 = 0;
          v34 = 0;
          v33 = v332;
          v50 = v317;
          v27 = v318;
          a4 = v305;
LABEL_424:

          goto LABEL_425;
        }

        v299 = objc_alloc(MEMORY[0x1E696ABC0]);
        v296 = *MEMORY[0x1E698F240];
        v385 = *MEMORY[0x1E696A578];
        v293 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alPadtoolVersion"];
        v386 = v293;
        v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v386 forKeys:&v385 count:1];
        v117 = v296;
        v295 = v116;
        v118 = [v299 initWithDomain:v117 code:2 userInfo:?];
        v298 = 0;
        v34 = 0;
        *v323 = v118;
        v33 = v332;
        v50 = v317;
        v27 = v318;
        a4 = v305;
        goto LABEL_423;
      }

      v112 = v112;
      v298 = v112;
      v27 = v318;
LABEL_131:
      v114 = [v334 objectForKeyedSubscript:@"alPrdVersion"];
      v297 = v112;
      if (v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = [v334 objectForKeyedSubscript:@"prdVersion"];

        if (!v115)
        {
          v295 = 0;
          goto LABEL_144;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v295 = v115;
LABEL_144:
        v293 = 0;
LABEL_145:
        v121 = [v334 objectForKeyedSubscript:@"didStepUp"];
        v292 = v121;
        if (!v121 || (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v290 = 0;
LABEL_148:
          v123 = [v334 objectForKeyedSubscript:@"plGestureAssessment"];
          if (v123)
          {
            v124 = v123;
          }

          else
          {
            v124 = [v334 objectForKeyedSubscript:@"passiveGestureAssessment"];

            if (!v124)
            {
LABEL_152:
              v287 = 0;
LABEL_155:
              v125 = [v334 objectForKeyedSubscript:@"plAssessment"];
              v289 = v124;
              if (v125)
              {
                v126 = v125;
              }

              else
              {
                v126 = [v334 objectForKeyedSubscript:@"passiveLivenessAssessment"];

                if (!v126)
                {
                  v286 = 0;
                  goto LABEL_175;
                }
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v286 = v126;
LABEL_175:
                v284 = 0;
                goto LABEL_176;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v286 = v126;
                v284 = v286;
LABEL_176:
                v136 = [v334 objectForKeyedSubscript:@"plFacVersion"];
                if (v136)
                {
                  v137 = v136;
                }

                else
                {
                  v137 = [v334 objectForKeyedSubscript:@"passiveLivenessFacVersion"];

                  if (!v137)
                  {
LABEL_180:
                    v282 = 0;
LABEL_183:
                    v281 = v137;
                    v138 = [v334 objectForKeyedSubscript:@"plFacePoseVersion"];
                    if (v138)
                    {
                      v139 = v138;
                    }

                    else
                    {
                      v139 = [v334 objectForKeyedSubscript:@"passiveLivenessFacePoseVersion"];

                      if (!v139)
                      {
                        v279 = 0;
                        goto LABEL_197;
                      }
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v279 = v139;
LABEL_197:
                      v277 = 0;
                      goto LABEL_198;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v279 = v139;
                      v277 = v279;
LABEL_198:
                      v145 = [v334 objectForKeyedSubscript:@"plPadtoolVersion"];
                      if (v145)
                      {
                        v146 = v145;
                      }

                      else
                      {
                        v146 = [v334 objectForKeyedSubscript:@"passiveLivenessPadtoolVersion"];

                        if (!v146)
                        {
LABEL_202:
                          v275 = 0;
LABEL_205:
                          v274 = v146;
                          v147 = [v334 objectForKeyedSubscript:@"plPrdVersion"];
                          if (v147)
                          {
                            v148 = v147;
                          }

                          else
                          {
                            v148 = [v334 objectForKeyedSubscript:@"passiveLivenessPrdVersion"];

                            if (!v148)
                            {
                              v270 = 0;
                              v272 = 0;
                              goto LABEL_221;
                            }
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v270 = 0;
                            v272 = v148;
LABEL_221:
                            v154 = [v334 objectForKeyedSubscript:@"shadowLabel"];
                            if (v154)
                            {
                              v155 = v154;
                            }

                            else
                            {
                              v155 = [v334 objectForKeyedSubscript:@"livenessShadowLabel"];

                              if (!v155)
                              {
LABEL_225:
                                v268 = 0;
LABEL_228:
                                v267 = v155;
                                v156 = [v334 objectForKeyedSubscript:@"smFacVersion"];
                                if (v156)
                                {
                                  v157 = v156;
                                }

                                else
                                {
                                  v157 = [v334 objectForKeyedSubscript:@"livenessShadowFacVersion"];

                                  if (!v157)
                                  {
                                    v263 = 0;
                                    v265 = 0;
                                    goto LABEL_244;
                                  }
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v263 = 0;
                                  v265 = v157;
LABEL_244:
                                  v163 = [v334 objectForKeyedSubscript:@"smFacePoseVersion"];
                                  if (v163)
                                  {
                                    v164 = v163;
                                  }

                                  else
                                  {
                                    v164 = [v334 objectForKeyedSubscript:@"livenessShadowFacePoseVersion"];

                                    if (!v164)
                                    {
LABEL_248:
                                      v261 = 0;
                                      goto LABEL_251;
                                    }
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    goto LABEL_248;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v164 = v164;
                                    v261 = v164;
LABEL_251:
                                    v260 = v164;
                                    v165 = [v334 objectForKeyedSubscript:@"smPrdVersion"];
                                    if (v165)
                                    {
                                      v166 = v165;
                                    }

                                    else
                                    {
                                      v166 = [v334 objectForKeyedSubscript:@"livenessShadowPrdVersion"];

                                      if (!v166)
                                      {
                                        v256 = 0;
                                        v258 = 0;
                                        goto LABEL_267;
                                      }
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v256 = v166;
                                      v258 = 0;
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        v256 = v166;
                                        if (!v323)
                                        {
                                          v258 = 0;
                                          v34 = 0;
                                          v33 = v332;
                                          v50 = v317;
                                          v27 = v318;
                                          a4 = v305;
LABEL_411:
                                          v169 = v256;
                                          goto LABEL_412;
                                        }

                                        v170 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v259 = *MEMORY[0x1E698F240];
                                        v361 = *MEMORY[0x1E696A578];
                                        v254 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smPrdVersion"];
                                        v362 = v254;
                                        v253 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v362 forKeys:&v361 count:1];
                                        v171 = [v170 initWithDomain:v259 code:2 userInfo:?];
                                        v258 = 0;
                                        v34 = 0;
                                        *v323 = v171;
                                        goto LABEL_310;
                                      }

                                      v256 = v166;
                                      v258 = v256;
                                    }

LABEL_267:
                                    v172 = [v334 objectForKeyedSubscript:@"smPadtoolVersion"];
                                    if (v172)
                                    {
                                      v173 = v172;
                                    }

                                    else
                                    {
                                      v173 = [v334 objectForKeyedSubscript:@"livenessShadowPadtoolVersion"];

                                      if (!v173)
                                      {
LABEL_271:
                                        v254 = 0;
LABEL_274:
                                        v253 = v173;
                                        v174 = [v334 objectForKeyedSubscript:@"smLivenessAssessment"];
                                        if (v174)
                                        {
                                          v175 = v174;
                                        }

                                        else
                                        {
                                          v175 = [v334 objectForKeyedSubscript:@"livenessShadowLivenessAssessment"];

                                          if (!v175)
                                          {
LABEL_278:
                                            v251 = 0;
LABEL_281:
                                            v176 = [v334 objectForKeyedSubscript:@"smGestureAssessment"];
                                            v249 = v175;
                                            if (v176)
                                            {
                                              v177 = v176;
                                            }

                                            else
                                            {
                                              v177 = [v334 objectForKeyedSubscript:@"livenessShadowGestureAssessment"];

                                              if (!v177)
                                              {
                                                v246 = 0;
                                                v247 = 0;
                                                goto LABEL_300;
                                              }
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v246 = 0;
                                              v247 = v177;
LABEL_300:
                                              v187 = [v334 objectForKeyedSubscript:@"smLivenessType"];
                                              if (v187)
                                              {
                                                v188 = v187;
                                              }

                                              else
                                              {
                                                v188 = [v334 objectForKeyedSubscript:@"livenessShadowLivenessType"];

                                                if (!v188)
                                                {
                                                  v244 = 0;
                                                  v245 = 0;
                                                  goto LABEL_312;
                                                }
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v244 = v188;
                                                v245 = 0;
LABEL_312:
                                                v192 = [v334 objectForKeyedSubscript:@"fmAssessment"];
                                                v243 = self;
                                                v328 = v6;
                                                v239 = v92;
                                                if (v192)
                                                {
                                                  v193 = v192;
                                                }

                                                else
                                                {
                                                  v193 = [v334 objectForKeyedSubscript:@"faceMatchingAssessment"];

                                                  if (!v193)
                                                  {
                                                    v241 = 0;
                                                    v242 = 0;
                                                    goto LABEL_324;
                                                  }
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v241 = v193;
                                                  v242 = 0;
LABEL_324:
                                                  v196 = [v334 objectForKeyedSubscript:@"fmModelVersion"];
                                                  if (v196)
                                                  {
                                                    v197 = v196;
                                                  }

                                                  else
                                                  {
                                                    v197 = [v334 objectForKeyedSubscript:@"faceMatchingModelVersion"];

                                                    if (!v197)
                                                    {
LABEL_328:
                                                      v240 = 0;
LABEL_331:
                                                      v198 = [v334 objectForKeyedSubscript:@"fmDetectorModelVersion"];
                                                      v238 = v197;
                                                      if (v198)
                                                      {
                                                        v199 = v198;
                                                      }

                                                      else
                                                      {
                                                        v199 = [v334 objectForKeyedSubscript:@"faceMatchingDetectorModelVersion"];

                                                        if (!v199)
                                                        {
                                                          v236 = 0;
                                                          v237 = 0;
                                                          goto LABEL_347;
                                                        }
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v236 = v199;
                                                        v237 = 0;
LABEL_347:
                                                        v204 = [v334 objectForKeyedSubscript:@"fmSMAssessment"];
                                                        if (v204)
                                                        {
                                                          v205 = v204;
                                                        }

                                                        else
                                                        {
                                                          v205 = [v334 objectForKeyedSubscript:@"faceMatchingShadowAssessment"];

                                                          if (!v205)
                                                          {
                                                            v233 = 0;
                                                            goto LABEL_358;
                                                          }
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v233 = v205;
LABEL_358:
                                                          v235 = 0;
LABEL_359:
                                                          v208 = [v334 objectForKeyedSubscript:@"fmSMModelVersion"];
                                                          if (v208)
                                                          {
                                                            v209 = v208;
                                                          }

                                                          else
                                                          {
                                                            v209 = [v334 objectForKeyedSubscript:@"faceMatchingShadowModelVersion"];

                                                            if (!v209)
                                                            {
                                                              v234 = 0;
                                                              goto LABEL_370;
                                                            }
                                                          }

                                                          objc_opt_class();
                                                          v234 = v209;
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v234 = v209;
                                                              v232 = v234;
LABEL_371:
                                                              v212 = [v334 objectForKeyedSubscript:@"fmSMDetectorModelVersion"];
                                                              if (v212)
                                                              {
                                                                v213 = v212;
                                                              }

                                                              else
                                                              {
                                                                v214 = self;
                                                                v213 = [v334 objectForKeyedSubscript:@"faceMatchingShadowDetectorModelVersion"];

                                                                if (!v213)
                                                                {
                                                                  self = v214;
                                                                  v231 = 0;
                                                                  goto LABEL_383;
                                                                }
                                                              }

                                                              objc_opt_class();
                                                              v231 = v213;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                self = v243;
LABEL_383:
                                                                v215 = 0;
LABEL_384:
                                                                v229 = [v334 objectForKeyedSubscript:@"identityType"];
                                                                v230 = v215;
                                                                if (!v229 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v219 = 0;
                                                                  v33 = v332;
                                                                  v50 = v317;
                                                                  a4 = v305;
                                                                  v220 = v304;
                                                                  v92 = v239;
LABEL_387:
                                                                  v218 = v219;
                                                                  v228 = v215;
                                                                  v8 = v324;
                                                                  self = [(BMWalletPaymentsCommerceUserProofingResult *)self initWithAge:v324 gender:v33 skinTone:v314 ethnicity:v329 deviceLanguage:v50 proofingDecision:v325 issuer:v316 alAssessment:a4 alGestureAssessment:v307 axSettings:v220 alFacVersion:v301 alFacePoseVersion:v92 alPadtoolVersion:v298 alPrdVersion:v293 didStepUp:v290 plGestureAssessment:v287 plAssessment:v284 plFacVersion:v282 plFacePoseVersion:v277 plPadtoolVersion:v275 plPrdVersion:v270 shadowLabel:v268 smFacVersion:v263 smFacePoseVersion:v261 smPrdVersion:v258 smPadtoolVersion:v254 smLivenessAssessment:v251 smGestureAssessment:v246 smLivenessType:v245 fmAssessment:v242 fmModelVersion:v240 fmDetectorModelVersion:v237 fmSMAssessment:v235 fmSMModelVersion:v232 fmSMDetectorModelVersion:v228 identityType:v219];
                                                                  v34 = self;
                                                                  v27 = v318;
LABEL_396:

                                                                  v6 = v328;
LABEL_401:

                                                                  goto LABEL_402;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v219 = v229;
                                                                  v33 = v332;
                                                                  v50 = v317;
                                                                  a4 = v305;
                                                                  v220 = v304;
                                                                  v92 = v239;
                                                                  goto LABEL_387;
                                                                }

                                                                if (v323)
                                                                {
                                                                  v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v222 = *MEMORY[0x1E698F240];
                                                                  v339 = *MEMORY[0x1E696A578];
                                                                  v223 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identityType"];
                                                                  v340 = v223;
                                                                  v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
                                                                  *v323 = [v221 initWithDomain:v222 code:2 userInfo:v224];
                                                                }

                                                                v218 = 0;
                                                                v34 = 0;
LABEL_395:
                                                                v8 = v324;
                                                                v33 = v332;
                                                                v50 = v317;
                                                                v27 = v318;
                                                                a4 = v305;
                                                                v92 = v239;
                                                                v112 = v297;
                                                                goto LABEL_396;
                                                              }

                                                              self = v243;
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v231 = v231;
                                                                v215 = v231;
                                                                goto LABEL_384;
                                                              }

                                                              if (v323)
                                                              {
                                                                v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v217 = *MEMORY[0x1E698F240];
                                                                v341 = *MEMORY[0x1E696A578];
                                                                v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMDetectorModelVersion"];
                                                                v342 = v218;
                                                                v229 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
                                                                v230 = 0;
                                                                v34 = 0;
                                                                *v323 = [v216 initWithDomain:v217 code:2 userInfo:?];
                                                                goto LABEL_395;
                                                              }

                                                              v230 = 0;
                                                              v34 = 0;
                                                              v8 = v324;
                                                              v33 = v332;
LABEL_400:
                                                              v50 = v317;
                                                              v27 = v318;
                                                              a4 = v305;
                                                              v92 = v239;
                                                              goto LABEL_401;
                                                            }

                                                            if (v323)
                                                            {
                                                              v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v211 = *MEMORY[0x1E698F240];
                                                              v343 = *MEMORY[0x1E696A578];
                                                              v230 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMModelVersion"];
                                                              v344 = v230;
                                                              v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
                                                              v232 = 0;
                                                              v34 = 0;
                                                              *v323 = [v210 initWithDomain:v211 code:2 userInfo:?];
                                                              v33 = v332;
                                                              goto LABEL_400;
                                                            }

                                                            v232 = 0;
                                                            v34 = 0;
                                                            v33 = v332;
LABEL_398:
                                                            v50 = v317;
                                                            v27 = v318;
                                                            a4 = v305;
LABEL_402:

                                                            goto LABEL_403;
                                                          }

LABEL_370:
                                                          v232 = 0;
                                                          goto LABEL_371;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v233 = v205;
                                                          v235 = v233;
                                                          goto LABEL_359;
                                                        }

                                                        v233 = v205;
                                                        if (v323)
                                                        {
                                                          v206 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v207 = *MEMORY[0x1E698F240];
                                                          v345 = *MEMORY[0x1E696A578];
                                                          v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMAssessment"];
                                                          v346 = v232;
                                                          v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
                                                          v235 = 0;
                                                          v34 = 0;
                                                          *v323 = [v206 initWithDomain:v207 code:2 userInfo:?];
                                                          v33 = v332;
                                                          goto LABEL_398;
                                                        }

                                                        v235 = 0;
                                                        v34 = 0;
LABEL_391:
                                                        v6 = v328;
                                                        v33 = v332;
                                                        v50 = v317;
                                                        v27 = v318;
                                                        a4 = v305;
LABEL_403:

                                                        goto LABEL_404;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v236 = v199;
                                                        v237 = v236;
                                                        goto LABEL_347;
                                                      }

                                                      v236 = v199;
                                                      if (v323)
                                                      {
                                                        v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v203 = *MEMORY[0x1E698F240];
                                                        v347 = *MEMORY[0x1E696A578];
                                                        v235 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmDetectorModelVersion"];
                                                        v348 = v235;
                                                        v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
                                                        v237 = 0;
                                                        v34 = 0;
                                                        *v323 = [v202 initWithDomain:v203 code:2 userInfo:?];
                                                        goto LABEL_391;
                                                      }

                                                      v237 = 0;
                                                      v34 = 0;
LABEL_381:
                                                      v6 = v328;
                                                      v33 = v332;
                                                      v50 = v317;
                                                      v27 = v318;
                                                      a4 = v305;
LABEL_404:

                                                      goto LABEL_405;
                                                    }
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    goto LABEL_328;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v197 = v197;
                                                    v240 = v197;
                                                    goto LABEL_331;
                                                  }

                                                  v238 = v197;
                                                  if (v323)
                                                  {
                                                    v200 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v201 = *MEMORY[0x1E698F240];
                                                    v349 = *MEMORY[0x1E696A578];
                                                    v237 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmModelVersion"];
                                                    v350 = v237;
                                                    v236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
                                                    v240 = 0;
                                                    v34 = 0;
                                                    *v323 = [v200 initWithDomain:v201 code:2 userInfo:?];
                                                    goto LABEL_381;
                                                  }

                                                  v240 = 0;
                                                  v34 = 0;
LABEL_368:
                                                  v6 = v328;
                                                  v33 = v332;
                                                  v50 = v317;
                                                  v27 = v318;
                                                  a4 = v305;
LABEL_405:

                                                  goto LABEL_406;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v241 = v193;
                                                  v242 = v241;
                                                  goto LABEL_324;
                                                }

                                                v241 = v193;
                                                if (v323)
                                                {
                                                  v194 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v195 = *MEMORY[0x1E698F240];
                                                  v351 = *MEMORY[0x1E696A578];
                                                  v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmAssessment"];
                                                  v352 = v240;
                                                  v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
                                                  v242 = 0;
                                                  v34 = 0;
                                                  *v323 = [v194 initWithDomain:v195 code:2 userInfo:?];
                                                  goto LABEL_368;
                                                }

                                                v242 = 0;
                                                v34 = 0;
                                                v33 = v332;
                                                v50 = v317;
                                                v27 = v318;
                                                a4 = v305;
LABEL_406:

                                                goto LABEL_407;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v244 = v188;
                                                v245 = v244;
                                                goto LABEL_312;
                                              }

                                              v244 = v188;
                                              if (v323)
                                              {
                                                v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v190 = *MEMORY[0x1E698F240];
                                                v353 = *MEMORY[0x1E696A578];
                                                v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smLivenessType"];
                                                v354 = v242;
                                                v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
                                                v191 = [v189 initWithDomain:v190 code:2 userInfo:?];
                                                v245 = 0;
                                                v34 = 0;
                                                *v323 = v191;
                                                v33 = v332;
                                                v50 = v317;
                                                v27 = v318;
                                                a4 = v305;
                                                goto LABEL_406;
                                              }

                                              v245 = 0;
                                              v34 = 0;
LABEL_345:
                                              v33 = v332;
                                              v50 = v317;
                                              v27 = v318;
                                              a4 = v305;
LABEL_407:

                                              goto LABEL_408;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v246 = v177;
                                              v247 = v246;
                                              goto LABEL_300;
                                            }

                                            v247 = v177;
                                            if (v323)
                                            {
                                              v184 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v185 = *MEMORY[0x1E698F240];
                                              v355 = *MEMORY[0x1E696A578];
                                              v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smGestureAssessment"];
                                              v356 = v245;
                                              v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
                                              v186 = [v184 initWithDomain:v185 code:2 userInfo:?];
                                              v246 = 0;
                                              v34 = 0;
                                              *v323 = v186;
                                              goto LABEL_345;
                                            }

                                            v246 = 0;
                                            v34 = 0;
LABEL_343:
                                            v33 = v332;
                                            v50 = v317;
                                            v27 = v318;
                                            a4 = v305;
LABEL_408:

                                            goto LABEL_409;
                                          }
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          goto LABEL_278;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v175 = v175;
                                          v251 = v175;
                                          goto LABEL_281;
                                        }

                                        v249 = v175;
                                        if (v323)
                                        {
                                          v252 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v248 = *MEMORY[0x1E698F240];
                                          v357 = *MEMORY[0x1E696A578];
                                          v246 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smLivenessAssessment"];
                                          v358 = v246;
                                          v181 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v358 forKeys:&v357 count:1];
                                          v182 = v248;
                                          v247 = v181;
                                          v183 = [v252 initWithDomain:v182 code:2 userInfo:?];
                                          v251 = 0;
                                          v34 = 0;
                                          *v323 = v183;
                                          goto LABEL_343;
                                        }

                                        v251 = 0;
                                        v34 = 0;
LABEL_322:
                                        v33 = v332;
                                        v50 = v317;
                                        v27 = v318;
                                        a4 = v305;
LABEL_409:

                                        goto LABEL_410;
                                      }
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      goto LABEL_271;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v173 = v173;
                                      v254 = v173;
                                      goto LABEL_274;
                                    }

                                    v253 = v173;
                                    if (v323)
                                    {
                                      v255 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v250 = *MEMORY[0x1E698F240];
                                      v359 = *MEMORY[0x1E696A578];
                                      v251 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smPadtoolVersion"];
                                      v360 = v251;
                                      v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v360 forKeys:&v359 count:1];
                                      v179 = v250;
                                      v249 = v178;
                                      v180 = [v255 initWithDomain:v179 code:2 userInfo:?];
                                      v254 = 0;
                                      v34 = 0;
                                      *v323 = v180;
                                      goto LABEL_322;
                                    }

                                    v254 = 0;
                                    v34 = 0;
LABEL_310:
                                    v33 = v332;
                                    v50 = v317;
                                    v27 = v318;
                                    a4 = v305;
LABEL_410:

                                    goto LABEL_411;
                                  }

                                  v260 = v164;
                                  if (v323)
                                  {
                                    v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v257 = *MEMORY[0x1E698F240];
                                    v363 = *MEMORY[0x1E696A578];
                                    v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smFacePoseVersion"];
                                    v364 = v258;
                                    v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
                                    v168 = [v262 initWithDomain:v257 code:2 userInfo:v167];
                                    v261 = 0;
                                    v34 = 0;
                                    *v323 = v168;
                                    v169 = v167;
                                    v33 = v332;
                                    v50 = v317;
                                    v27 = v318;
                                    a4 = v305;
LABEL_412:

                                    goto LABEL_413;
                                  }

                                  v261 = 0;
                                  v34 = 0;
LABEL_297:
                                  v33 = v332;
                                  v50 = v317;
                                  v27 = v318;
                                  a4 = v305;
LABEL_413:

                                  goto LABEL_414;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v263 = v157;
                                  v265 = v263;
                                  goto LABEL_244;
                                }

                                v265 = v157;
                                if (v323)
                                {
                                  v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v264 = *MEMORY[0x1E698F240];
                                  v365 = *MEMORY[0x1E696A578];
                                  v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smFacVersion"];
                                  v366 = v261;
                                  v260 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
                                  v162 = [v161 initWithDomain:v264 code:2 userInfo:?];
                                  v263 = 0;
                                  v34 = 0;
                                  *v323 = v162;
                                  goto LABEL_297;
                                }

                                v263 = 0;
                                v34 = 0;
LABEL_293:
                                v33 = v332;
                                v50 = v317;
                                v27 = v318;
                                a4 = v305;
LABEL_414:

                                goto LABEL_415;
                              }
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              goto LABEL_225;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v155 = v155;
                              v268 = v155;
                              goto LABEL_228;
                            }

                            v267 = v155;
                            if (v323)
                            {
                              v269 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v266 = *MEMORY[0x1E698F240];
                              v367 = *MEMORY[0x1E696A578];
                              v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shadowLabel"];
                              v368 = v263;
                              v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
                              v159 = v266;
                              v265 = v158;
                              v160 = [v269 initWithDomain:v159 code:2 userInfo:?];
                              v268 = 0;
                              v34 = 0;
                              *v323 = v160;
                              goto LABEL_293;
                            }

                            v268 = 0;
                            v34 = 0;
LABEL_265:
                            v33 = v332;
                            v50 = v317;
                            v27 = v318;
                            a4 = v305;
LABEL_415:

                            goto LABEL_416;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v270 = v148;
                            v272 = v270;
                            goto LABEL_221;
                          }

                          v272 = v148;
                          if (v323)
                          {
                            v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v271 = *MEMORY[0x1E698F240];
                            v369 = *MEMORY[0x1E696A578];
                            v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plPrdVersion"];
                            v370 = v268;
                            v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v370 forKeys:&v369 count:1];
                            v153 = [v152 initWithDomain:v271 code:2 userInfo:?];
                            v270 = 0;
                            v34 = 0;
                            *v323 = v153;
                            goto LABEL_265;
                          }

                          v270 = 0;
                          v34 = 0;
LABEL_263:
                          v33 = v332;
                          v50 = v317;
                          v27 = v318;
                          a4 = v305;
LABEL_416:

                          goto LABEL_417;
                        }
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        goto LABEL_202;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v146 = v146;
                        v275 = v146;
                        goto LABEL_205;
                      }

                      v274 = v146;
                      if (v323)
                      {
                        v276 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v273 = *MEMORY[0x1E698F240];
                        v371 = *MEMORY[0x1E696A578];
                        v270 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plPadtoolVersion"];
                        v372 = v270;
                        v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v372 forKeys:&v371 count:1];
                        v150 = v273;
                        v272 = v149;
                        v151 = [v276 initWithDomain:v150 code:2 userInfo:?];
                        v275 = 0;
                        v34 = 0;
                        *v323 = v151;
                        goto LABEL_263;
                      }

                      v275 = 0;
                      v34 = 0;
LABEL_242:
                      v33 = v332;
                      v50 = v317;
                      v27 = v318;
                      a4 = v305;
LABEL_417:

                      goto LABEL_418;
                    }

                    v279 = v139;
                    if (v323)
                    {
                      v143 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v278 = *MEMORY[0x1E698F240];
                      v373 = *MEMORY[0x1E696A578];
                      v275 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plFacePoseVersion"];
                      v374 = v275;
                      v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
                      v144 = [v143 initWithDomain:v278 code:2 userInfo:?];
                      v277 = 0;
                      v34 = 0;
                      *v323 = v144;
                      goto LABEL_242;
                    }

                    v277 = 0;
                    v34 = 0;
LABEL_240:
                    v33 = v332;
                    v50 = v317;
                    v27 = v318;
                    a4 = v305;
LABEL_418:

                    goto LABEL_419;
                  }
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  goto LABEL_180;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v137 = v137;
                  v282 = v137;
                  goto LABEL_183;
                }

                v281 = v137;
                if (v323)
                {
                  v283 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v280 = *MEMORY[0x1E698F240];
                  v375 = *MEMORY[0x1E696A578];
                  v277 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plFacVersion"];
                  v376 = v277;
                  v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v376 forKeys:&v375 count:1];
                  v141 = v280;
                  v279 = v140;
                  v142 = [v283 initWithDomain:v141 code:2 userInfo:?];
                  v282 = 0;
                  v34 = 0;
                  *v323 = v142;
                  goto LABEL_240;
                }

                v282 = 0;
                v34 = 0;
LABEL_219:
                v33 = v332;
                v50 = v317;
                v27 = v318;
                a4 = v305;
LABEL_419:

                goto LABEL_420;
              }

              v286 = v126;
              if (v323)
              {
                v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                v285 = *MEMORY[0x1E698F240];
                v377 = *MEMORY[0x1E696A578];
                v282 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plAssessment"];
                v378 = v282;
                v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
                v135 = [v134 initWithDomain:v285 code:2 userInfo:?];
                v284 = 0;
                v34 = 0;
                *v323 = v135;
                goto LABEL_219;
              }

              v284 = 0;
              v34 = 0;
LABEL_217:
              v33 = v332;
              v50 = v317;
              v27 = v318;
              a4 = v305;
LABEL_420:

              goto LABEL_421;
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_152;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v124 = v124;
            v287 = v124;
            goto LABEL_155;
          }

          v289 = v124;
          if (v323)
          {
            v127 = objc_alloc(MEMORY[0x1E696ABC0]);
            v288 = *MEMORY[0x1E698F240];
            v379 = *MEMORY[0x1E696A578];
            v284 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plGestureAssessment"];
            v380 = v284;
            v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v380 forKeys:&v379 count:1];
            v128 = [v127 initWithDomain:v288 code:2 userInfo:?];
            v287 = 0;
            v34 = 0;
            *v323 = v128;
            goto LABEL_217;
          }

          v287 = 0;
          v34 = 0;
          v33 = v332;
          v50 = v317;
          v27 = v318;
          a4 = v305;
LABEL_421:

          goto LABEL_422;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v290 = v122;
          goto LABEL_148;
        }

        if (v323)
        {
          v129 = objc_alloc(MEMORY[0x1E696ABC0]);
          v291 = *MEMORY[0x1E698F240];
          v381 = *MEMORY[0x1E696A578];
          v130 = self;
          v131 = objc_alloc(MEMORY[0x1E696AEC0]);
          v227 = objc_opt_class();
          v132 = v131;
          self = v130;
          v112 = v297;
          v27 = v318;
          v287 = [v132 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"didStepUp"];
          v382 = v287;
          v289 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
          v133 = [v129 initWithDomain:v291 code:2 userInfo:?];
          v290 = 0;
          v34 = 0;
          *v323 = v133;
          v33 = v332;
          v50 = v317;
          a4 = v305;
          goto LABEL_421;
        }

        v290 = 0;
        v34 = 0;
        v33 = v332;
        v50 = v317;
        a4 = v305;
LABEL_422:

        goto LABEL_423;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v295 = v115;
        v293 = v295;
        v27 = v318;
        goto LABEL_145;
      }

      v295 = v115;
      if (v323)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v294 = *MEMORY[0x1E698F240];
        v383 = *MEMORY[0x1E696A578];
        v290 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alPrdVersion"];
        v384 = v290;
        v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
        v120 = [v119 initWithDomain:v294 code:2 userInfo:?];
        v293 = 0;
        v34 = 0;
        *v323 = v120;
        v33 = v332;
        v50 = v317;
        v27 = v318;
        a4 = v305;
        goto LABEL_422;
      }

      v293 = 0;
      v34 = 0;
      v33 = v332;
      v50 = v317;
      v27 = v318;
      a4 = v305;
LABEL_423:

      goto LABEL_424;
    }

LABEL_128:
    v298 = 0;
    goto LABEL_131;
  }

LABEL_114:
  objc_opt_class();
  v6 = v327;
  if (objc_opt_isKindOfClass())
  {
    v300 = v92;
    v92 = 0;
    goto LABEL_124;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v92 = v92;
    v300 = v92;
    v27 = v318;
    goto LABEL_124;
  }

  v300 = v92;
  if (v323)
  {
    v110 = objc_alloc(MEMORY[0x1E696ABC0]);
    v111 = *MEMORY[0x1E698F240];
    v387 = *MEMORY[0x1E696A578];
    v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alFacePoseVersion"];
    v388 = v298;
    v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
    v92 = 0;
    v34 = 0;
    *v323 = [v110 initWithDomain:v111 code:2 userInfo:v112];
    v33 = v332;
    v50 = v317;
    v27 = v318;
    a4 = v305;
    goto LABEL_424;
  }

  v92 = 0;
  v34 = 0;
  v33 = v332;
  v50 = v317;
  v27 = v318;
LABEL_167:
  a4 = v305;
LABEL_425:

LABEL_426:
  v13 = v314;

LABEL_427:
  v99 = v301;
LABEL_428:

LABEL_429:
LABEL_430:

  v17 = v308;
LABEL_431:

  a4 = v329;
LABEL_432:

LABEL_433:
LABEL_434:

  v15 = v330;
LABEL_435:

  v9 = v331;
LABEL_436:

LABEL_437:
LABEL_438:

  v225 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceUserProofingResult *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_age)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_gender)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_skinTone)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ethnicity)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_proofingDecision)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issuer)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alGestureAssessment)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_axSettings;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_alFacVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alFacePoseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alPadtoolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_alPrdVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasDidStepUp)
  {
    didStepUp = self->_didStepUp;
    PBDataWriterWriteBOOLField();
  }

  if (self->_plGestureAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plFacVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plFacePoseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plPadtoolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_plPrdVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shadowLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smFacVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smFacePoseVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smPrdVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smPadtoolVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smLivenessAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smGestureAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_smLivenessType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmDetectorModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmSMAssessment)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmSMModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fmSMDetectorModelVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_identityType)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = BMWalletPaymentsCommerceUserProofingResult;
  v5 = [(BMEventBase *)&v33 init];
  if (!v5)
  {
    goto LABEL_72;
  }

  v6 = objc_opt_new();
  while (1)
  {
    v7 = [v4 position];
    if (v7 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v34 = 0;
      v11 = [v4 position] + 1;
      if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
      {
        v13 = [v4 data];
        [v13 getBytes:&v34 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v10 |= (v34 & 0x7F) << v8;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      v14 = v9++ >= 9;
      if (v14)
      {
        v15 = 0;
        goto LABEL_17;
      }
    }

    v15 = [v4 hasError] ? 0 : v10;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
    {
      break;
    }

    switch((v15 >> 3))
    {
      case 2u:
        v16 = PBReaderReadString();
        v17 = 24;
        goto LABEL_65;
      case 3u:
        v16 = PBReaderReadString();
        v17 = 32;
        goto LABEL_65;
      case 4u:
        v16 = PBReaderReadString();
        v17 = 40;
        goto LABEL_65;
      case 5u:
        v16 = PBReaderReadString();
        v17 = 48;
        goto LABEL_65;
      case 6u:
        v16 = PBReaderReadString();
        v17 = 56;
        goto LABEL_65;
      case 7u:
        v16 = PBReaderReadString();
        v17 = 64;
        goto LABEL_65;
      case 8u:
        v16 = PBReaderReadString();
        v17 = 72;
        goto LABEL_65;
      case 9u:
        v16 = PBReaderReadString();
        v17 = 80;
        goto LABEL_65;
      case 0xAu:
        v16 = PBReaderReadString();
        v17 = 88;
        goto LABEL_65;
      case 0xBu:
        v25 = PBReaderReadString();
        if (!v25)
        {
          goto LABEL_74;
        }

        v26 = v25;
        [v6 addObject:v25];

        continue;
      case 0xCu:
        v16 = PBReaderReadString();
        v17 = 104;
        goto LABEL_65;
      case 0xDu:
        v16 = PBReaderReadString();
        v17 = 112;
        goto LABEL_65;
      case 0xEu:
        v16 = PBReaderReadString();
        v17 = 120;
        goto LABEL_65;
      case 0xFu:
        v16 = PBReaderReadString();
        v17 = 128;
        goto LABEL_65;
      case 0x10u:
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasDidStepUp = 1;
        break;
      case 0x11u:
        v16 = PBReaderReadString();
        v17 = 136;
        goto LABEL_65;
      case 0x12u:
        v16 = PBReaderReadString();
        v17 = 144;
        goto LABEL_65;
      case 0x13u:
        v16 = PBReaderReadString();
        v17 = 152;
        goto LABEL_65;
      case 0x14u:
        v16 = PBReaderReadString();
        v17 = 160;
        goto LABEL_65;
      case 0x15u:
        v16 = PBReaderReadString();
        v17 = 168;
        goto LABEL_65;
      case 0x16u:
        v16 = PBReaderReadString();
        v17 = 176;
        goto LABEL_65;
      case 0x17u:
        v16 = PBReaderReadString();
        v17 = 184;
        goto LABEL_65;
      case 0x18u:
        v16 = PBReaderReadString();
        v17 = 192;
        goto LABEL_65;
      case 0x19u:
        v16 = PBReaderReadString();
        v17 = 200;
        goto LABEL_65;
      case 0x1Au:
        v16 = PBReaderReadString();
        v17 = 208;
        goto LABEL_65;
      case 0x1Bu:
        v16 = PBReaderReadString();
        v17 = 216;
        goto LABEL_65;
      case 0x1Cu:
        v16 = PBReaderReadString();
        v17 = 224;
        goto LABEL_65;
      case 0x1Du:
        v16 = PBReaderReadString();
        v17 = 232;
        goto LABEL_65;
      case 0x1Eu:
        v16 = PBReaderReadString();
        v17 = 240;
        goto LABEL_65;
      case 0x1Fu:
        v16 = PBReaderReadString();
        v17 = 248;
        goto LABEL_65;
      case 0x20u:
        v16 = PBReaderReadString();
        v17 = 256;
        goto LABEL_65;
      case 0x21u:
        v16 = PBReaderReadString();
        v17 = 264;
        goto LABEL_65;
      case 0x22u:
        v16 = PBReaderReadString();
        v17 = 272;
        goto LABEL_65;
      case 0x23u:
        v16 = PBReaderReadString();
        v17 = 280;
        goto LABEL_65;
      case 0x24u:
        v16 = PBReaderReadString();
        v17 = 288;
        goto LABEL_65;
      case 0x25u:
        v16 = PBReaderReadString();
        v17 = 296;
LABEL_65:
        v27 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_74:

        goto LABEL_71;
    }

    while (1)
    {
      v34 = 0;
      v21 = [v4 position] + 1;
      if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
      {
        v23 = [v4 data];
        [v23 getBytes:&v34 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v20 |= (v34 & 0x7F) << v18;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v18 += 7;
      v14 = v19++ >= 9;
      if (v14)
      {
        LOBYTE(v24) = 0;
        goto LABEL_69;
      }
    }

    v24 = (v20 != 0) & ~[v4 hasError];
LABEL_69:
    v5->_didStepUp = v24;
  }

  v28 = [v6 copy];
  axSettings = v5->_axSettings;
  v5->_axSettings = v28;

  v30 = [v4 hasError];
  if (v30)
  {
LABEL_71:
    v31 = 0;
  }

  else
  {
LABEL_72:
    v31 = v5;
  }

  return v31;
}

- (NSString)description
{
  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v41 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
  v40 = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
  v39 = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
  v38 = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
  v37 = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
  v36 = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
  v35 = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
  v34 = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
  v33 = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
  v31 = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
  v32 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
  v27 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
  v30 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
  v15 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceUserProofingResult didStepUp](self, "didStepUp")}];
  v28 = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
  v26 = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
  v14 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
  v25 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
  v24 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
  v23 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
  v22 = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
  v21 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
  v20 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
  v19 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
  v18 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
  v13 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
  v12 = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
  v3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
  v4 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
  v5 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
  v6 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
  v7 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
  v8 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
  v9 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
  v10 = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
  v17 = [v16 initWithFormat:@"BMWalletPaymentsCommerceUserProofingResult with age: %@, gender: %@, skinTone: %@, ethnicity: %@, deviceLanguage: %@, proofingDecision: %@, issuer: %@, alAssessment: %@, alGestureAssessment: %@, axSettings: %@, alFacVersion: %@, alFacePoseVersion: %@, alPadtoolVersion: %@, alPrdVersion: %@, didStepUp: %@, plGestureAssessment: %@, plAssessment: %@, plFacVersion: %@, plFacePoseVersion: %@, plPadtoolVersion: %@, plPrdVersion: %@, shadowLabel: %@, smFacVersion: %@, smFacePoseVersion: %@, smPrdVersion: %@, smPadtoolVersion: %@, smLivenessAssessment: %@, smGestureAssessment: %@, smLivenessType: %@, fmAssessment: %@, fmModelVersion: %@, fmDetectorModelVersion: %@, fmSMAssessment: %@, fmSMModelVersion: %@, fmSMDetectorModelVersion: %@, identityType: %@", v41, v40, v39, v38, v37, v36, v35, v34, v33, v31, v32, v27, v30, v15, v29, v28, v26, v14, v25, v24, v23, v22, v21, v20, v19, v18, v13, v12, v3, v4, v5, v6, v7, v8, v9, v10];

  return v17;
}

- (BMWalletPaymentsCommerceUserProofingResult)initWithAge:(id)a3 gender:(id)a4 skinTone:(id)a5 ethnicity:(id)a6 deviceLanguage:(id)a7 proofingDecision:(id)a8 issuer:(id)a9 alAssessment:(id)a10 alGestureAssessment:(id)a11 axSettings:(id)a12 alFacVersion:(id)a13 alFacePoseVersion:(id)a14 alPadtoolVersion:(id)a15 alPrdVersion:(id)a16 didStepUp:(id)a17 plGestureAssessment:(id)a18 plAssessment:(id)a19 plFacVersion:(id)a20 plFacePoseVersion:(id)a21 plPadtoolVersion:(id)a22 plPrdVersion:(id)a23 shadowLabel:(id)a24 smFacVersion:(id)a25 smFacePoseVersion:(id)a26 smPrdVersion:(id)a27 smPadtoolVersion:(id)a28 smLivenessAssessment:(id)a29 smGestureAssessment:(id)a30 smLivenessType:(id)a31 fmAssessment:(id)a32 fmModelVersion:(id)a33 fmDetectorModelVersion:(id)a34 fmSMAssessment:(id)a35 fmSMModelVersion:(id)a36 fmSMDetectorModelVersion:(id)a37 identityType:(id)a38
{
  v85 = a3;
  v49 = a4;
  v84 = a4;
  v50 = a5;
  v83 = a5;
  v82 = a6;
  v81 = a7;
  v80 = a8;
  v79 = a9;
  v78 = a10;
  v77 = a11;
  v76 = a12;
  v75 = a13;
  v74 = a14;
  v73 = a15;
  v72 = a16;
  v51 = a17;
  v71 = a18;
  v70 = a19;
  v69 = a20;
  v68 = a21;
  v67 = a22;
  v66 = a23;
  v65 = a24;
  v55 = a25;
  v53 = a26;
  v43 = a27;
  v56 = a28;
  v64 = a29;
  v63 = a30;
  v62 = a31;
  v61 = a32;
  v60 = a33;
  v59 = a34;
  v44 = a35;
  v58 = a36;
  v45 = v51;
  v57 = a37;
  v54 = a38;
  v86.receiver = self;
  v86.super_class = BMWalletPaymentsCommerceUserProofingResult;
  v46 = [(BMEventBase *)&v86 init];
  if (v46)
  {
    v46->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v46->_age, a3);
    objc_storeStrong(&v46->_gender, v49);
    objc_storeStrong(&v46->_skinTone, v50);
    objc_storeStrong(&v46->_ethnicity, a6);
    objc_storeStrong(&v46->_deviceLanguage, a7);
    objc_storeStrong(&v46->_proofingDecision, a8);
    objc_storeStrong(&v46->_issuer, a9);
    objc_storeStrong(&v46->_alAssessment, a10);
    objc_storeStrong(&v46->_alGestureAssessment, a11);
    objc_storeStrong(&v46->_axSettings, a12);
    objc_storeStrong(&v46->_alFacVersion, a13);
    objc_storeStrong(&v46->_alFacePoseVersion, a14);
    objc_storeStrong(&v46->_alPadtoolVersion, a15);
    objc_storeStrong(&v46->_alPrdVersion, a16);
    if (v51)
    {
      v46->_hasDidStepUp = 1;
      v46->_didStepUp = [v51 BOOLValue];
    }

    else
    {
      v45 = 0;
      v46->_hasDidStepUp = 0;
      v46->_didStepUp = 0;
    }

    objc_storeStrong(&v46->_plGestureAssessment, a18);
    objc_storeStrong(&v46->_plAssessment, a19);
    objc_storeStrong(&v46->_plFacVersion, a20);
    objc_storeStrong(&v46->_plFacePoseVersion, a21);
    objc_storeStrong(&v46->_plPadtoolVersion, a22);
    objc_storeStrong(&v46->_plPrdVersion, a23);
    objc_storeStrong(&v46->_shadowLabel, a24);
    objc_storeStrong(&v46->_smFacVersion, a25);
    objc_storeStrong(&v46->_smFacePoseVersion, a26);
    objc_storeStrong(&v46->_smPrdVersion, a27);
    objc_storeStrong(&v46->_smPadtoolVersion, a28);
    objc_storeStrong(&v46->_smLivenessAssessment, a29);
    objc_storeStrong(&v46->_smGestureAssessment, a30);
    objc_storeStrong(&v46->_smLivenessType, a31);
    objc_storeStrong(&v46->_fmAssessment, a32);
    objc_storeStrong(&v46->_fmModelVersion, a33);
    objc_storeStrong(&v46->_fmDetectorModelVersion, a34);
    objc_storeStrong(&v46->_fmSMAssessment, a35);
    objc_storeStrong(&v46->_fmSMModelVersion, a36);
    objc_storeStrong(&v46->_fmSMDetectorModelVersion, a37);
    objc_storeStrong(&v46->_identityType, a38);
  }

  return v46;
}

+ (id)protoFields
{
  v41[36] = *MEMORY[0x1E69E9840];
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"age" number:2 type:13 subMessageClass:0];
  v41[0] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"gender" number:3 type:13 subMessageClass:0];
  v41[1] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"skinTone" number:4 type:13 subMessageClass:0];
  v41[2] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ethnicity" number:5 type:13 subMessageClass:0];
  v41[3] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceLanguage" number:6 type:13 subMessageClass:0];
  v41[4] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"proofingDecision" number:7 type:13 subMessageClass:0];
  v41[5] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"issuer" number:8 type:13 subMessageClass:0];
  v41[6] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alAssessment" number:9 type:13 subMessageClass:0];
  v41[7] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alGestureAssessment" number:10 type:13 subMessageClass:0];
  v41[8] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"axSettings" number:11 type:13 subMessageClass:0];
  v41[9] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alFacVersion" number:12 type:13 subMessageClass:0];
  v41[10] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alFacePoseVersion" number:13 type:13 subMessageClass:0];
  v41[11] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alPadtoolVersion" number:14 type:13 subMessageClass:0];
  v41[12] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alPrdVersion" number:15 type:13 subMessageClass:0];
  v41[13] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"didStepUp" number:16 type:12 subMessageClass:0];
  v41[14] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plGestureAssessment" number:17 type:13 subMessageClass:0];
  v41[15] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plAssessment" number:18 type:13 subMessageClass:0];
  v41[16] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plFacVersion" number:19 type:13 subMessageClass:0];
  v41[17] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plFacePoseVersion" number:20 type:13 subMessageClass:0];
  v41[18] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plPadtoolVersion" number:21 type:13 subMessageClass:0];
  v41[19] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"plPrdVersion" number:22 type:13 subMessageClass:0];
  v41[20] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shadowLabel" number:23 type:13 subMessageClass:0];
  v41[21] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smFacVersion" number:24 type:13 subMessageClass:0];
  v41[22] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smFacePoseVersion" number:25 type:13 subMessageClass:0];
  v41[23] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smPrdVersion" number:26 type:13 subMessageClass:0];
  v41[24] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smPadtoolVersion" number:27 type:13 subMessageClass:0];
  v41[25] = v15;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smLivenessAssessment" number:28 type:13 subMessageClass:0];
  v41[26] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smGestureAssessment" number:29 type:13 subMessageClass:0];
  v41[27] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"smLivenessType" number:30 type:13 subMessageClass:0];
  v41[28] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmAssessment" number:31 type:13 subMessageClass:0];
  v41[29] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmModelVersion" number:32 type:13 subMessageClass:0];
  v41[30] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmDetectorModelVersion" number:33 type:13 subMessageClass:0];
  v41[31] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmSMAssessment" number:34 type:13 subMessageClass:0];
  v41[32] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmSMModelVersion" number:35 type:13 subMessageClass:0];
  v41[33] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fmSMDetectorModelVersion" number:36 type:13 subMessageClass:0];
  v41[34] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identityType" number:37 type:13 subMessageClass:0];
  v41[35] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:36];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)columns
{
  v67[62] = *MEMORY[0x1E69E9840];
  v66 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"age" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v65 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gender" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v64 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"skinTone" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v63 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ethnicity" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v62 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceLanguage" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v61 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"proofingDecision" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v60 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"issuer" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v59 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alAssessment" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v58 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessAssessment" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v57 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alGestureAssessment" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v55 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"gestureAssessment" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v56 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"axSettings_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_3089];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alFacVersion" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v54 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"facVersion" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"facePoseVersion" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"padtoolVersion" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"alPrdVersion" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prdVersion" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"didStepUp" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plGestureAssessment" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveGestureAssessment" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plAssessment" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessAssessment" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plFacVersion" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessFacVersion" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:20 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"plPrdVersion" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passiveLivenessPrdVersion" dataType:2 requestOnly:0 fieldNumber:22 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shadowLabel" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowLabel" dataType:2 requestOnly:0 fieldNumber:23 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smFacVersion" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowFacVersion" dataType:2 requestOnly:0 fieldNumber:24 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:25 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowFacePoseVersion" dataType:2 requestOnly:0 fieldNumber:25 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smPrdVersion" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowPrdVersion" dataType:2 requestOnly:0 fieldNumber:26 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowPadtoolVersion" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smLivenessAssessment" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowLivenessAssessment" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smGestureAssessment" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowGestureAssessment" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"smLivenessType" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"livenessShadowLivenessType" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmAssessment" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingAssessment" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmModelVersion" dataType:2 requestOnly:0 fieldNumber:32 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingModelVersion" dataType:2 requestOnly:0 fieldNumber:32 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:33 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:33 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmSMAssessment" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingShadowAssessment" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmSMModelVersion" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingShadowModelVersion" dataType:2 requestOnly:0 fieldNumber:35 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fmSMDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:36 protoDataType:13 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"faceMatchingShadowDetectorModelVersion" dataType:2 requestOnly:0 fieldNumber:36 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identityType" dataType:2 requestOnly:0 fieldNumber:37 protoDataType:13 convertedType:0];
  v67[0] = v66;
  v67[1] = v65;
  v67[2] = v64;
  v67[3] = v63;
  v67[4] = v62;
  v67[5] = v61;
  v67[6] = v60;
  v67[7] = v59;
  v67[8] = v58;
  v67[9] = v57;
  v67[10] = v55;
  v67[11] = v56;
  v67[12] = v53;
  v67[13] = v54;
  v67[14] = v52;
  v67[15] = v51;
  v67[16] = v50;
  v67[17] = v49;
  v67[18] = v48;
  v67[19] = v47;
  v67[20] = v46;
  v67[21] = v45;
  v67[22] = v44;
  v67[23] = v43;
  v67[24] = v42;
  v67[25] = v41;
  v67[26] = v40;
  v67[27] = v39;
  v67[28] = v38;
  v67[29] = v37;
  v67[30] = v36;
  v67[31] = v35;
  v67[32] = v34;
  v67[33] = v33;
  v67[34] = v32;
  v67[35] = v31;
  v67[36] = v30;
  v67[37] = v29;
  v67[38] = v28;
  v67[39] = v27;
  v67[40] = v26;
  v67[41] = v25;
  v67[42] = v24;
  v67[43] = v23;
  v67[44] = v22;
  v67[45] = v21;
  v67[46] = v20;
  v67[47] = v19;
  v67[48] = v18;
  v67[49] = v17;
  v67[50] = v16;
  v67[51] = v15;
  v67[52] = v2;
  v67[53] = v3;
  v67[54] = v4;
  v67[55] = v5;
  v67[56] = v6;
  v67[57] = v7;
  v67[58] = v14;
  v67[59] = v8;
  v67[60] = v13;
  v67[61] = v9;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:62];

  v10 = *MEMORY[0x1E69E9840];

  return v12;
}

id __53__BMWalletPaymentsCommerceUserProofingResult_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _axSettingsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

    v7 = [[BMWalletPaymentsCommerceUserProofingResult alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[5] = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
@interface BMWalletPaymentsCommerceUserProofingResult
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceUserProofingResult)initWithAge:(id)age gender:(id)gender skinTone:(id)tone ethnicity:(id)ethnicity deviceLanguage:(id)language proofingDecision:(id)decision issuer:(id)issuer alAssessment:(id)self0 alGestureAssessment:(id)self1 axSettings:(id)self2 alFacVersion:(id)self3 alFacePoseVersion:(id)self4 alPadtoolVersion:(id)self5 alPrdVersion:(id)self6 didStepUp:(id)self7 plGestureAssessment:(id)self8 plAssessment:(id)self9 plFacVersion:(id)facVersion plFacePoseVersion:(id)facePoseVersion plPadtoolVersion:(id)plPadtoolVersion plPrdVersion:(id)plPrdVersion shadowLabel:(id)label smFacVersion:(id)smFacVersion smFacePoseVersion:(id)smFacePoseVersion smPrdVersion:(id)smPrdVersion smPadtoolVersion:(id)smPadtoolVersion smLivenessAssessment:(id)livenessAssessment smGestureAssessment:(id)age0 smLivenessType:(id)age1 fmAssessment:(id)age2 fmModelVersion:(id)age3 fmDetectorModelVersion:(id)age4 fmSMAssessment:(id)age5 fmSMModelVersion:(id)age6 fmSMDetectorModelVersion:(id)age7 identityType:(id)age8;
- (BMWalletPaymentsCommerceUserProofingResult)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_axSettingsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceUserProofingResult

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

    gender = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
    gender2 = [v5 gender];
    v15 = gender2;
    if (gender == gender2)
    {
    }

    else
    {
      gender3 = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
      gender4 = [v5 gender];
      v18 = [gender3 isEqual:gender4];

      if (!v18)
      {
        goto LABEL_142;
      }
    }

    skinTone = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
    skinTone2 = [v5 skinTone];
    v21 = skinTone2;
    if (skinTone == skinTone2)
    {
    }

    else
    {
      skinTone3 = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
      skinTone4 = [v5 skinTone];
      v24 = [skinTone3 isEqual:skinTone4];

      if (!v24)
      {
        goto LABEL_142;
      }
    }

    ethnicity = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
    ethnicity2 = [v5 ethnicity];
    v27 = ethnicity2;
    if (ethnicity == ethnicity2)
    {
    }

    else
    {
      ethnicity3 = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
      ethnicity4 = [v5 ethnicity];
      v30 = [ethnicity3 isEqual:ethnicity4];

      if (!v30)
      {
        goto LABEL_142;
      }
    }

    deviceLanguage = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
    deviceLanguage2 = [v5 deviceLanguage];
    v33 = deviceLanguage2;
    if (deviceLanguage == deviceLanguage2)
    {
    }

    else
    {
      deviceLanguage3 = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
      deviceLanguage4 = [v5 deviceLanguage];
      v36 = [deviceLanguage3 isEqual:deviceLanguage4];

      if (!v36)
      {
        goto LABEL_142;
      }
    }

    proofingDecision = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
    proofingDecision2 = [v5 proofingDecision];
    v39 = proofingDecision2;
    if (proofingDecision == proofingDecision2)
    {
    }

    else
    {
      proofingDecision3 = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
      proofingDecision4 = [v5 proofingDecision];
      v42 = [proofingDecision3 isEqual:proofingDecision4];

      if (!v42)
      {
        goto LABEL_142;
      }
    }

    issuer = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
    issuer2 = [v5 issuer];
    v45 = issuer2;
    if (issuer == issuer2)
    {
    }

    else
    {
      issuer3 = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
      issuer4 = [v5 issuer];
      v48 = [issuer3 isEqual:issuer4];

      if (!v48)
      {
        goto LABEL_142;
      }
    }

    alAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
    alAssessment2 = [v5 alAssessment];
    v51 = alAssessment2;
    if (alAssessment == alAssessment2)
    {
    }

    else
    {
      alAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
      alAssessment4 = [v5 alAssessment];
      v54 = [alAssessment3 isEqual:alAssessment4];

      if (!v54)
      {
        goto LABEL_142;
      }
    }

    alGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
    alGestureAssessment2 = [v5 alGestureAssessment];
    v57 = alGestureAssessment2;
    if (alGestureAssessment == alGestureAssessment2)
    {
    }

    else
    {
      alGestureAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
      alGestureAssessment4 = [v5 alGestureAssessment];
      v60 = [alGestureAssessment3 isEqual:alGestureAssessment4];

      if (!v60)
      {
        goto LABEL_142;
      }
    }

    axSettings = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
    axSettings2 = [v5 axSettings];
    v63 = axSettings2;
    if (axSettings == axSettings2)
    {
    }

    else
    {
      axSettings3 = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
      axSettings4 = [v5 axSettings];
      v66 = [axSettings3 isEqual:axSettings4];

      if (!v66)
      {
        goto LABEL_142;
      }
    }

    alFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
    alFacVersion2 = [v5 alFacVersion];
    v69 = alFacVersion2;
    if (alFacVersion == alFacVersion2)
    {
    }

    else
    {
      alFacVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
      alFacVersion4 = [v5 alFacVersion];
      v72 = [alFacVersion3 isEqual:alFacVersion4];

      if (!v72)
      {
        goto LABEL_142;
      }
    }

    alFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
    alFacePoseVersion2 = [v5 alFacePoseVersion];
    v75 = alFacePoseVersion2;
    if (alFacePoseVersion == alFacePoseVersion2)
    {
    }

    else
    {
      alFacePoseVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
      alFacePoseVersion4 = [v5 alFacePoseVersion];
      v78 = [alFacePoseVersion3 isEqual:alFacePoseVersion4];

      if (!v78)
      {
        goto LABEL_142;
      }
    }

    alPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
    alPadtoolVersion2 = [v5 alPadtoolVersion];
    v81 = alPadtoolVersion2;
    if (alPadtoolVersion == alPadtoolVersion2)
    {
    }

    else
    {
      alPadtoolVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
      alPadtoolVersion4 = [v5 alPadtoolVersion];
      v84 = [alPadtoolVersion3 isEqual:alPadtoolVersion4];

      if (!v84)
      {
        goto LABEL_142;
      }
    }

    alPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
    alPrdVersion2 = [v5 alPrdVersion];
    v87 = alPrdVersion2;
    if (alPrdVersion == alPrdVersion2)
    {
    }

    else
    {
      alPrdVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
      alPrdVersion4 = [v5 alPrdVersion];
      v90 = [alPrdVersion3 isEqual:alPrdVersion4];

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

      didStepUp = [(BMWalletPaymentsCommerceUserProofingResult *)self didStepUp];
      if (didStepUp != [v5 didStepUp])
      {
        goto LABEL_142;
      }
    }

    plGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
    plGestureAssessment2 = [v5 plGestureAssessment];
    v94 = plGestureAssessment2;
    if (plGestureAssessment == plGestureAssessment2)
    {
    }

    else
    {
      plGestureAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
      plGestureAssessment4 = [v5 plGestureAssessment];
      v97 = [plGestureAssessment3 isEqual:plGestureAssessment4];

      if (!v97)
      {
        goto LABEL_142;
      }
    }

    plAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
    plAssessment2 = [v5 plAssessment];
    v100 = plAssessment2;
    if (plAssessment == plAssessment2)
    {
    }

    else
    {
      plAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
      plAssessment4 = [v5 plAssessment];
      v103 = [plAssessment3 isEqual:plAssessment4];

      if (!v103)
      {
        goto LABEL_142;
      }
    }

    plFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
    plFacVersion2 = [v5 plFacVersion];
    v106 = plFacVersion2;
    if (plFacVersion == plFacVersion2)
    {
    }

    else
    {
      plFacVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
      plFacVersion4 = [v5 plFacVersion];
      v109 = [plFacVersion3 isEqual:plFacVersion4];

      if (!v109)
      {
        goto LABEL_142;
      }
    }

    plFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
    plFacePoseVersion2 = [v5 plFacePoseVersion];
    v112 = plFacePoseVersion2;
    if (plFacePoseVersion == plFacePoseVersion2)
    {
    }

    else
    {
      plFacePoseVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
      plFacePoseVersion4 = [v5 plFacePoseVersion];
      v115 = [plFacePoseVersion3 isEqual:plFacePoseVersion4];

      if (!v115)
      {
        goto LABEL_142;
      }
    }

    plPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
    plPadtoolVersion2 = [v5 plPadtoolVersion];
    v118 = plPadtoolVersion2;
    if (plPadtoolVersion == plPadtoolVersion2)
    {
    }

    else
    {
      plPadtoolVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
      plPadtoolVersion4 = [v5 plPadtoolVersion];
      v121 = [plPadtoolVersion3 isEqual:plPadtoolVersion4];

      if (!v121)
      {
        goto LABEL_142;
      }
    }

    plPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
    plPrdVersion2 = [v5 plPrdVersion];
    v124 = plPrdVersion2;
    if (plPrdVersion == plPrdVersion2)
    {
    }

    else
    {
      plPrdVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
      plPrdVersion4 = [v5 plPrdVersion];
      v127 = [plPrdVersion3 isEqual:plPrdVersion4];

      if (!v127)
      {
        goto LABEL_142;
      }
    }

    shadowLabel = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
    shadowLabel2 = [v5 shadowLabel];
    v130 = shadowLabel2;
    if (shadowLabel == shadowLabel2)
    {
    }

    else
    {
      shadowLabel3 = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
      shadowLabel4 = [v5 shadowLabel];
      v133 = [shadowLabel3 isEqual:shadowLabel4];

      if (!v133)
      {
        goto LABEL_142;
      }
    }

    smFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
    smFacVersion2 = [v5 smFacVersion];
    v136 = smFacVersion2;
    if (smFacVersion == smFacVersion2)
    {
    }

    else
    {
      smFacVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
      smFacVersion4 = [v5 smFacVersion];
      v139 = [smFacVersion3 isEqual:smFacVersion4];

      if (!v139)
      {
        goto LABEL_142;
      }
    }

    smFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
    smFacePoseVersion2 = [v5 smFacePoseVersion];
    v142 = smFacePoseVersion2;
    if (smFacePoseVersion == smFacePoseVersion2)
    {
    }

    else
    {
      smFacePoseVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
      smFacePoseVersion4 = [v5 smFacePoseVersion];
      v145 = [smFacePoseVersion3 isEqual:smFacePoseVersion4];

      if (!v145)
      {
        goto LABEL_142;
      }
    }

    smPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
    smPrdVersion2 = [v5 smPrdVersion];
    v148 = smPrdVersion2;
    if (smPrdVersion == smPrdVersion2)
    {
    }

    else
    {
      smPrdVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
      smPrdVersion4 = [v5 smPrdVersion];
      v151 = [smPrdVersion3 isEqual:smPrdVersion4];

      if (!v151)
      {
        goto LABEL_142;
      }
    }

    smPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
    smPadtoolVersion2 = [v5 smPadtoolVersion];
    v154 = smPadtoolVersion2;
    if (smPadtoolVersion == smPadtoolVersion2)
    {
    }

    else
    {
      smPadtoolVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
      smPadtoolVersion4 = [v5 smPadtoolVersion];
      v157 = [smPadtoolVersion3 isEqual:smPadtoolVersion4];

      if (!v157)
      {
        goto LABEL_142;
      }
    }

    smLivenessAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
    smLivenessAssessment2 = [v5 smLivenessAssessment];
    v160 = smLivenessAssessment2;
    if (smLivenessAssessment == smLivenessAssessment2)
    {
    }

    else
    {
      smLivenessAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
      smLivenessAssessment4 = [v5 smLivenessAssessment];
      v163 = [smLivenessAssessment3 isEqual:smLivenessAssessment4];

      if (!v163)
      {
        goto LABEL_142;
      }
    }

    smGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
    smGestureAssessment2 = [v5 smGestureAssessment];
    v166 = smGestureAssessment2;
    if (smGestureAssessment == smGestureAssessment2)
    {
    }

    else
    {
      smGestureAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
      smGestureAssessment4 = [v5 smGestureAssessment];
      v169 = [smGestureAssessment3 isEqual:smGestureAssessment4];

      if (!v169)
      {
        goto LABEL_142;
      }
    }

    smLivenessType = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
    smLivenessType2 = [v5 smLivenessType];
    v172 = smLivenessType2;
    if (smLivenessType == smLivenessType2)
    {
    }

    else
    {
      smLivenessType3 = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
      smLivenessType4 = [v5 smLivenessType];
      v175 = [smLivenessType3 isEqual:smLivenessType4];

      if (!v175)
      {
        goto LABEL_142;
      }
    }

    fmAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
    fmAssessment2 = [v5 fmAssessment];
    v178 = fmAssessment2;
    if (fmAssessment == fmAssessment2)
    {
    }

    else
    {
      fmAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
      fmAssessment4 = [v5 fmAssessment];
      v181 = [fmAssessment3 isEqual:fmAssessment4];

      if (!v181)
      {
        goto LABEL_142;
      }
    }

    fmModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
    fmModelVersion2 = [v5 fmModelVersion];
    v184 = fmModelVersion2;
    if (fmModelVersion == fmModelVersion2)
    {
    }

    else
    {
      fmModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
      fmModelVersion4 = [v5 fmModelVersion];
      v187 = [fmModelVersion3 isEqual:fmModelVersion4];

      if (!v187)
      {
        goto LABEL_142;
      }
    }

    fmDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
    fmDetectorModelVersion2 = [v5 fmDetectorModelVersion];
    v190 = fmDetectorModelVersion2;
    if (fmDetectorModelVersion == fmDetectorModelVersion2)
    {
    }

    else
    {
      fmDetectorModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
      fmDetectorModelVersion4 = [v5 fmDetectorModelVersion];
      v193 = [fmDetectorModelVersion3 isEqual:fmDetectorModelVersion4];

      if (!v193)
      {
        goto LABEL_142;
      }
    }

    fmSMAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
    fmSMAssessment2 = [v5 fmSMAssessment];
    v196 = fmSMAssessment2;
    if (fmSMAssessment == fmSMAssessment2)
    {
    }

    else
    {
      fmSMAssessment3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
      fmSMAssessment4 = [v5 fmSMAssessment];
      v199 = [fmSMAssessment3 isEqual:fmSMAssessment4];

      if (!v199)
      {
        goto LABEL_142;
      }
    }

    fmSMModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
    fmSMModelVersion2 = [v5 fmSMModelVersion];
    v202 = fmSMModelVersion2;
    if (fmSMModelVersion == fmSMModelVersion2)
    {
    }

    else
    {
      fmSMModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
      fmSMModelVersion4 = [v5 fmSMModelVersion];
      v205 = [fmSMModelVersion3 isEqual:fmSMModelVersion4];

      if (!v205)
      {
        goto LABEL_142;
      }
    }

    fmSMDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
    fmSMDetectorModelVersion2 = [v5 fmSMDetectorModelVersion];
    v208 = fmSMDetectorModelVersion2;
    if (fmSMDetectorModelVersion == fmSMDetectorModelVersion2)
    {
    }

    else
    {
      fmSMDetectorModelVersion3 = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
      fmSMDetectorModelVersion4 = [v5 fmSMDetectorModelVersion];
      v211 = [fmSMDetectorModelVersion3 isEqual:fmSMDetectorModelVersion4];

      if (!v211)
      {
LABEL_142:
        v12 = 0;
LABEL_143:

        goto LABEL_144;
      }
    }

    identityType = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
    identityType2 = [v5 identityType];
    if (identityType == identityType2)
    {
      v12 = 1;
    }

    else
    {
      identityType3 = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
      identityType4 = [v5 identityType];
      v12 = [identityType3 isEqual:identityType4];
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
  null60 = [(BMWalletPaymentsCommerceUserProofingResult *)self age];
  gender = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
  skinTone = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
  ethnicity = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
  deviceLanguage = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
  proofingDecision = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
  issuer = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
  alAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
  alGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
  _axSettingsJSONArray = [(BMWalletPaymentsCommerceUserProofingResult *)self _axSettingsJSONArray];
  alFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
  alFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
  alPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
  alPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
  if ([(BMWalletPaymentsCommerceUserProofingResult *)self hasDidStepUp])
  {
    v136 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceUserProofingResult didStepUp](self, "didStepUp")}];
  }

  else
  {
    v136 = 0;
  }

  plGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
  plAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
  plFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
  plFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
  plPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
  plPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
  shadowLabel = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
  smFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
  smFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
  smPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
  smPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
  smLivenessAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
  smGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
  smLivenessType = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
  fmAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
  fmModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
  fmDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
  fmSMAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
  fmSMModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
  fmSMDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
  identityType = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
  v141[0] = @"age";
  null = null60;
  if (!null60)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null;
  v196[0] = null;
  v141[1] = @"gender";
  null2 = gender;
  if (!gender)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null2;
  v196[1] = null2;
  v141[2] = @"skinTone";
  null3 = skinTone;
  if (!skinTone)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null3;
  v196[2] = null3;
  v141[3] = @"ethnicity";
  null4 = ethnicity;
  if (!ethnicity)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null4;
  v196[3] = null4;
  v141[4] = @"deviceLanguage";
  null5 = deviceLanguage;
  if (!deviceLanguage)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null5;
  v196[4] = null5;
  v141[5] = @"proofingDecision";
  null6 = proofingDecision;
  if (!proofingDecision)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = identityType;
  v102 = null6;
  v196[5] = null6;
  v141[6] = @"issuer";
  null7 = issuer;
  if (!issuer)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null7;
  v196[6] = null7;
  v141[7] = @"alAssessment";
  if (alAssessment)
  {
    v197 = alAssessment;
    v142 = @"livenessAssessment";
    null9 = alAssessment;
  }

  else
  {
    null8 = [MEMORY[0x1E695DFB0] null];
    v197 = null8;
    v142 = @"livenessAssessment";
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null9;
  v198 = null9;
  v143 = @"alGestureAssessment";
  if (alGestureAssessment)
  {
    v199 = alGestureAssessment;
    v144 = @"gestureAssessment";
    null11 = alGestureAssessment;
  }

  else
  {
    null10 = [MEMORY[0x1E695DFB0] null];
    v199 = null10;
    v144 = @"gestureAssessment";
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v99 = null11;
  v200 = null11;
  v145 = @"axSettings";
  null12 = _axSettingsJSONArray;
  if (!_axSettingsJSONArray)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v98 = null12;
  v201 = null12;
  v146 = @"alFacVersion";
  if (alFacVersion)
  {
    v202 = alFacVersion;
    v147 = @"facVersion";
    null14 = alFacVersion;
  }

  else
  {
    null13 = [MEMORY[0x1E695DFB0] null];
    v202 = null13;
    v147 = @"facVersion";
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v97 = null14;
  v203 = null14;
  v148 = @"alFacePoseVersion";
  if (alFacePoseVersion)
  {
    v204 = alFacePoseVersion;
    v149 = @"facePoseVersion";
    null16 = alFacePoseVersion;
  }

  else
  {
    null15 = [MEMORY[0x1E695DFB0] null];
    v204 = null15;
    v149 = @"facePoseVersion";
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v96 = null16;
  v205 = null16;
  v150 = @"alPadtoolVersion";
  if (alPadtoolVersion)
  {
    v206 = alPadtoolVersion;
    v151 = @"padtoolVersion";
    null18 = alPadtoolVersion;
  }

  else
  {
    null17 = [MEMORY[0x1E695DFB0] null];
    v206 = null17;
    v151 = @"padtoolVersion";
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = null18;
  v207 = null18;
  v152 = @"alPrdVersion";
  if (alPrdVersion)
  {
    v208 = alPrdVersion;
    v153 = @"prdVersion";
    null20 = alPrdVersion;
  }

  else
  {
    null19 = [MEMORY[0x1E695DFB0] null];
    v208 = null19;
    v153 = @"prdVersion";
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = null20;
  v209 = null20;
  v154 = @"didStepUp";
  null21 = v136;
  if (!v136)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null21;
  v210 = null21;
  v155 = @"plGestureAssessment";
  if (plGestureAssessment)
  {
    v211 = plGestureAssessment;
    v156 = @"passiveGestureAssessment";
    null23 = plGestureAssessment;
  }

  else
  {
    null22 = [MEMORY[0x1E695DFB0] null];
    v211 = null22;
    v156 = @"passiveGestureAssessment";
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null23;
  v212 = null23;
  v157 = @"plAssessment";
  if (plAssessment)
  {
    v213 = plAssessment;
    v158 = @"passiveLivenessAssessment";
    null25 = plAssessment;
  }

  else
  {
    null24 = [MEMORY[0x1E695DFB0] null];
    v213 = null24;
    v158 = @"passiveLivenessAssessment";
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v91 = null25;
  v214 = null25;
  v159 = @"plFacVersion";
  if (plFacVersion)
  {
    v215 = plFacVersion;
    v160 = @"passiveLivenessFacVersion";
    null27 = plFacVersion;
  }

  else
  {
    null26 = [MEMORY[0x1E695DFB0] null];
    v215 = null26;
    v160 = @"passiveLivenessFacVersion";
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v90 = null27;
  v216 = null27;
  v161 = @"plFacePoseVersion";
  if (plFacePoseVersion)
  {
    v217 = plFacePoseVersion;
    v162 = @"passiveLivenessFacePoseVersion";
    null29 = plFacePoseVersion;
  }

  else
  {
    null28 = [MEMORY[0x1E695DFB0] null];
    v217 = null28;
    v162 = @"passiveLivenessFacePoseVersion";
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = null29;
  v218 = null29;
  v163 = @"plPadtoolVersion";
  if (plPadtoolVersion)
  {
    v219 = plPadtoolVersion;
    v164 = @"passiveLivenessPadtoolVersion";
    null31 = plPadtoolVersion;
  }

  else
  {
    null30 = [MEMORY[0x1E695DFB0] null];
    v219 = null30;
    v164 = @"passiveLivenessPadtoolVersion";
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v88 = null31;
  v220 = null31;
  v165 = @"plPrdVersion";
  if (plPrdVersion)
  {
    v221 = plPrdVersion;
    v166 = @"passiveLivenessPrdVersion";
    null33 = plPrdVersion;
  }

  else
  {
    null32 = [MEMORY[0x1E695DFB0] null];
    v221 = null32;
    v166 = @"passiveLivenessPrdVersion";
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null33;
  v222 = null33;
  v167 = @"shadowLabel";
  if (shadowLabel)
  {
    v223 = shadowLabel;
    v168 = @"livenessShadowLabel";
    null35 = shadowLabel;
  }

  else
  {
    null34 = [MEMORY[0x1E695DFB0] null];
    v223 = null34;
    v168 = @"livenessShadowLabel";
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null35;
  v224 = null35;
  v169 = @"smFacVersion";
  if (smFacVersion)
  {
    v225 = smFacVersion;
    v170 = @"livenessShadowFacVersion";
    null37 = smFacVersion;
  }

  else
  {
    null36 = [MEMORY[0x1E695DFB0] null];
    v225 = null36;
    v170 = @"livenessShadowFacVersion";
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null37;
  v226 = null37;
  v171 = @"smFacePoseVersion";
  if (smFacePoseVersion)
  {
    v227 = smFacePoseVersion;
    v172 = @"livenessShadowFacePoseVersion";
    null39 = smFacePoseVersion;
  }

  else
  {
    null38 = [MEMORY[0x1E695DFB0] null];
    v227 = null38;
    v172 = @"livenessShadowFacePoseVersion";
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null39;
  v228 = null39;
  v173 = @"smPrdVersion";
  if (smPrdVersion)
  {
    v229 = smPrdVersion;
    v174 = @"livenessShadowPrdVersion";
    null41 = smPrdVersion;
  }

  else
  {
    null40 = [MEMORY[0x1E695DFB0] null];
    v229 = null40;
    v174 = @"livenessShadowPrdVersion";
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null41;
  v230 = null41;
  v175 = @"smPadtoolVersion";
  if (smPadtoolVersion)
  {
    v231 = smPadtoolVersion;
    v176 = @"livenessShadowPadtoolVersion";
    null43 = smPadtoolVersion;
  }

  else
  {
    null42 = [MEMORY[0x1E695DFB0] null];
    v231 = null42;
    v176 = @"livenessShadowPadtoolVersion";
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null43;
  v232 = null43;
  v177 = @"smLivenessAssessment";
  if (smLivenessAssessment)
  {
    v233 = smLivenessAssessment;
    v178 = @"livenessShadowLivenessAssessment";
    null45 = smLivenessAssessment;
  }

  else
  {
    null44 = [MEMORY[0x1E695DFB0] null];
    v233 = null44;
    v178 = @"livenessShadowLivenessAssessment";
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null45;
  v234 = null45;
  v179 = @"smGestureAssessment";
  if (smGestureAssessment)
  {
    v235 = smGestureAssessment;
    v180 = @"livenessShadowGestureAssessment";
    null47 = smGestureAssessment;
  }

  else
  {
    null46 = [MEMORY[0x1E695DFB0] null];
    v235 = null46;
    v180 = @"livenessShadowGestureAssessment";
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = gender;
  v112 = null60;
  v80 = null47;
  v236 = null47;
  v181 = @"smLivenessType";
  if (smLivenessType)
  {
    v237 = smLivenessType;
    v182 = @"livenessShadowLivenessType";
    null49 = smLivenessType;
  }

  else
  {
    null48 = [MEMORY[0x1E695DFB0] null];
    v237 = null48;
    v182 = @"livenessShadowLivenessType";
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null49;
  v238 = null49;
  v183 = @"fmAssessment";
  if (fmAssessment)
  {
    v239 = fmAssessment;
    v184 = @"faceMatchingAssessment";
    null51 = fmAssessment;
  }

  else
  {
    null50 = [MEMORY[0x1E695DFB0] null];
    v239 = null50;
    v184 = @"faceMatchingAssessment";
    null51 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null51;
  v240 = null51;
  v185 = @"fmModelVersion";
  if (fmModelVersion)
  {
    v241 = fmModelVersion;
    v186 = @"faceMatchingModelVersion";
    null53 = fmModelVersion;
  }

  else
  {
    null52 = [MEMORY[0x1E695DFB0] null];
    v241 = null52;
    v186 = @"faceMatchingModelVersion";
    null53 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = alAssessment;
  v110 = proofingDecision;
  v77 = null53;
  v242 = null53;
  v187 = @"fmDetectorModelVersion";
  null55 = fmDetectorModelVersion;
  if (fmDetectorModelVersion)
  {
    v243 = fmDetectorModelVersion;
    v188 = @"faceMatchingDetectorModelVersion";
  }

  else
  {
    null54 = [MEMORY[0x1E695DFB0] null];
    v243 = null54;
    v188 = @"faceMatchingDetectorModelVersion";
    null55 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = issuer;
  v244 = null55;
  v189 = @"fmSMAssessment";
  null57 = fmSMAssessment;
  if (fmSMAssessment)
  {
    v245 = fmSMAssessment;
    v190 = @"faceMatchingShadowAssessment";
  }

  else
  {
    null56 = [MEMORY[0x1E695DFB0] null];
    v245 = null56;
    v190 = @"faceMatchingShadowAssessment";
    null57 = [MEMORY[0x1E695DFB0] null];
  }

  v246 = null57;
  v191 = @"fmSMModelVersion";
  v46 = skinTone;
  if (fmSMModelVersion)
  {
    v247 = fmSMModelVersion;
    v192 = @"faceMatchingShadowModelVersion";
    null59 = fmSMModelVersion;
  }

  else
  {
    null60 = 0x1E695D000;
    null58 = [MEMORY[0x1E695DFB0] null];
    v247 = null58;
    v192 = @"faceMatchingShadowModelVersion";
    null59 = [MEMORY[0x1E695DFB0] null];
  }

  v248 = null59;
  v193 = @"fmSMDetectorModelVersion";
  if (fmSMDetectorModelVersion)
  {
    v249 = fmSMDetectorModelVersion;
    v194 = @"faceMatchingShadowDetectorModelVersion";
    null61 = fmSMDetectorModelVersion;
  }

  else
  {
    null60 = [MEMORY[0x1E695DFB0] null];
    v249 = null60;
    v194 = @"faceMatchingShadowDetectorModelVersion";
    null61 = [MEMORY[0x1E695DFB0] null];
  }

  v250 = null61;
  v195 = @"identityType";
  null62 = v113;
  if (!v113)
  {
    null62 = [MEMORY[0x1E695DFB0] null];
  }

  v251 = null62;
  v108 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v196 forKeys:v141 count:62];
  if (!v113)
  {
  }

  if (!fmSMDetectorModelVersion)
  {
  }

  if (!fmSMModelVersion)
  {
  }

  if (!fmSMAssessment)
  {
  }

  if (!fmDetectorModelVersion)
  {
  }

  if (!fmModelVersion)
  {
  }

  if (!fmAssessment)
  {
  }

  if (!smLivenessType)
  {
  }

  if (!smGestureAssessment)
  {
  }

  if (!smLivenessAssessment)
  {
  }

  if (!smPadtoolVersion)
  {
  }

  if (!smPrdVersion)
  {
  }

  if (!smFacePoseVersion)
  {
  }

  if (!smFacVersion)
  {
  }

  if (!shadowLabel)
  {
  }

  if (!plPrdVersion)
  {
  }

  if (!plPadtoolVersion)
  {
  }

  if (!plFacePoseVersion)
  {
  }

  if (!plFacVersion)
  {
  }

  if (!plAssessment)
  {
  }

  if (!plGestureAssessment)
  {
  }

  if (!v136)
  {
  }

  if (!alPrdVersion)
  {
  }

  if (!alPadtoolVersion)
  {
  }

  if (alFacePoseVersion)
  {
    if (alFacVersion)
    {
      goto LABEL_152;
    }
  }

  else
  {

    if (alFacVersion)
    {
      goto LABEL_152;
    }
  }

LABEL_152:
  if (_axSettingsJSONArray)
  {
    if (alGestureAssessment)
    {
      goto LABEL_154;
    }
  }

  else
  {

    if (alGestureAssessment)
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
    if (deviceLanguage)
    {
      goto LABEL_158;
    }

    goto LABEL_172;
  }

LABEL_171:

  if (deviceLanguage)
  {
LABEL_158:
    if (ethnicity)
    {
      goto LABEL_159;
    }

    goto LABEL_173;
  }

LABEL_172:

  if (ethnicity)
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
  axSettings = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
  v5 = [axSettings countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(axSettings);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [axSettings countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMWalletPaymentsCommerceUserProofingResult)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v415[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"age"];
  v7 = 0x1E695D000uLL;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v414 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"age"];
        v415[0] = v33;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v415 forKeys:&v414 count:1];
        v8 = 0;
        selfCopy5 = 0;
        *error = [v31 initWithDomain:v32 code:2 userInfo:v9];
        goto LABEL_437;
      }

      v8 = 0;
      selfCopy5 = 0;
      goto LABEL_438;
    }

    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"gender"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
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
        selfCopy5 = 0;
        *error = v41;
        goto LABEL_436;
      }

      v33 = 0;
      selfCopy5 = 0;
      goto LABEL_437;
    }

    v332 = v9;
    v7 = 0x1E695D000;
  }

  else
  {
    v332 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"skinTone"];
  v331 = v9;
  v333 = v10;
  if (v10 && (v11 = v10, v12 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v13 = 0;
        selfCopy5 = 0;
        v33 = v332;
        goto LABEL_436;
      }

      errorCopy = error;
      v42 = objc_alloc(MEMORY[0x1E696ABC0]);
      v43 = *MEMORY[0x1E698F240];
      v410 = *MEMORY[0x1E696A578];
      error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"skinTone"];
      errorCopy2 = error;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v410 count:1];
      v45 = v42;
      v15 = v44;
      v46 = [v45 initWithDomain:v43 code:2 userInfo:v44];
      v13 = 0;
      selfCopy5 = 0;
      *errorCopy = v46;
      goto LABEL_74;
    }

    v13 = v11;
    v7 = 0x1E695D000;
  }

  else
  {
    v13 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"ethnicity"];
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

      if (error)
      {
        errorCopy3 = error;
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
        error = 0;
        selfCopy5 = 0;
        *errorCopy3 = v52;
        v33 = v332;
        goto LABEL_434;
      }

      selfCopy5 = 0;
LABEL_74:
      v33 = v332;
      goto LABEL_435;
    }
  }

  v329 = 0;
LABEL_13:
  v17 = [dictionaryCopy objectForKeyedSubscript:@"deviceLanguage"];
  if (v17 && (v18 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v310 = v13;
        v53 = objc_alloc(MEMORY[0x1E696ABC0]);
        v54 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        errorCopy4 = error;
        v325 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"deviceLanguage"];
        v407 = v325;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v56 = v53;
        v13 = v310;
        error = v329;
        v326 = v55;
        v57 = [v56 initWithDomain:v54 code:2 userInfo:?];
        v50 = 0;
        selfCopy5 = 0;
        *errorCopy4 = v57;
        v33 = v332;
        goto LABEL_433;
      }

      v50 = 0;
      selfCopy5 = 0;
      v33 = v332;
      error = v329;
      goto LABEL_434;
    }

    v317 = v17;
    v7 = 0x1E695D000;
  }

  else
  {
    v317 = 0;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"proofingDecision"];
  v326 = v19;
  if (v19 && (v20 = v19, v21 = *(v7 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v311 = v13;
        v58 = objc_alloc(MEMORY[0x1E696ABC0]);
        v59 = *MEMORY[0x1E698F240];
        v404 = *MEMORY[0x1E696A578];
        errorCopy5 = error;
        v316 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"proofingDecision"];
        v405 = v316;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
        v60 = v58;
        v13 = v311;
        error = v329;
        v61 = [v60 initWithDomain:v59 code:2 userInfo:v27];
        v325 = 0;
        selfCopy5 = 0;
        *errorCopy5 = v61;
        v33 = v332;
        v50 = v317;
        goto LABEL_432;
      }

      v325 = 0;
      selfCopy5 = 0;
      v33 = v332;
      v50 = v317;
      error = v329;
      goto LABEL_433;
    }

    v35 = v13;
    v23 = v17;
    v24 = v8;
    selfCopy2 = self;
    v26 = v35;
    v327 = v6;
    v325 = v20;
  }

  else
  {
    v22 = v13;
    v23 = v17;
    v24 = v8;
    selfCopy2 = self;
    v26 = v22;
    v327 = v6;
    v325 = 0;
  }

  v324 = v24;
  v27 = [dictionaryCopy objectForKeyedSubscript:@"issuer"];
  v318 = v27;
  if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v313 = v26;
        v67 = objc_alloc(MEMORY[0x1E696ABC0]);
        v68 = *MEMORY[0x1E698F240];
        v402 = *MEMORY[0x1E696A578];
        errorCopy6 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"issuer"];
        errorCopy7 = error;
        v315 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy7 forKeys:&v402 count:1];
        v70 = [v67 initWithDomain:v68 code:2 userInfo:?];
        v316 = 0;
        selfCopy5 = 0;
        *errorCopy6 = v70;
        v33 = v332;
        v50 = v317;
        v71 = selfCopy2;
        v8 = v324;
        v17 = v23;
        v6 = v327;
        v13 = v313;
        self = v71;
        goto LABEL_431;
      }

      v316 = 0;
      selfCopy5 = 0;
      v33 = v332;
      v50 = v317;
      v106 = selfCopy2;
      v8 = v324;
      v6 = v327;
      v107 = v26;
      self = v106;
      error = v329;
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

  v29 = [dictionaryCopy objectForKeyedSubscript:@"alAssessment"];
  v316 = v28;
  v308 = v23;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = [dictionaryCopy objectForKeyedSubscript:@"livenessAssessment"];

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
    if (error)
    {
      v312 = v26;
      errorCopy8 = error;
      v63 = objc_alloc(MEMORY[0x1E696ABC0]);
      v64 = *MEMORY[0x1E698F240];
      v400 = *MEMORY[0x1E696A578];
      v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alAssessment"];
      v401 = v307;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
      v309 = v13 = v312;
      v65 = [v63 initWithDomain:v64 code:2 userInfo:v309];
      error = 0;
      selfCopy5 = 0;
      *errorCopy8 = v65;
      v33 = v332;
      v50 = v317;
      v66 = selfCopy2;
      v8 = v324;
      v6 = v327;
      self = v66;
      goto LABEL_430;
    }

    selfCopy5 = 0;
    v33 = v332;
    v50 = v317;
    v103 = selfCopy2;
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
  v72 = [dictionaryCopy objectForKeyedSubscript:@"alGestureAssessment"];
  if (v72)
  {
    v73 = v72;
  }

  else
  {
    v73 = [dictionaryCopy objectForKeyedSubscript:@"gestureAssessment"];

    if (!v73)
    {
      errorCopy11 = error;
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
      if (error)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = *MEMORY[0x1E698F240];
        v398 = *MEMORY[0x1E696A578];
        v306 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alGestureAssessment"];
        v399 = v306;
        v303 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
        v76 = [v74 initWithDomain:v75 code:2 userInfo:?];
        v307 = 0;
        selfCopy5 = 0;
        *error = v76;
        v33 = v332;
        v50 = v317;
        error = v305;
        v6 = v327;
        v13 = v26;
        self = selfCopy2;
        v8 = v324;

        goto LABEL_429;
      }

      v307 = 0;
      selfCopy5 = 0;
      v33 = v332;
      v50 = v317;
      error = v305;
      v6 = v327;
      v13 = v26;
      self = selfCopy2;
      v8 = v324;
      goto LABEL_430;
    }

    errorCopy11 = error;
    v309 = v73;
    v307 = v309;
    goto LABEL_77;
  }

  v309 = v73;
  errorCopy11 = error;
LABEL_76:
  v307 = 0;
LABEL_77:
  v77 = [dictionaryCopy objectForKeyedSubscript:@"axSettings"];
  null = [MEMORY[0x1E695DFB0] null];
  v79 = [v77 isEqual:null];

  v6 = v327;
  v314 = v26;
  if (v79)
  {
    self = selfCopy2;

    v77 = 0;
  }

  else
  {
    v13 = v26;
    self = selfCopy2;
    if (v77)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = v324;
        v306 = v77;
        if (!errorCopy11)
        {
          selfCopy5 = 0;
          v33 = v332;
          v50 = v317;
          error = v305;
          goto LABEL_429;
        }

        v100 = objc_alloc(MEMORY[0x1E696ABC0]);
        v101 = *MEMORY[0x1E698F240];
        v396 = *MEMORY[0x1E696A578];
        v304 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"axSettings"];
        v397 = v304;
        v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v397 forKeys:&v396 count:1];
        selfCopy5 = 0;
        *errorCopy11 = [v100 initWithDomain:v101 code:2 userInfo:v102];
        v99 = v102;
        v33 = v332;
        v50 = v317;
LABEL_101:
        error = v305;
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
        if (errorCopy11)
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
          error = v305;
          selfCopy5 = 0;
          *errorCopy11 = [v93 initWithDomain:v94 code:2 userInfo:v95];
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
        if (errorCopy11)
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
        selfCopy5 = 0;
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

  v88 = [dictionaryCopy objectForKeyedSubscript:@"alFacVersion"];
  if (v88)
  {
    v89 = v88;

    goto LABEL_105;
  }

  v89 = [dictionaryCopy objectForKeyedSubscript:@"facVersion"];

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
    if (errorCopy11)
    {
      v108 = objc_alloc(MEMORY[0x1E696ABC0]);
      v109 = *MEMORY[0x1E698F240];
      v389 = *MEMORY[0x1E696A578];
      v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alFacVersion"];
      v390 = v92;
      v300 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v390 forKeys:&v389 count:1];
      v301 = 0;
      selfCopy5 = 0;
      *errorCopy11 = [v108 initWithDomain:v109 code:2 userInfo:?];
      v6 = v327;
      v33 = v332;
      v50 = v317;
      goto LABEL_167;
    }

    v301 = 0;
    selfCopy5 = 0;
    v6 = v327;
    v33 = v332;
    v50 = v317;
    error = v305;
    v13 = v314;
    goto LABEL_427;
  }

  v89 = v89;
  v301 = v89;
LABEL_109:
  v105 = [dictionaryCopy objectForKeyedSubscript:@"alFacePoseVersion"];
  v302 = v89;
  if (v105)
  {
    v92 = v105;

    v8 = v324;
    goto LABEL_114;
  }

  v92 = [dictionaryCopy objectForKeyedSubscript:@"facePoseVersion"];

  v8 = v324;
  if (!v92)
  {
    v300 = 0;
    v6 = v327;
LABEL_124:
    v113 = [dictionaryCopy objectForKeyedSubscript:@"alPadtoolVersion"];
    if (v113)
    {
      v112 = v113;
    }

    else
    {
      v112 = [dictionaryCopy objectForKeyedSubscript:@"padtoolVersion"];

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
        if (!errorCopy11)
        {
          v298 = 0;
          selfCopy5 = 0;
          v33 = v332;
          v50 = v317;
          v27 = v318;
          error = v305;
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
        selfCopy5 = 0;
        *errorCopy11 = v118;
        v33 = v332;
        v50 = v317;
        v27 = v318;
        error = v305;
        goto LABEL_423;
      }

      v112 = v112;
      v298 = v112;
      v27 = v318;
LABEL_131:
      v114 = [dictionaryCopy objectForKeyedSubscript:@"alPrdVersion"];
      v297 = v112;
      if (v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = [dictionaryCopy objectForKeyedSubscript:@"prdVersion"];

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
        v121 = [dictionaryCopy objectForKeyedSubscript:@"didStepUp"];
        v292 = v121;
        if (!v121 || (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v290 = 0;
LABEL_148:
          v123 = [dictionaryCopy objectForKeyedSubscript:@"plGestureAssessment"];
          if (v123)
          {
            v124 = v123;
          }

          else
          {
            v124 = [dictionaryCopy objectForKeyedSubscript:@"passiveGestureAssessment"];

            if (!v124)
            {
LABEL_152:
              v287 = 0;
LABEL_155:
              v125 = [dictionaryCopy objectForKeyedSubscript:@"plAssessment"];
              v289 = v124;
              if (v125)
              {
                v126 = v125;
              }

              else
              {
                v126 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessAssessment"];

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
                v136 = [dictionaryCopy objectForKeyedSubscript:@"plFacVersion"];
                if (v136)
                {
                  v137 = v136;
                }

                else
                {
                  v137 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessFacVersion"];

                  if (!v137)
                  {
LABEL_180:
                    v282 = 0;
LABEL_183:
                    v281 = v137;
                    v138 = [dictionaryCopy objectForKeyedSubscript:@"plFacePoseVersion"];
                    if (v138)
                    {
                      v139 = v138;
                    }

                    else
                    {
                      v139 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessFacePoseVersion"];

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
                      v145 = [dictionaryCopy objectForKeyedSubscript:@"plPadtoolVersion"];
                      if (v145)
                      {
                        v146 = v145;
                      }

                      else
                      {
                        v146 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessPadtoolVersion"];

                        if (!v146)
                        {
LABEL_202:
                          v275 = 0;
LABEL_205:
                          v274 = v146;
                          v147 = [dictionaryCopy objectForKeyedSubscript:@"plPrdVersion"];
                          if (v147)
                          {
                            v148 = v147;
                          }

                          else
                          {
                            v148 = [dictionaryCopy objectForKeyedSubscript:@"passiveLivenessPrdVersion"];

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
                            v154 = [dictionaryCopy objectForKeyedSubscript:@"shadowLabel"];
                            if (v154)
                            {
                              v155 = v154;
                            }

                            else
                            {
                              v155 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowLabel"];

                              if (!v155)
                              {
LABEL_225:
                                v268 = 0;
LABEL_228:
                                v267 = v155;
                                v156 = [dictionaryCopy objectForKeyedSubscript:@"smFacVersion"];
                                if (v156)
                                {
                                  v157 = v156;
                                }

                                else
                                {
                                  v157 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowFacVersion"];

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
                                  v163 = [dictionaryCopy objectForKeyedSubscript:@"smFacePoseVersion"];
                                  if (v163)
                                  {
                                    v164 = v163;
                                  }

                                  else
                                  {
                                    v164 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowFacePoseVersion"];

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
                                    v165 = [dictionaryCopy objectForKeyedSubscript:@"smPrdVersion"];
                                    if (v165)
                                    {
                                      v166 = v165;
                                    }

                                    else
                                    {
                                      v166 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowPrdVersion"];

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
                                        if (!errorCopy11)
                                        {
                                          v258 = 0;
                                          selfCopy5 = 0;
                                          v33 = v332;
                                          v50 = v317;
                                          v27 = v318;
                                          error = v305;
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
                                        selfCopy5 = 0;
                                        *errorCopy11 = v171;
                                        goto LABEL_310;
                                      }

                                      v256 = v166;
                                      v258 = v256;
                                    }

LABEL_267:
                                    v172 = [dictionaryCopy objectForKeyedSubscript:@"smPadtoolVersion"];
                                    if (v172)
                                    {
                                      v173 = v172;
                                    }

                                    else
                                    {
                                      v173 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowPadtoolVersion"];

                                      if (!v173)
                                      {
LABEL_271:
                                        v254 = 0;
LABEL_274:
                                        v253 = v173;
                                        v174 = [dictionaryCopy objectForKeyedSubscript:@"smLivenessAssessment"];
                                        if (v174)
                                        {
                                          v175 = v174;
                                        }

                                        else
                                        {
                                          v175 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowLivenessAssessment"];

                                          if (!v175)
                                          {
LABEL_278:
                                            v251 = 0;
LABEL_281:
                                            v176 = [dictionaryCopy objectForKeyedSubscript:@"smGestureAssessment"];
                                            v249 = v175;
                                            if (v176)
                                            {
                                              v177 = v176;
                                            }

                                            else
                                            {
                                              v177 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowGestureAssessment"];

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
                                              v187 = [dictionaryCopy objectForKeyedSubscript:@"smLivenessType"];
                                              if (v187)
                                              {
                                                v188 = v187;
                                              }

                                              else
                                              {
                                                v188 = [dictionaryCopy objectForKeyedSubscript:@"livenessShadowLivenessType"];

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
                                                v192 = [dictionaryCopy objectForKeyedSubscript:@"fmAssessment"];
                                                selfCopy3 = self;
                                                v328 = v6;
                                                v239 = v92;
                                                if (v192)
                                                {
                                                  v193 = v192;
                                                }

                                                else
                                                {
                                                  v193 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingAssessment"];

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
                                                  v196 = [dictionaryCopy objectForKeyedSubscript:@"fmModelVersion"];
                                                  if (v196)
                                                  {
                                                    v197 = v196;
                                                  }

                                                  else
                                                  {
                                                    v197 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingModelVersion"];

                                                    if (!v197)
                                                    {
LABEL_328:
                                                      v240 = 0;
LABEL_331:
                                                      v198 = [dictionaryCopy objectForKeyedSubscript:@"fmDetectorModelVersion"];
                                                      v238 = v197;
                                                      if (v198)
                                                      {
                                                        v199 = v198;
                                                      }

                                                      else
                                                      {
                                                        v199 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingDetectorModelVersion"];

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
                                                        v204 = [dictionaryCopy objectForKeyedSubscript:@"fmSMAssessment"];
                                                        if (v204)
                                                        {
                                                          v205 = v204;
                                                        }

                                                        else
                                                        {
                                                          v205 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingShadowAssessment"];

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
                                                          v208 = [dictionaryCopy objectForKeyedSubscript:@"fmSMModelVersion"];
                                                          if (v208)
                                                          {
                                                            v209 = v208;
                                                          }

                                                          else
                                                          {
                                                            v209 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingShadowModelVersion"];

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
                                                              v212 = [dictionaryCopy objectForKeyedSubscript:@"fmSMDetectorModelVersion"];
                                                              if (v212)
                                                              {
                                                                v213 = v212;
                                                              }

                                                              else
                                                              {
                                                                selfCopy4 = self;
                                                                v213 = [dictionaryCopy objectForKeyedSubscript:@"faceMatchingShadowDetectorModelVersion"];

                                                                if (!v213)
                                                                {
                                                                  self = selfCopy4;
                                                                  v231 = 0;
                                                                  goto LABEL_383;
                                                                }
                                                              }

                                                              objc_opt_class();
                                                              v231 = v213;
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                self = selfCopy3;
LABEL_383:
                                                                v215 = 0;
LABEL_384:
                                                                v229 = [dictionaryCopy objectForKeyedSubscript:@"identityType"];
                                                                v230 = v215;
                                                                if (!v229 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v219 = 0;
                                                                  v33 = v332;
                                                                  v50 = v317;
                                                                  error = v305;
                                                                  v220 = v304;
                                                                  v92 = v239;
LABEL_387:
                                                                  v218 = v219;
                                                                  v228 = v215;
                                                                  v8 = v324;
                                                                  self = [(BMWalletPaymentsCommerceUserProofingResult *)self initWithAge:v324 gender:v33 skinTone:v314 ethnicity:v329 deviceLanguage:v50 proofingDecision:v325 issuer:v316 alAssessment:error alGestureAssessment:v307 axSettings:v220 alFacVersion:v301 alFacePoseVersion:v92 alPadtoolVersion:v298 alPrdVersion:v293 didStepUp:v290 plGestureAssessment:v287 plAssessment:v284 plFacVersion:v282 plFacePoseVersion:v277 plPadtoolVersion:v275 plPrdVersion:v270 shadowLabel:v268 smFacVersion:v263 smFacePoseVersion:v261 smPrdVersion:v258 smPadtoolVersion:v254 smLivenessAssessment:v251 smGestureAssessment:v246 smLivenessType:v245 fmAssessment:v242 fmModelVersion:v240 fmDetectorModelVersion:v237 fmSMAssessment:v235 fmSMModelVersion:v232 fmSMDetectorModelVersion:v228 identityType:v219];
                                                                  selfCopy5 = self;
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
                                                                  error = v305;
                                                                  v220 = v304;
                                                                  v92 = v239;
                                                                  goto LABEL_387;
                                                                }

                                                                if (errorCopy11)
                                                                {
                                                                  v221 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v222 = *MEMORY[0x1E698F240];
                                                                  v339 = *MEMORY[0x1E696A578];
                                                                  v223 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identityType"];
                                                                  v340 = v223;
                                                                  v224 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v340 forKeys:&v339 count:1];
                                                                  *errorCopy11 = [v221 initWithDomain:v222 code:2 userInfo:v224];
                                                                }

                                                                v218 = 0;
                                                                selfCopy5 = 0;
LABEL_395:
                                                                v8 = v324;
                                                                v33 = v332;
                                                                v50 = v317;
                                                                v27 = v318;
                                                                error = v305;
                                                                v92 = v239;
                                                                v112 = v297;
                                                                goto LABEL_396;
                                                              }

                                                              self = selfCopy3;
                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v231 = v231;
                                                                v215 = v231;
                                                                goto LABEL_384;
                                                              }

                                                              if (errorCopy11)
                                                              {
                                                                v216 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v217 = *MEMORY[0x1E698F240];
                                                                v341 = *MEMORY[0x1E696A578];
                                                                v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMDetectorModelVersion"];
                                                                v342 = v218;
                                                                v229 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v342 forKeys:&v341 count:1];
                                                                v230 = 0;
                                                                selfCopy5 = 0;
                                                                *errorCopy11 = [v216 initWithDomain:v217 code:2 userInfo:?];
                                                                goto LABEL_395;
                                                              }

                                                              v230 = 0;
                                                              selfCopy5 = 0;
                                                              v8 = v324;
                                                              v33 = v332;
LABEL_400:
                                                              v50 = v317;
                                                              v27 = v318;
                                                              error = v305;
                                                              v92 = v239;
                                                              goto LABEL_401;
                                                            }

                                                            if (errorCopy11)
                                                            {
                                                              v210 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v211 = *MEMORY[0x1E698F240];
                                                              v343 = *MEMORY[0x1E696A578];
                                                              v230 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMModelVersion"];
                                                              v344 = v230;
                                                              v231 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v344 forKeys:&v343 count:1];
                                                              v232 = 0;
                                                              selfCopy5 = 0;
                                                              *errorCopy11 = [v210 initWithDomain:v211 code:2 userInfo:?];
                                                              v33 = v332;
                                                              goto LABEL_400;
                                                            }

                                                            v232 = 0;
                                                            selfCopy5 = 0;
                                                            v33 = v332;
LABEL_398:
                                                            v50 = v317;
                                                            v27 = v318;
                                                            error = v305;
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
                                                        if (errorCopy11)
                                                        {
                                                          v206 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v207 = *MEMORY[0x1E698F240];
                                                          v345 = *MEMORY[0x1E696A578];
                                                          v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmSMAssessment"];
                                                          v346 = v232;
                                                          v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v346 forKeys:&v345 count:1];
                                                          v235 = 0;
                                                          selfCopy5 = 0;
                                                          *errorCopy11 = [v206 initWithDomain:v207 code:2 userInfo:?];
                                                          v33 = v332;
                                                          goto LABEL_398;
                                                        }

                                                        v235 = 0;
                                                        selfCopy5 = 0;
LABEL_391:
                                                        v6 = v328;
                                                        v33 = v332;
                                                        v50 = v317;
                                                        v27 = v318;
                                                        error = v305;
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
                                                      if (errorCopy11)
                                                      {
                                                        v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v203 = *MEMORY[0x1E698F240];
                                                        v347 = *MEMORY[0x1E696A578];
                                                        v235 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmDetectorModelVersion"];
                                                        v348 = v235;
                                                        v233 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v348 forKeys:&v347 count:1];
                                                        v237 = 0;
                                                        selfCopy5 = 0;
                                                        *errorCopy11 = [v202 initWithDomain:v203 code:2 userInfo:?];
                                                        goto LABEL_391;
                                                      }

                                                      v237 = 0;
                                                      selfCopy5 = 0;
LABEL_381:
                                                      v6 = v328;
                                                      v33 = v332;
                                                      v50 = v317;
                                                      v27 = v318;
                                                      error = v305;
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
                                                  if (errorCopy11)
                                                  {
                                                    v200 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v201 = *MEMORY[0x1E698F240];
                                                    v349 = *MEMORY[0x1E696A578];
                                                    v237 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmModelVersion"];
                                                    v350 = v237;
                                                    v236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v350 forKeys:&v349 count:1];
                                                    v240 = 0;
                                                    selfCopy5 = 0;
                                                    *errorCopy11 = [v200 initWithDomain:v201 code:2 userInfo:?];
                                                    goto LABEL_381;
                                                  }

                                                  v240 = 0;
                                                  selfCopy5 = 0;
LABEL_368:
                                                  v6 = v328;
                                                  v33 = v332;
                                                  v50 = v317;
                                                  v27 = v318;
                                                  error = v305;
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
                                                if (errorCopy11)
                                                {
                                                  v194 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v195 = *MEMORY[0x1E698F240];
                                                  v351 = *MEMORY[0x1E696A578];
                                                  v240 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fmAssessment"];
                                                  v352 = v240;
                                                  v238 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v352 forKeys:&v351 count:1];
                                                  v242 = 0;
                                                  selfCopy5 = 0;
                                                  *errorCopy11 = [v194 initWithDomain:v195 code:2 userInfo:?];
                                                  goto LABEL_368;
                                                }

                                                v242 = 0;
                                                selfCopy5 = 0;
                                                v33 = v332;
                                                v50 = v317;
                                                v27 = v318;
                                                error = v305;
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
                                              if (errorCopy11)
                                              {
                                                v189 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v190 = *MEMORY[0x1E698F240];
                                                v353 = *MEMORY[0x1E696A578];
                                                v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smLivenessType"];
                                                v354 = v242;
                                                v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v354 forKeys:&v353 count:1];
                                                v191 = [v189 initWithDomain:v190 code:2 userInfo:?];
                                                v245 = 0;
                                                selfCopy5 = 0;
                                                *errorCopy11 = v191;
                                                v33 = v332;
                                                v50 = v317;
                                                v27 = v318;
                                                error = v305;
                                                goto LABEL_406;
                                              }

                                              v245 = 0;
                                              selfCopy5 = 0;
LABEL_345:
                                              v33 = v332;
                                              v50 = v317;
                                              v27 = v318;
                                              error = v305;
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
                                            if (errorCopy11)
                                            {
                                              v184 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v185 = *MEMORY[0x1E698F240];
                                              v355 = *MEMORY[0x1E696A578];
                                              v245 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smGestureAssessment"];
                                              v356 = v245;
                                              v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v355 count:1];
                                              v186 = [v184 initWithDomain:v185 code:2 userInfo:?];
                                              v246 = 0;
                                              selfCopy5 = 0;
                                              *errorCopy11 = v186;
                                              goto LABEL_345;
                                            }

                                            v246 = 0;
                                            selfCopy5 = 0;
LABEL_343:
                                            v33 = v332;
                                            v50 = v317;
                                            v27 = v318;
                                            error = v305;
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
                                        if (errorCopy11)
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
                                          selfCopy5 = 0;
                                          *errorCopy11 = v183;
                                          goto LABEL_343;
                                        }

                                        v251 = 0;
                                        selfCopy5 = 0;
LABEL_322:
                                        v33 = v332;
                                        v50 = v317;
                                        v27 = v318;
                                        error = v305;
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
                                    if (errorCopy11)
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
                                      selfCopy5 = 0;
                                      *errorCopy11 = v180;
                                      goto LABEL_322;
                                    }

                                    v254 = 0;
                                    selfCopy5 = 0;
LABEL_310:
                                    v33 = v332;
                                    v50 = v317;
                                    v27 = v318;
                                    error = v305;
LABEL_410:

                                    goto LABEL_411;
                                  }

                                  v260 = v164;
                                  if (errorCopy11)
                                  {
                                    v262 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v257 = *MEMORY[0x1E698F240];
                                    v363 = *MEMORY[0x1E696A578];
                                    v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smFacePoseVersion"];
                                    v364 = v258;
                                    v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v364 forKeys:&v363 count:1];
                                    v168 = [v262 initWithDomain:v257 code:2 userInfo:v167];
                                    v261 = 0;
                                    selfCopy5 = 0;
                                    *errorCopy11 = v168;
                                    v169 = v167;
                                    v33 = v332;
                                    v50 = v317;
                                    v27 = v318;
                                    error = v305;
LABEL_412:

                                    goto LABEL_413;
                                  }

                                  v261 = 0;
                                  selfCopy5 = 0;
LABEL_297:
                                  v33 = v332;
                                  v50 = v317;
                                  v27 = v318;
                                  error = v305;
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
                                if (errorCopy11)
                                {
                                  v161 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v264 = *MEMORY[0x1E698F240];
                                  v365 = *MEMORY[0x1E696A578];
                                  v261 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"smFacVersion"];
                                  v366 = v261;
                                  v260 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v366 forKeys:&v365 count:1];
                                  v162 = [v161 initWithDomain:v264 code:2 userInfo:?];
                                  v263 = 0;
                                  selfCopy5 = 0;
                                  *errorCopy11 = v162;
                                  goto LABEL_297;
                                }

                                v263 = 0;
                                selfCopy5 = 0;
LABEL_293:
                                v33 = v332;
                                v50 = v317;
                                v27 = v318;
                                error = v305;
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
                            if (errorCopy11)
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
                              selfCopy5 = 0;
                              *errorCopy11 = v160;
                              goto LABEL_293;
                            }

                            v268 = 0;
                            selfCopy5 = 0;
LABEL_265:
                            v33 = v332;
                            v50 = v317;
                            v27 = v318;
                            error = v305;
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
                          if (errorCopy11)
                          {
                            v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v271 = *MEMORY[0x1E698F240];
                            v369 = *MEMORY[0x1E696A578];
                            v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plPrdVersion"];
                            v370 = v268;
                            v267 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v370 forKeys:&v369 count:1];
                            v153 = [v152 initWithDomain:v271 code:2 userInfo:?];
                            v270 = 0;
                            selfCopy5 = 0;
                            *errorCopy11 = v153;
                            goto LABEL_265;
                          }

                          v270 = 0;
                          selfCopy5 = 0;
LABEL_263:
                          v33 = v332;
                          v50 = v317;
                          v27 = v318;
                          error = v305;
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
                      if (errorCopy11)
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
                        selfCopy5 = 0;
                        *errorCopy11 = v151;
                        goto LABEL_263;
                      }

                      v275 = 0;
                      selfCopy5 = 0;
LABEL_242:
                      v33 = v332;
                      v50 = v317;
                      v27 = v318;
                      error = v305;
LABEL_417:

                      goto LABEL_418;
                    }

                    v279 = v139;
                    if (errorCopy11)
                    {
                      v143 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v278 = *MEMORY[0x1E698F240];
                      v373 = *MEMORY[0x1E696A578];
                      v275 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plFacePoseVersion"];
                      v374 = v275;
                      v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v374 forKeys:&v373 count:1];
                      v144 = [v143 initWithDomain:v278 code:2 userInfo:?];
                      v277 = 0;
                      selfCopy5 = 0;
                      *errorCopy11 = v144;
                      goto LABEL_242;
                    }

                    v277 = 0;
                    selfCopy5 = 0;
LABEL_240:
                    v33 = v332;
                    v50 = v317;
                    v27 = v318;
                    error = v305;
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
                if (errorCopy11)
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
                  selfCopy5 = 0;
                  *errorCopy11 = v142;
                  goto LABEL_240;
                }

                v282 = 0;
                selfCopy5 = 0;
LABEL_219:
                v33 = v332;
                v50 = v317;
                v27 = v318;
                error = v305;
LABEL_419:

                goto LABEL_420;
              }

              v286 = v126;
              if (errorCopy11)
              {
                v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                v285 = *MEMORY[0x1E698F240];
                v377 = *MEMORY[0x1E696A578];
                v282 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plAssessment"];
                v378 = v282;
                v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v378 forKeys:&v377 count:1];
                v135 = [v134 initWithDomain:v285 code:2 userInfo:?];
                v284 = 0;
                selfCopy5 = 0;
                *errorCopy11 = v135;
                goto LABEL_219;
              }

              v284 = 0;
              selfCopy5 = 0;
LABEL_217:
              v33 = v332;
              v50 = v317;
              v27 = v318;
              error = v305;
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
          if (errorCopy11)
          {
            v127 = objc_alloc(MEMORY[0x1E696ABC0]);
            v288 = *MEMORY[0x1E698F240];
            v379 = *MEMORY[0x1E696A578];
            v284 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"plGestureAssessment"];
            v380 = v284;
            v286 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v380 forKeys:&v379 count:1];
            v128 = [v127 initWithDomain:v288 code:2 userInfo:?];
            v287 = 0;
            selfCopy5 = 0;
            *errorCopy11 = v128;
            goto LABEL_217;
          }

          v287 = 0;
          selfCopy5 = 0;
          v33 = v332;
          v50 = v317;
          v27 = v318;
          error = v305;
LABEL_421:

          goto LABEL_422;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v290 = v122;
          goto LABEL_148;
        }

        if (errorCopy11)
        {
          v129 = objc_alloc(MEMORY[0x1E696ABC0]);
          v291 = *MEMORY[0x1E698F240];
          v381 = *MEMORY[0x1E696A578];
          selfCopy6 = self;
          v131 = objc_alloc(MEMORY[0x1E696AEC0]);
          v227 = objc_opt_class();
          v132 = v131;
          self = selfCopy6;
          v112 = v297;
          v27 = v318;
          v287 = [v132 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"didStepUp"];
          v382 = v287;
          v289 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v382 forKeys:&v381 count:1];
          v133 = [v129 initWithDomain:v291 code:2 userInfo:?];
          v290 = 0;
          selfCopy5 = 0;
          *errorCopy11 = v133;
          v33 = v332;
          v50 = v317;
          error = v305;
          goto LABEL_421;
        }

        v290 = 0;
        selfCopy5 = 0;
        v33 = v332;
        v50 = v317;
        error = v305;
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
      if (errorCopy11)
      {
        v119 = objc_alloc(MEMORY[0x1E696ABC0]);
        v294 = *MEMORY[0x1E698F240];
        v383 = *MEMORY[0x1E696A578];
        v290 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alPrdVersion"];
        v384 = v290;
        v292 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v384 forKeys:&v383 count:1];
        v120 = [v119 initWithDomain:v294 code:2 userInfo:?];
        v293 = 0;
        selfCopy5 = 0;
        *errorCopy11 = v120;
        v33 = v332;
        v50 = v317;
        v27 = v318;
        error = v305;
        goto LABEL_422;
      }

      v293 = 0;
      selfCopy5 = 0;
      v33 = v332;
      v50 = v317;
      v27 = v318;
      error = v305;
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
  if (errorCopy11)
  {
    v110 = objc_alloc(MEMORY[0x1E696ABC0]);
    v111 = *MEMORY[0x1E698F240];
    v387 = *MEMORY[0x1E696A578];
    v298 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"alFacePoseVersion"];
    v388 = v298;
    v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
    v92 = 0;
    selfCopy5 = 0;
    *errorCopy11 = [v110 initWithDomain:v111 code:2 userInfo:v112];
    v33 = v332;
    v50 = v317;
    v27 = v318;
    error = v305;
    goto LABEL_424;
  }

  v92 = 0;
  selfCopy5 = 0;
  v33 = v332;
  v50 = v317;
  v27 = v318;
LABEL_167:
  error = v305;
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

  error = v329;
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
  return selfCopy5;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceUserProofingResult *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
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
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v34 = 0;
      v11 = [fromCopy position] + 1;
      if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
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

    v15 = [fromCopy hasError] ? 0 : v10;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
      v21 = [fromCopy position] + 1;
      if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
      {
        data2 = [fromCopy data];
        [data2 getBytes:&v34 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
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

    v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_69:
    v5->_didStepUp = v24;
  }

  v28 = [v6 copy];
  axSettings = v5->_axSettings;
  v5->_axSettings = v28;

  hasError = [fromCopy hasError];
  if (hasError)
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
  gender = [(BMWalletPaymentsCommerceUserProofingResult *)self gender];
  skinTone = [(BMWalletPaymentsCommerceUserProofingResult *)self skinTone];
  ethnicity = [(BMWalletPaymentsCommerceUserProofingResult *)self ethnicity];
  deviceLanguage = [(BMWalletPaymentsCommerceUserProofingResult *)self deviceLanguage];
  proofingDecision = [(BMWalletPaymentsCommerceUserProofingResult *)self proofingDecision];
  issuer = [(BMWalletPaymentsCommerceUserProofingResult *)self issuer];
  alAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alAssessment];
  alGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self alGestureAssessment];
  axSettings = [(BMWalletPaymentsCommerceUserProofingResult *)self axSettings];
  alFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacVersion];
  alFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alFacePoseVersion];
  alPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPadtoolVersion];
  alPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self alPrdVersion];
  v29 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWalletPaymentsCommerceUserProofingResult didStepUp](self, "didStepUp")}];
  plGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plGestureAssessment];
  plAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self plAssessment];
  plFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacVersion];
  plFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plFacePoseVersion];
  plPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPadtoolVersion];
  plPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self plPrdVersion];
  shadowLabel = [(BMWalletPaymentsCommerceUserProofingResult *)self shadowLabel];
  smFacVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacVersion];
  smFacePoseVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smFacePoseVersion];
  smPrdVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPrdVersion];
  smPadtoolVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self smPadtoolVersion];
  smLivenessAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessAssessment];
  smGestureAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self smGestureAssessment];
  smLivenessType = [(BMWalletPaymentsCommerceUserProofingResult *)self smLivenessType];
  fmAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmAssessment];
  fmModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmModelVersion];
  fmDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmDetectorModelVersion];
  fmSMAssessment = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMAssessment];
  fmSMModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMModelVersion];
  fmSMDetectorModelVersion = [(BMWalletPaymentsCommerceUserProofingResult *)self fmSMDetectorModelVersion];
  identityType = [(BMWalletPaymentsCommerceUserProofingResult *)self identityType];
  v17 = [v16 initWithFormat:@"BMWalletPaymentsCommerceUserProofingResult with age: %@, gender: %@, skinTone: %@, ethnicity: %@, deviceLanguage: %@, proofingDecision: %@, issuer: %@, alAssessment: %@, alGestureAssessment: %@, axSettings: %@, alFacVersion: %@, alFacePoseVersion: %@, alPadtoolVersion: %@, alPrdVersion: %@, didStepUp: %@, plGestureAssessment: %@, plAssessment: %@, plFacVersion: %@, plFacePoseVersion: %@, plPadtoolVersion: %@, plPrdVersion: %@, shadowLabel: %@, smFacVersion: %@, smFacePoseVersion: %@, smPrdVersion: %@, smPadtoolVersion: %@, smLivenessAssessment: %@, smGestureAssessment: %@, smLivenessType: %@, fmAssessment: %@, fmModelVersion: %@, fmDetectorModelVersion: %@, fmSMAssessment: %@, fmSMModelVersion: %@, fmSMDetectorModelVersion: %@, identityType: %@", v41, gender, skinTone, ethnicity, deviceLanguage, proofingDecision, issuer, alAssessment, alGestureAssessment, axSettings, alFacVersion, alFacePoseVersion, alPadtoolVersion, alPrdVersion, v29, plGestureAssessment, plAssessment, plFacVersion, plFacePoseVersion, plPadtoolVersion, plPrdVersion, shadowLabel, smFacVersion, smFacePoseVersion, smPrdVersion, smPadtoolVersion, smLivenessAssessment, smGestureAssessment, smLivenessType, fmAssessment, fmModelVersion, fmDetectorModelVersion, fmSMAssessment, fmSMModelVersion, fmSMDetectorModelVersion, identityType];

  return v17;
}

- (BMWalletPaymentsCommerceUserProofingResult)initWithAge:(id)age gender:(id)gender skinTone:(id)tone ethnicity:(id)ethnicity deviceLanguage:(id)language proofingDecision:(id)decision issuer:(id)issuer alAssessment:(id)self0 alGestureAssessment:(id)self1 axSettings:(id)self2 alFacVersion:(id)self3 alFacePoseVersion:(id)self4 alPadtoolVersion:(id)self5 alPrdVersion:(id)self6 didStepUp:(id)self7 plGestureAssessment:(id)self8 plAssessment:(id)self9 plFacVersion:(id)facVersion plFacePoseVersion:(id)facePoseVersion plPadtoolVersion:(id)plPadtoolVersion plPrdVersion:(id)plPrdVersion shadowLabel:(id)label smFacVersion:(id)smFacVersion smFacePoseVersion:(id)smFacePoseVersion smPrdVersion:(id)smPrdVersion smPadtoolVersion:(id)smPadtoolVersion smLivenessAssessment:(id)livenessAssessment smGestureAssessment:(id)age0 smLivenessType:(id)age1 fmAssessment:(id)age2 fmModelVersion:(id)age3 fmDetectorModelVersion:(id)age4 fmSMAssessment:(id)age5 fmSMModelVersion:(id)age6 fmSMDetectorModelVersion:(id)age7 identityType:(id)age8
{
  ageCopy = age;
  genderCopy = gender;
  genderCopy2 = gender;
  toneCopy = tone;
  toneCopy2 = tone;
  ethnicityCopy = ethnicity;
  languageCopy = language;
  decisionCopy = decision;
  issuerCopy = issuer;
  assessmentCopy = assessment;
  gestureAssessmentCopy = gestureAssessment;
  settingsCopy = settings;
  versionCopy = version;
  poseVersionCopy = poseVersion;
  padtoolVersionCopy = padtoolVersion;
  prdVersionCopy = prdVersion;
  upCopy = up;
  plGestureAssessmentCopy = plGestureAssessment;
  plAssessmentCopy = plAssessment;
  facVersionCopy = facVersion;
  facePoseVersionCopy = facePoseVersion;
  plPadtoolVersionCopy = plPadtoolVersion;
  plPrdVersionCopy = plPrdVersion;
  labelCopy = label;
  smFacVersionCopy = smFacVersion;
  smFacePoseVersionCopy = smFacePoseVersion;
  smPrdVersionCopy = smPrdVersion;
  smPadtoolVersionCopy = smPadtoolVersion;
  livenessAssessmentCopy = livenessAssessment;
  smGestureAssessmentCopy = smGestureAssessment;
  typeCopy = type;
  fmAssessmentCopy = fmAssessment;
  modelVersionCopy = modelVersion;
  detectorModelVersionCopy = detectorModelVersion;
  mAssessmentCopy = mAssessment;
  mModelVersionCopy = mModelVersion;
  v45 = upCopy;
  mDetectorModelVersionCopy = mDetectorModelVersion;
  identityTypeCopy = identityType;
  v86.receiver = self;
  v86.super_class = BMWalletPaymentsCommerceUserProofingResult;
  v46 = [(BMEventBase *)&v86 init];
  if (v46)
  {
    v46->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v46->_age, age);
    objc_storeStrong(&v46->_gender, genderCopy);
    objc_storeStrong(&v46->_skinTone, toneCopy);
    objc_storeStrong(&v46->_ethnicity, ethnicity);
    objc_storeStrong(&v46->_deviceLanguage, language);
    objc_storeStrong(&v46->_proofingDecision, decision);
    objc_storeStrong(&v46->_issuer, issuer);
    objc_storeStrong(&v46->_alAssessment, assessment);
    objc_storeStrong(&v46->_alGestureAssessment, gestureAssessment);
    objc_storeStrong(&v46->_axSettings, settings);
    objc_storeStrong(&v46->_alFacVersion, version);
    objc_storeStrong(&v46->_alFacePoseVersion, poseVersion);
    objc_storeStrong(&v46->_alPadtoolVersion, padtoolVersion);
    objc_storeStrong(&v46->_alPrdVersion, prdVersion);
    if (upCopy)
    {
      v46->_hasDidStepUp = 1;
      v46->_didStepUp = [upCopy BOOLValue];
    }

    else
    {
      v45 = 0;
      v46->_hasDidStepUp = 0;
      v46->_didStepUp = 0;
    }

    objc_storeStrong(&v46->_plGestureAssessment, plGestureAssessment);
    objc_storeStrong(&v46->_plAssessment, plAssessment);
    objc_storeStrong(&v46->_plFacVersion, facVersion);
    objc_storeStrong(&v46->_plFacePoseVersion, facePoseVersion);
    objc_storeStrong(&v46->_plPadtoolVersion, plPadtoolVersion);
    objc_storeStrong(&v46->_plPrdVersion, plPrdVersion);
    objc_storeStrong(&v46->_shadowLabel, label);
    objc_storeStrong(&v46->_smFacVersion, smFacVersion);
    objc_storeStrong(&v46->_smFacePoseVersion, smFacePoseVersion);
    objc_storeStrong(&v46->_smPrdVersion, smPrdVersion);
    objc_storeStrong(&v46->_smPadtoolVersion, smPadtoolVersion);
    objc_storeStrong(&v46->_smLivenessAssessment, livenessAssessment);
    objc_storeStrong(&v46->_smGestureAssessment, smGestureAssessment);
    objc_storeStrong(&v46->_smLivenessType, type);
    objc_storeStrong(&v46->_fmAssessment, fmAssessment);
    objc_storeStrong(&v46->_fmModelVersion, modelVersion);
    objc_storeStrong(&v46->_fmDetectorModelVersion, detectorModelVersion);
    objc_storeStrong(&v46->_fmSMAssessment, mAssessment);
    objc_storeStrong(&v46->_fmSMModelVersion, mModelVersion);
    objc_storeStrong(&v46->_fmSMDetectorModelVersion, mDetectorModelVersion);
    objc_storeStrong(&v46->_identityType, identityType);
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

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
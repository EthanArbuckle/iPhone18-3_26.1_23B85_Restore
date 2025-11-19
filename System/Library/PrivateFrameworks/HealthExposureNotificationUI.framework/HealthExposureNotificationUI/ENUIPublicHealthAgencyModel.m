@interface ENUIPublicHealthAgencyModel
+ (NSArray)allRegions;
+ (NSString)dummyRegionCountryCode;
+ (id)defaultModelWithBundleId:(id)a3 isAuthorized:(BOOL)a4;
+ (id)regionForRegionCode:(id)a3;
+ (void)refreshRegionsWithCompletion:(id)a3;
+ (void)setActiveRegion:(id)a3;
+ (void)setTurndownEntity:(id)a3;
- (BOOL)isAppInstalled;
- (BOOL)isAppInstalledAndRegionYetToBeOnboarded;
- (BOOL)isRegionUsingApp;
- (BOOL)isSymptomOnsetNeeded;
- (BOOL)isTravelStatusNeeded;
- (BOOL)isVaccinationQuestionNeeded;
- (BOOL)regionIsPlaceholder;
- (NSString)installedAppName;
- (UIImage)installedAppIcon;
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)init;
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)initWithRegion:(id)a3 name:(id)a4 appBundleId:(id)a5 introductoryText:(id)a6 header:(id)a7 legalese:(id)a8 consentStatus:(id)a9 consentVersion:(id)a10 diagnosisKeysPreAuthorization:(id)a11 isAssociatedDomainAllowed:(BOOL)a12 isPreauthorizationDomainAllowed:(BOOL)a13 isAuthorized:(BOOL)a14 regionVersion:(int64_t)a15 regionWebsiteURL:(id)a16 regionFAQWebsiteURL:(id)a17 featureFlags:(unsigned int)a18 wantsAnalytics:(BOOL)a19 analyticsConsentStatus:(int64_t)a20 analyticsConsentText:(id)a21 verificationIntroductoryText:(id)a22 selfReportIntroductoryText:(id)a23 verificationCodeHelpURL:(id)a24 verificationSymptomOnsetText:(id)a25 verificationTravelStatusText:(id)a26 vaccinationQuestionText:(id)a27 webReportURL:(id)a28;
- (int64_t)analyticsConsentStatus;
- (void)setAnalyticsConsentStatus:(int64_t)a3;
@end

@implementation ENUIPublicHealthAgencyModel

- (int64_t)analyticsConsentStatus
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnalyticsConsentStatus:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isSymptomOnsetNeeded
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationSymptomOnsetText) & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

- (BOOL)isTravelStatusNeeded
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText + 8);
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_verificationTravelStatusText) & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

- (BOOL)isVaccinationQuestionNeeded
{
  v2 = self;
  v3 = ENUIPublicHealthAgencyModel.isVaccinationQuestionNeeded.getter();

  return v3;
}

- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)initWithRegion:(id)a3 name:(id)a4 appBundleId:(id)a5 introductoryText:(id)a6 header:(id)a7 legalese:(id)a8 consentStatus:(id)a9 consentVersion:(id)a10 diagnosisKeysPreAuthorization:(id)a11 isAssociatedDomainAllowed:(BOOL)a12 isPreauthorizationDomainAllowed:(BOOL)a13 isAuthorized:(BOOL)a14 regionVersion:(int64_t)a15 regionWebsiteURL:(id)a16 regionFAQWebsiteURL:(id)a17 featureFlags:(unsigned int)a18 wantsAnalytics:(BOOL)a19 analyticsConsentStatus:(int64_t)a20 analyticsConsentText:(id)a21 verificationIntroductoryText:(id)a22 selfReportIntroductoryText:(id)a23 verificationCodeHelpURL:(id)a24 verificationSymptomOnsetText:(id)a25 verificationTravelStatusText:(id)a26 vaccinationQuestionText:(id)a27 webReportURL:(id)a28
{
  v143 = a8;
  v144 = a7;
  v142 = a3;
  v133 = self;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v140 = &v108 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v141 = &v108 - v37;
  MEMORY[0x28223BE20](v36);
  v139 = &v108 - v38;
  v39 = sub_251703164();
  v131 = v40;
  v132 = v39;
  if (a5)
  {
    v41 = sub_251703164();
    v128 = v42;
    v129 = v41;
  }

  else
  {
    v128 = 0;
    v129 = 0;
  }

  v137 = a26;
  v138 = a27;
  v135 = a22;
  v136 = a23;
  v43 = sub_251703164();
  v126 = v44;
  v127 = v43;
  v120 = a25;
  if (a10)
  {
    v45 = sub_251703164();
    v124 = v46;
    v125 = v45;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v130 = v33;
  v123 = a9;
  v122 = a11;
  v121 = a28;
  if (a16)
  {
    v47 = v139;
    sub_251702D84();
    v48 = sub_251702DA4();
    v49 = *(*(v48 - 8) + 56);
    v50 = v142;
    v51 = v144;
    v52 = v143;
    v53 = a9;
    v54 = a11;
    v55 = a17;
    v56 = a21;
    v57 = v135;
    v58 = v136;
    v59 = a24;
    v60 = v120;
    v61 = v120;
    v62 = v137;
    v63 = v138;
    v64 = a28;
    v49(v47, 0, 1, v48);
    v65 = v141;
    if (a17)
    {
LABEL_9:
      sub_251702D84();

      v66 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v67 = sub_251702DA4();
    (*(*(v67 - 8) + 56))(v139, 1, 1, v67);
    v68 = v142;
    v69 = v144;
    v70 = v143;
    v71 = a9;
    v72 = a11;
    v73 = a17;
    v74 = a21;
    v75 = v135;
    v76 = v136;
    v77 = a24;
    v60 = v120;
    v78 = v120;
    v79 = v137;
    v80 = v138;
    v81 = a28;
    v65 = v141;
    if (a17)
    {
      goto LABEL_9;
    }
  }

  v66 = 1;
LABEL_12:
  v82 = sub_251702DA4();
  v83 = *(v82 - 8);
  v84 = *(v83 + 56);
  v134 = v83 + 56;
  v84(v65, v66, 1, v82);
  if (a21)
  {
    v119 = sub_251703164();
    v118 = v85;
  }

  else
  {
    v119 = 0;
    v118 = 0;
  }

  v86 = v140;
  v87 = v135;
  v117 = sub_251703164();
  v116 = v88;

  v89 = v136;
  v135 = sub_251703164();
  v115 = v90;

  if (a24)
  {
    sub_251702D84();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v111 = a20;
  v110 = a19;
  v109 = a18;
  v136 = a15;
  v114 = a14;
  v113 = a13;
  v112 = a12;
  v92 = 1;
  v93 = v84;
  v84(v86, v91, 1, v82);
  v94 = sub_251703164();
  v96 = v95;

  v97 = v137;
  v98 = sub_251703164();
  v100 = v99;

  v101 = v138;
  v102 = sub_251703164();
  v104 = v103;

  if (v121)
  {
    v105 = v121;
    v106 = v130;
    sub_251702D84();

    v92 = 0;
  }

  else
  {
    v106 = v130;
  }

  v93(v106, v92, 1, v82);
  return ENUIPublicHealthAgencyModel.init(region:name:appBundleId:introductoryText:header:legalese:consentStatus:consentVersion:diagnosisKeysPreAuthorization:isAssociatedDomainAllowed:isPreauthorizationDomainAllowed:isAuthorized:regionVersion:regionWebsiteURL:regionFAQWebsiteURL:featureFlags:wantsAnalytics:analyticsConsentStatus:analyticsConsentText:verificationIntroductoryText:selfReportIntroductoryText:verificationCodeHelpURL:verificationSymptomOnsetText:verificationTravelStatusText:vaccinationQuestionText:webReportURL:)(v142, v132, v131, v129, v128, v127, v126, v144, v143, v123, v125, v124, v122, v112, v113, v114, v136, v139, v141, v109, v110, v111, v119, v118, v117, v116, v135, v115, v140, v94, v96, v98, v100, v102, v104, v106);
}

- (BOOL)isAppInstalled
{
  v2 = self;
  v3 = ENUIPublicHealthAgencyModel.isAppInstalled.getter();

  return v3 & 1;
}

- (BOOL)isRegionUsingApp
{
  v2 = self;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) <= 1)
    {

      LOBYTE(v3) = 1;
    }

    else
    {
      v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
      if (v3)
      {
        v4 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
        if (qword_28151EB60 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v5 = static ENManagerAdapter.defaultAdapter;
        _s28HealthExposureNotificationUI16ENManagerAdapterC17tccContainsRecord19forBundleIdentifierSbSS_tF_0();
        LOBYTE(v3) = v6;
      }

      else
      {
      }
    }
  }

  else
  {

    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

- (BOOL)isAppInstalledAndRegionYetToBeOnboarded
{
  v2 = self;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    v3 = *(v2 + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized);

    v4 = v3 ^ 1;
  }

  else
  {

    v4 = 0;
  }

  return v4 & 1;
}

- (NSString)installedAppName
{
  v2 = self;
  ENUIPublicHealthAgencyModel.installedAppName.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_251703134();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIImage)installedAppIcon
{
  v2 = self;
  ENUIPublicHealthAgencyModel.installedAppIcon.getter();
  v4 = v3;

  return v4;
}

- (BOOL)regionIsPlaceholder
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  v3 = self;
  v4 = [v2 regionCode];
  v5 = sub_251703164();
  v7 = v6;

  if (v5 == 11565 && v7 == 0xE200000000000000)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_251703624();
  }

  return v9 & 1;
}

+ (void)setActiveRegion:(id)a3
{
  swift_beginAccess();
  v4 = static ENUIPublicHealthAgencyModel.activeRegion;
  static ENUIPublicHealthAgencyModel.activeRegion = a3;
  v5 = a3;
}

+ (void)setTurndownEntity:(id)a3
{
  swift_beginAccess();
  v4 = static ENUIPublicHealthAgencyModel.turndownEntity;
  static ENUIPublicHealthAgencyModel.turndownEntity = a3;
  v5 = a3;
}

+ (NSString)dummyRegionCountryCode
{
  v2 = sub_251703134();

  return v2;
}

+ (NSArray)allRegions
{
  _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC10allRegionsSayACGvgZ_0();
  type metadata accessor for ENUIPublicHealthAgencyModel(0);
  v2 = sub_2517031F4();

  return v2;
}

+ (id)regionForRegionCode:(id)a3
{
  v3 = sub_251703164();
  v5 = _s28HealthExposureNotificationUI010ENUIPublicA11AgencyModelC9regionFor0H4CodeACSgSS_tFZ_0(v3, v4);

  return v5;
}

- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)refreshRegionsWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)(sub_2516963FC, v4);
}

+ (id)defaultModelWithBundleId:(id)a3 isAuthorized:(BOOL)a4
{
  v4 = a4;
  v5 = sub_251703164();
  v7 = sub_251695CDC(v5, v6, v4);

  return v7;
}

@end
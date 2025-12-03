@interface ENUIPublicHealthAgencyModel
+ (NSArray)allRegions;
+ (NSString)dummyRegionCountryCode;
+ (id)defaultModelWithBundleId:(id)id isAuthorized:(BOOL)authorized;
+ (id)regionForRegionCode:(id)code;
+ (void)refreshRegionsWithCompletion:(id)completion;
+ (void)setActiveRegion:(id)region;
+ (void)setTurndownEntity:(id)entity;
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
- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)initWithRegion:(id)region name:(id)name appBundleId:(id)id introductoryText:(id)text header:(id)header legalese:(id)legalese consentStatus:(id)status consentVersion:(id)self0 diagnosisKeysPreAuthorization:(id)self1 isAssociatedDomainAllowed:(BOOL)self2 isPreauthorizationDomainAllowed:(BOOL)self3 isAuthorized:(BOOL)self4 regionVersion:(int64_t)self5 regionWebsiteURL:(id)self6 regionFAQWebsiteURL:(id)self7 featureFlags:(unsigned int)self8 wantsAnalytics:(BOOL)self9 analyticsConsentStatus:(int64_t)consentStatus analyticsConsentText:(id)consentText verificationIntroductoryText:(id)introductoryText selfReportIntroductoryText:(id)reportIntroductoryText verificationCodeHelpURL:(id)uRL verificationSymptomOnsetText:(id)onsetText verificationTravelStatusText:(id)statusText vaccinationQuestionText:(id)questionText webReportURL:(id)reportURL;
- (int64_t)analyticsConsentStatus;
- (void)setAnalyticsConsentStatus:(int64_t)status;
@end

@implementation ENUIPublicHealthAgencyModel

- (int64_t)analyticsConsentStatus
{
  v3 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAnalyticsConsentStatus:(int64_t)status
{
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_analyticsConsentStatus;
  swift_beginAccess();
  *(self + v5) = status;
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
  selfCopy = self;
  v3 = ENUIPublicHealthAgencyModel.isVaccinationQuestionNeeded.getter();

  return v3;
}

- (_TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel)initWithRegion:(id)region name:(id)name appBundleId:(id)id introductoryText:(id)text header:(id)header legalese:(id)legalese consentStatus:(id)status consentVersion:(id)self0 diagnosisKeysPreAuthorization:(id)self1 isAssociatedDomainAllowed:(BOOL)self2 isPreauthorizationDomainAllowed:(BOOL)self3 isAuthorized:(BOOL)self4 regionVersion:(int64_t)self5 regionWebsiteURL:(id)self6 regionFAQWebsiteURL:(id)self7 featureFlags:(unsigned int)self8 wantsAnalytics:(BOOL)self9 analyticsConsentStatus:(int64_t)consentStatus analyticsConsentText:(id)consentText verificationIntroductoryText:(id)introductoryText selfReportIntroductoryText:(id)reportIntroductoryText verificationCodeHelpURL:(id)uRL verificationSymptomOnsetText:(id)onsetText verificationTravelStatusText:(id)statusText vaccinationQuestionText:(id)questionText webReportURL:(id)reportURL
{
  legaleseCopy = legalese;
  headerCopy = header;
  regionCopy = region;
  selfCopy = self;
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
  if (id)
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

  statusTextCopy = statusText;
  questionTextCopy = questionText;
  introductoryTextCopy = introductoryText;
  regionVersionCopy = reportIntroductoryText;
  v43 = sub_251703164();
  v126 = v44;
  v127 = v43;
  onsetTextCopy = onsetText;
  if (version)
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
  statusCopy = status;
  authorizationCopy = authorization;
  reportURLCopy = reportURL;
  if (l)
  {
    v47 = v139;
    sub_251702D84();
    v48 = sub_251702DA4();
    v49 = *(*(v48 - 8) + 56);
    v50 = regionCopy;
    v51 = headerCopy;
    v52 = legaleseCopy;
    statusCopy2 = status;
    authorizationCopy2 = authorization;
    rLCopy = rL;
    consentTextCopy = consentText;
    v57 = introductoryTextCopy;
    v58 = regionVersionCopy;
    uRLCopy = uRL;
    v60 = onsetTextCopy;
    v61 = onsetTextCopy;
    v62 = statusTextCopy;
    v63 = questionTextCopy;
    reportURLCopy2 = reportURL;
    v49(v47, 0, 1, v48);
    v65 = v141;
    if (rL)
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
    v68 = regionCopy;
    v69 = headerCopy;
    v70 = legaleseCopy;
    statusCopy3 = status;
    authorizationCopy3 = authorization;
    rLCopy2 = rL;
    consentTextCopy2 = consentText;
    v75 = introductoryTextCopy;
    v76 = regionVersionCopy;
    uRLCopy2 = uRL;
    v60 = onsetTextCopy;
    v78 = onsetTextCopy;
    v79 = statusTextCopy;
    v80 = questionTextCopy;
    reportURLCopy3 = reportURL;
    v65 = v141;
    if (rL)
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
  if (consentText)
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
  v87 = introductoryTextCopy;
  v117 = sub_251703164();
  v116 = v88;

  v89 = regionVersionCopy;
  introductoryTextCopy = sub_251703164();
  v115 = v90;

  if (uRL)
  {
    sub_251702D84();

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  consentStatusCopy = consentStatus;
  analyticsCopy = analytics;
  flagsCopy = flags;
  regionVersionCopy = regionVersion;
  authorizedCopy = authorized;
  domainAllowedCopy = domainAllowed;
  allowedCopy = allowed;
  v92 = 1;
  v93 = v84;
  v84(v86, v91, 1, v82);
  v94 = sub_251703164();
  v96 = v95;

  v97 = statusTextCopy;
  v98 = sub_251703164();
  v100 = v99;

  v101 = questionTextCopy;
  v102 = sub_251703164();
  v104 = v103;

  if (reportURLCopy)
  {
    v105 = reportURLCopy;
    v106 = v130;
    sub_251702D84();

    v92 = 0;
  }

  else
  {
    v106 = v130;
  }

  v93(v106, v92, 1, v82);
  return ENUIPublicHealthAgencyModel.init(region:name:appBundleId:introductoryText:header:legalese:consentStatus:consentVersion:diagnosisKeysPreAuthorization:isAssociatedDomainAllowed:isPreauthorizationDomainAllowed:isAuthorized:regionVersion:regionWebsiteURL:regionFAQWebsiteURL:featureFlags:wantsAnalytics:analyticsConsentStatus:analyticsConsentText:verificationIntroductoryText:selfReportIntroductoryText:verificationCodeHelpURL:verificationSymptomOnsetText:verificationTravelStatusText:vaccinationQuestionText:webReportURL:)(regionCopy, v132, v131, v129, v128, v127, v126, headerCopy, legaleseCopy, statusCopy, v125, v124, authorizationCopy, allowedCopy, domainAllowedCopy, authorizedCopy, regionVersionCopy, v139, v141, flagsCopy, analyticsCopy, consentStatusCopy, v119, v118, v117, v116, introductoryTextCopy, v115, v140, v94, v96, v98, v100, v102, v104, v106);
}

- (BOOL)isAppInstalled
{
  selfCopy = self;
  v3 = ENUIPublicHealthAgencyModel.isAppInstalled.getter();

  return v3 & 1;
}

- (BOOL)isRegionUsingApp
{
  selfCopy = self;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    if (*(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_regionVersion) <= 1)
    {

      LOBYTE(v3) = 1;
    }

    else
    {
      v3 = *(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId + 8);
      if (v3)
      {
        v4 = *(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_appBundleId);
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
  selfCopy = self;
  if (ENUIPublicHealthAgencyModel.isAppInstalled.getter())
  {
    v3 = *(selfCopy + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_isAuthorized);

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
  selfCopy = self;
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
  selfCopy = self;
  ENUIPublicHealthAgencyModel.installedAppIcon.getter();
  v4 = v3;

  return v4;
}

- (BOOL)regionIsPlaceholder
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI27ENUIPublicHealthAgencyModel_region);
  selfCopy = self;
  regionCode = [v2 regionCode];
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

+ (void)setActiveRegion:(id)region
{
  swift_beginAccess();
  v4 = static ENUIPublicHealthAgencyModel.activeRegion;
  static ENUIPublicHealthAgencyModel.activeRegion = region;
  regionCopy = region;
}

+ (void)setTurndownEntity:(id)entity
{
  swift_beginAccess();
  v4 = static ENUIPublicHealthAgencyModel.turndownEntity;
  static ENUIPublicHealthAgencyModel.turndownEntity = entity;
  entityCopy = entity;
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

+ (id)regionForRegionCode:(id)code
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

+ (void)refreshRegionsWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  swift_getObjCClassMetadata();
  static ENUIPublicHealthAgencyModel.refreshRegions(completion:)(sub_2516963FC, v4);
}

+ (id)defaultModelWithBundleId:(id)id isAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  v5 = sub_251703164();
  v7 = sub_251695CDC(v5, v6, authorizedCopy);

  return v7;
}

@end
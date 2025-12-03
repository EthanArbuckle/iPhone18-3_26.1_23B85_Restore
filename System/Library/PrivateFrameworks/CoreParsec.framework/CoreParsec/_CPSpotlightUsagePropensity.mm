@interface _CPSpotlightUsagePropensity
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPSpotlightUsagePropensity

- (unint64_t)hash
{
  v3.i32[0] = LODWORD(self->_onDeviceAddressBookData);
  v4.i32[0] = v3.i32[0];
  v4.i32[1] = LODWORD(self->_appLaunch);
  v4.i64[1] = *&self->_onDeviceOtherPersonalData;
  v5 = 2654435761 * self->_totalEngagements;
  v6 = vcvtq_f64_f32(*&self->_siriSuggestions);
  v3.i32[1] = v4.i32[1];
  v7 = vcvtq_f64_f32(v3);
  v8 = vcvtq_f64_f32(*&self->_parsecWiki);
  v9 = vcvtq_f64_f32(*&self->_thirdPartyInAppContent);
  v10 = vcvtq_f64_f32(*&self->_parsecAppStore);
  v11 = vcvtq_f64_f32(*&v4.u32[2]);
  v12 = vcvtq_f64_f32(*&self->_parsecStocks);
  v13 = vcvtq_f64_f32(*&self->_querySuggestion);
  v14 = vcltzq_f32(*&self->_thirdPartyInAppContent);
  v15.i64[0] = v14.i32[2];
  v15.i64[1] = v14.i32[3];
  v16 = v15;
  v17 = vcltzq_f32(*&self->_parsecWiki);
  v15.i64[0] = v17.i32[2];
  v15.i64[1] = v17.i32[3];
  v18 = v15;
  v19 = vcltzq_f32(v4);
  v15.i64[0] = v19.i32[2];
  v15.i64[1] = v19.i32[3];
  v20 = v15;
  v21 = vcltzq_f32(*&self->_siriSuggestions);
  v15.i64[0] = v21.i32[2];
  v15.i64[1] = v21.i32[3];
  v22 = v15;
  v15.i64[0] = v14.i32[0];
  v15.i64[1] = v14.i32[1];
  v23 = v15;
  v15.i64[0] = v17.i32[0];
  v15.i64[1] = v17.i32[1];
  v24 = v15;
  v15.i64[0] = v19.i32[0];
  v15.i64[1] = v19.i32[1];
  v25 = v15;
  v15.i64[0] = v21.i32[0];
  v15.i64[1] = v21.i32[1];
  v26 = vbslq_s8(v15, vnegq_f64(v6), v6);
  v27 = vbslq_s8(v25, vnegq_f64(v7), v7);
  v28 = vbslq_s8(v24, vnegq_f64(v8), v8);
  v29 = vbslq_s8(v23, vnegq_f64(v9), v9);
  v30 = vbslq_s8(v22, vnegq_f64(v10), v10);
  v31 = vbslq_s8(v20, vnegq_f64(v11), v11);
  v32 = vbslq_s8(v18, vnegq_f64(v12), v12);
  v33 = vbslq_s8(v16, vnegq_f64(v13), v13);
  v25.f64[0] = NAN;
  v25.f64[1] = NAN;
  v34 = vrndaq_f64(v33);
  v35 = vrndaq_f64(v32);
  v36 = vrndaq_f64(v31);
  v37 = vrndaq_f64(v30);
  v38 = vrndaq_f64(v29);
  v39 = vrndaq_f64(v28);
  v40 = vrndaq_f64(v27);
  v41 = vrndaq_f64(v26);
  v42 = vsubq_f64(v26, v41);
  v43 = vsubq_f64(v27, v40);
  v44 = vsubq_f64(v28, v39);
  v45 = vsubq_f64(v29, v38);
  v46 = vsubq_f64(v30, v37);
  v47 = vsubq_f64(v31, v36);
  v48 = vsubq_f64(v32, v35);
  v49 = vsubq_f64(v33, v34);
  v50 = vdupq_n_s64(0x3BF0000000000000uLL);
  v51 = vdupq_n_s64(0x43F0000000000000uLL);
  v52 = vnegq_f64(v25);
  v53 = vbslq_s8(v52, vmlsq_f64(v34, v51, vrndq_f64(vmulq_f64(v34, v50))), v34);
  v54 = vbslq_s8(v52, vmlsq_f64(v35, v51, vrndq_f64(vmulq_f64(v35, v50))), v35);
  v55 = vbslq_s8(v52, vmlsq_f64(v36, v51, vrndq_f64(vmulq_f64(v36, v50))), v36);
  v56 = vbslq_s8(v52, vmlsq_f64(v37, v51, vrndq_f64(vmulq_f64(v37, v50))), v37);
  v57 = vbslq_s8(v52, vmlsq_f64(v38, v51, vrndq_f64(vmulq_f64(v38, v50))), v38);
  v58 = vbslq_s8(v52, vmlsq_f64(v39, v51, vrndq_f64(vmulq_f64(v39, v50))), v39);
  v59 = vbslq_s8(v52, vmlsq_f64(v40, v51, vrndq_f64(vmulq_f64(v40, v50))), v40);
  v60 = vbslq_s8(v52, vmlsq_f64(v41, v51, vrndq_f64(vmulq_f64(v41, v50))), v41);
  v61 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v62 = vmulq_f64(v60, v61);
  v63 = vcvtq_u64_f64(vmulq_f64(v53, v61));
  v64 = vcvtq_n_u64_f64(v49, 0x40uLL);
  v65 = vcvtq_n_u64_f64(v45, 0x40uLL);
  v66 = vcvtq_n_u64_f64(v44, 0x40uLL);
  v89 = vaddq_s64(vcvtq_u64_f64(v62), vcvtq_n_u64_f64(v42, 0x40uLL));
  v88 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v59, v61)), vcvtq_n_u64_f64(v43, 0x40uLL));
  v86 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v57, v61)), v65);
  v87 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v58, v61)), v66);
  v67 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v56, v61)), vcvtq_n_u64_f64(v46, 0x40uLL));
  v84 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v55, v61)), vcvtq_n_u64_f64(v47, 0x40uLL));
  v85 = v67;
  v83 = vaddq_s64(vcvtq_u64_f64(vmulq_f64(v54, v61)), vcvtq_n_u64_f64(v48, 0x40uLL));
  parsecOther = self->_parsecOther;
  if (parsecOther >= 0.0)
  {
    v69 = parsecOther;
  }

  else
  {
    v69 = -parsecOther;
  }

  *v67.i64 = round(v69);
  v70 = v69 - *v67.i64;
  *v65.i64 = *v67.i64 - trunc(*v67.i64 * 5.42101086e-20) * 1.84467441e19;
  v71 = vbslq_s8(v52, v65, v67);
  v72 = (*v71.i64 * 2654435760.0) + vcvtd_n_u64_f64(v70, 0x40uLL);
  webSuggestions = self->_webSuggestions;
  if (webSuggestions >= 0.0)
  {
    v74 = webSuggestions;
  }

  else
  {
    v74 = -webSuggestions;
  }

  *v71.i64 = round(v74);
  *v66.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v75 = (*vbslq_s8(v52, v66, v71).i64 * 2654435760.0) + vcvtd_n_u64_f64(v74 - *v71.i64, 0x40uLL);
  v76 = [(_CPEngagementTriggerRatio *)self->_topHitTriggerRatio hash:vaddq_s64(v63];
  v77 = [(_CPEngagementTriggerRatio *)self->_querySuggestionTriggerRatio hash];
  v78 = 2654435761 * self->_totalTopHitEngagements;
  v79 = [(_CPEngagementShareRatio *)self->_engagementShareRatio hash];
  v80 = veorq_s8(veorq_s8(veorq_s8(v88, v89), veorq_s8(v86, v87)), veorq_s8(veorq_s8(v84, v85), veorq_s8(v82, v83)));
  return *&veor_s8(*v80.i8, *&vextq_s8(v80, v80, 8uLL)) ^ v72 ^ v75 ^ v5 ^ v78 ^ v79 ^ v77 ^ v76;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  appLaunch = self->_appLaunch;
  [equalCopy appLaunch];
  if (appLaunch != v6)
  {
    goto LABEL_37;
  }

  onDeviceAddressBookData = self->_onDeviceAddressBookData;
  [equalCopy onDeviceAddressBookData];
  if (onDeviceAddressBookData != v8)
  {
    goto LABEL_37;
  }

  onDeviceOtherPersonalData = self->_onDeviceOtherPersonalData;
  [equalCopy onDeviceOtherPersonalData];
  if (onDeviceOtherPersonalData != v10)
  {
    goto LABEL_37;
  }

  punchout = self->_punchout;
  [equalCopy punchout];
  if (punchout != v12)
  {
    goto LABEL_37;
  }

  thirdPartyInAppContent = self->_thirdPartyInAppContent;
  [equalCopy thirdPartyInAppContent];
  if (thirdPartyInAppContent != v14)
  {
    goto LABEL_37;
  }

  parsec = self->_parsec;
  [equalCopy parsec];
  if (parsec != v16)
  {
    goto LABEL_37;
  }

  querySuggestion = self->_querySuggestion;
  [equalCopy querySuggestion];
  if (querySuggestion != v18)
  {
    goto LABEL_37;
  }

  other = self->_other;
  [equalCopy other];
  if (other != v20)
  {
    goto LABEL_37;
  }

  totalEngagements = self->_totalEngagements;
  if (totalEngagements != [equalCopy totalEngagements])
  {
    goto LABEL_37;
  }

  siriSuggestions = self->_siriSuggestions;
  [equalCopy siriSuggestions];
  if (siriSuggestions != v23)
  {
    goto LABEL_37;
  }

  parsecWeb = self->_parsecWeb;
  [equalCopy parsecWeb];
  if (parsecWeb != v25)
  {
    goto LABEL_37;
  }

  parsecAppStore = self->_parsecAppStore;
  [equalCopy parsecAppStore];
  if (parsecAppStore != v27)
  {
    goto LABEL_37;
  }

  parsecMaps = self->_parsecMaps;
  [equalCopy parsecMaps];
  if (parsecMaps != v29)
  {
    goto LABEL_37;
  }

  parsecWiki = self->_parsecWiki;
  [equalCopy parsecWiki];
  if (parsecWiki != v31)
  {
    goto LABEL_37;
  }

  parsecNews = self->_parsecNews;
  [equalCopy parsecNews];
  if (parsecNews != v33)
  {
    goto LABEL_37;
  }

  parsecStocks = self->_parsecStocks;
  [equalCopy parsecStocks];
  if (parsecStocks != v35)
  {
    goto LABEL_37;
  }

  parsecWeather = self->_parsecWeather;
  [equalCopy parsecWeather];
  if (parsecWeather != v37)
  {
    goto LABEL_37;
  }

  parsecOther = self->_parsecOther;
  [equalCopy parsecOther];
  if (parsecOther != v39)
  {
    goto LABEL_37;
  }

  webSuggestions = self->_webSuggestions;
  [equalCopy webSuggestions];
  if (webSuggestions != v41)
  {
    goto LABEL_37;
  }

  topHitTriggerRatio = [(_CPSpotlightUsagePropensity *)self topHitTriggerRatio];
  topHitTriggerRatio2 = [equalCopy topHitTriggerRatio];
  if ((topHitTriggerRatio != 0) == (topHitTriggerRatio2 == 0))
  {
    goto LABEL_36;
  }

  topHitTriggerRatio3 = [(_CPSpotlightUsagePropensity *)self topHitTriggerRatio];
  if (topHitTriggerRatio3)
  {
    v45 = topHitTriggerRatio3;
    topHitTriggerRatio4 = [(_CPSpotlightUsagePropensity *)self topHitTriggerRatio];
    topHitTriggerRatio5 = [equalCopy topHitTriggerRatio];
    v48 = [topHitTriggerRatio4 isEqual:topHitTriggerRatio5];

    if (!v48)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  topHitTriggerRatio = [(_CPSpotlightUsagePropensity *)self querySuggestionTriggerRatio];
  topHitTriggerRatio2 = [equalCopy querySuggestionTriggerRatio];
  if ((topHitTriggerRatio != 0) == (topHitTriggerRatio2 == 0))
  {
    goto LABEL_36;
  }

  querySuggestionTriggerRatio = [(_CPSpotlightUsagePropensity *)self querySuggestionTriggerRatio];
  if (querySuggestionTriggerRatio)
  {
    v50 = querySuggestionTriggerRatio;
    querySuggestionTriggerRatio2 = [(_CPSpotlightUsagePropensity *)self querySuggestionTriggerRatio];
    querySuggestionTriggerRatio3 = [equalCopy querySuggestionTriggerRatio];
    v53 = [querySuggestionTriggerRatio2 isEqual:querySuggestionTriggerRatio3];

    if (!v53)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  totalTopHitEngagements = self->_totalTopHitEngagements;
  if (totalTopHitEngagements != [equalCopy totalTopHitEngagements])
  {
    goto LABEL_37;
  }

  topHitTriggerRatio = [(_CPSpotlightUsagePropensity *)self engagementShareRatio];
  topHitTriggerRatio2 = [equalCopy engagementShareRatio];
  if ((topHitTriggerRatio != 0) == (topHitTriggerRatio2 == 0))
  {
LABEL_36:

    goto LABEL_37;
  }

  engagementShareRatio = [(_CPSpotlightUsagePropensity *)self engagementShareRatio];
  if (!engagementShareRatio)
  {

LABEL_40:
    v60 = 1;
    goto LABEL_38;
  }

  v56 = engagementShareRatio;
  engagementShareRatio2 = [(_CPSpotlightUsagePropensity *)self engagementShareRatio];
  engagementShareRatio3 = [equalCopy engagementShareRatio];
  v59 = [engagementShareRatio2 isEqual:engagementShareRatio3];

  if (v59)
  {
    goto LABEL_40;
  }

LABEL_37:
  v60 = 0;
LABEL_38:

  return v60;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  [(_CPSpotlightUsagePropensity *)self appLaunch];
  if (v4 != 0.0)
  {
    appLaunch = self->_appLaunch;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self onDeviceAddressBookData];
  if (v6 != 0.0)
  {
    onDeviceAddressBookData = self->_onDeviceAddressBookData;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self onDeviceOtherPersonalData];
  if (v8 != 0.0)
  {
    onDeviceOtherPersonalData = self->_onDeviceOtherPersonalData;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self punchout];
  if (v10 != 0.0)
  {
    punchout = self->_punchout;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self thirdPartyInAppContent];
  if (v12 != 0.0)
  {
    thirdPartyInAppContent = self->_thirdPartyInAppContent;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsec];
  if (v14 != 0.0)
  {
    parsec = self->_parsec;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self querySuggestion];
  if (v16 != 0.0)
  {
    querySuggestion = self->_querySuggestion;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self other];
  if (v18 != 0.0)
  {
    other = self->_other;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPSpotlightUsagePropensity *)self totalEngagements])
  {
    totalEngagements = self->_totalEngagements;
    PBDataWriterWriteInt32Field();
  }

  [(_CPSpotlightUsagePropensity *)self siriSuggestions];
  if (v21 != 0.0)
  {
    siriSuggestions = self->_siriSuggestions;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecWeb];
  if (v23 != 0.0)
  {
    parsecWeb = self->_parsecWeb;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecAppStore];
  if (v25 != 0.0)
  {
    parsecAppStore = self->_parsecAppStore;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecMaps];
  if (v27 != 0.0)
  {
    parsecMaps = self->_parsecMaps;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecWiki];
  if (v29 != 0.0)
  {
    parsecWiki = self->_parsecWiki;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecNews];
  if (v31 != 0.0)
  {
    parsecNews = self->_parsecNews;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecStocks];
  if (v33 != 0.0)
  {
    parsecStocks = self->_parsecStocks;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecWeather];
  if (v35 != 0.0)
  {
    parsecWeather = self->_parsecWeather;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self parsecOther];
  if (v37 != 0.0)
  {
    parsecOther = self->_parsecOther;
    PBDataWriterWriteFloatField();
  }

  [(_CPSpotlightUsagePropensity *)self webSuggestions];
  if (v39 != 0.0)
  {
    webSuggestions = self->_webSuggestions;
    PBDataWriterWriteFloatField();
  }

  topHitTriggerRatio = [(_CPSpotlightUsagePropensity *)self topHitTriggerRatio];

  if (topHitTriggerRatio)
  {
    topHitTriggerRatio2 = [(_CPSpotlightUsagePropensity *)self topHitTriggerRatio];
    PBDataWriterWriteSubmessage();
  }

  querySuggestionTriggerRatio = [(_CPSpotlightUsagePropensity *)self querySuggestionTriggerRatio];

  if (querySuggestionTriggerRatio)
  {
    querySuggestionTriggerRatio2 = [(_CPSpotlightUsagePropensity *)self querySuggestionTriggerRatio];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPSpotlightUsagePropensity *)self totalTopHitEngagements])
  {
    totalTopHitEngagements = self->_totalTopHitEngagements;
    PBDataWriterWriteInt32Field();
  }

  engagementShareRatio = [(_CPSpotlightUsagePropensity *)self engagementShareRatio];

  v47 = toCopy;
  if (engagementShareRatio)
  {
    engagementShareRatio2 = [(_CPSpotlightUsagePropensity *)self engagementShareRatio];
    PBDataWriterWriteSubmessage();

    v47 = toCopy;
  }
}

@end
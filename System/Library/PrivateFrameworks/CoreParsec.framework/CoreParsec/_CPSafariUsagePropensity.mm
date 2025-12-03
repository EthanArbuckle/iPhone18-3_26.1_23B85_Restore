@interface _CPSafariUsagePropensity
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPSafariUsagePropensity

- (unint64_t)hash
{
  v3.i32[0] = LODWORD(self->_localTap);
  v4.i32[0] = v3.i32[0];
  v4.i32[1] = LODWORD(self->_localGoto);
  v4.i64[1] = *&self->_parsecGoto;
  v5 = vcvtq_f64_f32(*&self->_other);
  v3.i32[1] = v4.i32[1];
  v6 = vcvtq_f64_f32(v3);
  v7 = vcvtq_f64_f32(*&self->_parsecWiki);
  v8 = vcvtq_f64_f32(*&self->_thirdPartyGoto);
  v9 = vcvtq_f64_f32(*&self->_parsecAppStore);
  v10 = vcvtq_f64_f32(*&v4.u32[2]);
  v11 = vcvtq_f64_f32(*&self->_parsecStocks);
  v12 = vcvtq_f64_f32(*&self->_thirdPartyCompletionOrRecentSearch);
  v13 = vcltzq_f32(*&self->_thirdPartyGoto);
  v14.i64[0] = v13.i32[2];
  v14.i64[1] = v13.i32[3];
  v15 = v14;
  v16 = vcltzq_f32(*&self->_parsecWiki);
  v14.i64[0] = v16.i32[2];
  v14.i64[1] = v16.i32[3];
  v17 = v14;
  v18 = vcltzq_f32(v4);
  v14.i64[0] = v18.i32[2];
  v14.i64[1] = v18.i32[3];
  v19 = v14;
  v20 = vcltzq_f32(*&self->_other);
  v14.i64[0] = v20.i32[2];
  v14.i64[1] = v20.i32[3];
  v21 = v14;
  v14.i64[0] = v13.i32[0];
  v14.i64[1] = v13.i32[1];
  v22 = v14;
  v14.i64[0] = v16.i32[0];
  v14.i64[1] = v16.i32[1];
  v23 = v14;
  v14.i64[0] = v18.i32[0];
  v14.i64[1] = v18.i32[1];
  v24 = v14;
  v14.i64[0] = v20.i32[0];
  v14.i64[1] = v20.i32[1];
  v25 = vbslq_s8(v14, vnegq_f64(v5), v5);
  v26 = vbslq_s8(v24, vnegq_f64(v6), v6);
  v27 = vbslq_s8(v23, vnegq_f64(v7), v7);
  v28 = vbslq_s8(v22, vnegq_f64(v8), v8);
  v29 = vbslq_s8(v21, vnegq_f64(v9), v9);
  v30 = vbslq_s8(v19, vnegq_f64(v10), v10);
  v31 = vbslq_s8(v17, vnegq_f64(v11), v11);
  v32 = vbslq_s8(v15, vnegq_f64(v12), v12);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v33 = vrndaq_f64(v32);
  v34 = vrndaq_f64(v31);
  v35 = vrndaq_f64(v30);
  v36 = vrndaq_f64(v29);
  v37 = vrndaq_f64(v28);
  v38 = vrndaq_f64(v27);
  v39 = vrndaq_f64(v26);
  v40 = vrndaq_f64(v25);
  v41 = vsubq_f64(v25, v40);
  v42 = vsubq_f64(v26, v39);
  v43 = vsubq_f64(v27, v38);
  v44 = vsubq_f64(v28, v37);
  v45 = vsubq_f64(v29, v36);
  v46 = vsubq_f64(v30, v35);
  v47 = vsubq_f64(v31, v34);
  v48 = vdupq_n_s64(0x3BF0000000000000uLL);
  v49 = vsubq_f64(v32, v33);
  v50 = vdupq_n_s64(0x43F0000000000000uLL);
  v51 = vnegq_f64(v17);
  v52 = vbslq_s8(v51, vmlsq_f64(v33, v50, vrndq_f64(vmulq_f64(v33, v48))), v33);
  v53 = vbslq_s8(v51, vmlsq_f64(v34, v50, vrndq_f64(vmulq_f64(v34, v48))), v34);
  v54 = vbslq_s8(v51, vmlsq_f64(v35, v50, vrndq_f64(vmulq_f64(v35, v48))), v35);
  v55 = vbslq_s8(v51, vmlsq_f64(v36, v50, vrndq_f64(vmulq_f64(v36, v48))), v36);
  v56 = vbslq_s8(v51, vmlsq_f64(v37, v50, vrndq_f64(vmulq_f64(v37, v48))), v37);
  v57 = vbslq_s8(v51, vmlsq_f64(v38, v50, vrndq_f64(vmulq_f64(v38, v48))), v38);
  v58 = vbslq_s8(v51, vmlsq_f64(v39, v50, vrndq_f64(vmulq_f64(v39, v48))), v39);
  v59 = vbslq_s8(v51, vmlsq_f64(v40, v50, vrndq_f64(vmulq_f64(v40, v48))), v40);
  v60 = vdupq_n_s64(0x41E3C6EF36200000uLL);
  v61 = vmulq_f64(v59, v60);
  v62 = vmulq_f64(v58, v60);
  v63 = vmulq_f64(v57, v60);
  v64 = vmulq_f64(v56, v60);
  v65 = vmulq_f64(v55, v60);
  v66 = vmulq_f64(v54, v60);
  v67 = vmulq_f64(v53, v60);
  v68 = vcvtq_u64_f64(vmulq_f64(v52, v60));
  v69 = vcvtq_n_u64_f64(v49, 0x40uLL);
  v70 = vcvtq_n_u64_f64(v43, 0x40uLL);
  v88 = vaddq_s64(vcvtq_u64_f64(v61), vcvtq_n_u64_f64(v41, 0x40uLL));
  v87 = vaddq_s64(vcvtq_u64_f64(v62), vcvtq_n_u64_f64(v42, 0x40uLL));
  v85 = vaddq_s64(vcvtq_u64_f64(v64), vcvtq_n_u64_f64(v44, 0x40uLL));
  v86 = vaddq_s64(vcvtq_u64_f64(v63), v70);
  v71 = vaddq_s64(vcvtq_u64_f64(v65), vcvtq_n_u64_f64(v45, 0x40uLL));
  v83 = vaddq_s64(vcvtq_u64_f64(v66), vcvtq_n_u64_f64(v46, 0x40uLL));
  v84 = v71;
  v82 = vaddq_s64(vcvtq_u64_f64(v67), vcvtq_n_u64_f64(v47, 0x40uLL));
  parsecOther = self->_parsecOther;
  if (parsecOther >= 0.0)
  {
    v73 = parsecOther;
  }

  else
  {
    v73 = -parsecOther;
  }

  *v71.i64 = round(v73);
  *v70.i64 = *v71.i64 - trunc(*v71.i64 * 5.42101086e-20) * 1.84467441e19;
  v74 = (*vbslq_s8(v51, v70, v71).i64 * 2654435760.0) + vcvtd_n_u64_f64(v73 - *v71.i64, 0x40uLL);
  v75 = 2654435761 * self->_totalEngagements;
  v76 = [(_CPEngagementTriggerRatio *)self->_topHitTriggerRatio hash:vaddq_s64(v68];
  v77 = 2654435761 * self->_totalTopHitEngagements;
  v78 = [(_CPEngagementShareRatio *)self->_engagementShareRatio hash];
  v79 = veorq_s8(veorq_s8(veorq_s8(v87, v88), veorq_s8(v85, v86)), veorq_s8(veorq_s8(v83, v84), veorq_s8(v81, v82)));
  return *&veor_s8(*v79.i8, *&vextq_s8(v79, v79, 8uLL)) ^ v74 ^ v75 ^ v77 ^ v78 ^ v76;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  localGoto = self->_localGoto;
  [equalCopy localGoto];
  if (localGoto != v6)
  {
    goto LABEL_31;
  }

  localTap = self->_localTap;
  [equalCopy localTap];
  if (localTap != v8)
  {
    goto LABEL_31;
  }

  parsecGoto = self->_parsecGoto;
  [equalCopy parsecGoto];
  if (parsecGoto != v10)
  {
    goto LABEL_31;
  }

  parsecTap = self->_parsecTap;
  [equalCopy parsecTap];
  if (parsecTap != v12)
  {
    goto LABEL_31;
  }

  thirdPartyGoto = self->_thirdPartyGoto;
  [equalCopy thirdPartyGoto];
  if (thirdPartyGoto != v14)
  {
    goto LABEL_31;
  }

  thirdPartyTap = self->_thirdPartyTap;
  [equalCopy thirdPartyTap];
  if (thirdPartyTap != v16)
  {
    goto LABEL_31;
  }

  thirdPartyCompletionOrRecentSearch = self->_thirdPartyCompletionOrRecentSearch;
  [equalCopy thirdPartyCompletionOrRecentSearch];
  if (thirdPartyCompletionOrRecentSearch != v18)
  {
    goto LABEL_31;
  }

  goToSite = self->_goToSite;
  [equalCopy goToSite];
  if (goToSite != v20)
  {
    goto LABEL_31;
  }

  other = self->_other;
  [equalCopy other];
  if (other != v22)
  {
    goto LABEL_31;
  }

  parsecWeb = self->_parsecWeb;
  [equalCopy parsecWeb];
  if (parsecWeb != v24)
  {
    goto LABEL_31;
  }

  parsecAppStore = self->_parsecAppStore;
  [equalCopy parsecAppStore];
  if (parsecAppStore != v26)
  {
    goto LABEL_31;
  }

  parsecMaps = self->_parsecMaps;
  [equalCopy parsecMaps];
  if (parsecMaps != v28)
  {
    goto LABEL_31;
  }

  parsecWiki = self->_parsecWiki;
  [equalCopy parsecWiki];
  if (parsecWiki != v30)
  {
    goto LABEL_31;
  }

  parsecNews = self->_parsecNews;
  [equalCopy parsecNews];
  if (parsecNews != v32)
  {
    goto LABEL_31;
  }

  parsecStocks = self->_parsecStocks;
  [equalCopy parsecStocks];
  if (parsecStocks != v34)
  {
    goto LABEL_31;
  }

  parsecWeather = self->_parsecWeather;
  [equalCopy parsecWeather];
  if (parsecWeather != v36)
  {
    goto LABEL_31;
  }

  parsecOther = self->_parsecOther;
  [equalCopy parsecOther];
  if (parsecOther != v38)
  {
    goto LABEL_31;
  }

  totalEngagements = self->_totalEngagements;
  if (totalEngagements != [equalCopy totalEngagements])
  {
    goto LABEL_31;
  }

  topHitTriggerRatio = [(_CPSafariUsagePropensity *)self topHitTriggerRatio];
  topHitTriggerRatio2 = [equalCopy topHitTriggerRatio];
  if ((topHitTriggerRatio != 0) == (topHitTriggerRatio2 == 0))
  {
    goto LABEL_30;
  }

  topHitTriggerRatio3 = [(_CPSafariUsagePropensity *)self topHitTriggerRatio];
  if (topHitTriggerRatio3)
  {
    v43 = topHitTriggerRatio3;
    topHitTriggerRatio4 = [(_CPSafariUsagePropensity *)self topHitTriggerRatio];
    topHitTriggerRatio5 = [equalCopy topHitTriggerRatio];
    v46 = [topHitTriggerRatio4 isEqual:topHitTriggerRatio5];

    if (!v46)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  totalTopHitEngagements = self->_totalTopHitEngagements;
  if (totalTopHitEngagements != [equalCopy totalTopHitEngagements])
  {
    goto LABEL_31;
  }

  topHitTriggerRatio = [(_CPSafariUsagePropensity *)self engagementShareRatio];
  topHitTriggerRatio2 = [equalCopy engagementShareRatio];
  if ((topHitTriggerRatio != 0) == (topHitTriggerRatio2 == 0))
  {
LABEL_30:

    goto LABEL_31;
  }

  engagementShareRatio = [(_CPSafariUsagePropensity *)self engagementShareRatio];
  if (!engagementShareRatio)
  {

LABEL_34:
    v53 = 1;
    goto LABEL_32;
  }

  v49 = engagementShareRatio;
  engagementShareRatio2 = [(_CPSafariUsagePropensity *)self engagementShareRatio];
  engagementShareRatio3 = [equalCopy engagementShareRatio];
  v52 = [engagementShareRatio2 isEqual:engagementShareRatio3];

  if (v52)
  {
    goto LABEL_34;
  }

LABEL_31:
  v53 = 0;
LABEL_32:

  return v53;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  [(_CPSafariUsagePropensity *)self localGoto];
  if (v4 != 0.0)
  {
    localGoto = self->_localGoto;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self localTap];
  if (v6 != 0.0)
  {
    localTap = self->_localTap;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecGoto];
  if (v8 != 0.0)
  {
    parsecGoto = self->_parsecGoto;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecTap];
  if (v10 != 0.0)
  {
    parsecTap = self->_parsecTap;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self thirdPartyGoto];
  if (v12 != 0.0)
  {
    thirdPartyGoto = self->_thirdPartyGoto;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self thirdPartyTap];
  if (v14 != 0.0)
  {
    thirdPartyTap = self->_thirdPartyTap;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self thirdPartyCompletionOrRecentSearch];
  if (v16 != 0.0)
  {
    thirdPartyCompletionOrRecentSearch = self->_thirdPartyCompletionOrRecentSearch;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self goToSite];
  if (v18 != 0.0)
  {
    goToSite = self->_goToSite;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self other];
  if (v20 != 0.0)
  {
    other = self->_other;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecWeb];
  if (v22 != 0.0)
  {
    parsecWeb = self->_parsecWeb;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecAppStore];
  if (v24 != 0.0)
  {
    parsecAppStore = self->_parsecAppStore;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecMaps];
  if (v26 != 0.0)
  {
    parsecMaps = self->_parsecMaps;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecWiki];
  if (v28 != 0.0)
  {
    parsecWiki = self->_parsecWiki;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecNews];
  if (v30 != 0.0)
  {
    parsecNews = self->_parsecNews;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecStocks];
  if (v32 != 0.0)
  {
    parsecStocks = self->_parsecStocks;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecWeather];
  if (v34 != 0.0)
  {
    parsecWeather = self->_parsecWeather;
    PBDataWriterWriteFloatField();
  }

  [(_CPSafariUsagePropensity *)self parsecOther];
  if (v36 != 0.0)
  {
    parsecOther = self->_parsecOther;
    PBDataWriterWriteFloatField();
  }

  if ([(_CPSafariUsagePropensity *)self totalEngagements])
  {
    totalEngagements = self->_totalEngagements;
    PBDataWriterWriteInt32Field();
  }

  topHitTriggerRatio = [(_CPSafariUsagePropensity *)self topHitTriggerRatio];

  if (topHitTriggerRatio)
  {
    topHitTriggerRatio2 = [(_CPSafariUsagePropensity *)self topHitTriggerRatio];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPSafariUsagePropensity *)self totalTopHitEngagements])
  {
    totalTopHitEngagements = self->_totalTopHitEngagements;
    PBDataWriterWriteInt32Field();
  }

  engagementShareRatio = [(_CPSafariUsagePropensity *)self engagementShareRatio];

  v43 = toCopy;
  if (engagementShareRatio)
  {
    engagementShareRatio2 = [(_CPSafariUsagePropensity *)self engagementShareRatio];
    PBDataWriterWriteSubmessage();

    v43 = toCopy;
  }
}

@end
@interface CKMessageEntryViewLayoutMetrics
+ (id)cachedMetricsRecalculatingIfNecessary;
+ (void)cachedMetricsRecalculatingIfNecessary;
- (CKMessageEntryViewLayoutMetrics)init;
- (CKMessageEntryViewLayoutMetrics)initWithCoder:(id)a3;
- (UIEdgeInsets)entryViewContentInsets;
- (UIEdgeInsets)entryViewTextAlignmentInsets;
- (void)calculateTextMetrics;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKMessageEntryViewLayoutMetrics

+ (id)cachedMetricsRecalculatingIfNecessary
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:?];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = [v6 balloonTextFont];

  [v7 pointSize];
  v9 = v8;
  v75 = [v7 fontName];
  v63 = v7;
  v10 = [v7 fontDescriptor];
  v60 = [v10 symbolicTraits];

  v74 = [v4 objectForKey:?];
  v73 = [v4 objectForKey:?];
  v72 = [v4 objectForKey:?];
  [v4 doubleValueForKey:v9 withDefault:?];
  v12 = v11;
  v71 = [v4 objectForKey:?];
  v59 = [v4 BOOLValueForKey:? withDefault:?];
  v58 = [v4 unsignedIntegerValueForKey:? withDefault:?];
  [v4 doubleValueForKey:0.0 withDefault:?];
  v14 = v13;
  [v4 doubleValueForKey:0.0 withDefault:?];
  v16 = v15;
  v70 = [v4 objectForKeyedSubscript:?];
  v17 = [v4 objectForKeyedSubscript:?];
  v18 = [MEMORY[0x1E69DC938] currentDevice];
  v19 = [v18 buildVersion];

  v20 = [MEMORY[0x1E695DF58] preferredLanguages];
  v21 = [v20 componentsJoinedByString:@"-"];

  v22 = CKPreferredContentSizeCategory();
  [v5 entryViewVerticalCoverInsets];
  v23 = NSStringFromUIEdgeInsets(v79);
  [v5 balloonLineFragmentPadding];
  v25 = v24;
  v64 = v5;
  [v5 entryViewCoverMinHeight];
  v27 = v26;
  [v4 objectForKey:?];
  v61 = v77[0] = 0;
  v28 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v61 error:v77];
  v29 = v77[0];
  v30 = CKDisableEntryViewLayoutCache();
  isKindOfClass = 0;
  if (!v29)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v65 = v28;
  v69 = v19;
  v32 = [v74 isEqualToIgnoringCase:v19];
  v68 = v21;
  v33 = [v73 isEqualToIgnoringCase:v21];
  v67 = v22;
  v34 = [v72 isEqualToIgnoringCase:v22];
  v35 = [v71 isEqualToString:v75];
  v66 = v23;
  v36 = [v70 isEqualToString:v23];
  v62 = v17;
  v37 = [v17 isEqualToString:@"v0"];
  if (!v30)
  {
    v47 = v37;
    v48 = (CKIsRunningInCKTester() == 0) & isKindOfClass & v32 & v33 & v34;
    if (v12 != v9)
    {
      v48 = 0;
    }

    v49 = v48 & v35 & v59;
    if (v60 != v58)
    {
      v49 = 0;
    }

    v50 = v49 & v36;
    if (v16 != v25)
    {
      v50 = 0;
    }

    if ((v50 & v47) == 1 && v14 == v27)
    {
      v38 = v65;
      v40 = v29;
      v42 = v75;
      goto LABEL_17;
    }
  }

  v38 = objc_alloc_init(CKMessageEntryViewLayoutMetrics);
  v76 = v29;
  v39 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v38 requiringSecureCoding:1 error:&v76];
  v40 = v76;

  if (v39)
  {
    [v4 setObject:v69 forKey:@"CKEntryViewLayoutMetricsInfoLastCachedBuildVersion"];
    [v4 setObject:v39 forKey:@"CKEntryViewLayoutMetricsInfoData"];
    [v4 setObject:v68 forKey:@"CKEntryViewLayoutMetricsInfoLastCachedLocale"];
    [v4 setObject:v67 forKey:@"CKEntryViewLayoutMetricsInfoLastCachedSizeCategory"];
    v41 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
    [v4 setObject:v41 forKey:@"CKEntryViewLayoutMetricsInfoLastCachedBalloonTextFontSize"];

    v42 = v75;
    [v4 setObject:v75 forKey:@"CKEntryViewLayoutMetricsInfoLastCachedBalloonTextFontName"];
    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v60];
    [v4 setObject:v43 forKeyedSubscript:@"CKEntryViewLayoutMetricsInfoLastCachedBalloonTextFontSymbolicTraits"];

    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CKEntryViewLayoutMetricsInfoUseTextLayoutManager"];
    v44 = [MEMORY[0x1E696AD98] numberWithDouble:v27];
    [v4 setObject:v44 forKeyedSubscript:@"CKEntryViewLayoutMetricsInfoLastCachedEntryViewCoverMinHeight"];

    v45 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    [v4 setObject:v45 forKeyedSubscript:@"CKEntryViewLayoutMetricsInfoLastCachedBalloonLineFragmentPadding"];

    [v4 setObject:v66 forKeyedSubscript:@"CKEntryViewLayoutMetricsInfoLastCachedEntryViewVerticalCoverInsets"];
    [v4 setObject:@"v0" forKeyedSubscript:@"CKEntryViewLayoutMetricsInfoLastCachedCacheVersion"];
    v46 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v46 setObject:v4 forKey:@"CKEntryViewLayoutMetricsInfo"];

LABEL_17:
    v52 = v72;
    v51 = v73;
    v53 = v70;
    v54 = v62;
    v38 = v38;
    v55 = v38;
    goto LABEL_21;
  }

  v56 = IMLogHandleForCategory();
  v42 = v75;
  v52 = v72;
  v51 = v73;
  v53 = v70;
  v54 = v62;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    +[(CKMessageEntryViewLayoutMetrics *)v40];
  }

  v55 = 0;
LABEL_21:

  return v55;
}

- (UIEdgeInsets)entryViewContentInsets
{
  top = self->_entryViewContentInsets.top;
  left = self->_entryViewContentInsets.left;
  bottom = self->_entryViewContentInsets.bottom;
  right = self->_entryViewContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CKMessageEntryViewLayoutMetrics)init
{
  v5.receiver = self;
  v5.super_class = CKMessageEntryViewLayoutMetrics;
  v2 = [(CKMessageEntryViewLayoutMetrics *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CKMessageEntryViewLayoutMetrics *)v2 calculateTextMetrics];
  }

  return v3;
}

- (CKMessageEntryViewLayoutMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKMessageEntryViewLayoutMetrics;
  v5 = [(CKMessageEntryViewLayoutMetrics *)&v19 init];
  if (v5)
  {
    [v4 decodeUIEdgeInsetsForKey:@"entryViewContentInsets"];
    v5->_entryViewContentInsets.top = v6;
    v5->_entryViewContentInsets.left = v7;
    v5->_entryViewContentInsets.bottom = v8;
    v5->_entryViewContentInsets.right = v9;
    [v4 decodeUIEdgeInsetsForKey:@"entryViewTextAlignmentInsets"];
    v5->_entryViewTextAlignmentInsets.top = v10;
    v5->_entryViewTextAlignmentInsets.left = v11;
    v5->_entryViewTextAlignmentInsets.bottom = v12;
    v5->_entryViewTextAlignmentInsets.right = v13;
    [v4 decodeDoubleForKey:@"defaultEntryContentViewHeight"];
    v5->_defaultEntryContentViewHeight = v14;
    [v4 decodeDoubleForKey:@"defaultSubjectEntryContentViewHeight"];
    v5->_defaultSubjectEntryContentViewHeight = v15;
    [v4 decodeDoubleForKey:@"defaultEntryViewHeight"];
    v5->_defaultEntryViewHeight = v16;
    [v4 decodeDoubleForKey:@"defaultSubjectEntryViewHeight"];
    v5->_defaultSubjectEntryViewHeight = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  top = self->_entryViewContentInsets.top;
  left = self->_entryViewContentInsets.left;
  bottom = self->_entryViewContentInsets.bottom;
  right = self->_entryViewContentInsets.right;
  v12 = a3;
  [v12 encodeUIEdgeInsets:@"entryViewContentInsets" forKey:{top, left, bottom, right}];
  [v12 encodeUIEdgeInsets:@"entryViewTextAlignmentInsets" forKey:{self->_entryViewTextAlignmentInsets.top, self->_entryViewTextAlignmentInsets.left, self->_entryViewTextAlignmentInsets.bottom, self->_entryViewTextAlignmentInsets.right}];
  defaultEntryContentViewHeight = self->_defaultEntryContentViewHeight;
  *&defaultEntryContentViewHeight = defaultEntryContentViewHeight;
  [v12 encodeFloat:@"defaultEntryContentViewHeight" forKey:defaultEntryContentViewHeight];
  defaultSubjectEntryContentViewHeight = self->_defaultSubjectEntryContentViewHeight;
  *&defaultSubjectEntryContentViewHeight = defaultSubjectEntryContentViewHeight;
  [v12 encodeFloat:@"defaultSubjectEntryContentViewHeight" forKey:defaultSubjectEntryContentViewHeight];
  defaultEntryViewHeight = self->_defaultEntryViewHeight;
  *&defaultEntryViewHeight = defaultEntryViewHeight;
  [v12 encodeFloat:@"defaultEntryViewHeight" forKey:defaultEntryViewHeight];
  defaultSubjectEntryViewHeight = self->_defaultSubjectEntryViewHeight;
  *&defaultSubjectEntryViewHeight = defaultSubjectEntryViewHeight;
  [v12 encodeFloat:@"defaultSubjectEntryViewHeight" forKey:defaultSubjectEntryViewHeight];
}

- (void)calculateTextMetrics
{
  v47[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v6 = fmin(v4, v5);

  v7 = +[CKUIBehavior sharedBehaviors];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"MADRID" value:&stru_1F04268F8 table:@"ChatKit"];

  v46 = *MEMORY[0x1E69DB648];
  v10 = [v7 balloonTextFont];
  v47[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];

  v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v11];
  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 entryViewVerticalTextFieldInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [[CKTextMetricsRequest alloc] initWithAttributedString:v12];
  [v7 balloonLineFragmentPadding];
  [(CKTextMetricsRequest *)v22 setLineFragmentPadding:?];
  [(CKTextMetricsRequest *)v22 setMaximumNumberOfLines:1];
  [(CKTextMetricsRequest *)v22 setMaximumHeight:10000.0];
  [(CKTextMetricsRequest *)v22 setMaximumWidth:v6];
  v23 = v21;
  [(CKTextMetricsRequest *)v22 setContainerInset:v15, v17, v19, v21];
  v24 = objc_alloc_init(CKTextMetricsProvider);
  v25 = [(CKTextMetricsProvider *)v24 metricsForRequest:v22];
  [v25 size];
  v27 = v26 - (v15 + v19);
  [v25 alignmentInset];
  v44 = v29;
  v45 = v28;
  v43 = v30;
  v32 = v31;
  v33 = v19 + v15 + v27;
  [v7 entryViewCoverMinHeight];
  if (v33 >= v34)
  {
    v36 = v17;
  }

  else
  {
    v35 = (v34 - v33) * 0.5;
    v15 = v15 + v35;
    v19 = v19 + v35;
    v23 = 0.0;
    v33 = v34;
    v36 = 0.0;
  }

  [v7 entryViewVerticalCoverInsets];
  v38 = v37;
  v40 = v39;
  self->_entryViewTextAlignmentInsets.top = v45 + v15;
  self->_entryViewTextAlignmentInsets.left = v44 + v36;
  self->_entryViewTextAlignmentInsets.bottom = v43 + v19;
  self->_entryViewTextAlignmentInsets.right = v32 + v23;
  self->_defaultEntryContentViewHeight = v33;
  if (CKPixelWidth_once_3 != -1)
  {
    [CKMessageEntryViewLayoutMetrics calculateTextMetrics];
  }

  v41 = *&CKPixelWidth_sPixel_3 + v33 * 2.0;
  v42 = v40 + v38 + self->_defaultEntryContentViewHeight;
  self->_defaultSubjectEntryContentViewHeight = v41;
  self->_defaultEntryViewHeight = v42;
  self->_defaultSubjectEntryViewHeight = v40 + v38 + v41;
  self->_entryViewContentInsets.top = v15;
  self->_entryViewContentInsets.left = v36;
  self->_entryViewContentInsets.bottom = v19;
  self->_entryViewContentInsets.right = v23;
}

- (UIEdgeInsets)entryViewTextAlignmentInsets
{
  top = self->_entryViewTextAlignmentInsets.top;
  left = self->_entryViewTextAlignmentInsets.left;
  bottom = self->_entryViewTextAlignmentInsets.bottom;
  right = self->_entryViewTextAlignmentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

+ (void)cachedMetricsRecalculatingIfNecessary
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to encode metrics. Error: %@", &v2, 0xCu);
}

@end
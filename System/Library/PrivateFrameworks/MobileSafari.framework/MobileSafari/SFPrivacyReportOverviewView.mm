@interface SFPrivacyReportOverviewView
- (SFPrivacyReportOverviewView)initWithPrivacyReportDataProvider:(id)a3;
- (double)cellBackgroundCornerRadius;
- (double)interItemSpacing;
- (id)cellBackgroundColor;
- (void)setContextType:(int64_t)a3;
- (void)setItemViews:(id)a3;
- (void)setUsesInsetStyle:(BOOL)a3;
- (void)updateItemBackgroundProperties;
@end

@implementation SFPrivacyReportOverviewView

- (SFPrivacyReportOverviewView)initWithPrivacyReportDataProvider:(id)a3
{
  v59[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v56.receiver = self;
  v56.super_class = SFPrivacyReportOverviewView;
  v6 = [(SFPrivacyReportGridView *)&v56 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reportDataProvider, a3);
    [(SFPrivacyReportOverviewView *)v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = [[SFPrivacyReportOverviewCellContentView alloc] initWithFrame:v8, v10, v12, v14];
    trackersPreventedFromProfilingView = v7->_trackersPreventedFromProfilingView;
    v7->_trackersPreventedFromProfilingView = v16;

    v18 = _WBSLocalizedString();
    v19 = [(SFPrivacyReportOverviewCellContentView *)v7->_trackersPreventedFromProfilingView titleLabel];
    [v19 setText:v18];

    v20 = MEMORY[0x1E696ADA0];
    v21 = MEMORY[0x1E696AD98];
    v22 = [v5 knownTrackers];
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
    v24 = [v20 localizedStringFromNumber:v23 numberStyle:1];
    v25 = [(SFPrivacyReportOverviewCellContentView *)v7->_trackersPreventedFromProfilingView subtitleLabel];
    [v25 setText:v24];

    v58 = @"TrackingPreventionDataExists";
    v26 = [v5 knownTrackers];
    v27 = [v26 count];
    v28 = @"true";
    if (!v27)
    {
      v28 = @"false";
    }

    v59[0] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v30 = WBSMakeAccessibilityIdentifier();
    [(SFPrivacyReportOverviewCellContentView *)v7->_trackersPreventedFromProfilingView setAccessibilityIdentifier:v30];

    v31 = [[SFPrivacyReportOverviewCellContentView alloc] initWithFrame:v9, v11, v13, v15];
    websitesContainingTrackersView = v7->_websitesContainingTrackersView;
    v7->_websitesContainingTrackersView = v31;

    v33 = _WBSLocalizedString();
    v34 = [(SFPrivacyReportOverviewCellContentView *)v7->_websitesContainingTrackersView titleLabel];
    [v34 setText:v33];

    v35 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [v35 setNumberStyle:3];
    [v35 setRoundingMode:2];
    [v35 setMaximumFractionDigits:0];
    [v35 setMinimumIntegerDigits:1];
    [v35 setMaximumIntegerDigits:3];
    v36 = MEMORY[0x1E696AD98];
    [(WBSPrivacyReportDataProvider *)v7->_reportDataProvider ratioOfTrackedFirstPartiesToAllVisited];
    v37 = [v36 numberWithDouble:?];
    v38 = [v35 stringFromNumber:v37];
    v39 = [(SFPrivacyReportOverviewCellContentView *)v7->_websitesContainingTrackersView subtitleLabel];
    [v39 setText:v38];

    v40 = [[SFPrivacyReportOverviewCellContentView alloc] initWithFrame:v9, v11, v13, v15];
    mostBlockedTrackerView = v7->_mostBlockedTrackerView;
    v7->_mostBlockedTrackerView = v40;

    v42 = _WBSLocalizedString();
    v43 = [(SFPrivacyReportOverviewCellContentView *)v7->_mostBlockedTrackerView titleLabel];
    [v43 setText:v42];

    v44 = [v5 mostSeenKnownTracker];
    v45 = [v44 firstParties];
    v46 = [v45 count];

    v47 = MEMORY[0x1E696AEC0];
    v48 = _WBSLocalizedString();
    [v44 domain];
    if (v46 == 1)
      v49 = {;
      v50 = [v47 localizedStringWithFormat:v48, v49];
      v51 = [(SFPrivacyReportOverviewCellContentView *)v7->_mostBlockedTrackerView subtitleLabel];
      [v51 setText:v50];
    }

    else
      v49 = {;
      v50 = [v44 firstParties];
      v51 = [v47 localizedStringWithFormat:v48, v49, objc_msgSend(v50, "count")];
      v52 = [(SFPrivacyReportOverviewCellContentView *)v7->_mostBlockedTrackerView subtitleLabel];
      [v52 setText:v51];
    }

    v57[0] = v7->_trackersPreventedFromProfilingView;
    v57[1] = v7->_websitesContainingTrackersView;
    v57[2] = v7->_mostBlockedTrackerView;
    v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    [(SFPrivacyReportOverviewView *)v7 setItemViews:v53];

    v54 = v7;
  }

  return v7;
}

- (void)setContextType:(int64_t)a3
{
  if (self->_contextType != a3)
  {
    self->_contextType = a3;
    [(SFPrivacyReportOverviewView *)self updateItemBackgroundProperties];
  }
}

- (void)setItemViews:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportOverviewView;
  [(SFPrivacyReportGridView *)&v4 setItemViews:a3];
  [(SFPrivacyReportOverviewView *)self updateItemBackgroundProperties];
}

- (void)updateItemBackgroundProperties
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(SFPrivacyReportGridView *)self itemViews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(SFPrivacyReportOverviewView *)self cellBackgroundColor];
        [v8 setCellBackgroundColor:v9];

        [(SFPrivacyReportOverviewView *)self cellBackgroundCornerRadius];
        [v8 setCellBackgroundCornerRadius:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)cellBackgroundColor
{
  contextType = self->_contextType;
  if (contextType == 1)
  {
    self = [MEMORY[0x1E69DC888] sf_colorNamed:@"startPagePrivacyReportColor"];
  }

  else if (!contextType)
  {
    self = [MEMORY[0x1E69DC888] tableCellGroupedBackgroundColor];
  }

  return self;
}

- (double)cellBackgroundCornerRadius
{
  IsPad = _SFDeviceIsPad();
  result = 9.22337204e18;
  if (IsPad)
  {
    return 10.0;
  }

  return result;
}

- (double)interItemSpacing
{
  result = 0.0;
  if (self->_usesInsetStyle)
  {
    return 20.0;
  }

  return result;
}

- (void)setUsesInsetStyle:(BOOL)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_usesInsetStyle != a3)
  {
    v3 = a3;
    self->_usesInsetStyle = a3;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(SFPrivacyReportGridView *)self itemViews];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * i) setUsesInsetStyle:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(SFPrivacyReportGridView *)self updateInterItemSpacing];
  }
}

@end